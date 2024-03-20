(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710943026)
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
        (letrec ((_hash-e112868_
                  (lambda (_id112870_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id112870_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e112868_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp114226 (list gxc#::void::t))
            (__tmp114224
             (let ((__tmp114225
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114225 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp114226
         '()
         __tmp114224
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args112864_
        (apply make-instance gxc#::collect-bindings::t _$args112864_)))
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
      (lambda (_stx112856_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self112859_
                (let ((__obj114200
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj114200))
               (__tmp114227
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112859_ _stx112856_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114227
           gxc#current-compile-method
           _self112859_))))
    (define gxc#::lift-modules::t
      (let ((__tmp114230 (list gxc#::void::t))
            (__tmp114228
             (let ((__tmp114229
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114229 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp114230
         '(modules)
         __tmp114228
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args112853_
        (apply make-instance gxc#::lift-modules::t _$args112853_)))
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
      (lambda (_g114231_ _modules112824112827_ _stx112829_)
        (let ((_modules112832_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules112824112827_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules112824112827_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self112834_
                  (let ((__obj114202
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114202
                       _modules112832_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj114202))
                 (__tmp114232
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112834_ _stx112829_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114232
             gxc#current-compile-method
             _self112834_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys112823112841_ . _args112843_)
        (apply gxc#apply-lift-modules__%
               _keys112823112841_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112823112841_
                  'modules:
                  absent-value))
               _args112843_)))
    (define gxc#apply-lift-modules
      (lambda _args112825112849_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args112825112849_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp114235 (list))
            (__tmp114233
             (let ((__tmp114234
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114234 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp114235
         '()
         __tmp114233
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args112819_
        (apply make-instance gxc#::find-runtime-code::t _$args112819_)))
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
      (lambda (_stx112811_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self112814_
                (let ((__obj114204
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj114204))
               (__tmp114236
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112814_ _stx112811_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114236
           gxc#current-compile-method
           _self112814_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp114239 (list gxc#::false::t))
            (__tmp114237
             (let ((__tmp114238
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114238 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp114239
         '()
         __tmp114237
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args112808_
        (apply make-instance gxc#::find-lambda-expression::t _$args112808_)))
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
      (lambda (_stx112800_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self112803_
                (let ((__obj114206
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj114206))
               (__tmp114240
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112803_ _stx112800_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114240
           gxc#current-compile-method
           _self112803_))))
    (define gxc#::count-values::t
      (let ((__tmp114243 (list gxc#::false-expression::t))
            (__tmp114241
             (let ((__tmp114242
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114242 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp114243
         '()
         __tmp114241
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args112797_
        (apply make-instance gxc#::count-values::t _$args112797_)))
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
      (lambda (_stx112789_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self112792_
                (let ((__obj114208
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj114208))
               (__tmp114244
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112792_ _stx112789_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114244
           gxc#current-compile-method
           _self112792_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp114245 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp114245
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args112786_
        (apply make-instance gxc#::generate-runtime-empty::t _$args112786_)))
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
      (let ((__tmp114248 (list gxc#::generate-runtime-empty::t))
            (__tmp114246
             (let ((__tmp114247
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114247 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp114248
         '()
         __tmp114246
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args112782_
        (apply make-instance gxc#::generate-loader::t _$args112782_)))
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
      (lambda (_stx112774_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self112777_
                (let ((__obj114211
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj114211))
               (__tmp114249
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112777_ _stx112774_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114249
           gxc#current-compile-method
           _self112777_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp114250 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp114250
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args112771_
        (apply make-instance gxc#::generate-runtime::t _$args112771_)))
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
      (lambda (_stx112763_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self112766_
                (let ((__obj114213
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj114213))
               (__tmp114251
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112766_ _stx112763_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114251
           gxc#current-compile-method
           _self112766_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp114254 (list gxc#::generate-runtime::t))
            (__tmp114252
             (let ((__tmp114253
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114253 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp114254
         '()
         __tmp114252
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args112760_
        (apply make-instance gxc#::generate-runtime-phi::t _$args112760_)))
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
      (lambda (_stx112752_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self112755_
                (let ((__obj114215
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj114215))
               (__tmp114255
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112755_ _stx112752_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114255
           gxc#current-compile-method
           _self112755_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp114256 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp114256
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args112749_
        (apply make-instance gxc#::collect-expression-refs::t _$args112749_)))
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
      (lambda (_g114257_ _table112720112723_ _stx112725_)
        (let ((_table112728_
               (if (let ()
                     (declare (not safe))
                     (eq? _table112720112723_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table112720112723_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self112730_
                  (let ((__obj114217
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114217
                       _table112728_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj114217))
                 (__tmp114258
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112730_ _stx112725_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114258
             gxc#current-compile-method
             _self112730_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys112719112737_ . _args112739_)
        (apply gxc#apply-collect-expression-refs__%
               _keys112719112737_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112719112737_ 'table: absent-value))
               _args112739_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args112721112745_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args112721112745_)))
    (define gxc#::generate-meta::t
      (let ((__tmp114261 (list gxc#::void-expression::t))
            (__tmp114259
             (let ((__tmp114260
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114260 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp114261
         '(state)
         __tmp114259
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args112715_
        (apply make-instance gxc#::generate-meta::t _$args112715_)))
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
      (lambda (_g114262_ _state112686112689_ _stx112691_)
        (let ((_state112694_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112686112689_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112686112689_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self112696_
                  (let ((__obj114219
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114219
                       _state112694_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj114219))
                 (__tmp114263
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112696_ _stx112691_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114263
             gxc#current-compile-method
             _self112696_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys112685112703_ . _args112705_)
        (apply gxc#apply-generate-meta__%
               _keys112685112703_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112685112703_ 'state: absent-value))
               _args112705_)))
    (define gxc#apply-generate-meta
      (lambda _args112687112711_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args112687112711_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp114266 (list))
            (__tmp114264
             (let ((__tmp114265
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114265 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp114266
         '(state)
         __tmp114264
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args112681_
        (apply make-instance gxc#::generate-meta-phi::t _$args112681_)))
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
      (lambda (_g114267_ _state112652112655_ _stx112657_)
        (let ((_state112660_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112652112655_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112652112655_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self112662_
                  (let ((__obj114221
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114221
                       _state112660_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj114221))
                 (__tmp114268
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112662_ _stx112657_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114268
             gxc#current-compile-method
             _self112662_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys112651112669_ . _args112671_)
        (apply gxc#apply-generate-meta-phi__%
               _keys112651112669_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112651112669_ 'state: absent-value))
               _args112671_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args112653112677_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args112653112677_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self112580_ _stx112581_)
        (let* ((_g112583112600_
                (lambda (_g112584112597_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112584112597_))))
               (_g112582112647_
                (lambda (_g112584112603_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112584112603_))
                      (let ((_e112589112605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112584112603_))))
                        (let ((_hd112588112608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112589112605_)))
                              (_tl112587112610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112589112605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112587112610_))
                              (let ((_e112592112613_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112587112610_))))
                                (let ((_hd112591112616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112592112613_)))
                                      (_tl112590112618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112592112613_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112590112618_))
                                      (let ((_e112595112621_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112590112618_))))
                                        (let ((_hd112594112624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112595112621_)))
                                              (_tl112593112626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112595112621_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112593112626_))
                                              ((lambda (_L112629_ _L112630_)
                                                 (let ((__tmp114269
                                                        (lambda (_bind112645_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind112645_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind112645_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp114269
                                                    _L112630_)))
                                               _hd112594112624_
                                               _hd112591112616_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112583112600_
                                                 _g112584112603_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112583112600_ _g112584112603_)))))
                              (let ()
                                (declare (not safe))
                                (_g112583112600_ _g112584112603_)))))
                      (let ()
                        (declare (not safe))
                        (_g112583112600_ _g112584112603_))))))
          (declare (not safe))
          (_g112582112647_ _stx112581_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self112512_ _stx112513_)
        (let* ((_g112515112532_
                (lambda (_g112516112529_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112516112529_))))
               (_g112514112577_
                (lambda (_g112516112535_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112516112535_))
                      (let ((_e112521112537_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112516112535_))))
                        (let ((_hd112520112540_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112521112537_)))
                              (_tl112519112542_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112521112537_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112519112542_))
                              (let ((_e112524112545_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112519112542_))))
                                (let ((_hd112523112548_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112524112545_)))
                                      (_tl112522112550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112524112545_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112522112550_))
                                      (let ((_e112527112553_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112522112550_))))
                                        (let ((_hd112526112556_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112527112553_)))
                                              (_tl112525112558_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112527112553_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112525112558_))
                                              ((lambda (_L112561_ _L112562_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L112562_
                                                    '#t)))
                                               _hd112526112556_
                                               _hd112523112548_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112515112532_
                                                 _g112516112535_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112515112532_ _g112516112535_)))))
                              (let ()
                                (declare (not safe))
                                (_g112515112532_ _g112516112535_)))))
                      (let ()
                        (declare (not safe))
                        (_g112515112532_ _g112516112535_))))))
          (declare (not safe))
          (_g112514112577_ _stx112513_))))
    (define gxc#lift-modules-module%
      (lambda (_self112454_ _stx112455_)
        (let* ((_g112457112471_
                (lambda (_g112458112468_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112458112468_))))
               (_g112456112509_
                (lambda (_g112458112474_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112458112474_))
                      (let ((_e112463112476_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112458112474_))))
                        (let ((_hd112462112479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112463112476_)))
                              (_tl112461112481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112463112476_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112461112481_))
                              (let ((_e112466112484_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112461112481_))))
                                (let ((_hd112465112487_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112466112484_)))
                                      (_tl112464112489_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112466112484_))))
                                  ((lambda (_L112492_ _L112493_)
                                     (let ((_ctx112506_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L112493_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self112454_ 'modules))
                                        (let ((__tmp114270
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self112454_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx112506_ __tmp114270)))
                                       (let ((__tmp114271
                                              (lambda ()
                                                (let ((__tmp114272
                                                       (##structure-ref
                                                        _ctx112506_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self112454_
                                                   __tmp114272)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp114271
                                          gx#current-expander-context
                                          _ctx112506_))))
                                   _tl112464112489_
                                   _hd112465112487_)))
                              (let ()
                                (declare (not safe))
                                (_g112457112471_ _g112458112474_)))))
                      (let ()
                        (declare (not safe))
                        (_g112457112471_ _g112458112474_))))))
          (declare (not safe))
          (_g112456112509_ _stx112455_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls112410112412_ (gxc#current-compile-decls)))
          (if _decls112410112412_
              (let ((_decls112415_ _decls112410112412_))
                (let _lp112417_ ((_rest112419_ _decls112415_))
                  (let* ((_rest112420112428_ _rest112419_)
                         (_else112422112436_ (lambda () '#f))
                         (_K112424112442_
                          (lambda (_decls112439_ _decl112440_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl112440_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl112440_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp112417_ _decls112439_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest112420112428_))
                        (let ((_hd112425112445_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest112420112428_)))
                              (_tl112426112447_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest112420112428_))))
                          (let* ((_decl112450_ _hd112425112445_)
                                 (_decls112452_ _tl112426112447_))
                            (declare (not safe))
                            (_K112424112442_ _decls112452_ _decl112450_)))
                        (let () (declare (not safe)) (_else112422112436_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id112404_ _syntax?112405_)
        (let ((_eid112407_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id112404_))
                '1
                gx#binding::t
                '#f))
              (_ht112408_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid112407_)
              '#!void
              (let ((__tmp114273
                     (let ((__tmp114274
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid112407_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp114274 _syntax?112405_))))
                (declare (not safe))
                (hash-put! _ht112408_ _eid112407_ __tmp114273))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1112397_ _id2112398_)
        (letrec ((_symbol-e112400_
                  (lambda (_id112402_)
                    (if (let () (declare (not safe)) (symbol? _id112402_))
                        _id112402_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id112402_))))))
          (let ((__tmp114276
                 (let () (declare (not safe)) (_symbol-e112400_ _id1112397_)))
                (__tmp114275
                 (let () (declare (not safe)) (_symbol-e112400_ _id2112398_))))
            (declare (not safe))
            (eq? __tmp114276 __tmp114275)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id112375_)
        (let ((_$e112377_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id112375_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id112375_))
                   '#f)))
          (if _$e112377_
              ((lambda (_bind112380_)
                 (let ((_eid112382_
                        (##structure-ref _bind112380_ '1 gx#binding::t '#f))
                       (_ht112383_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid112382_)
                       _eid112382_
                       (let ((_$e112385_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht112383_ _eid112382_))))
                         (if _$e112385_
                             (values _$e112385_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind112380_
                                    'gx#local-binding::t))
                                 (let ((_gid112388_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid112382_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht112383_
                                      _eid112382_
                                      _gid112388_))
                                   _gid112388_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind112380_
                                        'gx#module-binding::t))
                                     (let ((_gid112395_
                                            (let ((_$e112390_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind112380_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e112390_
                                                  ((lambda (_ns112393_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns112393_
                                                        '"#"
                                                        _eid112382_)))
                                                   _$e112390_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid112382_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht112383_
                                          _eid112382_
                                          _gid112395_))
                                       _gid112395_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id112375_
                                        _eid112382_
                                        _bind112380_)))))))))
               _$e112377_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id112375_)))
                  (let () (declare (not safe)) (gx#stx-e _id112375_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id112375_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id112373_)
        (if (let () (declare (not safe)) (gx#identifier? _id112373_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id112373_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym112353_ _quote?112354_)
        (let* ((_ht112356_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e112358_
                (let ()
                  (declare (not safe))
                  (hash-get _ht112356_ _sym112353_))))
          (if _$e112358_
              (values _$e112358_)
              (let ((_g112361_
                     (if _quote?112354_
                         (let ((__tmp114277 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym112353_
                            '"__"
                            __tmp114277))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym112353_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht112356_ _sym112353_ _g112361_))
                _g112361_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym112366_)
        (let ((_quote?112368_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym112366_
           _quote?112368_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g114279_
        (let ((_g114278_ (let () (declare (not safe)) (##length _g114279_))))
          (cond ((let () (declare (not safe)) (##fx= _g114278_ 1))
                 (apply (lambda (_sym112366_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym112366_)))
                        _g114279_))
                ((let () (declare (not safe)) (##fx= _g114278_ 2))
                 (apply (lambda (_sym112370_ _quote?112371_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym112370_
                             _quote?112371_)))
                        _g114279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g114279_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id112350_)
        (let ((__tmp114280
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id112350_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp114280))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key112310_)
        (if (interned-symbol? _key112310_)
            _key112310_
            (if (uninterned-symbol? _key112310_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key112310_))
                (let* ((_key112311112318_ _key112310_)
                       (_E112313112322_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key112311112318_))))
                       (_K112314112338_
                        (lambda (_mark112325_ _eid112326_)
                          (let ((_$e112328_
                                 (##structure-ref
                                  _mark112325_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e112328_
                                ((lambda (_ht112331_)
                                   (let ((_$e112333_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht112331_
                                             _eid112326_))))
                                     (if _$e112333_
                                         ((lambda (_id112336_)
                                            (if (interned-symbol? _id112336_)
                                                _id112336_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id112336_))))
                                          _$e112333_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid112326_)))))
                                 _$e112328_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid112326_)))))))
                  (if (let () (declare (not safe)) (##pair? _key112311112318_))
                      (let ((_hd112315112341_
                             (let ()
                               (declare (not safe))
                               (##car _key112311112318_)))
                            (_tl112316112343_
                             (let ()
                               (declare (not safe))
                               (##cdr _key112311112318_))))
                        (let* ((_eid112346_ _hd112315112341_)
                               (_mark112348_ _tl112316112343_))
                          (declare (not safe))
                          (_K112314112338_ _mark112348_ _eid112346_)))
                      (let () (declare (not safe)) (_E112313112322_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top112297_)
        (if _top112297_
            (let ((_ns112299_
                   (##structure-ref
                    (let ((__tmp114282 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp114282))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi112300_ (gx#current-expander-phi)))
              (if _ns112299_
                  (if (fxpositive? _phi112300_)
                      (let ((__tmp114288 (number->string _phi112300_))
                            (__tmp114287 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns112299_
                         '"["
                         __tmp114288
                         '"]#_"
                         __tmp114287
                         '"_"))
                      (let ((__tmp114286 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns112299_ '"#_" __tmp114286 '"_")))
                  (if (fxpositive? _phi112300_)
                      (let ((__tmp114285 (number->string _phi112300_))
                            (__tmp114284 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp114285
                         '"]#_"
                         __tmp114284
                         '"_"))
                      (let ((__tmp114283 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp114283 '"_")))))
            (let ((__tmp114281 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp114281 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top112306_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top112306_))))
    (define gxc#generate-runtime-temporary
      (lambda _g114290_
        (let ((_g114289_ (let () (declare (not safe)) (##length _g114290_))))
          (cond ((let () (declare (not safe)) (##fx= _g114289_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g114290_))
                ((let () (declare (not safe)) (##fx= _g114289_ 1))
                 (apply (lambda (_top112308_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top112308_)))
                        _g114290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g114290_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self112293_ _stx112294_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self112140_ _stx112141_)
        (letrec ((_simplify112143_
                  (lambda (_body112191_)
                    (let _lp112193_ ((_rest112195_ _body112191_)
                                     (_r112196_ '()))
                      (let* ((_rest112197112205_ _rest112195_)
                             (_else112199112213_
                              (lambda () (reverse _r112196_)))
                             (_K112201112281_
                              (lambda (_rest112216_ _hd112217_)
                                (let* ((_hd112218112234_ _hd112217_)
                                       (_else112222112242_
                                        (lambda ()
                                          (let ((__tmp114291
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd112217_
                                                         _r112196_))))
                                            (declare (not safe))
                                            (_lp112193_
                                             _rest112216_
                                             __tmp114291)))))
                                  (let ((_K112230112271_
                                         (lambda (_exprs112269_)
                                           (let ((__tmp114292
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest112216_
                                                            _exprs112269_))))
                                             (declare (not safe))
                                             (_lp112193_
                                              __tmp114292
                                              _r112196_))))
                                        (_K112225112255_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112216_))
                                               (let ((__tmp114293
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112217_
                                                              _r112196_))))
                                                 (declare (not safe))
                                                 (_lp112193_
                                                  _rest112216_
                                                  __tmp114293))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112193_
                                                  _rest112216_
                                                  _r112196_)))))
                                        (_K112224112247_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112216_))
                                               (let ((__tmp114294
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112217_
                                                              _r112196_))))
                                                 (declare (not safe))
                                                 (_lp112193_
                                                  _rest112216_
                                                  __tmp114294))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112193_
                                                  _rest112216_
                                                  _r112196_))))))
                                    (let ((_try-match112221112250_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd112218112234_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K112224112247_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else112222112242_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd112218112234_))
                                          (let ((_tl112232112276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd112218112234_)))
                                                (_hd112231112274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd112218112234_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd112231112274_
                                                         'begin))
                                                (let ((_exprs112279_
                                                       _tl112232112276_))
                                                  (declare (not safe))
                                                  (_K112230112271_
                                                   _exprs112279_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd112231112274_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl112232112276_))
                                                        (let ((_tl112229112263_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl112232112276_))))
                  (if (let () (declare (not safe)) (##null? _tl112229112263_))
                      (let () (declare (not safe)) (_K112225112255_))
                      (let () (declare (not safe)) (_try-match112221112250_))))
                (let () (declare (not safe)) (_try-match112221112250_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match112221112250_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match112221112250_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest112197112205_))
                            (let ((_hd112202112284_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest112197112205_)))
                                  (_tl112203112286_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest112197112205_))))
                              (let* ((_hd112289_ _hd112202112284_)
                                     (_rest112291_ _tl112203112286_))
                                (declare (not safe))
                                (_K112201112281_ _rest112291_ _hd112289_)))
                            (let ()
                              (declare (not safe))
                              (_else112199112213_))))))))
          (let* ((_g112145112155_
                  (lambda (_g112146112152_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g112146112152_))))
                 (_g112144112188_
                  (lambda (_g112146112158_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g112146112158_))
                        (let ((_e112150112160_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g112146112158_))))
                          (let ((_hd112149112163_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112150112160_)))
                                (_tl112148112165_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112150112160_))))
                            ((lambda (_L112168_)
                               (let* ((_body112183_
                                       (map (lambda (_g112178112180_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self112140_
                                                 _g112178112180_)))
                                            _L112168_))
                                      (_body112185_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify112143_ _body112183_))))
                                 (if (fx= (length _body112185_) '1)
                                     (car _body112185_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body112185_)))))
                             _tl112148112165_)))
                        (let ()
                          (declare (not safe))
                          (_g112145112155_ _g112146112158_))))))
            (declare (not safe))
            (_g112144112188_ _stx112141_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self112101_ _stx112102_)
        (let* ((_g112104112114_
                (lambda (_g112105112111_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112105112111_))))
               (_g112103112137_
                (lambda (_g112105112117_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112105112117_))
                      (let ((_e112109112119_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112105112117_))))
                        (let ((_hd112108112122_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112109112119_)))
                              (_tl112107112124_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112109112119_))))
                          ((lambda (_L112127_)
                             (let ((__tmp114295
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L112127_))))
                               (declare (not safe))
                               (cons 'begin __tmp114295)))
                           _tl112107112124_)))
                      (let ()
                        (declare (not safe))
                        (_g112104112114_ _g112105112117_))))))
          (declare (not safe))
          (_g112103112137_ _stx112102_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self111865_ _stx111866_)
        (let* ((___stx112893112894_ _stx111866_)
               (_g111870111922_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112893112894_)))))
          (let ((___kont112895112896_
                 (lambda (_L112083_ _L112084_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111865_ _L112083_))))
                (___kont112897112898_
                 (lambda (_L112031_ _L112032_ _L112033_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111865_ _L112031_))))
                (___kont112901112902_
                 (lambda (_L111951_ _L111952_)
                   (let ((_decls111967_ (map gx#syntax->datum _L111952_)))
                     (let ((__tmp114298
                            (lambda ()
                              (let ((__tmp114299
                                     (let ((__tmp114302
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls111967_)))
                                           (__tmp114300
                                            (let ((__tmp114301
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self111865_
                                                      _L111951_))))
                                              (declare (not safe))
                                              (cons __tmp114301 '()))))
                                       (declare (not safe))
                                       (cons __tmp114302 __tmp114300))))
                                (declare (not safe))
                                (cons 'begin __tmp114299))))
                           (__tmp114296
                            (let ((__tmp114297 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp114297 _decls111967_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp114298
                        gxc#current-compile-decls
                        __tmp114296))))))
            (let* ((___match112948112949_
                    (lambda (_e111888111975_
                             _hd111887111978_
                             _tl111886111980_
                             _e111891111983_
                             _hd111890111986_
                             _tl111889111988_
                             _e111894111991_
                             _hd111893111994_
                             _tl111892111996_
                             ___splice112899112900_
                             _target111895111999_
                             _tl111897112001_)
                      (letrec ((_loop111898112004_
                                (lambda (_hd111896112007_ _param111902112009_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111896112007_))
                                      (let ((_e111899112012_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111896112007_))))
                                        (let ((_lp-tl111901112017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111899112012_)))
                                              (_lp-hd111900112015_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111899112012_))))
                                          (let ((__tmp114304
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd111900112015_
                                                         _param111902112009_))))
                                            (declare (not safe))
                                            (_loop111898112004_
                                             _lp-tl111901112017_
                                             __tmp114304))))
                                      (let ((_param111903112020_
                                             (reverse _param111902112009_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl111889111988_))
                                            (let ((_e111906112023_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl111889111988_))))
                                              (let ((_tl111904112028_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e111906112023_)))
                                                    (_hd111905112026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e111906112023_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl111904112028_))
                                                    (let ((_L112031_
                                                           _hd111905112026_)
                                                          (_L112032_
                                                           _param111903112020_)
                                                          (_L112033_
                                                           _hd111893111994_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L112033_))
                       (let ((__tmp114303
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L112033_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp114303)))
                  (___kont112897112898_ _L112031_ _L112032_ _L112033_)
                  (___kont112901112902_ _hd111905112026_ _hd111890111986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g111870111922_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g111870111922_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop111898112004_ _target111895111999_ '())))))
                   (___match112922112923_
                    (lambda (_e111876112059_
                             _hd111875112062_
                             _tl111874112064_
                             _e111879112067_
                             _hd111878112070_
                             _tl111877112072_
                             _e111882112075_
                             _hd111881112078_
                             _tl111880112080_)
                      (let ((_L112083_ _hd111881112078_)
                            (_L112084_ _hd111878112070_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L112084_))
                            (___kont112895112896_ _L112083_ _L112084_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd111878112070_))
                                (let ((_e111894111991_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd111878112070_))))
                                  (let ((_tl111892111996_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e111894111991_)))
                                        (_hd111893111994_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e111894111991_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl111892111996_))
                                        (let ((___splice112899112900_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl111892111996_
                                                  '0))))
                                          (let ((_tl111897112001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112899112900_
                                                    '1)))
                                                (_target111895111999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112899112900_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl111897112001_))
                                                (___match112948112949_
                                                 _e111876112059_
                                                 _hd111875112062_
                                                 _tl111874112064_
                                                 _e111879112067_
                                                 _hd111878112070_
                                                 _tl111877112072_
                                                 _e111894111991_
                                                 _hd111893111994_
                                                 _tl111892111996_
                                                 ___splice112899112900_
                                                 _target111895111999_
                                                 _tl111897112001_)
                                                (___kont112901112902_
                                                 _hd111881112078_
                                                 _hd111878112070_))))
                                        (___kont112901112902_
                                         _hd111881112078_
                                         _hd111878112070_))))
                                (___kont112901112902_
                                 _hd111881112078_
                                 _hd111878112070_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112893112894_))
                  (let ((_e111876112059_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112893112894_))))
                    (let ((_tl111874112064_
                           (let ()
                             (declare (not safe))
                             (##cdr _e111876112059_)))
                          (_hd111875112062_
                           (let ()
                             (declare (not safe))
                             (##car _e111876112059_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl111874112064_))
                          (let ((_e111879112067_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl111874112064_))))
                            (let ((_tl111877112072_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e111879112067_)))
                                  (_hd111878112070_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e111879112067_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl111877112072_))
                                  (let ((_e111882112075_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl111877112072_))))
                                    (let ((_tl111880112080_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e111882112075_)))
                                          (_hd111881112078_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e111882112075_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl111880112080_))
                                          (___match112922112923_
                                           _e111876112059_
                                           _hd111875112062_
                                           _tl111874112064_
                                           _e111879112067_
                                           _hd111878112070_
                                           _tl111877112072_
                                           _e111882112075_
                                           _hd111881112078_
                                           _tl111880112080_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd111878112070_))
                                              (let ((_e111894111991_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd111878112070_))))
                                                (let ((_tl111892111996_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e111894111991_)))
                                                      (_hd111893111994_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e111894111991_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl111892111996_))
                                                      (let ((___splice112899112900_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl111892111996_ '0))))
                (let ((_tl111897112001_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112899112900_ '1)))
                      (_target111895111999_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112899112900_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl111897112001_))
                      (___match112948112949_
                       _e111876112059_
                       _hd111875112062_
                       _tl111874112064_
                       _e111879112067_
                       _hd111878112070_
                       _tl111877112072_
                       _e111894111991_
                       _hd111893111994_
                       _tl111892111996_
                       ___splice112899112900_
                       _target111895111999_
                       _tl111897112001_)
                      (let () (declare (not safe)) (_g111870111922_)))))
              (let () (declare (not safe)) (_g111870111922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g111870111922_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111878112070_))
                                      (let ((_e111894111991_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111878112070_))))
                                        (let ((_tl111892111996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111894111991_)))
                                              (_hd111893111994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111894111991_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl111892111996_))
                                              (let ((___splice112899112900_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl111892111996_
                                                        '0))))
                                                (let ((_tl111897112001_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112899112900_
                                                          '1)))
                                                      (_target111895111999_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112899112900_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl111897112001_))
                                                      (___match112948112949_
                                                       _e111876112059_
                                                       _hd111875112062_
                                                       _tl111874112064_
                                                       _e111879112067_
                                                       _hd111878112070_
                                                       _tl111877112072_
                                                       _e111894111991_
                                                       _hd111893111994_
                                                       _tl111892111996_
                                                       ___splice112899112900_
                                                       _target111895111999_
                                                       _tl111897112001_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g111870111922_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g111870111922_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111870111922_))))))
                          (let () (declare (not safe)) (_g111870111922_)))))
                  (let () (declare (not safe)) (_g111870111922_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self111824_ _stx111825_)
        (let* ((_g111827111837_
                (lambda (_g111828111834_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111828111834_))))
               (_g111826111862_
                (lambda (_g111828111840_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111828111840_))
                      (let ((_e111832111842_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111828111840_))))
                        (let ((_hd111831111845_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111832111842_)))
                              (_tl111830111847_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111832111842_))))
                          ((lambda (_L111850_)
                             (let ((_decls111860_
                                    (map gx#syntax->datum _L111850_)))
                               (gxc#current-compile-decls
                                (let ((__tmp114305
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp114305 _decls111860_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls111860_))))
                           _tl111830111847_)))
                      (let ()
                        (declare (not safe))
                        (_g111827111837_ _g111828111840_))))))
          (declare (not safe))
          (_g111826111862_ _stx111825_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self111570_ _stx111571_)
        (let* ((_g111573111590_
                (lambda (_g111574111587_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111574111587_))))
               (_g111572111821_
                (lambda (_g111574111593_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111574111593_))
                      (let ((_e111579111595_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111574111593_))))
                        (let ((_hd111578111598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111579111595_)))
                              (_tl111577111600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111579111595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111577111600_))
                              (let ((_e111582111603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111577111600_))))
                                (let ((_hd111581111606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111582111603_)))
                                      (_tl111580111608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111582111603_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111580111608_))
                                      (let ((_e111585111611_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111580111608_))))
                                        (let ((_hd111584111614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111585111611_)))
                                              (_tl111583111616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111585111611_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111583111616_))
                                              ((lambda (_L111619_ _L111620_)
                                                 (let* ((___stx113001113002_
                                                         _L111620_)
                                                        (_g111637111651_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx113001113002_)))))
                                                   (let ((___kont113003113004_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self111570_
                                                               _L111619_))))
                                                         (___kont113005113006_
                                                          (lambda (_L111783_)
                                                            (let ((_eid111792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L111783_))))
                      (let ((_lambda-expr111793111795_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L111619_))))
                        (if _lambda-expr111793111795_
                            (let* ((_lambda-expr111798_
                                    _lambda-expr111793111795_)
                                   (__tmp114306
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp114306
                               _lambda-expr111798_
                               _eid111792_))
                            '#f))
                      (let ((__tmp114307
                             (let ((__tmp114308
                                    (let ((__tmp114309
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self111570_
                                              _L111619_))))
                                      (declare (not safe))
                                      (cons __tmp114309 '()))))
                               (declare (not safe))
                               (cons _eid111792_ __tmp114308))))
                        (declare (not safe))
                        (cons 'define __tmp114307)))))
                 (___kont113007113008_
                  (lambda ()
                    (let* ((_tmp111658_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body111767_
                            (let _lp111660_ ((_rest111662_ _L111620_)
                                             (_k111663_ '0)
                                             (_r111664_ '()))
                              (let* ((___stx112971112972_ _rest111662_)
                                     (_g111669111686_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx112971112972_)))))
                                (let ((___kont112973112974_
                                       (lambda (_L111754_)
                                         (let ((__tmp114310
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111663_ '1))))
                                           (declare (not safe))
                                           (_lp111660_
                                            _L111754_
                                            __tmp114310
                                            _r111664_))))
                                      (___kont112975112976_
                                       (lambda (_L111727_ _L111728_)
                                         (let ((__tmp114317
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111663_ '1)))
                                               (__tmp114311
                                                (let ((__tmp114312
                                                       (let ((__tmp114313
                                                              (let ((__tmp114316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111728_)))
                            (__tmp114314
                             (let ((__tmp114315
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp111658_
                                       _k111663_
                                       _L111727_))))
                               (declare (not safe))
                               (cons __tmp114315 '()))))
                        (declare (not safe))
                        (cons __tmp114316 __tmp114314))))
                 (declare (not safe))
                 (cons 'define __tmp114313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114312
                                                        _r111664_))))
                                           (declare (not safe))
                                           (_lp111660_
                                            _L111727_
                                            __tmp114317
                                            __tmp114311))))
                                      (___kont112977112978_
                                       (lambda (_L111698_)
                                         (let ((__tmp114318
                                                (let ((__tmp114319
                                                       (let ((__tmp114320
                                                              (let ((__tmp114323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111698_)))
                            (__tmp114321
                             (let ((__tmp114322
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp111658_
                                       _k111663_))))
                               (declare (not safe))
                               (cons __tmp114322 '()))))
                        (declare (not safe))
                        (cons __tmp114323 __tmp114321))))
                 (declare (not safe))
                 (cons 'define __tmp114320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114319 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp114318
                                                   _r111664_))))
                                      (___kont112979112980_
                                       (lambda () (reverse _r111664_))))
                                  (let ((_g111667111714_
                                         (lambda ()
                                           (let ((_L111698_
                                                  ___stx112971112972_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L111698_))
                                                 (___kont112977112978_
                                                  _L111698_)
                                                 (___kont112979112980_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112971112972_))
                                        (let ((_e111674111743_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112971112972_))))
                                          (let ((_tl111672111748_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e111674111743_)))
                                                (_hd111673111746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e111674111743_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd111673111746_))
                                                (let ((_e111675111751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd111673111746_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e111675111751_
                                                                '#f))
                                                      (___kont112973112974_
                                                       _tl111672111748_)
                                                      (___kont112975112976_
                                                       _tl111672111748_
                                                       _hd111673111746_)))
                                                (___kont112975112976_
                                                 _tl111672111748_
                                                 _hd111673111746_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g111667111714_)))))))))
                      (let ((__tmp114324
                             (let ((__tmp114327
                                    (let ((__tmp114328
                                           (let ((__tmp114329
                                                  (let ((__tmp114330
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self111570_
                                                            _L111619_))))
                                                    (declare (not safe))
                                                    (cons __tmp114330 '()))))
                                             (declare (not safe))
                                             (cons _tmp111658_ __tmp114329))))
                                      (declare (not safe))
                                      (cons 'define __tmp114328)))
                                   (__tmp114325
                                    (let ((__tmp114326
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp111658_
                                              _L111620_
                                              _L111619_))))
                                      (declare (not safe))
                                      (cons __tmp114326 _body111767_))))
                               (declare (not safe))
                               (cons __tmp114327 __tmp114325))))
                        (declare (not safe))
                        (cons 'begin __tmp114324))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx113001113002_))
                                                         (let ((_e111641111805_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx113001113002_))))
                   (let ((_tl111639111810_
                          (let ()
                            (declare (not safe))
                            (##cdr _e111641111805_)))
                         (_hd111640111808_
                          (let ()
                            (declare (not safe))
                            (##car _e111641111805_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd111640111808_))
                         (let ((_e111642111813_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd111640111808_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e111642111813_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111639111810_))
                                   (___kont113003113004_)
                                   (___kont113007113008_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111639111810_))
                                   (___kont113005113006_ _hd111640111808_)
                                   (___kont113007113008_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl111639111810_))
                             (___kont113005113006_ _hd111640111808_)
                             (___kont113007113008_)))))
                 (___kont113007113008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd111584111614_
                                               _hd111581111606_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111573111590_
                                                 _g111574111593_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111573111590_ _g111574111593_)))))
                              (let ()
                                (declare (not safe))
                                (_g111573111590_ _g111574111593_)))))
                      (let ()
                        (declare (not safe))
                        (_g111573111590_ _g111574111593_))))))
          (declare (not safe))
          (_g111572111821_ _stx111571_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals111546_ _hd111547_ _expr111548_)
        (let ((_$e111550_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr111548_))))
          (if _$e111550_
              ((lambda (_count111553_)
                 (let ((_len111555_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd111547_)))
                       (_cmp111556_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd111547_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len111555_ '0)
                           (_cmp111556_ _count111553_ _len111555_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr111548_
                          _hd111547_)))))
               _$e111550_)
              (let* ((_len111561_
                      (let () (declare (not safe)) (gx#stx-length _hd111547_)))
                     (_cmp111563_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd111547_))
                          '##fx=
                          '##fx>=))
                     (_errmsg111565_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd111547_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len111561_)
                       '" values"))
                     (_count111567_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp114354
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd111547_))))
                           (declare (not safe))
                           (not __tmp114354))
                         (fx= _len111561_ '0))
                    '#!void
                    (let ((__tmp114331
                           (let ((__tmp114350
                                  (let ((__tmp114351
                                         (let ((__tmp114352
                                                (let ((__tmp114353
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals111546_))))
                                                  (declare (not safe))
                                                  (cons __tmp114353 '()))))
                                           (declare (not safe))
                                           (cons _count111567_ __tmp114352))))
                                    (declare (not safe))
                                    (cons __tmp114351 '())))
                                 (__tmp114332
                                  (let ((__tmp114333
                                         (let ((__tmp114334
                                                (let ((__tmp114339
                                                       (let ((__tmp114340
                                                              (let ((__tmp114341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp114348
                                        (let ((__tmp114349
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len111561_ '()))))
                                          (declare (not safe))
                                          (cons _count111567_ __tmp114349))))
                                   (declare (not safe))
                                   (cons _cmp111563_ __tmp114348))
                                 (let ((__tmp114342
                                        (let ((__tmp114343
                                               (let ((__tmp114344
                                                      (let ((__tmp114345
                                                             (let ((__tmp114346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114347
                                   (let ()
                                     (declare (not safe))
                                     (cons _len111561_ '()))))
                              (declare (not safe))
                              (cons _count111567_ __tmp114347))))
                       (declare (not safe))
                       (cons _cmp111563_ __tmp114346))))
                (declare (not safe))
                (cons __tmp114345 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114344))))
                                          (declare (not safe))
                                          (cons '() __tmp114343))))
                                   (declare (not safe))
                                   (cons 'let __tmp114342)))))
                        (declare (not safe))
                        (cons __tmp114341 '()))))
                 (declare (not safe))
                 (cons 'not __tmp114340)))
              (__tmp114335
               (let ((__tmp114336
                      (let ((__tmp114337
                             (let ((__tmp114338
                                    (let ()
                                      (declare (not safe))
                                      (cons _count111567_ '()))))
                               (declare (not safe))
                               (cons _errmsg111565_ __tmp114338))))
                        (declare (not safe))
                        (cons 'error __tmp114337))))
                 (declare (not safe))
                 (cons __tmp114336 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114339
                                                        __tmp114335))))
                                           (declare (not safe))
                                           (cons 'if __tmp114334))))
                                    (declare (not safe))
                                    (cons __tmp114333 '()))))
                             (declare (not safe))
                             (cons __tmp114350 __tmp114332))))
                      (declare (not safe))
                      (cons 'let __tmp114331))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var111541_)
        (letrec ((_generate-inline111543_
                  (lambda ()
                    (let ((__tmp114355
                           (let ((__tmp114360
                                  (let ((__tmp114361
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111541_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114361)))
                                 (__tmp114356
                                  (let ((__tmp114358
                                         (let ((__tmp114359
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var111541_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp114359)))
                                        (__tmp114357
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp114358 __tmp114357))))
                             (declare (not safe))
                             (cons __tmp114360 __tmp114356))))
                      (declare (not safe))
                      (cons 'if __tmp114355)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111543_))
              (let ((__tmp114362
                     (let ((__tmp114363
                            (let ((__tmp114364
                                   (let ((__tmp114365
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111543_))))
                                     (declare (not safe))
                                     (cons __tmp114365 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114364))))
                       (declare (not safe))
                       (cons '() __tmp114363))))
                (declare (not safe))
                (cons 'let __tmp114362))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var111534_ _i111535_ _rest111536_)
        (letrec ((_generate-inline111538_
                  (lambda ()
                    (if (and (fx= _i111535_ '0)
                             (let ((__tmp114376
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest111536_))))
                               (declare (not safe))
                               (not __tmp114376)))
                        (let ((__tmp114368
                               (let ((__tmp114374
                                      (let ((__tmp114375
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111534_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp114375)))
                                     (__tmp114369
                                      (let ((__tmp114371
                                             (let ((__tmp114372
                                                    (let ((__tmp114373
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var111534_
                                                            __tmp114373))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp114372)))
                                            (__tmp114370
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111534_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114371 __tmp114370))))
                                 (declare (not safe))
                                 (cons __tmp114374 __tmp114369))))
                          (declare (not safe))
                          (cons 'if __tmp114368))
                        (let ((__tmp114366
                               (let ((__tmp114367
                                      (let ()
                                        (declare (not safe))
                                        (cons _i111535_ '()))))
                                 (declare (not safe))
                                 (cons _var111534_ __tmp114367))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp114366))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111538_))
              (let ((__tmp114377
                     (let ((__tmp114378
                            (let ((__tmp114379
                                   (let ((__tmp114380
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111538_))))
                                     (declare (not safe))
                                     (cons __tmp114380 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114379))))
                       (declare (not safe))
                       (cons '() __tmp114378))))
                (declare (not safe))
                (cons 'let __tmp114377))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var111531_ _i111532_)
        (if (fx= _i111532_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp114428
                       (let ((__tmp114435
                              (let ((__tmp114436
                                     (let ()
                                       (declare (not safe))
                                       (cons _var111531_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp114436)))
                             (__tmp114429
                              (let ((__tmp114433
                                     (let ((__tmp114434
                                            (let ()
                                              (declare (not safe))
                                              (cons _var111531_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp114434)))
                                    (__tmp114430
                                     (let ((__tmp114431
                                            (let ((__tmp114432
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var111531_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp114432))))
                                       (declare (not safe))
                                       (cons __tmp114431 '()))))
                                (declare (not safe))
                                (cons __tmp114433 __tmp114430))))
                         (declare (not safe))
                         (cons __tmp114435 __tmp114429))))
                  (declare (not safe))
                  (cons 'if __tmp114428))
                (let ((__tmp114415
                       (let ((__tmp114416
                              (let ((__tmp114417
                                     (let ((__tmp114418
                                            (let ((__tmp114419
                                                   (let ((__tmp114426
                                                          (let ((__tmp114427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var111531_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp114427)))
                 (__tmp114420
                  (let ((__tmp114424
                         (let ((__tmp114425
                                (let ()
                                  (declare (not safe))
                                  (cons _var111531_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp114425)))
                        (__tmp114421
                         (let ((__tmp114422
                                (let ((__tmp114423
                                       (let ()
                                         (declare (not safe))
                                         (cons _var111531_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp114423))))
                           (declare (not safe))
                           (cons __tmp114422 '()))))
                    (declare (not safe))
                    (cons __tmp114424 __tmp114421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114426
                                                           __tmp114420))))
                                              (declare (not safe))
                                              (cons 'if __tmp114419))))
                                       (declare (not safe))
                                       (cons __tmp114418 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp114417))))
                         (declare (not safe))
                         (cons '() __tmp114416))))
                  (declare (not safe))
                  (cons 'let __tmp114415)))
            (if (fx= _i111532_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114406
                           (let ((__tmp114413
                                  (let ((__tmp114414
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111531_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114414)))
                                 (__tmp114407
                                  (let ((__tmp114409
                                         (let ((__tmp114410
                                                (let ((__tmp114411
                                                       (let ((__tmp114412
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var111531_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp114412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114411 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp114410)))
                                        (__tmp114408
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp114409 __tmp114408))))
                             (declare (not safe))
                             (cons __tmp114413 __tmp114407))))
                      (declare (not safe))
                      (cons 'if __tmp114406))
                    (let ((__tmp114393
                           (let ((__tmp114394
                                  (let ((__tmp114395
                                         (let ((__tmp114396
                                                (let ((__tmp114397
                                                       (let ((__tmp114404
                                                              (let ((__tmp114405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111531_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp114405)))
                     (__tmp114398
                      (let ((__tmp114400
                             (let ((__tmp114401
                                    (let ((__tmp114402
                                           (let ((__tmp114403
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var111531_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp114403))))
                                      (declare (not safe))
                                      (cons __tmp114402 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp114401)))
                            (__tmp114399
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp114400 __tmp114399))))
                 (declare (not safe))
                 (cons __tmp114404 __tmp114398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp114397))))
                                           (declare (not safe))
                                           (cons __tmp114396 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114395))))
                             (declare (not safe))
                             (cons '() __tmp114394))))
                      (declare (not safe))
                      (cons 'let __tmp114393)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114389
                           (let ((__tmp114391
                                  (let ((__tmp114392
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111531_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp114392)))
                                 (__tmp114390
                                  (let ()
                                    (declare (not safe))
                                    (cons _i111532_ '()))))
                             (declare (not safe))
                             (cons __tmp114391 __tmp114390))))
                      (declare (not safe))
                      (cons '##list-tail __tmp114389))
                    (let ((__tmp114381
                           (let ((__tmp114382
                                  (let ((__tmp114383
                                         (let ((__tmp114384
                                                (let ((__tmp114385
                                                       (let ((__tmp114387
                                                              (let ((__tmp114388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111531_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp114388)))
                     (__tmp114386
                      (let () (declare (not safe)) (cons _i111532_ '()))))
                 (declare (not safe))
                 (cons __tmp114387 __tmp114386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp114385))))
                                           (declare (not safe))
                                           (cons __tmp114384 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114383))))
                             (declare (not safe))
                             (cons '() __tmp114382))))
                      (declare (not safe))
                      (cons 'let __tmp114381)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self111463_ _stx111464_)
        (let* ((_g111466111483_
                (lambda (_g111467111480_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111467111480_))))
               (_g111465111528_
                (lambda (_g111467111486_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111467111486_))
                      (let ((_e111472111488_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111467111486_))))
                        (let ((_hd111471111491_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111472111488_)))
                              (_tl111470111493_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111472111488_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111470111493_))
                              (let ((_e111475111496_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111470111493_))))
                                (let ((_hd111474111499_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111475111496_)))
                                      (_tl111473111501_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111475111496_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111473111501_))
                                      (let ((_e111478111504_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111473111501_))))
                                        (let ((_hd111477111507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111478111504_)))
                                              (_tl111476111509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111478111504_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111476111509_))
                                              ((lambda (_L111512_ _L111513_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self111463_
                                                    _L111513_
                                                    _L111512_)))
                                               _hd111477111507_
                                               _hd111474111499_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111466111483_
                                                 _g111467111486_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111466111483_ _g111467111486_)))))
                              (let ()
                                (declare (not safe))
                                (_g111466111483_ _g111467111486_)))))
                      (let ()
                        (declare (not safe))
                        (_g111466111483_ _g111467111486_))))))
          (declare (not safe))
          (_g111465111528_ _stx111464_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self111422_ _hd111423_ _body111424_)
        (let* ((_hd111426_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd111423_)))
               (_body111428_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self111422_ _body111424_)))
               (_body111460_
                (let* ((_body111429111437_ _body111428_)
                       (_else111431111445_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body111428_ '()))))
                       (_K111433111450_
                        (lambda (_exprs111448_) _exprs111448_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body111429111437_))
                      (let ((_hd111434111453_
                             (let ()
                               (declare (not safe))
                               (##car _body111429111437_)))
                            (_tl111435111455_
                             (let ()
                               (declare (not safe))
                               (##cdr _body111429111437_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd111434111453_ 'begin))
                            (let ((_exprs111458_ _tl111435111455_))
                              (declare (not safe))
                              (_K111433111450_ _exprs111458_))
                            (let ()
                              (declare (not safe))
                              (_else111431111445_))))
                      (let () (declare (not safe)) (_else111431111445_))))))
          (let ((__tmp114437
                 (let () (declare (not safe)) (cons _hd111426_ _body111460_))))
            (declare (not safe))
            (cons 'lambda __tmp114437)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd111420_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd111420_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self109962_ _stx109963_)
        (letrec ((_dispatch-case?109965_
                  (lambda (_hd110650_ _body110651_)
                    (let* ((_form110653_
                            (let ((__tmp114438
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110651_ '()))))
                              (declare (not safe))
                              (cons _hd110650_ __tmp114438)))
                           (___stx113033113034_ _form110653_)
                           (_g110658110815_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113033113034_)))))
                      (let ((___kont113035113036_
                             (lambda (_L111340_ _L111341_ _L111342_) '#t))
                            (___kont113041113042_
                             (lambda (_L111128_
                                      _L111129_
                                      _L111130_
                                      _L111131_
                                      _L111132_
                                      _L111133_)
                               '#t))
                            (___kont113047113048_
                             (lambda (_L110923_ _L110924_ _L110925_ _L110926_)
                               '#t))
                            (___kont113049113050_ (lambda () '#f)))
                        (let* ((___match113174113175_
                                (lambda (_e110777110827_
                                         _hd110776110830_
                                         _tl110775110832_
                                         _e110780110835_
                                         _hd110779110838_
                                         _tl110778110840_
                                         _e110783110843_
                                         _hd110782110846_
                                         _tl110781110848_
                                         _e110786110851_
                                         _hd110785110854_
                                         _tl110784110856_
                                         _e110789110859_
                                         _hd110788110862_
                                         _tl110787110864_
                                         _e110792110867_
                                         _hd110791110870_
                                         _tl110790110872_
                                         _e110795110875_
                                         _hd110794110878_
                                         _tl110793110880_
                                         _e110798110883_
                                         _hd110797110886_
                                         _tl110796110888_
                                         _e110801110891_
                                         _hd110800110894_
                                         _tl110799110896_
                                         _e110804110899_
                                         _hd110803110902_
                                         _tl110802110904_
                                         _e110807110907_
                                         _hd110806110910_
                                         _tl110805110912_
                                         _e110810110915_
                                         _hd110809110918_
                                         _tl110808110920_)
                                  (let ((_L110923_ _hd110809110918_)
                                        (_L110924_ _hd110800110894_)
                                        (_L110925_ _hd110791110870_)
                                        (_L110926_ _hd110776110830_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L110926_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L110925_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L110926_
                                                _L110923_))
                                             (let ((__tmp114439
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L110924_
                                                       _L110926_))))
                                               (declare (not safe))
                                               (not __tmp114439)))
                                        (___kont113047113048_
                                         _L110923_
                                         _L110924_
                                         _L110925_
                                         _L110926_)
                                        (___kont113049113050_)))))
                               (___match113146113147_
                                (lambda (_e110777110827_
                                         _hd110776110830_
                                         _tl110775110832_
                                         _e110780110835_
                                         _hd110779110838_
                                         _tl110778110840_
                                         _e110783110843_
                                         _hd110782110846_
                                         _tl110781110848_
                                         _e110786110851_
                                         _hd110785110854_
                                         _tl110784110856_
                                         _e110789110859_
                                         _hd110788110862_
                                         _tl110787110864_
                                         _e110792110867_
                                         _hd110791110870_
                                         _tl110790110872_
                                         _e110795110875_
                                         _hd110794110878_
                                         _tl110793110880_
                                         _e110798110883_
                                         _hd110797110886_
                                         _tl110796110888_
                                         _e110801110891_
                                         _hd110800110894_
                                         _tl110799110896_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110793110880_))
                                      (let ((_e110804110899_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110793110880_))))
                                        (let ((_tl110802110904_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110804110899_)))
                                              (_hd110803110902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110804110899_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110803110902_))
                                              (let ((_e110807110907_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110803110902_))))
                                                (let ((_tl110805110912_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110807110907_)))
                                                      (_hd110806110910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110807110907_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd110806110910_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd110806110910_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110805110912_))
                      (let ((_e110810110915_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110805110912_))))
                        (let ((_tl110808110920_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110810110915_)))
                              (_hd110809110918_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110810110915_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110808110920_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl110802110904_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl110778110840_))
                                      (___match113174113175_
                                       _e110777110827_
                                       _hd110776110830_
                                       _tl110775110832_
                                       _e110780110835_
                                       _hd110779110838_
                                       _tl110778110840_
                                       _e110783110843_
                                       _hd110782110846_
                                       _tl110781110848_
                                       _e110786110851_
                                       _hd110785110854_
                                       _tl110784110856_
                                       _e110789110859_
                                       _hd110788110862_
                                       _tl110787110864_
                                       _e110792110867_
                                       _hd110791110870_
                                       _tl110790110872_
                                       _e110795110875_
                                       _hd110794110878_
                                       _tl110793110880_
                                       _e110798110883_
                                       _hd110797110886_
                                       _tl110796110888_
                                       _e110801110891_
                                       _hd110800110894_
                                       _tl110799110896_
                                       _e110804110899_
                                       _hd110803110902_
                                       _tl110802110904_
                                       _e110807110907_
                                       _hd110806110910_
                                       _tl110805110912_
                                       _e110810110915_
                                       _hd110809110918_
                                       _tl110808110920_)
                                      (___kont113049113050_))
                                  (___kont113049113050_))
                              (___kont113049113050_))))
                      (___kont113049113050_))
                  (___kont113049113050_))
              (___kont113049113050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113049113050_))))
                                      (___kont113049113050_))))
                               (___match113076113077_
                                (lambda (_e110713110968_
                                         _hd110712110971_
                                         _tl110711110973_
                                         ___splice113043113044_
                                         _target110714110976_
                                         _tl110716110978_)
                                  (letrec ((_loop110717110981_
                                            (lambda (_hd110715110984_
                                                     _arg110721110986_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110715110984_))
                                                  (let ((_e110718110989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110715110984_))))
                                                    (let ((_lp-tl110720110994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110718110989_)))
                                                          (_lp-hd110719110992_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110718110989_))))
                                                      (let ((__tmp114454
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110719110992_ _arg110721110986_))))
                (declare (not safe))
                (_loop110717110981_ _lp-tl110720110994_ __tmp114454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110722110997_
                                                         (reverse _arg110721110986_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110711110973_))
                                                        (let ((_e110725111000_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110711110973_))))
                  (let ((_tl110723111005_
                         (let () (declare (not safe)) (##cdr _e110725111000_)))
                        (_hd110724111003_
                         (let ()
                           (declare (not safe))
                           (##car _e110725111000_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110724111003_))
                        (let ((_e110728111008_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110724111003_))))
                          (let ((_tl110726111013_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110728111008_)))
                                (_hd110727111011_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110728111008_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110727111011_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110727111011_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110726111013_))
                                        (let ((_e110731111016_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110726111013_))))
                                          (let ((_tl110729111021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110731111016_)))
                                                (_hd110730111019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110731111016_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110730111019_))
                                                (let ((_e110734111024_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110730111019_))))
                                                  (let ((_tl110732111029_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110734111024_)))
                                                        (_hd110733111027_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110734111024_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110733111027_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110733111027_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110732111029_))
                        (let ((_e110737111032_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110732111029_))))
                          (let ((_tl110735111037_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110737111032_)))
                                (_hd110736111035_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110737111032_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110735111037_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110729111021_))
                                    (let ((_e110740111040_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110729111021_))))
                                      (let ((_tl110738111045_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110740111040_)))
                                            (_hd110739111043_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110740111040_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110739111043_))
                                            (let ((_e110743111048_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110739111043_))))
                                              (let ((_tl110741111053_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110743111048_)))
                                                    (_hd110742111051_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110743111048_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110742111051_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110742111051_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110741111053_))
                                                            (let ((_e110746111056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110741111053_))))
                      (let ((_tl110744111061_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110746111056_)))
                            (_hd110745111059_
                             (let ()
                               (declare (not safe))
                               (##car _e110746111056_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110744111061_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl110738111045_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl110738111045_))
                                          '1)
                                    (let ((___splice113045113046_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110738111045_
                                              '1))))
                                      (let ((_tl110749111066_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113045113046_
                                                '1)))
                                            (_target110747111064_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113045113046_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110749111066_))
                                            (let ((_e110758111069_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110749111066_))))
                                              (let ((_tl110756111074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110758111069_)))
                                                    (_hd110757111072_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110758111069_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd110757111072_))
                                                    (let ((_e110761111077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd110757111072_))))
                                                      (let ((_tl110759111082_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e110761111077_)))
                    (_hd110760111080_
                     (let () (declare (not safe)) (##car _e110761111077_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd110760111080_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd110760111080_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl110759111082_))
                            (let ((_e110764111085_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl110759111082_))))
                              (let ((_tl110762111090_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110764111085_)))
                                    (_hd110763111088_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110764111085_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl110762111090_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl110756111074_))
                                        (letrec ((_loop110750111093_
                                                  (lambda (_hd110748111096_
                                                           _xarg110754111098_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd110748111096_))
                                                        (let ((_e110751111101_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd110748111096_))))
                  (let ((_lp-tl110753111106_
                         (let () (declare (not safe)) (##cdr _e110751111101_)))
                        (_lp-hd110752111104_
                         (let ()
                           (declare (not safe))
                           (##car _e110751111101_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd110752111104_))
                        (let ((_e110767111109_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd110752111104_))))
                          (let ((_tl110765111114_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110767111109_)))
                                (_hd110766111112_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110767111109_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110766111112_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd110766111112_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110765111114_))
                                        (let ((_e110770111117_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110765111114_))))
                                          (let ((_tl110768111122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110770111117_)))
                                                (_hd110769111120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110770111117_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110768111122_))
                                                (let ((__tmp114453
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd110769111120_
                                                               _xarg110754111098_))))
                                                  (declare (not safe))
                                                  (_loop110750111093_
                                                   _lp-tl110753111106_
                                                   __tmp114453))
                                                (___match113146113147_
                                                 _e110713110968_
                                                 _hd110712110971_
                                                 _tl110711110973_
                                                 _e110725111000_
                                                 _hd110724111003_
                                                 _tl110723111005_
                                                 _e110728111008_
                                                 _hd110727111011_
                                                 _tl110726111013_
                                                 _e110731111016_
                                                 _hd110730111019_
                                                 _tl110729111021_
                                                 _e110734111024_
                                                 _hd110733111027_
                                                 _tl110732111029_
                                                 _e110737111032_
                                                 _hd110736111035_
                                                 _tl110735111037_
                                                 _e110740111040_
                                                 _hd110739111043_
                                                 _tl110738111045_
                                                 _e110743111048_
                                                 _hd110742111051_
                                                 _tl110741111053_
                                                 _e110746111056_
                                                 _hd110745111059_
                                                 _tl110744111061_))))
                                        (___match113146113147_
                                         _e110713110968_
                                         _hd110712110971_
                                         _tl110711110973_
                                         _e110725111000_
                                         _hd110724111003_
                                         _tl110723111005_
                                         _e110728111008_
                                         _hd110727111011_
                                         _tl110726111013_
                                         _e110731111016_
                                         _hd110730111019_
                                         _tl110729111021_
                                         _e110734111024_
                                         _hd110733111027_
                                         _tl110732111029_
                                         _e110737111032_
                                         _hd110736111035_
                                         _tl110735111037_
                                         _e110740111040_
                                         _hd110739111043_
                                         _tl110738111045_
                                         _e110743111048_
                                         _hd110742111051_
                                         _tl110741111053_
                                         _e110746111056_
                                         _hd110745111059_
                                         _tl110744111061_))
                                    (___match113146113147_
                                     _e110713110968_
                                     _hd110712110971_
                                     _tl110711110973_
                                     _e110725111000_
                                     _hd110724111003_
                                     _tl110723111005_
                                     _e110728111008_
                                     _hd110727111011_
                                     _tl110726111013_
                                     _e110731111016_
                                     _hd110730111019_
                                     _tl110729111021_
                                     _e110734111024_
                                     _hd110733111027_
                                     _tl110732111029_
                                     _e110737111032_
                                     _hd110736111035_
                                     _tl110735111037_
                                     _e110740111040_
                                     _hd110739111043_
                                     _tl110738111045_
                                     _e110743111048_
                                     _hd110742111051_
                                     _tl110741111053_
                                     _e110746111056_
                                     _hd110745111059_
                                     _tl110744111061_))
                                (___match113146113147_
                                 _e110713110968_
                                 _hd110712110971_
                                 _tl110711110973_
                                 _e110725111000_
                                 _hd110724111003_
                                 _tl110723111005_
                                 _e110728111008_
                                 _hd110727111011_
                                 _tl110726111013_
                                 _e110731111016_
                                 _hd110730111019_
                                 _tl110729111021_
                                 _e110734111024_
                                 _hd110733111027_
                                 _tl110732111029_
                                 _e110737111032_
                                 _hd110736111035_
                                 _tl110735111037_
                                 _e110740111040_
                                 _hd110739111043_
                                 _tl110738111045_
                                 _e110743111048_
                                 _hd110742111051_
                                 _tl110741111053_
                                 _e110746111056_
                                 _hd110745111059_
                                 _tl110744111061_))))
                        (___match113146113147_
                         _e110713110968_
                         _hd110712110971_
                         _tl110711110973_
                         _e110725111000_
                         _hd110724111003_
                         _tl110723111005_
                         _e110728111008_
                         _hd110727111011_
                         _tl110726111013_
                         _e110731111016_
                         _hd110730111019_
                         _tl110729111021_
                         _e110734111024_
                         _hd110733111027_
                         _tl110732111029_
                         _e110737111032_
                         _hd110736111035_
                         _tl110735111037_
                         _e110740111040_
                         _hd110739111043_
                         _tl110738111045_
                         _e110743111048_
                         _hd110742111051_
                         _tl110741111053_
                         _e110746111056_
                         _hd110745111059_
                         _tl110744111061_))))
                (let ((_xarg110755111125_ (reverse _xarg110754111098_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110723111005_))
                      (let ((_L111128_ _hd110763111088_)
                            (_L111129_ _xarg110755111125_)
                            (_L111130_ _hd110745111059_)
                            (_L111131_ _hd110736111035_)
                            (_L111132_ _tl110716110978_)
                            (_L111133_ _arg110722110997_))
                        (if (and (let ((__tmp114451
                                        (let ((__tmp114452
                                               (lambda (_g111176111179_
                                                        _g111177111181_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111176111179_
                                                         _g111177111181_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114452 '() _L111133_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp114451))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L111132_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L111131_ 'apply))
                                 (fx= (length (let ((__tmp114449
                                                     (lambda (_g111183111186_
                                                              _g111184111188_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111183111186_
                                                               _g111184111188_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114449
                                                        '()
                                                        _L111133_)))
                                      (length (let ((__tmp114450
                                                     (lambda (_g111190111193_
                                                              _g111191111195_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111190111193_
                                                               _g111191111195_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114450
                                                        '()
                                                        _L111129_))))
                                 (let ((__tmp114447
                                        (let ((__tmp114448
                                               (lambda (_g111197111200_
                                                        _g111198111202_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111197111200_
                                                         _g111198111202_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114448 '() _L111133_)))
                                       (__tmp114445
                                        (let ((__tmp114446
                                               (lambda (_g111204111207_
                                                        _g111205111209_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111204111207_
                                                         _g111205111209_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114446 '() _L111129_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp114447
                                            __tmp114445))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L111132_ _L111128_))
                                 (let ((__tmp114440
                                        (let ((__tmp114444
                                               (lambda (_g111211111213_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g111211111213_
                                                    _L111130_))))
                                              (__tmp114441
                                               (let ((__tmp114443
                                                      (lambda (_g111215111218_
                                                               _g111216111220_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g111215111218_
                                                                _g111216111220_))))
                                                     (__tmp114442
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L111132_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp114443
                                                         __tmp114442
                                                         _L111133_))))
                                          (declare (not safe))
                                          (find __tmp114444 __tmp114441))))
                                   (declare (not safe))
                                   (not __tmp114440)))
                            (___kont113041113042_
                             _L111128_
                             _L111129_
                             _L111130_
                             _L111131_
                             _L111132_
                             _L111133_)
                            (___match113146113147_
                             _e110713110968_
                             _hd110712110971_
                             _tl110711110973_
                             _e110725111000_
                             _hd110724111003_
                             _tl110723111005_
                             _e110728111008_
                             _hd110727111011_
                             _tl110726111013_
                             _e110731111016_
                             _hd110730111019_
                             _tl110729111021_
                             _e110734111024_
                             _hd110733111027_
                             _tl110732111029_
                             _e110737111032_
                             _hd110736111035_
                             _tl110735111037_
                             _e110740111040_
                             _hd110739111043_
                             _tl110738111045_
                             _e110743111048_
                             _hd110742111051_
                             _tl110741111053_
                             _e110746111056_
                             _hd110745111059_
                             _tl110744111061_)))
                      (___match113146113147_
                       _e110713110968_
                       _hd110712110971_
                       _tl110711110973_
                       _e110725111000_
                       _hd110724111003_
                       _tl110723111005_
                       _e110728111008_
                       _hd110727111011_
                       _tl110726111013_
                       _e110731111016_
                       _hd110730111019_
                       _tl110729111021_
                       _e110734111024_
                       _hd110733111027_
                       _tl110732111029_
                       _e110737111032_
                       _hd110736111035_
                       _tl110735111037_
                       _e110740111040_
                       _hd110739111043_
                       _tl110738111045_
                       _e110743111048_
                       _hd110742111051_
                       _tl110741111053_
                       _e110746111056_
                       _hd110745111059_
                       _tl110744111061_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop110750111093_
                                             _target110747111064_
                                             '())))
                                        (___match113146113147_
                                         _e110713110968_
                                         _hd110712110971_
                                         _tl110711110973_
                                         _e110725111000_
                                         _hd110724111003_
                                         _tl110723111005_
                                         _e110728111008_
                                         _hd110727111011_
                                         _tl110726111013_
                                         _e110731111016_
                                         _hd110730111019_
                                         _tl110729111021_
                                         _e110734111024_
                                         _hd110733111027_
                                         _tl110732111029_
                                         _e110737111032_
                                         _hd110736111035_
                                         _tl110735111037_
                                         _e110740111040_
                                         _hd110739111043_
                                         _tl110738111045_
                                         _e110743111048_
                                         _hd110742111051_
                                         _tl110741111053_
                                         _e110746111056_
                                         _hd110745111059_
                                         _tl110744111061_))
                                    (___match113146113147_
                                     _e110713110968_
                                     _hd110712110971_
                                     _tl110711110973_
                                     _e110725111000_
                                     _hd110724111003_
                                     _tl110723111005_
                                     _e110728111008_
                                     _hd110727111011_
                                     _tl110726111013_
                                     _e110731111016_
                                     _hd110730111019_
                                     _tl110729111021_
                                     _e110734111024_
                                     _hd110733111027_
                                     _tl110732111029_
                                     _e110737111032_
                                     _hd110736111035_
                                     _tl110735111037_
                                     _e110740111040_
                                     _hd110739111043_
                                     _tl110738111045_
                                     _e110743111048_
                                     _hd110742111051_
                                     _tl110741111053_
                                     _e110746111056_
                                     _hd110745111059_
                                     _tl110744111061_))))
                            (___match113146113147_
                             _e110713110968_
                             _hd110712110971_
                             _tl110711110973_
                             _e110725111000_
                             _hd110724111003_
                             _tl110723111005_
                             _e110728111008_
                             _hd110727111011_
                             _tl110726111013_
                             _e110731111016_
                             _hd110730111019_
                             _tl110729111021_
                             _e110734111024_
                             _hd110733111027_
                             _tl110732111029_
                             _e110737111032_
                             _hd110736111035_
                             _tl110735111037_
                             _e110740111040_
                             _hd110739111043_
                             _tl110738111045_
                             _e110743111048_
                             _hd110742111051_
                             _tl110741111053_
                             _e110746111056_
                             _hd110745111059_
                             _tl110744111061_))
                        (___match113146113147_
                         _e110713110968_
                         _hd110712110971_
                         _tl110711110973_
                         _e110725111000_
                         _hd110724111003_
                         _tl110723111005_
                         _e110728111008_
                         _hd110727111011_
                         _tl110726111013_
                         _e110731111016_
                         _hd110730111019_
                         _tl110729111021_
                         _e110734111024_
                         _hd110733111027_
                         _tl110732111029_
                         _e110737111032_
                         _hd110736111035_
                         _tl110735111037_
                         _e110740111040_
                         _hd110739111043_
                         _tl110738111045_
                         _e110743111048_
                         _hd110742111051_
                         _tl110741111053_
                         _e110746111056_
                         _hd110745111059_
                         _tl110744111061_))
                    (___match113146113147_
                     _e110713110968_
                     _hd110712110971_
                     _tl110711110973_
                     _e110725111000_
                     _hd110724111003_
                     _tl110723111005_
                     _e110728111008_
                     _hd110727111011_
                     _tl110726111013_
                     _e110731111016_
                     _hd110730111019_
                     _tl110729111021_
                     _e110734111024_
                     _hd110733111027_
                     _tl110732111029_
                     _e110737111032_
                     _hd110736111035_
                     _tl110735111037_
                     _e110740111040_
                     _hd110739111043_
                     _tl110738111045_
                     _e110743111048_
                     _hd110742111051_
                     _tl110741111053_
                     _e110746111056_
                     _hd110745111059_
                     _tl110744111061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113146113147_
                                                     _e110713110968_
                                                     _hd110712110971_
                                                     _tl110711110973_
                                                     _e110725111000_
                                                     _hd110724111003_
                                                     _tl110723111005_
                                                     _e110728111008_
                                                     _hd110727111011_
                                                     _tl110726111013_
                                                     _e110731111016_
                                                     _hd110730111019_
                                                     _tl110729111021_
                                                     _e110734111024_
                                                     _hd110733111027_
                                                     _tl110732111029_
                                                     _e110737111032_
                                                     _hd110736111035_
                                                     _tl110735111037_
                                                     _e110740111040_
                                                     _hd110739111043_
                                                     _tl110738111045_
                                                     _e110743111048_
                                                     _hd110742111051_
                                                     _tl110741111053_
                                                     _e110746111056_
                                                     _hd110745111059_
                                                     _tl110744111061_))))
                                            (___match113146113147_
                                             _e110713110968_
                                             _hd110712110971_
                                             _tl110711110973_
                                             _e110725111000_
                                             _hd110724111003_
                                             _tl110723111005_
                                             _e110728111008_
                                             _hd110727111011_
                                             _tl110726111013_
                                             _e110731111016_
                                             _hd110730111019_
                                             _tl110729111021_
                                             _e110734111024_
                                             _hd110733111027_
                                             _tl110732111029_
                                             _e110737111032_
                                             _hd110736111035_
                                             _tl110735111037_
                                             _e110740111040_
                                             _hd110739111043_
                                             _tl110738111045_
                                             _e110743111048_
                                             _hd110742111051_
                                             _tl110741111053_
                                             _e110746111056_
                                             _hd110745111059_
                                             _tl110744111061_))))
                                    (___match113146113147_
                                     _e110713110968_
                                     _hd110712110971_
                                     _tl110711110973_
                                     _e110725111000_
                                     _hd110724111003_
                                     _tl110723111005_
                                     _e110728111008_
                                     _hd110727111011_
                                     _tl110726111013_
                                     _e110731111016_
                                     _hd110730111019_
                                     _tl110729111021_
                                     _e110734111024_
                                     _hd110733111027_
                                     _tl110732111029_
                                     _e110737111032_
                                     _hd110736111035_
                                     _tl110735111037_
                                     _e110740111040_
                                     _hd110739111043_
                                     _tl110738111045_
                                     _e110743111048_
                                     _hd110742111051_
                                     _tl110741111053_
                                     _e110746111056_
                                     _hd110745111059_
                                     _tl110744111061_))
                                (___match113146113147_
                                 _e110713110968_
                                 _hd110712110971_
                                 _tl110711110973_
                                 _e110725111000_
                                 _hd110724111003_
                                 _tl110723111005_
                                 _e110728111008_
                                 _hd110727111011_
                                 _tl110726111013_
                                 _e110731111016_
                                 _hd110730111019_
                                 _tl110729111021_
                                 _e110734111024_
                                 _hd110733111027_
                                 _tl110732111029_
                                 _e110737111032_
                                 _hd110736111035_
                                 _tl110735111037_
                                 _e110740111040_
                                 _hd110739111043_
                                 _tl110738111045_
                                 _e110743111048_
                                 _hd110742111051_
                                 _tl110741111053_
                                 _e110746111056_
                                 _hd110745111059_
                                 _tl110744111061_))
                            (___kont113049113050_))))
                    (___kont113049113050_))
                (___kont113049113050_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113049113050_))))
                                            (___kont113049113050_))))
                                    (___kont113049113050_))
                                (___kont113049113050_))))
                        (___kont113049113050_))
                    (___kont113049113050_))
                (___kont113049113050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113049113050_))))
                                        (___kont113049113050_))
                                    (___kont113049113050_))
                                (___kont113049113050_))))
                        (___kont113049113050_))))
                (___kont113049113050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110717110981_
                                       _target110714110976_
                                       '())))))
                               (___match113064113065_
                                (lambda (_e110665111228_
                                         _hd110664111231_
                                         _tl110663111233_
                                         ___splice113037113038_
                                         _target110666111236_
                                         _tl110668111238_)
                                  (letrec ((_loop110669111241_
                                            (lambda (_hd110667111244_
                                                     _arg110673111246_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110667111244_))
                                                  (let ((_e110670111249_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110667111244_))))
                                                    (let ((_lp-tl110672111254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110670111249_)))
                                                          (_lp-hd110671111252_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110670111249_))))
                                                      (let ((__tmp114468
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110671111252_ _arg110673111246_))))
                (declare (not safe))
                (_loop110669111241_ _lp-tl110672111254_ __tmp114468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110674111257_
                                                         (reverse _arg110673111246_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110663111233_))
                                                        (let ((_e110677111260_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110663111233_))))
                  (let ((_tl110675111265_
                         (let () (declare (not safe)) (##cdr _e110677111260_)))
                        (_hd110676111263_
                         (let ()
                           (declare (not safe))
                           (##car _e110677111260_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110676111263_))
                        (let ((_e110680111268_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110676111263_))))
                          (let ((_tl110678111273_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110680111268_)))
                                (_hd110679111271_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110680111268_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110679111271_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110679111271_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110678111273_))
                                        (let ((_e110683111276_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110678111273_))))
                                          (let ((_tl110681111281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110683111276_)))
                                                (_hd110682111279_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110683111276_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110682111279_))
                                                (let ((_e110686111284_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110682111279_))))
                                                  (let ((_tl110684111289_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110686111284_)))
                                                        (_hd110685111287_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110686111284_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110685111287_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110685111287_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110684111289_))
                        (let ((_e110689111292_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110684111289_))))
                          (let ((_tl110687111297_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110689111292_)))
                                (_hd110688111295_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110689111292_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110687111297_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110681111281_))
                                    (let ((___splice113039113040_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110681111281_
                                              '0))))
                                      (let ((_tl110692111302_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113039113040_
                                                '1)))
                                            (_target110690111300_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113039113040_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110692111302_))
                                            (letrec ((_loop110693111305_
                                                      (lambda (_hd110691111308_
                                                               _xarg110697111310_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110691111308_))
                                                            (let ((_e110694111313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110691111308_))))
                      (let ((_lp-tl110696111318_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110694111313_)))
                            (_lp-hd110695111316_
                             (let ()
                               (declare (not safe))
                               (##car _e110694111313_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110695111316_))
                            (let ((_e110701111321_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110695111316_))))
                              (let ((_tl110699111326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110701111321_)))
                                    (_hd110700111324_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110701111321_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110700111324_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110700111324_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110699111326_))
                                            (let ((_e110704111329_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110699111326_))))
                                              (let ((_tl110702111334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110704111329_)))
                                                    (_hd110703111332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110704111329_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110702111334_))
                                                    (let ((__tmp114467
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110703111332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110697111310_))))
              (declare (not safe))
              (_loop110693111305_ _lp-tl110696111318_ __tmp114467))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113076113077_
                                                     _e110665111228_
                                                     _hd110664111231_
                                                     _tl110663111233_
                                                     ___splice113037113038_
                                                     _target110666111236_
                                                     _tl110668111238_))))
                                            (___match113076113077_
                                             _e110665111228_
                                             _hd110664111231_
                                             _tl110663111233_
                                             ___splice113037113038_
                                             _target110666111236_
                                             _tl110668111238_))
                                        (___match113076113077_
                                         _e110665111228_
                                         _hd110664111231_
                                         _tl110663111233_
                                         ___splice113037113038_
                                         _target110666111236_
                                         _tl110668111238_))
                                    (___match113076113077_
                                     _e110665111228_
                                     _hd110664111231_
                                     _tl110663111233_
                                     ___splice113037113038_
                                     _target110666111236_
                                     _tl110668111238_))))
                            (___match113076113077_
                             _e110665111228_
                             _hd110664111231_
                             _tl110663111233_
                             ___splice113037113038_
                             _target110666111236_
                             _tl110668111238_))))
                    (let ((_xarg110698111337_ (reverse _xarg110697111310_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110675111265_))
                          (let ((_L111340_ _xarg110698111337_)
                                (_L111341_ _hd110688111295_)
                                (_L111342_ _arg110674111257_))
                            (if (and (let ((__tmp114465
                                            (let ((__tmp114466
                                                   (lambda (_g111370111373_
                                                            _g111371111375_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111370111373_
                                                             _g111371111375_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114466
                                                      '()
                                                      _L111342_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp114465))
                                     (fx= (length (let ((__tmp114463
                                                         (lambda (_g111377111380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111378111382_)
                   (let ()
                     (declare (not safe))
                     (cons _g111377111380_ _g111378111382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114463
                                                            '()
                                                            _L111342_)))
                                          (length (let ((__tmp114464
                                                         (lambda (_g111384111387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111385111389_)
                   (let ()
                     (declare (not safe))
                     (cons _g111384111387_ _g111385111389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114464
                                                            '()
                                                            _L111340_))))
                                     (let ((__tmp114461
                                            (let ((__tmp114462
                                                   (lambda (_g111391111394_
                                                            _g111392111396_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111391111394_
                                                             _g111392111396_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114462
                                                      '()
                                                      _L111342_)))
                                           (__tmp114459
                                            (let ((__tmp114460
                                                   (lambda (_g111398111401_
                                                            _g111399111403_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111398111401_
                                                             _g111399111403_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114460
                                                      '()
                                                      _L111340_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp114461
                                                __tmp114459))
                                     (let ((__tmp114455
                                            (let ((__tmp114458
                                                   (lambda (_g111405111407_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g111405111407_
                                                        _L111341_))))
                                                  (__tmp114456
                                                   (let ((__tmp114457
                                                          (lambda (_g111409111412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g111410111414_)
                    (let ()
                      (declare (not safe))
                      (cons _g111409111412_ _g111410111414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp114457
                                                             '()
                                                             _L111342_))))
                                              (declare (not safe))
                                              (find __tmp114458 __tmp114456))))
                                       (declare (not safe))
                                       (not __tmp114455)))
                                (___kont113035113036_
                                 _L111340_
                                 _L111341_
                                 _L111342_)
                                (___match113076113077_
                                 _e110665111228_
                                 _hd110664111231_
                                 _tl110663111233_
                                 ___splice113037113038_
                                 _target110666111236_
                                 _tl110668111238_)))
                          (___match113076113077_
                           _e110665111228_
                           _hd110664111231_
                           _tl110663111233_
                           ___splice113037113038_
                           _target110666111236_
                           _tl110668111238_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110693111305_
                                                 _target110690111300_
                                                 '())))
                                            (___match113076113077_
                                             _e110665111228_
                                             _hd110664111231_
                                             _tl110663111233_
                                             ___splice113037113038_
                                             _target110666111236_
                                             _tl110668111238_))))
                                    (___match113076113077_
                                     _e110665111228_
                                     _hd110664111231_
                                     _tl110663111233_
                                     ___splice113037113038_
                                     _target110666111236_
                                     _tl110668111238_))
                                (___match113076113077_
                                 _e110665111228_
                                 _hd110664111231_
                                 _tl110663111233_
                                 ___splice113037113038_
                                 _target110666111236_
                                 _tl110668111238_))))
                        (___match113076113077_
                         _e110665111228_
                         _hd110664111231_
                         _tl110663111233_
                         ___splice113037113038_
                         _target110666111236_
                         _tl110668111238_))
                    (___match113076113077_
                     _e110665111228_
                     _hd110664111231_
                     _tl110663111233_
                     ___splice113037113038_
                     _target110666111236_
                     _tl110668111238_))
                (___match113076113077_
                 _e110665111228_
                 _hd110664111231_
                 _tl110663111233_
                 ___splice113037113038_
                 _target110666111236_
                 _tl110668111238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113076113077_
                                                 _e110665111228_
                                                 _hd110664111231_
                                                 _tl110663111233_
                                                 ___splice113037113038_
                                                 _target110666111236_
                                                 _tl110668111238_))))
                                        (___match113076113077_
                                         _e110665111228_
                                         _hd110664111231_
                                         _tl110663111233_
                                         ___splice113037113038_
                                         _target110666111236_
                                         _tl110668111238_))
                                    (___match113076113077_
                                     _e110665111228_
                                     _hd110664111231_
                                     _tl110663111233_
                                     ___splice113037113038_
                                     _target110666111236_
                                     _tl110668111238_))
                                (___match113076113077_
                                 _e110665111228_
                                 _hd110664111231_
                                 _tl110663111233_
                                 ___splice113037113038_
                                 _target110666111236_
                                 _tl110668111238_))))
                        (___match113076113077_
                         _e110665111228_
                         _hd110664111231_
                         _tl110663111233_
                         ___splice113037113038_
                         _target110666111236_
                         _tl110668111238_))))
                (___match113076113077_
                 _e110665111228_
                 _hd110664111231_
                 _tl110663111233_
                 ___splice113037113038_
                 _target110666111236_
                 _tl110668111238_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110669111241_
                                       _target110666111236_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113033113034_))
                              (let ((_e110665111228_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113033113034_))))
                                (let ((_tl110663111233_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110665111228_)))
                                      (_hd110664111231_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110665111228_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110664111231_))
                                      (let ((___splice113037113038_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110664111231_
                                                '0))))
                                        (let ((_tl110668111238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113037113038_
                                                  '1)))
                                              (_target110666111236_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113037113038_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110668111238_))
                                              (___match113064113065_
                                               _e110665111228_
                                               _hd110664111231_
                                               _tl110663111233_
                                               ___splice113037113038_
                                               _target110666111236_
                                               _tl110668111238_)
                                              (___match113076113077_
                                               _e110665111228_
                                               _hd110664111231_
                                               _tl110663111233_
                                               ___splice113037113038_
                                               _target110666111236_
                                               _tl110668111238_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110663111233_))
                                          (let ((_e110780110835_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110663111233_))))
                                            (let ((_tl110778110840_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110780110835_)))
                                                  (_hd110779110838_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110780110835_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110779110838_))
                                                  (let ((_e110783110843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110779110838_))))
                                                    (let ((_tl110781110848_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110783110843_)))
                                                          (_hd110782110846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110783110843_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110782110846_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110782110846_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110781110848_))
                          (let ((_e110786110851_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110781110848_))))
                            (let ((_tl110784110856_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110786110851_)))
                                  (_hd110785110854_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110786110851_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110785110854_))
                                  (let ((_e110789110859_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110785110854_))))
                                    (let ((_tl110787110864_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110789110859_)))
                                          (_hd110788110862_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110789110859_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110788110862_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110788110862_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110787110864_))
                                                  (let ((_e110792110867_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110787110864_))))
                                                    (let ((_tl110790110872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110792110867_)))
                                                          (_hd110791110870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110792110867_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110790110872_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110784110856_))
                      (let ((_e110795110875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110784110856_))))
                        (let ((_tl110793110880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110795110875_)))
                              (_hd110794110878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110795110875_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110794110878_))
                              (let ((_e110798110883_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110794110878_))))
                                (let ((_tl110796110888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110798110883_)))
                                      (_hd110797110886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110798110883_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110797110886_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110797110886_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110796110888_))
                                              (let ((_e110801110891_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110796110888_))))
                                                (let ((_tl110799110896_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110801110891_)))
                                                      (_hd110800110894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110801110891_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110799110896_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110793110880_))
                                                          (let ((_e110804110899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110793110880_))))
                    (let ((_tl110802110904_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110804110899_)))
                          (_hd110803110902_
                           (let ()
                             (declare (not safe))
                             (##car _e110804110899_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd110803110902_))
                          (let ((_e110807110907_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd110803110902_))))
                            (let ((_tl110805110912_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110807110907_)))
                                  (_hd110806110910_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110807110907_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd110806110910_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd110806110910_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110805110912_))
                                          (let ((_e110810110915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110805110912_))))
                                            (let ((_tl110808110920_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110810110915_)))
                                                  (_hd110809110918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110810110915_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110808110920_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110802110904_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110778110840_))
                                                          (___match113174113175_
                                                           _e110665111228_
                                                           _hd110664111231_
                                                           _tl110663111233_
                                                           _e110780110835_
                                                           _hd110779110838_
                                                           _tl110778110840_
                                                           _e110783110843_
                                                           _hd110782110846_
                                                           _tl110781110848_
                                                           _e110786110851_
                                                           _hd110785110854_
                                                           _tl110784110856_
                                                           _e110789110859_
                                                           _hd110788110862_
                                                           _tl110787110864_
                                                           _e110792110867_
                                                           _hd110791110870_
                                                           _tl110790110872_
                                                           _e110795110875_
                                                           _hd110794110878_
                                                           _tl110793110880_
                                                           _e110798110883_
                                                           _hd110797110886_
                                                           _tl110796110888_
                                                           _e110801110891_
                                                           _hd110800110894_
                                                           _tl110799110896_
                                                           _e110804110899_
                                                           _hd110803110902_
                                                           _tl110802110904_
                                                           _e110807110907_
                                                           _hd110806110910_
                                                           _tl110805110912_
                                                           _e110810110915_
                                                           _hd110809110918_
                                                           _tl110808110920_)
                                                          (___kont113049113050_))
                                                      (___kont113049113050_))
                                                  (___kont113049113050_))))
                                          (___kont113049113050_))
                                      (___kont113049113050_))
                                  (___kont113049113050_))))
                          (___kont113049113050_))))
                  (___kont113049113050_))
              (___kont113049113050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113049113050_))
                                          (___kont113049113050_))
                                      (___kont113049113050_))))
                              (___kont113049113050_))))
                      (___kont113049113050_))
                  (___kont113049113050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113049113050_))
                                              (___kont113049113050_))
                                          (___kont113049113050_))))
                                  (___kont113049113050_))))
                          (___kont113049113050_))
                      (___kont113049113050_))
                  (___kont113049113050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113049113050_))))
                                          (___kont113049113050_)))))
                              (___kont113049113050_)))))))
                 (_dispatch-case-e109966_
                  (lambda (_hd110114_ _body110115_)
                    (let* ((_form110117_
                            (let ((__tmp114469
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110115_ '()))))
                              (declare (not safe))
                              (cons _hd110114_ __tmp114469)))
                           (___stx113177113178_ _form110117_)
                           (_g110121110245_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113177113178_)))))
                      (let ((___kont113179113180_
                             (lambda (_L110616_ _L110617_ _L110618_)
                               (let ((__tmp114470
                                      (let ((__tmp114472
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114471
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110617_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114472 __tmp114471))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109962_ __tmp114470))))
                            (___kont113185113186_
                             (lambda (_L110464_ _L110465_ _L110466_ _L110467_)
                               (let ((__tmp114473
                                      (let ((__tmp114475
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114474
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110464_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114475 __tmp114474))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109962_ __tmp114473))))
                            (___kont113189113190_
                             (lambda (_L110330_ _L110331_ _L110332_)
                               (let ((__tmp114476
                                      (let ((__tmp114478
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114477
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110330_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114478 __tmp114477))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self109962_
                                  __tmp114476)))))
                        (let* ((___match113286113287_
                                (lambda (_e110213110250_
                                         _hd110212110253_
                                         _tl110211110255_
                                         _e110216110258_
                                         _hd110215110261_
                                         _tl110214110263_
                                         _e110219110266_
                                         _hd110218110269_
                                         _tl110217110271_
                                         _e110222110274_
                                         _hd110221110277_
                                         _tl110220110279_
                                         _e110225110282_
                                         _hd110224110285_
                                         _tl110223110287_
                                         _e110228110290_
                                         _hd110227110293_
                                         _tl110226110295_
                                         _e110231110298_
                                         _hd110230110301_
                                         _tl110229110303_
                                         _e110234110306_
                                         _hd110233110309_
                                         _tl110232110311_
                                         _e110237110314_
                                         _hd110236110317_
                                         _tl110235110319_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110229110303_))
                                      (let ((_e110240110322_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110229110303_))))
                                        (let ((_tl110238110327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110240110322_)))
                                              (_hd110239110325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110240110322_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110238110327_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110214110263_))
                                                  (___kont113189113190_
                                                   _hd110236110317_
                                                   _hd110227110293_
                                                   _hd110212110253_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110121110245_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110121110245_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110121110245_)))))
                               (___match113216113217_
                                (lambda (_e110174110368_
                                         _hd110173110371_
                                         _tl110172110373_
                                         ___splice113187113188_
                                         _target110175110376_
                                         _tl110177110378_)
                                  (letrec ((_loop110178110381_
                                            (lambda (_hd110176110384_
                                                     _arg110182110386_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110176110384_))
                                                  (let ((_e110179110389_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110176110384_))))
                                                    (let ((_lp-tl110181110394_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110179110389_)))
                                                          (_lp-hd110180110392_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110179110389_))))
                                                      (let ((__tmp114479
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110180110392_ _arg110182110386_))))
                (declare (not safe))
                (_loop110178110381_ _lp-tl110181110394_ __tmp114479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110183110397_
                                                         (reverse _arg110182110386_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110172110373_))
                                                        (let ((_e110186110400_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110172110373_))))
                  (let ((_tl110184110405_
                         (let () (declare (not safe)) (##cdr _e110186110400_)))
                        (_hd110185110403_
                         (let ()
                           (declare (not safe))
                           (##car _e110186110400_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110185110403_))
                        (let ((_e110189110408_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110185110403_))))
                          (let ((_tl110187110413_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110189110408_)))
                                (_hd110188110411_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110189110408_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110188110411_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110188110411_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110187110413_))
                                        (let ((_e110192110416_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110187110413_))))
                                          (let ((_tl110190110421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110192110416_)))
                                                (_hd110191110419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110192110416_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110191110419_))
                                                (let ((_e110195110424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110191110419_))))
                                                  (let ((_tl110193110429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110195110424_)))
                                                        (_hd110194110427_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110195110424_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110194110427_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110194110427_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110193110429_))
                        (let ((_e110198110432_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110193110429_))))
                          (let ((_tl110196110437_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110198110432_)))
                                (_hd110197110435_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110198110432_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110196110437_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110190110421_))
                                    (let ((_e110201110440_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110190110421_))))
                                      (let ((_tl110199110445_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110201110440_)))
                                            (_hd110200110443_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110201110440_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110200110443_))
                                            (let ((_e110204110448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110200110443_))))
                                              (let ((_tl110202110453_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110204110448_)))
                                                    (_hd110203110451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110204110448_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110203110451_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110203110451_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110202110453_))
                                                            (let ((_e110207110456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110202110453_))))
                      (let ((_tl110205110461_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110207110456_)))
                            (_hd110206110459_
                             (let ()
                               (declare (not safe))
                               (##car _e110207110456_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110205110461_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110184110405_))
                                (___kont113185113186_
                                 _hd110206110459_
                                 _hd110197110435_
                                 _tl110177110378_
                                 _arg110183110397_)
                                (___match113286113287_
                                 _e110174110368_
                                 _hd110173110371_
                                 _tl110172110373_
                                 _e110186110400_
                                 _hd110185110403_
                                 _tl110184110405_
                                 _e110189110408_
                                 _hd110188110411_
                                 _tl110187110413_
                                 _e110192110416_
                                 _hd110191110419_
                                 _tl110190110421_
                                 _e110195110424_
                                 _hd110194110427_
                                 _tl110193110429_
                                 _e110198110432_
                                 _hd110197110435_
                                 _tl110196110437_
                                 _e110201110440_
                                 _hd110200110443_
                                 _tl110199110445_
                                 _e110204110448_
                                 _hd110203110451_
                                 _tl110202110453_
                                 _e110207110456_
                                 _hd110206110459_
                                 _tl110205110461_))
                            (let () (declare (not safe)) (_g110121110245_)))))
                    (let () (declare (not safe)) (_g110121110245_)))
                (let () (declare (not safe)) (_g110121110245_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g110121110245_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g110121110245_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g110121110245_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110121110245_)))))
                        (let () (declare (not safe)) (_g110121110245_)))
                    (let () (declare (not safe)) (_g110121110245_)))
                (let () (declare (not safe)) (_g110121110245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g110121110245_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g110121110245_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g110121110245_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110121110245_)))))
                        (let () (declare (not safe)) (_g110121110245_)))))
                (let () (declare (not safe)) (_g110121110245_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110178110381_
                                       _target110175110376_
                                       '())))))
                               (___match113204113205_
                                (lambda (_e110128110504_
                                         _hd110127110507_
                                         _tl110126110509_
                                         ___splice113181113182_
                                         _target110129110512_
                                         _tl110131110514_)
                                  (letrec ((_loop110132110517_
                                            (lambda (_hd110130110520_
                                                     _arg110136110522_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110130110520_))
                                                  (let ((_e110133110525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110130110520_))))
                                                    (let ((_lp-tl110135110530_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110133110525_)))
                                                          (_lp-hd110134110528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110133110525_))))
                                                      (let ((__tmp114481
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110134110528_ _arg110136110522_))))
                (declare (not safe))
                (_loop110132110517_ _lp-tl110135110530_ __tmp114481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110137110533_
                                                         (reverse _arg110136110522_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110126110509_))
                                                        (let ((_e110140110536_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110126110509_))))
                  (let ((_tl110138110541_
                         (let () (declare (not safe)) (##cdr _e110140110536_)))
                        (_hd110139110539_
                         (let ()
                           (declare (not safe))
                           (##car _e110140110536_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110139110539_))
                        (let ((_e110143110544_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110139110539_))))
                          (let ((_tl110141110549_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110143110544_)))
                                (_hd110142110547_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110143110544_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110142110547_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110142110547_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110141110549_))
                                        (let ((_e110146110552_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110141110549_))))
                                          (let ((_tl110144110557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110146110552_)))
                                                (_hd110145110555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110146110552_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110145110555_))
                                                (let ((_e110149110560_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110145110555_))))
                                                  (let ((_tl110147110565_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110149110560_)))
                                                        (_hd110148110563_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110149110560_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110148110563_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110148110563_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110147110565_))
                        (let ((_e110152110568_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110147110565_))))
                          (let ((_tl110150110573_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110152110568_)))
                                (_hd110151110571_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110152110568_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110150110573_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110144110557_))
                                    (let ((___splice113183113184_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110144110557_
                                              '0))))
                                      (let ((_tl110155110578_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113183113184_
                                                '1)))
                                            (_target110153110576_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113183113184_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110155110578_))
                                            (letrec ((_loop110156110581_
                                                      (lambda (_hd110154110584_
                                                               _xarg110160110586_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110154110584_))
                                                            (let ((_e110157110589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110154110584_))))
                      (let ((_lp-tl110159110594_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110157110589_)))
                            (_lp-hd110158110592_
                             (let ()
                               (declare (not safe))
                               (##car _e110157110589_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110158110592_))
                            (let ((_e110164110597_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110158110592_))))
                              (let ((_tl110162110602_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110164110597_)))
                                    (_hd110163110600_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110164110597_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110163110600_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110163110600_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110162110602_))
                                            (let ((_e110167110605_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110162110602_))))
                                              (let ((_tl110165110610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110167110605_)))
                                                    (_hd110166110608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110167110605_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110165110610_))
                                                    (let ((__tmp114480
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110166110608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110160110586_))))
              (declare (not safe))
              (_loop110156110581_ _lp-tl110159110594_ __tmp114480))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113216113217_
                                                     _e110128110504_
                                                     _hd110127110507_
                                                     _tl110126110509_
                                                     ___splice113181113182_
                                                     _target110129110512_
                                                     _tl110131110514_))))
                                            (___match113216113217_
                                             _e110128110504_
                                             _hd110127110507_
                                             _tl110126110509_
                                             ___splice113181113182_
                                             _target110129110512_
                                             _tl110131110514_))
                                        (___match113216113217_
                                         _e110128110504_
                                         _hd110127110507_
                                         _tl110126110509_
                                         ___splice113181113182_
                                         _target110129110512_
                                         _tl110131110514_))
                                    (___match113216113217_
                                     _e110128110504_
                                     _hd110127110507_
                                     _tl110126110509_
                                     ___splice113181113182_
                                     _target110129110512_
                                     _tl110131110514_))))
                            (___match113216113217_
                             _e110128110504_
                             _hd110127110507_
                             _tl110126110509_
                             ___splice113181113182_
                             _target110129110512_
                             _tl110131110514_))))
                    (let ((_xarg110161110613_ (reverse _xarg110160110586_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110138110541_))
                          (___kont113179113180_
                           _xarg110161110613_
                           _hd110151110571_
                           _arg110137110533_)
                          (___match113216113217_
                           _e110128110504_
                           _hd110127110507_
                           _tl110126110509_
                           ___splice113181113182_
                           _target110129110512_
                           _tl110131110514_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110156110581_
                                                 _target110153110576_
                                                 '())))
                                            (___match113216113217_
                                             _e110128110504_
                                             _hd110127110507_
                                             _tl110126110509_
                                             ___splice113181113182_
                                             _target110129110512_
                                             _tl110131110514_))))
                                    (___match113216113217_
                                     _e110128110504_
                                     _hd110127110507_
                                     _tl110126110509_
                                     ___splice113181113182_
                                     _target110129110512_
                                     _tl110131110514_))
                                (___match113216113217_
                                 _e110128110504_
                                 _hd110127110507_
                                 _tl110126110509_
                                 ___splice113181113182_
                                 _target110129110512_
                                 _tl110131110514_))))
                        (___match113216113217_
                         _e110128110504_
                         _hd110127110507_
                         _tl110126110509_
                         ___splice113181113182_
                         _target110129110512_
                         _tl110131110514_))
                    (___match113216113217_
                     _e110128110504_
                     _hd110127110507_
                     _tl110126110509_
                     ___splice113181113182_
                     _target110129110512_
                     _tl110131110514_))
                (___match113216113217_
                 _e110128110504_
                 _hd110127110507_
                 _tl110126110509_
                 ___splice113181113182_
                 _target110129110512_
                 _tl110131110514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113216113217_
                                                 _e110128110504_
                                                 _hd110127110507_
                                                 _tl110126110509_
                                                 ___splice113181113182_
                                                 _target110129110512_
                                                 _tl110131110514_))))
                                        (___match113216113217_
                                         _e110128110504_
                                         _hd110127110507_
                                         _tl110126110509_
                                         ___splice113181113182_
                                         _target110129110512_
                                         _tl110131110514_))
                                    (___match113216113217_
                                     _e110128110504_
                                     _hd110127110507_
                                     _tl110126110509_
                                     ___splice113181113182_
                                     _target110129110512_
                                     _tl110131110514_))
                                (___match113216113217_
                                 _e110128110504_
                                 _hd110127110507_
                                 _tl110126110509_
                                 ___splice113181113182_
                                 _target110129110512_
                                 _tl110131110514_))))
                        (___match113216113217_
                         _e110128110504_
                         _hd110127110507_
                         _tl110126110509_
                         ___splice113181113182_
                         _target110129110512_
                         _tl110131110514_))))
                (___match113216113217_
                 _e110128110504_
                 _hd110127110507_
                 _tl110126110509_
                 ___splice113181113182_
                 _target110129110512_
                 _tl110131110514_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110132110517_
                                       _target110129110512_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113177113178_))
                              (let ((_e110128110504_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113177113178_))))
                                (let ((_tl110126110509_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110128110504_)))
                                      (_hd110127110507_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110128110504_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110127110507_))
                                      (let ((___splice113181113182_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110127110507_
                                                '0))))
                                        (let ((_tl110131110514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113181113182_
                                                  '1)))
                                              (_target110129110512_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113181113182_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110131110514_))
                                              (___match113204113205_
                                               _e110128110504_
                                               _hd110127110507_
                                               _tl110126110509_
                                               ___splice113181113182_
                                               _target110129110512_
                                               _tl110131110514_)
                                              (___match113216113217_
                                               _e110128110504_
                                               _hd110127110507_
                                               _tl110126110509_
                                               ___splice113181113182_
                                               _target110129110512_
                                               _tl110131110514_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110126110509_))
                                          (let ((_e110216110258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110126110509_))))
                                            (let ((_tl110214110263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110216110258_)))
                                                  (_hd110215110261_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110216110258_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110215110261_))
                                                  (let ((_e110219110266_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110215110261_))))
                                                    (let ((_tl110217110271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110219110266_)))
                                                          (_hd110218110269_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110219110266_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110218110269_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110218110269_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110217110271_))
                          (let ((_e110222110274_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110217110271_))))
                            (let ((_tl110220110279_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110222110274_)))
                                  (_hd110221110277_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110222110274_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110221110277_))
                                  (let ((_e110225110282_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110221110277_))))
                                    (let ((_tl110223110287_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110225110282_)))
                                          (_hd110224110285_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110225110282_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110224110285_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110224110285_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110223110287_))
                                                  (let ((_e110228110290_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110223110287_))))
                                                    (let ((_tl110226110295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110228110290_)))
                                                          (_hd110227110293_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110228110290_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110226110295_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110220110279_))
                      (let ((_e110231110298_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110220110279_))))
                        (let ((_tl110229110303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110231110298_)))
                              (_hd110230110301_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110231110298_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110230110301_))
                              (let ((_e110234110306_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110230110301_))))
                                (let ((_tl110232110311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110234110306_)))
                                      (_hd110233110309_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110234110306_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110233110309_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110233110309_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110232110311_))
                                              (let ((_e110237110314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110232110311_))))
                                                (let ((_tl110235110319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110237110314_)))
                                                      (_hd110236110317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110237110314_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110235110319_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110229110303_))
                                                          (let ((_e110240110322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110229110303_))))
                    (let ((_tl110238110327_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110240110322_)))
                          (_hd110239110325_
                           (let ()
                             (declare (not safe))
                             (##car _e110240110322_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110238110327_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110214110263_))
                              (___kont113189113190_
                               _hd110236110317_
                               _hd110227110293_
                               _hd110127110507_)
                              (let () (declare (not safe)) (_g110121110245_)))
                          (let () (declare (not safe)) (_g110121110245_)))))
                  (let () (declare (not safe)) (_g110121110245_)))
              (let () (declare (not safe)) (_g110121110245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g110121110245_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110121110245_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g110121110245_)))))
                              (let ()
                                (declare (not safe))
                                (_g110121110245_)))))
                      (let () (declare (not safe)) (_g110121110245_)))
                  (let () (declare (not safe)) (_g110121110245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110121110245_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110121110245_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110121110245_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g110121110245_)))))
                          (let () (declare (not safe)) (_g110121110245_)))
                      (let () (declare (not safe)) (_g110121110245_)))
                  (let () (declare (not safe)) (_g110121110245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110121110245_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g110121110245_))))))
                              (let ()
                                (declare (not safe))
                                (_g110121110245_))))))))
                 (_generate1109967_
                  (lambda (_args110102_ _arglen110103_ _hd110104_ _body110105_)
                    (let* ((_len110107_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd110104_)))
                           (_condition110109_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd110104_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp114496
                                           (let ((__tmp114497
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len110107_ '()))))
                                             (declare (not safe))
                                             (cons _arglen110103_
                                                   __tmp114497))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp114496))
                                    (let ((__tmp114490
                                           (let ((__tmp114491
                                                  (let ((__tmp114492
                                                         (let ((__tmp114493
                                                                (let ((__tmp114494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114495
                                      (let ()
                                        (declare (not safe))
                                        (cons _len110107_ '()))))
                                 (declare (not safe))
                                 (cons _arglen110103_ __tmp114495))))
                          (declare (not safe))
                          (cons '##fx= __tmp114494))))
                   (declare (not safe))
                   (cons __tmp114493 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp114492))))
                                             (declare (not safe))
                                             (cons '() __tmp114491))))
                                      (declare (not safe))
                                      (cons 'let __tmp114490)))
                                (if (> _len110107_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp114488
                                               (let ((__tmp114489
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len110107_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen110103_
                                                       __tmp114489))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp114488))
                                        (let ((__tmp114482
                                               (let ((__tmp114483
                                                      (let ((__tmp114484
                                                             (let ((__tmp114485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114486
                                   (let ((__tmp114487
                                          (let ()
                                            (declare (not safe))
                                            (cons _len110107_ '()))))
                                     (declare (not safe))
                                     (cons _arglen110103_ __tmp114487))))
                              (declare (not safe))
                              (cons '##fx>= __tmp114486))))
                       (declare (not safe))
                       (cons __tmp114485 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp114484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp114483))))
                                          (declare (not safe))
                                          (cons 'let __tmp114482)))
                                    '#t)))
                           (_dispatch110111_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?109965_
                                   _hd110104_
                                   _body110105_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e109966_
                                   _hd110104_
                                   _body110105_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self109962_
                                   _hd110104_
                                   _body110105_)))))
                      (let ((__tmp114498
                             (let ((__tmp114499
                                    (let ((__tmp114500
                                           (let ((__tmp114501
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args110102_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch110111_
                                                   __tmp114501))))
                                      (declare (not safe))
                                      (cons 'apply __tmp114500))))
                               (declare (not safe))
                               (cons __tmp114499 '()))))
                        (declare (not safe))
                        (cons _condition110109_ __tmp114498))))))
          (let* ((_g109969109997_
                  (lambda (_g109970109994_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109970109994_))))
                 (_g109968110099_
                  (lambda (_g109970110000_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109970110000_))
                        (let ((_e109975110002_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109970110000_))))
                          (let ((_hd109974110005_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109975110002_)))
                                (_tl109973110007_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109975110002_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109973110007_))
                                (let ((_g114502_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl109973110007_
                                          '0))))
                                  (begin
                                    (let ((_g114503_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114502_)
                                                 (##vector-length _g114502_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114503_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114503_)))
                                    (let ((_target109976110010_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114502_ 0)))
                                          (_tl109978110012_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114502_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109978110012_))
                                          (letrec ((_loop109979110015_
                                                    (lambda (_hd109977110018_
                                                             _body109983110020_
                                                             _hd109984110022_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd109977110018_))
                                                          (let ((_e109980110025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd109977110018_))))
                    (let ((_lp-hd109981110028_
                           (let ()
                             (declare (not safe))
                             (##car _e109980110025_)))
                          (_lp-tl109982110030_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109980110025_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd109981110028_))
                          (let ((_e109989110033_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd109981110028_))))
                            (let ((_hd109988110036_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109989110033_)))
                                  (_tl109987110038_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109989110033_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl109987110038_))
                                  (let ((_e109992110041_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl109987110038_))))
                                    (let ((_hd109991110044_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109992110041_)))
                                          (_tl109990110046_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109992110041_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109990110046_))
                                          (let ((__tmp114532
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109991110044_
                                                         _body109983110020_)))
                                                (__tmp114531
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109988110036_
                                                         _hd109984110022_))))
                                            (declare (not safe))
                                            (_loop109979110015_
                                             _lp-tl109982110030_
                                             __tmp114532
                                             __tmp114531))
                                          (let ()
                                            (declare (not safe))
                                            (_g109969109997_
                                             _g109970110000_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109969109997_ _g109970110000_)))))
                          (let ()
                            (declare (not safe))
                            (_g109969109997_ _g109970110000_)))))
                  (let ((_body109985110049_ (reverse _body109983110020_))
                        (_hd109986110051_ (reverse _hd109984110022_)))
                    ((lambda (_L110054_ _L110055_)
                       (let ((_args110074_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen110075_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name110076_
                              (let ((_$e110071_
                                     (let ((__tmp114504
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp114504 _stx109963_))))
                                (if _$e110071_
                                    _$e110071_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp114505
                                (let ((__tmp114506
                                       (let ((__tmp114507
                                              (let ((__tmp114508
                                                     (let ((__tmp114521
                                                            (let ((__tmp114522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114523
                                  (let ((__tmp114524
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp114530
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110074_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp114530))
                                             (let ((__tmp114525
                                                    (let ((__tmp114526
                                                           (let ((__tmp114527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114528
                                 (let ((__tmp114529
                                        (let ()
                                          (declare (not safe))
                                          (cons _args110074_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp114529))))
                            (declare (not safe))
                            (cons __tmp114528 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp114527))))
              (declare (not safe))
              (cons '() __tmp114526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp114525)))))
                                    (declare (not safe))
                                    (cons __tmp114524 '()))))
                             (declare (not safe))
                             (cons _arglen110075_ __tmp114523))))
                      (declare (not safe))
                      (cons __tmp114522 '())))
                   (__tmp114509
                    (let ((__tmp114510
                           (let ((__tmp114511
                                  (let ((__tmp114515
                                         (let ((__tmp114516
                                                (let ((__tmp114517
                                                       (let ((__tmp114518
                                                              (let ((__tmp114519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114520
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110074_ '()))))
                               (declare (not safe))
                               (cons _name110076_ __tmp114520))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp114519))))
                 (declare (not safe))
                 (cons __tmp114518 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp114517))))
                                           (declare (not safe))
                                           (cons __tmp114516 '())))
                                        (__tmp114512
                                         (map (lambda (_g110077110080_
                                                       _g110078110082_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1109967_
                                                   _args110074_
                                                   _arglen110075_
                                                   _g110077110080_
                                                   _g110078110082_)))
                                              (let ((__tmp114513
                                                     (lambda (_g110084110087_
                                                              _g110085110089_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110084110087_
                                                               _g110085110089_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114513
                                                        '()
                                                        _L110055_))
                                              (let ((__tmp114514
                                                     (lambda (_g110091110094_
                                                              _g110092110096_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110091110094_
                                                               _g110092110096_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114514
                                                        '()
                                                        _L110054_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp114515 __tmp114512))))
                             (declare (not safe))
                             (cons 'cond __tmp114511))))
                      (declare (not safe))
                      (cons __tmp114510 '()))))
               (declare (not safe))
               (cons __tmp114521 __tmp114509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp114508))))
                                         (declare (not safe))
                                         (cons __tmp114507 '()))))
                                  (declare (not safe))
                                  (cons _args110074_ __tmp114506))))
                           (declare (not safe))
                           (cons 'lambda __tmp114505))))
                     _body109985110049_
                     _hd109986110051_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop109979110015_
                                               _target109976110010_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g109969109997_
                                             _g109970110000_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g109969109997_ _g109970110000_)))))
                        (let ()
                          (declare (not safe))
                          (_g109969109997_ _g109970110000_))))))
            (declare (not safe))
            (_g109968110099_ _stx109963_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self109233_ _stx109234_ _compiled-body?109235_)
        (letrec ((_generate-simple109237_
                  (lambda (_hd109947_ _body109948_)
                    (let ((__tmp114533
                           (let ((__tmp114534
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self109233_
                                     'let
                                     _hd109947_
                                     _body109948_
                                     _compiled-body?109235_))))
                             (declare (not safe))
                             (_coalesce-let*109239_ __tmp114534))))
                      (declare (not safe))
                      (_coalesce-boolean109238_ __tmp114533))))
                 (_coalesce-boolean109238_
                  (lambda (_code109808_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code109809109835_ _code109808_)
                               (_else109811109843_ (lambda () _code109808_))
                               (_K109813109880_
                                (lambda (_expr2109846_
                                         _expr1109847_
                                         _id109848_)
                                  (let* ((_expr2109849109857_ _expr2109846_)
                                         (_else109851109865_
                                          (lambda ()
                                            (let ((__tmp114535
                                                   (let ((__tmp114536
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2109846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1109847_
                                                           __tmp114536))))
                                              (declare (not safe))
                                              (cons 'or __tmp114535))))
                                         (_K109853109870_
                                          (lambda (_exprs109868_)
                                            (let ((__tmp114537
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1109847_
                                                           _exprs109868_))))
                                              (declare (not safe))
                                              (cons 'or __tmp114537)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2109849109857_))
                                        (let ((_hd109854109873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2109849109857_)))
                                              (_tl109855109875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2109849109857_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109854109873_ 'or))
                                              (let ((_exprs109878_
                                                     _tl109855109875_))
                                                (declare (not safe))
                                                (_K109853109870_
                                                 _exprs109878_))
                                              (let ()
                                                (declare (not safe))
                                                (_else109851109865_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109851109865_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code109809109835_))
                              (let ((_hd109814109883_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code109809109835_)))
                                    (_tl109815109885_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code109809109835_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd109814109883_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl109815109885_))
                                        (let ((_hd109816109888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl109815109885_)))
                                              (_tl109817109890_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl109815109885_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd109816109888_))
                                              (let ((_hd109828109893_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd109816109888_)))
                                                    (_tl109829109895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd109816109888_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd109828109893_))
                                                    (let ((_hd109830109898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd109828109893_)))
                                                          (_tl109831109900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd109828109893_))))
                                                      (let ((_id109903_
                                                             _hd109830109898_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl109831109900_))
                                                            (let ((_hd109832109905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl109831109900_)))
                          (_tl109833109907_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl109831109900_))))
                      (let ((_expr1109910_ _hd109832109905_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl109833109907_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl109829109895_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl109817109890_))
                                    (let ((_hd109818109912_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl109817109890_)))
                                          (_tl109819109914_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl109817109890_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109818109912_))
                                          (let ((_hd109820109917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109818109912_)))
                                                (_tl109821109919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109818109912_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109820109917_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl109821109919_))
                                                    (let ((_hd109822109922_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl109821109919_)))
                                                          (_tl109823109924_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl109821109919_))))
                                                      (if ((lambda (_g109926109928_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g109926109928_ _id109903_)))
                   _hd109822109922_)
                  (if (let () (declare (not safe)) (##pair? _tl109823109924_))
                      (let ((_hd109824109931_
                             (let ()
                               (declare (not safe))
                               (##car _tl109823109924_)))
                            (_tl109825109933_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl109823109924_))))
                        (if ((lambda (_g109935109937_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g109935109937_ _id109903_)))
                             _hd109824109931_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl109825109933_))
                                (let ((_hd109826109940_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl109825109933_)))
                                      (_tl109827109942_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl109825109933_))))
                                  (let ((_expr2109945_ _hd109826109940_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl109827109942_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl109819109914_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109813109880_
                                               _expr2109945_
                                               _expr1109910_
                                               _id109903_))
                                            (let ()
                                              (declare (not safe))
                                              (_else109811109843_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else109811109843_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else109811109843_)))
                            (let ()
                              (declare (not safe))
                              (_else109811109843_))))
                      (let () (declare (not safe)) (_else109811109843_)))
                  (let () (declare (not safe)) (_else109811109843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109811109843_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else109811109843_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else109811109843_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109811109843_)))
                                (let ()
                                  (declare (not safe))
                                  (_else109811109843_)))
                            (let ()
                              (declare (not safe))
                              (_else109811109843_)))))
                    (let () (declare (not safe)) (_else109811109843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109811109843_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else109811109843_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109811109843_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else109811109843_))))
                              (let ()
                                (declare (not safe))
                                (_else109811109843_))))
                        _code109808_)))
                 (_coalesce-let*109239_
                  (lambda (_code109541_)
                    (let* ((_code109542109606_ _code109541_)
                           (_else109546109614_ (lambda () _code109541_)))
                      (let ((_K109588109759_
                             (lambda (_body109755_ _expr109756_ _id109757_)
                               (let ((__tmp114538
                                      (let ((__tmp114539
                                             (let ((__tmp114540
                                                    (let ((__tmp114541
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr109756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id109757_ __tmp114541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114540 '()))))
                                        (declare (not safe))
                                        (cons __tmp114539 _body109755_))))
                                 (declare (not safe))
                                 (cons 'let __tmp114538))))
                            (_K109565109684_
                             (lambda (_body109678_
                                      _expr2109679_
                                      _id2109680_
                                      _expr1109681_
                                      _id1109682_)
                               (let ((__tmp114542
                                      (let ((__tmp114543
                                             (let ((__tmp114547
                                                    (let ((__tmp114548
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109682_ __tmp114548)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114544
                                                    (let ((__tmp114545
                                                           (let ((__tmp114546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2109679_ '()))))
                     (declare (not safe))
                     (cons _id2109680_ __tmp114546))))
              (declare (not safe))
              (cons __tmp114545 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114547
                                                     __tmp114544))))
                                        (declare (not safe))
                                        (cons __tmp114543 _body109678_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114542))))
                            (_K109548109623_
                             (lambda (_body109618_
                                      _bind109619_
                                      _expr1109620_
                                      _id1109621_)
                               (let ((__tmp114549
                                      (let ((__tmp114550
                                             (let ((__tmp114551
                                                    (let ((__tmp114552
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109621_ __tmp114552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114551
                                                     _bind109619_))))
                                        (declare (not safe))
                                        (cons __tmp114550 _body109618_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114549)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code109542109606_))
                            (let ((_tl109590109764_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code109542109606_)))
                                  (_hd109589109762_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code109542109606_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd109589109762_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109590109764_))
                                      (let ((_tl109592109769_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109590109764_)))
                                            (_hd109591109767_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109590109764_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd109591109767_))
                                            (let ((_tl109600109774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd109591109767_)))
                                                  (_hd109599109772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd109591109767_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd109599109772_))
                                                  (let ((_tl109602109779_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd109599109772_)))
                                                        (_hd109601109777_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd109599109772_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109602109779_))
                                                        (let ((_tl109604109786_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109602109779_)))
                      (_hd109603109784_
                       (let () (declare (not safe)) (##car _tl109602109779_))))
                  (if (let () (declare (not safe)) (##null? _tl109604109786_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl109600109774_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl109592109769_))
                              (let ((_tl109594109793_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl109592109769_)))
                                    (_hd109593109791_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl109592109769_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109593109791_))
                                    (let ((_tl109596109798_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109593109791_)))
                                          (_hd109595109796_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109593109791_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd109595109796_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl109596109798_))
                                              (let ((_tl109598109803_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl109596109798_)))
                                                    (_hd109597109801_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl109596109798_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd109597109801_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109594109793_))
                                                        (let ((_id109782_
                                                               _hd109601109777_)
                                                              (_expr109789_
                                                               _hd109603109784_)
                                                              (_body109806_
                                                               _tl109598109803_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109588109759_
                                                             _body109806_
                                                             _expr109789_
                                                             _id109782_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109546109614_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd109597109801_))
                                                        (let ((_tl109577109733_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd109597109801_)))
                      (_hd109576109731_
                       (let () (declare (not safe)) (##car _hd109597109801_))))
                  (if (let () (declare (not safe)) (##pair? _hd109576109731_))
                      (let ((_tl109579109738_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd109576109731_)))
                            (_hd109578109736_
                             (let ()
                               (declare (not safe))
                               (##car _hd109576109731_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109579109738_))
                            (let ((_tl109581109745_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109579109738_)))
                                  (_hd109580109743_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109579109738_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109581109745_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl109577109733_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109594109793_))
                                          (let ((_id1109707_ _hd109601109777_)
                                                (_expr1109714_
                                                 _hd109603109784_)
                                                (_id2109741_ _hd109578109736_)
                                                (_expr2109748_
                                                 _hd109580109743_)
                                                (_body109750_
                                                 _tl109598109803_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109565109684_
                                               _body109750_
                                               _expr2109748_
                                               _id2109741_
                                               _expr1109714_
                                               _id1109707_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109546109614_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else109546109614_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109546109614_))))
                            (let ()
                              (declare (not safe))
                              (_else109546109614_))))
                      (let () (declare (not safe)) (_else109546109614_))))
                (let () (declare (not safe)) (_else109546109614_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else109546109614_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109595109796_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl109596109798_))
                                                  (let ((_tl109558109667_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl109596109798_)))
                                                        (_hd109557109665_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl109596109798_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109594109793_))
                                                        (let ((_id1109646_
                                                               _hd109601109777_)
                                                              (_expr1109653_
                                                               _hd109603109784_)
                                                              (_bind109670_
                                                               _hd109557109665_)
                                                              (_body109672_
                                                               _tl109558109667_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109548109623_
                                                             _body109672_
                                                             _bind109670_
                                                             _expr1109653_
                                                             _id1109646_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109546109614_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109546109614_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else109546109614_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109546109614_))))
                              (let ()
                                (declare (not safe))
                                (_else109546109614_)))
                          (let () (declare (not safe)) (_else109546109614_)))
                      (let () (declare (not safe)) (_else109546109614_))))
                (let () (declare (not safe)) (_else109546109614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109546109614_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else109546109614_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else109546109614_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109546109614_))))
                            (let ()
                              (declare (not safe))
                              (_else109546109614_)))))))
                 (_generate-values109240_
                  (lambda (_hd109354_ _body109355_)
                    (let _lp109357_ ((_rest109359_ _hd109354_)
                                     (_bind109360_ '())
                                     (_check109361_ '())
                                     (_post109362_ '()))
                      (let* ((___stx113488113489_ _rest109359_)
                             (_g109365109376_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113488113489_)))))
                        (let ((___kont113490113491_
                               (lambda (_L109403_ _L109404_)
                                 (let* ((___stx113444113445_ _L109404_)
                                        (_g109419109444_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113444113445_)))))
                                   (let ((___kont113446113447_
                                          (lambda (_L109517_ _L109518_)
                                            (let ((_eid109532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109518_)))
                                                  (_expr109533_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self109233_
                                                      _L109517_))))
                                              (let ((__tmp114553
                                                     (let ((__tmp114554
                                                            (let ((__tmp114555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109533_ '()))))
                      (declare (not safe))
                      (cons _eid109532_ __tmp114555))))
               (declare (not safe))
               (cons __tmp114554 _bind109360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp109357_
                                                 _L109403_
                                                 __tmp114553
                                                 _check109361_
                                                 _post109362_)))))
                                         (___kont113448113449_
                                          (lambda (_L109465_ _L109466_)
                                            (let* ((_vals109479_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109481_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109479_
                                                       _L109466_
                                                       _L109465_)))
                                                   (_refs109483_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109479_
                                                       _L109466_)))
                                                   (_expr109485_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self109233_
                                                       _L109465_))))
                                              (let ((__tmp114558
                                                     (let ((__tmp114559
                                                            (let ((__tmp114560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109485_ '()))))
                      (declare (not safe))
                      (cons _vals109479_ __tmp114560))))
               (declare (not safe))
               (cons __tmp114559 _bind109360_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114557
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109481_
                                                             _check109361_)))
                                                    (__tmp114556
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs109483_
                                                             _post109362_))))
                                                (declare (not safe))
                                                (_lp109357_
                                                 _L109403_
                                                 __tmp114558
                                                 __tmp114557
                                                 __tmp114556))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113444113445_))
                                         (let ((_e109425109493_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113444113445_))))
                                           (let ((_tl109423109498_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e109425109493_)))
                                                 (_hd109424109496_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e109425109493_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd109424109496_))
                                                 (let ((_e109428109501_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd109424109496_))))
                                                   (let ((_tl109426109506_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e109428109501_)))
                                                         (_hd109427109504_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e109428109501_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl109426109506_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl109423109498_))
                     (let ((_e109431109509_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109423109498_))))
                       (let ((_tl109429109514_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109431109509_)))
                             (_hd109430109512_
                              (let ()
                                (declare (not safe))
                                (##car _e109431109509_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109429109514_))
                             (___kont113446113447_
                              _hd109430109512_
                              _hd109427109504_)
                             (let () (declare (not safe)) (_g109419109444_)))))
                     (let () (declare (not safe)) (_g109419109444_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl109423109498_))
                     (let ((_e109439109457_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109423109498_))))
                       (let ((_tl109437109462_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109439109457_)))
                             (_hd109438109460_
                              (let ()
                                (declare (not safe))
                                (##car _e109439109457_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109437109462_))
                             (___kont113448113449_
                              _hd109438109460_
                              _hd109424109496_)
                             (let () (declare (not safe)) (_g109419109444_)))))
                     (let () (declare (not safe)) (_g109419109444_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl109423109498_))
                                                     (let ((_e109439109457_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl109423109498_))))
                                                       (let ((_tl109437109462_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e109439109457_)))
                     (_hd109438109460_
                      (let () (declare (not safe)) (##car _e109439109457_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl109437109462_))
                     (___kont113448113449_ _hd109438109460_ _hd109424109496_)
                     (let () (declare (not safe)) (_g109419109444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g109419109444_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g109419109444_)))))))
                              (___kont113492113493_
                               (lambda ()
                                 (let* ((_body109383_
                                         (if _compiled-body?109235_
                                             _body109355_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self109233_
                                                _body109355_))))
                                        (_body109385_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post109241_
                                            _post109362_
                                            _body109383_)))
                                        (_body109387_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check109242_
                                            _check109361_
                                            _body109385_))))
                                   (let ((__tmp114561
                                          (let ((__tmp114563
                                                 (reverse _bind109360_))
                                                (__tmp114562
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body109387_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114563 __tmp114562))))
                                     (declare (not safe))
                                     (cons 'let __tmp114561))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113488113489_))
                              (let ((_e109371109395_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113488113489_))))
                                (let ((_tl109369109400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109371109395_)))
                                      (_hd109370109398_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109371109395_))))
                                  (___kont113490113491_
                                   _tl109369109400_
                                   _hd109370109398_)))
                              (___kont113492113493_)))))))
                 (_generate-values-post109241_
                  (lambda (_post109313_ _body109314_)
                    (let _lp109316_ ((_rest109318_ _post109313_)
                                     (_body109319_ _body109314_))
                      (let* ((_rest109320109328_ _rest109318_)
                             (_else109322109336_ (lambda () _body109319_))
                             (_K109324109342_
                              (lambda (_rest109339_ _bind109340_)
                                (let ((__tmp114564
                                       (let ((__tmp114565
                                              (let ((__tmp114566
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body109319_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind109340_
                                                      __tmp114566))))
                                         (declare (not safe))
                                         (cons 'let __tmp114565))))
                                  (declare (not safe))
                                  (_lp109316_ _rest109339_ __tmp114564)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109320109328_))
                            (let ((_hd109325109345_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109320109328_)))
                                  (_tl109326109347_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109320109328_))))
                              (let* ((_bind109350_ _hd109325109345_)
                                     (_rest109352_ _tl109326109347_))
                                (declare (not safe))
                                (_K109324109342_ _rest109352_ _bind109350_)))
                            (let ()
                              (declare (not safe))
                              (_else109322109336_)))))))
                 (_generate-values-check109242_
                  (lambda (_check109310_ _body109311_)
                    (let ((__tmp114567
                           (let ((__tmp114569
                                  (let ()
                                    (declare (not safe))
                                    (cons _body109311_ '())))
                                 (__tmp114568 (reverse _check109310_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114569 __tmp114568))))
                      (declare (not safe))
                      (cons 'begin __tmp114567)))))
          (let* ((_g109244109261_
                  (lambda (_g109245109258_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109245109258_))))
                 (_g109243109307_
                  (lambda (_g109245109264_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109245109264_))
                        (let ((_e109250109266_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109245109264_))))
                          (let ((_hd109249109269_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109250109266_)))
                                (_tl109248109271_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109250109266_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl109248109271_))
                                (let ((_e109253109274_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl109248109271_))))
                                  (let ((_hd109252109277_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e109253109274_)))
                                        (_tl109251109279_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e109253109274_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109251109279_))
                                        (let ((_e109256109282_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109251109279_))))
                                          (let ((_hd109255109285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109256109282_)))
                                                (_tl109254109287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109256109282_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl109254109287_))
                                                ((lambda (_L109290_ _L109291_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L109291_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple109237_
                                                          _L109291_
                                                          _L109290_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values109240_
                                                          _L109291_
                                                          _L109290_))))
                                                 _hd109255109285_
                                                 _hd109252109277_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g109244109261_
                                                   _g109245109264_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109244109261_ _g109245109264_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g109244109261_ _g109245109264_)))))
                        (let ()
                          (declare (not safe))
                          (_g109244109261_ _g109245109264_))))))
            (declare (not safe))
            (_g109243109307_ _stx109234_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self109953_ _stx109954_)
        (let ((_compiled-body?109956_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self109953_
           _stx109954_
           _compiled-body?109956_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g114571_
        (let ((_g114570_ (let () (declare (not safe)) (##length _g114571_))))
          (cond ((let () (declare (not safe)) (##fx= _g114570_ 2))
                 (apply (lambda (_self109953_ _stx109954_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self109953_
                             _stx109954_)))
                        _g114571_))
                ((let () (declare (not safe)) (##fx= _g114570_ 3))
                 (apply (lambda (_self109958_
                                 _stx109959_
                                 _compiled-body?109960_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self109958_
                             _stx109959_
                             _compiled-body?109960_)))
                        _g114571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g114571_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals109127_ _hd109128_)
        (let _lp109130_ ((_rest109132_ _hd109128_)
                         (_k109133_ '0)
                         (_r109134_ '()))
          (let* ((___stx113502113503_ _rest109132_)
                 (_g109139109156_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx113502113503_)))))
            (let ((___kont113504113505_
                   (lambda (_L109219_)
                     (let ((__tmp114572
                            (let () (declare (not safe)) (fx+ _k109133_ '1))))
                       (declare (not safe))
                       (_lp109130_ _L109219_ __tmp114572 _r109134_))))
                  (___kont113506113507_
                   (lambda (_L109192_ _L109193_)
                     (let ((__tmp114578
                            (let () (declare (not safe)) (fx+ _k109133_ '1)))
                           (__tmp114573
                            (let ((__tmp114574
                                   (let ((__tmp114577
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109193_)))
                                         (__tmp114575
                                          (let ((__tmp114576
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals109127_
                                                    _k109133_
                                                    _L109192_))))
                                            (declare (not safe))
                                            (cons __tmp114576 '()))))
                                     (declare (not safe))
                                     (cons __tmp114577 __tmp114575))))
                              (declare (not safe))
                              (cons __tmp114574 _r109134_))))
                       (declare (not safe))
                       (_lp109130_ _L109192_ __tmp114578 __tmp114573))))
                  (___kont113508113509_
                   (lambda (_L109168_)
                     (let ((__tmp114579
                            (let ((__tmp114580
                                   (let ((__tmp114583
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109168_)))
                                         (__tmp114581
                                          (let ((__tmp114582
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals109127_
                                                    _k109133_))))
                                            (declare (not safe))
                                            (cons __tmp114582 '()))))
                                     (declare (not safe))
                                     (cons __tmp114583 __tmp114581))))
                              (declare (not safe))
                              (cons __tmp114580 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp114579 _r109134_))))
                  (___kont113510113511_ (lambda () (reverse _r109134_))))
              (let ((_g109137109179_
                     (lambda ()
                       (let ((_L109168_ ___stx113502113503_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L109168_))
                             (___kont113508113509_ _L109168_)
                             (___kont113510113511_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx113502113503_))
                    (let ((_e109144109208_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx113502113503_))))
                      (let ((_tl109142109213_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109144109208_)))
                            (_hd109143109211_
                             (let ()
                               (declare (not safe))
                               (##car _e109144109208_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd109143109211_))
                            (let ((_e109145109216_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd109143109211_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e109145109216_ '#f))
                                  (___kont113504113505_ _tl109142109213_)
                                  (___kont113506113507_
                                   _tl109142109213_
                                   _hd109143109211_)))
                            (___kont113506113507_
                             _tl109142109213_
                             _hd109143109211_))))
                    (let () (declare (not safe)) (_g109137109179_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self108806_ _stx108807_ _compiled-body?108808_)
        (letrec ((_generate-simple108810_
                  (lambda (_hd109112_ _body109113_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self108806_
                       'letrec
                       _hd109112_
                       _body109113_
                       _compiled-body?108808_))))
                 (_generate-values108811_
                  (lambda (_hd108891_ _body108892_)
                    (let _lp108894_ ((_rest108896_ _hd108891_)
                                     (_bind108897_ '())
                                     (_check108898_ '())
                                     (_post108899_ '()))
                      (let* ((___stx113576113577_ _rest108896_)
                             (_g108902108913_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113576113577_)))))
                        (let ((___kont113578113579_
                               (lambda (_L108940_ _L108941_)
                                 (let* ((___stx113532113533_ _L108941_)
                                        (_g108956108981_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113532113533_)))))
                                   (let ((___kont113534113535_
                                          (lambda (_L109088_ _L109089_)
                                            (let ((_eid109103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109089_)))
                                                  (_expr109104_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108806_
                                                      _L109088_))))
                                              (let ((__tmp114584
                                                     (let ((__tmp114585
                                                            (let ((__tmp114586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109104_ '()))))
                      (declare (not safe))
                      (cons _eid109103_ __tmp114586))))
               (declare (not safe))
               (cons __tmp114585 _bind108897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108894_
                                                 _L108940_
                                                 __tmp114584
                                                 _check108898_
                                                 _post108899_)))))
                                         (___kont113536113537_
                                          (lambda (_L109002_ _L109003_)
                                            (let* ((_vals109016_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109018_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109016_
                                                       _L109003_
                                                       _L109002_)))
                                                   (_refs109020_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109016_
                                                       _L109003_)))
                                                   (_expr109022_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108806_
                                                       _L109002_))))
                                              (let ((__tmp114589
                                                     (let ((__tmp114592
                                                            (let ((__tmp114593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114594
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr109022_ '()))))
                             (declare (not safe))
                             (cons _vals109016_ __tmp114594))))
                      (declare (not safe))
                      (cons __tmp114593 _bind108897_)))
                   (__tmp114590
                    (map (lambda (_e109024109026_)
                           (let* ((_g109028109037_ _e109024109026_)
                                  (_E109030109041_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g109028109037_))))
                                  (_K109031109046_
                                   (lambda (_eid109044_)
                                     (let ((__tmp114591
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid109044_ __tmp114591)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g109028109037_))
                                 (let ((_hd109032109049_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g109028109037_)))
                                       (_tl109033109051_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g109028109037_))))
                                   (let ((_eid109054_ _hd109032109049_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl109033109051_))
                                         (let ((_tl109035109056_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl109033109051_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl109035109056_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K109031109046_ _eid109054_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E109030109041_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E109030109041_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E109030109041_)))))
                         _refs109020_)))
               (declare (not safe))
               (foldl1 cons __tmp114592 __tmp114590)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114588
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109018_
                                                             _check108898_)))
                                                    (__tmp114587
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs109020_
                                                               _post108899_))))
                                                (declare (not safe))
                                                (_lp108894_
                                                 _L108940_
                                                 __tmp114589
                                                 __tmp114588
                                                 __tmp114587))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113532113533_))
                                         (let ((_e108962109064_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113532113533_))))
                                           (let ((_tl108960109069_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e108962109064_)))
                                                 (_hd108961109067_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e108962109064_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd108961109067_))
                                                 (let ((_e108965109072_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd108961109067_))))
                                                   (let ((_tl108963109077_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e108965109072_)))
                                                         (_hd108964109075_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e108965109072_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl108963109077_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl108960109069_))
                     (let ((_e108968109080_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108960109069_))))
                       (let ((_tl108966109085_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108968109080_)))
                             (_hd108967109083_
                              (let ()
                                (declare (not safe))
                                (##car _e108968109080_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108966109085_))
                             (___kont113534113535_
                              _hd108967109083_
                              _hd108964109075_)
                             (let () (declare (not safe)) (_g108956108981_)))))
                     (let () (declare (not safe)) (_g108956108981_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl108960109069_))
                     (let ((_e108976108994_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108960109069_))))
                       (let ((_tl108974108999_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108976108994_)))
                             (_hd108975108997_
                              (let ()
                                (declare (not safe))
                                (##car _e108976108994_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108974108999_))
                             (___kont113536113537_
                              _hd108975108997_
                              _hd108961109067_)
                             (let () (declare (not safe)) (_g108956108981_)))))
                     (let () (declare (not safe)) (_g108956108981_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl108960109069_))
                                                     (let ((_e108976108994_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl108960109069_))))
                                                       (let ((_tl108974108999_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e108976108994_)))
                     (_hd108975108997_
                      (let () (declare (not safe)) (##car _e108976108994_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl108974108999_))
                     (___kont113536113537_ _hd108975108997_ _hd108961109067_)
                     (let () (declare (not safe)) (_g108956108981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g108956108981_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g108956108981_)))))))
                              (___kont113580113581_
                               (lambda ()
                                 (let* ((_body108920_
                                         (if _compiled-body?108808_
                                             _body108892_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108806_
                                                _body108892_))))
                                        (_body108922_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108813_
                                            _post108899_
                                            _body108920_)))
                                        (_body108924_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108812_
                                            _check108898_
                                            _body108922_))))
                                   (let ((__tmp114595
                                          (let ((__tmp114597
                                                 (reverse _bind108897_))
                                                (__tmp114596
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body108924_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114597 __tmp114596))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp114595))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113576113577_))
                              (let ((_e108908108932_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113576113577_))))
                                (let ((_tl108906108937_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108908108932_)))
                                      (_hd108907108935_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108908108932_))))
                                  (___kont113578113579_
                                   _tl108906108937_
                                   _hd108907108935_)))
                              (___kont113580113581_)))))))
                 (_generate-values-check108812_
                  (lambda (_check108888_ _body108889_)
                    (let ((__tmp114598
                           (let ((__tmp114600
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108889_ '())))
                                 (__tmp114599 (reverse _check108888_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114600 __tmp114599))))
                      (declare (not safe))
                      (cons 'begin __tmp114598))))
                 (_generate-values-post108813_
                  (lambda (_post108881_ _body108882_)
                    (let ((__tmp114601
                           (let ((__tmp114603
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108882_ '())))
                                 (__tmp114602
                                  (map (lambda (_g108883108885_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g108883108885_)))
                                       (reverse _post108881_))))
                             (declare (not safe))
                             (foldr1 cons __tmp114603 __tmp114602))))
                      (declare (not safe))
                      (cons 'begin __tmp114601)))))
          (let* ((_g108815108832_
                  (lambda (_g108816108829_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108816108829_))))
                 (_g108814108878_
                  (lambda (_g108816108835_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108816108835_))
                        (let ((_e108821108837_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108816108835_))))
                          (let ((_hd108820108840_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108821108837_)))
                                (_tl108819108842_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108821108837_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108819108842_))
                                (let ((_e108824108845_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108819108842_))))
                                  (let ((_hd108823108848_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108824108845_)))
                                        (_tl108822108850_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108824108845_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108822108850_))
                                        (let ((_e108827108853_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108822108850_))))
                                          (let ((_hd108826108856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108827108853_)))
                                                (_tl108825108858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108827108853_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108825108858_))
                                                ((lambda (_L108861_ _L108862_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108862_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108810_
                                                          _L108862_
                                                          _L108861_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108811_
                                                          _L108862_
                                                          _L108861_))))
                                                 _hd108826108856_
                                                 _hd108823108848_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108815108832_
                                                   _g108816108835_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108815108832_ _g108816108835_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108815108832_ _g108816108835_)))))
                        (let ()
                          (declare (not safe))
                          (_g108815108832_ _g108816108835_))))))
            (declare (not safe))
            (_g108814108878_ _stx108807_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self109118_ _stx109119_)
        (let ((_compiled-body?109121_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self109118_
           _stx109119_
           _compiled-body?109121_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g114605_
        (let ((_g114604_ (let () (declare (not safe)) (##length _g114605_))))
          (cond ((let () (declare (not safe)) (##fx= _g114604_ 2))
                 (apply (lambda (_self109118_ _stx109119_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self109118_
                             _stx109119_)))
                        _g114605_))
                ((let () (declare (not safe)) (##fx= _g114604_ 3))
                 (apply (lambda (_self109123_
                                 _stx109124_
                                 _compiled-body?109125_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self109123_
                             _stx109124_
                             _compiled-body?109125_)))
                        _g114605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g114605_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self108387_ _stx108388_)
        (letrec ((_generate-values108390_
                  (lambda (_hd108633_ _body108634_)
                    (let _lp108636_ ((_rest108638_ _hd108633_)
                                     (_bind108639_ '()))
                      (let* ((_rest108640108648_ _rest108638_)
                             (_else108642108659_
                              (lambda ()
                                (let ((_bind108656_ (reverse _bind108639_))
                                      (_body108657_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self108387_
                                          _body108634_))))
                                  (let ((__tmp114606
                                         (let ((__tmp114607
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body108657_ '()))))
                                           (declare (not safe))
                                           (cons _bind108656_ __tmp114607))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp114606)))))
                             (_K108644108793_
                              (lambda (_rest108662_ _hd-bind108663_)
                                (let* ((___stx113590113591_ _hd-bind108663_)
                                       (_g108666108691_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113590113591_)))))
                                  (let ((___kont113592113593_
                                         (lambda (_L108772_ _L108773_)
                                           (let ((_eid108787_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L108773_)))
                                                 (_expr108788_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self108387_
                                                     _L108772_))))
                                             (let ((__tmp114608
                                                    (let ((__tmp114609
                                                           (let ((__tmp114610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr108788_ '()))))
                     (declare (not safe))
                     (cons _eid108787_ __tmp114610))))
              (declare (not safe))
              (cons __tmp114609 _bind108639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108636_
                                                _rest108662_
                                                __tmp114608)))))
                                        (___kont113594113595_
                                         (lambda (_L108712_ _L108713_)
                                           (let* ((_vals108732_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp108734_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values108736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp108734_
                                                      _L108713_
                                                      _L108712_)))
                                                  (_refs108738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals108732_
                                                      _L108713_)))
                                                  (_expr108740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108387_
                                                      _L108712_))))
                                             (let ((__tmp114611
                                                    (let ((__tmp114612
                                                           (let ((__tmp114613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114614
                                 (let ((__tmp114615
                                        (let ((__tmp114616
                                               (let ((__tmp114619
                                                      (let ((__tmp114620
                                                             (let ((__tmp114621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr108740_ '()))))
                       (declare (not safe))
                       (cons _tmp108734_ __tmp114621))))
                (declare (not safe))
                (cons __tmp114620 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114617
                                                      (let ((__tmp114618
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp108734_ '()))))
                (declare (not safe))
                (cons _check-values108736_ __tmp114618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114619
                                                       __tmp114617))))
                                          (declare (not safe))
                                          (cons 'let __tmp114616))))
                                   (declare (not safe))
                                   (cons __tmp114615 '()))))
                            (declare (not safe))
                            (cons _vals108732_ __tmp114614))))
                     (declare (not safe))
                     (cons __tmp114613 _bind108639_))))
              (declare (not safe))
              (foldl1 cons __tmp114612 _refs108738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108636_
                                                _rest108662_
                                                __tmp114611))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113590113591_))
                                        (let ((_e108672108748_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113590113591_))))
                                          (let ((_tl108670108753_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108672108748_)))
                                                (_hd108671108751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108672108748_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108671108751_))
                                                (let ((_e108675108756_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108671108751_))))
                                                  (let ((_tl108673108761_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108675108756_)))
                                                        (_hd108674108759_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108675108756_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl108673108761_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108670108753_))
                                                            (let ((_e108678108764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108670108753_))))
                      (let ((_tl108676108769_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108678108764_)))
                            (_hd108677108767_
                             (let ()
                               (declare (not safe))
                               (##car _e108678108764_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108676108769_))
                            (___kont113592113593_
                             _hd108677108767_
                             _hd108674108759_)
                            (let () (declare (not safe)) (_g108666108691_)))))
                    (let () (declare (not safe)) (_g108666108691_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl108670108753_))
                    (let ((_e108686108704_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108670108753_))))
                      (let ((_tl108684108709_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108686108704_)))
                            (_hd108685108707_
                             (let ()
                               (declare (not safe))
                               (##car _e108686108704_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108684108709_))
                            (___kont113594113595_
                             _hd108685108707_
                             _hd108671108751_)
                            (let () (declare (not safe)) (_g108666108691_)))))
                    (let () (declare (not safe)) (_g108666108691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl108670108753_))
                                                    (let ((_e108686108704_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl108670108753_))))
                                                      (let ((_tl108684108709_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108686108704_)))
                    (_hd108685108707_
                     (let () (declare (not safe)) (##car _e108686108704_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl108684108709_))
                    (___kont113594113595_ _hd108685108707_ _hd108671108751_)
                    (let () (declare (not safe)) (_g108666108691_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108666108691_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108666108691_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108640108648_))
                            (let ((_hd108645108796_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108640108648_)))
                                  (_tl108646108798_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108640108648_))))
                              (let* ((_hd-bind108801_ _hd108645108796_)
                                     (_rest108803_ _tl108646108798_))
                                (declare (not safe))
                                (_K108644108793_
                                 _rest108803_
                                 _hd-bind108801_)))
                            (let ()
                              (declare (not safe))
                              (_else108642108659_)))))))
                 (_generate-letrec?108391_
                  (lambda (_hd108523_)
                    (let _lp108525_ ((_rest108527_ _hd108523_))
                      (let* ((_rest108528108536_ _rest108527_)
                             (_else108530108544_ (lambda () '#t))
                             (_K108532108621_
                              (lambda (_rest108547_ _hd-bind108548_)
                                (let* ((_g108550108567_
                                        (lambda (_g108551108564_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g108551108564_))))
                                       (_g108549108618_
                                        (lambda (_g108551108570_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g108551108570_))
                                              (let ((_e108556108572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g108551108570_))))
                                                (let ((_hd108555108575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108556108572_)))
                                                      (_tl108554108577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108556108572_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd108555108575_))
                                                      (let ((_e108559108580_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd108555108575_))))
                (let ((_hd108558108583_
                       (let () (declare (not safe)) (##car _e108559108580_)))
                      (_tl108557108585_
                       (let () (declare (not safe)) (##cdr _e108559108580_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108557108585_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108554108577_))
                          (let ((_e108562108588_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108554108577_))))
                            (let ((_hd108561108591_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108562108588_)))
                                  (_tl108560108593_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108562108588_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl108560108593_))
                                  ((lambda (_L108596_ _L108597_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?108392_ _L108596_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp108525_ _rest108547_))
                                         '#f))
                                   _hd108561108591_
                                   _hd108558108583_)
                                  (let ()
                                    (declare (not safe))
                                    (_g108550108567_ _g108551108570_)))))
                          (let ()
                            (declare (not safe))
                            (_g108550108567_ _g108551108570_)))
                      (let ()
                        (declare (not safe))
                        (_g108550108567_ _g108551108570_)))))
              (let ()
                (declare (not safe))
                (_g108550108567_ _g108551108570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108550108567_
                                                 _g108551108570_))))))
                                  (declare (not safe))
                                  (_g108549108618_ _hd-bind108548_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108528108536_))
                            (let ((_hd108533108624_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108528108536_)))
                                  (_tl108534108626_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108528108536_))))
                              (let* ((_hd-bind108629_ _hd108533108624_)
                                     (_rest108631_ _tl108534108626_))
                                (declare (not safe))
                                (_K108532108621_
                                 _rest108631_
                                 _hd-bind108629_)))
                            (let ()
                              (declare (not safe))
                              (_else108530108544_)))))))
                 (_is-lambda-expr?108392_
                  (lambda (_expr108460_)
                    (let* ((___stx113634113635_ _expr108460_)
                           (_g108463108477_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113634113635_)))))
                      (let ((___kont113636113637_
                             (lambda (_L108505_ _L108506_) '#t))
                            (___kont113638113639_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx113634113635_))
                            (let ((_e108469108489_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx113634113635_))))
                              (let ((_tl108467108494_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108469108489_)))
                                    (_hd108468108492_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108469108489_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108468108492_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd108468108492_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108467108494_))
                                            (let ((_e108472108497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108467108494_))))
                                              (let ((_tl108470108502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108472108497_)))
                                                    (_hd108471108500_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108472108497_))))
                                                (___kont113636113637_
                                                 _tl108470108502_
                                                 _hd108471108500_)))
                                            (___kont113638113639_))
                                        (___kont113638113639_))
                                    (___kont113638113639_))))
                            (___kont113638113639_)))))))
          (let* ((_g108394108411_
                  (lambda (_g108395108408_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108395108408_))))
                 (_g108393108457_
                  (lambda (_g108395108414_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108395108414_))
                        (let ((_e108400108416_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108395108414_))))
                          (let ((_hd108399108419_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108400108416_)))
                                (_tl108398108421_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108400108416_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108398108421_))
                                (let ((_e108403108424_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108398108421_))))
                                  (let ((_hd108402108427_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108403108424_)))
                                        (_tl108401108429_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108403108424_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108401108429_))
                                        (let ((_e108406108432_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108401108429_))))
                                          (let ((_hd108405108435_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108406108432_)))
                                                (_tl108404108437_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108406108432_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108404108437_))
                                                ((lambda (_L108440_ _L108441_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108441_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?108391_
                                                              _L108441_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108387_
                                                              'letrec
                                                              _L108441_
                                                              _L108440_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108387_
                                                              'letrec*
                                                              _L108441_
                                                              _L108440_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108390_
                                                          _L108441_
                                                          _L108440_))))
                                                 _hd108405108435_
                                                 _hd108402108427_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108394108411_
                                                   _g108395108414_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108394108411_ _g108395108414_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108394108411_ _g108395108414_)))))
                        (let ()
                          (declare (not safe))
                          (_g108394108411_ _g108395108414_))))))
            (declare (not safe))
            (_g108393108457_ _stx108388_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd108324_)
        (let _lp108326_ ((_rest108328_ _hd108324_))
          (let* ((_rest108329108345_ _rest108328_)
                 (_else108332108353_ (lambda () '#f)))
            (let ((_K108335108366_
                   (lambda (_rest108364_)
                     (let () (declare (not safe)) (_lp108326_ _rest108364_))))
                  (_K108334108358_ (lambda () '#t)))
              (let ((_try-match108331108361_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest108329108345_))
                           (let () (declare (not safe)) (_K108334108358_))
                           (let ()
                             (declare (not safe))
                             (_else108332108353_))))))
                (if (let () (declare (not safe)) (##pair? _rest108329108345_))
                    (let ((_tl108337108371_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest108329108345_)))
                          (_hd108336108369_
                           (let ()
                             (declare (not safe))
                             (##car _rest108329108345_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd108336108369_))
                          (let ((_tl108339108376_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd108336108369_)))
                                (_hd108338108374_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd108336108369_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108338108374_))
                                (let ((_tl108343108379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108338108374_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl108343108379_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108339108376_))
                                          (let ((_tl108341108382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108339108376_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl108341108382_))
                                                (let ((_rest108385_
                                                       _tl108337108371_))
                                                  (declare (not safe))
                                                  (_lp108326_ _rest108385_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108332108353_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108332108353_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else108332108353_))))
                                (let ()
                                  (declare (not safe))
                                  (_else108332108353_))))
                          (let () (declare (not safe)) (_else108332108353_))))
                    (let ()
                      (declare (not safe))
                      (_try-match108331108361_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self108235_
               _form108236_
               _hd108237_
               _body108238_
               _compiled-body?108239_)
        (letrec ((_generate1108241_
                  (lambda (_bind108280_)
                    (let* ((_bind108281108292_ _bind108280_)
                           (_E108283108296_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind108281108292_))))
                           (_K108284108302_
                            (lambda (_expr108299_ _id108300_)
                              (let ((__tmp114624
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id108300_)))
                                    (__tmp114622
                                     (let ((__tmp114623
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self108235_
                                               _expr108299_))))
                                       (declare (not safe))
                                       (cons __tmp114623 '()))))
                                (declare (not safe))
                                (cons __tmp114624 __tmp114622)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind108281108292_))
                          (let ((_hd108285108305_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind108281108292_)))
                                (_tl108286108307_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind108281108292_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108285108305_))
                                (let ((_hd108289108310_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd108285108305_)))
                                      (_tl108290108312_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108285108305_))))
                                  (let ((_id108315_ _hd108289108310_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl108290108312_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl108286108307_))
                                            (let ((_hd108287108317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl108286108307_)))
                                                  (_tl108288108319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl108286108307_))))
                                              (let ((_expr108322_
                                                     _hd108287108317_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl108288108319_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K108284108302_
                                                       _expr108322_
                                                       _id108315_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E108283108296_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E108283108296_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E108283108296_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E108283108296_))))
                          (let () (declare (not safe)) (_E108283108296_)))))))
          (let* ((_bind108243_ (map _generate1108241_ _hd108237_))
                 (_body108245_
                  (if _compiled-body?108239_
                      _body108238_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self108235_ _body108238_))))
                 (_body108277_
                  (let* ((_body108246108254_ _body108245_)
                         (_else108248108262_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body108245_ '()))))
                         (_K108250108267_
                          (lambda (_exprs108265_) _exprs108265_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body108246108254_))
                        (let ((_hd108251108270_
                               (let ()
                                 (declare (not safe))
                                 (##car _body108246108254_)))
                              (_tl108252108272_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body108246108254_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd108251108270_ 'begin))
                              (let ((_exprs108275_ _tl108252108272_))
                                (declare (not safe))
                                (_K108250108267_ _exprs108275_))
                              (let ()
                                (declare (not safe))
                                (_else108248108262_))))
                        (let () (declare (not safe)) (_else108248108262_))))))
            (let ((__tmp114625
                   (let ()
                     (declare (not safe))
                     (cons _bind108243_ _body108277_))))
              (declare (not safe))
              (cons _form108236_ __tmp114625))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self108142_ _stx108143_)
        (letrec ((_generate1108145_
                  (lambda (_datum108197_)
                    (if (or (let () (declare (not safe)) (null? _datum108197_))
                            (interned-symbol? _datum108197_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum108197_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum108197_)))
                        _datum108197_
                        (if (uninterned-symbol? _datum108197_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum108197_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum108197_))
                                (let ((__tmp114630
                                       (let ((__tmp114631 (car _datum108197_)))
                                         (declare (not safe))
                                         (_generate1108145_ __tmp114631)))
                                      (__tmp114628
                                       (let ((__tmp114629 (cdr _datum108197_)))
                                         (declare (not safe))
                                         (_generate1108145_ __tmp114629))))
                                  (declare (not safe))
                                  (cons __tmp114630 __tmp114628))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum108197_))
                                    (let ((__tmp114626
                                           (let ((__tmp114627
                                                  (unbox _datum108197_)))
                                             (declare (not safe))
                                             (_generate1108145_ __tmp114627))))
                                      (declare (not safe))
                                      (box __tmp114626))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum108197_))
                                        (vector-map
                                         _generate1108145_
                                         _datum108197_)
                                        (if (or (s8vector? _datum108197_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum108197_))
                                                (s16vector? _datum108197_)
                                                (u16vector? _datum108197_)
                                                (s32vector? _datum108197_)
                                                (u32vector? _datum108197_)
                                                (s64vector? _datum108197_)
                                                (u64vector? _datum108197_)
                                                (f32vector? _datum108197_)
                                                (f64vector? _datum108197_))
                                            _datum108197_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx108143_)))))))))))
          (let* ((_g108147108160_
                  (lambda (_g108148108157_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108148108157_))))
                 (_g108146108194_
                  (lambda (_g108148108163_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108148108163_))
                        (let ((_e108152108165_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108148108163_))))
                          (let ((_hd108151108168_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108152108165_)))
                                (_tl108150108170_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108152108165_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108150108170_))
                                (let ((_e108155108173_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108150108170_))))
                                  (let ((_hd108154108176_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108155108173_)))
                                        (_tl108153108178_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108155108173_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl108153108178_))
                                        ((lambda (_L108181_)
                                           (let ((__tmp114632
                                                  (let ((__tmp114633
                                                         (let ((__tmp114634
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L108181_))))
                   (declare (not safe))
                   (_generate1108145_ __tmp114634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114633 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp114632)))
                                         _hd108154108176_)
                                        (let ()
                                          (declare (not safe))
                                          (_g108147108160_ _g108148108163_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108147108160_ _g108148108163_)))))
                        (let ()
                          (declare (not safe))
                          (_g108147108160_ _g108148108163_))))))
            (declare (not safe))
            (_g108146108194_ _stx108143_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self107655_ _stx107656_)
        (letrec ((_compile-call107658_
                  (lambda (_rator107882_ _rands107883_)
                    (let ((_rator107889_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self107655_ _rator107882_)))
                          (_rands107890_
                           (map (lambda (_g107884107886_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self107655_
                                     _g107884107886_)))
                                _rands107883_)))
                      (let* ((___stx113681113682_ _rator107889_)
                             (_g107893107945_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113681113682_)))))
                        (let ((___kont113683113684_
                               (lambda (_L108069_
                                        _L108070_
                                        _L108071_
                                        _L108072_)
                                 (if (fx= (length _rands107890_)
                                          (length (let ((__tmp114639
                                                         (lambda (_g108108108111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108109108113_)
                   (let ()
                     (declare (not safe))
                     (cons _g108108108111_ _g108109108113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114639
                                                            '()
                                                            _L108071_))))
                                     (let* ((_id108116_ _L108072_)
                                            (_args108125_
                                             (let ((__tmp114635
                                                    (lambda (_g108117108120_
                                                             _g108118108122_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108117108120_
                                                              _g108118108122_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114635
                                                       '()
                                                       _L108071_)))
                                            (_body108134_
                                             (let ((__tmp114636
                                                    (lambda (_g108126108129_
                                                             _g108127108131_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108126108129_
                                                              _g108127108131_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114636
                                                       '()
                                                       _L108070_)))
                                            (_init108136_
                                             (map list
                                                  _args108125_
                                                  _rands107890_)))
                                       (let ((__tmp114637
                                              (let ((__tmp114638
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init108136_
                                                             _body108134_))))
                                                (declare (not safe))
                                                (cons _id108116_
                                                      __tmp114638))))
                                         (declare (not safe))
                                         (cons 'let __tmp114637)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx107656_)))))
                              (___kont113689113690_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator107889_ _rands107890_)))))
                          (let ((___match113748113749_
                                 (lambda (_e107901107957_
                                          _hd107900107960_
                                          _tl107899107962_
                                          _e107904107965_
                                          _hd107903107968_
                                          _tl107902107970_
                                          _e107907107973_
                                          _hd107906107976_
                                          _tl107905107978_
                                          _e107910107981_
                                          _hd107909107984_
                                          _tl107908107986_
                                          _e107913107989_
                                          _hd107912107992_
                                          _tl107911107994_
                                          _e107916107997_
                                          _hd107915108000_
                                          _tl107914108002_
                                          _e107919108005_
                                          _hd107918108008_
                                          _tl107917108010_
                                          ___splice113685113686_
                                          _target107920108013_
                                          _tl107922108015_)
                                   (letrec ((_loop107923108018_
                                             (lambda (_hd107921108021_
                                                      _arg107927108023_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd107921108021_))
                                                   (let ((_e107924108026_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd107921108021_))))
                                                     (let ((_lp-tl107926108031_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107924108026_)))
                                                           (_lp-hd107925108029_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107924108026_))))
                                                       (let ((__tmp114641
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd107925108029_ _arg107927108023_))))
                 (declare (not safe))
                 (_loop107923108018_ _lp-tl107926108031_ __tmp114641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg107928108034_
                                                          (reverse _arg107927108023_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl107917108010_))
                                                         (let ((___splice113687113688_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl107917108010_ '0))))
                   (let ((_tl107931108039_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113687113688_ '1)))
                         (_target107929108037_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113687113688_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl107931108039_))
                         (letrec ((_loop107932108042_
                                   (lambda (_hd107930108045_
                                            _body107936108047_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd107930108045_))
                                         (let ((_e107933108050_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd107930108045_))))
                                           (let ((_lp-tl107935108055_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107933108050_)))
                                                 (_lp-hd107934108053_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107933108050_))))
                                             (let ((__tmp114640
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd107934108053_
                                                            _body107936108047_))))
                                               (declare (not safe))
                                               (_loop107932108042_
                                                _lp-tl107935108055_
                                                __tmp114640))))
                                         (let ((_body107937108058_
                                                (reverse _body107936108047_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl107911107994_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl107905107978_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl107902107970_))
                                                       (let ((_e107940108061_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl107902107970_))))
                 (let ((_tl107938108066_
                        (let () (declare (not safe)) (##cdr _e107940108061_)))
                       (_hd107939108064_
                        (let () (declare (not safe)) (##car _e107940108061_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl107938108066_))
                       (let ((_L108069_ _hd107939108064_)
                             (_L108070_ _body107937108058_)
                             (_L108071_ _arg107928108034_)
                             (_L108072_ _hd107909107984_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L108072_ _L108069_))
                             (___kont113683113684_
                              _L108069_
                              _L108070_
                              _L108071_
                              _L108072_)
                             (___kont113689113690_)))
                       (___kont113689113690_))))
               (___kont113689113690_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113689113690_))
                                               (___kont113689113690_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop107932108042_ _target107929108037_ '())))
                         (___kont113689113690_))))
                 (___kont113689113690_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop107923108018_
                                        _target107920108013_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx113681113682_))
                                (let ((_e107901107957_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx113681113682_))))
                                  (let ((_tl107899107962_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107901107957_)))
                                        (_hd107900107960_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107901107957_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107900107960_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd107900107960_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107899107962_))
                                                (let ((_e107904107965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107899107962_))))
                                                  (let ((_tl107902107970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107904107965_)))
                                                        (_hd107903107968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107904107965_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107903107968_))
                                                        (let ((_e107907107973_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107903107968_))))
                  (let ((_tl107905107978_
                         (let () (declare (not safe)) (##cdr _e107907107973_)))
                        (_hd107906107976_
                         (let ()
                           (declare (not safe))
                           (##car _e107907107973_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107906107976_))
                        (let ((_e107910107981_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107906107976_))))
                          (let ((_tl107908107986_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107910107981_)))
                                (_hd107909107984_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107910107981_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107908107986_))
                                (let ((_e107913107989_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107908107986_))))
                                  (let ((_tl107911107994_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107913107989_)))
                                        (_hd107912107992_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107913107989_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd107912107992_))
                                        (let ((_e107916107997_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd107912107992_))))
                                          (let ((_tl107914108002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107916107997_)))
                                                (_hd107915108000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107916107997_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107915108000_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd107915108000_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107914108002_))
                                                        (let ((_e107919108005_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107914108002_))))
                  (let ((_tl107917108010_
                         (let () (declare (not safe)) (##cdr _e107919108005_)))
                        (_hd107918108008_
                         (let ()
                           (declare (not safe))
                           (##car _e107919108005_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd107918108008_))
                        (let ((___splice113685113686_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd107918108008_
                                  '0))))
                          (let ((_tl107922108015_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113685113686_ '1)))
                                (_target107920108013_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113685113686_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107922108015_))
                                (___match113748113749_
                                 _e107901107957_
                                 _hd107900107960_
                                 _tl107899107962_
                                 _e107904107965_
                                 _hd107903107968_
                                 _tl107902107970_
                                 _e107907107973_
                                 _hd107906107976_
                                 _tl107905107978_
                                 _e107910107981_
                                 _hd107909107984_
                                 _tl107908107986_
                                 _e107913107989_
                                 _hd107912107992_
                                 _tl107911107994_
                                 _e107916107997_
                                 _hd107915108000_
                                 _tl107914108002_
                                 _e107919108005_
                                 _hd107918108008_
                                 _tl107917108010_
                                 ___splice113685113686_
                                 _target107920108013_
                                 _tl107922108015_)
                                (___kont113689113690_))))
                        (___kont113689113690_))))
                (___kont113689113690_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113689113690_))
                                                (___kont113689113690_))))
                                        (___kont113689113690_))))
                                (___kont113689113690_))))
                        (___kont113689113690_))))
                (___kont113689113690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113689113690_))
                                            (___kont113689113690_))
                                        (___kont113689113690_))))
                                (___kont113689113690_)))))))))
          (let* ((_g107660107674_
                  (lambda (_g107661107671_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107661107671_))))
                 (_g107659107879_
                  (lambda (_g107661107677_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107661107677_))
                        (let ((_e107666107679_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107661107677_))))
                          (let ((_hd107665107682_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107666107679_)))
                                (_tl107664107684_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107666107679_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107664107684_))
                                (let ((_e107669107687_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107664107684_))))
                                  (let ((_hd107668107690_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107669107687_)))
                                        (_tl107667107692_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107669107687_))))
                                    ((lambda (_L107695_ _L107696_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call107658_
                                              _L107696_
                                              _L107695_))
                                           (let* ((___stx113797113798_
                                                   _L107696_)
                                                  (_g107711107723_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx113797113798_)))))
                                             (let ((___kont113799113800_
                                                    (lambda ()
                                                      (let ((_f107753_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self107655_ _L107696_))))
                (if (let ((__tmp114656 (symbol->string _f107753_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp114656))
                    (let _lp107755_ ((_rest107758_ (reverse _L107695_))
                                     (_bind107760_ '())
                                     (_args107761_ '()))
                      (let* ((_rest107762107770_ _rest107758_)
                             (_else107764107778_
                              (lambda ()
                                (let ((__tmp114642
                                       (let ((__tmp114643
                                              (let ((__tmp114644
                                                     (let ((__tmp114645
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f107753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args107761_))))
               (declare (not safe))
               (cons __tmp114645 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp114644))))
                                         (declare (not safe))
                                         (cons _bind107760_ __tmp114643))))
                                  (declare (not safe))
                                  (cons 'let __tmp114642))))
                             (_K107766107864_
                              (lambda (_rest107781_ _e107782_)
                                (let* ((___stx113751113752_ _e107782_)
                                       (_g107787107805_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113751113752_)))))
                                  (let ((___kont113753113754_
                                         (lambda ()
                                           (let ((__tmp114646
                                                  (let ((__tmp114647
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107782_))))
                                                    (declare (not safe))
                                                    (cons __tmp114647
                                                          _args107761_))))
                                             (declare (not safe))
                                             (_lp107755_
                                              _rest107781_
                                              _bind107760_
                                              __tmp114646))))
                                        (___kont113755113756_
                                         (lambda ()
                                           (let ((__tmp114648
                                                  (let ((__tmp114649
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107782_))))
                                                    (declare (not safe))
                                                    (cons __tmp114649
                                                          _args107761_))))
                                             (declare (not safe))
                                             (_lp107755_
                                              _rest107781_
                                              _bind107760_
                                              __tmp114648))))
                                        (___kont113757113758_
                                         (lambda ()
                                           (let ((_tmp107812_
                                                  (let ((__tmp114650
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp114650))))
                                             (let ((__tmp114652
                                                    (let ((__tmp114653
                                                           (let ((__tmp114654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114655
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e107782_))))
                            (declare (not safe))
                            (cons __tmp114655 '()))))
                     (declare (not safe))
                     (cons _tmp107812_ __tmp114654))))
              (declare (not safe))
              (cons __tmp114653 _bind107760_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114651
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp107812_
                                                            _args107761_))))
                                               (declare (not safe))
                                               (_lp107755_
                                                _rest107781_
                                                __tmp114652
                                                __tmp114651))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113751113752_))
                                        (let ((_e107791107843_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113751113752_))))
                                          (let ((_tl107789107848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107791107843_)))
                                                (_hd107790107846_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107791107843_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107790107846_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd107790107846_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107789107848_))
                                                        (let ((_e107794107851_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107789107848_))))
                  (let ((_tl107792107856_
                         (let () (declare (not safe)) (##cdr _e107794107851_)))
                        (_hd107793107854_
                         (let ()
                           (declare (not safe))
                           (##car _e107794107851_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl107792107856_))
                        (___kont113753113754_)
                        (___kont113757113758_))))
                (___kont113757113758_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd107790107846_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107789107848_))
                                                            (let ((_e107800107828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107789107848_))))
                      (let ((_tl107798107833_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107800107828_)))
                            (_hd107799107831_
                             (let ()
                               (declare (not safe))
                               (##car _e107800107828_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107798107833_))
                            (___kont113755113756_)
                            (___kont113757113758_))))
                    (___kont113757113758_))
                (___kont113757113758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113757113758_))))
                                        (___kont113757113758_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107762107770_))
                            (let ((_hd107767107867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107762107770_)))
                                  (_tl107768107869_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107762107770_))))
                              (let* ((_e107872_ _hd107767107867_)
                                     (_rest107874_ _tl107768107869_))
                                (declare (not safe))
                                (_K107766107864_ _rest107874_ _e107872_)))
                            (let ()
                              (declare (not safe))
                              (_else107764107778_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call107658_ _L107696_ _L107695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113801113802_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call107658_
                                                         _L107696_
                                                         _L107695_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx113797113798_))
                                                   (let ((_e107715107735_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx113797113798_))))
                                                     (let ((_tl107713107740_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107715107735_)))
                                                           (_hd107714107738_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107715107735_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd107714107738_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd107714107738_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl107713107740_))
                           (let ((_e107718107743_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl107713107740_))))
                             (let ((_tl107716107748_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e107718107743_)))
                                   (_hd107717107746_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e107718107743_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl107716107748_))
                                   (___kont113799113800_)
                                   (___kont113801113802_))))
                           (___kont113801113802_))
                       (___kont113801113802_))
                   (___kont113801113802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113801113802_))))))
                                     _tl107667107692_
                                     _hd107668107690_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107660107674_ _g107661107677_)))))
                        (let ()
                          (declare (not safe))
                          (_g107660107674_ _g107661107677_))))))
            (declare (not safe))
            (_g107659107879_ _stx107656_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self107442_ _stx107443_)
        (let* ((___stx113869113870_ _stx107443_)
               (_g107446107466_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113869113870_)))))
          (let ((___kont113871113872_
                 (lambda (_L107510_ _L107511_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self107442_ _stx107443_))
                       (let ((_f107529_
                              (let ((__tmp114657
                                     (let ((__tmp114659
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp114658
                                            (let ()
                                              (declare (not safe))
                                              (cons _L107511_ '()))))
                                       (declare (not safe))
                                       (cons __tmp114659 __tmp114658))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self107442_ __tmp114657))))
                         (let _lp107531_ ((_rest107534_ (reverse _L107510_))
                                          (_bind107536_ '())
                                          (_args107537_ '()))
                           (let* ((_rest107538107546_ _rest107534_)
                                  (_else107540107554_
                                   (lambda ()
                                     (let ((__tmp114660
                                            (let ((__tmp114661
                                                   (let ((__tmp114662
                                                          (let ((__tmp114663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f107529_ _args107537_))))
                    (declare (not safe))
                    (cons __tmp114663 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp114662))))
                                              (declare (not safe))
                                              (cons _bind107536_
                                                    __tmp114661))))
                                       (declare (not safe))
                                       (cons 'let __tmp114660))))
                                  (_K107542107640_
                                   (lambda (_rest107557_ _e107558_)
                                     (let* ((___stx113823113824_ _e107558_)
                                            (_g107563107581_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx113823113824_)))))
                                       (let ((___kont113825113826_
                                              (lambda ()
                                                (let ((__tmp114664
                                                       (let ((__tmp114665
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107558_))))
                 (declare (not safe))
                 (cons __tmp114665 _args107537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107531_
                                                   _rest107557_
                                                   _bind107536_
                                                   __tmp114664))))
                                             (___kont113827113828_
                                              (lambda ()
                                                (let ((__tmp114666
                                                       (let ((__tmp114667
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107558_))))
                 (declare (not safe))
                 (cons __tmp114667 _args107537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107531_
                                                   _rest107557_
                                                   _bind107536_
                                                   __tmp114666))))
                                             (___kont113829113830_
                                              (lambda ()
                                                (let ((_tmp107588_
                                                       (let ((__tmp114668
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp114668))))
                                                  (let ((__tmp114670
                                                         (let ((__tmp114671
                                                                (let ((__tmp114672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114673
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e107558_))))
                                 (declare (not safe))
                                 (cons __tmp114673 '()))))
                          (declare (not safe))
                          (cons _tmp107588_ __tmp114672))))
                   (declare (not safe))
                   (cons __tmp114671 _bind107536_)))
                (__tmp114669
                 (let ()
                   (declare (not safe))
                   (cons _tmp107588_ _args107537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp107531_
                                                     _rest107557_
                                                     __tmp114670
                                                     __tmp114669))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx113823113824_))
                                             (let ((_e107567107619_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx113823113824_))))
                                               (let ((_tl107565107624_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e107567107619_)))
                                                     (_hd107566107622_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e107567107619_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd107566107622_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd107566107622_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107565107624_))
                     (let ((_e107570107627_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107565107624_))))
                       (let ((_tl107568107632_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107570107627_)))
                             (_hd107569107630_
                              (let ()
                                (declare (not safe))
                                (##car _e107570107627_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107568107632_))
                             (___kont113825113826_)
                             (___kont113829113830_))))
                     (___kont113829113830_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd107566107622_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl107565107624_))
                         (let ((_e107576107604_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl107565107624_))))
                           (let ((_tl107574107609_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e107576107604_)))
                                 (_hd107575107607_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e107576107604_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl107574107609_))
                                 (___kont113827113828_)
                                 (___kont113829113830_))))
                         (___kont113829113830_))
                     (___kont113829113830_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113829113830_))))
                                             (___kont113829113830_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest107538107546_))
                                 (let ((_hd107543107643_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest107538107546_)))
                                       (_tl107544107645_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest107538107546_))))
                                   (let* ((_e107648_ _hd107543107643_)
                                          (_rest107650_ _tl107544107645_))
                                     (declare (not safe))
                                     (_K107542107640_ _rest107650_ _e107648_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else107540107554_)))))))))
                (___kont113873113874_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self107442_ _stx107443_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx113869113870_))
                (let ((_e107452107478_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx113869113870_))))
                  (let ((_tl107450107483_
                         (let () (declare (not safe)) (##cdr _e107452107478_)))
                        (_hd107451107481_
                         (let ()
                           (declare (not safe))
                           (##car _e107452107478_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl107450107483_))
                        (let ((_e107455107486_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107450107483_))))
                          (let ((_tl107453107491_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107455107486_)))
                                (_hd107454107489_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107455107486_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd107454107489_))
                                (let ((_e107458107494_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd107454107489_))))
                                  (let ((_tl107456107499_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107458107494_)))
                                        (_hd107457107497_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107458107494_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107457107497_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd107457107497_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107456107499_))
                                                (let ((_e107461107502_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107456107499_))))
                                                  (let ((_tl107459107507_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107461107502_)))
                                                        (_hd107460107505_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107461107502_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107459107507_))
                                                        (___kont113871113872_
                                                         _tl107453107491_
                                                         _hd107460107505_)
                                                        (___kont113873113874_))))
                                                (___kont113873113874_))
                                            (___kont113873113874_))
                                        (___kont113873113874_))))
                                (___kont113873113874_))))
                        (___kont113873113874_))))
                (___kont113873113874_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self107254_ _stx107255_)
        (letrec ((_simplify107257_
                  (lambda (_code107342_)
                    (let* ((_code107343107361_ _code107342_)
                           (_else107345107369_ (lambda () _code107342_))
                           (_K107347107405_
                            (lambda (_expr107372_ _test107373_)
                              (let* ((_expr107374107382_ _expr107372_)
                                     (_else107376107390_
                                      (lambda ()
                                        (let ((__tmp114674
                                               (let ((__tmp114675
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr107372_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test107373_
                                                       __tmp114675))))
                                          (declare (not safe))
                                          (cons 'and __tmp114674))))
                                     (_K107378107395_
                                      (lambda (_exprs107393_)
                                        (let ((__tmp114676
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test107373_
                                                       _exprs107393_))))
                                          (declare (not safe))
                                          (cons 'and __tmp114676)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr107374107382_))
                                    (let ((_hd107379107398_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr107374107382_)))
                                          (_tl107380107400_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr107374107382_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107379107398_ 'and))
                                          (let ((_exprs107403_
                                                 _tl107380107400_))
                                            (declare (not safe))
                                            (_K107378107395_ _exprs107403_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107376107390_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107376107390_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code107343107361_))
                          (let ((_hd107348107408_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code107343107361_)))
                                (_tl107349107410_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code107343107361_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd107348107408_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl107349107410_))
                                    (let ((_hd107350107413_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl107349107410_)))
                                          (_tl107351107415_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl107349107410_))))
                                      (let ((_test107418_ _hd107350107413_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107351107415_))
                                            (let ((_hd107352107420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107351107415_)))
                                                  (_tl107353107422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107351107415_))))
                                              (let ((_expr107425_
                                                     _hd107352107420_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl107353107422_))
                                                    (let ((_hd107354107427_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl107353107422_)))
                                                          (_tl107355107429_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl107353107422_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd107354107427_))
                                                          (let ((_hd107356107432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd107354107427_)))
                        (_tl107357107434_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107354107427_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107356107432_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107357107434_))
                            (let ((_hd107358107437_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107357107434_)))
                                  (_tl107359107439_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107357107434_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107358107437_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107359107439_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107355107429_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107347107405_
                                             _expr107425_
                                             _test107418_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107345107369_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107345107369_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107345107369_))))
                            (let () (declare (not safe)) (_else107345107369_)))
                        (let () (declare (not safe)) (_else107345107369_))))
                  (let () (declare (not safe)) (_else107345107369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else107345107369_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107345107369_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107345107369_)))
                                (let ()
                                  (declare (not safe))
                                  (_else107345107369_))))
                          (let ()
                            (declare (not safe))
                            (_else107345107369_)))))))
          (let* ((_g107259107280_
                  (lambda (_g107260107277_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107260107277_))))
                 (_g107258107339_
                  (lambda (_g107260107283_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107260107283_))
                        (let ((_e107266107285_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107260107283_))))
                          (let ((_hd107265107288_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107266107285_)))
                                (_tl107264107290_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107266107285_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107264107290_))
                                (let ((_e107269107293_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107264107290_))))
                                  (let ((_hd107268107296_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107269107293_)))
                                        (_tl107267107298_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107269107293_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107267107298_))
                                        (let ((_e107272107301_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107267107298_))))
                                          (let ((_hd107271107304_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107272107301_)))
                                                (_tl107270107306_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107272107301_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107270107306_))
                                                (let ((_e107275107309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107270107306_))))
                                                  (let ((_hd107274107312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107275107309_)))
                                                        (_tl107273107314_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107275107309_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107273107314_))
                                                        ((lambda (_L107317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L107318_
                          _L107319_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp114684
                              (let ((__tmp114685
                                     (let ((__tmp114690
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107254_
                                               _L107319_)))
                                           (__tmp114686
                                            (let ((__tmp114689
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107254_
                                                      _L107318_)))
                                                  (__tmp114687
                                                   (let ((__tmp114688
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self107254_
                                                             _L107317_))))
                                                     (declare (not safe))
                                                     (cons __tmp114688 '()))))
                                              (declare (not safe))
                                              (cons __tmp114689 __tmp114687))))
                                       (declare (not safe))
                                       (cons __tmp114690 __tmp114686))))
                                (declare (not safe))
                                (cons 'if __tmp114685))))
                         (declare (not safe))
                         (_simplify107257_ __tmp114684))
                       (let ((__tmp114677
                              (let ((__tmp114682
                                     (let ((__tmp114683
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self107254_
                                                 _L107319_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114683
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp114678
                                     (let ((__tmp114681
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107254_
                                               _L107318_)))
                                           (__tmp114679
                                            (let ((__tmp114680
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107254_
                                                      _L107317_))))
                                              (declare (not safe))
                                              (cons __tmp114680 '()))))
                                       (declare (not safe))
                                       (cons __tmp114681 __tmp114679))))
                                (declare (not safe))
                                (cons __tmp114682 __tmp114678))))
                         (declare (not safe))
                         (cons 'if __tmp114677))))
                 _hd107274107312_
                 _hd107271107304_
                 _hd107268107296_)
                (let ()
                  (declare (not safe))
                  (_g107259107280_ _g107260107283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107259107280_
                                                   _g107260107283_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107259107280_ _g107260107283_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107259107280_ _g107260107283_)))))
                        (let ()
                          (declare (not safe))
                          (_g107259107280_ _g107260107283_))))))
            (declare (not safe))
            (_g107258107339_ _stx107255_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self107202_ _stx107203_)
        (let* ((_g107205107218_
                (lambda (_g107206107215_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107206107215_))))
               (_g107204107251_
                (lambda (_g107206107221_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107206107221_))
                      (let ((_e107210107223_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107206107221_))))
                        (let ((_hd107209107226_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107210107223_)))
                              (_tl107208107228_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107210107223_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107208107228_))
                              (let ((_e107213107231_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107208107228_))))
                                (let ((_hd107212107234_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107213107231_)))
                                      (_tl107211107236_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107213107231_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl107211107236_))
                                      ((lambda (_L107239_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L107239_)))
                                       _hd107212107234_)
                                      (let ()
                                        (declare (not safe))
                                        (_g107205107218_ _g107206107221_)))))
                              (let ()
                                (declare (not safe))
                                (_g107205107218_ _g107206107221_)))))
                      (let ()
                        (declare (not safe))
                        (_g107205107218_ _g107206107221_))))))
          (declare (not safe))
          (_g107204107251_ _stx107203_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self107134_ _stx107135_)
        (let* ((_g107137107154_
                (lambda (_g107138107151_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107138107151_))))
               (_g107136107199_
                (lambda (_g107138107157_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107138107157_))
                      (let ((_e107143107159_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107138107157_))))
                        (let ((_hd107142107162_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107143107159_)))
                              (_tl107141107164_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107143107159_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107141107164_))
                              (let ((_e107146107167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107141107164_))))
                                (let ((_hd107145107170_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107146107167_)))
                                      (_tl107144107172_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107146107167_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107144107172_))
                                      (let ((_e107149107175_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107144107172_))))
                                        (let ((_hd107148107178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107149107175_)))
                                              (_tl107147107180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107149107175_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107147107180_))
                                              ((lambda (_L107183_ _L107184_)
                                                 (let ((__tmp114691
                                                        (let ((__tmp114694
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L107184_)))
                      (__tmp114692
                       (let ((__tmp114693
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self107134_ _L107183_))))
                         (declare (not safe))
                         (cons __tmp114693 '()))))
                  (declare (not safe))
                  (cons __tmp114694 __tmp114692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp114691)))
                                               _hd107148107178_
                                               _hd107145107170_)
                                              (let ()
                                                (declare (not safe))
                                                (_g107137107154_
                                                 _g107138107157_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107137107154_ _g107138107157_)))))
                              (let ()
                                (declare (not safe))
                                (_g107137107154_ _g107138107157_)))))
                      (let ()
                        (declare (not safe))
                        (_g107137107154_ _g107138107157_))))))
          (declare (not safe))
          (_g107136107199_ _stx107135_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self106945_ _stx106946_)
        (let* ((_g106948106965_
                (lambda (_g106949106962_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106949106962_))))
               (_g106947107131_
                (lambda (_g106949106968_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106949106968_))
                      (let ((_e106954106970_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106949106968_))))
                        (let ((_hd106953106973_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106954106970_)))
                              (_tl106952106975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106954106970_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106952106975_))
                              (let ((_e106957106978_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106952106975_))))
                                (let ((_hd106956106981_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106957106978_)))
                                      (_tl106955106983_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106957106978_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106955106983_))
                                      (let ((_e106960106986_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106955106983_))))
                                        (let ((_hd106959106989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106960106986_)))
                                              (_tl106958106991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106960106986_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106958106991_))
                                              ((lambda (_L106994_ _L106995_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114710
                                                            (let ((__tmp114713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106945_ _L106994_)))
                          (__tmp114711
                           (let ((__tmp114712
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106945_
                                     _L106995_))))
                             (declare (not safe))
                             (cons __tmp114712 '()))))
                      (declare (not safe))
                      (cons __tmp114713 __tmp114711))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp114710))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp107010_ ((_rest107013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114709
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106994_ '()))))
                                 (declare (not safe))
                                 (cons _L106995_ __tmp114709)))
                              (_bind107015_ '())
                              (_args107016_ '()))
               (let* ((_rest107017107025_ _rest107013_)
                      (_else107019107033_
                       (lambda ()
                         (let ((__tmp114695
                                (let ((__tmp114696
                                       (let ((__tmp114697
                                              (let ((__tmp114698
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args107016_))))
                                                (declare (not safe))
                                                (cons __tmp114698 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114697))))
                                  (declare (not safe))
                                  (cons _bind107015_ __tmp114696))))
                           (declare (not safe))
                           (cons 'let __tmp114695))))
                      (_K107021107119_
                       (lambda (_rest107036_ _e107037_)
                         (let* ((___stx113907113908_ _e107037_)
                                (_g107042107060_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113907113908_)))))
                           (let ((___kont113909113910_
                                  (lambda ()
                                    (let ((__tmp114699
                                           (let ((__tmp114700
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107037_))))
                                             (declare (not safe))
                                             (cons __tmp114700 _args107016_))))
                                      (declare (not safe))
                                      (_lp107010_
                                       _rest107036_
                                       _bind107015_
                                       __tmp114699))))
                                 (___kont113911113912_
                                  (lambda ()
                                    (let ((__tmp114701
                                           (let ((__tmp114702
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107037_))))
                                             (declare (not safe))
                                             (cons __tmp114702 _args107016_))))
                                      (declare (not safe))
                                      (_lp107010_
                                       _rest107036_
                                       _bind107015_
                                       __tmp114701))))
                                 (___kont113913113914_
                                  (lambda ()
                                    (let ((_tmp107067_
                                           (let ((__tmp114703 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114703))))
                                      (let ((__tmp114705
                                             (let ((__tmp114706
                                                    (let ((__tmp114707
                                                           (let ((__tmp114708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e107037_))))
                     (declare (not safe))
                     (cons __tmp114708 '()))))
              (declare (not safe))
              (cons _tmp107067_ __tmp114707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114706
                                                     _bind107015_)))
                                            (__tmp114704
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp107067_
                                                     _args107016_))))
                                        (declare (not safe))
                                        (_lp107010_
                                         _rest107036_
                                         __tmp114705
                                         __tmp114704))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113907113908_))
                                 (let ((_e107046107098_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113907113908_))))
                                   (let ((_tl107044107103_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e107046107098_)))
                                         (_hd107045107101_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e107046107098_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd107045107101_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd107045107101_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl107044107103_))
                                                 (let ((_e107049107106_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl107044107103_))))
                                                   (let ((_tl107047107111_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107049107106_)))
                                                         (_hd107048107109_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107049107106_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107047107111_))
                                                         (___kont113909113910_)
                                                         (___kont113913113914_))))
                                                 (___kont113913113914_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd107045107101_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107044107103_))
                                                     (let ((_e107055107083_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107044107103_))))
                                                       (let ((_tl107053107088_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107055107083_)))
                     (_hd107054107086_
                      (let () (declare (not safe)) (##car _e107055107083_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107053107088_))
                     (___kont113911113912_)
                     (___kont113913113914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113913113914_))
                                                 (___kont113913113914_)))
                                         (___kont113913113914_))))
                                 (___kont113913113914_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest107017107025_))
                     (let ((_hd107022107122_
                            (let ()
                              (declare (not safe))
                              (##car _rest107017107025_)))
                           (_tl107023107124_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest107017107025_))))
                       (let* ((_e107127_ _hd107022107122_)
                              (_rest107129_ _tl107023107124_))
                         (declare (not safe))
                         (_K107021107119_ _rest107129_ _e107127_)))
                     (let () (declare (not safe)) (_else107019107033_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106959106989_
                                               _hd106956106981_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106948106965_
                                                 _g106949106968_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106948106965_ _g106949106968_)))))
                              (let ()
                                (declare (not safe))
                                (_g106948106965_ _g106949106968_)))))
                      (let ()
                        (declare (not safe))
                        (_g106948106965_ _g106949106968_))))))
          (declare (not safe))
          (_g106947107131_ _stx106946_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self106756_ _stx106757_)
        (let* ((_g106759106776_
                (lambda (_g106760106773_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106760106773_))))
               (_g106758106942_
                (lambda (_g106760106779_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106760106779_))
                      (let ((_e106765106781_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106760106779_))))
                        (let ((_hd106764106784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106765106781_)))
                              (_tl106763106786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106765106781_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106763106786_))
                              (let ((_e106768106789_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106763106786_))))
                                (let ((_hd106767106792_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106768106789_)))
                                      (_tl106766106794_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106768106789_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106766106794_))
                                      (let ((_e106771106797_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106766106794_))))
                                        (let ((_hd106770106800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106771106797_)))
                                              (_tl106769106802_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106771106797_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106769106802_))
                                              ((lambda (_L106805_ _L106806_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114729
                                                            (let ((__tmp114732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106756_ _L106805_)))
                          (__tmp114730
                           (let ((__tmp114731
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106756_
                                     _L106806_))))
                             (declare (not safe))
                             (cons __tmp114731 '()))))
                      (declare (not safe))
                      (cons __tmp114732 __tmp114730))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp114729))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106821_ ((_rest106824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114728
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106805_ '()))))
                                 (declare (not safe))
                                 (cons _L106806_ __tmp114728)))
                              (_bind106826_ '())
                              (_args106827_ '()))
               (let* ((_rest106828106836_ _rest106824_)
                      (_else106830106844_
                       (lambda ()
                         (let ((__tmp114714
                                (let ((__tmp114715
                                       (let ((__tmp114716
                                              (let ((__tmp114717
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args106827_))))
                                                (declare (not safe))
                                                (cons __tmp114717 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114716))))
                                  (declare (not safe))
                                  (cons _bind106826_ __tmp114715))))
                           (declare (not safe))
                           (cons 'let __tmp114714))))
                      (_K106832106930_
                       (lambda (_rest106847_ _e106848_)
                         (let* ((___stx113953113954_ _e106848_)
                                (_g106853106871_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113953113954_)))))
                           (let ((___kont113955113956_
                                  (lambda ()
                                    (let ((__tmp114718
                                           (let ((__tmp114719
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106848_))))
                                             (declare (not safe))
                                             (cons __tmp114719 _args106827_))))
                                      (declare (not safe))
                                      (_lp106821_
                                       _rest106847_
                                       _bind106826_
                                       __tmp114718))))
                                 (___kont113957113958_
                                  (lambda ()
                                    (let ((__tmp114720
                                           (let ((__tmp114721
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106848_))))
                                             (declare (not safe))
                                             (cons __tmp114721 _args106827_))))
                                      (declare (not safe))
                                      (_lp106821_
                                       _rest106847_
                                       _bind106826_
                                       __tmp114720))))
                                 (___kont113959113960_
                                  (lambda ()
                                    (let ((_tmp106878_
                                           (let ((__tmp114722 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114722))))
                                      (let ((__tmp114724
                                             (let ((__tmp114725
                                                    (let ((__tmp114726
                                                           (let ((__tmp114727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106848_))))
                     (declare (not safe))
                     (cons __tmp114727 '()))))
              (declare (not safe))
              (cons _tmp106878_ __tmp114726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114725
                                                     _bind106826_)))
                                            (__tmp114723
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106878_
                                                     _args106827_))))
                                        (declare (not safe))
                                        (_lp106821_
                                         _rest106847_
                                         __tmp114724
                                         __tmp114723))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113953113954_))
                                 (let ((_e106857106909_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113953113954_))))
                                   (let ((_tl106855106914_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106857106909_)))
                                         (_hd106856106912_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106857106909_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106856106912_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106856106912_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106855106914_))
                                                 (let ((_e106860106917_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106855106914_))))
                                                   (let ((_tl106858106922_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106860106917_)))
                                                         (_hd106859106920_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106860106917_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106858106922_))
                                                         (___kont113955113956_)
                                                         (___kont113959113960_))))
                                                 (___kont113959113960_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106856106912_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106855106914_))
                                                     (let ((_e106866106894_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106855106914_))))
                                                       (let ((_tl106864106899_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106866106894_)))
                     (_hd106865106897_
                      (let () (declare (not safe)) (##car _e106866106894_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106864106899_))
                     (___kont113957113958_)
                     (___kont113959113960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113959113960_))
                                                 (___kont113959113960_)))
                                         (___kont113959113960_))))
                                 (___kont113959113960_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106828106836_))
                     (let ((_hd106833106933_
                            (let ()
                              (declare (not safe))
                              (##car _rest106828106836_)))
                           (_tl106834106935_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106828106836_))))
                       (let* ((_e106938_ _hd106833106933_)
                              (_rest106940_ _tl106834106935_))
                         (declare (not safe))
                         (_K106832106930_ _rest106940_ _e106938_)))
                     (let () (declare (not safe)) (_else106830106844_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106770106800_
                                               _hd106767106792_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106759106776_
                                                 _g106760106779_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106759106776_ _g106760106779_)))))
                              (let ()
                                (declare (not safe))
                                (_g106759106776_ _g106760106779_)))))
                      (let ()
                        (declare (not safe))
                        (_g106759106776_ _g106760106779_))))))
          (declare (not safe))
          (_g106758106942_ _stx106757_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self106672_ _stx106673_)
        (let* ((_g106675106696_
                (lambda (_g106676106693_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106676106693_))))
               (_g106674106753_
                (lambda (_g106676106699_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106676106699_))
                      (let ((_e106682106701_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106676106699_))))
                        (let ((_hd106681106704_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106682106701_)))
                              (_tl106680106706_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106682106701_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106680106706_))
                              (let ((_e106685106709_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106680106706_))))
                                (let ((_hd106684106712_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106685106709_)))
                                      (_tl106683106714_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106685106709_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106683106714_))
                                      (let ((_e106688106717_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106683106714_))))
                                        (let ((_hd106687106720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106688106717_)))
                                              (_tl106686106722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106688106717_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106686106722_))
                                              (let ((_e106691106725_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106686106722_))))
                                                (let ((_hd106690106728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106691106725_)))
                                                      (_tl106689106730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106691106725_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106689106730_))
                                                      ((lambda (_L106733_
                                                                _L106734_
                                                                _L106735_)
                                                         (let ((__tmp114733
                                                                (let ((__tmp114739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106672_ _L106733_)))
                              (__tmp114734
                               (let ((__tmp114738
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106672_
                                         _L106734_)))
                                     (__tmp114735
                                      (let ((__tmp114737
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106672_
                                                _L106735_)))
                                            (__tmp114736
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114737 __tmp114736))))
                                 (declare (not safe))
                                 (cons __tmp114738 __tmp114735))))
                          (declare (not safe))
                          (cons __tmp114739 __tmp114734))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp114733)))
               _hd106690106728_
               _hd106687106720_
               _hd106684106712_)
              (let ()
                (declare (not safe))
                (_g106675106696_ _g106676106699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106675106696_
                                                 _g106676106699_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106675106696_ _g106676106699_)))))
                              (let ()
                                (declare (not safe))
                                (_g106675106696_ _g106676106699_)))))
                      (let ()
                        (declare (not safe))
                        (_g106675106696_ _g106676106699_))))))
          (declare (not safe))
          (_g106674106753_ _stx106673_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self106572_ _stx106573_)
        (let* ((_g106575106600_
                (lambda (_g106576106597_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106576106597_))))
               (_g106574106669_
                (lambda (_g106576106603_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106576106603_))
                      (let ((_e106583106605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106576106603_))))
                        (let ((_hd106582106608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106583106605_)))
                              (_tl106581106610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106583106605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106581106610_))
                              (let ((_e106586106613_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106581106610_))))
                                (let ((_hd106585106616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106586106613_)))
                                      (_tl106584106618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106586106613_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106584106618_))
                                      (let ((_e106589106621_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106584106618_))))
                                        (let ((_hd106588106624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106589106621_)))
                                              (_tl106587106626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106589106621_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106587106626_))
                                              (let ((_e106592106629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106587106626_))))
                                                (let ((_hd106591106632_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106592106629_)))
                                                      (_tl106590106634_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106592106629_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106590106634_))
                                                      (let ((_e106595106637_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106590106634_))))
                (let ((_hd106594106640_
                       (let () (declare (not safe)) (##car _e106595106637_)))
                      (_tl106593106642_
                       (let () (declare (not safe)) (##cdr _e106595106637_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106593106642_))
                      ((lambda (_L106645_ _L106646_ _L106647_ _L106648_)
                         (let ((__tmp114740
                                (let ((__tmp114748
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106572_
                                          _L106646_)))
                                      (__tmp114741
                                       (let ((__tmp114747
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106572_
                                                 _L106645_)))
                                             (__tmp114742
                                              (let ((__tmp114746
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106572_
                                                        _L106647_)))
                                                    (__tmp114743
                                                     (let ((__tmp114745
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106572_
                                                               _L106648_)))
                                                           (__tmp114744
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114745 __tmp114744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114746
                                                      __tmp114743))))
                                         (declare (not safe))
                                         (cons __tmp114747 __tmp114742))))
                                  (declare (not safe))
                                  (cons __tmp114748 __tmp114741))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp114740)))
                       _hd106594106640_
                       _hd106591106632_
                       _hd106588106624_
                       _hd106585106616_)
                      (let ()
                        (declare (not safe))
                        (_g106575106600_ _g106576106603_)))))
              (let ()
                (declare (not safe))
                (_g106575106600_ _g106576106603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106575106600_
                                                 _g106576106603_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106575106600_ _g106576106603_)))))
                              (let ()
                                (declare (not safe))
                                (_g106575106600_ _g106576106603_)))))
                      (let ()
                        (declare (not safe))
                        (_g106575106600_ _g106576106603_))))))
          (declare (not safe))
          (_g106574106669_ _stx106573_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self106488_ _stx106489_)
        (let* ((_g106491106512_
                (lambda (_g106492106509_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106492106509_))))
               (_g106490106569_
                (lambda (_g106492106515_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106492106515_))
                      (let ((_e106498106517_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106492106515_))))
                        (let ((_hd106497106520_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106498106517_)))
                              (_tl106496106522_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106498106517_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106496106522_))
                              (let ((_e106501106525_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106496106522_))))
                                (let ((_hd106500106528_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106501106525_)))
                                      (_tl106499106530_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106501106525_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106499106530_))
                                      (let ((_e106504106533_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106499106530_))))
                                        (let ((_hd106503106536_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106504106533_)))
                                              (_tl106502106538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106504106533_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106502106538_))
                                              (let ((_e106507106541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106502106538_))))
                                                (let ((_hd106506106544_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106507106541_)))
                                                      (_tl106505106546_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106507106541_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106505106546_))
                                                      ((lambda (_L106549_
                                                                _L106550_
                                                                _L106551_)
                                                         (let ((__tmp114749
                                                                (let ((__tmp114755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106488_ _L106549_)))
                              (__tmp114750
                               (let ((__tmp114754
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106488_
                                         _L106550_)))
                                     (__tmp114751
                                      (let ((__tmp114753
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106488_
                                                _L106551_)))
                                            (__tmp114752
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114753 __tmp114752))))
                                 (declare (not safe))
                                 (cons __tmp114754 __tmp114751))))
                          (declare (not safe))
                          (cons __tmp114755 __tmp114750))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp114749)))
               _hd106506106544_
               _hd106503106536_
               _hd106500106528_)
              (let ()
                (declare (not safe))
                (_g106491106512_ _g106492106515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106491106512_
                                                 _g106492106515_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106491106512_ _g106492106515_)))))
                              (let ()
                                (declare (not safe))
                                (_g106491106512_ _g106492106515_)))))
                      (let ()
                        (declare (not safe))
                        (_g106491106512_ _g106492106515_))))))
          (declare (not safe))
          (_g106490106569_ _stx106489_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self106388_ _stx106389_)
        (let* ((_g106391106416_
                (lambda (_g106392106413_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106392106413_))))
               (_g106390106485_
                (lambda (_g106392106419_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106392106419_))
                      (let ((_e106399106421_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106392106419_))))
                        (let ((_hd106398106424_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106399106421_)))
                              (_tl106397106426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106399106421_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106397106426_))
                              (let ((_e106402106429_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106397106426_))))
                                (let ((_hd106401106432_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106402106429_)))
                                      (_tl106400106434_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106402106429_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106400106434_))
                                      (let ((_e106405106437_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106400106434_))))
                                        (let ((_hd106404106440_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106405106437_)))
                                              (_tl106403106442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106405106437_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106403106442_))
                                              (let ((_e106408106445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106403106442_))))
                                                (let ((_hd106407106448_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106408106445_)))
                                                      (_tl106406106450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106408106445_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106406106450_))
                                                      (let ((_e106411106453_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106406106450_))))
                (let ((_hd106410106456_
                       (let () (declare (not safe)) (##car _e106411106453_)))
                      (_tl106409106458_
                       (let () (declare (not safe)) (##cdr _e106411106453_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106409106458_))
                      ((lambda (_L106461_ _L106462_ _L106463_ _L106464_)
                         (let ((__tmp114756
                                (let ((__tmp114764
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106388_
                                          _L106462_)))
                                      (__tmp114757
                                       (let ((__tmp114763
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106388_
                                                 _L106461_)))
                                             (__tmp114758
                                              (let ((__tmp114762
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106388_
                                                        _L106463_)))
                                                    (__tmp114759
                                                     (let ((__tmp114761
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106388_
                                                               _L106464_)))
                                                           (__tmp114760
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114761 __tmp114760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114762
                                                      __tmp114759))))
                                         (declare (not safe))
                                         (cons __tmp114763 __tmp114758))))
                                  (declare (not safe))
                                  (cons __tmp114764 __tmp114757))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp114756)))
                       _hd106410106456_
                       _hd106407106448_
                       _hd106404106440_
                       _hd106401106432_)
                      (let ()
                        (declare (not safe))
                        (_g106391106416_ _g106392106419_)))))
              (let ()
                (declare (not safe))
                (_g106391106416_ _g106392106419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106391106416_
                                                 _g106392106419_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106391106416_ _g106392106419_)))))
                              (let ()
                                (declare (not safe))
                                (_g106391106416_ _g106392106419_)))))
                      (let ()
                        (declare (not safe))
                        (_g106391106416_ _g106392106419_))))))
          (declare (not safe))
          (_g106390106485_ _stx106389_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self106183_ _stx106184_)
        (let* ((_g106186106207_
                (lambda (_g106187106204_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106187106204_))))
               (_g106185106385_
                (lambda (_g106187106210_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106187106210_))
                      (let ((_e106193106212_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106187106210_))))
                        (let ((_hd106192106215_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106193106212_)))
                              (_tl106191106217_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106193106212_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106191106217_))
                              (let ((_e106196106220_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106191106217_))))
                                (let ((_hd106195106223_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106196106220_)))
                                      (_tl106194106225_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106196106220_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106194106225_))
                                      (let ((_e106199106228_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106194106225_))))
                                        (let ((_hd106198106231_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106199106228_)))
                                              (_tl106197106233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106199106228_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106197106233_))
                                              (let ((_e106202106236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106197106233_))))
                                                (let ((_hd106201106239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106202106236_)))
                                                      (_tl106200106241_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106202106236_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106200106241_))
                                                      ((lambda (_L106244_
                                                                _L106245_
                                                                _L106246_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp114783
                            (let ((__tmp114789
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self106183_
                                      _L106244_)))
                                  (__tmp114784
                                   (let ((__tmp114788
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self106183_
                                             _L106245_)))
                                         (__tmp114785
                                          (let ((__tmp114787
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self106183_
                                                    _L106246_)))
                                                (__tmp114786
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp114787 __tmp114786))))
                                     (declare (not safe))
                                     (cons __tmp114788 __tmp114785))))
                              (declare (not safe))
                              (cons __tmp114789 __tmp114784))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114783))
                     (let _lp106264_ ((_rest106267_
                                       (let ((__tmp114781
                                              (let ((__tmp114782
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L106244_ '()))))
                                                (declare (not safe))
                                                (cons _L106245_ __tmp114782))))
                                         (declare (not safe))
                                         (cons _L106246_ __tmp114781)))
                                      (_bind106269_ '())
                                      (_args106270_ '()))
                       (let* ((_rest106271106279_ _rest106267_)
                              (_else106273106287_
                               (lambda ()
                                 (let ((__tmp114765
                                        (let ((__tmp114766
                                               (let ((__tmp114767
                                                      (let ((__tmp114768
                                                             (let ((__tmp114769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114770
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp114770 _args106270_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114769))))
                (declare (not safe))
                (cons __tmp114768 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114767))))
                                          (declare (not safe))
                                          (cons _bind106269_ __tmp114766))))
                                   (declare (not safe))
                                   (cons 'let __tmp114765))))
                              (_K106275106373_
                               (lambda (_rest106290_ _e106291_)
                                 (let* ((___stx113999114000_ _e106291_)
                                        (_g106296106314_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113999114000_)))))
                                   (let ((___kont114001114002_
                                          (lambda ()
                                            (let ((__tmp114771
                                                   (let ((__tmp114772
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106291_))))
                                                     (declare (not safe))
                                                     (cons __tmp114772
                                                           _args106270_))))
                                              (declare (not safe))
                                              (_lp106264_
                                               _rest106290_
                                               _bind106269_
                                               __tmp114771))))
                                         (___kont114003114004_
                                          (lambda ()
                                            (let ((__tmp114773
                                                   (let ((__tmp114774
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106291_))))
                                                     (declare (not safe))
                                                     (cons __tmp114774
                                                           _args106270_))))
                                              (declare (not safe))
                                              (_lp106264_
                                               _rest106290_
                                               _bind106269_
                                               __tmp114773))))
                                         (___kont114005114006_
                                          (lambda ()
                                            (let ((_tmp106321_
                                                   (let ((__tmp114775
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp114775))))
                                              (let ((__tmp114777
                                                     (let ((__tmp114778
                                                            (let ((__tmp114779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114780
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e106291_))))
                             (declare (not safe))
                             (cons __tmp114780 '()))))
                      (declare (not safe))
                      (cons _tmp106321_ __tmp114779))))
               (declare (not safe))
               (cons __tmp114778 _bind106269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114776
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp106321_
                                                             _args106270_))))
                                                (declare (not safe))
                                                (_lp106264_
                                                 _rest106290_
                                                 __tmp114777
                                                 __tmp114776))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113999114000_))
                                         (let ((_e106300106352_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113999114000_))))
                                           (let ((_tl106298106357_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106300106352_)))
                                                 (_hd106299106355_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106300106352_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd106299106355_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd106299106355_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl106298106357_))
                                                         (let ((_e106303106360_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl106298106357_))))
                   (let ((_tl106301106365_
                          (let ()
                            (declare (not safe))
                            (##cdr _e106303106360_)))
                         (_hd106302106363_
                          (let ()
                            (declare (not safe))
                            (##car _e106303106360_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106301106365_))
                         (___kont114001114002_)
                         (___kont114005114006_))))
                 (___kont114005114006_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd106299106355_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl106298106357_))
                     (let ((_e106309106337_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106298106357_))))
                       (let ((_tl106307106342_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106309106337_)))
                             (_hd106308106340_
                              (let ()
                                (declare (not safe))
                                (##car _e106309106337_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106307106342_))
                             (___kont114003114004_)
                             (___kont114005114006_))))
                     (___kont114005114006_))
                 (___kont114005114006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114005114006_))))
                                         (___kont114005114006_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest106271106279_))
                             (let ((_hd106276106376_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest106271106279_)))
                                   (_tl106277106378_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest106271106279_))))
                               (let* ((_e106381_ _hd106276106376_)
                                      (_rest106383_ _tl106277106378_))
                                 (declare (not safe))
                                 (_K106275106373_ _rest106383_ _e106381_)))
                             (let ()
                               (declare (not safe))
                               (_else106273106287_)))))))
               _hd106201106239_
               _hd106198106231_
               _hd106195106223_)
              (let ()
                (declare (not safe))
                (_g106186106207_ _g106187106210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106186106207_
                                                 _g106187106210_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106186106207_ _g106187106210_)))))
                              (let ()
                                (declare (not safe))
                                (_g106186106207_ _g106187106210_)))))
                      (let ()
                        (declare (not safe))
                        (_g106186106207_ _g106187106210_))))))
          (declare (not safe))
          (_g106185106385_ _stx106184_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self105962_ _stx105963_)
        (let* ((_g105965105990_
                (lambda (_g105966105987_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105966105987_))))
               (_g105964106180_
                (lambda (_g105966105993_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105966105993_))
                      (let ((_e105973105995_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105966105993_))))
                        (let ((_hd105972105998_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105973105995_)))
                              (_tl105971106000_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105973105995_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105971106000_))
                              (let ((_e105976106003_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105971106000_))))
                                (let ((_hd105975106006_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105976106003_)))
                                      (_tl105974106008_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105976106003_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105974106008_))
                                      (let ((_e105979106011_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105974106008_))))
                                        (let ((_hd105978106014_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105979106011_)))
                                              (_tl105977106016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105979106011_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105977106016_))
                                              (let ((_e105982106019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105977106016_))))
                                                (let ((_hd105981106022_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105982106019_)))
                                                      (_tl105980106024_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105982106019_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl105980106024_))
                                                      (let ((_e105985106027_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl105980106024_))))
                (let ((_hd105984106030_
                       (let () (declare (not safe)) (##car _e105985106027_)))
                      (_tl105983106032_
                       (let () (declare (not safe)) (##cdr _e105985106027_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105983106032_))
                      ((lambda (_L106035_ _L106036_ _L106037_ _L106038_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp114809
                                    (let ((__tmp114817
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self105962_
                                              _L106036_)))
                                          (__tmp114810
                                           (let ((__tmp114816
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105962_
                                                     _L106035_)))
                                                 (__tmp114811
                                                  (let ((__tmp114815
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self105962_
                                                            _L106037_)))
                                                        (__tmp114812
                                                         (let ((__tmp114814
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self105962_ _L106038_)))
                       (__tmp114813
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp114814 __tmp114813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114815
                                                          __tmp114812))))
                                             (declare (not safe))
                                             (cons __tmp114816 __tmp114811))))
                                      (declare (not safe))
                                      (cons __tmp114817 __tmp114810))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp114809))
                             (let _lp106059_ ((_rest106062_
                                               (let ((__tmp114806
                                                      (let ((__tmp114807
                                                             (let ((__tmp114808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L106036_ '()))))
                       (declare (not safe))
                       (cons _L106035_ __tmp114808))))
                (declare (not safe))
                (cons _L106037_ __tmp114807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L106038_ __tmp114806)))
                                              (_bind106064_ '())
                                              (_args106065_ '()))
                               (let* ((_rest106066106074_ _rest106062_)
                                      (_else106068106082_
                                       (lambda ()
                                         (let ((__tmp114790
                                                (let ((__tmp114791
                                                       (let ((__tmp114792
                                                              (let ((__tmp114793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114794
                                    (let ((__tmp114795
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp114795 _args106065_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp114794))))
                        (declare (not safe))
                        (cons __tmp114793 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp114792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind106064_
                                                        __tmp114791))))
                                           (declare (not safe))
                                           (cons 'let __tmp114790))))
                                      (_K106070106168_
                                       (lambda (_rest106085_ _e106086_)
                                         (let* ((___stx114045114046_ _e106086_)
                                                (_g106091106109_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx114045114046_)))))
                                           (let ((___kont114047114048_
                                                  (lambda ()
                                                    (let ((__tmp114796
                                                           (let ((__tmp114797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106086_))))
                     (declare (not safe))
                     (cons __tmp114797 _args106065_))))
              (declare (not safe))
              (_lp106059_ _rest106085_ _bind106064_ __tmp114796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114049114050_
                                                  (lambda ()
                                                    (let ((__tmp114798
                                                           (let ((__tmp114799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106086_))))
                     (declare (not safe))
                     (cons __tmp114799 _args106065_))))
              (declare (not safe))
              (_lp106059_ _rest106085_ _bind106064_ __tmp114798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114051114052_
                                                  (lambda ()
                                                    (let ((_tmp106116_
                                                           (let ((__tmp114800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp114800))))
              (let ((__tmp114802
                     (let ((__tmp114803
                            (let ((__tmp114804
                                   (let ((__tmp114805
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e106086_))))
                                     (declare (not safe))
                                     (cons __tmp114805 '()))))
                              (declare (not safe))
                              (cons _tmp106116_ __tmp114804))))
                       (declare (not safe))
                       (cons __tmp114803 _bind106064_)))
                    (__tmp114801
                     (let ()
                       (declare (not safe))
                       (cons _tmp106116_ _args106065_))))
                (declare (not safe))
                (_lp106059_ _rest106085_ __tmp114802 __tmp114801))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx114045114046_))
                                                 (let ((_e106095106147_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx114045114046_))))
                                                   (let ((_tl106093106152_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106095106147_)))
                                                         (_hd106094106150_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106095106147_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd106094106150_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd106094106150_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl106093106152_))
                         (let ((_e106098106155_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl106093106152_))))
                           (let ((_tl106096106160_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e106098106155_)))
                                 (_hd106097106158_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e106098106155_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl106096106160_))
                                 (___kont114047114048_)
                                 (___kont114051114052_))))
                         (___kont114051114052_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd106094106150_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl106093106152_))
                             (let ((_e106104106132_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl106093106152_))))
                               (let ((_tl106102106137_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e106104106132_)))
                                     (_hd106103106135_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e106104106132_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl106102106137_))
                                     (___kont114049114050_)
                                     (___kont114051114052_))))
                             (___kont114051114052_))
                         (___kont114051114052_)))
                 (___kont114051114052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114051114052_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest106066106074_))
                                     (let ((_hd106071106171_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest106066106074_)))
                                           (_tl106072106173_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest106066106074_))))
                                       (let* ((_e106176_ _hd106071106171_)
                                              (_rest106178_ _tl106072106173_))
                                         (declare (not safe))
                                         (_K106070106168_
                                          _rest106178_
                                          _e106176_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else106068106082_)))))))
                       _hd105984106030_
                       _hd105981106022_
                       _hd105978106014_
                       _hd105975106006_)
                      (let ()
                        (declare (not safe))
                        (_g105965105990_ _g105966105993_)))))
              (let ()
                (declare (not safe))
                (_g105965105990_ _g105966105993_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105965105990_
                                                 _g105966105993_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105965105990_ _g105966105993_)))))
                              (let ()
                                (declare (not safe))
                                (_g105965105990_ _g105966105993_)))))
                      (let ()
                        (declare (not safe))
                        (_g105965105990_ _g105966105993_))))))
          (declare (not safe))
          (_g105964106180_ _stx105963_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self105815_ _stx105816_)
        (letrec ((_import-set-template105818_
                  (lambda (_in105914_ _phi105915_)
                    (let ((_iphi105917_
                           (fx+ _phi105915_
                                (##direct-structure-ref
                                 _in105914_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports105918_
                           (##structure-ref
                            (##direct-structure-ref
                             _in105914_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp105920_ ((_rest105922_ _imports105918_)
                                       (_r105923_ '()))
                        (let* ((_rest105924105932_ _rest105922_)
                               (_else105926105940_ (lambda () _r105923_))
                               (_K105928105950_
                                (lambda (_rest105943_ _in105944_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in105944_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi105917_))
                                          (let ((__tmp114824
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in105944_
                                                         _r105923_))))
                                            (declare (not safe))
                                            (_lp105920_
                                             _rest105943_
                                             __tmp114824))
                                          (let ()
                                            (declare (not safe))
                                            (_lp105920_
                                             _rest105943_
                                             _r105923_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in105944_
                                             'gx#module-import::t))
                                          (let ((_iphi105946_
                                                 (fx+ _phi105915_
                                                      (##direct-structure-ref
                                                       _in105944_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi105946_))
                                                (let ((__tmp114822
                                                       (let ((__tmp114823
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in105944_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp114823
                                                               _r105923_))))
                                                  (declare (not safe))
                                                  (_lp105920_
                                                   _rest105943_
                                                   __tmp114822))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp105920_
                                                   _rest105943_
                                                   _r105923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in105944_
                                                 'gx#import-set::t))
                                              (let ((_xphi105948_
                                                     (fx+ _iphi105917_
                                                          (##direct-structure-ref
                                                           _in105944_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi105948_))
                                                    (let ((__tmp114820
                                                           (let ((__tmp114821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105944_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp114821 _r105923_))))
              (declare (not safe))
              (_lp105920_ _rest105943_ __tmp114820))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi105948_)
                                                        (let ((__tmp114818
                                                               (let ((__tmp114819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template105818_
                                 _in105944_
                                 _iphi105917_))))
                         (declare (not safe))
                         (foldl1 cons _r105923_ __tmp114819))))
                  (declare (not safe))
                  (_lp105920_ _rest105943_ __tmp114818))
                (let ()
                  (declare (not safe))
                  (_lp105920_ _rest105943_ _r105923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp105920_
                                                 _rest105943_
                                                 _r105923_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105924105932_))
                              (let ((_hd105929105953_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105924105932_)))
                                    (_tl105930105955_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105924105932_))))
                                (let* ((_in105958_ _hd105929105953_)
                                       (_rest105960_ _tl105930105955_))
                                  (declare (not safe))
                                  (_K105928105950_ _rest105960_ _in105958_)))
                              (let ()
                                (declare (not safe))
                                (_else105926105940_)))))))))
          (let* ((_g105820105830_
                  (lambda (_g105821105827_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105821105827_))))
                 (_g105819105911_
                  (lambda (_g105821105833_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105821105833_))
                        (let ((_e105825105835_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105821105833_))))
                          (let ((_hd105824105838_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105825105835_)))
                                (_tl105823105840_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105825105835_))))
                            ((lambda (_L105843_)
                               (let ((_ht105854_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp105856_ ((_rest105858_ _L105843_)
                                                  (_loads105859_ '()))
                                   (letrec ((_K105861_
                                             (lambda (_ctx105904_ _rest105905_)
                                               (let ((_id105907_
                                                      (##structure-ref
                                                       _ctx105904_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht105854_
                                                        _id105907_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp105856_
                                                        _rest105905_
                                                        _loads105859_))
                                                     (let ((_rt105909_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _id105907_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _ht105854_
                                                          _id105907_
                                                          _rt105909_))
                                                       (let ((__tmp114825
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _rt105909_ _loads105859_))))
                 (declare (not safe))
                 (_lp105856_ _rest105905_ __tmp114825))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest105862105870_ _rest105858_)
                                            (_else105864105882_
                                             (lambda ()
                                               (let ((__tmp114826
                                                      (map (lambda (_g105877105879_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g105877105879_))
                   (reverse _loads105859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp114826))))
                                            (_K105866105892_
                                             (lambda (_rest105885_ _in105886_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in105886_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K105861_
                                                      _in105886_
                                                      _rest105885_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in105886_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp114830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105886_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp114830))
                   (let ((__tmp114829
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in105886_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K105861_ __tmp114829 _rest105885_))
                   (let ()
                     (declare (not safe))
                     (_lp105856_ _rest105885_ _loads105859_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in105886_
                      'gx#import-set::t))
                   (let ((_phi105888_
                          (##direct-structure-ref
                           _in105886_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi105888_))
                         (let ((__tmp114828
                                (##direct-structure-ref
                                 _in105886_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K105861_ __tmp114828 _rest105885_))
                         (if (fxpositive? _phi105888_)
                             (let* ((_deps105890_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template105818_
                                        _in105886_
                                        '0)))
                                    (__tmp114827
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest105885_
                                               _deps105890_))))
                               (declare (not safe))
                               (_lp105856_ __tmp114827 _loads105859_))
                             (let ()
                               (declare (not safe))
                               (_lp105856_ _rest105885_ _loads105859_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx105816_
                      _in105886_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest105862105870_))
                                           (let ((_hd105867105895_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest105862105870_)))
                                                 (_tl105868105897_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest105862105870_))))
                                             (let* ((_in105900_
                                                     _hd105867105895_)
                                                    (_rest105902_
                                                     _tl105868105897_))
                                               (declare (not safe))
                                               (_K105866105892_
                                                _rest105902_
                                                _in105900_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else105864105882_))))))))
                             _tl105823105840_)))
                        (let ()
                          (declare (not safe))
                          (_g105820105830_ _g105821105833_))))))
            (declare (not safe))
            (_g105819105911_ _stx105816_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self105630_ _stx105631_)
        (letrec ((_add-lift!105633_
                  (lambda (_expr105813_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp114831 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr105813_ __tmp114831)))))
                 (_generate-syntax-quote105634_
                  (lambda (_id105810_ _marks105811_)
                    (let ((__tmp114832
                           (let ((__tmp114833
                                  (let ((__tmp114837
                                         (let ((__tmp114838
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id105810_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp114838)))
                                        (__tmp114834
                                         (let ((__tmp114835
                                                (let ((__tmp114836
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks105811_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp114836))))
                                           (declare (not safe))
                                           (cons '#f __tmp114835))))
                                    (declare (not safe))
                                    (cons __tmp114837 __tmp114834))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp114833))))
                      (declare (not safe))
                      (cons '##structure __tmp114832))))
                 (_generate-simple105635_
                  (lambda (_stxq105805_)
                    (let ((_gid105807_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid105808_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq105805_))))
                      (let ((__tmp114839
                             (let ((__tmp114840
                                    (let ((__tmp114841
                                           (let ((__tmp114842
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105634_
                                                     _qid105808_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp114842 '()))))
                                      (declare (not safe))
                                      (cons _gid105807_ __tmp114841))))
                               (declare (not safe))
                               (cons 'define __tmp114840))))
                        (declare (not safe))
                        (_add-lift!105633_ __tmp114839))
                      (let ((__tmp114843 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114843 _stxq105805_ _gid105807_))
                      _gid105807_)))
                 (_generate-serialized105636_
                  (lambda (_stxq105795_ _marks105796_)
                    (let* ((_mark-refs105798_
                            (map _generate-mark105637_ _marks105796_))
                           (_gid105800_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid105802_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq105795_))))
                      (let ((__tmp114844
                             (let ((__tmp114845
                                    (let ((__tmp114846
                                           (let ((__tmp114847
                                                  (let ((__tmp114848
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs105798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105634_
                                                     _qid105802_
                                                     __tmp114848))))
                                             (declare (not safe))
                                             (cons __tmp114847 '()))))
                                      (declare (not safe))
                                      (cons _gid105800_ __tmp114846))))
                               (declare (not safe))
                               (cons 'define __tmp114845))))
                        (declare (not safe))
                        (_add-lift!105633_ __tmp114844))
                      (let ((__tmp114849 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114849 _stxq105795_ _gid105800_))
                      _gid105800_)))
                 (_generate-mark105637_
                  (lambda (_mark105781_)
                    (let ((_$e105783_
                           (let ((__tmp114850 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp114850 _mark105781_))))
                      (if _$e105783_
                          (values _$e105783_)
                          (let* ((_gid105786_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr105788_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark105638_ _mark105781_)))
                                 (_ctx105790_
                                  (let ((__tmp114851
                                         (##structure-ref
                                          _mark105781_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp114851)))
                                 (_ctx-ref105792_
                                  (if (let ((__tmp114856
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx105790_ __tmp114856))
                                      '(gx#current-expander-context)
                                      (let ((__tmp114852
                                             (let ((__tmp114853
                                                    (let ((__tmp114854
                                                           (let ((__tmp114855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref105639_ _ctx105790_))))
                     (declare (not safe))
                     (cons __tmp114855 '()))))
              (declare (not safe))
              (cons 'quote __tmp114854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114853 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp114852)))))
                            (let ((__tmp114857 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp114857 _mark105781_ _gid105786_))
                            (let ((__tmp114858
                                   (let ((__tmp114859
                                          (let ((__tmp114860
                                                 (let ((__tmp114861
                                                        (let ((__tmp114862
                                                               (let ((__tmp114864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114865
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr105788_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp114865)))
                             (__tmp114863
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref105792_ '()))))
                         (declare (not safe))
                         (cons __tmp114864 __tmp114863))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp114862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114861 '()))))
                                            (declare (not safe))
                                            (cons _gid105786_ __tmp114860))))
                                     (declare (not safe))
                                     (cons 'define __tmp114859))))
                              (declare (not safe))
                              (_add-lift!105633_ __tmp114858))
                            _gid105786_)))))
                 (_serialize-mark105638_
                  (lambda (_mark105728_)
                    (letrec ((_quote-e105730_
                              (lambda (_sym105779_)
                                (if (interned-symbol? _sym105779_)
                                    _sym105779_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym105779_))))))
                      (let* ((_mark105731105740_ _mark105728_)
                             (_E105733105744_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark105731105740_))))
                             (_K105734105756_
                              (lambda (_trace105747_
                                       _phi105748_
                                       _ctx105749_
                                       _subst105750_)
                                (let* ((_subs105752_
                                        (if _subst105750_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst105750_))
                                            '()))
                                       (__tmp114866
                                        (map (lambda (_pair105754_)
                                               (let ((__tmp114869
                                                      (let ((__tmp114870
                                                             (car _pair105754_)))
                                                        (declare (not safe))
                                                        (_quote-e105730_
                                                         __tmp114870)))
                                                     (__tmp114867
                                                      (let ((__tmp114868
                                                             (cdr _pair105754_)))
                                                        (declare (not safe))
                                                        (_quote-e105730_
                                                         __tmp114868))))
                                                 (declare (not safe))
                                                 (cons __tmp114869
                                                       __tmp114867)))
                                             _subs105752_)))
                                  (declare (not safe))
                                  (cons _phi105748_ __tmp114866)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark105731105740_
                               'gx#expander-mark::t))
                            (let* ((_e105735105759_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105731105740_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst105762_ _e105735105759_)
                                   (_e105736105764_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105731105740_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx105767_ _e105736105764_)
                                   (_e105737105769_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105731105740_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi105772_ _e105737105769_)
                                   (_e105738105774_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105731105740_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace105777_ _e105738105774_))
                              (declare (not safe))
                              (_K105734105756_
                               _trace105777_
                               _phi105772_
                               _ctx105767_
                               _subst105762_))
                            (let ()
                              (declare (not safe))
                              (_E105733105744_)))))))
                 (_context-ref105639_
                  (lambda (_ctx105715_)
                    (if (let ((__tmp114878
                               (##structure-ref
                                _ctx105715_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp114878
                           'gx#module-context::t))
                        (let ((_ctx-ref105717_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested105641_ _ctx105715_)))
                              (_ctx-origin105718_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin105640_ _ctx105715_)))
                              (_origin105719_
                               (let ((__tmp114872
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin105640_ __tmp114872))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin105719_ _ctx-origin105718_))
                              (let ((_ref105721_
                                     (let ((__tmp114873
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested105641_
                                        __tmp114873))))
                                (let _lp105723_ ((_ref105725_
                                                  (cdr _ref105721_))
                                                 (_ctx-ref105726_
                                                  (cdr _ctx-ref105717_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref105725_))
                                           (let ((__tmp114877
                                                  (car _ref105725_))
                                                 (__tmp114876
                                                  (car _ctx-ref105726_)))
                                             (declare (not safe))
                                             (eq? __tmp114877 __tmp114876)))
                                      (let ((__tmp114875 (cdr _ref105725_))
                                            (__tmp114874
                                             (cdr _ctx-ref105726_)))
                                        (declare (not safe))
                                        (_lp105723_ __tmp114875 __tmp114874))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref105726_)))))
                              _ctx-ref105717_))
                        (let ((__tmp114871
                               (##structure-ref
                                _ctx105715_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp114871)))))
                 (_context-ref-origin105640_
                  (lambda (_ctx105707_)
                    (let _lp105709_ ((_ctx105711_ _ctx105707_))
                      (let ((_super105713_
                             (##structure-ref
                              _ctx105711_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105713_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp105709_ _super105713_))
                            _ctx105711_)))))
                 (_context-ref-nested105641_
                  (lambda (_ctx105698_)
                    (let _lp105700_ ((_ctx105702_ _ctx105698_) (_r105703_ '()))
                      (let ((_super105705_
                             (##structure-ref
                              _ctx105702_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105705_
                               'gx#module-context::t))
                            (let ((__tmp114881
                                   (let ((__tmp114882
                                          (car (##structure-ref
                                                _ctx105702_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp114882 _r105703_))))
                              (declare (not safe))
                              (_lp105700_ _super105705_ __tmp114881))
                            (let ((__tmp114879
                                   (let ((__tmp114880
                                          (##structure-ref
                                           _ctx105702_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp114880))))
                              (declare (not safe))
                              (cons __tmp114879 _r105703_))))))))
          (let* ((_g105643105656_
                  (lambda (_g105644105653_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105644105653_))))
                 (_g105642105695_
                  (lambda (_g105644105659_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105644105659_))
                        (let ((_e105648105661_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105644105659_))))
                          (let ((_hd105647105664_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105648105661_)))
                                (_tl105646105666_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105648105661_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105646105666_))
                                (let ((_e105651105669_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105646105666_))))
                                  (let ((_hd105650105672_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105651105669_)))
                                        (_tl105649105674_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105651105669_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105649105674_))
                                        ((lambda (_L105677_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L105677_))
                                               (let ((_$e105690_
                                                      (let ((__tmp114883
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp114883
                                                         _L105677_))))
                                                 (if _$e105690_
                                                     (values _$e105690_)
                                                     (let ((_marks105693_
                                                            (##direct-structure-ref
                                                             _L105677_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks105693_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple105635_
                                                              _L105677_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized105636_
                                                              _L105677_
                                                              _marks105693_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L105677_))))
                                         _hd105650105672_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105643105656_ _g105644105659_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105643105656_ _g105644105659_)))))
                        (let ()
                          (declare (not safe))
                          (_g105643105656_ _g105644105659_))))))
            (declare (not safe))
            (_g105642105695_ _stx105631_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self105562_ _stx105563_)
        (let* ((_g105565105582_
                (lambda (_g105566105579_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105566105579_))))
               (_g105564105627_
                (lambda (_g105566105585_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105566105585_))
                      (let ((_e105571105587_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105566105585_))))
                        (let ((_hd105570105590_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105571105587_)))
                              (_tl105569105592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105571105587_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105569105592_))
                              (let ((_e105574105595_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105569105592_))))
                                (let ((_hd105573105598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105574105595_)))
                                      (_tl105572105600_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105574105595_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105572105600_))
                                      (let ((_e105577105603_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105572105600_))))
                                        (let ((_hd105576105606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105577105603_)))
                                              (_tl105575105608_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105577105603_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105575105608_))
                                              ((lambda (_L105611_ _L105612_)
                                                 (let ((__tmp114884
                                                        (let ((__tmp114887
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L105612_)))
                      (__tmp114885
                       (let ((__tmp114886
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105562_ _L105611_))))
                         (declare (not safe))
                         (cons __tmp114886 '()))))
                  (declare (not safe))
                  (cons __tmp114887 __tmp114885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp114884)))
                                               _hd105576105606_
                                               _hd105573105598_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105565105582_
                                                 _g105566105585_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105565105582_ _g105566105585_)))))
                              (let ()
                                (declare (not safe))
                                (_g105565105582_ _g105566105585_)))))
                      (let ()
                        (declare (not safe))
                        (_g105565105582_ _g105566105585_))))))
          (declare (not safe))
          (_g105564105627_ _stx105563_))))
    (define gxc#generate-meta-begin%
      (lambda (_self105511_ _stx105512_)
        (let* ((_g105514105524_
                (lambda (_g105515105521_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105515105521_))))
               (_g105513105559_
                (lambda (_g105515105527_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105515105527_))
                      (let ((_e105519105529_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105515105527_))))
                        (let ((_hd105518105532_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105519105529_)))
                              (_tl105517105534_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105519105529_))))
                          ((lambda (_L105537_)
                             (let* ((_c-body105551_
                                     (map (lambda (_g105546105548_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105511_
                                               _g105546105548_)))
                                          _L105537_))
                                    (_c-body105556_
                                     (filter (lambda (_$obj105553_)
                                               (let ((__tmp114888
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj105553_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp114888)))
                                             _c-body105551_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body105556_))))
                           _tl105517105534_)))
                      (let ()
                        (declare (not safe))
                        (_g105514105524_ _g105515105527_))))))
          (declare (not safe))
          (_g105513105559_ _stx105512_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self105419_ _stx105420_)
        (let* ((_g105422105432_
                (lambda (_g105423105429_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105423105429_))))
               (_g105421105508_
                (lambda (_g105423105435_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105423105435_))
                      (let ((_e105427105437_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105423105435_))))
                        (let ((_hd105426105440_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105427105437_)))
                              (_tl105425105442_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105427105437_))))
                          ((lambda (_L105445_)
                             (let* ((_phi105455_
                                     (let ((__tmp114889
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp114889 '1)))
                                    (_block105457_
                                     (let ((__tmp114890
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self105419_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp114890
                                        _phi105455_)))
                                    (_compiled105460_
                                     (let ((__tmp114891
                                            (lambda ()
                                              (let ((__tmp114893
                                                     (let ((__tmp114894
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp114894
                                                             _L105445_)))
                                                    (__tmp114892
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self105419_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp114893
                                                 'state:
                                                 __tmp114892)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114891
                                        gx#current-expander-phi
                                        _phi105455_))))
                               (let* ((_g105463105473_
                                       (lambda (_g105464105470_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g105464105470_))))
                                      (_g105462105505_
                                       (lambda (_g105464105476_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g105464105476_))
                                             (let ((_e105468105478_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g105464105476_))))
                                               (let ((_hd105467105481_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105468105478_)))
                                                     (_tl105466105483_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105468105478_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105467105481_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd105467105481_))
                                                         ((lambda (_L105486_)
                                                            (let ((_c-body105503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj105500_)
                                     (let ((__tmp114895
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj105500_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp114895)))
                                   _L105486_)))
                      (if _block105457_
                          (let ((__tmp114896
                                 (let ((__tmp114897
                                        (let ((__tmp114898
                                               (let ((__tmp114902
                                                      (let ((__tmp114903
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp114903)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114899
                                                      (let ((__tmp114900
                                                             (let ((__tmp114901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block105457_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp114901))))
                (declare (not safe))
                (cons __tmp114900 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114902
                                                       __tmp114899))))
                                          (declare (not safe))
                                          (cons '%#call __tmp114898))))
                                   (declare (not safe))
                                   (cons __tmp114897 _c-body105503_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp114896))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body105503_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body105503_))))))
                  _tl105466105483_)
                 (let ()
                   (declare (not safe))
                   (_g105463105473_ _g105464105476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105463105473_
                                                        _g105464105476_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g105463105473_
                                                _g105464105476_))))))
                                 (declare (not safe))
                                 (_g105462105505_ _compiled105460_))))
                           _tl105425105442_)))
                      (let ()
                        (declare (not safe))
                        (_g105422105432_ _g105423105435_))))))
          (declare (not safe))
          (_g105421105508_ _stx105420_))))
    (define gxc#generate-meta-module%
      (lambda (_self105350_ _stx105351_)
        (let ((__tmp114904
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self105350_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114904))
        (let* ((_g105353105367_
                (lambda (_g105354105364_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105354105364_))))
               (_g105352105416_
                (lambda (_g105354105370_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105354105370_))
                      (let ((_e105359105372_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105354105370_))))
                        (let ((_hd105358105375_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105359105372_)))
                              (_tl105357105377_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105359105372_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105357105377_))
                              (let ((_e105362105380_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105357105377_))))
                                (let ((_hd105361105383_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105362105380_)))
                                      (_tl105360105385_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105362105380_))))
                                  ((lambda (_L105388_ _L105389_)
                                     (let ((_key105402_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L105389_))))
                                       (if (interned-symbol? _key105402_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx105351_
                                              _L105389_
                                              _key105402_)))
                                       (let* ((_ctx105404_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L105389_)))
                                              (_code105407_
                                               (let ((__tmp114905
                                                      (lambda ()
                                                        (let ((__tmp114906
                                                               (##structure-ref
                                                                _ctx105404_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self105350_
                                                           __tmp114906)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp114905
                                                  gx#current-expander-context
                                                  _ctx105404_)))
                                              (_rt105409_
                                               (let ((__tmp114907
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp114907
                                                  _ctx105404_)))
                                              (_loader105411_
                                               (if _rt105409_
                                                   (let ((__tmp114908
                                                          (let ((__tmp114909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114913
                                (let ((__tmp114914
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp114914)))
                               (__tmp114910
                                (let ((__tmp114911
                                       (let ((__tmp114912
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt105409_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp114912))))
                                  (declare (not safe))
                                  (cons __tmp114911 '()))))
                           (declare (not safe))
                           (cons __tmp114913 __tmp114910))))
                    (declare (not safe))
                    (cons '%#call __tmp114909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114908 '()))
                                                   '()))
                                              (_modid105413_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L105389_))))
                                         (let ((__tmp114915
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self105350_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp114915))
                                         (let ((__tmp114916
                                                (let ((__tmp114917
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code105407_
                                                               _loader105411_))))
                                                  (declare (not safe))
                                                  (cons _modid105413_
                                                        __tmp114917))))
                                           (declare (not safe))
                                           (cons '%#module __tmp114916)))))
                                   _tl105360105385_
                                   _hd105361105383_)))
                              (let ()
                                (declare (not safe))
                                (_g105353105367_ _g105354105370_)))))
                      (let ()
                        (declare (not safe))
                        (_g105353105367_ _g105354105370_))))))
          (declare (not safe))
          (_g105352105416_ _stx105351_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx105340_ _context-chain105341_)
        (let _lp105343_ ((_ctx105345_ _ctx105340_) (_path105346_ '()))
          (let ((_super105348_
                 (##structure-ref _ctx105345_ '3 gx#phi-context::t '#f)))
            (if (memq _super105348_ _context-chain105341_)
                (let ((__tmp114922
                       (let ((__tmp114923
                              (car (##structure-ref
                                    _ctx105345_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp114923 _path105346_))))
                  (declare (not safe))
                  (cons '#f __tmp114922))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super105348_
                       'gx#module-context::t))
                    (let ((__tmp114920
                           (let ((__tmp114921
                                  (car (##structure-ref
                                        _ctx105345_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp114921 _path105346_))))
                      (declare (not safe))
                      (_lp105343_ _super105348_ __tmp114920))
                    (let ((__tmp114918
                           (let ((__tmp114919
                                  (##structure-ref
                                   _ctx105345_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp114919))))
                      (declare (not safe))
                      (cons __tmp114918 _path105346_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp105335_ ((_ctx105337_ (gx#current-expander-context))
                         (_r105338_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx105337_ 'gx#module-context::t))
              (let ((__tmp114925
                     (##structure-ref _ctx105337_ '3 gx#phi-context::t '#f))
                    (__tmp114924
                     (let ()
                       (declare (not safe))
                       (cons _ctx105337_ _r105338_))))
                (declare (not safe))
                (_lp105335_ __tmp114925 __tmp114924))
              _r105338_))))
    (define gxc#generate-meta-import%
      (lambda (_self105104_ _stx105105_)
        (letrec* ((_context-chain105107_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec105108_
                   (lambda (_in105271_)
                     (let* ((_in105272105284_ _in105271_)
                            (_E105274105288_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in105272105284_))))
                            (_K105275105298_
                             (lambda (_phi105291_
                                      _name105292_
                                      _src-name105293_
                                      _src-phi105294_
                                      _src-key105295_
                                      _src-ctx105296_)
                               (let ((__tmp114926
                                      (let ((__tmp114930
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name105292_)))
                                            (__tmp114927
                                             (let ((__tmp114928
                                                    (let ((__tmp114929
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name105293_))))
                                                      (declare (not safe))
                                                      (cons __tmp114929 '()))))
                                               (declare (not safe))
                                               (cons _src-phi105294_
                                                     __tmp114928))))
                                        (declare (not safe))
                                        (cons __tmp114930 __tmp114927))))
                                 (declare (not safe))
                                 (cons _phi105291_ __tmp114926)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in105272105284_
                              'gx#module-import::t))
                           (let ((_e105276105301_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in105272105284_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e105276105301_
                                    'gx#module-export::t))
                                 (let* ((_e105279105304_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105276105301_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx105307_ _e105279105304_)
                                        (_e105280105309_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105276105301_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key105312_ _e105280105309_)
                                        (_e105281105314_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105276105301_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi105317_ _e105281105314_)
                                        (_e105282105319_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105276105301_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name105322_ _e105282105319_)
                                        (_e105277105324_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105272105284_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name105327_ _e105277105324_)
                                        (_e105278105329_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105272105284_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi105332_ _e105278105329_))
                                   (declare (not safe))
                                   (_K105275105298_
                                    _phi105332_
                                    _name105327_
                                    _src-name105322_
                                    _src-phi105317_
                                    _src-key105312_
                                    _src-ctx105307_))
                                 (let ()
                                   (declare (not safe))
                                   (_E105274105288_))))
                           (let () (declare (not safe)) (_E105274105288_))))))
                  (_make-import-path105109_
                   (lambda (_ctx105269_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105269_
                        _context-chain105107_))))
                  (_make-import-spec-in105110_
                   (lambda (_ctx105266_ _in105267_)
                     (let ((__tmp114931
                            (let ((__tmp114933
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path105109_ _ctx105266_)))
                                  (__tmp114932 (reverse _in105267_)))
                              (declare (not safe))
                              (cons __tmp114933 __tmp114932))))
                       (declare (not safe))
                       (cons 'spec: __tmp114931)))))
          (let ((__tmp114934
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self105104_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp114934))
          (let* ((_g105112105122_
                  (lambda (_g105113105119_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105113105119_))))
                 (_g105111105263_
                  (lambda (_g105113105125_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105113105125_))
                        (let ((_e105117105127_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105113105125_))))
                          (let ((_hd105116105130_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105117105127_)))
                                (_tl105115105132_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105117105127_))))
                            ((lambda (_L105135_)
                               (let _lp105146_ ((_rest105148_ _L105135_)
                                                (_current-src105149_ '#f)
                                                (_current-in105150_ '())
                                                (_r105151_ '()))
                                 (let* ((_rest105152105160_ _rest105148_)
                                        (_else105154105170_
                                         (lambda ()
                                           (let* ((_r105168_
                                                   (if _current-src105149_
                                                       (let ((__tmp114935
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in105110_
                         _current-src105149_
                         _current-in105150_))))
                 (declare (not safe))
                 (cons __tmp114935 _r105151_))
               _r105151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp114936
                                                   (reverse _r105168_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp114936))))
                                        (_K105156105251_
                                         (lambda (_rest105173_ _in105174_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in105174_
                                                  'gx#module-import::t))
                                               (let* ((_in105175105182_
                                                       _in105174_)
                                                      (_E105177105186_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in105175105182_))))
              (_K105178105191_
               (lambda (_src-ctx105189_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src105149_ _src-ctx105189_))
                     (let ((__tmp114952
                            (let ((__tmp114953
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec105108_ _in105174_))))
                              (declare (not safe))
                              (cons __tmp114953 _current-in105150_))))
                       (declare (not safe))
                       (_lp105146_
                        _rest105173_
                        _current-src105149_
                        __tmp114952
                        _r105151_))
                     (if _current-src105149_
                         (let ((__tmp114950
                                (let ((__tmp114951
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105108_
                                          _in105174_))))
                                  (declare (not safe))
                                  (cons __tmp114951 '())))
                               (__tmp114948
                                (let ((__tmp114949
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in105110_
                                          _current-src105149_
                                          _current-in105150_))))
                                  (declare (not safe))
                                  (cons __tmp114949 _r105151_))))
                           (declare (not safe))
                           (_lp105146_
                            _rest105173_
                            _src-ctx105189_
                            __tmp114950
                            __tmp114948))
                         (let ((__tmp114946
                                (let ((__tmp114947
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105108_
                                          _in105174_))))
                                  (declare (not safe))
                                  (cons __tmp114947 '()))))
                           (declare (not safe))
                           (_lp105146_
                            _rest105173_
                            _src-ctx105189_
                            __tmp114946
                            _r105151_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in105175105182_
                                                        'gx#module-import::t))
                                                     (let ((_e105179105194_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in105175105182_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e105179105194_
                                                              'gx#module-export::t))
                                                           (let* ((_e105180105197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e105179105194_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx105200_ _e105180105197_))
                     (declare (not safe))
                     (_K105178105191_ _src-ctx105200_))
                   (let () (declare (not safe)) (_E105177105186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E105177105186_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in105174_
                                                      'gx#import-set::t))
                                                   (let* ((_phi105202_
                                                           (##direct-structure-ref
                                                            _in105174_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src105204_
                                                           (##direct-structure-ref
                                                            _in105174_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in105244_
                                                           (let* ((_g105205105214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path105109_ _src105204_)))
                          (_E105208105218_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g105205105214_)))))
                     (let ((_K105210105234_
                            (lambda (_path105232_) _path105232_))
                           (_K105209105224_
                            (lambda (_path105222_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path105222_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g105205105214_))
                           (let ((_tl105212105239_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g105205105214_)))
                                 (_hd105211105237_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g105205105214_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl105212105239_))
                                 (let ((_path105242_ _hd105211105237_))
                                   (declare (not safe))
                                   (_K105210105234_ _path105242_))
                                 (let ((_path105227_ _g105205105214_))
                                   (declare (not safe))
                                   (_K105209105224_ _path105227_))))
                           (let ((_path105227_ _g105205105214_))
                             (declare (not safe))
                             (_K105209105224_ _path105227_))))))
                  (_r105246_
                   (if _current-src105149_
                       (let ((__tmp114941
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in105110_
                                 _current-src105149_
                                 _current-in105150_))))
                         (declare (not safe))
                         (cons __tmp114941 _r105151_))
                       _r105151_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp114942
                                                            (let ((__tmp114943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi105202_))
                               _src-in105244_
                               (let ((__tmp114944
                                      (let ((__tmp114945
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in105244_ '()))))
                                        (declare (not safe))
                                        (cons _phi105202_ __tmp114945))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp114944)))))
                      (declare (not safe))
                      (cons __tmp114943 _r105246_))))
               (declare (not safe))
               (_lp105146_ _rest105173_ '#f '() __tmp114942)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in105174_
                                                          'gx#module-context::t))
                                                       (let* ((_r105249_
                                                               (if _current-src105149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114937
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in105110_
                                     _current-src105149_
                                     _current-in105150_))))
                             (declare (not safe))
                             (cons __tmp114937 _r105151_))
                           _r105151_))
                      (__tmp114938
                       (let ((__tmp114939
                              (let ((__tmp114940
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path105109_ _in105174_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp114940))))
                         (declare (not safe))
                         (cons __tmp114939 _r105249_))))
                 (declare (not safe))
                 (_lp105146_ _rest105173_ '#f '() __tmp114938))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest105152105160_))
                                       (let ((_hd105157105254_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest105152105160_)))
                                             (_tl105158105256_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest105152105160_))))
                                         (let* ((_in105259_ _hd105157105254_)
                                                (_rest105261_
                                                 _tl105158105256_))
                                           (declare (not safe))
                                           (_K105156105251_
                                            _rest105261_
                                            _in105259_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else105154105170_))))))
                             _tl105115105132_)))
                        (let ()
                          (declare (not safe))
                          (_g105112105122_ _g105113105125_))))))
            (declare (not safe))
            (_g105111105263_ _stx105105_)))))
    (define gxc#generate-meta-export%
      (lambda (_self104914_ _stx104915_)
        (letrec* ((_context-chain104917_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path104918_
                   (lambda (_ctx105102_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105102_
                        _context-chain104917_)))))
          (let* ((_g104920104930_
                  (lambda (_g104921104927_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104921104927_))))
                 (_g104919105099_
                  (lambda (_g104921104933_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104921104933_))
                        (let ((_e104925104935_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104921104933_))))
                          (let ((_hd104924104938_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104925104935_)))
                                (_tl104923104940_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104925104935_))))
                            ((lambda (_L104943_)
                               (let _lp104954_ ((_rest104956_ _L104943_)
                                                (_r104957_ '()))
                                 (let* ((_rest104958104966_ _rest104956_)
                                        (_else104960104974_
                                         (lambda ()
                                           (let ((__tmp114954
                                                  (reverse _r104957_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp114954))))
                                        (_K104962105087_
                                         (lambda (_rest104977_ _out104978_)
                                           (let* ((_out104979104992_
                                                   _out104978_)
                                                  (_E104982104996_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out104979104992_)))))
                                             (let ((_K104986105066_
                                                    (lambda (_name105062_
                                                             _phi105063_
                                                             _key105064_)
                                                      (let ((__tmp114955
                                                             (let ((__tmp114956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114957
                                   (let ((__tmp114958
                                          (let ((__tmp114961
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key105064_)))
                                                (__tmp114959
                                                 (let ((__tmp114960
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name105062_))))
                                                   (declare (not safe))
                                                   (cons __tmp114960 '()))))
                                            (declare (not safe))
                                            (cons __tmp114961 __tmp114959))))
                                     (declare (not safe))
                                     (cons _phi105063_ __tmp114958))))
                              (declare (not safe))
                              (cons 'spec: __tmp114957))))
                       (declare (not safe))
                       (cons __tmp114956 _r104957_))))
                (declare (not safe))
                (_lp104954_ _rest104977_ __tmp114955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K104983105046_
                                                    (lambda (_phi105000_
                                                             _src105001_)
                                                      (let* ((_out105041_
                                                              (if _src105001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114962
                                 (let ((__tmp114963
                                        (let* ((_g105002105011_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path104918_
                                                   _src105001_)))
                                               (_E105005105015_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g105002105011_)))))
                                          (let ((_K105007105031_
                                                 (lambda (_path105029_)
                                                   _path105029_))
                                                (_K105006105021_
                                                 (lambda (_path105019_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path105019_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g105002105011_))
                                                (let ((_tl105009105036_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g105002105011_)))
                                                      (_hd105008105034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g105002105011_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl105009105036_))
                                                      (let ((_path105039_
                                                             _hd105008105034_))
                                                        (declare (not safe))
                                                        (_K105007105031_
                                                         _path105039_))
                                                      (let ((_path105024_
                                                             _g105002105011_))
                                                        (declare (not safe))
                                                        (_K105006105021_
                                                         _path105024_))))
                                                (let ((_path105024_
                                                       _g105002105011_))
                                                  (declare (not safe))
                                                  (_K105006105021_
                                                   _path105024_)))))))
                                   (declare (not safe))
                                   (cons __tmp114963 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp114962))
                          '#t))
                     (_out105043_
                      (if (let () (declare (not safe)) (fxzero? _phi105000_))
                          _out105041_
                          (let ((__tmp114964
                                 (let ((__tmp114965
                                        (let ()
                                          (declare (not safe))
                                          (cons _out105041_ '()))))
                                   (declare (not safe))
                                   (cons _phi105000_ __tmp114965))))
                            (declare (not safe))
                            (cons 'phi: __tmp114964)))))
                (let ((__tmp114966
                       (let ()
                         (declare (not safe))
                         (cons _out105043_ _r104957_))))
                  (declare (not safe))
                  (_lp104954_ _rest104977_ __tmp114966))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match104981105059_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out104979104992_
                                                               'gx#export-set::t))
                                                            (let* ((_e104984105049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104979104992_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e104985105054_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104979104992_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src105052_ _e104984105049_)
                            (_phi105057_ _e104985105054_))
                        (let ()
                          (declare (not safe))
                          (_K104983105046_ _phi105057_ _src105052_))))
                    (let () (declare (not safe)) (_E104982104996_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out104979104992_
                                                        'gx#module-export::t))
                                                     (let* ((_e104987105069_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out104979104992_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e104988105072_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104979104992_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e104989105077_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104979104992_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e104990105082_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104979104992_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key105075_ _e104988105072_)
                     (_phi105080_ _e104989105077_)
                     (_name105085_ _e104990105082_))
                 (let ()
                   (declare (not safe))
                   (_K104986105066_ _name105085_ _phi105080_ _key105075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match104981105059_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104958104966_))
                                       (let ((_hd104963105090_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104958104966_)))
                                             (_tl104964105092_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104958104966_))))
                                         (let* ((_out105095_ _hd104963105090_)
                                                (_rest105097_
                                                 _tl104964105092_))
                                           (declare (not safe))
                                           (_K104962105087_
                                            _rest105097_
                                            _out105095_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104960104974_))))))
                             _tl104923104940_)))
                        (let ()
                          (declare (not safe))
                          (_g104920104930_ _g104921104933_))))))
            (declare (not safe))
            (_g104919105099_ _stx104915_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self104875_ _stx104876_)
        (let ((__tmp114967
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104875_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114967))
        (let* ((_g104878104888_
                (lambda (_g104879104885_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104879104885_))))
               (_g104877104911_
                (lambda (_g104879104891_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104879104891_))
                      (let ((_e104883104893_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104879104891_))))
                        (let ((_hd104882104896_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104883104893_)))
                              (_tl104881104898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104883104893_))))
                          ((lambda (_L104901_)
                             (let ((__tmp114968
                                    (map gxc#generate-runtime-identifier
                                         _L104901_)))
                               (declare (not safe))
                               (cons '%#provide __tmp114968)))
                           _tl104881104898_)))
                      (let ()
                        (declare (not safe))
                        (_g104878104888_ _g104879104891_))))))
          (declare (not safe))
          (_g104877104911_ _stx104876_))))
    (define gxc#generate-meta-extern%
      (lambda (_self104746_ _stx104747_)
        (letrec ((_generate1104749_
                  (lambda (_id104870_ _eid104871_)
                    (let ((_eid104873_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid104871_))))
                      (if (interned-symbol? _eid104873_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx104747_
                             _eid104873_)))
                      (let ((__tmp114970
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id104870_)))
                            (__tmp114969
                             (let ()
                               (declare (not safe))
                               (cons _eid104873_ '()))))
                        (declare (not safe))
                        (cons __tmp114970 __tmp114969))))))
          (let* ((_g104751104779_
                  (lambda (_g104752104776_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104752104776_))))
                 (_g104750104867_
                  (lambda (_g104752104782_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104752104782_))
                        (let ((_e104757104784_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104752104782_))))
                          (let ((_hd104756104787_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104757104784_)))
                                (_tl104755104789_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104757104784_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl104755104789_))
                                (let ((_g114971_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl104755104789_
                                          '0))))
                                  (begin
                                    (let ((_g114972_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114971_)
                                                 (##vector-length _g114971_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114972_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114972_)))
                                    (let ((_target104758104792_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114971_ 0)))
                                          (_tl104760104794_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114971_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104760104794_))
                                          (letrec ((_loop104761104797_
                                                    (lambda (_hd104759104800_
                                                             _eid104765104802_
                                                             _id104766104804_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd104759104800_))
                                                          (let ((_e104762104807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd104759104800_))))
                    (let ((_lp-hd104763104810_
                           (let ()
                             (declare (not safe))
                             (##car _e104762104807_)))
                          (_lp-tl104764104812_
                           (let ()
                             (declare (not safe))
                             (##cdr _e104762104807_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd104763104810_))
                          (let ((_e104771104815_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd104763104810_))))
                            (let ((_hd104770104818_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104771104815_)))
                                  (_tl104769104820_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104771104815_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl104769104820_))
                                  (let ((_e104774104823_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl104769104820_))))
                                    (let ((_hd104773104826_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e104774104823_)))
                                          (_tl104772104828_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e104774104823_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104772104828_))
                                          (let ((__tmp114977
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104773104826_
                                                         _eid104765104802_)))
                                                (__tmp114976
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104770104818_
                                                         _id104766104804_))))
                                            (declare (not safe))
                                            (_loop104761104797_
                                             _lp-tl104764104812_
                                             __tmp114977
                                             __tmp114976))
                                          (let ()
                                            (declare (not safe))
                                            (_g104751104779_
                                             _g104752104782_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g104751104779_ _g104752104782_)))))
                          (let ()
                            (declare (not safe))
                            (_g104751104779_ _g104752104782_)))))
                  (let ((_eid104767104831_ (reverse _eid104765104802_))
                        (_id104768104833_ (reverse _id104766104804_)))
                    ((lambda (_L104836_ _L104837_)
                       (let ((__tmp114973
                              (map _generate1104749_
                                   (let ((__tmp114974
                                          (lambda (_g104852104855_
                                                   _g104853104857_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104852104855_
                                                    _g104853104857_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114974 '() _L104837_))
                                   (let ((__tmp114975
                                          (lambda (_g104859104862_
                                                   _g104860104864_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104859104862_
                                                    _g104860104864_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114975 '() _L104836_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp114973)))
                     _eid104767104831_
                     _id104768104833_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop104761104797_
                                               _target104758104792_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g104751104779_
                                             _g104752104782_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g104751104779_ _g104752104782_)))))
                        (let ()
                          (declare (not safe))
                          (_g104751104779_ _g104752104782_))))))
            (declare (not safe))
            (_g104750104867_ _stx104747_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self104536_ _stx104537_)
        (letrec ((_generate1104539_
                  (lambda (_id104741_)
                    (let ((_eid104743_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id104741_)))
                          (_ident104744_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id104741_))))
                      (let ((__tmp114978
                             (let ((__tmp114979
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid104743_ '()))))
                               (declare (not safe))
                               (cons _ident104744_ __tmp114979))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp114978)))))
                 (_generate*104540_
                  (lambda (_all104709_)
                    (let* ((_all104710104718_ _all104709_)
                           (_else104712104726_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all104709_))))
                           (_K104714104731_
                            (lambda (_one104729_) _one104729_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all104710104718_))
                          (let ((_hd104715104734_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all104710104718_)))
                                (_tl104716104736_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all104710104718_))))
                            (let ((_one104739_ _hd104715104734_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104716104736_))
                                  (let ()
                                    (declare (not safe))
                                    (_K104714104731_ _one104739_))
                                  (let ()
                                    (declare (not safe))
                                    (_else104712104726_)))))
                          (let ()
                            (declare (not safe))
                            (_else104712104726_)))))))
          (let* ((_g104542104559_
                  (lambda (_g104543104556_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104543104556_))))
                 (_g104541104706_
                  (lambda (_g104543104562_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104543104562_))
                        (let ((_e104548104564_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104543104562_))))
                          (let ((_hd104547104567_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104548104564_)))
                                (_tl104546104569_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104548104564_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104546104569_))
                                (let ((_e104551104572_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104546104569_))))
                                  (let ((_hd104550104575_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104551104572_)))
                                        (_tl104549104577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104551104572_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104549104577_))
                                        (let ((_e104554104580_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104549104577_))))
                                          (let ((_hd104553104583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104554104580_)))
                                                (_tl104552104585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104554104580_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104552104585_))
                                                ((lambda (_L104588_ _L104589_)
                                                   (let _lp104605_ ((_rest104607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L104589_)
                            (_r104608_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx114122114123_
                                                             _rest104607_)
                                                            (_g104613104630_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx114122114123_)))))
               (let ((___kont114124114125_
                      (lambda (_L104693_)
                        (let ()
                          (declare (not safe))
                          (_lp104605_ _L104693_ _r104608_))))
                     (___kont114126114127_
                      (lambda (_L104666_ _L104667_)
                        (let ((__tmp114980
                               (let ((__tmp114981
                                      (let ()
                                        (declare (not safe))
                                        (_generate1104539_ _L104667_))))
                                 (declare (not safe))
                                 (cons __tmp114981 _r104608_))))
                          (declare (not safe))
                          (_lp104605_ _L104666_ __tmp114980))))
                     (___kont114128114129_
                      (lambda (_L104642_)
                        (let ((__tmp114982
                               (let ((__tmp114983
                                      (let ((__tmp114984
                                             (let ()
                                               (declare (not safe))
                                               (_generate1104539_ _L104642_))))
                                        (declare (not safe))
                                        (cons __tmp114984 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp114983 _r104608_))))
                          (declare (not safe))
                          (_generate*104540_ __tmp114982))))
                     (___kont114130114131_
                      (lambda ()
                        (let ((__tmp114985 (reverse _r104608_)))
                          (declare (not safe))
                          (_generate*104540_ __tmp114985)))))
                 (let ((_g104611104653_
                        (lambda ()
                          (let ((_L104642_ ___stx114122114123_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L104642_))
                                (___kont114128114129_ _L104642_)
                                (___kont114130114131_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx114122114123_))
                       (let ((_e104618104682_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx114122114123_))))
                         (let ((_tl104616104687_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e104618104682_)))
                               (_hd104617104685_
                                (let ()
                                  (declare (not safe))
                                  (##car _e104618104682_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd104617104685_))
                               (let ((_e104619104690_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd104617104685_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e104619104690_ '#f))
                                     (___kont114124114125_ _tl104616104687_)
                                     (___kont114126114127_
                                      _tl104616104687_
                                      _hd104617104685_)))
                               (___kont114126114127_
                                _tl104616104687_
                                _hd104617104685_))))
                       (let () (declare (not safe)) (_g104611104653_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd104553104583_
                                                 _hd104550104575_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104542104559_
                                                   _g104543104562_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104542104559_ _g104543104562_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104542104559_ _g104543104562_)))))
                        (let ()
                          (declare (not safe))
                          (_g104542104559_ _g104543104562_))))))
            (declare (not safe))
            (_g104541104706_ _stx104537_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self104433_ _stx104434_)
        (let* ((_g104436104453_
                (lambda (_g104437104450_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104437104450_))))
               (_g104435104533_
                (lambda (_g104437104456_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104437104456_))
                      (let ((_e104442104458_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104437104456_))))
                        (let ((_hd104441104461_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104442104458_)))
                              (_tl104440104463_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104442104458_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104440104463_))
                              (let ((_e104445104466_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104440104463_))))
                                (let ((_hd104444104469_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104445104466_)))
                                      (_tl104443104471_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104445104466_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104443104471_))
                                      (let ((_e104448104474_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104443104471_))))
                                        (let ((_hd104447104477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104448104474_)))
                                              (_tl104446104479_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104448104474_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104446104479_))
                                              ((lambda (_L104482_ _L104483_)
                                                 (let* ((_eid104498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L104483_)))
                                                        (_phi104500_
                                                         (let ((__tmp114986
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp114986
                                                                '1)))
                                                        (_block104502_
                                                         (let ((__tmp114987
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self104433_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp114987 _phi104500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g104505104512_
                                                           (lambda (_g104506104509_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g104506104509_))))
                  (_g104504104530_
                   (lambda (_g104506104515_)
                     ((lambda (_L104517_)
                        (let ()
                          (let ((__tmp114992
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self104433_ 'state)))
                                (__tmp114988
                                 (let ((__tmp114991
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp114989
                                        (let ((__tmp114990
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L104482_ '()))))
                                          (declare (not safe))
                                          (cons _L104517_ __tmp114990))))
                                   (declare (not safe))
                                   (cons __tmp114991 __tmp114989))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp114992
                             _phi104500_
                             __tmp114988))))
                      _g104506104515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g104504104530_
                                                      _eid104498_))
                                                   (if _block104502_
                                                       (let ((__tmp114996
                                                              (let ((__tmp115002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp115003
                                    (let ((__tmp115004
                                           (let ((__tmp115005
                                                  (let ((__tmp115009
                                                         (let ((__tmp115010
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp115010)))
                (__tmp115006
                 (let ((__tmp115007
                        (let ((__tmp115008
                               (let ()
                                 (declare (not safe))
                                 (cons _block104502_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp115008))))
                   (declare (not safe))
                   (cons __tmp115007 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115009
                                                          __tmp115006))))
                                             (declare (not safe))
                                             (cons '%#call __tmp115005))))
                                      (declare (not safe))
                                      (cons __tmp115004 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp115003)))
                            (__tmp114997
                             (let ((__tmp114998
                                    (let ((__tmp114999
                                           (let ((__tmp115001
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L104483_)))
                                                 (__tmp115000
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid104498_ '()))))
                                             (declare (not safe))
                                             (cons __tmp115001 __tmp115000))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp114999))))
                               (declare (not safe))
                               (cons __tmp114998 '()))))
                        (declare (not safe))
                        (cons __tmp115002 __tmp114997))))
                 (declare (not safe))
                 (cons '%#begin __tmp114996))
               (let ((__tmp114993
                      (let ((__tmp114995
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L104483_)))
                            (__tmp114994
                             (let ()
                               (declare (not safe))
                               (cons _eid104498_ '()))))
                        (declare (not safe))
                        (cons __tmp114995 __tmp114994))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp114993)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104447104477_
                                               _hd104444104469_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104436104453_
                                                 _g104437104456_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104436104453_ _g104437104456_)))))
                              (let ()
                                (declare (not safe))
                                (_g104436104453_ _g104437104456_)))))
                      (let ()
                        (declare (not safe))
                        (_g104436104453_ _g104437104456_))))))
          (declare (not safe))
          (_g104435104533_ _stx104434_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self104365_ _stx104366_)
        (let* ((_g104368104385_
                (lambda (_g104369104382_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104369104382_))))
               (_g104367104430_
                (lambda (_g104369104388_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104369104388_))
                      (let ((_e104374104390_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104369104388_))))
                        (let ((_hd104373104393_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104374104390_)))
                              (_tl104372104395_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104374104390_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104372104395_))
                              (let ((_e104377104398_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104372104395_))))
                                (let ((_hd104376104401_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104377104398_)))
                                      (_tl104375104403_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104377104398_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104375104403_))
                                      (let ((_e104380104406_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104375104403_))))
                                        (let ((_hd104379104409_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104380104406_)))
                                              (_tl104378104411_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104380104406_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104378104411_))
                                              ((lambda (_L104414_ _L104415_)
                                                 (let ((__tmp115011
                                                        (let ((__tmp115014
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L104415_)))
                      (__tmp115012
                       (let ((__tmp115013
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L104414_))))
                         (declare (not safe))
                         (cons __tmp115013 '()))))
                  (declare (not safe))
                  (cons __tmp115014 __tmp115012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp115011)))
                                               _hd104379104409_
                                               _hd104376104401_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104368104385_
                                                 _g104369104388_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104368104385_ _g104369104388_)))))
                              (let ()
                                (declare (not safe))
                                (_g104368104385_ _g104369104388_)))))
                      (let ()
                        (declare (not safe))
                        (_g104368104385_ _g104369104388_))))))
          (declare (not safe))
          (_g104367104430_ _stx104366_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self104362_ _stx104363_)
        (let ((__tmp115016
               (let () (declare (not safe)) (slot-ref__0 _self104362_ 'state)))
              (__tmp115015 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp115016 __tmp115015 _stx104363_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self104362_ _stx104363_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self104359_ _stx104360_)
        (let ((__tmp115018
               (let () (declare (not safe)) (slot-ref__0 _self104359_ 'state)))
              (__tmp115017 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp115018 __tmp115017 _stx104360_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp115021 (list))
            (__tmp115019
             (let ((__tmp115020
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115020 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp115021
         '(src n open blocks)
         __tmp115019
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args104356_
        (apply make-instance gxc#meta-state::t _$args104356_)))
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
      (lambda (_self104353_ _ctx104354_)
        (if (let ((__tmp115030
                   (let ()
                     (declare (not safe))
                     (##structure-length _self104353_))))
              (declare (not safe))
              (##fx< '4 __tmp115030))
            (begin
              (let ((__tmp115024
                     (let ((__tmp115025
                            (##structure-ref
                             _ctx104354_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp115025)))
                    (__tmp115023
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104353_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104353_
                 __tmp115024
                 '1
                 __tmp115023
                 '#f))
              (let ((__tmp115026
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104353_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104353_
                 '1
                 '2
                 __tmp115026
                 '#f))
              (let ((__tmp115028
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115027
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104353_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104353_
                 __tmp115028
                 '3
                 __tmp115027
                 '#f))
              (let ((__tmp115029
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104353_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104353_
                 '()
                 '4
                 __tmp115029
                 '#f)))
            (let ((__tmp115022
                   (let ()
                     (declare (not safe))
                     (##vector-length _self104353_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self104353_
                     '4
                     __tmp115022)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp115033 (list))
            (__tmp115031
             (let ((__tmp115032
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115032 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp115033
         '(ctx phi n code)
         __tmp115031
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args104228_
        (apply make-instance gxc#meta-state-block::t _$args104228_)))
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
      (lambda (_state104187_ _phi104188_)
        (let* ((_state104189104197_ _state104187_)
               (_E104191104201_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state104189104197_))))
               (_K104192104210_
                (lambda (_open104204_ _n104205_ _src104206_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open104204_ _phi104188_))
                      '#f
                      (let ((_block-ref104208_
                             (string-append
                              _src104206_
                              '"~"
                              (number->string _n104205_))))
                        (##structure-set!
                         _state104187_
                         (let () (declare (not safe)) (fx+ _n104205_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp115034
                               (let ((__tmp115035
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp115035
                                  _phi104188_
                                  _n104205_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open104204_ _phi104188_ __tmp115034))
                        _block-ref104208_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state104189104197_
                 'gxc#meta-state::t))
              (let* ((_e104193104213_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104189104197_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src104216_ _e104193104213_)
                     (_e104194104218_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104189104197_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n104221_ _e104194104218_)
                     (_e104195104223_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104189104197_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open104226_ _e104195104223_))
                (declare (not safe))
                (_K104192104210_ _open104226_ _n104221_ _src104216_))
              (let () (declare (not safe)) (_E104191104201_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state104181_ _phi104182_ _stx104183_)
        (let ((_block104185_
               (let ((__tmp115036
                      (##structure-ref
                       _state104181_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp115036 _phi104182_))))
          (##structure-set!
           _block104185_
           (let ((__tmp115037
                  (##structure-ref
                   _block104185_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx104183_ __tmp115037))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state104176_)
        (##structure-set!
         _state104176_
         (let ((__tmp115040
                (lambda (_g115041_ _block104178_ _r104179_)
                  (let ()
                    (declare (not safe))
                    (cons _block104178_ _r104179_))))
               (__tmp115039
                (##structure-ref _state104176_ '4 gxc#meta-state::t '#f))
               (__tmp115038
                (##structure-ref _state104176_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp115040 __tmp115039 __tmp115038))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state104176_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state104128_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state104128_))
        (let ((__tmp115043
               (lambda (_block104130_ _r104131_)
                 (let* ((_block104132104141_ _block104130_)
                        (_E104134104145_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block104132104141_))))
                        (_K104135104153_
                         (lambda (_code104148_
                                  _n104149_
                                  _phi104150_
                                  _ctx104151_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code104148_))
                               _r104131_
                               (let ((__tmp115044
                                      (let ((__tmp115045
                                             (let ((__tmp115046
                                                    (let ((__tmp115047
                                                           (let ((__tmp115048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp115049 (reverse _code104148_)))
                            (declare (not safe))
                            (cons '%#begin __tmp115049))))
                     (declare (not safe))
                     (cons __tmp115048 '()))))
              (declare (not safe))
              (cons _n104149_ __tmp115047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi104150_
                                                     __tmp115046))))
                                        (declare (not safe))
                                        (cons _ctx104151_ __tmp115045))))
                                 (declare (not safe))
                                 (cons __tmp115044 _r104131_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block104132104141_
                          'gxc#meta-state-block::t))
                       (let* ((_e104136104156_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104132104141_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx104159_ _e104136104156_)
                              (_e104137104161_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104132104141_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi104164_ _e104137104161_)
                              (_e104138104166_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104132104141_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n104169_ _e104138104166_)
                              (_e104139104171_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104132104141_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code104174_ _e104139104171_))
                         (declare (not safe))
                         (_K104135104153_
                          _code104174_
                          _n104169_
                          _phi104164_
                          _ctx104159_))
                       (let () (declare (not safe)) (_E104134104145_))))))
              (__tmp115042
               (##structure-ref _state104128_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp115043 '() __tmp115042))))
    (define gxc#collect-expression-refs
      (lambda (_stx104124_)
        (let ((_ht104126_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx104124_ 'table: _ht104126_))
          _ht104126_)))
    (define gxc#collect-refs-ref%
      (lambda (_self104067_ _stx104068_)
        (let* ((_g104070104083_
                (lambda (_g104071104080_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104071104080_))))
               (_g104069104121_
                (lambda (_g104071104086_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104071104086_))
                      (let ((_e104075104088_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104071104086_))))
                        (let ((_hd104074104091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104075104088_)))
                              (_tl104073104093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104075104088_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104073104093_))
                              (let ((_e104078104096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104073104093_))))
                                (let ((_hd104077104099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104078104096_)))
                                      (_tl104076104101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104078104096_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl104076104101_))
                                      ((lambda (_L104104_)
                                         (let* ((_bind104116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L104104_)))
                                                (_eid104118_
                                                 (if _bind104116_
                                                     (##structure-ref
                                                      _bind104116_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L104104_)))))
                                           (let ((__tmp115050
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self104067_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp115050
                                              _eid104118_
                                              _eid104118_))))
                                       _hd104077104099_)
                                      (let ()
                                        (declare (not safe))
                                        (_g104070104083_ _g104071104086_)))))
                              (let ()
                                (declare (not safe))
                                (_g104070104083_ _g104071104086_)))))
                      (let ()
                        (declare (not safe))
                        (_g104070104083_ _g104071104086_))))))
          (declare (not safe))
          (_g104069104121_ _stx104068_))))
    (define gxc#collect-refs-setq%
      (lambda (_self103994_ _stx103995_)
        (let* ((_g103997104014_
                (lambda (_g103998104011_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103998104011_))))
               (_g103996104064_
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
                                                 (let* ((_bind104059_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L104044_)))
                                                        (_eid104061_
                                                         (if _bind104059_
                                                             (##structure-ref
                                                              _bind104059_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L104044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp115051
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self103994_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp115051
                                                      _eid104061_
                                                      _eid104061_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self103994_
                                                      _L104043_))))
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
          (_g103996104064_ _stx103995_))))
    (define gxc#find-runtime-begin%
      (lambda (_self103951_ _stx103952_)
        (let* ((_g103954103964_
                (lambda (_g103955103961_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103955103961_))))
               (_g103953103991_
                (lambda (_g103955103967_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103955103967_))
                      (let ((_e103959103969_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103955103967_))))
                        (let ((_hd103958103972_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103959103969_)))
                              (_tl103957103974_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103959103969_))))
                          ((lambda (_L103977_)
                             (let ((__tmp115052
                                    (lambda (_g103986103988_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103951_
                                         _g103986103988_)))))
                               (declare (not safe))
                               (ormap1 __tmp115052 _L103977_)))
                           _tl103957103974_)))
                      (let ()
                        (declare (not safe))
                        (_g103954103964_ _g103955103967_))))))
          (declare (not safe))
          (_g103953103991_ _stx103952_))))
    (define gxc#count-values-single% (lambda (_self103948_ _stx103949_) '1))
    (define gxc#count-values-call%
      (lambda (_self103814_ _stx103815_)
        (let* ((___stx114152114153_ _stx103815_)
               (_g103818103847_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx114152114153_)))))
          (let ((___kont114154114155_
                 (lambda (_L103915_ _L103916_)
                   (length (let ((__tmp115053
                                  (lambda (_g103937103940_ _g103938103942_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g103937103940_
                                            _g103938103942_)))))
                             (declare (not safe))
                             (foldr1 __tmp115053 '() _L103915_)))))
                (___kont114158114159_ (lambda () '#f)))
            (let ((___match114197114198_
                   (lambda (_e103824103859_
                            _hd103823103862_
                            _tl103822103864_
                            _e103827103867_
                            _hd103826103870_
                            _tl103825103872_
                            _e103830103875_
                            _hd103829103878_
                            _tl103828103880_
                            _e103833103883_
                            _hd103832103886_
                            _tl103831103888_
                            ___splice114156114157_
                            _target103834103891_
                            _tl103836103893_)
                     (letrec ((_loop103837103896_
                               (lambda (_hd103835103899_ _rand103841103901_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103835103899_))
                                     (let ((_e103838103904_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103835103899_))))
                                       (let ((_lp-tl103840103909_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103838103904_)))
                                             (_lp-hd103839103907_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103838103904_))))
                                         (let ((__tmp115054
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd103839103907_
                                                        _rand103841103901_))))
                                           (declare (not safe))
                                           (_loop103837103896_
                                            _lp-tl103840103909_
                                            __tmp115054))))
                                     (let ((_rand103842103912_
                                            (reverse _rand103841103901_)))
                                       (let ((_L103915_ _rand103842103912_)
                                             (_L103916_ _hd103832103886_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L103916_
                                                'values))
                                             (___kont114154114155_
                                              _L103915_
                                              _L103916_)
                                             (___kont114158114159_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop103837103896_ _target103834103891_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx114152114153_))
                  (let ((_e103824103859_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx114152114153_))))
                    (let ((_tl103822103864_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103824103859_)))
                          (_hd103823103862_
                           (let ()
                             (declare (not safe))
                             (##car _e103824103859_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103822103864_))
                          (let ((_e103827103867_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103822103864_))))
                            (let ((_tl103825103872_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103827103867_)))
                                  (_hd103826103870_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103827103867_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103826103870_))
                                  (let ((_e103830103875_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103826103870_))))
                                    (let ((_tl103828103880_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103830103875_)))
                                          (_hd103829103878_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103830103875_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103829103878_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103829103878_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103828103880_))
                                                  (let ((_e103833103883_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103828103880_))))
                                                    (let ((_tl103831103888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103833103883_)))
                                                          (_hd103832103886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103833103883_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103831103888_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103825103872_))
                      (let ((___splice114156114157_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103825103872_ '0))))
                        (let ((_tl103836103893_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114156114157_ '1)))
                              (_target103834103891_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114156114157_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103836103893_))
                              (___match114197114198_
                               _e103824103859_
                               _hd103823103862_
                               _tl103822103864_
                               _e103827103867_
                               _hd103826103870_
                               _tl103825103872_
                               _e103830103875_
                               _hd103829103878_
                               _tl103828103880_
                               _e103833103883_
                               _hd103832103886_
                               _tl103831103888_
                               ___splice114156114157_
                               _target103834103891_
                               _tl103836103893_)
                              (___kont114158114159_))))
                      (___kont114158114159_))
                  (___kont114158114159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114158114159_))
                                              (___kont114158114159_))
                                          (___kont114158114159_))))
                                  (___kont114158114159_))))
                          (___kont114158114159_))))
                  (___kont114158114159_)))))))
    (define gxc#count-values-if%
      (lambda (_self103717_ _stx103718_)
        (let* ((_g103720103741_
                (lambda (_g103721103738_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103721103738_))))
               (_g103719103811_
                (lambda (_g103721103744_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103721103744_))
                      (let ((_e103727103746_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103721103744_))))
                        (let ((_hd103726103749_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103727103746_)))
                              (_tl103725103751_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103727103746_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103725103751_))
                              (let ((_e103730103754_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103725103751_))))
                                (let ((_hd103729103757_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103730103754_)))
                                      (_tl103728103759_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103730103754_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103728103759_))
                                      (let ((_e103733103762_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103728103759_))))
                                        (let ((_hd103732103765_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103733103762_)))
                                              (_tl103731103767_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103733103762_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103731103767_))
                                              (let ((_e103736103770_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103731103767_))))
                                                (let ((_hd103735103773_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103736103770_)))
                                                      (_tl103734103775_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103736103770_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103734103775_))
                                                      ((lambda (_L103778_
                                                                _L103779_
                                                                _L103780_)
                                                         (let ((_c1103797103799_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self103717_ _L103779_))))
                   (if _c1103797103799_
                       (let* ((_c1103802_ _c1103797103799_)
                              (_c2103803103805_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103717_ _L103778_))))
                         (if _c2103803103805_
                             (let ((_c2103808_ _c2103803103805_))
                               (if (fx= _c1103802_ _c2103808_) _c1103802_ '#f))
                             '#f))
                       '#f)))
               _hd103735103773_
               _hd103732103765_
               _hd103729103757_)
              (let ()
                (declare (not safe))
                (_g103720103741_ _g103721103744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103720103741_
                                                 _g103721103744_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103720103741_ _g103721103744_)))))
                              (let ()
                                (declare (not safe))
                                (_g103720103741_ _g103721103744_)))))
                      (let ()
                        (declare (not safe))
                        (_g103720103741_ _g103721103744_))))))
          (declare (not safe))
          (_g103719103811_ _stx103718_))))))
