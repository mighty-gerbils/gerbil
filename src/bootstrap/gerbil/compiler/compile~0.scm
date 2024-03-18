(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710781149)
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
        (letrec ((_hash-e112863_
                  (lambda (_id112865_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id112865_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e112863_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp114221 (list gxc#::void::t))
            (__tmp114219
             (let ((__tmp114220
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114220 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp114221
         '()
         __tmp114219
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args112859_
        (apply make-instance gxc#::collect-bindings::t _$args112859_)))
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
      (lambda (_stx112851_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self112854_
                (let ((__obj114195
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj114195))
               (__tmp114222
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112854_ _stx112851_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114222
           gxc#current-compile-method
           _self112854_))))
    (define gxc#::lift-modules::t
      (let ((__tmp114225 (list gxc#::void::t))
            (__tmp114223
             (let ((__tmp114224
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114224 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp114225
         '(modules)
         __tmp114223
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args112848_
        (apply make-instance gxc#::lift-modules::t _$args112848_)))
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
      (lambda (_g114226_ _modules112819112822_ _stx112824_)
        (let ((_modules112827_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules112819112822_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules112819112822_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self112829_
                  (let ((__obj114197
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114197
                       _modules112827_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj114197))
                 (__tmp114227
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112829_ _stx112824_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114227
             gxc#current-compile-method
             _self112829_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys112818112836_ . _args112838_)
        (apply gxc#apply-lift-modules__%
               _keys112818112836_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112818112836_
                  'modules:
                  absent-value))
               _args112838_)))
    (define gxc#apply-lift-modules
      (lambda _args112820112844_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args112820112844_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp114230 (list))
            (__tmp114228
             (let ((__tmp114229
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114229 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp114230
         '()
         __tmp114228
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args112814_
        (apply make-instance gxc#::find-runtime-code::t _$args112814_)))
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
      (lambda (_stx112806_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self112809_
                (let ((__obj114199
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj114199))
               (__tmp114231
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112809_ _stx112806_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114231
           gxc#current-compile-method
           _self112809_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp114234 (list gxc#::false::t))
            (__tmp114232
             (let ((__tmp114233
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114233 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp114234
         '()
         __tmp114232
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args112803_
        (apply make-instance gxc#::find-lambda-expression::t _$args112803_)))
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
      (lambda (_stx112795_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self112798_
                (let ((__obj114201
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj114201))
               (__tmp114235
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112798_ _stx112795_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114235
           gxc#current-compile-method
           _self112798_))))
    (define gxc#::count-values::t
      (let ((__tmp114238 (list gxc#::false-expression::t))
            (__tmp114236
             (let ((__tmp114237
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114237 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp114238
         '()
         __tmp114236
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args112792_
        (apply make-instance gxc#::count-values::t _$args112792_)))
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
      (lambda (_stx112784_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self112787_
                (let ((__obj114203
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj114203))
               (__tmp114239
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112787_ _stx112784_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114239
           gxc#current-compile-method
           _self112787_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp114240 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp114240
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args112781_
        (apply make-instance gxc#::generate-runtime-empty::t _$args112781_)))
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
      (let ((__tmp114243 (list gxc#::generate-runtime-empty::t))
            (__tmp114241
             (let ((__tmp114242
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114242 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp114243
         '()
         __tmp114241
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args112777_
        (apply make-instance gxc#::generate-loader::t _$args112777_)))
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
      (lambda (_stx112769_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self112772_
                (let ((__obj114206
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj114206))
               (__tmp114244
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112772_ _stx112769_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114244
           gxc#current-compile-method
           _self112772_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp114245 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp114245
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args112766_
        (apply make-instance gxc#::generate-runtime::t _$args112766_)))
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
      (lambda (_stx112758_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self112761_
                (let ((__obj114208
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj114208))
               (__tmp114246
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112761_ _stx112758_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114246
           gxc#current-compile-method
           _self112761_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp114249 (list gxc#::generate-runtime::t))
            (__tmp114247
             (let ((__tmp114248
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114248 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp114249
         '()
         __tmp114247
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args112755_
        (apply make-instance gxc#::generate-runtime-phi::t _$args112755_)))
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
      (lambda (_stx112747_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self112750_
                (let ((__obj114210
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj114210))
               (__tmp114250
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112750_ _stx112747_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114250
           gxc#current-compile-method
           _self112750_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp114251 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp114251
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args112744_
        (apply make-instance gxc#::collect-expression-refs::t _$args112744_)))
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
      (lambda (_g114252_ _table112715112718_ _stx112720_)
        (let ((_table112723_
               (if (let ()
                     (declare (not safe))
                     (eq? _table112715112718_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table112715112718_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self112725_
                  (let ((__obj114212
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114212
                       _table112723_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj114212))
                 (__tmp114253
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112725_ _stx112720_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114253
             gxc#current-compile-method
             _self112725_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys112714112732_ . _args112734_)
        (apply gxc#apply-collect-expression-refs__%
               _keys112714112732_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112714112732_ 'table: absent-value))
               _args112734_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args112716112740_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args112716112740_)))
    (define gxc#::generate-meta::t
      (let ((__tmp114256 (list gxc#::void-expression::t))
            (__tmp114254
             (let ((__tmp114255
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114255 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp114256
         '(state)
         __tmp114254
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args112710_
        (apply make-instance gxc#::generate-meta::t _$args112710_)))
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
      (lambda (_g114257_ _state112681112684_ _stx112686_)
        (let ((_state112689_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112681112684_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112681112684_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self112691_
                  (let ((__obj114214
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114214
                       _state112689_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj114214))
                 (__tmp114258
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112691_ _stx112686_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114258
             gxc#current-compile-method
             _self112691_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys112680112698_ . _args112700_)
        (apply gxc#apply-generate-meta__%
               _keys112680112698_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112680112698_ 'state: absent-value))
               _args112700_)))
    (define gxc#apply-generate-meta
      (lambda _args112682112706_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args112682112706_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp114261 (list))
            (__tmp114259
             (let ((__tmp114260
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114260 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp114261
         '(state)
         __tmp114259
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args112676_
        (apply make-instance gxc#::generate-meta-phi::t _$args112676_)))
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
      (lambda (_g114262_ _state112647112650_ _stx112652_)
        (let ((_state112655_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112647112650_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112647112650_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self112657_
                  (let ((__obj114216
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114216
                       _state112655_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj114216))
                 (__tmp114263
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112657_ _stx112652_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114263
             gxc#current-compile-method
             _self112657_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys112646112664_ . _args112666_)
        (apply gxc#apply-generate-meta-phi__%
               _keys112646112664_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112646112664_ 'state: absent-value))
               _args112666_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args112648112672_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args112648112672_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self112575_ _stx112576_)
        (let* ((_g112578112595_
                (lambda (_g112579112592_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112579112592_))))
               (_g112577112642_
                (lambda (_g112579112598_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112579112598_))
                      (let ((_e112584112600_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112579112598_))))
                        (let ((_hd112583112603_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112584112600_)))
                              (_tl112582112605_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112584112600_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112582112605_))
                              (let ((_e112587112608_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112582112605_))))
                                (let ((_hd112586112611_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112587112608_)))
                                      (_tl112585112613_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112587112608_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112585112613_))
                                      (let ((_e112590112616_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112585112613_))))
                                        (let ((_hd112589112619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112590112616_)))
                                              (_tl112588112621_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112590112616_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112588112621_))
                                              ((lambda (_L112624_ _L112625_)
                                                 (let ((__tmp114264
                                                        (lambda (_bind112640_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind112640_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind112640_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp114264
                                                    _L112625_)))
                                               _hd112589112619_
                                               _hd112586112611_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112578112595_
                                                 _g112579112598_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112578112595_ _g112579112598_)))))
                              (let ()
                                (declare (not safe))
                                (_g112578112595_ _g112579112598_)))))
                      (let ()
                        (declare (not safe))
                        (_g112578112595_ _g112579112598_))))))
          (declare (not safe))
          (_g112577112642_ _stx112576_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self112507_ _stx112508_)
        (let* ((_g112510112527_
                (lambda (_g112511112524_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112511112524_))))
               (_g112509112572_
                (lambda (_g112511112530_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112511112530_))
                      (let ((_e112516112532_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112511112530_))))
                        (let ((_hd112515112535_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112516112532_)))
                              (_tl112514112537_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112516112532_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112514112537_))
                              (let ((_e112519112540_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112514112537_))))
                                (let ((_hd112518112543_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112519112540_)))
                                      (_tl112517112545_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112519112540_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112517112545_))
                                      (let ((_e112522112548_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112517112545_))))
                                        (let ((_hd112521112551_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112522112548_)))
                                              (_tl112520112553_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112522112548_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112520112553_))
                                              ((lambda (_L112556_ _L112557_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L112557_
                                                    '#t)))
                                               _hd112521112551_
                                               _hd112518112543_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112510112527_
                                                 _g112511112530_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112510112527_ _g112511112530_)))))
                              (let ()
                                (declare (not safe))
                                (_g112510112527_ _g112511112530_)))))
                      (let ()
                        (declare (not safe))
                        (_g112510112527_ _g112511112530_))))))
          (declare (not safe))
          (_g112509112572_ _stx112508_))))
    (define gxc#lift-modules-module%
      (lambda (_self112449_ _stx112450_)
        (let* ((_g112452112466_
                (lambda (_g112453112463_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112453112463_))))
               (_g112451112504_
                (lambda (_g112453112469_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112453112469_))
                      (let ((_e112458112471_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112453112469_))))
                        (let ((_hd112457112474_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112458112471_)))
                              (_tl112456112476_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112458112471_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112456112476_))
                              (let ((_e112461112479_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112456112476_))))
                                (let ((_hd112460112482_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112461112479_)))
                                      (_tl112459112484_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112461112479_))))
                                  ((lambda (_L112487_ _L112488_)
                                     (let ((_ctx112501_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L112488_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self112449_ 'modules))
                                        (let ((__tmp114265
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self112449_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx112501_ __tmp114265)))
                                       (let ((__tmp114266
                                              (lambda ()
                                                (let ((__tmp114267
                                                       (##structure-ref
                                                        _ctx112501_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self112449_
                                                   __tmp114267)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp114266
                                          gx#current-expander-context
                                          _ctx112501_))))
                                   _tl112459112484_
                                   _hd112460112482_)))
                              (let ()
                                (declare (not safe))
                                (_g112452112466_ _g112453112469_)))))
                      (let ()
                        (declare (not safe))
                        (_g112452112466_ _g112453112469_))))))
          (declare (not safe))
          (_g112451112504_ _stx112450_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls112405112407_ (gxc#current-compile-decls)))
          (if _decls112405112407_
              (let ((_decls112410_ _decls112405112407_))
                (let _lp112412_ ((_rest112414_ _decls112410_))
                  (let* ((_rest112415112423_ _rest112414_)
                         (_else112417112431_ (lambda () '#f))
                         (_K112419112437_
                          (lambda (_decls112434_ _decl112435_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl112435_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl112435_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp112412_ _decls112434_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest112415112423_))
                        (let ((_hd112420112440_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest112415112423_)))
                              (_tl112421112442_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest112415112423_))))
                          (let* ((_decl112445_ _hd112420112440_)
                                 (_decls112447_ _tl112421112442_))
                            (declare (not safe))
                            (_K112419112437_ _decls112447_ _decl112445_)))
                        (let () (declare (not safe)) (_else112417112431_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id112399_ _syntax?112400_)
        (let ((_eid112402_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id112399_))
                '1
                gx#binding::t
                '#f))
              (_ht112403_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid112402_)
              '#!void
              (let ((__tmp114268
                     (let ((__tmp114269
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid112402_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp114269 _syntax?112400_))))
                (declare (not safe))
                (hash-put! _ht112403_ _eid112402_ __tmp114268))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1112392_ _id2112393_)
        (letrec ((_symbol-e112395_
                  (lambda (_id112397_)
                    (if (let () (declare (not safe)) (symbol? _id112397_))
                        _id112397_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id112397_))))))
          (let ((__tmp114271
                 (let () (declare (not safe)) (_symbol-e112395_ _id1112392_)))
                (__tmp114270
                 (let () (declare (not safe)) (_symbol-e112395_ _id2112393_))))
            (declare (not safe))
            (eq? __tmp114271 __tmp114270)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id112370_)
        (let ((_$e112372_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id112370_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id112370_))
                   '#f)))
          (if _$e112372_
              ((lambda (_bind112375_)
                 (let ((_eid112377_
                        (##structure-ref _bind112375_ '1 gx#binding::t '#f))
                       (_ht112378_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid112377_)
                       _eid112377_
                       (let ((_$e112380_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht112378_ _eid112377_))))
                         (if _$e112380_
                             (values _$e112380_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind112375_
                                    'gx#local-binding::t))
                                 (let ((_gid112383_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid112377_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht112378_
                                      _eid112377_
                                      _gid112383_))
                                   _gid112383_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind112375_
                                        'gx#module-binding::t))
                                     (let ((_gid112390_
                                            (let ((_$e112385_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind112375_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e112385_
                                                  ((lambda (_ns112388_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns112388_
                                                        '"#"
                                                        _eid112377_)))
                                                   _$e112385_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid112377_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht112378_
                                          _eid112377_
                                          _gid112390_))
                                       _gid112390_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id112370_
                                        _eid112377_
                                        _bind112375_)))))))))
               _$e112372_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id112370_)))
                  (let () (declare (not safe)) (gx#stx-e _id112370_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id112370_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id112368_)
        (if (let () (declare (not safe)) (gx#identifier? _id112368_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id112368_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym112348_ _quote?112349_)
        (let* ((_ht112351_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e112353_
                (let ()
                  (declare (not safe))
                  (hash-get _ht112351_ _sym112348_))))
          (if _$e112353_
              (values _$e112353_)
              (let ((_g112356_
                     (if _quote?112349_
                         (let ((__tmp114272 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym112348_
                            '"__"
                            __tmp114272))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym112348_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht112351_ _sym112348_ _g112356_))
                _g112356_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym112361_)
        (let ((_quote?112363_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym112361_
           _quote?112363_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g114274_
        (let ((_g114273_ (let () (declare (not safe)) (##length _g114274_))))
          (cond ((let () (declare (not safe)) (##fx= _g114273_ 1))
                 (apply (lambda (_sym112361_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym112361_)))
                        _g114274_))
                ((let () (declare (not safe)) (##fx= _g114273_ 2))
                 (apply (lambda (_sym112365_ _quote?112366_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym112365_
                             _quote?112366_)))
                        _g114274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g114274_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id112345_)
        (let ((__tmp114275
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id112345_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp114275))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key112305_)
        (if (interned-symbol? _key112305_)
            _key112305_
            (if (uninterned-symbol? _key112305_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key112305_))
                (let* ((_key112306112313_ _key112305_)
                       (_E112308112317_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key112306112313_))))
                       (_K112309112333_
                        (lambda (_mark112320_ _eid112321_)
                          (let ((_$e112323_
                                 (##structure-ref
                                  _mark112320_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e112323_
                                ((lambda (_ht112326_)
                                   (let ((_$e112328_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht112326_
                                             _eid112321_))))
                                     (if _$e112328_
                                         ((lambda (_id112331_)
                                            (if (interned-symbol? _id112331_)
                                                _id112331_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id112331_))))
                                          _$e112328_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid112321_)))))
                                 _$e112323_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid112321_)))))))
                  (if (let () (declare (not safe)) (##pair? _key112306112313_))
                      (let ((_hd112310112336_
                             (let ()
                               (declare (not safe))
                               (##car _key112306112313_)))
                            (_tl112311112338_
                             (let ()
                               (declare (not safe))
                               (##cdr _key112306112313_))))
                        (let* ((_eid112341_ _hd112310112336_)
                               (_mark112343_ _tl112311112338_))
                          (declare (not safe))
                          (_K112309112333_ _mark112343_ _eid112341_)))
                      (let () (declare (not safe)) (_E112308112317_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top112292_)
        (if _top112292_
            (let ((_ns112294_
                   (##structure-ref
                    (let ((__tmp114277 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp114277))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi112295_ (gx#current-expander-phi)))
              (if _ns112294_
                  (if (fxpositive? _phi112295_)
                      (let ((__tmp114283 (number->string _phi112295_))
                            (__tmp114282 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns112294_
                         '"["
                         __tmp114283
                         '"]#_"
                         __tmp114282
                         '"_"))
                      (let ((__tmp114281 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns112294_ '"#_" __tmp114281 '"_")))
                  (if (fxpositive? _phi112295_)
                      (let ((__tmp114280 (number->string _phi112295_))
                            (__tmp114279 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp114280
                         '"]#_"
                         __tmp114279
                         '"_"))
                      (let ((__tmp114278 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp114278 '"_")))))
            (let ((__tmp114276 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp114276 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top112301_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top112301_))))
    (define gxc#generate-runtime-temporary
      (lambda _g114285_
        (let ((_g114284_ (let () (declare (not safe)) (##length _g114285_))))
          (cond ((let () (declare (not safe)) (##fx= _g114284_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g114285_))
                ((let () (declare (not safe)) (##fx= _g114284_ 1))
                 (apply (lambda (_top112303_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top112303_)))
                        _g114285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g114285_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self112288_ _stx112289_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self112135_ _stx112136_)
        (letrec ((_simplify112138_
                  (lambda (_body112186_)
                    (let _lp112188_ ((_rest112190_ _body112186_)
                                     (_r112191_ '()))
                      (let* ((_rest112192112200_ _rest112190_)
                             (_else112194112208_
                              (lambda () (reverse _r112191_)))
                             (_K112196112276_
                              (lambda (_rest112211_ _hd112212_)
                                (let* ((_hd112213112229_ _hd112212_)
                                       (_else112217112237_
                                        (lambda ()
                                          (let ((__tmp114286
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd112212_
                                                         _r112191_))))
                                            (declare (not safe))
                                            (_lp112188_
                                             _rest112211_
                                             __tmp114286)))))
                                  (let ((_K112225112266_
                                         (lambda (_exprs112264_)
                                           (let ((__tmp114287
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest112211_
                                                            _exprs112264_))))
                                             (declare (not safe))
                                             (_lp112188_
                                              __tmp114287
                                              _r112191_))))
                                        (_K112220112250_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112211_))
                                               (let ((__tmp114288
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112212_
                                                              _r112191_))))
                                                 (declare (not safe))
                                                 (_lp112188_
                                                  _rest112211_
                                                  __tmp114288))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112188_
                                                  _rest112211_
                                                  _r112191_)))))
                                        (_K112219112242_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112211_))
                                               (let ((__tmp114289
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112212_
                                                              _r112191_))))
                                                 (declare (not safe))
                                                 (_lp112188_
                                                  _rest112211_
                                                  __tmp114289))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112188_
                                                  _rest112211_
                                                  _r112191_))))))
                                    (let ((_try-match112216112245_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd112213112229_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K112219112242_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else112217112237_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd112213112229_))
                                          (let ((_tl112227112271_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd112213112229_)))
                                                (_hd112226112269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd112213112229_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd112226112269_
                                                         'begin))
                                                (let ((_exprs112274_
                                                       _tl112227112271_))
                                                  (declare (not safe))
                                                  (_K112225112266_
                                                   _exprs112274_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd112226112269_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl112227112271_))
                                                        (let ((_tl112224112258_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl112227112271_))))
                  (if (let () (declare (not safe)) (##null? _tl112224112258_))
                      (let () (declare (not safe)) (_K112220112250_))
                      (let () (declare (not safe)) (_try-match112216112245_))))
                (let () (declare (not safe)) (_try-match112216112245_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match112216112245_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match112216112245_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest112192112200_))
                            (let ((_hd112197112279_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest112192112200_)))
                                  (_tl112198112281_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest112192112200_))))
                              (let* ((_hd112284_ _hd112197112279_)
                                     (_rest112286_ _tl112198112281_))
                                (declare (not safe))
                                (_K112196112276_ _rest112286_ _hd112284_)))
                            (let ()
                              (declare (not safe))
                              (_else112194112208_))))))))
          (let* ((_g112140112150_
                  (lambda (_g112141112147_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g112141112147_))))
                 (_g112139112183_
                  (lambda (_g112141112153_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g112141112153_))
                        (let ((_e112145112155_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g112141112153_))))
                          (let ((_hd112144112158_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112145112155_)))
                                (_tl112143112160_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112145112155_))))
                            ((lambda (_L112163_)
                               (let* ((_body112178_
                                       (map (lambda (_g112173112175_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self112135_
                                                 _g112173112175_)))
                                            _L112163_))
                                      (_body112180_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify112138_ _body112178_))))
                                 (if (fx= (length _body112180_) '1)
                                     (car _body112180_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body112180_)))))
                             _tl112143112160_)))
                        (let ()
                          (declare (not safe))
                          (_g112140112150_ _g112141112153_))))))
            (declare (not safe))
            (_g112139112183_ _stx112136_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self112096_ _stx112097_)
        (let* ((_g112099112109_
                (lambda (_g112100112106_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112100112106_))))
               (_g112098112132_
                (lambda (_g112100112112_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112100112112_))
                      (let ((_e112104112114_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112100112112_))))
                        (let ((_hd112103112117_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112104112114_)))
                              (_tl112102112119_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112104112114_))))
                          ((lambda (_L112122_)
                             (let ((__tmp114290
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L112122_))))
                               (declare (not safe))
                               (cons 'begin __tmp114290)))
                           _tl112102112119_)))
                      (let ()
                        (declare (not safe))
                        (_g112099112109_ _g112100112112_))))))
          (declare (not safe))
          (_g112098112132_ _stx112097_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self111860_ _stx111861_)
        (let* ((___stx112888112889_ _stx111861_)
               (_g111865111917_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112888112889_)))))
          (let ((___kont112890112891_
                 (lambda (_L112078_ _L112079_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111860_ _L112078_))))
                (___kont112892112893_
                 (lambda (_L112026_ _L112027_ _L112028_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111860_ _L112026_))))
                (___kont112896112897_
                 (lambda (_L111946_ _L111947_)
                   (let ((_decls111962_ (map gx#syntax->datum _L111947_)))
                     (let ((__tmp114293
                            (lambda ()
                              (let ((__tmp114294
                                     (let ((__tmp114297
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls111962_)))
                                           (__tmp114295
                                            (let ((__tmp114296
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self111860_
                                                      _L111946_))))
                                              (declare (not safe))
                                              (cons __tmp114296 '()))))
                                       (declare (not safe))
                                       (cons __tmp114297 __tmp114295))))
                                (declare (not safe))
                                (cons 'begin __tmp114294))))
                           (__tmp114291
                            (let ((__tmp114292 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp114292 _decls111962_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp114293
                        gxc#current-compile-decls
                        __tmp114291))))))
            (let* ((___match112943112944_
                    (lambda (_e111883111970_
                             _hd111882111973_
                             _tl111881111975_
                             _e111886111978_
                             _hd111885111981_
                             _tl111884111983_
                             _e111889111986_
                             _hd111888111989_
                             _tl111887111991_
                             ___splice112894112895_
                             _target111890111994_
                             _tl111892111996_)
                      (letrec ((_loop111893111999_
                                (lambda (_hd111891112002_ _param111897112004_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111891112002_))
                                      (let ((_e111894112007_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111891112002_))))
                                        (let ((_lp-tl111896112012_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111894112007_)))
                                              (_lp-hd111895112010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111894112007_))))
                                          (let ((__tmp114299
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd111895112010_
                                                         _param111897112004_))))
                                            (declare (not safe))
                                            (_loop111893111999_
                                             _lp-tl111896112012_
                                             __tmp114299))))
                                      (let ((_param111898112015_
                                             (reverse _param111897112004_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl111884111983_))
                                            (let ((_e111901112018_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl111884111983_))))
                                              (let ((_tl111899112023_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e111901112018_)))
                                                    (_hd111900112021_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e111901112018_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl111899112023_))
                                                    (let ((_L112026_
                                                           _hd111900112021_)
                                                          (_L112027_
                                                           _param111898112015_)
                                                          (_L112028_
                                                           _hd111888111989_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L112028_))
                       (let ((__tmp114298
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L112028_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp114298)))
                  (___kont112892112893_ _L112026_ _L112027_ _L112028_)
                  (___kont112896112897_ _hd111900112021_ _hd111885111981_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g111865111917_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g111865111917_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop111893111999_ _target111890111994_ '())))))
                   (___match112917112918_
                    (lambda (_e111871112054_
                             _hd111870112057_
                             _tl111869112059_
                             _e111874112062_
                             _hd111873112065_
                             _tl111872112067_
                             _e111877112070_
                             _hd111876112073_
                             _tl111875112075_)
                      (let ((_L112078_ _hd111876112073_)
                            (_L112079_ _hd111873112065_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L112079_))
                            (___kont112890112891_ _L112078_ _L112079_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd111873112065_))
                                (let ((_e111889111986_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd111873112065_))))
                                  (let ((_tl111887111991_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e111889111986_)))
                                        (_hd111888111989_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e111889111986_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl111887111991_))
                                        (let ((___splice112894112895_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl111887111991_
                                                  '0))))
                                          (let ((_tl111892111996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112894112895_
                                                    '1)))
                                                (_target111890111994_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112894112895_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl111892111996_))
                                                (___match112943112944_
                                                 _e111871112054_
                                                 _hd111870112057_
                                                 _tl111869112059_
                                                 _e111874112062_
                                                 _hd111873112065_
                                                 _tl111872112067_
                                                 _e111889111986_
                                                 _hd111888111989_
                                                 _tl111887111991_
                                                 ___splice112894112895_
                                                 _target111890111994_
                                                 _tl111892111996_)
                                                (___kont112896112897_
                                                 _hd111876112073_
                                                 _hd111873112065_))))
                                        (___kont112896112897_
                                         _hd111876112073_
                                         _hd111873112065_))))
                                (___kont112896112897_
                                 _hd111876112073_
                                 _hd111873112065_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112888112889_))
                  (let ((_e111871112054_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112888112889_))))
                    (let ((_tl111869112059_
                           (let ()
                             (declare (not safe))
                             (##cdr _e111871112054_)))
                          (_hd111870112057_
                           (let ()
                             (declare (not safe))
                             (##car _e111871112054_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl111869112059_))
                          (let ((_e111874112062_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl111869112059_))))
                            (let ((_tl111872112067_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e111874112062_)))
                                  (_hd111873112065_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e111874112062_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl111872112067_))
                                  (let ((_e111877112070_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl111872112067_))))
                                    (let ((_tl111875112075_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e111877112070_)))
                                          (_hd111876112073_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e111877112070_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl111875112075_))
                                          (___match112917112918_
                                           _e111871112054_
                                           _hd111870112057_
                                           _tl111869112059_
                                           _e111874112062_
                                           _hd111873112065_
                                           _tl111872112067_
                                           _e111877112070_
                                           _hd111876112073_
                                           _tl111875112075_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd111873112065_))
                                              (let ((_e111889111986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd111873112065_))))
                                                (let ((_tl111887111991_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e111889111986_)))
                                                      (_hd111888111989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e111889111986_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl111887111991_))
                                                      (let ((___splice112894112895_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl111887111991_ '0))))
                (let ((_tl111892111996_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112894112895_ '1)))
                      (_target111890111994_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112894112895_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl111892111996_))
                      (___match112943112944_
                       _e111871112054_
                       _hd111870112057_
                       _tl111869112059_
                       _e111874112062_
                       _hd111873112065_
                       _tl111872112067_
                       _e111889111986_
                       _hd111888111989_
                       _tl111887111991_
                       ___splice112894112895_
                       _target111890111994_
                       _tl111892111996_)
                      (let () (declare (not safe)) (_g111865111917_)))))
              (let () (declare (not safe)) (_g111865111917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g111865111917_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111873112065_))
                                      (let ((_e111889111986_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111873112065_))))
                                        (let ((_tl111887111991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111889111986_)))
                                              (_hd111888111989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111889111986_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl111887111991_))
                                              (let ((___splice112894112895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl111887111991_
                                                        '0))))
                                                (let ((_tl111892111996_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112894112895_
                                                          '1)))
                                                      (_target111890111994_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112894112895_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl111892111996_))
                                                      (___match112943112944_
                                                       _e111871112054_
                                                       _hd111870112057_
                                                       _tl111869112059_
                                                       _e111874112062_
                                                       _hd111873112065_
                                                       _tl111872112067_
                                                       _e111889111986_
                                                       _hd111888111989_
                                                       _tl111887111991_
                                                       ___splice112894112895_
                                                       _target111890111994_
                                                       _tl111892111996_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g111865111917_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g111865111917_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111865111917_))))))
                          (let () (declare (not safe)) (_g111865111917_)))))
                  (let () (declare (not safe)) (_g111865111917_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self111819_ _stx111820_)
        (let* ((_g111822111832_
                (lambda (_g111823111829_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111823111829_))))
               (_g111821111857_
                (lambda (_g111823111835_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111823111835_))
                      (let ((_e111827111837_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111823111835_))))
                        (let ((_hd111826111840_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111827111837_)))
                              (_tl111825111842_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111827111837_))))
                          ((lambda (_L111845_)
                             (let ((_decls111855_
                                    (map gx#syntax->datum _L111845_)))
                               (gxc#current-compile-decls
                                (let ((__tmp114300
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp114300 _decls111855_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls111855_))))
                           _tl111825111842_)))
                      (let ()
                        (declare (not safe))
                        (_g111822111832_ _g111823111835_))))))
          (declare (not safe))
          (_g111821111857_ _stx111820_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self111565_ _stx111566_)
        (let* ((_g111568111585_
                (lambda (_g111569111582_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111569111582_))))
               (_g111567111816_
                (lambda (_g111569111588_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111569111588_))
                      (let ((_e111574111590_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111569111588_))))
                        (let ((_hd111573111593_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111574111590_)))
                              (_tl111572111595_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111574111590_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111572111595_))
                              (let ((_e111577111598_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111572111595_))))
                                (let ((_hd111576111601_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111577111598_)))
                                      (_tl111575111603_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111577111598_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111575111603_))
                                      (let ((_e111580111606_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111575111603_))))
                                        (let ((_hd111579111609_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111580111606_)))
                                              (_tl111578111611_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111580111606_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111578111611_))
                                              ((lambda (_L111614_ _L111615_)
                                                 (let* ((___stx112996112997_
                                                         _L111615_)
                                                        (_g111632111646_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx112996112997_)))))
                                                   (let ((___kont112998112999_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self111565_
                                                               _L111614_))))
                                                         (___kont113000113001_
                                                          (lambda (_L111778_)
                                                            (let ((_eid111787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L111778_))))
                      (let ((_lambda-expr111788111790_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L111614_))))
                        (if _lambda-expr111788111790_
                            (let* ((_lambda-expr111793_
                                    _lambda-expr111788111790_)
                                   (__tmp114301
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp114301
                               _lambda-expr111793_
                               _eid111787_))
                            '#f))
                      (let ((__tmp114302
                             (let ((__tmp114303
                                    (let ((__tmp114304
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self111565_
                                              _L111614_))))
                                      (declare (not safe))
                                      (cons __tmp114304 '()))))
                               (declare (not safe))
                               (cons _eid111787_ __tmp114303))))
                        (declare (not safe))
                        (cons 'define __tmp114302)))))
                 (___kont113002113003_
                  (lambda ()
                    (let* ((_tmp111653_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body111762_
                            (let _lp111655_ ((_rest111657_ _L111615_)
                                             (_k111658_ '0)
                                             (_r111659_ '()))
                              (let* ((___stx112966112967_ _rest111657_)
                                     (_g111664111681_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx112966112967_)))))
                                (let ((___kont112968112969_
                                       (lambda (_L111749_)
                                         (let ((__tmp114305
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111658_ '1))))
                                           (declare (not safe))
                                           (_lp111655_
                                            _L111749_
                                            __tmp114305
                                            _r111659_))))
                                      (___kont112970112971_
                                       (lambda (_L111722_ _L111723_)
                                         (let ((__tmp114312
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111658_ '1)))
                                               (__tmp114306
                                                (let ((__tmp114307
                                                       (let ((__tmp114308
                                                              (let ((__tmp114311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111723_)))
                            (__tmp114309
                             (let ((__tmp114310
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp111653_
                                       _k111658_
                                       _L111722_))))
                               (declare (not safe))
                               (cons __tmp114310 '()))))
                        (declare (not safe))
                        (cons __tmp114311 __tmp114309))))
                 (declare (not safe))
                 (cons 'define __tmp114308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114307
                                                        _r111659_))))
                                           (declare (not safe))
                                           (_lp111655_
                                            _L111722_
                                            __tmp114312
                                            __tmp114306))))
                                      (___kont112972112973_
                                       (lambda (_L111693_)
                                         (let ((__tmp114313
                                                (let ((__tmp114314
                                                       (let ((__tmp114315
                                                              (let ((__tmp114318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111693_)))
                            (__tmp114316
                             (let ((__tmp114317
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp111653_
                                       _k111658_))))
                               (declare (not safe))
                               (cons __tmp114317 '()))))
                        (declare (not safe))
                        (cons __tmp114318 __tmp114316))))
                 (declare (not safe))
                 (cons 'define __tmp114315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114314 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp114313
                                                   _r111659_))))
                                      (___kont112974112975_
                                       (lambda () (reverse _r111659_))))
                                  (let ((_g111662111709_
                                         (lambda ()
                                           (let ((_L111693_
                                                  ___stx112966112967_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L111693_))
                                                 (___kont112972112973_
                                                  _L111693_)
                                                 (___kont112974112975_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112966112967_))
                                        (let ((_e111669111738_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112966112967_))))
                                          (let ((_tl111667111743_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e111669111738_)))
                                                (_hd111668111741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e111669111738_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd111668111741_))
                                                (let ((_e111670111746_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd111668111741_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e111670111746_
                                                                '#f))
                                                      (___kont112968112969_
                                                       _tl111667111743_)
                                                      (___kont112970112971_
                                                       _tl111667111743_
                                                       _hd111668111741_)))
                                                (___kont112970112971_
                                                 _tl111667111743_
                                                 _hd111668111741_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g111662111709_)))))))))
                      (let ((__tmp114319
                             (let ((__tmp114322
                                    (let ((__tmp114323
                                           (let ((__tmp114324
                                                  (let ((__tmp114325
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self111565_
                                                            _L111614_))))
                                                    (declare (not safe))
                                                    (cons __tmp114325 '()))))
                                             (declare (not safe))
                                             (cons _tmp111653_ __tmp114324))))
                                      (declare (not safe))
                                      (cons 'define __tmp114323)))
                                   (__tmp114320
                                    (let ((__tmp114321
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp111653_
                                              _L111615_
                                              _L111614_))))
                                      (declare (not safe))
                                      (cons __tmp114321 _body111762_))))
                               (declare (not safe))
                               (cons __tmp114322 __tmp114320))))
                        (declare (not safe))
                        (cons 'begin __tmp114319))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx112996112997_))
                                                         (let ((_e111636111800_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx112996112997_))))
                   (let ((_tl111634111805_
                          (let ()
                            (declare (not safe))
                            (##cdr _e111636111800_)))
                         (_hd111635111803_
                          (let ()
                            (declare (not safe))
                            (##car _e111636111800_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd111635111803_))
                         (let ((_e111637111808_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd111635111803_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e111637111808_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111634111805_))
                                   (___kont112998112999_)
                                   (___kont113002113003_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111634111805_))
                                   (___kont113000113001_ _hd111635111803_)
                                   (___kont113002113003_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl111634111805_))
                             (___kont113000113001_ _hd111635111803_)
                             (___kont113002113003_)))))
                 (___kont113002113003_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd111579111609_
                                               _hd111576111601_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111568111585_
                                                 _g111569111588_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111568111585_ _g111569111588_)))))
                              (let ()
                                (declare (not safe))
                                (_g111568111585_ _g111569111588_)))))
                      (let ()
                        (declare (not safe))
                        (_g111568111585_ _g111569111588_))))))
          (declare (not safe))
          (_g111567111816_ _stx111566_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals111541_ _hd111542_ _expr111543_)
        (let ((_$e111545_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr111543_))))
          (if _$e111545_
              ((lambda (_count111548_)
                 (let ((_len111550_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd111542_)))
                       (_cmp111551_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd111542_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len111550_ '0)
                           (_cmp111551_ _count111548_ _len111550_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr111543_
                          _hd111542_)))))
               _$e111545_)
              (let* ((_len111556_
                      (let () (declare (not safe)) (gx#stx-length _hd111542_)))
                     (_cmp111558_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd111542_))
                          '##fx=
                          '##fx>=))
                     (_errmsg111560_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd111542_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len111556_)
                       '" values"))
                     (_count111562_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp114349
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd111542_))))
                           (declare (not safe))
                           (not __tmp114349))
                         (fx= _len111556_ '0))
                    '#!void
                    (let ((__tmp114326
                           (let ((__tmp114345
                                  (let ((__tmp114346
                                         (let ((__tmp114347
                                                (let ((__tmp114348
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals111541_))))
                                                  (declare (not safe))
                                                  (cons __tmp114348 '()))))
                                           (declare (not safe))
                                           (cons _count111562_ __tmp114347))))
                                    (declare (not safe))
                                    (cons __tmp114346 '())))
                                 (__tmp114327
                                  (let ((__tmp114328
                                         (let ((__tmp114329
                                                (let ((__tmp114334
                                                       (let ((__tmp114335
                                                              (let ((__tmp114336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp114343
                                        (let ((__tmp114344
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len111556_ '()))))
                                          (declare (not safe))
                                          (cons _count111562_ __tmp114344))))
                                   (declare (not safe))
                                   (cons _cmp111558_ __tmp114343))
                                 (let ((__tmp114337
                                        (let ((__tmp114338
                                               (let ((__tmp114339
                                                      (let ((__tmp114340
                                                             (let ((__tmp114341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114342
                                   (let ()
                                     (declare (not safe))
                                     (cons _len111556_ '()))))
                              (declare (not safe))
                              (cons _count111562_ __tmp114342))))
                       (declare (not safe))
                       (cons _cmp111558_ __tmp114341))))
                (declare (not safe))
                (cons __tmp114340 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114339))))
                                          (declare (not safe))
                                          (cons '() __tmp114338))))
                                   (declare (not safe))
                                   (cons 'let __tmp114337)))))
                        (declare (not safe))
                        (cons __tmp114336 '()))))
                 (declare (not safe))
                 (cons 'not __tmp114335)))
              (__tmp114330
               (let ((__tmp114331
                      (let ((__tmp114332
                             (let ((__tmp114333
                                    (let ()
                                      (declare (not safe))
                                      (cons _count111562_ '()))))
                               (declare (not safe))
                               (cons _errmsg111560_ __tmp114333))))
                        (declare (not safe))
                        (cons 'error __tmp114332))))
                 (declare (not safe))
                 (cons __tmp114331 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114334
                                                        __tmp114330))))
                                           (declare (not safe))
                                           (cons 'if __tmp114329))))
                                    (declare (not safe))
                                    (cons __tmp114328 '()))))
                             (declare (not safe))
                             (cons __tmp114345 __tmp114327))))
                      (declare (not safe))
                      (cons 'let __tmp114326))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var111536_)
        (letrec ((_generate-inline111538_
                  (lambda ()
                    (let ((__tmp114350
                           (let ((__tmp114355
                                  (let ((__tmp114356
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111536_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114356)))
                                 (__tmp114351
                                  (let ((__tmp114353
                                         (let ((__tmp114354
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var111536_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp114354)))
                                        (__tmp114352
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp114353 __tmp114352))))
                             (declare (not safe))
                             (cons __tmp114355 __tmp114351))))
                      (declare (not safe))
                      (cons 'if __tmp114350)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111538_))
              (let ((__tmp114357
                     (let ((__tmp114358
                            (let ((__tmp114359
                                   (let ((__tmp114360
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111538_))))
                                     (declare (not safe))
                                     (cons __tmp114360 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114359))))
                       (declare (not safe))
                       (cons '() __tmp114358))))
                (declare (not safe))
                (cons 'let __tmp114357))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var111529_ _i111530_ _rest111531_)
        (letrec ((_generate-inline111533_
                  (lambda ()
                    (if (and (fx= _i111530_ '0)
                             (let ((__tmp114371
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest111531_))))
                               (declare (not safe))
                               (not __tmp114371)))
                        (let ((__tmp114363
                               (let ((__tmp114369
                                      (let ((__tmp114370
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111529_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp114370)))
                                     (__tmp114364
                                      (let ((__tmp114366
                                             (let ((__tmp114367
                                                    (let ((__tmp114368
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var111529_
                                                            __tmp114368))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp114367)))
                                            (__tmp114365
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111529_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114366 __tmp114365))))
                                 (declare (not safe))
                                 (cons __tmp114369 __tmp114364))))
                          (declare (not safe))
                          (cons 'if __tmp114363))
                        (let ((__tmp114361
                               (let ((__tmp114362
                                      (let ()
                                        (declare (not safe))
                                        (cons _i111530_ '()))))
                                 (declare (not safe))
                                 (cons _var111529_ __tmp114362))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp114361))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111533_))
              (let ((__tmp114372
                     (let ((__tmp114373
                            (let ((__tmp114374
                                   (let ((__tmp114375
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111533_))))
                                     (declare (not safe))
                                     (cons __tmp114375 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114374))))
                       (declare (not safe))
                       (cons '() __tmp114373))))
                (declare (not safe))
                (cons 'let __tmp114372))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var111526_ _i111527_)
        (if (fx= _i111527_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp114423
                       (let ((__tmp114430
                              (let ((__tmp114431
                                     (let ()
                                       (declare (not safe))
                                       (cons _var111526_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp114431)))
                             (__tmp114424
                              (let ((__tmp114428
                                     (let ((__tmp114429
                                            (let ()
                                              (declare (not safe))
                                              (cons _var111526_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp114429)))
                                    (__tmp114425
                                     (let ((__tmp114426
                                            (let ((__tmp114427
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var111526_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp114427))))
                                       (declare (not safe))
                                       (cons __tmp114426 '()))))
                                (declare (not safe))
                                (cons __tmp114428 __tmp114425))))
                         (declare (not safe))
                         (cons __tmp114430 __tmp114424))))
                  (declare (not safe))
                  (cons 'if __tmp114423))
                (let ((__tmp114410
                       (let ((__tmp114411
                              (let ((__tmp114412
                                     (let ((__tmp114413
                                            (let ((__tmp114414
                                                   (let ((__tmp114421
                                                          (let ((__tmp114422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var111526_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp114422)))
                 (__tmp114415
                  (let ((__tmp114419
                         (let ((__tmp114420
                                (let ()
                                  (declare (not safe))
                                  (cons _var111526_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp114420)))
                        (__tmp114416
                         (let ((__tmp114417
                                (let ((__tmp114418
                                       (let ()
                                         (declare (not safe))
                                         (cons _var111526_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp114418))))
                           (declare (not safe))
                           (cons __tmp114417 '()))))
                    (declare (not safe))
                    (cons __tmp114419 __tmp114416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114421
                                                           __tmp114415))))
                                              (declare (not safe))
                                              (cons 'if __tmp114414))))
                                       (declare (not safe))
                                       (cons __tmp114413 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp114412))))
                         (declare (not safe))
                         (cons '() __tmp114411))))
                  (declare (not safe))
                  (cons 'let __tmp114410)))
            (if (fx= _i111527_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114401
                           (let ((__tmp114408
                                  (let ((__tmp114409
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111526_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114409)))
                                 (__tmp114402
                                  (let ((__tmp114404
                                         (let ((__tmp114405
                                                (let ((__tmp114406
                                                       (let ((__tmp114407
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var111526_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp114407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114406 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp114405)))
                                        (__tmp114403
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp114404 __tmp114403))))
                             (declare (not safe))
                             (cons __tmp114408 __tmp114402))))
                      (declare (not safe))
                      (cons 'if __tmp114401))
                    (let ((__tmp114388
                           (let ((__tmp114389
                                  (let ((__tmp114390
                                         (let ((__tmp114391
                                                (let ((__tmp114392
                                                       (let ((__tmp114399
                                                              (let ((__tmp114400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111526_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp114400)))
                     (__tmp114393
                      (let ((__tmp114395
                             (let ((__tmp114396
                                    (let ((__tmp114397
                                           (let ((__tmp114398
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var111526_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp114398))))
                                      (declare (not safe))
                                      (cons __tmp114397 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp114396)))
                            (__tmp114394
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp114395 __tmp114394))))
                 (declare (not safe))
                 (cons __tmp114399 __tmp114393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp114392))))
                                           (declare (not safe))
                                           (cons __tmp114391 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114390))))
                             (declare (not safe))
                             (cons '() __tmp114389))))
                      (declare (not safe))
                      (cons 'let __tmp114388)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114384
                           (let ((__tmp114386
                                  (let ((__tmp114387
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111526_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp114387)))
                                 (__tmp114385
                                  (let ()
                                    (declare (not safe))
                                    (cons _i111527_ '()))))
                             (declare (not safe))
                             (cons __tmp114386 __tmp114385))))
                      (declare (not safe))
                      (cons '##list-tail __tmp114384))
                    (let ((__tmp114376
                           (let ((__tmp114377
                                  (let ((__tmp114378
                                         (let ((__tmp114379
                                                (let ((__tmp114380
                                                       (let ((__tmp114382
                                                              (let ((__tmp114383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111526_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp114383)))
                     (__tmp114381
                      (let () (declare (not safe)) (cons _i111527_ '()))))
                 (declare (not safe))
                 (cons __tmp114382 __tmp114381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp114380))))
                                           (declare (not safe))
                                           (cons __tmp114379 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114378))))
                             (declare (not safe))
                             (cons '() __tmp114377))))
                      (declare (not safe))
                      (cons 'let __tmp114376)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self111458_ _stx111459_)
        (let* ((_g111461111478_
                (lambda (_g111462111475_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111462111475_))))
               (_g111460111523_
                (lambda (_g111462111481_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111462111481_))
                      (let ((_e111467111483_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111462111481_))))
                        (let ((_hd111466111486_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111467111483_)))
                              (_tl111465111488_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111467111483_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111465111488_))
                              (let ((_e111470111491_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111465111488_))))
                                (let ((_hd111469111494_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111470111491_)))
                                      (_tl111468111496_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111470111491_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111468111496_))
                                      (let ((_e111473111499_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111468111496_))))
                                        (let ((_hd111472111502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111473111499_)))
                                              (_tl111471111504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111473111499_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111471111504_))
                                              ((lambda (_L111507_ _L111508_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self111458_
                                                    _L111508_
                                                    _L111507_)))
                                               _hd111472111502_
                                               _hd111469111494_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111461111478_
                                                 _g111462111481_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111461111478_ _g111462111481_)))))
                              (let ()
                                (declare (not safe))
                                (_g111461111478_ _g111462111481_)))))
                      (let ()
                        (declare (not safe))
                        (_g111461111478_ _g111462111481_))))))
          (declare (not safe))
          (_g111460111523_ _stx111459_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self111417_ _hd111418_ _body111419_)
        (let* ((_hd111421_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd111418_)))
               (_body111423_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self111417_ _body111419_)))
               (_body111455_
                (let* ((_body111424111432_ _body111423_)
                       (_else111426111440_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body111423_ '()))))
                       (_K111428111445_
                        (lambda (_exprs111443_) _exprs111443_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body111424111432_))
                      (let ((_hd111429111448_
                             (let ()
                               (declare (not safe))
                               (##car _body111424111432_)))
                            (_tl111430111450_
                             (let ()
                               (declare (not safe))
                               (##cdr _body111424111432_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd111429111448_ 'begin))
                            (let ((_exprs111453_ _tl111430111450_))
                              (declare (not safe))
                              (_K111428111445_ _exprs111453_))
                            (let ()
                              (declare (not safe))
                              (_else111426111440_))))
                      (let () (declare (not safe)) (_else111426111440_))))))
          (let ((__tmp114432
                 (let () (declare (not safe)) (cons _hd111421_ _body111455_))))
            (declare (not safe))
            (cons 'lambda __tmp114432)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd111415_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd111415_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self109957_ _stx109958_)
        (letrec ((_dispatch-case?109960_
                  (lambda (_hd110645_ _body110646_)
                    (let* ((_form110648_
                            (let ((__tmp114433
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110646_ '()))))
                              (declare (not safe))
                              (cons _hd110645_ __tmp114433)))
                           (___stx113028113029_ _form110648_)
                           (_g110653110810_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113028113029_)))))
                      (let ((___kont113030113031_
                             (lambda (_L111335_ _L111336_ _L111337_) '#t))
                            (___kont113036113037_
                             (lambda (_L111123_
                                      _L111124_
                                      _L111125_
                                      _L111126_
                                      _L111127_
                                      _L111128_)
                               '#t))
                            (___kont113042113043_
                             (lambda (_L110918_ _L110919_ _L110920_ _L110921_)
                               '#t))
                            (___kont113044113045_ (lambda () '#f)))
                        (let* ((___match113169113170_
                                (lambda (_e110772110822_
                                         _hd110771110825_
                                         _tl110770110827_
                                         _e110775110830_
                                         _hd110774110833_
                                         _tl110773110835_
                                         _e110778110838_
                                         _hd110777110841_
                                         _tl110776110843_
                                         _e110781110846_
                                         _hd110780110849_
                                         _tl110779110851_
                                         _e110784110854_
                                         _hd110783110857_
                                         _tl110782110859_
                                         _e110787110862_
                                         _hd110786110865_
                                         _tl110785110867_
                                         _e110790110870_
                                         _hd110789110873_
                                         _tl110788110875_
                                         _e110793110878_
                                         _hd110792110881_
                                         _tl110791110883_
                                         _e110796110886_
                                         _hd110795110889_
                                         _tl110794110891_
                                         _e110799110894_
                                         _hd110798110897_
                                         _tl110797110899_
                                         _e110802110902_
                                         _hd110801110905_
                                         _tl110800110907_
                                         _e110805110910_
                                         _hd110804110913_
                                         _tl110803110915_)
                                  (let ((_L110918_ _hd110804110913_)
                                        (_L110919_ _hd110795110889_)
                                        (_L110920_ _hd110786110865_)
                                        (_L110921_ _hd110771110825_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L110921_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L110920_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L110921_
                                                _L110918_))
                                             (let ((__tmp114434
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L110919_
                                                       _L110921_))))
                                               (declare (not safe))
                                               (not __tmp114434)))
                                        (___kont113042113043_
                                         _L110918_
                                         _L110919_
                                         _L110920_
                                         _L110921_)
                                        (___kont113044113045_)))))
                               (___match113141113142_
                                (lambda (_e110772110822_
                                         _hd110771110825_
                                         _tl110770110827_
                                         _e110775110830_
                                         _hd110774110833_
                                         _tl110773110835_
                                         _e110778110838_
                                         _hd110777110841_
                                         _tl110776110843_
                                         _e110781110846_
                                         _hd110780110849_
                                         _tl110779110851_
                                         _e110784110854_
                                         _hd110783110857_
                                         _tl110782110859_
                                         _e110787110862_
                                         _hd110786110865_
                                         _tl110785110867_
                                         _e110790110870_
                                         _hd110789110873_
                                         _tl110788110875_
                                         _e110793110878_
                                         _hd110792110881_
                                         _tl110791110883_
                                         _e110796110886_
                                         _hd110795110889_
                                         _tl110794110891_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110788110875_))
                                      (let ((_e110799110894_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110788110875_))))
                                        (let ((_tl110797110899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110799110894_)))
                                              (_hd110798110897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110799110894_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110798110897_))
                                              (let ((_e110802110902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110798110897_))))
                                                (let ((_tl110800110907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110802110902_)))
                                                      (_hd110801110905_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110802110902_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd110801110905_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd110801110905_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110800110907_))
                      (let ((_e110805110910_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110800110907_))))
                        (let ((_tl110803110915_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110805110910_)))
                              (_hd110804110913_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110805110910_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110803110915_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl110797110899_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl110773110835_))
                                      (___match113169113170_
                                       _e110772110822_
                                       _hd110771110825_
                                       _tl110770110827_
                                       _e110775110830_
                                       _hd110774110833_
                                       _tl110773110835_
                                       _e110778110838_
                                       _hd110777110841_
                                       _tl110776110843_
                                       _e110781110846_
                                       _hd110780110849_
                                       _tl110779110851_
                                       _e110784110854_
                                       _hd110783110857_
                                       _tl110782110859_
                                       _e110787110862_
                                       _hd110786110865_
                                       _tl110785110867_
                                       _e110790110870_
                                       _hd110789110873_
                                       _tl110788110875_
                                       _e110793110878_
                                       _hd110792110881_
                                       _tl110791110883_
                                       _e110796110886_
                                       _hd110795110889_
                                       _tl110794110891_
                                       _e110799110894_
                                       _hd110798110897_
                                       _tl110797110899_
                                       _e110802110902_
                                       _hd110801110905_
                                       _tl110800110907_
                                       _e110805110910_
                                       _hd110804110913_
                                       _tl110803110915_)
                                      (___kont113044113045_))
                                  (___kont113044113045_))
                              (___kont113044113045_))))
                      (___kont113044113045_))
                  (___kont113044113045_))
              (___kont113044113045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113044113045_))))
                                      (___kont113044113045_))))
                               (___match113071113072_
                                (lambda (_e110708110963_
                                         _hd110707110966_
                                         _tl110706110968_
                                         ___splice113038113039_
                                         _target110709110971_
                                         _tl110711110973_)
                                  (letrec ((_loop110712110976_
                                            (lambda (_hd110710110979_
                                                     _arg110716110981_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110710110979_))
                                                  (let ((_e110713110984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110710110979_))))
                                                    (let ((_lp-tl110715110989_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110713110984_)))
                                                          (_lp-hd110714110987_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110713110984_))))
                                                      (let ((__tmp114449
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110714110987_ _arg110716110981_))))
                (declare (not safe))
                (_loop110712110976_ _lp-tl110715110989_ __tmp114449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110717110992_
                                                         (reverse _arg110716110981_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110706110968_))
                                                        (let ((_e110720110995_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110706110968_))))
                  (let ((_tl110718111000_
                         (let () (declare (not safe)) (##cdr _e110720110995_)))
                        (_hd110719110998_
                         (let ()
                           (declare (not safe))
                           (##car _e110720110995_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110719110998_))
                        (let ((_e110723111003_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110719110998_))))
                          (let ((_tl110721111008_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110723111003_)))
                                (_hd110722111006_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110723111003_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110722111006_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110722111006_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110721111008_))
                                        (let ((_e110726111011_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110721111008_))))
                                          (let ((_tl110724111016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110726111011_)))
                                                (_hd110725111014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110726111011_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110725111014_))
                                                (let ((_e110729111019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110725111014_))))
                                                  (let ((_tl110727111024_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110729111019_)))
                                                        (_hd110728111022_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110729111019_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110728111022_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110728111022_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110727111024_))
                        (let ((_e110732111027_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110727111024_))))
                          (let ((_tl110730111032_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110732111027_)))
                                (_hd110731111030_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110732111027_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110730111032_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110724111016_))
                                    (let ((_e110735111035_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110724111016_))))
                                      (let ((_tl110733111040_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110735111035_)))
                                            (_hd110734111038_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110735111035_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110734111038_))
                                            (let ((_e110738111043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110734111038_))))
                                              (let ((_tl110736111048_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110738111043_)))
                                                    (_hd110737111046_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110738111043_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110737111046_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110737111046_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110736111048_))
                                                            (let ((_e110741111051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110736111048_))))
                      (let ((_tl110739111056_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110741111051_)))
                            (_hd110740111054_
                             (let ()
                               (declare (not safe))
                               (##car _e110741111051_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110739111056_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl110733111040_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl110733111040_))
                                          '1)
                                    (let ((___splice113040113041_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110733111040_
                                              '1))))
                                      (let ((_tl110744111061_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113040113041_
                                                '1)))
                                            (_target110742111059_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113040113041_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110744111061_))
                                            (let ((_e110753111064_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110744111061_))))
                                              (let ((_tl110751111069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110753111064_)))
                                                    (_hd110752111067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110753111064_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd110752111067_))
                                                    (let ((_e110756111072_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd110752111067_))))
                                                      (let ((_tl110754111077_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e110756111072_)))
                    (_hd110755111075_
                     (let () (declare (not safe)) (##car _e110756111072_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd110755111075_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd110755111075_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl110754111077_))
                            (let ((_e110759111080_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl110754111077_))))
                              (let ((_tl110757111085_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110759111080_)))
                                    (_hd110758111083_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110759111080_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl110757111085_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl110751111069_))
                                        (letrec ((_loop110745111088_
                                                  (lambda (_hd110743111091_
                                                           _xarg110749111093_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd110743111091_))
                                                        (let ((_e110746111096_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd110743111091_))))
                  (let ((_lp-tl110748111101_
                         (let () (declare (not safe)) (##cdr _e110746111096_)))
                        (_lp-hd110747111099_
                         (let ()
                           (declare (not safe))
                           (##car _e110746111096_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd110747111099_))
                        (let ((_e110762111104_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd110747111099_))))
                          (let ((_tl110760111109_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110762111104_)))
                                (_hd110761111107_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110762111104_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110761111107_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd110761111107_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110760111109_))
                                        (let ((_e110765111112_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110760111109_))))
                                          (let ((_tl110763111117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110765111112_)))
                                                (_hd110764111115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110765111112_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110763111117_))
                                                (let ((__tmp114448
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd110764111115_
                                                               _xarg110749111093_))))
                                                  (declare (not safe))
                                                  (_loop110745111088_
                                                   _lp-tl110748111101_
                                                   __tmp114448))
                                                (___match113141113142_
                                                 _e110708110963_
                                                 _hd110707110966_
                                                 _tl110706110968_
                                                 _e110720110995_
                                                 _hd110719110998_
                                                 _tl110718111000_
                                                 _e110723111003_
                                                 _hd110722111006_
                                                 _tl110721111008_
                                                 _e110726111011_
                                                 _hd110725111014_
                                                 _tl110724111016_
                                                 _e110729111019_
                                                 _hd110728111022_
                                                 _tl110727111024_
                                                 _e110732111027_
                                                 _hd110731111030_
                                                 _tl110730111032_
                                                 _e110735111035_
                                                 _hd110734111038_
                                                 _tl110733111040_
                                                 _e110738111043_
                                                 _hd110737111046_
                                                 _tl110736111048_
                                                 _e110741111051_
                                                 _hd110740111054_
                                                 _tl110739111056_))))
                                        (___match113141113142_
                                         _e110708110963_
                                         _hd110707110966_
                                         _tl110706110968_
                                         _e110720110995_
                                         _hd110719110998_
                                         _tl110718111000_
                                         _e110723111003_
                                         _hd110722111006_
                                         _tl110721111008_
                                         _e110726111011_
                                         _hd110725111014_
                                         _tl110724111016_
                                         _e110729111019_
                                         _hd110728111022_
                                         _tl110727111024_
                                         _e110732111027_
                                         _hd110731111030_
                                         _tl110730111032_
                                         _e110735111035_
                                         _hd110734111038_
                                         _tl110733111040_
                                         _e110738111043_
                                         _hd110737111046_
                                         _tl110736111048_
                                         _e110741111051_
                                         _hd110740111054_
                                         _tl110739111056_))
                                    (___match113141113142_
                                     _e110708110963_
                                     _hd110707110966_
                                     _tl110706110968_
                                     _e110720110995_
                                     _hd110719110998_
                                     _tl110718111000_
                                     _e110723111003_
                                     _hd110722111006_
                                     _tl110721111008_
                                     _e110726111011_
                                     _hd110725111014_
                                     _tl110724111016_
                                     _e110729111019_
                                     _hd110728111022_
                                     _tl110727111024_
                                     _e110732111027_
                                     _hd110731111030_
                                     _tl110730111032_
                                     _e110735111035_
                                     _hd110734111038_
                                     _tl110733111040_
                                     _e110738111043_
                                     _hd110737111046_
                                     _tl110736111048_
                                     _e110741111051_
                                     _hd110740111054_
                                     _tl110739111056_))
                                (___match113141113142_
                                 _e110708110963_
                                 _hd110707110966_
                                 _tl110706110968_
                                 _e110720110995_
                                 _hd110719110998_
                                 _tl110718111000_
                                 _e110723111003_
                                 _hd110722111006_
                                 _tl110721111008_
                                 _e110726111011_
                                 _hd110725111014_
                                 _tl110724111016_
                                 _e110729111019_
                                 _hd110728111022_
                                 _tl110727111024_
                                 _e110732111027_
                                 _hd110731111030_
                                 _tl110730111032_
                                 _e110735111035_
                                 _hd110734111038_
                                 _tl110733111040_
                                 _e110738111043_
                                 _hd110737111046_
                                 _tl110736111048_
                                 _e110741111051_
                                 _hd110740111054_
                                 _tl110739111056_))))
                        (___match113141113142_
                         _e110708110963_
                         _hd110707110966_
                         _tl110706110968_
                         _e110720110995_
                         _hd110719110998_
                         _tl110718111000_
                         _e110723111003_
                         _hd110722111006_
                         _tl110721111008_
                         _e110726111011_
                         _hd110725111014_
                         _tl110724111016_
                         _e110729111019_
                         _hd110728111022_
                         _tl110727111024_
                         _e110732111027_
                         _hd110731111030_
                         _tl110730111032_
                         _e110735111035_
                         _hd110734111038_
                         _tl110733111040_
                         _e110738111043_
                         _hd110737111046_
                         _tl110736111048_
                         _e110741111051_
                         _hd110740111054_
                         _tl110739111056_))))
                (let ((_xarg110750111120_ (reverse _xarg110749111093_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110718111000_))
                      (let ((_L111123_ _hd110758111083_)
                            (_L111124_ _xarg110750111120_)
                            (_L111125_ _hd110740111054_)
                            (_L111126_ _hd110731111030_)
                            (_L111127_ _tl110711110973_)
                            (_L111128_ _arg110717110992_))
                        (if (and (let ((__tmp114446
                                        (let ((__tmp114447
                                               (lambda (_g111171111174_
                                                        _g111172111176_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111171111174_
                                                         _g111172111176_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114447 '() _L111128_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp114446))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L111127_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L111126_ 'apply))
                                 (fx= (length (let ((__tmp114444
                                                     (lambda (_g111178111181_
                                                              _g111179111183_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111178111181_
                                                               _g111179111183_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114444
                                                        '()
                                                        _L111128_)))
                                      (length (let ((__tmp114445
                                                     (lambda (_g111185111188_
                                                              _g111186111190_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111185111188_
                                                               _g111186111190_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114445
                                                        '()
                                                        _L111124_))))
                                 (let ((__tmp114442
                                        (let ((__tmp114443
                                               (lambda (_g111192111195_
                                                        _g111193111197_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111192111195_
                                                         _g111193111197_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114443 '() _L111128_)))
                                       (__tmp114440
                                        (let ((__tmp114441
                                               (lambda (_g111199111202_
                                                        _g111200111204_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111199111202_
                                                         _g111200111204_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114441 '() _L111124_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp114442
                                            __tmp114440))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L111127_ _L111123_))
                                 (let ((__tmp114435
                                        (let ((__tmp114439
                                               (lambda (_g111206111208_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g111206111208_
                                                    _L111125_))))
                                              (__tmp114436
                                               (let ((__tmp114438
                                                      (lambda (_g111210111213_
                                                               _g111211111215_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g111210111213_
                                                                _g111211111215_))))
                                                     (__tmp114437
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L111127_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp114438
                                                         __tmp114437
                                                         _L111128_))))
                                          (declare (not safe))
                                          (find __tmp114439 __tmp114436))))
                                   (declare (not safe))
                                   (not __tmp114435)))
                            (___kont113036113037_
                             _L111123_
                             _L111124_
                             _L111125_
                             _L111126_
                             _L111127_
                             _L111128_)
                            (___match113141113142_
                             _e110708110963_
                             _hd110707110966_
                             _tl110706110968_
                             _e110720110995_
                             _hd110719110998_
                             _tl110718111000_
                             _e110723111003_
                             _hd110722111006_
                             _tl110721111008_
                             _e110726111011_
                             _hd110725111014_
                             _tl110724111016_
                             _e110729111019_
                             _hd110728111022_
                             _tl110727111024_
                             _e110732111027_
                             _hd110731111030_
                             _tl110730111032_
                             _e110735111035_
                             _hd110734111038_
                             _tl110733111040_
                             _e110738111043_
                             _hd110737111046_
                             _tl110736111048_
                             _e110741111051_
                             _hd110740111054_
                             _tl110739111056_)))
                      (___match113141113142_
                       _e110708110963_
                       _hd110707110966_
                       _tl110706110968_
                       _e110720110995_
                       _hd110719110998_
                       _tl110718111000_
                       _e110723111003_
                       _hd110722111006_
                       _tl110721111008_
                       _e110726111011_
                       _hd110725111014_
                       _tl110724111016_
                       _e110729111019_
                       _hd110728111022_
                       _tl110727111024_
                       _e110732111027_
                       _hd110731111030_
                       _tl110730111032_
                       _e110735111035_
                       _hd110734111038_
                       _tl110733111040_
                       _e110738111043_
                       _hd110737111046_
                       _tl110736111048_
                       _e110741111051_
                       _hd110740111054_
                       _tl110739111056_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop110745111088_
                                             _target110742111059_
                                             '())))
                                        (___match113141113142_
                                         _e110708110963_
                                         _hd110707110966_
                                         _tl110706110968_
                                         _e110720110995_
                                         _hd110719110998_
                                         _tl110718111000_
                                         _e110723111003_
                                         _hd110722111006_
                                         _tl110721111008_
                                         _e110726111011_
                                         _hd110725111014_
                                         _tl110724111016_
                                         _e110729111019_
                                         _hd110728111022_
                                         _tl110727111024_
                                         _e110732111027_
                                         _hd110731111030_
                                         _tl110730111032_
                                         _e110735111035_
                                         _hd110734111038_
                                         _tl110733111040_
                                         _e110738111043_
                                         _hd110737111046_
                                         _tl110736111048_
                                         _e110741111051_
                                         _hd110740111054_
                                         _tl110739111056_))
                                    (___match113141113142_
                                     _e110708110963_
                                     _hd110707110966_
                                     _tl110706110968_
                                     _e110720110995_
                                     _hd110719110998_
                                     _tl110718111000_
                                     _e110723111003_
                                     _hd110722111006_
                                     _tl110721111008_
                                     _e110726111011_
                                     _hd110725111014_
                                     _tl110724111016_
                                     _e110729111019_
                                     _hd110728111022_
                                     _tl110727111024_
                                     _e110732111027_
                                     _hd110731111030_
                                     _tl110730111032_
                                     _e110735111035_
                                     _hd110734111038_
                                     _tl110733111040_
                                     _e110738111043_
                                     _hd110737111046_
                                     _tl110736111048_
                                     _e110741111051_
                                     _hd110740111054_
                                     _tl110739111056_))))
                            (___match113141113142_
                             _e110708110963_
                             _hd110707110966_
                             _tl110706110968_
                             _e110720110995_
                             _hd110719110998_
                             _tl110718111000_
                             _e110723111003_
                             _hd110722111006_
                             _tl110721111008_
                             _e110726111011_
                             _hd110725111014_
                             _tl110724111016_
                             _e110729111019_
                             _hd110728111022_
                             _tl110727111024_
                             _e110732111027_
                             _hd110731111030_
                             _tl110730111032_
                             _e110735111035_
                             _hd110734111038_
                             _tl110733111040_
                             _e110738111043_
                             _hd110737111046_
                             _tl110736111048_
                             _e110741111051_
                             _hd110740111054_
                             _tl110739111056_))
                        (___match113141113142_
                         _e110708110963_
                         _hd110707110966_
                         _tl110706110968_
                         _e110720110995_
                         _hd110719110998_
                         _tl110718111000_
                         _e110723111003_
                         _hd110722111006_
                         _tl110721111008_
                         _e110726111011_
                         _hd110725111014_
                         _tl110724111016_
                         _e110729111019_
                         _hd110728111022_
                         _tl110727111024_
                         _e110732111027_
                         _hd110731111030_
                         _tl110730111032_
                         _e110735111035_
                         _hd110734111038_
                         _tl110733111040_
                         _e110738111043_
                         _hd110737111046_
                         _tl110736111048_
                         _e110741111051_
                         _hd110740111054_
                         _tl110739111056_))
                    (___match113141113142_
                     _e110708110963_
                     _hd110707110966_
                     _tl110706110968_
                     _e110720110995_
                     _hd110719110998_
                     _tl110718111000_
                     _e110723111003_
                     _hd110722111006_
                     _tl110721111008_
                     _e110726111011_
                     _hd110725111014_
                     _tl110724111016_
                     _e110729111019_
                     _hd110728111022_
                     _tl110727111024_
                     _e110732111027_
                     _hd110731111030_
                     _tl110730111032_
                     _e110735111035_
                     _hd110734111038_
                     _tl110733111040_
                     _e110738111043_
                     _hd110737111046_
                     _tl110736111048_
                     _e110741111051_
                     _hd110740111054_
                     _tl110739111056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113141113142_
                                                     _e110708110963_
                                                     _hd110707110966_
                                                     _tl110706110968_
                                                     _e110720110995_
                                                     _hd110719110998_
                                                     _tl110718111000_
                                                     _e110723111003_
                                                     _hd110722111006_
                                                     _tl110721111008_
                                                     _e110726111011_
                                                     _hd110725111014_
                                                     _tl110724111016_
                                                     _e110729111019_
                                                     _hd110728111022_
                                                     _tl110727111024_
                                                     _e110732111027_
                                                     _hd110731111030_
                                                     _tl110730111032_
                                                     _e110735111035_
                                                     _hd110734111038_
                                                     _tl110733111040_
                                                     _e110738111043_
                                                     _hd110737111046_
                                                     _tl110736111048_
                                                     _e110741111051_
                                                     _hd110740111054_
                                                     _tl110739111056_))))
                                            (___match113141113142_
                                             _e110708110963_
                                             _hd110707110966_
                                             _tl110706110968_
                                             _e110720110995_
                                             _hd110719110998_
                                             _tl110718111000_
                                             _e110723111003_
                                             _hd110722111006_
                                             _tl110721111008_
                                             _e110726111011_
                                             _hd110725111014_
                                             _tl110724111016_
                                             _e110729111019_
                                             _hd110728111022_
                                             _tl110727111024_
                                             _e110732111027_
                                             _hd110731111030_
                                             _tl110730111032_
                                             _e110735111035_
                                             _hd110734111038_
                                             _tl110733111040_
                                             _e110738111043_
                                             _hd110737111046_
                                             _tl110736111048_
                                             _e110741111051_
                                             _hd110740111054_
                                             _tl110739111056_))))
                                    (___match113141113142_
                                     _e110708110963_
                                     _hd110707110966_
                                     _tl110706110968_
                                     _e110720110995_
                                     _hd110719110998_
                                     _tl110718111000_
                                     _e110723111003_
                                     _hd110722111006_
                                     _tl110721111008_
                                     _e110726111011_
                                     _hd110725111014_
                                     _tl110724111016_
                                     _e110729111019_
                                     _hd110728111022_
                                     _tl110727111024_
                                     _e110732111027_
                                     _hd110731111030_
                                     _tl110730111032_
                                     _e110735111035_
                                     _hd110734111038_
                                     _tl110733111040_
                                     _e110738111043_
                                     _hd110737111046_
                                     _tl110736111048_
                                     _e110741111051_
                                     _hd110740111054_
                                     _tl110739111056_))
                                (___match113141113142_
                                 _e110708110963_
                                 _hd110707110966_
                                 _tl110706110968_
                                 _e110720110995_
                                 _hd110719110998_
                                 _tl110718111000_
                                 _e110723111003_
                                 _hd110722111006_
                                 _tl110721111008_
                                 _e110726111011_
                                 _hd110725111014_
                                 _tl110724111016_
                                 _e110729111019_
                                 _hd110728111022_
                                 _tl110727111024_
                                 _e110732111027_
                                 _hd110731111030_
                                 _tl110730111032_
                                 _e110735111035_
                                 _hd110734111038_
                                 _tl110733111040_
                                 _e110738111043_
                                 _hd110737111046_
                                 _tl110736111048_
                                 _e110741111051_
                                 _hd110740111054_
                                 _tl110739111056_))
                            (___kont113044113045_))))
                    (___kont113044113045_))
                (___kont113044113045_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113044113045_))))
                                            (___kont113044113045_))))
                                    (___kont113044113045_))
                                (___kont113044113045_))))
                        (___kont113044113045_))
                    (___kont113044113045_))
                (___kont113044113045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113044113045_))))
                                        (___kont113044113045_))
                                    (___kont113044113045_))
                                (___kont113044113045_))))
                        (___kont113044113045_))))
                (___kont113044113045_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110712110976_
                                       _target110709110971_
                                       '())))))
                               (___match113059113060_
                                (lambda (_e110660111223_
                                         _hd110659111226_
                                         _tl110658111228_
                                         ___splice113032113033_
                                         _target110661111231_
                                         _tl110663111233_)
                                  (letrec ((_loop110664111236_
                                            (lambda (_hd110662111239_
                                                     _arg110668111241_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110662111239_))
                                                  (let ((_e110665111244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110662111239_))))
                                                    (let ((_lp-tl110667111249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110665111244_)))
                                                          (_lp-hd110666111247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110665111244_))))
                                                      (let ((__tmp114463
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110666111247_ _arg110668111241_))))
                (declare (not safe))
                (_loop110664111236_ _lp-tl110667111249_ __tmp114463))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110669111252_
                                                         (reverse _arg110668111241_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110658111228_))
                                                        (let ((_e110672111255_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110658111228_))))
                  (let ((_tl110670111260_
                         (let () (declare (not safe)) (##cdr _e110672111255_)))
                        (_hd110671111258_
                         (let ()
                           (declare (not safe))
                           (##car _e110672111255_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110671111258_))
                        (let ((_e110675111263_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110671111258_))))
                          (let ((_tl110673111268_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110675111263_)))
                                (_hd110674111266_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110675111263_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110674111266_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110674111266_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110673111268_))
                                        (let ((_e110678111271_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110673111268_))))
                                          (let ((_tl110676111276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110678111271_)))
                                                (_hd110677111274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110678111271_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110677111274_))
                                                (let ((_e110681111279_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110677111274_))))
                                                  (let ((_tl110679111284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110681111279_)))
                                                        (_hd110680111282_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110681111279_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110680111282_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110680111282_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110679111284_))
                        (let ((_e110684111287_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110679111284_))))
                          (let ((_tl110682111292_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110684111287_)))
                                (_hd110683111290_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110684111287_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110682111292_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110676111276_))
                                    (let ((___splice113034113035_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110676111276_
                                              '0))))
                                      (let ((_tl110687111297_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113034113035_
                                                '1)))
                                            (_target110685111295_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113034113035_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110687111297_))
                                            (letrec ((_loop110688111300_
                                                      (lambda (_hd110686111303_
                                                               _xarg110692111305_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110686111303_))
                                                            (let ((_e110689111308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110686111303_))))
                      (let ((_lp-tl110691111313_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110689111308_)))
                            (_lp-hd110690111311_
                             (let ()
                               (declare (not safe))
                               (##car _e110689111308_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110690111311_))
                            (let ((_e110696111316_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110690111311_))))
                              (let ((_tl110694111321_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110696111316_)))
                                    (_hd110695111319_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110696111316_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110695111319_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110695111319_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110694111321_))
                                            (let ((_e110699111324_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110694111321_))))
                                              (let ((_tl110697111329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110699111324_)))
                                                    (_hd110698111327_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110699111324_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110697111329_))
                                                    (let ((__tmp114462
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110698111327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110692111305_))))
              (declare (not safe))
              (_loop110688111300_ _lp-tl110691111313_ __tmp114462))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113071113072_
                                                     _e110660111223_
                                                     _hd110659111226_
                                                     _tl110658111228_
                                                     ___splice113032113033_
                                                     _target110661111231_
                                                     _tl110663111233_))))
                                            (___match113071113072_
                                             _e110660111223_
                                             _hd110659111226_
                                             _tl110658111228_
                                             ___splice113032113033_
                                             _target110661111231_
                                             _tl110663111233_))
                                        (___match113071113072_
                                         _e110660111223_
                                         _hd110659111226_
                                         _tl110658111228_
                                         ___splice113032113033_
                                         _target110661111231_
                                         _tl110663111233_))
                                    (___match113071113072_
                                     _e110660111223_
                                     _hd110659111226_
                                     _tl110658111228_
                                     ___splice113032113033_
                                     _target110661111231_
                                     _tl110663111233_))))
                            (___match113071113072_
                             _e110660111223_
                             _hd110659111226_
                             _tl110658111228_
                             ___splice113032113033_
                             _target110661111231_
                             _tl110663111233_))))
                    (let ((_xarg110693111332_ (reverse _xarg110692111305_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110670111260_))
                          (let ((_L111335_ _xarg110693111332_)
                                (_L111336_ _hd110683111290_)
                                (_L111337_ _arg110669111252_))
                            (if (and (let ((__tmp114460
                                            (let ((__tmp114461
                                                   (lambda (_g111365111368_
                                                            _g111366111370_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111365111368_
                                                             _g111366111370_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114461
                                                      '()
                                                      _L111337_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp114460))
                                     (fx= (length (let ((__tmp114458
                                                         (lambda (_g111372111375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111373111377_)
                   (let ()
                     (declare (not safe))
                     (cons _g111372111375_ _g111373111377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114458
                                                            '()
                                                            _L111337_)))
                                          (length (let ((__tmp114459
                                                         (lambda (_g111379111382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111380111384_)
                   (let ()
                     (declare (not safe))
                     (cons _g111379111382_ _g111380111384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114459
                                                            '()
                                                            _L111335_))))
                                     (let ((__tmp114456
                                            (let ((__tmp114457
                                                   (lambda (_g111386111389_
                                                            _g111387111391_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111386111389_
                                                             _g111387111391_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114457
                                                      '()
                                                      _L111337_)))
                                           (__tmp114454
                                            (let ((__tmp114455
                                                   (lambda (_g111393111396_
                                                            _g111394111398_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111393111396_
                                                             _g111394111398_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114455
                                                      '()
                                                      _L111335_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp114456
                                                __tmp114454))
                                     (let ((__tmp114450
                                            (let ((__tmp114453
                                                   (lambda (_g111400111402_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g111400111402_
                                                        _L111336_))))
                                                  (__tmp114451
                                                   (let ((__tmp114452
                                                          (lambda (_g111404111407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g111405111409_)
                    (let ()
                      (declare (not safe))
                      (cons _g111404111407_ _g111405111409_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp114452
                                                             '()
                                                             _L111337_))))
                                              (declare (not safe))
                                              (find __tmp114453 __tmp114451))))
                                       (declare (not safe))
                                       (not __tmp114450)))
                                (___kont113030113031_
                                 _L111335_
                                 _L111336_
                                 _L111337_)
                                (___match113071113072_
                                 _e110660111223_
                                 _hd110659111226_
                                 _tl110658111228_
                                 ___splice113032113033_
                                 _target110661111231_
                                 _tl110663111233_)))
                          (___match113071113072_
                           _e110660111223_
                           _hd110659111226_
                           _tl110658111228_
                           ___splice113032113033_
                           _target110661111231_
                           _tl110663111233_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110688111300_
                                                 _target110685111295_
                                                 '())))
                                            (___match113071113072_
                                             _e110660111223_
                                             _hd110659111226_
                                             _tl110658111228_
                                             ___splice113032113033_
                                             _target110661111231_
                                             _tl110663111233_))))
                                    (___match113071113072_
                                     _e110660111223_
                                     _hd110659111226_
                                     _tl110658111228_
                                     ___splice113032113033_
                                     _target110661111231_
                                     _tl110663111233_))
                                (___match113071113072_
                                 _e110660111223_
                                 _hd110659111226_
                                 _tl110658111228_
                                 ___splice113032113033_
                                 _target110661111231_
                                 _tl110663111233_))))
                        (___match113071113072_
                         _e110660111223_
                         _hd110659111226_
                         _tl110658111228_
                         ___splice113032113033_
                         _target110661111231_
                         _tl110663111233_))
                    (___match113071113072_
                     _e110660111223_
                     _hd110659111226_
                     _tl110658111228_
                     ___splice113032113033_
                     _target110661111231_
                     _tl110663111233_))
                (___match113071113072_
                 _e110660111223_
                 _hd110659111226_
                 _tl110658111228_
                 ___splice113032113033_
                 _target110661111231_
                 _tl110663111233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113071113072_
                                                 _e110660111223_
                                                 _hd110659111226_
                                                 _tl110658111228_
                                                 ___splice113032113033_
                                                 _target110661111231_
                                                 _tl110663111233_))))
                                        (___match113071113072_
                                         _e110660111223_
                                         _hd110659111226_
                                         _tl110658111228_
                                         ___splice113032113033_
                                         _target110661111231_
                                         _tl110663111233_))
                                    (___match113071113072_
                                     _e110660111223_
                                     _hd110659111226_
                                     _tl110658111228_
                                     ___splice113032113033_
                                     _target110661111231_
                                     _tl110663111233_))
                                (___match113071113072_
                                 _e110660111223_
                                 _hd110659111226_
                                 _tl110658111228_
                                 ___splice113032113033_
                                 _target110661111231_
                                 _tl110663111233_))))
                        (___match113071113072_
                         _e110660111223_
                         _hd110659111226_
                         _tl110658111228_
                         ___splice113032113033_
                         _target110661111231_
                         _tl110663111233_))))
                (___match113071113072_
                 _e110660111223_
                 _hd110659111226_
                 _tl110658111228_
                 ___splice113032113033_
                 _target110661111231_
                 _tl110663111233_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110664111236_
                                       _target110661111231_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113028113029_))
                              (let ((_e110660111223_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113028113029_))))
                                (let ((_tl110658111228_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110660111223_)))
                                      (_hd110659111226_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110660111223_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110659111226_))
                                      (let ((___splice113032113033_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110659111226_
                                                '0))))
                                        (let ((_tl110663111233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113032113033_
                                                  '1)))
                                              (_target110661111231_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113032113033_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110663111233_))
                                              (___match113059113060_
                                               _e110660111223_
                                               _hd110659111226_
                                               _tl110658111228_
                                               ___splice113032113033_
                                               _target110661111231_
                                               _tl110663111233_)
                                              (___match113071113072_
                                               _e110660111223_
                                               _hd110659111226_
                                               _tl110658111228_
                                               ___splice113032113033_
                                               _target110661111231_
                                               _tl110663111233_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110658111228_))
                                          (let ((_e110775110830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110658111228_))))
                                            (let ((_tl110773110835_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110775110830_)))
                                                  (_hd110774110833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110775110830_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110774110833_))
                                                  (let ((_e110778110838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110774110833_))))
                                                    (let ((_tl110776110843_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110778110838_)))
                                                          (_hd110777110841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110778110838_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110777110841_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110777110841_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110776110843_))
                          (let ((_e110781110846_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110776110843_))))
                            (let ((_tl110779110851_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110781110846_)))
                                  (_hd110780110849_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110781110846_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110780110849_))
                                  (let ((_e110784110854_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110780110849_))))
                                    (let ((_tl110782110859_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110784110854_)))
                                          (_hd110783110857_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110784110854_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110783110857_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110783110857_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110782110859_))
                                                  (let ((_e110787110862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110782110859_))))
                                                    (let ((_tl110785110867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110787110862_)))
                                                          (_hd110786110865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110787110862_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110785110867_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110779110851_))
                      (let ((_e110790110870_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110779110851_))))
                        (let ((_tl110788110875_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110790110870_)))
                              (_hd110789110873_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110790110870_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110789110873_))
                              (let ((_e110793110878_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110789110873_))))
                                (let ((_tl110791110883_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110793110878_)))
                                      (_hd110792110881_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110793110878_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110792110881_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110792110881_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110791110883_))
                                              (let ((_e110796110886_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110791110883_))))
                                                (let ((_tl110794110891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110796110886_)))
                                                      (_hd110795110889_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110796110886_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110794110891_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110788110875_))
                                                          (let ((_e110799110894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110788110875_))))
                    (let ((_tl110797110899_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110799110894_)))
                          (_hd110798110897_
                           (let ()
                             (declare (not safe))
                             (##car _e110799110894_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd110798110897_))
                          (let ((_e110802110902_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd110798110897_))))
                            (let ((_tl110800110907_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110802110902_)))
                                  (_hd110801110905_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110802110902_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd110801110905_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd110801110905_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110800110907_))
                                          (let ((_e110805110910_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110800110907_))))
                                            (let ((_tl110803110915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110805110910_)))
                                                  (_hd110804110913_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110805110910_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110803110915_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110797110899_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110773110835_))
                                                          (___match113169113170_
                                                           _e110660111223_
                                                           _hd110659111226_
                                                           _tl110658111228_
                                                           _e110775110830_
                                                           _hd110774110833_
                                                           _tl110773110835_
                                                           _e110778110838_
                                                           _hd110777110841_
                                                           _tl110776110843_
                                                           _e110781110846_
                                                           _hd110780110849_
                                                           _tl110779110851_
                                                           _e110784110854_
                                                           _hd110783110857_
                                                           _tl110782110859_
                                                           _e110787110862_
                                                           _hd110786110865_
                                                           _tl110785110867_
                                                           _e110790110870_
                                                           _hd110789110873_
                                                           _tl110788110875_
                                                           _e110793110878_
                                                           _hd110792110881_
                                                           _tl110791110883_
                                                           _e110796110886_
                                                           _hd110795110889_
                                                           _tl110794110891_
                                                           _e110799110894_
                                                           _hd110798110897_
                                                           _tl110797110899_
                                                           _e110802110902_
                                                           _hd110801110905_
                                                           _tl110800110907_
                                                           _e110805110910_
                                                           _hd110804110913_
                                                           _tl110803110915_)
                                                          (___kont113044113045_))
                                                      (___kont113044113045_))
                                                  (___kont113044113045_))))
                                          (___kont113044113045_))
                                      (___kont113044113045_))
                                  (___kont113044113045_))))
                          (___kont113044113045_))))
                  (___kont113044113045_))
              (___kont113044113045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113044113045_))
                                          (___kont113044113045_))
                                      (___kont113044113045_))))
                              (___kont113044113045_))))
                      (___kont113044113045_))
                  (___kont113044113045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113044113045_))
                                              (___kont113044113045_))
                                          (___kont113044113045_))))
                                  (___kont113044113045_))))
                          (___kont113044113045_))
                      (___kont113044113045_))
                  (___kont113044113045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113044113045_))))
                                          (___kont113044113045_)))))
                              (___kont113044113045_)))))))
                 (_dispatch-case-e109961_
                  (lambda (_hd110109_ _body110110_)
                    (let* ((_form110112_
                            (let ((__tmp114464
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110110_ '()))))
                              (declare (not safe))
                              (cons _hd110109_ __tmp114464)))
                           (___stx113172113173_ _form110112_)
                           (_g110116110240_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113172113173_)))))
                      (let ((___kont113174113175_
                             (lambda (_L110611_ _L110612_ _L110613_)
                               (let ((__tmp114465
                                      (let ((__tmp114467
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114466
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110612_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114467 __tmp114466))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109957_ __tmp114465))))
                            (___kont113180113181_
                             (lambda (_L110459_ _L110460_ _L110461_ _L110462_)
                               (let ((__tmp114468
                                      (let ((__tmp114470
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114469
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110459_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114470 __tmp114469))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109957_ __tmp114468))))
                            (___kont113184113185_
                             (lambda (_L110325_ _L110326_ _L110327_)
                               (let ((__tmp114471
                                      (let ((__tmp114473
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114472
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110325_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114473 __tmp114472))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self109957_
                                  __tmp114471)))))
                        (let* ((___match113281113282_
                                (lambda (_e110208110245_
                                         _hd110207110248_
                                         _tl110206110250_
                                         _e110211110253_
                                         _hd110210110256_
                                         _tl110209110258_
                                         _e110214110261_
                                         _hd110213110264_
                                         _tl110212110266_
                                         _e110217110269_
                                         _hd110216110272_
                                         _tl110215110274_
                                         _e110220110277_
                                         _hd110219110280_
                                         _tl110218110282_
                                         _e110223110285_
                                         _hd110222110288_
                                         _tl110221110290_
                                         _e110226110293_
                                         _hd110225110296_
                                         _tl110224110298_
                                         _e110229110301_
                                         _hd110228110304_
                                         _tl110227110306_
                                         _e110232110309_
                                         _hd110231110312_
                                         _tl110230110314_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110224110298_))
                                      (let ((_e110235110317_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110224110298_))))
                                        (let ((_tl110233110322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110235110317_)))
                                              (_hd110234110320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110235110317_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110233110322_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110209110258_))
                                                  (___kont113184113185_
                                                   _hd110231110312_
                                                   _hd110222110288_
                                                   _hd110207110248_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110116110240_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110116110240_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110116110240_)))))
                               (___match113211113212_
                                (lambda (_e110169110363_
                                         _hd110168110366_
                                         _tl110167110368_
                                         ___splice113182113183_
                                         _target110170110371_
                                         _tl110172110373_)
                                  (letrec ((_loop110173110376_
                                            (lambda (_hd110171110379_
                                                     _arg110177110381_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110171110379_))
                                                  (let ((_e110174110384_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110171110379_))))
                                                    (let ((_lp-tl110176110389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110174110384_)))
                                                          (_lp-hd110175110387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110174110384_))))
                                                      (let ((__tmp114474
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110175110387_ _arg110177110381_))))
                (declare (not safe))
                (_loop110173110376_ _lp-tl110176110389_ __tmp114474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110178110392_
                                                         (reverse _arg110177110381_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110167110368_))
                                                        (let ((_e110181110395_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110167110368_))))
                  (let ((_tl110179110400_
                         (let () (declare (not safe)) (##cdr _e110181110395_)))
                        (_hd110180110398_
                         (let ()
                           (declare (not safe))
                           (##car _e110181110395_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110180110398_))
                        (let ((_e110184110403_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110180110398_))))
                          (let ((_tl110182110408_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110184110403_)))
                                (_hd110183110406_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110184110403_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110183110406_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110183110406_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110182110408_))
                                        (let ((_e110187110411_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110182110408_))))
                                          (let ((_tl110185110416_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110187110411_)))
                                                (_hd110186110414_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110187110411_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110186110414_))
                                                (let ((_e110190110419_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110186110414_))))
                                                  (let ((_tl110188110424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110190110419_)))
                                                        (_hd110189110422_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110190110419_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110189110422_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110189110422_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110188110424_))
                        (let ((_e110193110427_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110188110424_))))
                          (let ((_tl110191110432_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110193110427_)))
                                (_hd110192110430_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110193110427_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110191110432_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110185110416_))
                                    (let ((_e110196110435_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110185110416_))))
                                      (let ((_tl110194110440_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110196110435_)))
                                            (_hd110195110438_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110196110435_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110195110438_))
                                            (let ((_e110199110443_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110195110438_))))
                                              (let ((_tl110197110448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110199110443_)))
                                                    (_hd110198110446_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110199110443_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110198110446_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110198110446_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110197110448_))
                                                            (let ((_e110202110451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110197110448_))))
                      (let ((_tl110200110456_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110202110451_)))
                            (_hd110201110454_
                             (let ()
                               (declare (not safe))
                               (##car _e110202110451_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110200110456_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110179110400_))
                                (___kont113180113181_
                                 _hd110201110454_
                                 _hd110192110430_
                                 _tl110172110373_
                                 _arg110178110392_)
                                (___match113281113282_
                                 _e110169110363_
                                 _hd110168110366_
                                 _tl110167110368_
                                 _e110181110395_
                                 _hd110180110398_
                                 _tl110179110400_
                                 _e110184110403_
                                 _hd110183110406_
                                 _tl110182110408_
                                 _e110187110411_
                                 _hd110186110414_
                                 _tl110185110416_
                                 _e110190110419_
                                 _hd110189110422_
                                 _tl110188110424_
                                 _e110193110427_
                                 _hd110192110430_
                                 _tl110191110432_
                                 _e110196110435_
                                 _hd110195110438_
                                 _tl110194110440_
                                 _e110199110443_
                                 _hd110198110446_
                                 _tl110197110448_
                                 _e110202110451_
                                 _hd110201110454_
                                 _tl110200110456_))
                            (let () (declare (not safe)) (_g110116110240_)))))
                    (let () (declare (not safe)) (_g110116110240_)))
                (let () (declare (not safe)) (_g110116110240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g110116110240_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g110116110240_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g110116110240_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110116110240_)))))
                        (let () (declare (not safe)) (_g110116110240_)))
                    (let () (declare (not safe)) (_g110116110240_)))
                (let () (declare (not safe)) (_g110116110240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g110116110240_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g110116110240_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g110116110240_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110116110240_)))))
                        (let () (declare (not safe)) (_g110116110240_)))))
                (let () (declare (not safe)) (_g110116110240_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110173110376_
                                       _target110170110371_
                                       '())))))
                               (___match113199113200_
                                (lambda (_e110123110499_
                                         _hd110122110502_
                                         _tl110121110504_
                                         ___splice113176113177_
                                         _target110124110507_
                                         _tl110126110509_)
                                  (letrec ((_loop110127110512_
                                            (lambda (_hd110125110515_
                                                     _arg110131110517_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110125110515_))
                                                  (let ((_e110128110520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110125110515_))))
                                                    (let ((_lp-tl110130110525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110128110520_)))
                                                          (_lp-hd110129110523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110128110520_))))
                                                      (let ((__tmp114476
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110129110523_ _arg110131110517_))))
                (declare (not safe))
                (_loop110127110512_ _lp-tl110130110525_ __tmp114476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110132110528_
                                                         (reverse _arg110131110517_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110121110504_))
                                                        (let ((_e110135110531_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110121110504_))))
                  (let ((_tl110133110536_
                         (let () (declare (not safe)) (##cdr _e110135110531_)))
                        (_hd110134110534_
                         (let ()
                           (declare (not safe))
                           (##car _e110135110531_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110134110534_))
                        (let ((_e110138110539_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110134110534_))))
                          (let ((_tl110136110544_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110138110539_)))
                                (_hd110137110542_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110138110539_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110137110542_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110137110542_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110136110544_))
                                        (let ((_e110141110547_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110136110544_))))
                                          (let ((_tl110139110552_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110141110547_)))
                                                (_hd110140110550_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110141110547_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110140110550_))
                                                (let ((_e110144110555_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110140110550_))))
                                                  (let ((_tl110142110560_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110144110555_)))
                                                        (_hd110143110558_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110144110555_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110143110558_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110143110558_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110142110560_))
                        (let ((_e110147110563_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110142110560_))))
                          (let ((_tl110145110568_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110147110563_)))
                                (_hd110146110566_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110147110563_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110145110568_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110139110552_))
                                    (let ((___splice113178113179_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110139110552_
                                              '0))))
                                      (let ((_tl110150110573_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113178113179_
                                                '1)))
                                            (_target110148110571_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113178113179_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110150110573_))
                                            (letrec ((_loop110151110576_
                                                      (lambda (_hd110149110579_
                                                               _xarg110155110581_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110149110579_))
                                                            (let ((_e110152110584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110149110579_))))
                      (let ((_lp-tl110154110589_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110152110584_)))
                            (_lp-hd110153110587_
                             (let ()
                               (declare (not safe))
                               (##car _e110152110584_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110153110587_))
                            (let ((_e110159110592_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110153110587_))))
                              (let ((_tl110157110597_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110159110592_)))
                                    (_hd110158110595_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110159110592_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110158110595_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110158110595_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110157110597_))
                                            (let ((_e110162110600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110157110597_))))
                                              (let ((_tl110160110605_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110162110600_)))
                                                    (_hd110161110603_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110162110600_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110160110605_))
                                                    (let ((__tmp114475
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110161110603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110155110581_))))
              (declare (not safe))
              (_loop110151110576_ _lp-tl110154110589_ __tmp114475))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113211113212_
                                                     _e110123110499_
                                                     _hd110122110502_
                                                     _tl110121110504_
                                                     ___splice113176113177_
                                                     _target110124110507_
                                                     _tl110126110509_))))
                                            (___match113211113212_
                                             _e110123110499_
                                             _hd110122110502_
                                             _tl110121110504_
                                             ___splice113176113177_
                                             _target110124110507_
                                             _tl110126110509_))
                                        (___match113211113212_
                                         _e110123110499_
                                         _hd110122110502_
                                         _tl110121110504_
                                         ___splice113176113177_
                                         _target110124110507_
                                         _tl110126110509_))
                                    (___match113211113212_
                                     _e110123110499_
                                     _hd110122110502_
                                     _tl110121110504_
                                     ___splice113176113177_
                                     _target110124110507_
                                     _tl110126110509_))))
                            (___match113211113212_
                             _e110123110499_
                             _hd110122110502_
                             _tl110121110504_
                             ___splice113176113177_
                             _target110124110507_
                             _tl110126110509_))))
                    (let ((_xarg110156110608_ (reverse _xarg110155110581_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110133110536_))
                          (___kont113174113175_
                           _xarg110156110608_
                           _hd110146110566_
                           _arg110132110528_)
                          (___match113211113212_
                           _e110123110499_
                           _hd110122110502_
                           _tl110121110504_
                           ___splice113176113177_
                           _target110124110507_
                           _tl110126110509_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110151110576_
                                                 _target110148110571_
                                                 '())))
                                            (___match113211113212_
                                             _e110123110499_
                                             _hd110122110502_
                                             _tl110121110504_
                                             ___splice113176113177_
                                             _target110124110507_
                                             _tl110126110509_))))
                                    (___match113211113212_
                                     _e110123110499_
                                     _hd110122110502_
                                     _tl110121110504_
                                     ___splice113176113177_
                                     _target110124110507_
                                     _tl110126110509_))
                                (___match113211113212_
                                 _e110123110499_
                                 _hd110122110502_
                                 _tl110121110504_
                                 ___splice113176113177_
                                 _target110124110507_
                                 _tl110126110509_))))
                        (___match113211113212_
                         _e110123110499_
                         _hd110122110502_
                         _tl110121110504_
                         ___splice113176113177_
                         _target110124110507_
                         _tl110126110509_))
                    (___match113211113212_
                     _e110123110499_
                     _hd110122110502_
                     _tl110121110504_
                     ___splice113176113177_
                     _target110124110507_
                     _tl110126110509_))
                (___match113211113212_
                 _e110123110499_
                 _hd110122110502_
                 _tl110121110504_
                 ___splice113176113177_
                 _target110124110507_
                 _tl110126110509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113211113212_
                                                 _e110123110499_
                                                 _hd110122110502_
                                                 _tl110121110504_
                                                 ___splice113176113177_
                                                 _target110124110507_
                                                 _tl110126110509_))))
                                        (___match113211113212_
                                         _e110123110499_
                                         _hd110122110502_
                                         _tl110121110504_
                                         ___splice113176113177_
                                         _target110124110507_
                                         _tl110126110509_))
                                    (___match113211113212_
                                     _e110123110499_
                                     _hd110122110502_
                                     _tl110121110504_
                                     ___splice113176113177_
                                     _target110124110507_
                                     _tl110126110509_))
                                (___match113211113212_
                                 _e110123110499_
                                 _hd110122110502_
                                 _tl110121110504_
                                 ___splice113176113177_
                                 _target110124110507_
                                 _tl110126110509_))))
                        (___match113211113212_
                         _e110123110499_
                         _hd110122110502_
                         _tl110121110504_
                         ___splice113176113177_
                         _target110124110507_
                         _tl110126110509_))))
                (___match113211113212_
                 _e110123110499_
                 _hd110122110502_
                 _tl110121110504_
                 ___splice113176113177_
                 _target110124110507_
                 _tl110126110509_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110127110512_
                                       _target110124110507_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113172113173_))
                              (let ((_e110123110499_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113172113173_))))
                                (let ((_tl110121110504_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110123110499_)))
                                      (_hd110122110502_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110123110499_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110122110502_))
                                      (let ((___splice113176113177_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110122110502_
                                                '0))))
                                        (let ((_tl110126110509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113176113177_
                                                  '1)))
                                              (_target110124110507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113176113177_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110126110509_))
                                              (___match113199113200_
                                               _e110123110499_
                                               _hd110122110502_
                                               _tl110121110504_
                                               ___splice113176113177_
                                               _target110124110507_
                                               _tl110126110509_)
                                              (___match113211113212_
                                               _e110123110499_
                                               _hd110122110502_
                                               _tl110121110504_
                                               ___splice113176113177_
                                               _target110124110507_
                                               _tl110126110509_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110121110504_))
                                          (let ((_e110211110253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110121110504_))))
                                            (let ((_tl110209110258_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110211110253_)))
                                                  (_hd110210110256_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110211110253_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110210110256_))
                                                  (let ((_e110214110261_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110210110256_))))
                                                    (let ((_tl110212110266_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110214110261_)))
                                                          (_hd110213110264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110214110261_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110213110264_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110213110264_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110212110266_))
                          (let ((_e110217110269_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110212110266_))))
                            (let ((_tl110215110274_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110217110269_)))
                                  (_hd110216110272_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110217110269_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110216110272_))
                                  (let ((_e110220110277_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110216110272_))))
                                    (let ((_tl110218110282_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110220110277_)))
                                          (_hd110219110280_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110220110277_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110219110280_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110219110280_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110218110282_))
                                                  (let ((_e110223110285_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110218110282_))))
                                                    (let ((_tl110221110290_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110223110285_)))
                                                          (_hd110222110288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110223110285_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110221110290_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110215110274_))
                      (let ((_e110226110293_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110215110274_))))
                        (let ((_tl110224110298_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110226110293_)))
                              (_hd110225110296_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110226110293_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110225110296_))
                              (let ((_e110229110301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110225110296_))))
                                (let ((_tl110227110306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110229110301_)))
                                      (_hd110228110304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110229110301_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110228110304_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110228110304_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110227110306_))
                                              (let ((_e110232110309_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110227110306_))))
                                                (let ((_tl110230110314_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110232110309_)))
                                                      (_hd110231110312_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110232110309_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110230110314_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110224110298_))
                                                          (let ((_e110235110317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110224110298_))))
                    (let ((_tl110233110322_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110235110317_)))
                          (_hd110234110320_
                           (let ()
                             (declare (not safe))
                             (##car _e110235110317_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110233110322_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110209110258_))
                              (___kont113184113185_
                               _hd110231110312_
                               _hd110222110288_
                               _hd110122110502_)
                              (let () (declare (not safe)) (_g110116110240_)))
                          (let () (declare (not safe)) (_g110116110240_)))))
                  (let () (declare (not safe)) (_g110116110240_)))
              (let () (declare (not safe)) (_g110116110240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g110116110240_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110116110240_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g110116110240_)))))
                              (let ()
                                (declare (not safe))
                                (_g110116110240_)))))
                      (let () (declare (not safe)) (_g110116110240_)))
                  (let () (declare (not safe)) (_g110116110240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110116110240_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110116110240_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110116110240_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g110116110240_)))))
                          (let () (declare (not safe)) (_g110116110240_)))
                      (let () (declare (not safe)) (_g110116110240_)))
                  (let () (declare (not safe)) (_g110116110240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110116110240_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g110116110240_))))))
                              (let ()
                                (declare (not safe))
                                (_g110116110240_))))))))
                 (_generate1109962_
                  (lambda (_args110097_ _arglen110098_ _hd110099_ _body110100_)
                    (let* ((_len110102_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd110099_)))
                           (_condition110104_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd110099_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp114491
                                           (let ((__tmp114492
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len110102_ '()))))
                                             (declare (not safe))
                                             (cons _arglen110098_
                                                   __tmp114492))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp114491))
                                    (let ((__tmp114485
                                           (let ((__tmp114486
                                                  (let ((__tmp114487
                                                         (let ((__tmp114488
                                                                (let ((__tmp114489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114490
                                      (let ()
                                        (declare (not safe))
                                        (cons _len110102_ '()))))
                                 (declare (not safe))
                                 (cons _arglen110098_ __tmp114490))))
                          (declare (not safe))
                          (cons '##fx= __tmp114489))))
                   (declare (not safe))
                   (cons __tmp114488 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp114487))))
                                             (declare (not safe))
                                             (cons '() __tmp114486))))
                                      (declare (not safe))
                                      (cons 'let __tmp114485)))
                                (if (> _len110102_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp114483
                                               (let ((__tmp114484
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len110102_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen110098_
                                                       __tmp114484))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp114483))
                                        (let ((__tmp114477
                                               (let ((__tmp114478
                                                      (let ((__tmp114479
                                                             (let ((__tmp114480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114481
                                   (let ((__tmp114482
                                          (let ()
                                            (declare (not safe))
                                            (cons _len110102_ '()))))
                                     (declare (not safe))
                                     (cons _arglen110098_ __tmp114482))))
                              (declare (not safe))
                              (cons '##fx>= __tmp114481))))
                       (declare (not safe))
                       (cons __tmp114480 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp114479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp114478))))
                                          (declare (not safe))
                                          (cons 'let __tmp114477)))
                                    '#t)))
                           (_dispatch110106_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?109960_
                                   _hd110099_
                                   _body110100_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e109961_
                                   _hd110099_
                                   _body110100_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self109957_
                                   _hd110099_
                                   _body110100_)))))
                      (let ((__tmp114493
                             (let ((__tmp114494
                                    (let ((__tmp114495
                                           (let ((__tmp114496
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args110097_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch110106_
                                                   __tmp114496))))
                                      (declare (not safe))
                                      (cons 'apply __tmp114495))))
                               (declare (not safe))
                               (cons __tmp114494 '()))))
                        (declare (not safe))
                        (cons _condition110104_ __tmp114493))))))
          (let* ((_g109964109992_
                  (lambda (_g109965109989_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109965109989_))))
                 (_g109963110094_
                  (lambda (_g109965109995_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109965109995_))
                        (let ((_e109970109997_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109965109995_))))
                          (let ((_hd109969110000_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109970109997_)))
                                (_tl109968110002_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109970109997_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109968110002_))
                                (let ((_g114497_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl109968110002_
                                          '0))))
                                  (begin
                                    (let ((_g114498_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114497_)
                                                 (##vector-length _g114497_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114498_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114498_)))
                                    (let ((_target109971110005_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114497_ 0)))
                                          (_tl109973110007_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114497_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109973110007_))
                                          (letrec ((_loop109974110010_
                                                    (lambda (_hd109972110013_
                                                             _body109978110015_
                                                             _hd109979110017_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd109972110013_))
                                                          (let ((_e109975110020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd109972110013_))))
                    (let ((_lp-hd109976110023_
                           (let ()
                             (declare (not safe))
                             (##car _e109975110020_)))
                          (_lp-tl109977110025_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109975110020_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd109976110023_))
                          (let ((_e109984110028_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd109976110023_))))
                            (let ((_hd109983110031_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109984110028_)))
                                  (_tl109982110033_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109984110028_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl109982110033_))
                                  (let ((_e109987110036_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl109982110033_))))
                                    (let ((_hd109986110039_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109987110036_)))
                                          (_tl109985110041_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109987110036_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109985110041_))
                                          (let ((__tmp114527
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109986110039_
                                                         _body109978110015_)))
                                                (__tmp114526
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109983110031_
                                                         _hd109979110017_))))
                                            (declare (not safe))
                                            (_loop109974110010_
                                             _lp-tl109977110025_
                                             __tmp114527
                                             __tmp114526))
                                          (let ()
                                            (declare (not safe))
                                            (_g109964109992_
                                             _g109965109995_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109964109992_ _g109965109995_)))))
                          (let ()
                            (declare (not safe))
                            (_g109964109992_ _g109965109995_)))))
                  (let ((_body109980110044_ (reverse _body109978110015_))
                        (_hd109981110046_ (reverse _hd109979110017_)))
                    ((lambda (_L110049_ _L110050_)
                       (let ((_args110069_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen110070_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name110071_
                              (let ((_$e110066_
                                     (let ((__tmp114499
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp114499 _stx109958_))))
                                (if _$e110066_
                                    _$e110066_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp114500
                                (let ((__tmp114501
                                       (let ((__tmp114502
                                              (let ((__tmp114503
                                                     (let ((__tmp114516
                                                            (let ((__tmp114517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114518
                                  (let ((__tmp114519
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp114525
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110069_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp114525))
                                             (let ((__tmp114520
                                                    (let ((__tmp114521
                                                           (let ((__tmp114522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114523
                                 (let ((__tmp114524
                                        (let ()
                                          (declare (not safe))
                                          (cons _args110069_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp114524))))
                            (declare (not safe))
                            (cons __tmp114523 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp114522))))
              (declare (not safe))
              (cons '() __tmp114521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp114520)))))
                                    (declare (not safe))
                                    (cons __tmp114519 '()))))
                             (declare (not safe))
                             (cons _arglen110070_ __tmp114518))))
                      (declare (not safe))
                      (cons __tmp114517 '())))
                   (__tmp114504
                    (let ((__tmp114505
                           (let ((__tmp114506
                                  (let ((__tmp114510
                                         (let ((__tmp114511
                                                (let ((__tmp114512
                                                       (let ((__tmp114513
                                                              (let ((__tmp114514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114515
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110069_ '()))))
                               (declare (not safe))
                               (cons _name110071_ __tmp114515))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp114514))))
                 (declare (not safe))
                 (cons __tmp114513 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp114512))))
                                           (declare (not safe))
                                           (cons __tmp114511 '())))
                                        (__tmp114507
                                         (map (lambda (_g110072110075_
                                                       _g110073110077_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1109962_
                                                   _args110069_
                                                   _arglen110070_
                                                   _g110072110075_
                                                   _g110073110077_)))
                                              (let ((__tmp114508
                                                     (lambda (_g110079110082_
                                                              _g110080110084_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110079110082_
                                                               _g110080110084_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114508
                                                        '()
                                                        _L110050_))
                                              (let ((__tmp114509
                                                     (lambda (_g110086110089_
                                                              _g110087110091_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110086110089_
                                                               _g110087110091_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114509
                                                        '()
                                                        _L110049_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp114510 __tmp114507))))
                             (declare (not safe))
                             (cons 'cond __tmp114506))))
                      (declare (not safe))
                      (cons __tmp114505 '()))))
               (declare (not safe))
               (cons __tmp114516 __tmp114504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp114503))))
                                         (declare (not safe))
                                         (cons __tmp114502 '()))))
                                  (declare (not safe))
                                  (cons _args110069_ __tmp114501))))
                           (declare (not safe))
                           (cons 'lambda __tmp114500))))
                     _body109980110044_
                     _hd109981110046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop109974110010_
                                               _target109971110005_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g109964109992_
                                             _g109965109995_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g109964109992_ _g109965109995_)))))
                        (let ()
                          (declare (not safe))
                          (_g109964109992_ _g109965109995_))))))
            (declare (not safe))
            (_g109963110094_ _stx109958_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self109228_ _stx109229_ _compiled-body?109230_)
        (letrec ((_generate-simple109232_
                  (lambda (_hd109942_ _body109943_)
                    (let ((__tmp114528
                           (let ((__tmp114529
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self109228_
                                     'let
                                     _hd109942_
                                     _body109943_
                                     _compiled-body?109230_))))
                             (declare (not safe))
                             (_coalesce-let*109234_ __tmp114529))))
                      (declare (not safe))
                      (_coalesce-boolean109233_ __tmp114528))))
                 (_coalesce-boolean109233_
                  (lambda (_code109803_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code109804109830_ _code109803_)
                               (_else109806109838_ (lambda () _code109803_))
                               (_K109808109875_
                                (lambda (_expr2109841_
                                         _expr1109842_
                                         _id109843_)
                                  (let* ((_expr2109844109852_ _expr2109841_)
                                         (_else109846109860_
                                          (lambda ()
                                            (let ((__tmp114530
                                                   (let ((__tmp114531
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2109841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1109842_
                                                           __tmp114531))))
                                              (declare (not safe))
                                              (cons 'or __tmp114530))))
                                         (_K109848109865_
                                          (lambda (_exprs109863_)
                                            (let ((__tmp114532
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1109842_
                                                           _exprs109863_))))
                                              (declare (not safe))
                                              (cons 'or __tmp114532)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2109844109852_))
                                        (let ((_hd109849109868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2109844109852_)))
                                              (_tl109850109870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2109844109852_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109849109868_ 'or))
                                              (let ((_exprs109873_
                                                     _tl109850109870_))
                                                (declare (not safe))
                                                (_K109848109865_
                                                 _exprs109873_))
                                              (let ()
                                                (declare (not safe))
                                                (_else109846109860_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109846109860_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code109804109830_))
                              (let ((_hd109809109878_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code109804109830_)))
                                    (_tl109810109880_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code109804109830_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd109809109878_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl109810109880_))
                                        (let ((_hd109811109883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl109810109880_)))
                                              (_tl109812109885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl109810109880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd109811109883_))
                                              (let ((_hd109823109888_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd109811109883_)))
                                                    (_tl109824109890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd109811109883_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd109823109888_))
                                                    (let ((_hd109825109893_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd109823109888_)))
                                                          (_tl109826109895_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd109823109888_))))
                                                      (let ((_id109898_
                                                             _hd109825109893_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl109826109895_))
                                                            (let ((_hd109827109900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl109826109895_)))
                          (_tl109828109902_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl109826109895_))))
                      (let ((_expr1109905_ _hd109827109900_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl109828109902_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl109824109890_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl109812109885_))
                                    (let ((_hd109813109907_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl109812109885_)))
                                          (_tl109814109909_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl109812109885_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109813109907_))
                                          (let ((_hd109815109912_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109813109907_)))
                                                (_tl109816109914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109813109907_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109815109912_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl109816109914_))
                                                    (let ((_hd109817109917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl109816109914_)))
                                                          (_tl109818109919_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl109816109914_))))
                                                      (if ((lambda (_g109921109923_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g109921109923_ _id109898_)))
                   _hd109817109917_)
                  (if (let () (declare (not safe)) (##pair? _tl109818109919_))
                      (let ((_hd109819109926_
                             (let ()
                               (declare (not safe))
                               (##car _tl109818109919_)))
                            (_tl109820109928_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl109818109919_))))
                        (if ((lambda (_g109930109932_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g109930109932_ _id109898_)))
                             _hd109819109926_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl109820109928_))
                                (let ((_hd109821109935_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl109820109928_)))
                                      (_tl109822109937_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl109820109928_))))
                                  (let ((_expr2109940_ _hd109821109935_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl109822109937_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl109814109909_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109808109875_
                                               _expr2109940_
                                               _expr1109905_
                                               _id109898_))
                                            (let ()
                                              (declare (not safe))
                                              (_else109806109838_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else109806109838_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else109806109838_)))
                            (let ()
                              (declare (not safe))
                              (_else109806109838_))))
                      (let () (declare (not safe)) (_else109806109838_)))
                  (let () (declare (not safe)) (_else109806109838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109806109838_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else109806109838_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else109806109838_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109806109838_)))
                                (let ()
                                  (declare (not safe))
                                  (_else109806109838_)))
                            (let ()
                              (declare (not safe))
                              (_else109806109838_)))))
                    (let () (declare (not safe)) (_else109806109838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109806109838_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else109806109838_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109806109838_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else109806109838_))))
                              (let ()
                                (declare (not safe))
                                (_else109806109838_))))
                        _code109803_)))
                 (_coalesce-let*109234_
                  (lambda (_code109536_)
                    (let* ((_code109537109601_ _code109536_)
                           (_else109541109609_ (lambda () _code109536_)))
                      (let ((_K109583109754_
                             (lambda (_body109750_ _expr109751_ _id109752_)
                               (let ((__tmp114533
                                      (let ((__tmp114534
                                             (let ((__tmp114535
                                                    (let ((__tmp114536
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr109751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id109752_ __tmp114536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114535 '()))))
                                        (declare (not safe))
                                        (cons __tmp114534 _body109750_))))
                                 (declare (not safe))
                                 (cons 'let __tmp114533))))
                            (_K109560109679_
                             (lambda (_body109673_
                                      _expr2109674_
                                      _id2109675_
                                      _expr1109676_
                                      _id1109677_)
                               (let ((__tmp114537
                                      (let ((__tmp114538
                                             (let ((__tmp114542
                                                    (let ((__tmp114543
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109677_ __tmp114543)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114539
                                                    (let ((__tmp114540
                                                           (let ((__tmp114541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2109674_ '()))))
                     (declare (not safe))
                     (cons _id2109675_ __tmp114541))))
              (declare (not safe))
              (cons __tmp114540 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114542
                                                     __tmp114539))))
                                        (declare (not safe))
                                        (cons __tmp114538 _body109673_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114537))))
                            (_K109543109618_
                             (lambda (_body109613_
                                      _bind109614_
                                      _expr1109615_
                                      _id1109616_)
                               (let ((__tmp114544
                                      (let ((__tmp114545
                                             (let ((__tmp114546
                                                    (let ((__tmp114547
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109616_ __tmp114547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114546
                                                     _bind109614_))))
                                        (declare (not safe))
                                        (cons __tmp114545 _body109613_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114544)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code109537109601_))
                            (let ((_tl109585109759_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code109537109601_)))
                                  (_hd109584109757_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code109537109601_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd109584109757_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109585109759_))
                                      (let ((_tl109587109764_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109585109759_)))
                                            (_hd109586109762_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109585109759_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd109586109762_))
                                            (let ((_tl109595109769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd109586109762_)))
                                                  (_hd109594109767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd109586109762_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd109594109767_))
                                                  (let ((_tl109597109774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd109594109767_)))
                                                        (_hd109596109772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd109594109767_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109597109774_))
                                                        (let ((_tl109599109781_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109597109774_)))
                      (_hd109598109779_
                       (let () (declare (not safe)) (##car _tl109597109774_))))
                  (if (let () (declare (not safe)) (##null? _tl109599109781_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl109595109769_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl109587109764_))
                              (let ((_tl109589109788_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl109587109764_)))
                                    (_hd109588109786_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl109587109764_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109588109786_))
                                    (let ((_tl109591109793_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109588109786_)))
                                          (_hd109590109791_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109588109786_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd109590109791_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl109591109793_))
                                              (let ((_tl109593109798_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl109591109793_)))
                                                    (_hd109592109796_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl109591109793_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd109592109796_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109589109788_))
                                                        (let ((_id109777_
                                                               _hd109596109772_)
                                                              (_expr109784_
                                                               _hd109598109779_)
                                                              (_body109801_
                                                               _tl109593109798_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109583109754_
                                                             _body109801_
                                                             _expr109784_
                                                             _id109777_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109541109609_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd109592109796_))
                                                        (let ((_tl109572109728_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd109592109796_)))
                      (_hd109571109726_
                       (let () (declare (not safe)) (##car _hd109592109796_))))
                  (if (let () (declare (not safe)) (##pair? _hd109571109726_))
                      (let ((_tl109574109733_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd109571109726_)))
                            (_hd109573109731_
                             (let ()
                               (declare (not safe))
                               (##car _hd109571109726_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109574109733_))
                            (let ((_tl109576109740_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109574109733_)))
                                  (_hd109575109738_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109574109733_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109576109740_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl109572109728_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109589109788_))
                                          (let ((_id1109702_ _hd109596109772_)
                                                (_expr1109709_
                                                 _hd109598109779_)
                                                (_id2109736_ _hd109573109731_)
                                                (_expr2109743_
                                                 _hd109575109738_)
                                                (_body109745_
                                                 _tl109593109798_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109560109679_
                                               _body109745_
                                               _expr2109743_
                                               _id2109736_
                                               _expr1109709_
                                               _id1109702_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109541109609_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else109541109609_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109541109609_))))
                            (let ()
                              (declare (not safe))
                              (_else109541109609_))))
                      (let () (declare (not safe)) (_else109541109609_))))
                (let () (declare (not safe)) (_else109541109609_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else109541109609_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109590109791_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl109591109793_))
                                                  (let ((_tl109553109662_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl109591109793_)))
                                                        (_hd109552109660_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl109591109793_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109589109788_))
                                                        (let ((_id1109641_
                                                               _hd109596109772_)
                                                              (_expr1109648_
                                                               _hd109598109779_)
                                                              (_bind109665_
                                                               _hd109552109660_)
                                                              (_body109667_
                                                               _tl109553109662_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109543109618_
                                                             _body109667_
                                                             _bind109665_
                                                             _expr1109648_
                                                             _id1109641_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109541109609_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109541109609_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else109541109609_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109541109609_))))
                              (let ()
                                (declare (not safe))
                                (_else109541109609_)))
                          (let () (declare (not safe)) (_else109541109609_)))
                      (let () (declare (not safe)) (_else109541109609_))))
                (let () (declare (not safe)) (_else109541109609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109541109609_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else109541109609_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else109541109609_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109541109609_))))
                            (let ()
                              (declare (not safe))
                              (_else109541109609_)))))))
                 (_generate-values109235_
                  (lambda (_hd109349_ _body109350_)
                    (let _lp109352_ ((_rest109354_ _hd109349_)
                                     (_bind109355_ '())
                                     (_check109356_ '())
                                     (_post109357_ '()))
                      (let* ((___stx113483113484_ _rest109354_)
                             (_g109360109371_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113483113484_)))))
                        (let ((___kont113485113486_
                               (lambda (_L109398_ _L109399_)
                                 (let* ((___stx113439113440_ _L109399_)
                                        (_g109414109439_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113439113440_)))))
                                   (let ((___kont113441113442_
                                          (lambda (_L109512_ _L109513_)
                                            (let ((_eid109527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109513_)))
                                                  (_expr109528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self109228_
                                                      _L109512_))))
                                              (let ((__tmp114548
                                                     (let ((__tmp114549
                                                            (let ((__tmp114550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109528_ '()))))
                      (declare (not safe))
                      (cons _eid109527_ __tmp114550))))
               (declare (not safe))
               (cons __tmp114549 _bind109355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp109352_
                                                 _L109398_
                                                 __tmp114548
                                                 _check109356_
                                                 _post109357_)))))
                                         (___kont113443113444_
                                          (lambda (_L109460_ _L109461_)
                                            (let* ((_vals109474_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109476_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109474_
                                                       _L109461_
                                                       _L109460_)))
                                                   (_refs109478_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109474_
                                                       _L109461_)))
                                                   (_expr109480_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self109228_
                                                       _L109460_))))
                                              (let ((__tmp114553
                                                     (let ((__tmp114554
                                                            (let ((__tmp114555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109480_ '()))))
                      (declare (not safe))
                      (cons _vals109474_ __tmp114555))))
               (declare (not safe))
               (cons __tmp114554 _bind109355_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114552
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109476_
                                                             _check109356_)))
                                                    (__tmp114551
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs109478_
                                                             _post109357_))))
                                                (declare (not safe))
                                                (_lp109352_
                                                 _L109398_
                                                 __tmp114553
                                                 __tmp114552
                                                 __tmp114551))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113439113440_))
                                         (let ((_e109420109488_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113439113440_))))
                                           (let ((_tl109418109493_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e109420109488_)))
                                                 (_hd109419109491_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e109420109488_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd109419109491_))
                                                 (let ((_e109423109496_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd109419109491_))))
                                                   (let ((_tl109421109501_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e109423109496_)))
                                                         (_hd109422109499_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e109423109496_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl109421109501_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl109418109493_))
                     (let ((_e109426109504_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109418109493_))))
                       (let ((_tl109424109509_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109426109504_)))
                             (_hd109425109507_
                              (let ()
                                (declare (not safe))
                                (##car _e109426109504_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109424109509_))
                             (___kont113441113442_
                              _hd109425109507_
                              _hd109422109499_)
                             (let () (declare (not safe)) (_g109414109439_)))))
                     (let () (declare (not safe)) (_g109414109439_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl109418109493_))
                     (let ((_e109434109452_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109418109493_))))
                       (let ((_tl109432109457_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109434109452_)))
                             (_hd109433109455_
                              (let ()
                                (declare (not safe))
                                (##car _e109434109452_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109432109457_))
                             (___kont113443113444_
                              _hd109433109455_
                              _hd109419109491_)
                             (let () (declare (not safe)) (_g109414109439_)))))
                     (let () (declare (not safe)) (_g109414109439_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl109418109493_))
                                                     (let ((_e109434109452_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl109418109493_))))
                                                       (let ((_tl109432109457_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e109434109452_)))
                     (_hd109433109455_
                      (let () (declare (not safe)) (##car _e109434109452_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl109432109457_))
                     (___kont113443113444_ _hd109433109455_ _hd109419109491_)
                     (let () (declare (not safe)) (_g109414109439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g109414109439_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g109414109439_)))))))
                              (___kont113487113488_
                               (lambda ()
                                 (let* ((_body109378_
                                         (if _compiled-body?109230_
                                             _body109350_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self109228_
                                                _body109350_))))
                                        (_body109380_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post109236_
                                            _post109357_
                                            _body109378_)))
                                        (_body109382_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check109237_
                                            _check109356_
                                            _body109380_))))
                                   (let ((__tmp114556
                                          (let ((__tmp114558
                                                 (reverse _bind109355_))
                                                (__tmp114557
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body109382_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114558 __tmp114557))))
                                     (declare (not safe))
                                     (cons 'let __tmp114556))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113483113484_))
                              (let ((_e109366109390_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113483113484_))))
                                (let ((_tl109364109395_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109366109390_)))
                                      (_hd109365109393_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109366109390_))))
                                  (___kont113485113486_
                                   _tl109364109395_
                                   _hd109365109393_)))
                              (___kont113487113488_)))))))
                 (_generate-values-post109236_
                  (lambda (_post109308_ _body109309_)
                    (let _lp109311_ ((_rest109313_ _post109308_)
                                     (_body109314_ _body109309_))
                      (let* ((_rest109315109323_ _rest109313_)
                             (_else109317109331_ (lambda () _body109314_))
                             (_K109319109337_
                              (lambda (_rest109334_ _bind109335_)
                                (let ((__tmp114559
                                       (let ((__tmp114560
                                              (let ((__tmp114561
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body109314_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind109335_
                                                      __tmp114561))))
                                         (declare (not safe))
                                         (cons 'let __tmp114560))))
                                  (declare (not safe))
                                  (_lp109311_ _rest109334_ __tmp114559)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109315109323_))
                            (let ((_hd109320109340_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109315109323_)))
                                  (_tl109321109342_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109315109323_))))
                              (let* ((_bind109345_ _hd109320109340_)
                                     (_rest109347_ _tl109321109342_))
                                (declare (not safe))
                                (_K109319109337_ _rest109347_ _bind109345_)))
                            (let ()
                              (declare (not safe))
                              (_else109317109331_)))))))
                 (_generate-values-check109237_
                  (lambda (_check109305_ _body109306_)
                    (let ((__tmp114562
                           (let ((__tmp114564
                                  (let ()
                                    (declare (not safe))
                                    (cons _body109306_ '())))
                                 (__tmp114563 (reverse _check109305_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114564 __tmp114563))))
                      (declare (not safe))
                      (cons 'begin __tmp114562)))))
          (let* ((_g109239109256_
                  (lambda (_g109240109253_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109240109253_))))
                 (_g109238109302_
                  (lambda (_g109240109259_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109240109259_))
                        (let ((_e109245109261_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109240109259_))))
                          (let ((_hd109244109264_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109245109261_)))
                                (_tl109243109266_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109245109261_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl109243109266_))
                                (let ((_e109248109269_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl109243109266_))))
                                  (let ((_hd109247109272_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e109248109269_)))
                                        (_tl109246109274_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e109248109269_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109246109274_))
                                        (let ((_e109251109277_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109246109274_))))
                                          (let ((_hd109250109280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109251109277_)))
                                                (_tl109249109282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109251109277_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl109249109282_))
                                                ((lambda (_L109285_ _L109286_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L109286_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple109232_
                                                          _L109286_
                                                          _L109285_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values109235_
                                                          _L109286_
                                                          _L109285_))))
                                                 _hd109250109280_
                                                 _hd109247109272_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g109239109256_
                                                   _g109240109259_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109239109256_ _g109240109259_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g109239109256_ _g109240109259_)))))
                        (let ()
                          (declare (not safe))
                          (_g109239109256_ _g109240109259_))))))
            (declare (not safe))
            (_g109238109302_ _stx109229_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self109948_ _stx109949_)
        (let ((_compiled-body?109951_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self109948_
           _stx109949_
           _compiled-body?109951_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g114566_
        (let ((_g114565_ (let () (declare (not safe)) (##length _g114566_))))
          (cond ((let () (declare (not safe)) (##fx= _g114565_ 2))
                 (apply (lambda (_self109948_ _stx109949_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self109948_
                             _stx109949_)))
                        _g114566_))
                ((let () (declare (not safe)) (##fx= _g114565_ 3))
                 (apply (lambda (_self109953_
                                 _stx109954_
                                 _compiled-body?109955_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self109953_
                             _stx109954_
                             _compiled-body?109955_)))
                        _g114566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g114566_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals109122_ _hd109123_)
        (let _lp109125_ ((_rest109127_ _hd109123_)
                         (_k109128_ '0)
                         (_r109129_ '()))
          (let* ((___stx113497113498_ _rest109127_)
                 (_g109134109151_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx113497113498_)))))
            (let ((___kont113499113500_
                   (lambda (_L109214_)
                     (let ((__tmp114567
                            (let () (declare (not safe)) (fx+ _k109128_ '1))))
                       (declare (not safe))
                       (_lp109125_ _L109214_ __tmp114567 _r109129_))))
                  (___kont113501113502_
                   (lambda (_L109187_ _L109188_)
                     (let ((__tmp114573
                            (let () (declare (not safe)) (fx+ _k109128_ '1)))
                           (__tmp114568
                            (let ((__tmp114569
                                   (let ((__tmp114572
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109188_)))
                                         (__tmp114570
                                          (let ((__tmp114571
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals109122_
                                                    _k109128_
                                                    _L109187_))))
                                            (declare (not safe))
                                            (cons __tmp114571 '()))))
                                     (declare (not safe))
                                     (cons __tmp114572 __tmp114570))))
                              (declare (not safe))
                              (cons __tmp114569 _r109129_))))
                       (declare (not safe))
                       (_lp109125_ _L109187_ __tmp114573 __tmp114568))))
                  (___kont113503113504_
                   (lambda (_L109163_)
                     (let ((__tmp114574
                            (let ((__tmp114575
                                   (let ((__tmp114578
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109163_)))
                                         (__tmp114576
                                          (let ((__tmp114577
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals109122_
                                                    _k109128_))))
                                            (declare (not safe))
                                            (cons __tmp114577 '()))))
                                     (declare (not safe))
                                     (cons __tmp114578 __tmp114576))))
                              (declare (not safe))
                              (cons __tmp114575 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp114574 _r109129_))))
                  (___kont113505113506_ (lambda () (reverse _r109129_))))
              (let ((_g109132109174_
                     (lambda ()
                       (let ((_L109163_ ___stx113497113498_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L109163_))
                             (___kont113503113504_ _L109163_)
                             (___kont113505113506_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx113497113498_))
                    (let ((_e109139109203_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx113497113498_))))
                      (let ((_tl109137109208_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109139109203_)))
                            (_hd109138109206_
                             (let ()
                               (declare (not safe))
                               (##car _e109139109203_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd109138109206_))
                            (let ((_e109140109211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd109138109206_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e109140109211_ '#f))
                                  (___kont113499113500_ _tl109137109208_)
                                  (___kont113501113502_
                                   _tl109137109208_
                                   _hd109138109206_)))
                            (___kont113501113502_
                             _tl109137109208_
                             _hd109138109206_))))
                    (let () (declare (not safe)) (_g109132109174_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self108801_ _stx108802_ _compiled-body?108803_)
        (letrec ((_generate-simple108805_
                  (lambda (_hd109107_ _body109108_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self108801_
                       'letrec
                       _hd109107_
                       _body109108_
                       _compiled-body?108803_))))
                 (_generate-values108806_
                  (lambda (_hd108886_ _body108887_)
                    (let _lp108889_ ((_rest108891_ _hd108886_)
                                     (_bind108892_ '())
                                     (_check108893_ '())
                                     (_post108894_ '()))
                      (let* ((___stx113571113572_ _rest108891_)
                             (_g108897108908_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113571113572_)))))
                        (let ((___kont113573113574_
                               (lambda (_L108935_ _L108936_)
                                 (let* ((___stx113527113528_ _L108936_)
                                        (_g108951108976_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113527113528_)))))
                                   (let ((___kont113529113530_
                                          (lambda (_L109083_ _L109084_)
                                            (let ((_eid109098_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109084_)))
                                                  (_expr109099_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108801_
                                                      _L109083_))))
                                              (let ((__tmp114579
                                                     (let ((__tmp114580
                                                            (let ((__tmp114581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109099_ '()))))
                      (declare (not safe))
                      (cons _eid109098_ __tmp114581))))
               (declare (not safe))
               (cons __tmp114580 _bind108892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108889_
                                                 _L108935_
                                                 __tmp114579
                                                 _check108893_
                                                 _post108894_)))))
                                         (___kont113531113532_
                                          (lambda (_L108997_ _L108998_)
                                            (let* ((_vals109011_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109013_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109011_
                                                       _L108998_
                                                       _L108997_)))
                                                   (_refs109015_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109011_
                                                       _L108998_)))
                                                   (_expr109017_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108801_
                                                       _L108997_))))
                                              (let ((__tmp114584
                                                     (let ((__tmp114587
                                                            (let ((__tmp114588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114589
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr109017_ '()))))
                             (declare (not safe))
                             (cons _vals109011_ __tmp114589))))
                      (declare (not safe))
                      (cons __tmp114588 _bind108892_)))
                   (__tmp114585
                    (map (lambda (_e109019109021_)
                           (let* ((_g109023109032_ _e109019109021_)
                                  (_E109025109036_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g109023109032_))))
                                  (_K109026109041_
                                   (lambda (_eid109039_)
                                     (let ((__tmp114586
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid109039_ __tmp114586)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g109023109032_))
                                 (let ((_hd109027109044_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g109023109032_)))
                                       (_tl109028109046_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g109023109032_))))
                                   (let ((_eid109049_ _hd109027109044_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl109028109046_))
                                         (let ((_tl109030109051_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl109028109046_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl109030109051_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K109026109041_ _eid109049_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E109025109036_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E109025109036_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E109025109036_)))))
                         _refs109015_)))
               (declare (not safe))
               (foldl1 cons __tmp114587 __tmp114585)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114583
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109013_
                                                             _check108893_)))
                                                    (__tmp114582
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs109015_
                                                               _post108894_))))
                                                (declare (not safe))
                                                (_lp108889_
                                                 _L108935_
                                                 __tmp114584
                                                 __tmp114583
                                                 __tmp114582))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113527113528_))
                                         (let ((_e108957109059_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113527113528_))))
                                           (let ((_tl108955109064_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e108957109059_)))
                                                 (_hd108956109062_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e108957109059_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd108956109062_))
                                                 (let ((_e108960109067_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd108956109062_))))
                                                   (let ((_tl108958109072_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e108960109067_)))
                                                         (_hd108959109070_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e108960109067_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl108958109072_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl108955109064_))
                     (let ((_e108963109075_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108955109064_))))
                       (let ((_tl108961109080_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108963109075_)))
                             (_hd108962109078_
                              (let ()
                                (declare (not safe))
                                (##car _e108963109075_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108961109080_))
                             (___kont113529113530_
                              _hd108962109078_
                              _hd108959109070_)
                             (let () (declare (not safe)) (_g108951108976_)))))
                     (let () (declare (not safe)) (_g108951108976_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl108955109064_))
                     (let ((_e108971108989_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108955109064_))))
                       (let ((_tl108969108994_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108971108989_)))
                             (_hd108970108992_
                              (let ()
                                (declare (not safe))
                                (##car _e108971108989_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108969108994_))
                             (___kont113531113532_
                              _hd108970108992_
                              _hd108956109062_)
                             (let () (declare (not safe)) (_g108951108976_)))))
                     (let () (declare (not safe)) (_g108951108976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl108955109064_))
                                                     (let ((_e108971108989_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl108955109064_))))
                                                       (let ((_tl108969108994_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e108971108989_)))
                     (_hd108970108992_
                      (let () (declare (not safe)) (##car _e108971108989_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl108969108994_))
                     (___kont113531113532_ _hd108970108992_ _hd108956109062_)
                     (let () (declare (not safe)) (_g108951108976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g108951108976_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g108951108976_)))))))
                              (___kont113575113576_
                               (lambda ()
                                 (let* ((_body108915_
                                         (if _compiled-body?108803_
                                             _body108887_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108801_
                                                _body108887_))))
                                        (_body108917_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108808_
                                            _post108894_
                                            _body108915_)))
                                        (_body108919_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108807_
                                            _check108893_
                                            _body108917_))))
                                   (let ((__tmp114590
                                          (let ((__tmp114592
                                                 (reverse _bind108892_))
                                                (__tmp114591
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body108919_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114592 __tmp114591))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp114590))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113571113572_))
                              (let ((_e108903108927_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113571113572_))))
                                (let ((_tl108901108932_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108903108927_)))
                                      (_hd108902108930_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108903108927_))))
                                  (___kont113573113574_
                                   _tl108901108932_
                                   _hd108902108930_)))
                              (___kont113575113576_)))))))
                 (_generate-values-check108807_
                  (lambda (_check108883_ _body108884_)
                    (let ((__tmp114593
                           (let ((__tmp114595
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108884_ '())))
                                 (__tmp114594 (reverse _check108883_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114595 __tmp114594))))
                      (declare (not safe))
                      (cons 'begin __tmp114593))))
                 (_generate-values-post108808_
                  (lambda (_post108876_ _body108877_)
                    (let ((__tmp114596
                           (let ((__tmp114598
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108877_ '())))
                                 (__tmp114597
                                  (map (lambda (_g108878108880_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g108878108880_)))
                                       (reverse _post108876_))))
                             (declare (not safe))
                             (foldr1 cons __tmp114598 __tmp114597))))
                      (declare (not safe))
                      (cons 'begin __tmp114596)))))
          (let* ((_g108810108827_
                  (lambda (_g108811108824_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108811108824_))))
                 (_g108809108873_
                  (lambda (_g108811108830_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108811108830_))
                        (let ((_e108816108832_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108811108830_))))
                          (let ((_hd108815108835_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108816108832_)))
                                (_tl108814108837_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108816108832_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108814108837_))
                                (let ((_e108819108840_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108814108837_))))
                                  (let ((_hd108818108843_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108819108840_)))
                                        (_tl108817108845_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108819108840_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108817108845_))
                                        (let ((_e108822108848_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108817108845_))))
                                          (let ((_hd108821108851_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108822108848_)))
                                                (_tl108820108853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108822108848_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108820108853_))
                                                ((lambda (_L108856_ _L108857_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108857_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108805_
                                                          _L108857_
                                                          _L108856_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108806_
                                                          _L108857_
                                                          _L108856_))))
                                                 _hd108821108851_
                                                 _hd108818108843_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108810108827_
                                                   _g108811108830_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108810108827_ _g108811108830_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108810108827_ _g108811108830_)))))
                        (let ()
                          (declare (not safe))
                          (_g108810108827_ _g108811108830_))))))
            (declare (not safe))
            (_g108809108873_ _stx108802_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self109113_ _stx109114_)
        (let ((_compiled-body?109116_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self109113_
           _stx109114_
           _compiled-body?109116_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g114600_
        (let ((_g114599_ (let () (declare (not safe)) (##length _g114600_))))
          (cond ((let () (declare (not safe)) (##fx= _g114599_ 2))
                 (apply (lambda (_self109113_ _stx109114_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self109113_
                             _stx109114_)))
                        _g114600_))
                ((let () (declare (not safe)) (##fx= _g114599_ 3))
                 (apply (lambda (_self109118_
                                 _stx109119_
                                 _compiled-body?109120_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self109118_
                             _stx109119_
                             _compiled-body?109120_)))
                        _g114600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g114600_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self108382_ _stx108383_)
        (letrec ((_generate-values108385_
                  (lambda (_hd108628_ _body108629_)
                    (let _lp108631_ ((_rest108633_ _hd108628_)
                                     (_bind108634_ '()))
                      (let* ((_rest108635108643_ _rest108633_)
                             (_else108637108654_
                              (lambda ()
                                (let ((_bind108651_ (reverse _bind108634_))
                                      (_body108652_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self108382_
                                          _body108629_))))
                                  (let ((__tmp114601
                                         (let ((__tmp114602
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body108652_ '()))))
                                           (declare (not safe))
                                           (cons _bind108651_ __tmp114602))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp114601)))))
                             (_K108639108788_
                              (lambda (_rest108657_ _hd-bind108658_)
                                (let* ((___stx113585113586_ _hd-bind108658_)
                                       (_g108661108686_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113585113586_)))))
                                  (let ((___kont113587113588_
                                         (lambda (_L108767_ _L108768_)
                                           (let ((_eid108782_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L108768_)))
                                                 (_expr108783_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self108382_
                                                     _L108767_))))
                                             (let ((__tmp114603
                                                    (let ((__tmp114604
                                                           (let ((__tmp114605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr108783_ '()))))
                     (declare (not safe))
                     (cons _eid108782_ __tmp114605))))
              (declare (not safe))
              (cons __tmp114604 _bind108634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108631_
                                                _rest108657_
                                                __tmp114603)))))
                                        (___kont113589113590_
                                         (lambda (_L108707_ _L108708_)
                                           (let* ((_vals108727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp108729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values108731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp108729_
                                                      _L108708_
                                                      _L108707_)))
                                                  (_refs108733_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals108727_
                                                      _L108708_)))
                                                  (_expr108735_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108382_
                                                      _L108707_))))
                                             (let ((__tmp114606
                                                    (let ((__tmp114607
                                                           (let ((__tmp114608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114609
                                 (let ((__tmp114610
                                        (let ((__tmp114611
                                               (let ((__tmp114614
                                                      (let ((__tmp114615
                                                             (let ((__tmp114616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr108735_ '()))))
                       (declare (not safe))
                       (cons _tmp108729_ __tmp114616))))
                (declare (not safe))
                (cons __tmp114615 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114612
                                                      (let ((__tmp114613
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp108729_ '()))))
                (declare (not safe))
                (cons _check-values108731_ __tmp114613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114614
                                                       __tmp114612))))
                                          (declare (not safe))
                                          (cons 'let __tmp114611))))
                                   (declare (not safe))
                                   (cons __tmp114610 '()))))
                            (declare (not safe))
                            (cons _vals108727_ __tmp114609))))
                     (declare (not safe))
                     (cons __tmp114608 _bind108634_))))
              (declare (not safe))
              (foldl1 cons __tmp114607 _refs108733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108631_
                                                _rest108657_
                                                __tmp114606))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113585113586_))
                                        (let ((_e108667108743_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113585113586_))))
                                          (let ((_tl108665108748_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108667108743_)))
                                                (_hd108666108746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108667108743_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108666108746_))
                                                (let ((_e108670108751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108666108746_))))
                                                  (let ((_tl108668108756_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108670108751_)))
                                                        (_hd108669108754_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108670108751_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl108668108756_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108665108748_))
                                                            (let ((_e108673108759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108665108748_))))
                      (let ((_tl108671108764_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108673108759_)))
                            (_hd108672108762_
                             (let ()
                               (declare (not safe))
                               (##car _e108673108759_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108671108764_))
                            (___kont113587113588_
                             _hd108672108762_
                             _hd108669108754_)
                            (let () (declare (not safe)) (_g108661108686_)))))
                    (let () (declare (not safe)) (_g108661108686_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl108665108748_))
                    (let ((_e108681108699_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108665108748_))))
                      (let ((_tl108679108704_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108681108699_)))
                            (_hd108680108702_
                             (let ()
                               (declare (not safe))
                               (##car _e108681108699_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108679108704_))
                            (___kont113589113590_
                             _hd108680108702_
                             _hd108666108746_)
                            (let () (declare (not safe)) (_g108661108686_)))))
                    (let () (declare (not safe)) (_g108661108686_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl108665108748_))
                                                    (let ((_e108681108699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl108665108748_))))
                                                      (let ((_tl108679108704_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108681108699_)))
                    (_hd108680108702_
                     (let () (declare (not safe)) (##car _e108681108699_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl108679108704_))
                    (___kont113589113590_ _hd108680108702_ _hd108666108746_)
                    (let () (declare (not safe)) (_g108661108686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108661108686_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108661108686_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108635108643_))
                            (let ((_hd108640108791_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108635108643_)))
                                  (_tl108641108793_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108635108643_))))
                              (let* ((_hd-bind108796_ _hd108640108791_)
                                     (_rest108798_ _tl108641108793_))
                                (declare (not safe))
                                (_K108639108788_
                                 _rest108798_
                                 _hd-bind108796_)))
                            (let ()
                              (declare (not safe))
                              (_else108637108654_)))))))
                 (_generate-letrec?108386_
                  (lambda (_hd108518_)
                    (let _lp108520_ ((_rest108522_ _hd108518_))
                      (let* ((_rest108523108531_ _rest108522_)
                             (_else108525108539_ (lambda () '#t))
                             (_K108527108616_
                              (lambda (_rest108542_ _hd-bind108543_)
                                (let* ((_g108545108562_
                                        (lambda (_g108546108559_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g108546108559_))))
                                       (_g108544108613_
                                        (lambda (_g108546108565_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g108546108565_))
                                              (let ((_e108551108567_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g108546108565_))))
                                                (let ((_hd108550108570_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108551108567_)))
                                                      (_tl108549108572_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108551108567_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd108550108570_))
                                                      (let ((_e108554108575_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd108550108570_))))
                (let ((_hd108553108578_
                       (let () (declare (not safe)) (##car _e108554108575_)))
                      (_tl108552108580_
                       (let () (declare (not safe)) (##cdr _e108554108575_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108552108580_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108549108572_))
                          (let ((_e108557108583_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108549108572_))))
                            (let ((_hd108556108586_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108557108583_)))
                                  (_tl108555108588_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108557108583_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl108555108588_))
                                  ((lambda (_L108591_ _L108592_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?108387_ _L108591_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp108520_ _rest108542_))
                                         '#f))
                                   _hd108556108586_
                                   _hd108553108578_)
                                  (let ()
                                    (declare (not safe))
                                    (_g108545108562_ _g108546108565_)))))
                          (let ()
                            (declare (not safe))
                            (_g108545108562_ _g108546108565_)))
                      (let ()
                        (declare (not safe))
                        (_g108545108562_ _g108546108565_)))))
              (let ()
                (declare (not safe))
                (_g108545108562_ _g108546108565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108545108562_
                                                 _g108546108565_))))))
                                  (declare (not safe))
                                  (_g108544108613_ _hd-bind108543_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108523108531_))
                            (let ((_hd108528108619_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108523108531_)))
                                  (_tl108529108621_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108523108531_))))
                              (let* ((_hd-bind108624_ _hd108528108619_)
                                     (_rest108626_ _tl108529108621_))
                                (declare (not safe))
                                (_K108527108616_
                                 _rest108626_
                                 _hd-bind108624_)))
                            (let ()
                              (declare (not safe))
                              (_else108525108539_)))))))
                 (_is-lambda-expr?108387_
                  (lambda (_expr108455_)
                    (let* ((___stx113629113630_ _expr108455_)
                           (_g108458108472_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113629113630_)))))
                      (let ((___kont113631113632_
                             (lambda (_L108500_ _L108501_) '#t))
                            (___kont113633113634_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx113629113630_))
                            (let ((_e108464108484_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx113629113630_))))
                              (let ((_tl108462108489_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108464108484_)))
                                    (_hd108463108487_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108464108484_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108463108487_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd108463108487_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108462108489_))
                                            (let ((_e108467108492_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108462108489_))))
                                              (let ((_tl108465108497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108467108492_)))
                                                    (_hd108466108495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108467108492_))))
                                                (___kont113631113632_
                                                 _tl108465108497_
                                                 _hd108466108495_)))
                                            (___kont113633113634_))
                                        (___kont113633113634_))
                                    (___kont113633113634_))))
                            (___kont113633113634_)))))))
          (let* ((_g108389108406_
                  (lambda (_g108390108403_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108390108403_))))
                 (_g108388108452_
                  (lambda (_g108390108409_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108390108409_))
                        (let ((_e108395108411_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108390108409_))))
                          (let ((_hd108394108414_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108395108411_)))
                                (_tl108393108416_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108395108411_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108393108416_))
                                (let ((_e108398108419_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108393108416_))))
                                  (let ((_hd108397108422_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108398108419_)))
                                        (_tl108396108424_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108398108419_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108396108424_))
                                        (let ((_e108401108427_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108396108424_))))
                                          (let ((_hd108400108430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108401108427_)))
                                                (_tl108399108432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108401108427_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108399108432_))
                                                ((lambda (_L108435_ _L108436_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108436_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?108386_
                                                              _L108436_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108382_
                                                              'letrec
                                                              _L108436_
                                                              _L108435_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108382_
                                                              'letrec*
                                                              _L108436_
                                                              _L108435_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108385_
                                                          _L108436_
                                                          _L108435_))))
                                                 _hd108400108430_
                                                 _hd108397108422_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108389108406_
                                                   _g108390108409_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108389108406_ _g108390108409_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108389108406_ _g108390108409_)))))
                        (let ()
                          (declare (not safe))
                          (_g108389108406_ _g108390108409_))))))
            (declare (not safe))
            (_g108388108452_ _stx108383_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd108319_)
        (let _lp108321_ ((_rest108323_ _hd108319_))
          (let* ((_rest108324108340_ _rest108323_)
                 (_else108327108348_ (lambda () '#f)))
            (let ((_K108330108361_
                   (lambda (_rest108359_)
                     (let () (declare (not safe)) (_lp108321_ _rest108359_))))
                  (_K108329108353_ (lambda () '#t)))
              (let ((_try-match108326108356_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest108324108340_))
                           (let () (declare (not safe)) (_K108329108353_))
                           (let ()
                             (declare (not safe))
                             (_else108327108348_))))))
                (if (let () (declare (not safe)) (##pair? _rest108324108340_))
                    (let ((_tl108332108366_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest108324108340_)))
                          (_hd108331108364_
                           (let ()
                             (declare (not safe))
                             (##car _rest108324108340_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd108331108364_))
                          (let ((_tl108334108371_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd108331108364_)))
                                (_hd108333108369_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd108331108364_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108333108369_))
                                (let ((_tl108338108374_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108333108369_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl108338108374_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108334108371_))
                                          (let ((_tl108336108377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108334108371_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl108336108377_))
                                                (let ((_rest108380_
                                                       _tl108332108366_))
                                                  (declare (not safe))
                                                  (_lp108321_ _rest108380_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108327108348_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108327108348_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else108327108348_))))
                                (let ()
                                  (declare (not safe))
                                  (_else108327108348_))))
                          (let () (declare (not safe)) (_else108327108348_))))
                    (let ()
                      (declare (not safe))
                      (_try-match108326108356_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self108230_
               _form108231_
               _hd108232_
               _body108233_
               _compiled-body?108234_)
        (letrec ((_generate1108236_
                  (lambda (_bind108275_)
                    (let* ((_bind108276108287_ _bind108275_)
                           (_E108278108291_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind108276108287_))))
                           (_K108279108297_
                            (lambda (_expr108294_ _id108295_)
                              (let ((__tmp114619
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id108295_)))
                                    (__tmp114617
                                     (let ((__tmp114618
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self108230_
                                               _expr108294_))))
                                       (declare (not safe))
                                       (cons __tmp114618 '()))))
                                (declare (not safe))
                                (cons __tmp114619 __tmp114617)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind108276108287_))
                          (let ((_hd108280108300_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind108276108287_)))
                                (_tl108281108302_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind108276108287_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108280108300_))
                                (let ((_hd108284108305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd108280108300_)))
                                      (_tl108285108307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108280108300_))))
                                  (let ((_id108310_ _hd108284108305_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl108285108307_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl108281108302_))
                                            (let ((_hd108282108312_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl108281108302_)))
                                                  (_tl108283108314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl108281108302_))))
                                              (let ((_expr108317_
                                                     _hd108282108312_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl108283108314_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K108279108297_
                                                       _expr108317_
                                                       _id108310_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E108278108291_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E108278108291_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E108278108291_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E108278108291_))))
                          (let () (declare (not safe)) (_E108278108291_)))))))
          (let* ((_bind108238_ (map _generate1108236_ _hd108232_))
                 (_body108240_
                  (if _compiled-body?108234_
                      _body108233_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self108230_ _body108233_))))
                 (_body108272_
                  (let* ((_body108241108249_ _body108240_)
                         (_else108243108257_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body108240_ '()))))
                         (_K108245108262_
                          (lambda (_exprs108260_) _exprs108260_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body108241108249_))
                        (let ((_hd108246108265_
                               (let ()
                                 (declare (not safe))
                                 (##car _body108241108249_)))
                              (_tl108247108267_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body108241108249_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd108246108265_ 'begin))
                              (let ((_exprs108270_ _tl108247108267_))
                                (declare (not safe))
                                (_K108245108262_ _exprs108270_))
                              (let ()
                                (declare (not safe))
                                (_else108243108257_))))
                        (let () (declare (not safe)) (_else108243108257_))))))
            (let ((__tmp114620
                   (let ()
                     (declare (not safe))
                     (cons _bind108238_ _body108272_))))
              (declare (not safe))
              (cons _form108231_ __tmp114620))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self108137_ _stx108138_)
        (letrec ((_generate1108140_
                  (lambda (_datum108192_)
                    (if (or (let () (declare (not safe)) (null? _datum108192_))
                            (interned-symbol? _datum108192_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum108192_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum108192_)))
                        _datum108192_
                        (if (uninterned-symbol? _datum108192_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum108192_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum108192_))
                                (let ((__tmp114625
                                       (let ((__tmp114626 (car _datum108192_)))
                                         (declare (not safe))
                                         (_generate1108140_ __tmp114626)))
                                      (__tmp114623
                                       (let ((__tmp114624 (cdr _datum108192_)))
                                         (declare (not safe))
                                         (_generate1108140_ __tmp114624))))
                                  (declare (not safe))
                                  (cons __tmp114625 __tmp114623))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum108192_))
                                    (let ((__tmp114621
                                           (let ((__tmp114622
                                                  (unbox _datum108192_)))
                                             (declare (not safe))
                                             (_generate1108140_ __tmp114622))))
                                      (declare (not safe))
                                      (box __tmp114621))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum108192_))
                                        (vector-map
                                         _generate1108140_
                                         _datum108192_)
                                        (if (or (s8vector? _datum108192_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum108192_))
                                                (s16vector? _datum108192_)
                                                (u16vector? _datum108192_)
                                                (s32vector? _datum108192_)
                                                (u32vector? _datum108192_)
                                                (s64vector? _datum108192_)
                                                (u64vector? _datum108192_)
                                                (f32vector? _datum108192_)
                                                (f64vector? _datum108192_))
                                            _datum108192_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx108138_)))))))))))
          (let* ((_g108142108155_
                  (lambda (_g108143108152_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108143108152_))))
                 (_g108141108189_
                  (lambda (_g108143108158_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108143108158_))
                        (let ((_e108147108160_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108143108158_))))
                          (let ((_hd108146108163_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108147108160_)))
                                (_tl108145108165_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108147108160_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108145108165_))
                                (let ((_e108150108168_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108145108165_))))
                                  (let ((_hd108149108171_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108150108168_)))
                                        (_tl108148108173_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108150108168_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl108148108173_))
                                        ((lambda (_L108176_)
                                           (let ((__tmp114627
                                                  (let ((__tmp114628
                                                         (let ((__tmp114629
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L108176_))))
                   (declare (not safe))
                   (_generate1108140_ __tmp114629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114628 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp114627)))
                                         _hd108149108171_)
                                        (let ()
                                          (declare (not safe))
                                          (_g108142108155_ _g108143108158_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108142108155_ _g108143108158_)))))
                        (let ()
                          (declare (not safe))
                          (_g108142108155_ _g108143108158_))))))
            (declare (not safe))
            (_g108141108189_ _stx108138_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self107650_ _stx107651_)
        (letrec ((_compile-call107653_
                  (lambda (_rator107877_ _rands107878_)
                    (let ((_rator107884_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self107650_ _rator107877_)))
                          (_rands107885_
                           (map (lambda (_g107879107881_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self107650_
                                     _g107879107881_)))
                                _rands107878_)))
                      (let* ((___stx113676113677_ _rator107884_)
                             (_g107888107940_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113676113677_)))))
                        (let ((___kont113678113679_
                               (lambda (_L108064_
                                        _L108065_
                                        _L108066_
                                        _L108067_)
                                 (if (fx= (length _rands107885_)
                                          (length (let ((__tmp114634
                                                         (lambda (_g108103108106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108104108108_)
                   (let ()
                     (declare (not safe))
                     (cons _g108103108106_ _g108104108108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114634
                                                            '()
                                                            _L108066_))))
                                     (let* ((_id108111_ _L108067_)
                                            (_args108120_
                                             (let ((__tmp114630
                                                    (lambda (_g108112108115_
                                                             _g108113108117_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108112108115_
                                                              _g108113108117_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114630
                                                       '()
                                                       _L108066_)))
                                            (_body108129_
                                             (let ((__tmp114631
                                                    (lambda (_g108121108124_
                                                             _g108122108126_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108121108124_
                                                              _g108122108126_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114631
                                                       '()
                                                       _L108065_)))
                                            (_init108131_
                                             (map list
                                                  _args108120_
                                                  _rands107885_)))
                                       (let ((__tmp114632
                                              (let ((__tmp114633
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init108131_
                                                             _body108129_))))
                                                (declare (not safe))
                                                (cons _id108111_
                                                      __tmp114633))))
                                         (declare (not safe))
                                         (cons 'let __tmp114632)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx107651_)))))
                              (___kont113684113685_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator107884_ _rands107885_)))))
                          (let ((___match113743113744_
                                 (lambda (_e107896107952_
                                          _hd107895107955_
                                          _tl107894107957_
                                          _e107899107960_
                                          _hd107898107963_
                                          _tl107897107965_
                                          _e107902107968_
                                          _hd107901107971_
                                          _tl107900107973_
                                          _e107905107976_
                                          _hd107904107979_
                                          _tl107903107981_
                                          _e107908107984_
                                          _hd107907107987_
                                          _tl107906107989_
                                          _e107911107992_
                                          _hd107910107995_
                                          _tl107909107997_
                                          _e107914108000_
                                          _hd107913108003_
                                          _tl107912108005_
                                          ___splice113680113681_
                                          _target107915108008_
                                          _tl107917108010_)
                                   (letrec ((_loop107918108013_
                                             (lambda (_hd107916108016_
                                                      _arg107922108018_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd107916108016_))
                                                   (let ((_e107919108021_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd107916108016_))))
                                                     (let ((_lp-tl107921108026_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107919108021_)))
                                                           (_lp-hd107920108024_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107919108021_))))
                                                       (let ((__tmp114636
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd107920108024_ _arg107922108018_))))
                 (declare (not safe))
                 (_loop107918108013_ _lp-tl107921108026_ __tmp114636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg107923108029_
                                                          (reverse _arg107922108018_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl107912108005_))
                                                         (let ((___splice113682113683_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl107912108005_ '0))))
                   (let ((_tl107926108034_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113682113683_ '1)))
                         (_target107924108032_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113682113683_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl107926108034_))
                         (letrec ((_loop107927108037_
                                   (lambda (_hd107925108040_
                                            _body107931108042_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd107925108040_))
                                         (let ((_e107928108045_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd107925108040_))))
                                           (let ((_lp-tl107930108050_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107928108045_)))
                                                 (_lp-hd107929108048_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107928108045_))))
                                             (let ((__tmp114635
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd107929108048_
                                                            _body107931108042_))))
                                               (declare (not safe))
                                               (_loop107927108037_
                                                _lp-tl107930108050_
                                                __tmp114635))))
                                         (let ((_body107932108053_
                                                (reverse _body107931108042_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl107906107989_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl107900107973_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl107897107965_))
                                                       (let ((_e107935108056_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl107897107965_))))
                 (let ((_tl107933108061_
                        (let () (declare (not safe)) (##cdr _e107935108056_)))
                       (_hd107934108059_
                        (let () (declare (not safe)) (##car _e107935108056_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl107933108061_))
                       (let ((_L108064_ _hd107934108059_)
                             (_L108065_ _body107932108053_)
                             (_L108066_ _arg107923108029_)
                             (_L108067_ _hd107904107979_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L108067_ _L108064_))
                             (___kont113678113679_
                              _L108064_
                              _L108065_
                              _L108066_
                              _L108067_)
                             (___kont113684113685_)))
                       (___kont113684113685_))))
               (___kont113684113685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113684113685_))
                                               (___kont113684113685_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop107927108037_ _target107924108032_ '())))
                         (___kont113684113685_))))
                 (___kont113684113685_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop107918108013_
                                        _target107915108008_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx113676113677_))
                                (let ((_e107896107952_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx113676113677_))))
                                  (let ((_tl107894107957_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107896107952_)))
                                        (_hd107895107955_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107896107952_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107895107955_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd107895107955_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107894107957_))
                                                (let ((_e107899107960_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107894107957_))))
                                                  (let ((_tl107897107965_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107899107960_)))
                                                        (_hd107898107963_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107899107960_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107898107963_))
                                                        (let ((_e107902107968_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107898107963_))))
                  (let ((_tl107900107973_
                         (let () (declare (not safe)) (##cdr _e107902107968_)))
                        (_hd107901107971_
                         (let ()
                           (declare (not safe))
                           (##car _e107902107968_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107901107971_))
                        (let ((_e107905107976_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107901107971_))))
                          (let ((_tl107903107981_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107905107976_)))
                                (_hd107904107979_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107905107976_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107903107981_))
                                (let ((_e107908107984_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107903107981_))))
                                  (let ((_tl107906107989_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107908107984_)))
                                        (_hd107907107987_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107908107984_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd107907107987_))
                                        (let ((_e107911107992_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd107907107987_))))
                                          (let ((_tl107909107997_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107911107992_)))
                                                (_hd107910107995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107911107992_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107910107995_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd107910107995_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107909107997_))
                                                        (let ((_e107914108000_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107909107997_))))
                  (let ((_tl107912108005_
                         (let () (declare (not safe)) (##cdr _e107914108000_)))
                        (_hd107913108003_
                         (let ()
                           (declare (not safe))
                           (##car _e107914108000_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd107913108003_))
                        (let ((___splice113680113681_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd107913108003_
                                  '0))))
                          (let ((_tl107917108010_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113680113681_ '1)))
                                (_target107915108008_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113680113681_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107917108010_))
                                (___match113743113744_
                                 _e107896107952_
                                 _hd107895107955_
                                 _tl107894107957_
                                 _e107899107960_
                                 _hd107898107963_
                                 _tl107897107965_
                                 _e107902107968_
                                 _hd107901107971_
                                 _tl107900107973_
                                 _e107905107976_
                                 _hd107904107979_
                                 _tl107903107981_
                                 _e107908107984_
                                 _hd107907107987_
                                 _tl107906107989_
                                 _e107911107992_
                                 _hd107910107995_
                                 _tl107909107997_
                                 _e107914108000_
                                 _hd107913108003_
                                 _tl107912108005_
                                 ___splice113680113681_
                                 _target107915108008_
                                 _tl107917108010_)
                                (___kont113684113685_))))
                        (___kont113684113685_))))
                (___kont113684113685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113684113685_))
                                                (___kont113684113685_))))
                                        (___kont113684113685_))))
                                (___kont113684113685_))))
                        (___kont113684113685_))))
                (___kont113684113685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113684113685_))
                                            (___kont113684113685_))
                                        (___kont113684113685_))))
                                (___kont113684113685_)))))))))
          (let* ((_g107655107669_
                  (lambda (_g107656107666_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107656107666_))))
                 (_g107654107874_
                  (lambda (_g107656107672_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107656107672_))
                        (let ((_e107661107674_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107656107672_))))
                          (let ((_hd107660107677_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107661107674_)))
                                (_tl107659107679_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107661107674_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107659107679_))
                                (let ((_e107664107682_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107659107679_))))
                                  (let ((_hd107663107685_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107664107682_)))
                                        (_tl107662107687_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107664107682_))))
                                    ((lambda (_L107690_ _L107691_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call107653_
                                              _L107691_
                                              _L107690_))
                                           (let* ((___stx113792113793_
                                                   _L107691_)
                                                  (_g107706107718_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx113792113793_)))))
                                             (let ((___kont113794113795_
                                                    (lambda ()
                                                      (let ((_f107748_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self107650_ _L107691_))))
                (if (let ((__tmp114651 (symbol->string _f107748_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp114651))
                    (let _lp107750_ ((_rest107753_ (reverse _L107690_))
                                     (_bind107755_ '())
                                     (_args107756_ '()))
                      (let* ((_rest107757107765_ _rest107753_)
                             (_else107759107773_
                              (lambda ()
                                (let ((__tmp114637
                                       (let ((__tmp114638
                                              (let ((__tmp114639
                                                     (let ((__tmp114640
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f107748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args107756_))))
               (declare (not safe))
               (cons __tmp114640 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp114639))))
                                         (declare (not safe))
                                         (cons _bind107755_ __tmp114638))))
                                  (declare (not safe))
                                  (cons 'let __tmp114637))))
                             (_K107761107859_
                              (lambda (_rest107776_ _e107777_)
                                (let* ((___stx113746113747_ _e107777_)
                                       (_g107782107800_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113746113747_)))))
                                  (let ((___kont113748113749_
                                         (lambda ()
                                           (let ((__tmp114641
                                                  (let ((__tmp114642
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107777_))))
                                                    (declare (not safe))
                                                    (cons __tmp114642
                                                          _args107756_))))
                                             (declare (not safe))
                                             (_lp107750_
                                              _rest107776_
                                              _bind107755_
                                              __tmp114641))))
                                        (___kont113750113751_
                                         (lambda ()
                                           (let ((__tmp114643
                                                  (let ((__tmp114644
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107777_))))
                                                    (declare (not safe))
                                                    (cons __tmp114644
                                                          _args107756_))))
                                             (declare (not safe))
                                             (_lp107750_
                                              _rest107776_
                                              _bind107755_
                                              __tmp114643))))
                                        (___kont113752113753_
                                         (lambda ()
                                           (let ((_tmp107807_
                                                  (let ((__tmp114645
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp114645))))
                                             (let ((__tmp114647
                                                    (let ((__tmp114648
                                                           (let ((__tmp114649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114650
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e107777_))))
                            (declare (not safe))
                            (cons __tmp114650 '()))))
                     (declare (not safe))
                     (cons _tmp107807_ __tmp114649))))
              (declare (not safe))
              (cons __tmp114648 _bind107755_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114646
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp107807_
                                                            _args107756_))))
                                               (declare (not safe))
                                               (_lp107750_
                                                _rest107776_
                                                __tmp114647
                                                __tmp114646))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113746113747_))
                                        (let ((_e107786107838_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113746113747_))))
                                          (let ((_tl107784107843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107786107838_)))
                                                (_hd107785107841_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107786107838_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107785107841_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd107785107841_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107784107843_))
                                                        (let ((_e107789107846_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107784107843_))))
                  (let ((_tl107787107851_
                         (let () (declare (not safe)) (##cdr _e107789107846_)))
                        (_hd107788107849_
                         (let ()
                           (declare (not safe))
                           (##car _e107789107846_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl107787107851_))
                        (___kont113748113749_)
                        (___kont113752113753_))))
                (___kont113752113753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd107785107841_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107784107843_))
                                                            (let ((_e107795107823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107784107843_))))
                      (let ((_tl107793107828_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107795107823_)))
                            (_hd107794107826_
                             (let ()
                               (declare (not safe))
                               (##car _e107795107823_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107793107828_))
                            (___kont113750113751_)
                            (___kont113752113753_))))
                    (___kont113752113753_))
                (___kont113752113753_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113752113753_))))
                                        (___kont113752113753_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107757107765_))
                            (let ((_hd107762107862_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107757107765_)))
                                  (_tl107763107864_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107757107765_))))
                              (let* ((_e107867_ _hd107762107862_)
                                     (_rest107869_ _tl107763107864_))
                                (declare (not safe))
                                (_K107761107859_ _rest107869_ _e107867_)))
                            (let ()
                              (declare (not safe))
                              (_else107759107773_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call107653_ _L107691_ _L107690_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113796113797_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call107653_
                                                         _L107691_
                                                         _L107690_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx113792113793_))
                                                   (let ((_e107710107730_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx113792113793_))))
                                                     (let ((_tl107708107735_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107710107730_)))
                                                           (_hd107709107733_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107710107730_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd107709107733_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd107709107733_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl107708107735_))
                           (let ((_e107713107738_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl107708107735_))))
                             (let ((_tl107711107743_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e107713107738_)))
                                   (_hd107712107741_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e107713107738_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl107711107743_))
                                   (___kont113794113795_)
                                   (___kont113796113797_))))
                           (___kont113796113797_))
                       (___kont113796113797_))
                   (___kont113796113797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113796113797_))))))
                                     _tl107662107687_
                                     _hd107663107685_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107655107669_ _g107656107672_)))))
                        (let ()
                          (declare (not safe))
                          (_g107655107669_ _g107656107672_))))))
            (declare (not safe))
            (_g107654107874_ _stx107651_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self107437_ _stx107438_)
        (let* ((___stx113864113865_ _stx107438_)
               (_g107441107461_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113864113865_)))))
          (let ((___kont113866113867_
                 (lambda (_L107505_ _L107506_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self107437_ _stx107438_))
                       (let ((_f107524_
                              (let ((__tmp114652
                                     (let ((__tmp114654
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp114653
                                            (let ()
                                              (declare (not safe))
                                              (cons _L107506_ '()))))
                                       (declare (not safe))
                                       (cons __tmp114654 __tmp114653))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self107437_ __tmp114652))))
                         (let _lp107526_ ((_rest107529_ (reverse _L107505_))
                                          (_bind107531_ '())
                                          (_args107532_ '()))
                           (let* ((_rest107533107541_ _rest107529_)
                                  (_else107535107549_
                                   (lambda ()
                                     (let ((__tmp114655
                                            (let ((__tmp114656
                                                   (let ((__tmp114657
                                                          (let ((__tmp114658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f107524_ _args107532_))))
                    (declare (not safe))
                    (cons __tmp114658 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp114657))))
                                              (declare (not safe))
                                              (cons _bind107531_
                                                    __tmp114656))))
                                       (declare (not safe))
                                       (cons 'let __tmp114655))))
                                  (_K107537107635_
                                   (lambda (_rest107552_ _e107553_)
                                     (let* ((___stx113818113819_ _e107553_)
                                            (_g107558107576_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx113818113819_)))))
                                       (let ((___kont113820113821_
                                              (lambda ()
                                                (let ((__tmp114659
                                                       (let ((__tmp114660
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107553_))))
                 (declare (not safe))
                 (cons __tmp114660 _args107532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107526_
                                                   _rest107552_
                                                   _bind107531_
                                                   __tmp114659))))
                                             (___kont113822113823_
                                              (lambda ()
                                                (let ((__tmp114661
                                                       (let ((__tmp114662
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107553_))))
                 (declare (not safe))
                 (cons __tmp114662 _args107532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107526_
                                                   _rest107552_
                                                   _bind107531_
                                                   __tmp114661))))
                                             (___kont113824113825_
                                              (lambda ()
                                                (let ((_tmp107583_
                                                       (let ((__tmp114663
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp114663))))
                                                  (let ((__tmp114665
                                                         (let ((__tmp114666
                                                                (let ((__tmp114667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114668
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e107553_))))
                                 (declare (not safe))
                                 (cons __tmp114668 '()))))
                          (declare (not safe))
                          (cons _tmp107583_ __tmp114667))))
                   (declare (not safe))
                   (cons __tmp114666 _bind107531_)))
                (__tmp114664
                 (let ()
                   (declare (not safe))
                   (cons _tmp107583_ _args107532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp107526_
                                                     _rest107552_
                                                     __tmp114665
                                                     __tmp114664))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx113818113819_))
                                             (let ((_e107562107614_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx113818113819_))))
                                               (let ((_tl107560107619_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e107562107614_)))
                                                     (_hd107561107617_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e107562107614_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd107561107617_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd107561107617_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107560107619_))
                     (let ((_e107565107622_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107560107619_))))
                       (let ((_tl107563107627_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107565107622_)))
                             (_hd107564107625_
                              (let ()
                                (declare (not safe))
                                (##car _e107565107622_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107563107627_))
                             (___kont113820113821_)
                             (___kont113824113825_))))
                     (___kont113824113825_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd107561107617_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl107560107619_))
                         (let ((_e107571107599_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl107560107619_))))
                           (let ((_tl107569107604_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e107571107599_)))
                                 (_hd107570107602_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e107571107599_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl107569107604_))
                                 (___kont113822113823_)
                                 (___kont113824113825_))))
                         (___kont113824113825_))
                     (___kont113824113825_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113824113825_))))
                                             (___kont113824113825_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest107533107541_))
                                 (let ((_hd107538107638_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest107533107541_)))
                                       (_tl107539107640_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest107533107541_))))
                                   (let* ((_e107643_ _hd107538107638_)
                                          (_rest107645_ _tl107539107640_))
                                     (declare (not safe))
                                     (_K107537107635_ _rest107645_ _e107643_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else107535107549_)))))))))
                (___kont113868113869_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self107437_ _stx107438_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx113864113865_))
                (let ((_e107447107473_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx113864113865_))))
                  (let ((_tl107445107478_
                         (let () (declare (not safe)) (##cdr _e107447107473_)))
                        (_hd107446107476_
                         (let ()
                           (declare (not safe))
                           (##car _e107447107473_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl107445107478_))
                        (let ((_e107450107481_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107445107478_))))
                          (let ((_tl107448107486_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107450107481_)))
                                (_hd107449107484_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107450107481_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd107449107484_))
                                (let ((_e107453107489_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd107449107484_))))
                                  (let ((_tl107451107494_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107453107489_)))
                                        (_hd107452107492_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107453107489_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107452107492_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd107452107492_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107451107494_))
                                                (let ((_e107456107497_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107451107494_))))
                                                  (let ((_tl107454107502_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107456107497_)))
                                                        (_hd107455107500_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107456107497_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107454107502_))
                                                        (___kont113866113867_
                                                         _tl107448107486_
                                                         _hd107455107500_)
                                                        (___kont113868113869_))))
                                                (___kont113868113869_))
                                            (___kont113868113869_))
                                        (___kont113868113869_))))
                                (___kont113868113869_))))
                        (___kont113868113869_))))
                (___kont113868113869_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self107249_ _stx107250_)
        (letrec ((_simplify107252_
                  (lambda (_code107337_)
                    (let* ((_code107338107356_ _code107337_)
                           (_else107340107364_ (lambda () _code107337_))
                           (_K107342107400_
                            (lambda (_expr107367_ _test107368_)
                              (let* ((_expr107369107377_ _expr107367_)
                                     (_else107371107385_
                                      (lambda ()
                                        (let ((__tmp114669
                                               (let ((__tmp114670
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr107367_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test107368_
                                                       __tmp114670))))
                                          (declare (not safe))
                                          (cons 'and __tmp114669))))
                                     (_K107373107390_
                                      (lambda (_exprs107388_)
                                        (let ((__tmp114671
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test107368_
                                                       _exprs107388_))))
                                          (declare (not safe))
                                          (cons 'and __tmp114671)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr107369107377_))
                                    (let ((_hd107374107393_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr107369107377_)))
                                          (_tl107375107395_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr107369107377_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107374107393_ 'and))
                                          (let ((_exprs107398_
                                                 _tl107375107395_))
                                            (declare (not safe))
                                            (_K107373107390_ _exprs107398_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107371107385_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107371107385_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code107338107356_))
                          (let ((_hd107343107403_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code107338107356_)))
                                (_tl107344107405_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code107338107356_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd107343107403_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl107344107405_))
                                    (let ((_hd107345107408_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl107344107405_)))
                                          (_tl107346107410_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl107344107405_))))
                                      (let ((_test107413_ _hd107345107408_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107346107410_))
                                            (let ((_hd107347107415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107346107410_)))
                                                  (_tl107348107417_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107346107410_))))
                                              (let ((_expr107420_
                                                     _hd107347107415_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl107348107417_))
                                                    (let ((_hd107349107422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl107348107417_)))
                                                          (_tl107350107424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl107348107417_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd107349107422_))
                                                          (let ((_hd107351107427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd107349107422_)))
                        (_tl107352107429_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107349107422_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107351107427_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107352107429_))
                            (let ((_hd107353107432_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107352107429_)))
                                  (_tl107354107434_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107352107429_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107353107432_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107354107434_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107350107424_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107342107400_
                                             _expr107420_
                                             _test107413_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107340107364_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107340107364_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107340107364_))))
                            (let () (declare (not safe)) (_else107340107364_)))
                        (let () (declare (not safe)) (_else107340107364_))))
                  (let () (declare (not safe)) (_else107340107364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else107340107364_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107340107364_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107340107364_)))
                                (let ()
                                  (declare (not safe))
                                  (_else107340107364_))))
                          (let ()
                            (declare (not safe))
                            (_else107340107364_)))))))
          (let* ((_g107254107275_
                  (lambda (_g107255107272_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107255107272_))))
                 (_g107253107334_
                  (lambda (_g107255107278_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107255107278_))
                        (let ((_e107261107280_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107255107278_))))
                          (let ((_hd107260107283_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107261107280_)))
                                (_tl107259107285_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107261107280_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107259107285_))
                                (let ((_e107264107288_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107259107285_))))
                                  (let ((_hd107263107291_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107264107288_)))
                                        (_tl107262107293_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107264107288_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107262107293_))
                                        (let ((_e107267107296_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107262107293_))))
                                          (let ((_hd107266107299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107267107296_)))
                                                (_tl107265107301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107267107296_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107265107301_))
                                                (let ((_e107270107304_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107265107301_))))
                                                  (let ((_hd107269107307_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107270107304_)))
                                                        (_tl107268107309_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107270107304_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107268107309_))
                                                        ((lambda (_L107312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L107313_
                          _L107314_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp114679
                              (let ((__tmp114680
                                     (let ((__tmp114685
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107249_
                                               _L107314_)))
                                           (__tmp114681
                                            (let ((__tmp114684
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107249_
                                                      _L107313_)))
                                                  (__tmp114682
                                                   (let ((__tmp114683
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self107249_
                                                             _L107312_))))
                                                     (declare (not safe))
                                                     (cons __tmp114683 '()))))
                                              (declare (not safe))
                                              (cons __tmp114684 __tmp114682))))
                                       (declare (not safe))
                                       (cons __tmp114685 __tmp114681))))
                                (declare (not safe))
                                (cons 'if __tmp114680))))
                         (declare (not safe))
                         (_simplify107252_ __tmp114679))
                       (let ((__tmp114672
                              (let ((__tmp114677
                                     (let ((__tmp114678
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self107249_
                                                 _L107314_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114678
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp114673
                                     (let ((__tmp114676
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107249_
                                               _L107313_)))
                                           (__tmp114674
                                            (let ((__tmp114675
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107249_
                                                      _L107312_))))
                                              (declare (not safe))
                                              (cons __tmp114675 '()))))
                                       (declare (not safe))
                                       (cons __tmp114676 __tmp114674))))
                                (declare (not safe))
                                (cons __tmp114677 __tmp114673))))
                         (declare (not safe))
                         (cons 'if __tmp114672))))
                 _hd107269107307_
                 _hd107266107299_
                 _hd107263107291_)
                (let ()
                  (declare (not safe))
                  (_g107254107275_ _g107255107278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107254107275_
                                                   _g107255107278_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107254107275_ _g107255107278_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107254107275_ _g107255107278_)))))
                        (let ()
                          (declare (not safe))
                          (_g107254107275_ _g107255107278_))))))
            (declare (not safe))
            (_g107253107334_ _stx107250_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self107197_ _stx107198_)
        (let* ((_g107200107213_
                (lambda (_g107201107210_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107201107210_))))
               (_g107199107246_
                (lambda (_g107201107216_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107201107216_))
                      (let ((_e107205107218_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107201107216_))))
                        (let ((_hd107204107221_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107205107218_)))
                              (_tl107203107223_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107205107218_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107203107223_))
                              (let ((_e107208107226_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107203107223_))))
                                (let ((_hd107207107229_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107208107226_)))
                                      (_tl107206107231_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107208107226_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl107206107231_))
                                      ((lambda (_L107234_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L107234_)))
                                       _hd107207107229_)
                                      (let ()
                                        (declare (not safe))
                                        (_g107200107213_ _g107201107216_)))))
                              (let ()
                                (declare (not safe))
                                (_g107200107213_ _g107201107216_)))))
                      (let ()
                        (declare (not safe))
                        (_g107200107213_ _g107201107216_))))))
          (declare (not safe))
          (_g107199107246_ _stx107198_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self107129_ _stx107130_)
        (let* ((_g107132107149_
                (lambda (_g107133107146_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107133107146_))))
               (_g107131107194_
                (lambda (_g107133107152_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107133107152_))
                      (let ((_e107138107154_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107133107152_))))
                        (let ((_hd107137107157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107138107154_)))
                              (_tl107136107159_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107138107154_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107136107159_))
                              (let ((_e107141107162_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107136107159_))))
                                (let ((_hd107140107165_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107141107162_)))
                                      (_tl107139107167_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107141107162_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107139107167_))
                                      (let ((_e107144107170_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107139107167_))))
                                        (let ((_hd107143107173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107144107170_)))
                                              (_tl107142107175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107144107170_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107142107175_))
                                              ((lambda (_L107178_ _L107179_)
                                                 (let ((__tmp114686
                                                        (let ((__tmp114689
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L107179_)))
                      (__tmp114687
                       (let ((__tmp114688
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self107129_ _L107178_))))
                         (declare (not safe))
                         (cons __tmp114688 '()))))
                  (declare (not safe))
                  (cons __tmp114689 __tmp114687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp114686)))
                                               _hd107143107173_
                                               _hd107140107165_)
                                              (let ()
                                                (declare (not safe))
                                                (_g107132107149_
                                                 _g107133107152_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107132107149_ _g107133107152_)))))
                              (let ()
                                (declare (not safe))
                                (_g107132107149_ _g107133107152_)))))
                      (let ()
                        (declare (not safe))
                        (_g107132107149_ _g107133107152_))))))
          (declare (not safe))
          (_g107131107194_ _stx107130_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self106940_ _stx106941_)
        (let* ((_g106943106960_
                (lambda (_g106944106957_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106944106957_))))
               (_g106942107126_
                (lambda (_g106944106963_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106944106963_))
                      (let ((_e106949106965_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106944106963_))))
                        (let ((_hd106948106968_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106949106965_)))
                              (_tl106947106970_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106949106965_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106947106970_))
                              (let ((_e106952106973_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106947106970_))))
                                (let ((_hd106951106976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106952106973_)))
                                      (_tl106950106978_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106952106973_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106950106978_))
                                      (let ((_e106955106981_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106950106978_))))
                                        (let ((_hd106954106984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106955106981_)))
                                              (_tl106953106986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106955106981_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106953106986_))
                                              ((lambda (_L106989_ _L106990_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114705
                                                            (let ((__tmp114708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106940_ _L106989_)))
                          (__tmp114706
                           (let ((__tmp114707
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106940_
                                     _L106990_))))
                             (declare (not safe))
                             (cons __tmp114707 '()))))
                      (declare (not safe))
                      (cons __tmp114708 __tmp114706))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp114705))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp107005_ ((_rest107008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114704
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106989_ '()))))
                                 (declare (not safe))
                                 (cons _L106990_ __tmp114704)))
                              (_bind107010_ '())
                              (_args107011_ '()))
               (let* ((_rest107012107020_ _rest107008_)
                      (_else107014107028_
                       (lambda ()
                         (let ((__tmp114690
                                (let ((__tmp114691
                                       (let ((__tmp114692
                                              (let ((__tmp114693
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args107011_))))
                                                (declare (not safe))
                                                (cons __tmp114693 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114692))))
                                  (declare (not safe))
                                  (cons _bind107010_ __tmp114691))))
                           (declare (not safe))
                           (cons 'let __tmp114690))))
                      (_K107016107114_
                       (lambda (_rest107031_ _e107032_)
                         (let* ((___stx113902113903_ _e107032_)
                                (_g107037107055_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113902113903_)))))
                           (let ((___kont113904113905_
                                  (lambda ()
                                    (let ((__tmp114694
                                           (let ((__tmp114695
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107032_))))
                                             (declare (not safe))
                                             (cons __tmp114695 _args107011_))))
                                      (declare (not safe))
                                      (_lp107005_
                                       _rest107031_
                                       _bind107010_
                                       __tmp114694))))
                                 (___kont113906113907_
                                  (lambda ()
                                    (let ((__tmp114696
                                           (let ((__tmp114697
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107032_))))
                                             (declare (not safe))
                                             (cons __tmp114697 _args107011_))))
                                      (declare (not safe))
                                      (_lp107005_
                                       _rest107031_
                                       _bind107010_
                                       __tmp114696))))
                                 (___kont113908113909_
                                  (lambda ()
                                    (let ((_tmp107062_
                                           (let ((__tmp114698 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114698))))
                                      (let ((__tmp114700
                                             (let ((__tmp114701
                                                    (let ((__tmp114702
                                                           (let ((__tmp114703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e107032_))))
                     (declare (not safe))
                     (cons __tmp114703 '()))))
              (declare (not safe))
              (cons _tmp107062_ __tmp114702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114701
                                                     _bind107010_)))
                                            (__tmp114699
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp107062_
                                                     _args107011_))))
                                        (declare (not safe))
                                        (_lp107005_
                                         _rest107031_
                                         __tmp114700
                                         __tmp114699))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113902113903_))
                                 (let ((_e107041107093_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113902113903_))))
                                   (let ((_tl107039107098_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e107041107093_)))
                                         (_hd107040107096_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e107041107093_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd107040107096_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd107040107096_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl107039107098_))
                                                 (let ((_e107044107101_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl107039107098_))))
                                                   (let ((_tl107042107106_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107044107101_)))
                                                         (_hd107043107104_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107044107101_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107042107106_))
                                                         (___kont113904113905_)
                                                         (___kont113908113909_))))
                                                 (___kont113908113909_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd107040107096_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107039107098_))
                                                     (let ((_e107050107078_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107039107098_))))
                                                       (let ((_tl107048107083_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107050107078_)))
                     (_hd107049107081_
                      (let () (declare (not safe)) (##car _e107050107078_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107048107083_))
                     (___kont113906113907_)
                     (___kont113908113909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113908113909_))
                                                 (___kont113908113909_)))
                                         (___kont113908113909_))))
                                 (___kont113908113909_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest107012107020_))
                     (let ((_hd107017107117_
                            (let ()
                              (declare (not safe))
                              (##car _rest107012107020_)))
                           (_tl107018107119_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest107012107020_))))
                       (let* ((_e107122_ _hd107017107117_)
                              (_rest107124_ _tl107018107119_))
                         (declare (not safe))
                         (_K107016107114_ _rest107124_ _e107122_)))
                     (let () (declare (not safe)) (_else107014107028_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106954106984_
                                               _hd106951106976_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106943106960_
                                                 _g106944106963_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106943106960_ _g106944106963_)))))
                              (let ()
                                (declare (not safe))
                                (_g106943106960_ _g106944106963_)))))
                      (let ()
                        (declare (not safe))
                        (_g106943106960_ _g106944106963_))))))
          (declare (not safe))
          (_g106942107126_ _stx106941_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self106751_ _stx106752_)
        (let* ((_g106754106771_
                (lambda (_g106755106768_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106755106768_))))
               (_g106753106937_
                (lambda (_g106755106774_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106755106774_))
                      (let ((_e106760106776_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106755106774_))))
                        (let ((_hd106759106779_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106760106776_)))
                              (_tl106758106781_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106760106776_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106758106781_))
                              (let ((_e106763106784_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106758106781_))))
                                (let ((_hd106762106787_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106763106784_)))
                                      (_tl106761106789_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106763106784_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106761106789_))
                                      (let ((_e106766106792_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106761106789_))))
                                        (let ((_hd106765106795_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106766106792_)))
                                              (_tl106764106797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106766106792_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106764106797_))
                                              ((lambda (_L106800_ _L106801_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114724
                                                            (let ((__tmp114727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106751_ _L106800_)))
                          (__tmp114725
                           (let ((__tmp114726
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106751_
                                     _L106801_))))
                             (declare (not safe))
                             (cons __tmp114726 '()))))
                      (declare (not safe))
                      (cons __tmp114727 __tmp114725))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp114724))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106816_ ((_rest106819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114723
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106800_ '()))))
                                 (declare (not safe))
                                 (cons _L106801_ __tmp114723)))
                              (_bind106821_ '())
                              (_args106822_ '()))
               (let* ((_rest106823106831_ _rest106819_)
                      (_else106825106839_
                       (lambda ()
                         (let ((__tmp114709
                                (let ((__tmp114710
                                       (let ((__tmp114711
                                              (let ((__tmp114712
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args106822_))))
                                                (declare (not safe))
                                                (cons __tmp114712 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114711))))
                                  (declare (not safe))
                                  (cons _bind106821_ __tmp114710))))
                           (declare (not safe))
                           (cons 'let __tmp114709))))
                      (_K106827106925_
                       (lambda (_rest106842_ _e106843_)
                         (let* ((___stx113948113949_ _e106843_)
                                (_g106848106866_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113948113949_)))))
                           (let ((___kont113950113951_
                                  (lambda ()
                                    (let ((__tmp114713
                                           (let ((__tmp114714
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106843_))))
                                             (declare (not safe))
                                             (cons __tmp114714 _args106822_))))
                                      (declare (not safe))
                                      (_lp106816_
                                       _rest106842_
                                       _bind106821_
                                       __tmp114713))))
                                 (___kont113952113953_
                                  (lambda ()
                                    (let ((__tmp114715
                                           (let ((__tmp114716
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106843_))))
                                             (declare (not safe))
                                             (cons __tmp114716 _args106822_))))
                                      (declare (not safe))
                                      (_lp106816_
                                       _rest106842_
                                       _bind106821_
                                       __tmp114715))))
                                 (___kont113954113955_
                                  (lambda ()
                                    (let ((_tmp106873_
                                           (let ((__tmp114717 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114717))))
                                      (let ((__tmp114719
                                             (let ((__tmp114720
                                                    (let ((__tmp114721
                                                           (let ((__tmp114722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106843_))))
                     (declare (not safe))
                     (cons __tmp114722 '()))))
              (declare (not safe))
              (cons _tmp106873_ __tmp114721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114720
                                                     _bind106821_)))
                                            (__tmp114718
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106873_
                                                     _args106822_))))
                                        (declare (not safe))
                                        (_lp106816_
                                         _rest106842_
                                         __tmp114719
                                         __tmp114718))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113948113949_))
                                 (let ((_e106852106904_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113948113949_))))
                                   (let ((_tl106850106909_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106852106904_)))
                                         (_hd106851106907_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106852106904_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106851106907_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106851106907_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106850106909_))
                                                 (let ((_e106855106912_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106850106909_))))
                                                   (let ((_tl106853106917_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106855106912_)))
                                                         (_hd106854106915_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106855106912_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106853106917_))
                                                         (___kont113950113951_)
                                                         (___kont113954113955_))))
                                                 (___kont113954113955_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106851106907_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106850106909_))
                                                     (let ((_e106861106889_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106850106909_))))
                                                       (let ((_tl106859106894_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106861106889_)))
                     (_hd106860106892_
                      (let () (declare (not safe)) (##car _e106861106889_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106859106894_))
                     (___kont113952113953_)
                     (___kont113954113955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113954113955_))
                                                 (___kont113954113955_)))
                                         (___kont113954113955_))))
                                 (___kont113954113955_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106823106831_))
                     (let ((_hd106828106928_
                            (let ()
                              (declare (not safe))
                              (##car _rest106823106831_)))
                           (_tl106829106930_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106823106831_))))
                       (let* ((_e106933_ _hd106828106928_)
                              (_rest106935_ _tl106829106930_))
                         (declare (not safe))
                         (_K106827106925_ _rest106935_ _e106933_)))
                     (let () (declare (not safe)) (_else106825106839_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106765106795_
                                               _hd106762106787_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106754106771_
                                                 _g106755106774_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106754106771_ _g106755106774_)))))
                              (let ()
                                (declare (not safe))
                                (_g106754106771_ _g106755106774_)))))
                      (let ()
                        (declare (not safe))
                        (_g106754106771_ _g106755106774_))))))
          (declare (not safe))
          (_g106753106937_ _stx106752_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self106667_ _stx106668_)
        (let* ((_g106670106691_
                (lambda (_g106671106688_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106671106688_))))
               (_g106669106748_
                (lambda (_g106671106694_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106671106694_))
                      (let ((_e106677106696_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106671106694_))))
                        (let ((_hd106676106699_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106677106696_)))
                              (_tl106675106701_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106677106696_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106675106701_))
                              (let ((_e106680106704_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106675106701_))))
                                (let ((_hd106679106707_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106680106704_)))
                                      (_tl106678106709_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106680106704_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106678106709_))
                                      (let ((_e106683106712_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106678106709_))))
                                        (let ((_hd106682106715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106683106712_)))
                                              (_tl106681106717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106683106712_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106681106717_))
                                              (let ((_e106686106720_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106681106717_))))
                                                (let ((_hd106685106723_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106686106720_)))
                                                      (_tl106684106725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106686106720_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106684106725_))
                                                      ((lambda (_L106728_
                                                                _L106729_
                                                                _L106730_)
                                                         (let ((__tmp114728
                                                                (let ((__tmp114734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106667_ _L106728_)))
                              (__tmp114729
                               (let ((__tmp114733
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106667_
                                         _L106729_)))
                                     (__tmp114730
                                      (let ((__tmp114732
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106667_
                                                _L106730_)))
                                            (__tmp114731
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114732 __tmp114731))))
                                 (declare (not safe))
                                 (cons __tmp114733 __tmp114730))))
                          (declare (not safe))
                          (cons __tmp114734 __tmp114729))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp114728)))
               _hd106685106723_
               _hd106682106715_
               _hd106679106707_)
              (let ()
                (declare (not safe))
                (_g106670106691_ _g106671106694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106670106691_
                                                 _g106671106694_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106670106691_ _g106671106694_)))))
                              (let ()
                                (declare (not safe))
                                (_g106670106691_ _g106671106694_)))))
                      (let ()
                        (declare (not safe))
                        (_g106670106691_ _g106671106694_))))))
          (declare (not safe))
          (_g106669106748_ _stx106668_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self106567_ _stx106568_)
        (let* ((_g106570106595_
                (lambda (_g106571106592_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106571106592_))))
               (_g106569106664_
                (lambda (_g106571106598_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106571106598_))
                      (let ((_e106578106600_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106571106598_))))
                        (let ((_hd106577106603_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106578106600_)))
                              (_tl106576106605_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106578106600_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106576106605_))
                              (let ((_e106581106608_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106576106605_))))
                                (let ((_hd106580106611_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106581106608_)))
                                      (_tl106579106613_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106581106608_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106579106613_))
                                      (let ((_e106584106616_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106579106613_))))
                                        (let ((_hd106583106619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106584106616_)))
                                              (_tl106582106621_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106584106616_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106582106621_))
                                              (let ((_e106587106624_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106582106621_))))
                                                (let ((_hd106586106627_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106587106624_)))
                                                      (_tl106585106629_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106587106624_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106585106629_))
                                                      (let ((_e106590106632_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106585106629_))))
                (let ((_hd106589106635_
                       (let () (declare (not safe)) (##car _e106590106632_)))
                      (_tl106588106637_
                       (let () (declare (not safe)) (##cdr _e106590106632_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106588106637_))
                      ((lambda (_L106640_ _L106641_ _L106642_ _L106643_)
                         (let ((__tmp114735
                                (let ((__tmp114743
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106567_
                                          _L106641_)))
                                      (__tmp114736
                                       (let ((__tmp114742
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106567_
                                                 _L106640_)))
                                             (__tmp114737
                                              (let ((__tmp114741
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106567_
                                                        _L106642_)))
                                                    (__tmp114738
                                                     (let ((__tmp114740
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106567_
                                                               _L106643_)))
                                                           (__tmp114739
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114740 __tmp114739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114741
                                                      __tmp114738))))
                                         (declare (not safe))
                                         (cons __tmp114742 __tmp114737))))
                                  (declare (not safe))
                                  (cons __tmp114743 __tmp114736))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp114735)))
                       _hd106589106635_
                       _hd106586106627_
                       _hd106583106619_
                       _hd106580106611_)
                      (let ()
                        (declare (not safe))
                        (_g106570106595_ _g106571106598_)))))
              (let ()
                (declare (not safe))
                (_g106570106595_ _g106571106598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106570106595_
                                                 _g106571106598_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106570106595_ _g106571106598_)))))
                              (let ()
                                (declare (not safe))
                                (_g106570106595_ _g106571106598_)))))
                      (let ()
                        (declare (not safe))
                        (_g106570106595_ _g106571106598_))))))
          (declare (not safe))
          (_g106569106664_ _stx106568_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self106483_ _stx106484_)
        (let* ((_g106486106507_
                (lambda (_g106487106504_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106487106504_))))
               (_g106485106564_
                (lambda (_g106487106510_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106487106510_))
                      (let ((_e106493106512_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106487106510_))))
                        (let ((_hd106492106515_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106493106512_)))
                              (_tl106491106517_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106493106512_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106491106517_))
                              (let ((_e106496106520_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106491106517_))))
                                (let ((_hd106495106523_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106496106520_)))
                                      (_tl106494106525_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106496106520_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106494106525_))
                                      (let ((_e106499106528_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106494106525_))))
                                        (let ((_hd106498106531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106499106528_)))
                                              (_tl106497106533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106499106528_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106497106533_))
                                              (let ((_e106502106536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106497106533_))))
                                                (let ((_hd106501106539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106502106536_)))
                                                      (_tl106500106541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106502106536_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106500106541_))
                                                      ((lambda (_L106544_
                                                                _L106545_
                                                                _L106546_)
                                                         (let ((__tmp114744
                                                                (let ((__tmp114750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106483_ _L106544_)))
                              (__tmp114745
                               (let ((__tmp114749
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106483_
                                         _L106545_)))
                                     (__tmp114746
                                      (let ((__tmp114748
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106483_
                                                _L106546_)))
                                            (__tmp114747
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114748 __tmp114747))))
                                 (declare (not safe))
                                 (cons __tmp114749 __tmp114746))))
                          (declare (not safe))
                          (cons __tmp114750 __tmp114745))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp114744)))
               _hd106501106539_
               _hd106498106531_
               _hd106495106523_)
              (let ()
                (declare (not safe))
                (_g106486106507_ _g106487106510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106486106507_
                                                 _g106487106510_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106486106507_ _g106487106510_)))))
                              (let ()
                                (declare (not safe))
                                (_g106486106507_ _g106487106510_)))))
                      (let ()
                        (declare (not safe))
                        (_g106486106507_ _g106487106510_))))))
          (declare (not safe))
          (_g106485106564_ _stx106484_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self106383_ _stx106384_)
        (let* ((_g106386106411_
                (lambda (_g106387106408_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106387106408_))))
               (_g106385106480_
                (lambda (_g106387106414_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106387106414_))
                      (let ((_e106394106416_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106387106414_))))
                        (let ((_hd106393106419_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106394106416_)))
                              (_tl106392106421_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106394106416_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106392106421_))
                              (let ((_e106397106424_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106392106421_))))
                                (let ((_hd106396106427_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106397106424_)))
                                      (_tl106395106429_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106397106424_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106395106429_))
                                      (let ((_e106400106432_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106395106429_))))
                                        (let ((_hd106399106435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106400106432_)))
                                              (_tl106398106437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106400106432_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106398106437_))
                                              (let ((_e106403106440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106398106437_))))
                                                (let ((_hd106402106443_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106403106440_)))
                                                      (_tl106401106445_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106403106440_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106401106445_))
                                                      (let ((_e106406106448_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106401106445_))))
                (let ((_hd106405106451_
                       (let () (declare (not safe)) (##car _e106406106448_)))
                      (_tl106404106453_
                       (let () (declare (not safe)) (##cdr _e106406106448_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106404106453_))
                      ((lambda (_L106456_ _L106457_ _L106458_ _L106459_)
                         (let ((__tmp114751
                                (let ((__tmp114759
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106383_
                                          _L106457_)))
                                      (__tmp114752
                                       (let ((__tmp114758
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106383_
                                                 _L106456_)))
                                             (__tmp114753
                                              (let ((__tmp114757
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106383_
                                                        _L106458_)))
                                                    (__tmp114754
                                                     (let ((__tmp114756
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106383_
                                                               _L106459_)))
                                                           (__tmp114755
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114756 __tmp114755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114757
                                                      __tmp114754))))
                                         (declare (not safe))
                                         (cons __tmp114758 __tmp114753))))
                                  (declare (not safe))
                                  (cons __tmp114759 __tmp114752))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp114751)))
                       _hd106405106451_
                       _hd106402106443_
                       _hd106399106435_
                       _hd106396106427_)
                      (let ()
                        (declare (not safe))
                        (_g106386106411_ _g106387106414_)))))
              (let ()
                (declare (not safe))
                (_g106386106411_ _g106387106414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106386106411_
                                                 _g106387106414_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106386106411_ _g106387106414_)))))
                              (let ()
                                (declare (not safe))
                                (_g106386106411_ _g106387106414_)))))
                      (let ()
                        (declare (not safe))
                        (_g106386106411_ _g106387106414_))))))
          (declare (not safe))
          (_g106385106480_ _stx106384_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self106178_ _stx106179_)
        (let* ((_g106181106202_
                (lambda (_g106182106199_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106182106199_))))
               (_g106180106380_
                (lambda (_g106182106205_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106182106205_))
                      (let ((_e106188106207_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106182106205_))))
                        (let ((_hd106187106210_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106188106207_)))
                              (_tl106186106212_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106188106207_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106186106212_))
                              (let ((_e106191106215_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106186106212_))))
                                (let ((_hd106190106218_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106191106215_)))
                                      (_tl106189106220_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106191106215_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106189106220_))
                                      (let ((_e106194106223_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106189106220_))))
                                        (let ((_hd106193106226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106194106223_)))
                                              (_tl106192106228_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106194106223_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106192106228_))
                                              (let ((_e106197106231_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106192106228_))))
                                                (let ((_hd106196106234_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106197106231_)))
                                                      (_tl106195106236_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106197106231_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106195106236_))
                                                      ((lambda (_L106239_
                                                                _L106240_
                                                                _L106241_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp114778
                            (let ((__tmp114784
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self106178_
                                      _L106239_)))
                                  (__tmp114779
                                   (let ((__tmp114783
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self106178_
                                             _L106240_)))
                                         (__tmp114780
                                          (let ((__tmp114782
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self106178_
                                                    _L106241_)))
                                                (__tmp114781
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp114782 __tmp114781))))
                                     (declare (not safe))
                                     (cons __tmp114783 __tmp114780))))
                              (declare (not safe))
                              (cons __tmp114784 __tmp114779))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114778))
                     (let _lp106259_ ((_rest106262_
                                       (let ((__tmp114776
                                              (let ((__tmp114777
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L106239_ '()))))
                                                (declare (not safe))
                                                (cons _L106240_ __tmp114777))))
                                         (declare (not safe))
                                         (cons _L106241_ __tmp114776)))
                                      (_bind106264_ '())
                                      (_args106265_ '()))
                       (let* ((_rest106266106274_ _rest106262_)
                              (_else106268106282_
                               (lambda ()
                                 (let ((__tmp114760
                                        (let ((__tmp114761
                                               (let ((__tmp114762
                                                      (let ((__tmp114763
                                                             (let ((__tmp114764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114765
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp114765 _args106265_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114764))))
                (declare (not safe))
                (cons __tmp114763 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114762))))
                                          (declare (not safe))
                                          (cons _bind106264_ __tmp114761))))
                                   (declare (not safe))
                                   (cons 'let __tmp114760))))
                              (_K106270106368_
                               (lambda (_rest106285_ _e106286_)
                                 (let* ((___stx113994113995_ _e106286_)
                                        (_g106291106309_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113994113995_)))))
                                   (let ((___kont113996113997_
                                          (lambda ()
                                            (let ((__tmp114766
                                                   (let ((__tmp114767
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106286_))))
                                                     (declare (not safe))
                                                     (cons __tmp114767
                                                           _args106265_))))
                                              (declare (not safe))
                                              (_lp106259_
                                               _rest106285_
                                               _bind106264_
                                               __tmp114766))))
                                         (___kont113998113999_
                                          (lambda ()
                                            (let ((__tmp114768
                                                   (let ((__tmp114769
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106286_))))
                                                     (declare (not safe))
                                                     (cons __tmp114769
                                                           _args106265_))))
                                              (declare (not safe))
                                              (_lp106259_
                                               _rest106285_
                                               _bind106264_
                                               __tmp114768))))
                                         (___kont114000114001_
                                          (lambda ()
                                            (let ((_tmp106316_
                                                   (let ((__tmp114770
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp114770))))
                                              (let ((__tmp114772
                                                     (let ((__tmp114773
                                                            (let ((__tmp114774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114775
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e106286_))))
                             (declare (not safe))
                             (cons __tmp114775 '()))))
                      (declare (not safe))
                      (cons _tmp106316_ __tmp114774))))
               (declare (not safe))
               (cons __tmp114773 _bind106264_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114771
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp106316_
                                                             _args106265_))))
                                                (declare (not safe))
                                                (_lp106259_
                                                 _rest106285_
                                                 __tmp114772
                                                 __tmp114771))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113994113995_))
                                         (let ((_e106295106347_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113994113995_))))
                                           (let ((_tl106293106352_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106295106347_)))
                                                 (_hd106294106350_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106295106347_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd106294106350_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd106294106350_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl106293106352_))
                                                         (let ((_e106298106355_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl106293106352_))))
                   (let ((_tl106296106360_
                          (let ()
                            (declare (not safe))
                            (##cdr _e106298106355_)))
                         (_hd106297106358_
                          (let ()
                            (declare (not safe))
                            (##car _e106298106355_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106296106360_))
                         (___kont113996113997_)
                         (___kont114000114001_))))
                 (___kont114000114001_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd106294106350_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl106293106352_))
                     (let ((_e106304106332_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106293106352_))))
                       (let ((_tl106302106337_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106304106332_)))
                             (_hd106303106335_
                              (let ()
                                (declare (not safe))
                                (##car _e106304106332_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106302106337_))
                             (___kont113998113999_)
                             (___kont114000114001_))))
                     (___kont114000114001_))
                 (___kont114000114001_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114000114001_))))
                                         (___kont114000114001_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest106266106274_))
                             (let ((_hd106271106371_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest106266106274_)))
                                   (_tl106272106373_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest106266106274_))))
                               (let* ((_e106376_ _hd106271106371_)
                                      (_rest106378_ _tl106272106373_))
                                 (declare (not safe))
                                 (_K106270106368_ _rest106378_ _e106376_)))
                             (let ()
                               (declare (not safe))
                               (_else106268106282_)))))))
               _hd106196106234_
               _hd106193106226_
               _hd106190106218_)
              (let ()
                (declare (not safe))
                (_g106181106202_ _g106182106205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106181106202_
                                                 _g106182106205_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106181106202_ _g106182106205_)))))
                              (let ()
                                (declare (not safe))
                                (_g106181106202_ _g106182106205_)))))
                      (let ()
                        (declare (not safe))
                        (_g106181106202_ _g106182106205_))))))
          (declare (not safe))
          (_g106180106380_ _stx106179_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self105957_ _stx105958_)
        (let* ((_g105960105985_
                (lambda (_g105961105982_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105961105982_))))
               (_g105959106175_
                (lambda (_g105961105988_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105961105988_))
                      (let ((_e105968105990_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105961105988_))))
                        (let ((_hd105967105993_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105968105990_)))
                              (_tl105966105995_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105968105990_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105966105995_))
                              (let ((_e105971105998_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105966105995_))))
                                (let ((_hd105970106001_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105971105998_)))
                                      (_tl105969106003_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105971105998_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105969106003_))
                                      (let ((_e105974106006_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105969106003_))))
                                        (let ((_hd105973106009_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105974106006_)))
                                              (_tl105972106011_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105974106006_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105972106011_))
                                              (let ((_e105977106014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105972106011_))))
                                                (let ((_hd105976106017_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105977106014_)))
                                                      (_tl105975106019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105977106014_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl105975106019_))
                                                      (let ((_e105980106022_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl105975106019_))))
                (let ((_hd105979106025_
                       (let () (declare (not safe)) (##car _e105980106022_)))
                      (_tl105978106027_
                       (let () (declare (not safe)) (##cdr _e105980106022_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105978106027_))
                      ((lambda (_L106030_ _L106031_ _L106032_ _L106033_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp114804
                                    (let ((__tmp114812
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self105957_
                                              _L106031_)))
                                          (__tmp114805
                                           (let ((__tmp114811
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105957_
                                                     _L106030_)))
                                                 (__tmp114806
                                                  (let ((__tmp114810
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self105957_
                                                            _L106032_)))
                                                        (__tmp114807
                                                         (let ((__tmp114809
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self105957_ _L106033_)))
                       (__tmp114808
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp114809 __tmp114808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114810
                                                          __tmp114807))))
                                             (declare (not safe))
                                             (cons __tmp114811 __tmp114806))))
                                      (declare (not safe))
                                      (cons __tmp114812 __tmp114805))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp114804))
                             (let _lp106054_ ((_rest106057_
                                               (let ((__tmp114801
                                                      (let ((__tmp114802
                                                             (let ((__tmp114803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L106031_ '()))))
                       (declare (not safe))
                       (cons _L106030_ __tmp114803))))
                (declare (not safe))
                (cons _L106032_ __tmp114802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L106033_ __tmp114801)))
                                              (_bind106059_ '())
                                              (_args106060_ '()))
                               (let* ((_rest106061106069_ _rest106057_)
                                      (_else106063106077_
                                       (lambda ()
                                         (let ((__tmp114785
                                                (let ((__tmp114786
                                                       (let ((__tmp114787
                                                              (let ((__tmp114788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114789
                                    (let ((__tmp114790
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp114790 _args106060_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp114789))))
                        (declare (not safe))
                        (cons __tmp114788 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp114787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind106059_
                                                        __tmp114786))))
                                           (declare (not safe))
                                           (cons 'let __tmp114785))))
                                      (_K106065106163_
                                       (lambda (_rest106080_ _e106081_)
                                         (let* ((___stx114040114041_ _e106081_)
                                                (_g106086106104_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx114040114041_)))))
                                           (let ((___kont114042114043_
                                                  (lambda ()
                                                    (let ((__tmp114791
                                                           (let ((__tmp114792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106081_))))
                     (declare (not safe))
                     (cons __tmp114792 _args106060_))))
              (declare (not safe))
              (_lp106054_ _rest106080_ _bind106059_ __tmp114791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114044114045_
                                                  (lambda ()
                                                    (let ((__tmp114793
                                                           (let ((__tmp114794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106081_))))
                     (declare (not safe))
                     (cons __tmp114794 _args106060_))))
              (declare (not safe))
              (_lp106054_ _rest106080_ _bind106059_ __tmp114793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114046114047_
                                                  (lambda ()
                                                    (let ((_tmp106111_
                                                           (let ((__tmp114795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp114795))))
              (let ((__tmp114797
                     (let ((__tmp114798
                            (let ((__tmp114799
                                   (let ((__tmp114800
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e106081_))))
                                     (declare (not safe))
                                     (cons __tmp114800 '()))))
                              (declare (not safe))
                              (cons _tmp106111_ __tmp114799))))
                       (declare (not safe))
                       (cons __tmp114798 _bind106059_)))
                    (__tmp114796
                     (let ()
                       (declare (not safe))
                       (cons _tmp106111_ _args106060_))))
                (declare (not safe))
                (_lp106054_ _rest106080_ __tmp114797 __tmp114796))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx114040114041_))
                                                 (let ((_e106090106142_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx114040114041_))))
                                                   (let ((_tl106088106147_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106090106142_)))
                                                         (_hd106089106145_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106090106142_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd106089106145_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd106089106145_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl106088106147_))
                         (let ((_e106093106150_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl106088106147_))))
                           (let ((_tl106091106155_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e106093106150_)))
                                 (_hd106092106153_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e106093106150_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl106091106155_))
                                 (___kont114042114043_)
                                 (___kont114046114047_))))
                         (___kont114046114047_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd106089106145_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl106088106147_))
                             (let ((_e106099106127_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl106088106147_))))
                               (let ((_tl106097106132_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e106099106127_)))
                                     (_hd106098106130_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e106099106127_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl106097106132_))
                                     (___kont114044114045_)
                                     (___kont114046114047_))))
                             (___kont114046114047_))
                         (___kont114046114047_)))
                 (___kont114046114047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114046114047_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest106061106069_))
                                     (let ((_hd106066106166_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest106061106069_)))
                                           (_tl106067106168_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest106061106069_))))
                                       (let* ((_e106171_ _hd106066106166_)
                                              (_rest106173_ _tl106067106168_))
                                         (declare (not safe))
                                         (_K106065106163_
                                          _rest106173_
                                          _e106171_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else106063106077_)))))))
                       _hd105979106025_
                       _hd105976106017_
                       _hd105973106009_
                       _hd105970106001_)
                      (let ()
                        (declare (not safe))
                        (_g105960105985_ _g105961105988_)))))
              (let ()
                (declare (not safe))
                (_g105960105985_ _g105961105988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105960105985_
                                                 _g105961105988_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105960105985_ _g105961105988_)))))
                              (let ()
                                (declare (not safe))
                                (_g105960105985_ _g105961105988_)))))
                      (let ()
                        (declare (not safe))
                        (_g105960105985_ _g105961105988_))))))
          (declare (not safe))
          (_g105959106175_ _stx105958_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self105810_ _stx105811_)
        (letrec ((_import-set-template105813_
                  (lambda (_in105909_ _phi105910_)
                    (let ((_iphi105912_
                           (fx+ _phi105910_
                                (##direct-structure-ref
                                 _in105909_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports105913_
                           (##structure-ref
                            (##direct-structure-ref
                             _in105909_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp105915_ ((_rest105917_ _imports105913_)
                                       (_r105918_ '()))
                        (let* ((_rest105919105927_ _rest105917_)
                               (_else105921105935_ (lambda () _r105918_))
                               (_K105923105945_
                                (lambda (_rest105938_ _in105939_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in105939_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi105912_))
                                          (let ((__tmp114819
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in105939_
                                                         _r105918_))))
                                            (declare (not safe))
                                            (_lp105915_
                                             _rest105938_
                                             __tmp114819))
                                          (let ()
                                            (declare (not safe))
                                            (_lp105915_
                                             _rest105938_
                                             _r105918_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in105939_
                                             'gx#module-import::t))
                                          (let ((_iphi105941_
                                                 (fx+ _phi105910_
                                                      (##direct-structure-ref
                                                       _in105939_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi105941_))
                                                (let ((__tmp114817
                                                       (let ((__tmp114818
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in105939_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp114818
                                                               _r105918_))))
                                                  (declare (not safe))
                                                  (_lp105915_
                                                   _rest105938_
                                                   __tmp114817))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp105915_
                                                   _rest105938_
                                                   _r105918_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in105939_
                                                 'gx#import-set::t))
                                              (let ((_xphi105943_
                                                     (fx+ _iphi105912_
                                                          (##direct-structure-ref
                                                           _in105939_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi105943_))
                                                    (let ((__tmp114815
                                                           (let ((__tmp114816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105939_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp114816 _r105918_))))
              (declare (not safe))
              (_lp105915_ _rest105938_ __tmp114815))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi105943_)
                                                        (let ((__tmp114813
                                                               (let ((__tmp114814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template105813_
                                 _in105939_
                                 _iphi105912_))))
                         (declare (not safe))
                         (foldl1 cons _r105918_ __tmp114814))))
                  (declare (not safe))
                  (_lp105915_ _rest105938_ __tmp114813))
                (let ()
                  (declare (not safe))
                  (_lp105915_ _rest105938_ _r105918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp105915_
                                                 _rest105938_
                                                 _r105918_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105919105927_))
                              (let ((_hd105924105948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105919105927_)))
                                    (_tl105925105950_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105919105927_))))
                                (let* ((_in105953_ _hd105924105948_)
                                       (_rest105955_ _tl105925105950_))
                                  (declare (not safe))
                                  (_K105923105945_ _rest105955_ _in105953_)))
                              (let ()
                                (declare (not safe))
                                (_else105921105935_)))))))))
          (let* ((_g105815105825_
                  (lambda (_g105816105822_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105816105822_))))
                 (_g105814105906_
                  (lambda (_g105816105828_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105816105828_))
                        (let ((_e105820105830_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105816105828_))))
                          (let ((_hd105819105833_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105820105830_)))
                                (_tl105818105835_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105820105830_))))
                            ((lambda (_L105838_)
                               (let ((_ht105849_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp105851_ ((_rest105853_ _L105838_)
                                                  (_loads105854_ '()))
                                   (letrec ((_K105856_
                                             (lambda (_ctx105899_ _rest105900_)
                                               (let ((_id105902_
                                                      (##structure-ref
                                                       _ctx105899_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht105849_
                                                        _id105902_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp105851_
                                                        _rest105900_
                                                        _loads105854_))
                                                     (let ((_rt105904_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _id105902_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _ht105849_
                                                          _id105902_
                                                          _rt105904_))
                                                       (let ((__tmp114820
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _rt105904_ _loads105854_))))
                 (declare (not safe))
                 (_lp105851_ _rest105900_ __tmp114820))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest105857105865_ _rest105853_)
                                            (_else105859105877_
                                             (lambda ()
                                               (let ((__tmp114821
                                                      (map (lambda (_g105872105874_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g105872105874_))
                   (reverse _loads105854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp114821))))
                                            (_K105861105887_
                                             (lambda (_rest105880_ _in105881_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in105881_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K105856_
                                                      _in105881_
                                                      _rest105880_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in105881_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp114825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105881_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp114825))
                   (let ((__tmp114824
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in105881_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K105856_ __tmp114824 _rest105880_))
                   (let ()
                     (declare (not safe))
                     (_lp105851_ _rest105880_ _loads105854_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in105881_
                      'gx#import-set::t))
                   (let ((_phi105883_
                          (##direct-structure-ref
                           _in105881_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi105883_))
                         (let ((__tmp114823
                                (##direct-structure-ref
                                 _in105881_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K105856_ __tmp114823 _rest105880_))
                         (if (fxpositive? _phi105883_)
                             (let* ((_deps105885_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template105813_
                                        _in105881_
                                        '0)))
                                    (__tmp114822
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest105880_
                                               _deps105885_))))
                               (declare (not safe))
                               (_lp105851_ __tmp114822 _loads105854_))
                             (let ()
                               (declare (not safe))
                               (_lp105851_ _rest105880_ _loads105854_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx105811_
                      _in105881_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest105857105865_))
                                           (let ((_hd105862105890_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest105857105865_)))
                                                 (_tl105863105892_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest105857105865_))))
                                             (let* ((_in105895_
                                                     _hd105862105890_)
                                                    (_rest105897_
                                                     _tl105863105892_))
                                               (declare (not safe))
                                               (_K105861105887_
                                                _rest105897_
                                                _in105895_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else105859105877_))))))))
                             _tl105818105835_)))
                        (let ()
                          (declare (not safe))
                          (_g105815105825_ _g105816105828_))))))
            (declare (not safe))
            (_g105814105906_ _stx105811_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self105625_ _stx105626_)
        (letrec ((_add-lift!105628_
                  (lambda (_expr105808_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp114826 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr105808_ __tmp114826)))))
                 (_generate-syntax-quote105629_
                  (lambda (_id105805_ _marks105806_)
                    (let ((__tmp114827
                           (let ((__tmp114828
                                  (let ((__tmp114832
                                         (let ((__tmp114833
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id105805_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp114833)))
                                        (__tmp114829
                                         (let ((__tmp114830
                                                (let ((__tmp114831
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks105806_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp114831))))
                                           (declare (not safe))
                                           (cons '#f __tmp114830))))
                                    (declare (not safe))
                                    (cons __tmp114832 __tmp114829))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp114828))))
                      (declare (not safe))
                      (cons '##structure __tmp114827))))
                 (_generate-simple105630_
                  (lambda (_stxq105800_)
                    (let ((_gid105802_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid105803_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq105800_))))
                      (let ((__tmp114834
                             (let ((__tmp114835
                                    (let ((__tmp114836
                                           (let ((__tmp114837
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105629_
                                                     _qid105803_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp114837 '()))))
                                      (declare (not safe))
                                      (cons _gid105802_ __tmp114836))))
                               (declare (not safe))
                               (cons 'define __tmp114835))))
                        (declare (not safe))
                        (_add-lift!105628_ __tmp114834))
                      (let ((__tmp114838 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114838 _stxq105800_ _gid105802_))
                      _gid105802_)))
                 (_generate-serialized105631_
                  (lambda (_stxq105790_ _marks105791_)
                    (let* ((_mark-refs105793_
                            (map _generate-mark105632_ _marks105791_))
                           (_gid105795_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid105797_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq105790_))))
                      (let ((__tmp114839
                             (let ((__tmp114840
                                    (let ((__tmp114841
                                           (let ((__tmp114842
                                                  (let ((__tmp114843
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs105793_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105629_
                                                     _qid105797_
                                                     __tmp114843))))
                                             (declare (not safe))
                                             (cons __tmp114842 '()))))
                                      (declare (not safe))
                                      (cons _gid105795_ __tmp114841))))
                               (declare (not safe))
                               (cons 'define __tmp114840))))
                        (declare (not safe))
                        (_add-lift!105628_ __tmp114839))
                      (let ((__tmp114844 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114844 _stxq105790_ _gid105795_))
                      _gid105795_)))
                 (_generate-mark105632_
                  (lambda (_mark105776_)
                    (let ((_$e105778_
                           (let ((__tmp114845 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp114845 _mark105776_))))
                      (if _$e105778_
                          (values _$e105778_)
                          (let* ((_gid105781_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr105783_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark105633_ _mark105776_)))
                                 (_ctx105785_
                                  (let ((__tmp114846
                                         (##structure-ref
                                          _mark105776_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp114846)))
                                 (_ctx-ref105787_
                                  (if (let ((__tmp114851
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx105785_ __tmp114851))
                                      '(gx#current-expander-context)
                                      (let ((__tmp114847
                                             (let ((__tmp114848
                                                    (let ((__tmp114849
                                                           (let ((__tmp114850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref105634_ _ctx105785_))))
                     (declare (not safe))
                     (cons __tmp114850 '()))))
              (declare (not safe))
              (cons 'quote __tmp114849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114848 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp114847)))))
                            (let ((__tmp114852 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp114852 _mark105776_ _gid105781_))
                            (let ((__tmp114853
                                   (let ((__tmp114854
                                          (let ((__tmp114855
                                                 (let ((__tmp114856
                                                        (let ((__tmp114857
                                                               (let ((__tmp114859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114860
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr105783_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp114860)))
                             (__tmp114858
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref105787_ '()))))
                         (declare (not safe))
                         (cons __tmp114859 __tmp114858))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp114857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114856 '()))))
                                            (declare (not safe))
                                            (cons _gid105781_ __tmp114855))))
                                     (declare (not safe))
                                     (cons 'define __tmp114854))))
                              (declare (not safe))
                              (_add-lift!105628_ __tmp114853))
                            _gid105781_)))))
                 (_serialize-mark105633_
                  (lambda (_mark105723_)
                    (letrec ((_quote-e105725_
                              (lambda (_sym105774_)
                                (if (interned-symbol? _sym105774_)
                                    _sym105774_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym105774_))))))
                      (let* ((_mark105726105735_ _mark105723_)
                             (_E105728105739_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark105726105735_))))
                             (_K105729105751_
                              (lambda (_trace105742_
                                       _phi105743_
                                       _ctx105744_
                                       _subst105745_)
                                (let* ((_subs105747_
                                        (if _subst105745_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst105745_))
                                            '()))
                                       (__tmp114861
                                        (map (lambda (_pair105749_)
                                               (let ((__tmp114864
                                                      (let ((__tmp114865
                                                             (car _pair105749_)))
                                                        (declare (not safe))
                                                        (_quote-e105725_
                                                         __tmp114865)))
                                                     (__tmp114862
                                                      (let ((__tmp114863
                                                             (cdr _pair105749_)))
                                                        (declare (not safe))
                                                        (_quote-e105725_
                                                         __tmp114863))))
                                                 (declare (not safe))
                                                 (cons __tmp114864
                                                       __tmp114862)))
                                             _subs105747_)))
                                  (declare (not safe))
                                  (cons _phi105743_ __tmp114861)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark105726105735_
                               'gx#expander-mark::t))
                            (let* ((_e105730105754_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105726105735_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst105757_ _e105730105754_)
                                   (_e105731105759_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105726105735_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx105762_ _e105731105759_)
                                   (_e105732105764_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105726105735_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi105767_ _e105732105764_)
                                   (_e105733105769_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105726105735_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace105772_ _e105733105769_))
                              (declare (not safe))
                              (_K105729105751_
                               _trace105772_
                               _phi105767_
                               _ctx105762_
                               _subst105757_))
                            (let ()
                              (declare (not safe))
                              (_E105728105739_)))))))
                 (_context-ref105634_
                  (lambda (_ctx105710_)
                    (if (let ((__tmp114873
                               (##structure-ref
                                _ctx105710_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp114873
                           'gx#module-context::t))
                        (let ((_ctx-ref105712_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested105636_ _ctx105710_)))
                              (_ctx-origin105713_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin105635_ _ctx105710_)))
                              (_origin105714_
                               (let ((__tmp114867
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin105635_ __tmp114867))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin105714_ _ctx-origin105713_))
                              (let ((_ref105716_
                                     (let ((__tmp114868
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested105636_
                                        __tmp114868))))
                                (let _lp105718_ ((_ref105720_
                                                  (cdr _ref105716_))
                                                 (_ctx-ref105721_
                                                  (cdr _ctx-ref105712_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref105720_))
                                           (let ((__tmp114872
                                                  (car _ref105720_))
                                                 (__tmp114871
                                                  (car _ctx-ref105721_)))
                                             (declare (not safe))
                                             (eq? __tmp114872 __tmp114871)))
                                      (let ((__tmp114870 (cdr _ref105720_))
                                            (__tmp114869
                                             (cdr _ctx-ref105721_)))
                                        (declare (not safe))
                                        (_lp105718_ __tmp114870 __tmp114869))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref105721_)))))
                              _ctx-ref105712_))
                        (let ((__tmp114866
                               (##structure-ref
                                _ctx105710_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp114866)))))
                 (_context-ref-origin105635_
                  (lambda (_ctx105702_)
                    (let _lp105704_ ((_ctx105706_ _ctx105702_))
                      (let ((_super105708_
                             (##structure-ref
                              _ctx105706_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105708_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp105704_ _super105708_))
                            _ctx105706_)))))
                 (_context-ref-nested105636_
                  (lambda (_ctx105693_)
                    (let _lp105695_ ((_ctx105697_ _ctx105693_) (_r105698_ '()))
                      (let ((_super105700_
                             (##structure-ref
                              _ctx105697_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105700_
                               'gx#module-context::t))
                            (let ((__tmp114876
                                   (let ((__tmp114877
                                          (car (##structure-ref
                                                _ctx105697_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp114877 _r105698_))))
                              (declare (not safe))
                              (_lp105695_ _super105700_ __tmp114876))
                            (let ((__tmp114874
                                   (let ((__tmp114875
                                          (##structure-ref
                                           _ctx105697_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp114875))))
                              (declare (not safe))
                              (cons __tmp114874 _r105698_))))))))
          (let* ((_g105638105651_
                  (lambda (_g105639105648_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105639105648_))))
                 (_g105637105690_
                  (lambda (_g105639105654_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105639105654_))
                        (let ((_e105643105656_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105639105654_))))
                          (let ((_hd105642105659_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105643105656_)))
                                (_tl105641105661_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105643105656_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105641105661_))
                                (let ((_e105646105664_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105641105661_))))
                                  (let ((_hd105645105667_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105646105664_)))
                                        (_tl105644105669_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105646105664_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105644105669_))
                                        ((lambda (_L105672_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L105672_))
                                               (let ((_$e105685_
                                                      (let ((__tmp114878
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp114878
                                                         _L105672_))))
                                                 (if _$e105685_
                                                     (values _$e105685_)
                                                     (let ((_marks105688_
                                                            (##direct-structure-ref
                                                             _L105672_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks105688_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple105630_
                                                              _L105672_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized105631_
                                                              _L105672_
                                                              _marks105688_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L105672_))))
                                         _hd105645105667_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105638105651_ _g105639105654_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105638105651_ _g105639105654_)))))
                        (let ()
                          (declare (not safe))
                          (_g105638105651_ _g105639105654_))))))
            (declare (not safe))
            (_g105637105690_ _stx105626_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self105557_ _stx105558_)
        (let* ((_g105560105577_
                (lambda (_g105561105574_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105561105574_))))
               (_g105559105622_
                (lambda (_g105561105580_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105561105580_))
                      (let ((_e105566105582_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105561105580_))))
                        (let ((_hd105565105585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105566105582_)))
                              (_tl105564105587_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105566105582_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105564105587_))
                              (let ((_e105569105590_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105564105587_))))
                                (let ((_hd105568105593_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105569105590_)))
                                      (_tl105567105595_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105569105590_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105567105595_))
                                      (let ((_e105572105598_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105567105595_))))
                                        (let ((_hd105571105601_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105572105598_)))
                                              (_tl105570105603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105572105598_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105570105603_))
                                              ((lambda (_L105606_ _L105607_)
                                                 (let ((__tmp114879
                                                        (let ((__tmp114882
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L105607_)))
                      (__tmp114880
                       (let ((__tmp114881
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105557_ _L105606_))))
                         (declare (not safe))
                         (cons __tmp114881 '()))))
                  (declare (not safe))
                  (cons __tmp114882 __tmp114880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp114879)))
                                               _hd105571105601_
                                               _hd105568105593_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105560105577_
                                                 _g105561105580_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105560105577_ _g105561105580_)))))
                              (let ()
                                (declare (not safe))
                                (_g105560105577_ _g105561105580_)))))
                      (let ()
                        (declare (not safe))
                        (_g105560105577_ _g105561105580_))))))
          (declare (not safe))
          (_g105559105622_ _stx105558_))))
    (define gxc#generate-meta-begin%
      (lambda (_self105506_ _stx105507_)
        (let* ((_g105509105519_
                (lambda (_g105510105516_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105510105516_))))
               (_g105508105554_
                (lambda (_g105510105522_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105510105522_))
                      (let ((_e105514105524_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105510105522_))))
                        (let ((_hd105513105527_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105514105524_)))
                              (_tl105512105529_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105514105524_))))
                          ((lambda (_L105532_)
                             (let* ((_c-body105546_
                                     (map (lambda (_g105541105543_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105506_
                                               _g105541105543_)))
                                          _L105532_))
                                    (_c-body105551_
                                     (filter (lambda (_$obj105548_)
                                               (let ((__tmp114883
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj105548_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp114883)))
                                             _c-body105546_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body105551_))))
                           _tl105512105529_)))
                      (let ()
                        (declare (not safe))
                        (_g105509105519_ _g105510105522_))))))
          (declare (not safe))
          (_g105508105554_ _stx105507_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self105414_ _stx105415_)
        (let* ((_g105417105427_
                (lambda (_g105418105424_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105418105424_))))
               (_g105416105503_
                (lambda (_g105418105430_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105418105430_))
                      (let ((_e105422105432_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105418105430_))))
                        (let ((_hd105421105435_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105422105432_)))
                              (_tl105420105437_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105422105432_))))
                          ((lambda (_L105440_)
                             (let* ((_phi105450_
                                     (let ((__tmp114884
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp114884 '1)))
                                    (_block105452_
                                     (let ((__tmp114885
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self105414_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp114885
                                        _phi105450_)))
                                    (_compiled105455_
                                     (let ((__tmp114886
                                            (lambda ()
                                              (let ((__tmp114888
                                                     (let ((__tmp114889
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp114889
                                                             _L105440_)))
                                                    (__tmp114887
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self105414_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp114888
                                                 'state:
                                                 __tmp114887)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114886
                                        gx#current-expander-phi
                                        _phi105450_))))
                               (let* ((_g105458105468_
                                       (lambda (_g105459105465_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g105459105465_))))
                                      (_g105457105500_
                                       (lambda (_g105459105471_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g105459105471_))
                                             (let ((_e105463105473_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g105459105471_))))
                                               (let ((_hd105462105476_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105463105473_)))
                                                     (_tl105461105478_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105463105473_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105462105476_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd105462105476_))
                                                         ((lambda (_L105481_)
                                                            (let ((_c-body105498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj105495_)
                                     (let ((__tmp114890
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj105495_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp114890)))
                                   _L105481_)))
                      (if _block105452_
                          (let ((__tmp114891
                                 (let ((__tmp114892
                                        (let ((__tmp114893
                                               (let ((__tmp114897
                                                      (let ((__tmp114898
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp114898)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114894
                                                      (let ((__tmp114895
                                                             (let ((__tmp114896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block105452_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp114896))))
                (declare (not safe))
                (cons __tmp114895 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114897
                                                       __tmp114894))))
                                          (declare (not safe))
                                          (cons '%#call __tmp114893))))
                                   (declare (not safe))
                                   (cons __tmp114892 _c-body105498_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp114891))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body105498_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body105498_))))))
                  _tl105461105478_)
                 (let ()
                   (declare (not safe))
                   (_g105458105468_ _g105459105471_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105458105468_
                                                        _g105459105471_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g105458105468_
                                                _g105459105471_))))))
                                 (declare (not safe))
                                 (_g105457105500_ _compiled105455_))))
                           _tl105420105437_)))
                      (let ()
                        (declare (not safe))
                        (_g105417105427_ _g105418105430_))))))
          (declare (not safe))
          (_g105416105503_ _stx105415_))))
    (define gxc#generate-meta-module%
      (lambda (_self105345_ _stx105346_)
        (let ((__tmp114899
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self105345_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114899))
        (let* ((_g105348105362_
                (lambda (_g105349105359_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105349105359_))))
               (_g105347105411_
                (lambda (_g105349105365_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105349105365_))
                      (let ((_e105354105367_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105349105365_))))
                        (let ((_hd105353105370_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105354105367_)))
                              (_tl105352105372_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105354105367_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105352105372_))
                              (let ((_e105357105375_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105352105372_))))
                                (let ((_hd105356105378_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105357105375_)))
                                      (_tl105355105380_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105357105375_))))
                                  ((lambda (_L105383_ _L105384_)
                                     (let ((_key105397_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L105384_))))
                                       (if (interned-symbol? _key105397_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx105346_
                                              _L105384_
                                              _key105397_)))
                                       (let* ((_ctx105399_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L105384_)))
                                              (_code105402_
                                               (let ((__tmp114900
                                                      (lambda ()
                                                        (let ((__tmp114901
                                                               (##structure-ref
                                                                _ctx105399_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self105345_
                                                           __tmp114901)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp114900
                                                  gx#current-expander-context
                                                  _ctx105399_)))
                                              (_rt105404_
                                               (let ((__tmp114902
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp114902
                                                  _ctx105399_)))
                                              (_loader105406_
                                               (if _rt105404_
                                                   (let ((__tmp114903
                                                          (let ((__tmp114904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114908
                                (let ((__tmp114909
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp114909)))
                               (__tmp114905
                                (let ((__tmp114906
                                       (let ((__tmp114907
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt105404_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp114907))))
                                  (declare (not safe))
                                  (cons __tmp114906 '()))))
                           (declare (not safe))
                           (cons __tmp114908 __tmp114905))))
                    (declare (not safe))
                    (cons '%#call __tmp114904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114903 '()))
                                                   '()))
                                              (_modid105408_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L105384_))))
                                         (let ((__tmp114910
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self105345_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp114910))
                                         (let ((__tmp114911
                                                (let ((__tmp114912
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code105402_
                                                               _loader105406_))))
                                                  (declare (not safe))
                                                  (cons _modid105408_
                                                        __tmp114912))))
                                           (declare (not safe))
                                           (cons '%#module __tmp114911)))))
                                   _tl105355105380_
                                   _hd105356105378_)))
                              (let ()
                                (declare (not safe))
                                (_g105348105362_ _g105349105365_)))))
                      (let ()
                        (declare (not safe))
                        (_g105348105362_ _g105349105365_))))))
          (declare (not safe))
          (_g105347105411_ _stx105346_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx105335_ _context-chain105336_)
        (let _lp105338_ ((_ctx105340_ _ctx105335_) (_path105341_ '()))
          (let ((_super105343_
                 (##structure-ref _ctx105340_ '3 gx#phi-context::t '#f)))
            (if (memq _super105343_ _context-chain105336_)
                (let ((__tmp114917
                       (let ((__tmp114918
                              (car (##structure-ref
                                    _ctx105340_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp114918 _path105341_))))
                  (declare (not safe))
                  (cons '#f __tmp114917))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super105343_
                       'gx#module-context::t))
                    (let ((__tmp114915
                           (let ((__tmp114916
                                  (car (##structure-ref
                                        _ctx105340_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp114916 _path105341_))))
                      (declare (not safe))
                      (_lp105338_ _super105343_ __tmp114915))
                    (let ((__tmp114913
                           (let ((__tmp114914
                                  (##structure-ref
                                   _ctx105340_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp114914))))
                      (declare (not safe))
                      (cons __tmp114913 _path105341_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp105330_ ((_ctx105332_ (gx#current-expander-context))
                         (_r105333_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx105332_ 'gx#module-context::t))
              (let ((__tmp114920
                     (##structure-ref _ctx105332_ '3 gx#phi-context::t '#f))
                    (__tmp114919
                     (let ()
                       (declare (not safe))
                       (cons _ctx105332_ _r105333_))))
                (declare (not safe))
                (_lp105330_ __tmp114920 __tmp114919))
              _r105333_))))
    (define gxc#generate-meta-import%
      (lambda (_self105099_ _stx105100_)
        (letrec* ((_context-chain105102_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec105103_
                   (lambda (_in105266_)
                     (let* ((_in105267105279_ _in105266_)
                            (_E105269105283_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in105267105279_))))
                            (_K105270105293_
                             (lambda (_phi105286_
                                      _name105287_
                                      _src-name105288_
                                      _src-phi105289_
                                      _src-key105290_
                                      _src-ctx105291_)
                               (let ((__tmp114921
                                      (let ((__tmp114925
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name105287_)))
                                            (__tmp114922
                                             (let ((__tmp114923
                                                    (let ((__tmp114924
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name105288_))))
                                                      (declare (not safe))
                                                      (cons __tmp114924 '()))))
                                               (declare (not safe))
                                               (cons _src-phi105289_
                                                     __tmp114923))))
                                        (declare (not safe))
                                        (cons __tmp114925 __tmp114922))))
                                 (declare (not safe))
                                 (cons _phi105286_ __tmp114921)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in105267105279_
                              'gx#module-import::t))
                           (let ((_e105271105296_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in105267105279_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e105271105296_
                                    'gx#module-export::t))
                                 (let* ((_e105274105299_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105271105296_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx105302_ _e105274105299_)
                                        (_e105275105304_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105271105296_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key105307_ _e105275105304_)
                                        (_e105276105309_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105271105296_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi105312_ _e105276105309_)
                                        (_e105277105314_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105271105296_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name105317_ _e105277105314_)
                                        (_e105272105319_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105267105279_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name105322_ _e105272105319_)
                                        (_e105273105324_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105267105279_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi105327_ _e105273105324_))
                                   (declare (not safe))
                                   (_K105270105293_
                                    _phi105327_
                                    _name105322_
                                    _src-name105317_
                                    _src-phi105312_
                                    _src-key105307_
                                    _src-ctx105302_))
                                 (let ()
                                   (declare (not safe))
                                   (_E105269105283_))))
                           (let () (declare (not safe)) (_E105269105283_))))))
                  (_make-import-path105104_
                   (lambda (_ctx105264_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105264_
                        _context-chain105102_))))
                  (_make-import-spec-in105105_
                   (lambda (_ctx105261_ _in105262_)
                     (let ((__tmp114926
                            (let ((__tmp114928
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path105104_ _ctx105261_)))
                                  (__tmp114927 (reverse _in105262_)))
                              (declare (not safe))
                              (cons __tmp114928 __tmp114927))))
                       (declare (not safe))
                       (cons 'spec: __tmp114926)))))
          (let ((__tmp114929
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self105099_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp114929))
          (let* ((_g105107105117_
                  (lambda (_g105108105114_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105108105114_))))
                 (_g105106105258_
                  (lambda (_g105108105120_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105108105120_))
                        (let ((_e105112105122_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105108105120_))))
                          (let ((_hd105111105125_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105112105122_)))
                                (_tl105110105127_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105112105122_))))
                            ((lambda (_L105130_)
                               (let _lp105141_ ((_rest105143_ _L105130_)
                                                (_current-src105144_ '#f)
                                                (_current-in105145_ '())
                                                (_r105146_ '()))
                                 (let* ((_rest105147105155_ _rest105143_)
                                        (_else105149105165_
                                         (lambda ()
                                           (let* ((_r105163_
                                                   (if _current-src105144_
                                                       (let ((__tmp114930
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in105105_
                         _current-src105144_
                         _current-in105145_))))
                 (declare (not safe))
                 (cons __tmp114930 _r105146_))
               _r105146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp114931
                                                   (reverse _r105163_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp114931))))
                                        (_K105151105246_
                                         (lambda (_rest105168_ _in105169_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in105169_
                                                  'gx#module-import::t))
                                               (let* ((_in105170105177_
                                                       _in105169_)
                                                      (_E105172105181_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in105170105177_))))
              (_K105173105186_
               (lambda (_src-ctx105184_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src105144_ _src-ctx105184_))
                     (let ((__tmp114947
                            (let ((__tmp114948
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec105103_ _in105169_))))
                              (declare (not safe))
                              (cons __tmp114948 _current-in105145_))))
                       (declare (not safe))
                       (_lp105141_
                        _rest105168_
                        _current-src105144_
                        __tmp114947
                        _r105146_))
                     (if _current-src105144_
                         (let ((__tmp114945
                                (let ((__tmp114946
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105103_
                                          _in105169_))))
                                  (declare (not safe))
                                  (cons __tmp114946 '())))
                               (__tmp114943
                                (let ((__tmp114944
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in105105_
                                          _current-src105144_
                                          _current-in105145_))))
                                  (declare (not safe))
                                  (cons __tmp114944 _r105146_))))
                           (declare (not safe))
                           (_lp105141_
                            _rest105168_
                            _src-ctx105184_
                            __tmp114945
                            __tmp114943))
                         (let ((__tmp114941
                                (let ((__tmp114942
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105103_
                                          _in105169_))))
                                  (declare (not safe))
                                  (cons __tmp114942 '()))))
                           (declare (not safe))
                           (_lp105141_
                            _rest105168_
                            _src-ctx105184_
                            __tmp114941
                            _r105146_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in105170105177_
                                                        'gx#module-import::t))
                                                     (let ((_e105174105189_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in105170105177_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e105174105189_
                                                              'gx#module-export::t))
                                                           (let* ((_e105175105192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e105174105189_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx105195_ _e105175105192_))
                     (declare (not safe))
                     (_K105173105186_ _src-ctx105195_))
                   (let () (declare (not safe)) (_E105172105181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E105172105181_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in105169_
                                                      'gx#import-set::t))
                                                   (let* ((_phi105197_
                                                           (##direct-structure-ref
                                                            _in105169_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src105199_
                                                           (##direct-structure-ref
                                                            _in105169_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in105239_
                                                           (let* ((_g105200105209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path105104_ _src105199_)))
                          (_E105203105213_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g105200105209_)))))
                     (let ((_K105205105229_
                            (lambda (_path105227_) _path105227_))
                           (_K105204105219_
                            (lambda (_path105217_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path105217_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g105200105209_))
                           (let ((_tl105207105234_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g105200105209_)))
                                 (_hd105206105232_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g105200105209_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl105207105234_))
                                 (let ((_path105237_ _hd105206105232_))
                                   (declare (not safe))
                                   (_K105205105229_ _path105237_))
                                 (let ((_path105222_ _g105200105209_))
                                   (declare (not safe))
                                   (_K105204105219_ _path105222_))))
                           (let ((_path105222_ _g105200105209_))
                             (declare (not safe))
                             (_K105204105219_ _path105222_))))))
                  (_r105241_
                   (if _current-src105144_
                       (let ((__tmp114936
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in105105_
                                 _current-src105144_
                                 _current-in105145_))))
                         (declare (not safe))
                         (cons __tmp114936 _r105146_))
                       _r105146_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp114937
                                                            (let ((__tmp114938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi105197_))
                               _src-in105239_
                               (let ((__tmp114939
                                      (let ((__tmp114940
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in105239_ '()))))
                                        (declare (not safe))
                                        (cons _phi105197_ __tmp114940))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp114939)))))
                      (declare (not safe))
                      (cons __tmp114938 _r105241_))))
               (declare (not safe))
               (_lp105141_ _rest105168_ '#f '() __tmp114937)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in105169_
                                                          'gx#module-context::t))
                                                       (let* ((_r105244_
                                                               (if _current-src105144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114932
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in105105_
                                     _current-src105144_
                                     _current-in105145_))))
                             (declare (not safe))
                             (cons __tmp114932 _r105146_))
                           _r105146_))
                      (__tmp114933
                       (let ((__tmp114934
                              (let ((__tmp114935
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path105104_ _in105169_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp114935))))
                         (declare (not safe))
                         (cons __tmp114934 _r105244_))))
                 (declare (not safe))
                 (_lp105141_ _rest105168_ '#f '() __tmp114933))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest105147105155_))
                                       (let ((_hd105152105249_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest105147105155_)))
                                             (_tl105153105251_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest105147105155_))))
                                         (let* ((_in105254_ _hd105152105249_)
                                                (_rest105256_
                                                 _tl105153105251_))
                                           (declare (not safe))
                                           (_K105151105246_
                                            _rest105256_
                                            _in105254_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else105149105165_))))))
                             _tl105110105127_)))
                        (let ()
                          (declare (not safe))
                          (_g105107105117_ _g105108105120_))))))
            (declare (not safe))
            (_g105106105258_ _stx105100_)))))
    (define gxc#generate-meta-export%
      (lambda (_self104909_ _stx104910_)
        (letrec* ((_context-chain104912_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path104913_
                   (lambda (_ctx105097_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105097_
                        _context-chain104912_)))))
          (let* ((_g104915104925_
                  (lambda (_g104916104922_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104916104922_))))
                 (_g104914105094_
                  (lambda (_g104916104928_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104916104928_))
                        (let ((_e104920104930_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104916104928_))))
                          (let ((_hd104919104933_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104920104930_)))
                                (_tl104918104935_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104920104930_))))
                            ((lambda (_L104938_)
                               (let _lp104949_ ((_rest104951_ _L104938_)
                                                (_r104952_ '()))
                                 (let* ((_rest104953104961_ _rest104951_)
                                        (_else104955104969_
                                         (lambda ()
                                           (let ((__tmp114949
                                                  (reverse _r104952_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp114949))))
                                        (_K104957105082_
                                         (lambda (_rest104972_ _out104973_)
                                           (let* ((_out104974104987_
                                                   _out104973_)
                                                  (_E104977104991_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out104974104987_)))))
                                             (let ((_K104981105061_
                                                    (lambda (_name105057_
                                                             _phi105058_
                                                             _key105059_)
                                                      (let ((__tmp114950
                                                             (let ((__tmp114951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114952
                                   (let ((__tmp114953
                                          (let ((__tmp114956
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key105059_)))
                                                (__tmp114954
                                                 (let ((__tmp114955
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name105057_))))
                                                   (declare (not safe))
                                                   (cons __tmp114955 '()))))
                                            (declare (not safe))
                                            (cons __tmp114956 __tmp114954))))
                                     (declare (not safe))
                                     (cons _phi105058_ __tmp114953))))
                              (declare (not safe))
                              (cons 'spec: __tmp114952))))
                       (declare (not safe))
                       (cons __tmp114951 _r104952_))))
                (declare (not safe))
                (_lp104949_ _rest104972_ __tmp114950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K104978105041_
                                                    (lambda (_phi104995_
                                                             _src104996_)
                                                      (let* ((_out105036_
                                                              (if _src104996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114957
                                 (let ((__tmp114958
                                        (let* ((_g104997105006_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path104913_
                                                   _src104996_)))
                                               (_E105000105010_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g104997105006_)))))
                                          (let ((_K105002105026_
                                                 (lambda (_path105024_)
                                                   _path105024_))
                                                (_K105001105016_
                                                 (lambda (_path105014_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path105014_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g104997105006_))
                                                (let ((_tl105004105031_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g104997105006_)))
                                                      (_hd105003105029_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g104997105006_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl105004105031_))
                                                      (let ((_path105034_
                                                             _hd105003105029_))
                                                        (declare (not safe))
                                                        (_K105002105026_
                                                         _path105034_))
                                                      (let ((_path105019_
                                                             _g104997105006_))
                                                        (declare (not safe))
                                                        (_K105001105016_
                                                         _path105019_))))
                                                (let ((_path105019_
                                                       _g104997105006_))
                                                  (declare (not safe))
                                                  (_K105001105016_
                                                   _path105019_)))))))
                                   (declare (not safe))
                                   (cons __tmp114958 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp114957))
                          '#t))
                     (_out105038_
                      (if (let () (declare (not safe)) (fxzero? _phi104995_))
                          _out105036_
                          (let ((__tmp114959
                                 (let ((__tmp114960
                                        (let ()
                                          (declare (not safe))
                                          (cons _out105036_ '()))))
                                   (declare (not safe))
                                   (cons _phi104995_ __tmp114960))))
                            (declare (not safe))
                            (cons 'phi: __tmp114959)))))
                (let ((__tmp114961
                       (let ()
                         (declare (not safe))
                         (cons _out105038_ _r104952_))))
                  (declare (not safe))
                  (_lp104949_ _rest104972_ __tmp114961))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match104976105054_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out104974104987_
                                                               'gx#export-set::t))
                                                            (let* ((_e104979105044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104974104987_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e104980105049_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104974104987_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src105047_ _e104979105044_)
                            (_phi105052_ _e104980105049_))
                        (let ()
                          (declare (not safe))
                          (_K104978105041_ _phi105052_ _src105047_))))
                    (let () (declare (not safe)) (_E104977104991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out104974104987_
                                                        'gx#module-export::t))
                                                     (let* ((_e104982105064_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out104974104987_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e104983105067_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104974104987_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e104984105072_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104974104987_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e104985105077_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104974104987_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key105070_ _e104983105067_)
                     (_phi105075_ _e104984105072_)
                     (_name105080_ _e104985105077_))
                 (let ()
                   (declare (not safe))
                   (_K104981105061_ _name105080_ _phi105075_ _key105070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match104976105054_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104953104961_))
                                       (let ((_hd104958105085_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104953104961_)))
                                             (_tl104959105087_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104953104961_))))
                                         (let* ((_out105090_ _hd104958105085_)
                                                (_rest105092_
                                                 _tl104959105087_))
                                           (declare (not safe))
                                           (_K104957105082_
                                            _rest105092_
                                            _out105090_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104955104969_))))))
                             _tl104918104935_)))
                        (let ()
                          (declare (not safe))
                          (_g104915104925_ _g104916104928_))))))
            (declare (not safe))
            (_g104914105094_ _stx104910_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self104870_ _stx104871_)
        (let ((__tmp114962
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104870_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114962))
        (let* ((_g104873104883_
                (lambda (_g104874104880_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104874104880_))))
               (_g104872104906_
                (lambda (_g104874104886_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104874104886_))
                      (let ((_e104878104888_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104874104886_))))
                        (let ((_hd104877104891_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104878104888_)))
                              (_tl104876104893_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104878104888_))))
                          ((lambda (_L104896_)
                             (let ((__tmp114963
                                    (map gxc#generate-runtime-identifier
                                         _L104896_)))
                               (declare (not safe))
                               (cons '%#provide __tmp114963)))
                           _tl104876104893_)))
                      (let ()
                        (declare (not safe))
                        (_g104873104883_ _g104874104886_))))))
          (declare (not safe))
          (_g104872104906_ _stx104871_))))
    (define gxc#generate-meta-extern%
      (lambda (_self104741_ _stx104742_)
        (letrec ((_generate1104744_
                  (lambda (_id104865_ _eid104866_)
                    (let ((_eid104868_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid104866_))))
                      (if (interned-symbol? _eid104868_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx104742_
                             _eid104868_)))
                      (let ((__tmp114965
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id104865_)))
                            (__tmp114964
                             (let ()
                               (declare (not safe))
                               (cons _eid104868_ '()))))
                        (declare (not safe))
                        (cons __tmp114965 __tmp114964))))))
          (let* ((_g104746104774_
                  (lambda (_g104747104771_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104747104771_))))
                 (_g104745104862_
                  (lambda (_g104747104777_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104747104777_))
                        (let ((_e104752104779_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104747104777_))))
                          (let ((_hd104751104782_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104752104779_)))
                                (_tl104750104784_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104752104779_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl104750104784_))
                                (let ((_g114966_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl104750104784_
                                          '0))))
                                  (begin
                                    (let ((_g114967_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114966_)
                                                 (##vector-length _g114966_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114967_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114967_)))
                                    (let ((_target104753104787_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114966_ 0)))
                                          (_tl104755104789_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114966_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104755104789_))
                                          (letrec ((_loop104756104792_
                                                    (lambda (_hd104754104795_
                                                             _eid104760104797_
                                                             _id104761104799_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd104754104795_))
                                                          (let ((_e104757104802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd104754104795_))))
                    (let ((_lp-hd104758104805_
                           (let ()
                             (declare (not safe))
                             (##car _e104757104802_)))
                          (_lp-tl104759104807_
                           (let ()
                             (declare (not safe))
                             (##cdr _e104757104802_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd104758104805_))
                          (let ((_e104766104810_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd104758104805_))))
                            (let ((_hd104765104813_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104766104810_)))
                                  (_tl104764104815_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104766104810_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl104764104815_))
                                  (let ((_e104769104818_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl104764104815_))))
                                    (let ((_hd104768104821_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e104769104818_)))
                                          (_tl104767104823_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e104769104818_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104767104823_))
                                          (let ((__tmp114972
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104768104821_
                                                         _eid104760104797_)))
                                                (__tmp114971
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104765104813_
                                                         _id104761104799_))))
                                            (declare (not safe))
                                            (_loop104756104792_
                                             _lp-tl104759104807_
                                             __tmp114972
                                             __tmp114971))
                                          (let ()
                                            (declare (not safe))
                                            (_g104746104774_
                                             _g104747104777_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g104746104774_ _g104747104777_)))))
                          (let ()
                            (declare (not safe))
                            (_g104746104774_ _g104747104777_)))))
                  (let ((_eid104762104826_ (reverse _eid104760104797_))
                        (_id104763104828_ (reverse _id104761104799_)))
                    ((lambda (_L104831_ _L104832_)
                       (let ((__tmp114968
                              (map _generate1104744_
                                   (let ((__tmp114969
                                          (lambda (_g104847104850_
                                                   _g104848104852_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104847104850_
                                                    _g104848104852_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114969 '() _L104832_))
                                   (let ((__tmp114970
                                          (lambda (_g104854104857_
                                                   _g104855104859_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104854104857_
                                                    _g104855104859_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114970 '() _L104831_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp114968)))
                     _eid104762104826_
                     _id104763104828_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop104756104792_
                                               _target104753104787_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g104746104774_
                                             _g104747104777_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g104746104774_ _g104747104777_)))))
                        (let ()
                          (declare (not safe))
                          (_g104746104774_ _g104747104777_))))))
            (declare (not safe))
            (_g104745104862_ _stx104742_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self104531_ _stx104532_)
        (letrec ((_generate1104534_
                  (lambda (_id104736_)
                    (let ((_eid104738_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id104736_)))
                          (_ident104739_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id104736_))))
                      (let ((__tmp114973
                             (let ((__tmp114974
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid104738_ '()))))
                               (declare (not safe))
                               (cons _ident104739_ __tmp114974))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp114973)))))
                 (_generate*104535_
                  (lambda (_all104704_)
                    (let* ((_all104705104713_ _all104704_)
                           (_else104707104721_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all104704_))))
                           (_K104709104726_
                            (lambda (_one104724_) _one104724_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all104705104713_))
                          (let ((_hd104710104729_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all104705104713_)))
                                (_tl104711104731_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all104705104713_))))
                            (let ((_one104734_ _hd104710104729_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104711104731_))
                                  (let ()
                                    (declare (not safe))
                                    (_K104709104726_ _one104734_))
                                  (let ()
                                    (declare (not safe))
                                    (_else104707104721_)))))
                          (let ()
                            (declare (not safe))
                            (_else104707104721_)))))))
          (let* ((_g104537104554_
                  (lambda (_g104538104551_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104538104551_))))
                 (_g104536104701_
                  (lambda (_g104538104557_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104538104557_))
                        (let ((_e104543104559_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104538104557_))))
                          (let ((_hd104542104562_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104543104559_)))
                                (_tl104541104564_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104543104559_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104541104564_))
                                (let ((_e104546104567_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104541104564_))))
                                  (let ((_hd104545104570_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104546104567_)))
                                        (_tl104544104572_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104546104567_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104544104572_))
                                        (let ((_e104549104575_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104544104572_))))
                                          (let ((_hd104548104578_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104549104575_)))
                                                (_tl104547104580_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104549104575_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104547104580_))
                                                ((lambda (_L104583_ _L104584_)
                                                   (let _lp104600_ ((_rest104602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L104584_)
                            (_r104603_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx114117114118_
                                                             _rest104602_)
                                                            (_g104608104625_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx114117114118_)))))
               (let ((___kont114119114120_
                      (lambda (_L104688_)
                        (let ()
                          (declare (not safe))
                          (_lp104600_ _L104688_ _r104603_))))
                     (___kont114121114122_
                      (lambda (_L104661_ _L104662_)
                        (let ((__tmp114975
                               (let ((__tmp114976
                                      (let ()
                                        (declare (not safe))
                                        (_generate1104534_ _L104662_))))
                                 (declare (not safe))
                                 (cons __tmp114976 _r104603_))))
                          (declare (not safe))
                          (_lp104600_ _L104661_ __tmp114975))))
                     (___kont114123114124_
                      (lambda (_L104637_)
                        (let ((__tmp114977
                               (let ((__tmp114978
                                      (let ((__tmp114979
                                             (let ()
                                               (declare (not safe))
                                               (_generate1104534_ _L104637_))))
                                        (declare (not safe))
                                        (cons __tmp114979 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp114978 _r104603_))))
                          (declare (not safe))
                          (_generate*104535_ __tmp114977))))
                     (___kont114125114126_
                      (lambda ()
                        (let ((__tmp114980 (reverse _r104603_)))
                          (declare (not safe))
                          (_generate*104535_ __tmp114980)))))
                 (let ((_g104606104648_
                        (lambda ()
                          (let ((_L104637_ ___stx114117114118_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L104637_))
                                (___kont114123114124_ _L104637_)
                                (___kont114125114126_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx114117114118_))
                       (let ((_e104613104677_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx114117114118_))))
                         (let ((_tl104611104682_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e104613104677_)))
                               (_hd104612104680_
                                (let ()
                                  (declare (not safe))
                                  (##car _e104613104677_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd104612104680_))
                               (let ((_e104614104685_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd104612104680_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e104614104685_ '#f))
                                     (___kont114119114120_ _tl104611104682_)
                                     (___kont114121114122_
                                      _tl104611104682_
                                      _hd104612104680_)))
                               (___kont114121114122_
                                _tl104611104682_
                                _hd104612104680_))))
                       (let () (declare (not safe)) (_g104606104648_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd104548104578_
                                                 _hd104545104570_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104537104554_
                                                   _g104538104557_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104537104554_ _g104538104557_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104537104554_ _g104538104557_)))))
                        (let ()
                          (declare (not safe))
                          (_g104537104554_ _g104538104557_))))))
            (declare (not safe))
            (_g104536104701_ _stx104532_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self104428_ _stx104429_)
        (let* ((_g104431104448_
                (lambda (_g104432104445_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104432104445_))))
               (_g104430104528_
                (lambda (_g104432104451_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104432104451_))
                      (let ((_e104437104453_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104432104451_))))
                        (let ((_hd104436104456_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104437104453_)))
                              (_tl104435104458_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104437104453_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104435104458_))
                              (let ((_e104440104461_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104435104458_))))
                                (let ((_hd104439104464_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104440104461_)))
                                      (_tl104438104466_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104440104461_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104438104466_))
                                      (let ((_e104443104469_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104438104466_))))
                                        (let ((_hd104442104472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104443104469_)))
                                              (_tl104441104474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104443104469_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104441104474_))
                                              ((lambda (_L104477_ _L104478_)
                                                 (let* ((_eid104493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L104478_)))
                                                        (_phi104495_
                                                         (let ((__tmp114981
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp114981
                                                                '1)))
                                                        (_block104497_
                                                         (let ((__tmp114982
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self104428_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp114982 _phi104495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g104500104507_
                                                           (lambda (_g104501104504_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g104501104504_))))
                  (_g104499104525_
                   (lambda (_g104501104510_)
                     ((lambda (_L104512_)
                        (let ()
                          (let ((__tmp114987
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self104428_ 'state)))
                                (__tmp114983
                                 (let ((__tmp114986
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp114984
                                        (let ((__tmp114985
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L104477_ '()))))
                                          (declare (not safe))
                                          (cons _L104512_ __tmp114985))))
                                   (declare (not safe))
                                   (cons __tmp114986 __tmp114984))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp114987
                             _phi104495_
                             __tmp114983))))
                      _g104501104510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g104499104525_
                                                      _eid104493_))
                                                   (if _block104497_
                                                       (let ((__tmp114991
                                                              (let ((__tmp114997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114998
                                    (let ((__tmp114999
                                           (let ((__tmp115000
                                                  (let ((__tmp115004
                                                         (let ((__tmp115005
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp115005)))
                (__tmp115001
                 (let ((__tmp115002
                        (let ((__tmp115003
                               (let ()
                                 (declare (not safe))
                                 (cons _block104497_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp115003))))
                   (declare (not safe))
                   (cons __tmp115002 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115004
                                                          __tmp115001))))
                                             (declare (not safe))
                                             (cons '%#call __tmp115000))))
                                      (declare (not safe))
                                      (cons __tmp114999 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp114998)))
                            (__tmp114992
                             (let ((__tmp114993
                                    (let ((__tmp114994
                                           (let ((__tmp114996
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L104478_)))
                                                 (__tmp114995
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid104493_ '()))))
                                             (declare (not safe))
                                             (cons __tmp114996 __tmp114995))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp114994))))
                               (declare (not safe))
                               (cons __tmp114993 '()))))
                        (declare (not safe))
                        (cons __tmp114997 __tmp114992))))
                 (declare (not safe))
                 (cons '%#begin __tmp114991))
               (let ((__tmp114988
                      (let ((__tmp114990
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L104478_)))
                            (__tmp114989
                             (let ()
                               (declare (not safe))
                               (cons _eid104493_ '()))))
                        (declare (not safe))
                        (cons __tmp114990 __tmp114989))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp114988)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104442104472_
                                               _hd104439104464_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104431104448_
                                                 _g104432104451_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104431104448_ _g104432104451_)))))
                              (let ()
                                (declare (not safe))
                                (_g104431104448_ _g104432104451_)))))
                      (let ()
                        (declare (not safe))
                        (_g104431104448_ _g104432104451_))))))
          (declare (not safe))
          (_g104430104528_ _stx104429_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self104360_ _stx104361_)
        (let* ((_g104363104380_
                (lambda (_g104364104377_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104364104377_))))
               (_g104362104425_
                (lambda (_g104364104383_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104364104383_))
                      (let ((_e104369104385_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104364104383_))))
                        (let ((_hd104368104388_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104369104385_)))
                              (_tl104367104390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104369104385_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104367104390_))
                              (let ((_e104372104393_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104367104390_))))
                                (let ((_hd104371104396_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104372104393_)))
                                      (_tl104370104398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104372104393_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104370104398_))
                                      (let ((_e104375104401_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104370104398_))))
                                        (let ((_hd104374104404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104375104401_)))
                                              (_tl104373104406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104375104401_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104373104406_))
                                              ((lambda (_L104409_ _L104410_)
                                                 (let ((__tmp115006
                                                        (let ((__tmp115009
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L104410_)))
                      (__tmp115007
                       (let ((__tmp115008
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L104409_))))
                         (declare (not safe))
                         (cons __tmp115008 '()))))
                  (declare (not safe))
                  (cons __tmp115009 __tmp115007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp115006)))
                                               _hd104374104404_
                                               _hd104371104396_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104363104380_
                                                 _g104364104383_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104363104380_ _g104364104383_)))))
                              (let ()
                                (declare (not safe))
                                (_g104363104380_ _g104364104383_)))))
                      (let ()
                        (declare (not safe))
                        (_g104363104380_ _g104364104383_))))))
          (declare (not safe))
          (_g104362104425_ _stx104361_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self104357_ _stx104358_)
        (let ((__tmp115011
               (let () (declare (not safe)) (slot-ref__0 _self104357_ 'state)))
              (__tmp115010 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp115011 __tmp115010 _stx104358_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self104357_ _stx104358_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self104354_ _stx104355_)
        (let ((__tmp115013
               (let () (declare (not safe)) (slot-ref__0 _self104354_ 'state)))
              (__tmp115012 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp115013 __tmp115012 _stx104355_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp115016 (list))
            (__tmp115014
             (let ((__tmp115015
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115015 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp115016
         '(src n open blocks)
         __tmp115014
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args104351_
        (apply make-instance gxc#meta-state::t _$args104351_)))
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
      (lambda (_self104348_ _ctx104349_)
        (if (let ((__tmp115025
                   (let ()
                     (declare (not safe))
                     (##structure-length _self104348_))))
              (declare (not safe))
              (##fx< '4 __tmp115025))
            (begin
              (let ((__tmp115019
                     (let ((__tmp115020
                            (##structure-ref
                             _ctx104349_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp115020)))
                    (__tmp115018
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104348_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104348_
                 __tmp115019
                 '1
                 __tmp115018
                 '#f))
              (let ((__tmp115021
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104348_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104348_
                 '1
                 '2
                 __tmp115021
                 '#f))
              (let ((__tmp115023
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115022
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104348_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104348_
                 __tmp115023
                 '3
                 __tmp115022
                 '#f))
              (let ((__tmp115024
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104348_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104348_
                 '()
                 '4
                 __tmp115024
                 '#f)))
            (let ((__tmp115017
                   (let ()
                     (declare (not safe))
                     (##vector-length _self104348_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self104348_
                     '4
                     __tmp115017)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp115028 (list))
            (__tmp115026
             (let ((__tmp115027
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115027 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp115028
         '(ctx phi n code)
         __tmp115026
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args104223_
        (apply make-instance gxc#meta-state-block::t _$args104223_)))
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
      (lambda (_state104182_ _phi104183_)
        (let* ((_state104184104192_ _state104182_)
               (_E104186104196_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state104184104192_))))
               (_K104187104205_
                (lambda (_open104199_ _n104200_ _src104201_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open104199_ _phi104183_))
                      '#f
                      (let ((_block-ref104203_
                             (string-append
                              _src104201_
                              '"~"
                              (number->string _n104200_))))
                        (##structure-set!
                         _state104182_
                         (let () (declare (not safe)) (fx+ _n104200_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp115029
                               (let ((__tmp115030
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp115030
                                  _phi104183_
                                  _n104200_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open104199_ _phi104183_ __tmp115029))
                        _block-ref104203_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state104184104192_
                 'gxc#meta-state::t))
              (let* ((_e104188104208_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104184104192_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src104211_ _e104188104208_)
                     (_e104189104213_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104184104192_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n104216_ _e104189104213_)
                     (_e104190104218_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104184104192_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open104221_ _e104190104218_))
                (declare (not safe))
                (_K104187104205_ _open104221_ _n104216_ _src104211_))
              (let () (declare (not safe)) (_E104186104196_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state104176_ _phi104177_ _stx104178_)
        (let ((_block104180_
               (let ((__tmp115031
                      (##structure-ref
                       _state104176_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp115031 _phi104177_))))
          (##structure-set!
           _block104180_
           (let ((__tmp115032
                  (##structure-ref
                   _block104180_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx104178_ __tmp115032))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state104171_)
        (##structure-set!
         _state104171_
         (let ((__tmp115035
                (lambda (_g115036_ _block104173_ _r104174_)
                  (let ()
                    (declare (not safe))
                    (cons _block104173_ _r104174_))))
               (__tmp115034
                (##structure-ref _state104171_ '4 gxc#meta-state::t '#f))
               (__tmp115033
                (##structure-ref _state104171_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp115035 __tmp115034 __tmp115033))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state104171_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state104123_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state104123_))
        (let ((__tmp115038
               (lambda (_block104125_ _r104126_)
                 (let* ((_block104127104136_ _block104125_)
                        (_E104129104140_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block104127104136_))))
                        (_K104130104148_
                         (lambda (_code104143_
                                  _n104144_
                                  _phi104145_
                                  _ctx104146_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code104143_))
                               _r104126_
                               (let ((__tmp115039
                                      (let ((__tmp115040
                                             (let ((__tmp115041
                                                    (let ((__tmp115042
                                                           (let ((__tmp115043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp115044 (reverse _code104143_)))
                            (declare (not safe))
                            (cons '%#begin __tmp115044))))
                     (declare (not safe))
                     (cons __tmp115043 '()))))
              (declare (not safe))
              (cons _n104144_ __tmp115042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi104145_
                                                     __tmp115041))))
                                        (declare (not safe))
                                        (cons _ctx104146_ __tmp115040))))
                                 (declare (not safe))
                                 (cons __tmp115039 _r104126_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block104127104136_
                          'gxc#meta-state-block::t))
                       (let* ((_e104131104151_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104127104136_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx104154_ _e104131104151_)
                              (_e104132104156_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104127104136_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi104159_ _e104132104156_)
                              (_e104133104161_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104127104136_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n104164_ _e104133104161_)
                              (_e104134104166_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104127104136_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code104169_ _e104134104166_))
                         (declare (not safe))
                         (_K104130104148_
                          _code104169_
                          _n104164_
                          _phi104159_
                          _ctx104154_))
                       (let () (declare (not safe)) (_E104129104140_))))))
              (__tmp115037
               (##structure-ref _state104123_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp115038 '() __tmp115037))))
    (define gxc#collect-expression-refs
      (lambda (_stx104119_)
        (let ((_ht104121_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx104119_ 'table: _ht104121_))
          _ht104121_)))
    (define gxc#collect-refs-ref%
      (lambda (_self104062_ _stx104063_)
        (let* ((_g104065104078_
                (lambda (_g104066104075_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104066104075_))))
               (_g104064104116_
                (lambda (_g104066104081_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104066104081_))
                      (let ((_e104070104083_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104066104081_))))
                        (let ((_hd104069104086_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104070104083_)))
                              (_tl104068104088_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104070104083_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104068104088_))
                              (let ((_e104073104091_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104068104088_))))
                                (let ((_hd104072104094_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104073104091_)))
                                      (_tl104071104096_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104073104091_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl104071104096_))
                                      ((lambda (_L104099_)
                                         (let* ((_bind104111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L104099_)))
                                                (_eid104113_
                                                 (if _bind104111_
                                                     (##structure-ref
                                                      _bind104111_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L104099_)))))
                                           (let ((__tmp115045
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self104062_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp115045
                                              _eid104113_
                                              _eid104113_))))
                                       _hd104072104094_)
                                      (let ()
                                        (declare (not safe))
                                        (_g104065104078_ _g104066104081_)))))
                              (let ()
                                (declare (not safe))
                                (_g104065104078_ _g104066104081_)))))
                      (let ()
                        (declare (not safe))
                        (_g104065104078_ _g104066104081_))))))
          (declare (not safe))
          (_g104064104116_ _stx104063_))))
    (define gxc#collect-refs-setq%
      (lambda (_self103989_ _stx103990_)
        (let* ((_g103992104009_
                (lambda (_g103993104006_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103993104006_))))
               (_g103991104059_
                (lambda (_g103993104012_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103993104012_))
                      (let ((_e103998104014_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103993104012_))))
                        (let ((_hd103997104017_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103998104014_)))
                              (_tl103996104019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103998104014_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103996104019_))
                              (let ((_e104001104022_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103996104019_))))
                                (let ((_hd104000104025_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104001104022_)))
                                      (_tl103999104027_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104001104022_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103999104027_))
                                      (let ((_e104004104030_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103999104027_))))
                                        (let ((_hd104003104033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104004104030_)))
                                              (_tl104002104035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104004104030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104002104035_))
                                              ((lambda (_L104038_ _L104039_)
                                                 (let* ((_bind104054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L104039_)))
                                                        (_eid104056_
                                                         (if _bind104054_
                                                             (##structure-ref
                                                              _bind104054_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L104039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp115046
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self103989_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp115046
                                                      _eid104056_
                                                      _eid104056_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self103989_
                                                      _L104038_))))
                                               _hd104003104033_
                                               _hd104000104025_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103992104009_
                                                 _g103993104012_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103992104009_ _g103993104012_)))))
                              (let ()
                                (declare (not safe))
                                (_g103992104009_ _g103993104012_)))))
                      (let ()
                        (declare (not safe))
                        (_g103992104009_ _g103993104012_))))))
          (declare (not safe))
          (_g103991104059_ _stx103990_))))
    (define gxc#find-runtime-begin%
      (lambda (_self103946_ _stx103947_)
        (let* ((_g103949103959_
                (lambda (_g103950103956_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103950103956_))))
               (_g103948103986_
                (lambda (_g103950103962_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103950103962_))
                      (let ((_e103954103964_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103950103962_))))
                        (let ((_hd103953103967_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103954103964_)))
                              (_tl103952103969_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103954103964_))))
                          ((lambda (_L103972_)
                             (let ((__tmp115047
                                    (lambda (_g103981103983_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103946_
                                         _g103981103983_)))))
                               (declare (not safe))
                               (ormap1 __tmp115047 _L103972_)))
                           _tl103952103969_)))
                      (let ()
                        (declare (not safe))
                        (_g103949103959_ _g103950103962_))))))
          (declare (not safe))
          (_g103948103986_ _stx103947_))))
    (define gxc#count-values-single% (lambda (_self103943_ _stx103944_) '1))
    (define gxc#count-values-call%
      (lambda (_self103809_ _stx103810_)
        (let* ((___stx114147114148_ _stx103810_)
               (_g103813103842_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx114147114148_)))))
          (let ((___kont114149114150_
                 (lambda (_L103910_ _L103911_)
                   (length (let ((__tmp115048
                                  (lambda (_g103932103935_ _g103933103937_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g103932103935_
                                            _g103933103937_)))))
                             (declare (not safe))
                             (foldr1 __tmp115048 '() _L103910_)))))
                (___kont114153114154_ (lambda () '#f)))
            (let ((___match114192114193_
                   (lambda (_e103819103854_
                            _hd103818103857_
                            _tl103817103859_
                            _e103822103862_
                            _hd103821103865_
                            _tl103820103867_
                            _e103825103870_
                            _hd103824103873_
                            _tl103823103875_
                            _e103828103878_
                            _hd103827103881_
                            _tl103826103883_
                            ___splice114151114152_
                            _target103829103886_
                            _tl103831103888_)
                     (letrec ((_loop103832103891_
                               (lambda (_hd103830103894_ _rand103836103896_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103830103894_))
                                     (let ((_e103833103899_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103830103894_))))
                                       (let ((_lp-tl103835103904_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103833103899_)))
                                             (_lp-hd103834103902_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103833103899_))))
                                         (let ((__tmp115049
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd103834103902_
                                                        _rand103836103896_))))
                                           (declare (not safe))
                                           (_loop103832103891_
                                            _lp-tl103835103904_
                                            __tmp115049))))
                                     (let ((_rand103837103907_
                                            (reverse _rand103836103896_)))
                                       (let ((_L103910_ _rand103837103907_)
                                             (_L103911_ _hd103827103881_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L103911_
                                                'values))
                                             (___kont114149114150_
                                              _L103910_
                                              _L103911_)
                                             (___kont114153114154_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop103832103891_ _target103829103886_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx114147114148_))
                  (let ((_e103819103854_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx114147114148_))))
                    (let ((_tl103817103859_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103819103854_)))
                          (_hd103818103857_
                           (let ()
                             (declare (not safe))
                             (##car _e103819103854_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103817103859_))
                          (let ((_e103822103862_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103817103859_))))
                            (let ((_tl103820103867_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103822103862_)))
                                  (_hd103821103865_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103822103862_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103821103865_))
                                  (let ((_e103825103870_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103821103865_))))
                                    (let ((_tl103823103875_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103825103870_)))
                                          (_hd103824103873_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103825103870_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103824103873_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103824103873_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103823103875_))
                                                  (let ((_e103828103878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103823103875_))))
                                                    (let ((_tl103826103883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103828103878_)))
                                                          (_hd103827103881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103828103878_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103826103883_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103820103867_))
                      (let ((___splice114151114152_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103820103867_ '0))))
                        (let ((_tl103831103888_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114151114152_ '1)))
                              (_target103829103886_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114151114152_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103831103888_))
                              (___match114192114193_
                               _e103819103854_
                               _hd103818103857_
                               _tl103817103859_
                               _e103822103862_
                               _hd103821103865_
                               _tl103820103867_
                               _e103825103870_
                               _hd103824103873_
                               _tl103823103875_
                               _e103828103878_
                               _hd103827103881_
                               _tl103826103883_
                               ___splice114151114152_
                               _target103829103886_
                               _tl103831103888_)
                              (___kont114153114154_))))
                      (___kont114153114154_))
                  (___kont114153114154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114153114154_))
                                              (___kont114153114154_))
                                          (___kont114153114154_))))
                                  (___kont114153114154_))))
                          (___kont114153114154_))))
                  (___kont114153114154_)))))))
    (define gxc#count-values-if%
      (lambda (_self103712_ _stx103713_)
        (let* ((_g103715103736_
                (lambda (_g103716103733_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103716103733_))))
               (_g103714103806_
                (lambda (_g103716103739_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103716103739_))
                      (let ((_e103722103741_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103716103739_))))
                        (let ((_hd103721103744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103722103741_)))
                              (_tl103720103746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103722103741_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103720103746_))
                              (let ((_e103725103749_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103720103746_))))
                                (let ((_hd103724103752_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103725103749_)))
                                      (_tl103723103754_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103725103749_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103723103754_))
                                      (let ((_e103728103757_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103723103754_))))
                                        (let ((_hd103727103760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103728103757_)))
                                              (_tl103726103762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103728103757_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103726103762_))
                                              (let ((_e103731103765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103726103762_))))
                                                (let ((_hd103730103768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103731103765_)))
                                                      (_tl103729103770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103731103765_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103729103770_))
                                                      ((lambda (_L103773_
                                                                _L103774_
                                                                _L103775_)
                                                         (let ((_c1103792103794_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self103712_ _L103774_))))
                   (if _c1103792103794_
                       (let* ((_c1103797_ _c1103792103794_)
                              (_c2103798103800_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103712_ _L103773_))))
                         (if _c2103798103800_
                             (let ((_c2103803_ _c2103798103800_))
                               (if (fx= _c1103797_ _c2103803_) _c1103797_ '#f))
                             '#f))
                       '#f)))
               _hd103730103768_
               _hd103727103760_
               _hd103724103752_)
              (let ()
                (declare (not safe))
                (_g103715103736_ _g103716103739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103715103736_
                                                 _g103716103739_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103715103736_ _g103716103739_)))))
                              (let ()
                                (declare (not safe))
                                (_g103715103736_ _g103716103739_)))))
                      (let ()
                        (declare (not safe))
                        (_g103715103736_ _g103716103739_))))))
          (declare (not safe))
          (_g103714103806_ _stx103713_))))))
