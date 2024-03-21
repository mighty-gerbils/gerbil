(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710954837)
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
        (letrec ((_hash-e112849_
                  (lambda (_id112851_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id112851_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e112849_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp114207 (list gxc#::void::t))
            (__tmp114205
             (let ((__tmp114206
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114206 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp114207
         '()
         __tmp114205
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args112845_
        (apply make-instance gxc#::collect-bindings::t _$args112845_)))
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
      (lambda (_stx112837_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self112840_
                (let ((__obj114181
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj114181))
               (__tmp114208
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112840_ _stx112837_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114208
           gxc#current-compile-method
           _self112840_))))
    (define gxc#::lift-modules::t
      (let ((__tmp114211 (list gxc#::void::t))
            (__tmp114209
             (let ((__tmp114210
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114210 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp114211
         '(modules)
         __tmp114209
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args112834_
        (apply make-instance gxc#::lift-modules::t _$args112834_)))
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
      (lambda (_g114212_ _modules112805112808_ _stx112810_)
        (let ((_modules112813_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules112805112808_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules112805112808_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self112815_
                  (let ((__obj114183
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114183
                       _modules112813_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj114183))
                 (__tmp114213
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112815_ _stx112810_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114213
             gxc#current-compile-method
             _self112815_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys112804112822_ . _args112824_)
        (apply gxc#apply-lift-modules__%
               _keys112804112822_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112804112822_
                  'modules:
                  absent-value))
               _args112824_)))
    (define gxc#apply-lift-modules
      (lambda _args112806112830_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args112806112830_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp114216 (list))
            (__tmp114214
             (let ((__tmp114215
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114215 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp114216
         '()
         __tmp114214
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args112800_
        (apply make-instance gxc#::find-runtime-code::t _$args112800_)))
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
      (lambda (_stx112792_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self112795_
                (let ((__obj114185
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj114185))
               (__tmp114217
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112795_ _stx112792_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114217
           gxc#current-compile-method
           _self112795_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp114220 (list gxc#::false::t))
            (__tmp114218
             (let ((__tmp114219
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114219 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp114220
         '()
         __tmp114218
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args112789_
        (apply make-instance gxc#::find-lambda-expression::t _$args112789_)))
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
      (lambda (_stx112781_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self112784_
                (let ((__obj114187
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj114187))
               (__tmp114221
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112784_ _stx112781_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114221
           gxc#current-compile-method
           _self112784_))))
    (define gxc#::count-values::t
      (let ((__tmp114224 (list gxc#::false-expression::t))
            (__tmp114222
             (let ((__tmp114223
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114223 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp114224
         '()
         __tmp114222
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args112778_
        (apply make-instance gxc#::count-values::t _$args112778_)))
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
      (lambda (_stx112770_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self112773_
                (let ((__obj114189
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj114189))
               (__tmp114225
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112773_ _stx112770_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114225
           gxc#current-compile-method
           _self112773_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp114226 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp114226
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args112767_
        (apply make-instance gxc#::generate-runtime-empty::t _$args112767_)))
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
      (let ((__tmp114229 (list gxc#::generate-runtime-empty::t))
            (__tmp114227
             (let ((__tmp114228
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114228 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp114229
         '()
         __tmp114227
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args112763_
        (apply make-instance gxc#::generate-loader::t _$args112763_)))
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
      (lambda (_stx112755_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self112758_
                (let ((__obj114192
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj114192))
               (__tmp114230
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112758_ _stx112755_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114230
           gxc#current-compile-method
           _self112758_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp114231 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp114231
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args112752_
        (apply make-instance gxc#::generate-runtime::t _$args112752_)))
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
      (lambda (_stx112744_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self112747_
                (let ((__obj114194
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj114194))
               (__tmp114232
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112747_ _stx112744_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114232
           gxc#current-compile-method
           _self112747_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp114235 (list gxc#::generate-runtime::t))
            (__tmp114233
             (let ((__tmp114234
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114234 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp114235
         '()
         __tmp114233
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args112741_
        (apply make-instance gxc#::generate-runtime-phi::t _$args112741_)))
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
      (lambda (_stx112733_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self112736_
                (let ((__obj114196
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj114196))
               (__tmp114236
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112736_ _stx112733_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114236
           gxc#current-compile-method
           _self112736_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp114237 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp114237
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args112730_
        (apply make-instance gxc#::collect-expression-refs::t _$args112730_)))
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
      (lambda (_g114238_ _table112701112704_ _stx112706_)
        (let ((_table112709_
               (if (let ()
                     (declare (not safe))
                     (eq? _table112701112704_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table112701112704_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self112711_
                  (let ((__obj114198
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114198
                       _table112709_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj114198))
                 (__tmp114239
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112711_ _stx112706_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114239
             gxc#current-compile-method
             _self112711_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys112700112718_ . _args112720_)
        (apply gxc#apply-collect-expression-refs__%
               _keys112700112718_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112700112718_ 'table: absent-value))
               _args112720_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args112702112726_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args112702112726_)))
    (define gxc#::generate-meta::t
      (let ((__tmp114242 (list gxc#::void-expression::t))
            (__tmp114240
             (let ((__tmp114241
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114241 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp114242
         '(state)
         __tmp114240
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args112696_
        (apply make-instance gxc#::generate-meta::t _$args112696_)))
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
      (lambda (_g114243_ _state112667112670_ _stx112672_)
        (let ((_state112675_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112667112670_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112667112670_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self112677_
                  (let ((__obj114200
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114200
                       _state112675_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj114200))
                 (__tmp114244
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112677_ _stx112672_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114244
             gxc#current-compile-method
             _self112677_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys112666112684_ . _args112686_)
        (apply gxc#apply-generate-meta__%
               _keys112666112684_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112666112684_ 'state: absent-value))
               _args112686_)))
    (define gxc#apply-generate-meta
      (lambda _args112668112692_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args112668112692_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp114247 (list))
            (__tmp114245
             (let ((__tmp114246
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114246 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp114247
         '(state)
         __tmp114245
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args112662_
        (apply make-instance gxc#::generate-meta-phi::t _$args112662_)))
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
      (lambda (_g114248_ _state112633112636_ _stx112638_)
        (let ((_state112641_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112633112636_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112633112636_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self112643_
                  (let ((__obj114202
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114202
                       _state112641_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj114202))
                 (__tmp114249
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112643_ _stx112638_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114249
             gxc#current-compile-method
             _self112643_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys112632112650_ . _args112652_)
        (apply gxc#apply-generate-meta-phi__%
               _keys112632112650_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112632112650_ 'state: absent-value))
               _args112652_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args112634112658_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args112634112658_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self112561_ _stx112562_)
        (let* ((_g112564112581_
                (lambda (_g112565112578_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112565112578_))))
               (_g112563112628_
                (lambda (_g112565112584_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112565112584_))
                      (let ((_e112570112586_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112565112584_))))
                        (let ((_hd112569112589_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112570112586_)))
                              (_tl112568112591_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112570112586_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112568112591_))
                              (let ((_e112573112594_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112568112591_))))
                                (let ((_hd112572112597_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112573112594_)))
                                      (_tl112571112599_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112573112594_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112571112599_))
                                      (let ((_e112576112602_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112571112599_))))
                                        (let ((_hd112575112605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112576112602_)))
                                              (_tl112574112607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112576112602_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112574112607_))
                                              ((lambda (_L112610_ _L112611_)
                                                 (let ((__tmp114250
                                                        (lambda (_bind112626_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind112626_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind112626_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp114250
                                                    _L112611_)))
                                               _hd112575112605_
                                               _hd112572112597_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112564112581_
                                                 _g112565112584_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112564112581_ _g112565112584_)))))
                              (let ()
                                (declare (not safe))
                                (_g112564112581_ _g112565112584_)))))
                      (let ()
                        (declare (not safe))
                        (_g112564112581_ _g112565112584_))))))
          (declare (not safe))
          (_g112563112628_ _stx112562_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self112493_ _stx112494_)
        (let* ((_g112496112513_
                (lambda (_g112497112510_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112497112510_))))
               (_g112495112558_
                (lambda (_g112497112516_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112497112516_))
                      (let ((_e112502112518_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112497112516_))))
                        (let ((_hd112501112521_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112502112518_)))
                              (_tl112500112523_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112502112518_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112500112523_))
                              (let ((_e112505112526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112500112523_))))
                                (let ((_hd112504112529_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112505112526_)))
                                      (_tl112503112531_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112505112526_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112503112531_))
                                      (let ((_e112508112534_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112503112531_))))
                                        (let ((_hd112507112537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112508112534_)))
                                              (_tl112506112539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112508112534_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112506112539_))
                                              ((lambda (_L112542_ _L112543_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L112543_
                                                    '#t)))
                                               _hd112507112537_
                                               _hd112504112529_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112496112513_
                                                 _g112497112516_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112496112513_ _g112497112516_)))))
                              (let ()
                                (declare (not safe))
                                (_g112496112513_ _g112497112516_)))))
                      (let ()
                        (declare (not safe))
                        (_g112496112513_ _g112497112516_))))))
          (declare (not safe))
          (_g112495112558_ _stx112494_))))
    (define gxc#lift-modules-module%
      (lambda (_self112435_ _stx112436_)
        (let* ((_g112438112452_
                (lambda (_g112439112449_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112439112449_))))
               (_g112437112490_
                (lambda (_g112439112455_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112439112455_))
                      (let ((_e112444112457_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112439112455_))))
                        (let ((_hd112443112460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112444112457_)))
                              (_tl112442112462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112444112457_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112442112462_))
                              (let ((_e112447112465_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112442112462_))))
                                (let ((_hd112446112468_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112447112465_)))
                                      (_tl112445112470_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112447112465_))))
                                  ((lambda (_L112473_ _L112474_)
                                     (let ((_ctx112487_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L112474_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self112435_ 'modules))
                                        (let ((__tmp114251
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self112435_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx112487_ __tmp114251)))
                                       (let ((__tmp114252
                                              (lambda ()
                                                (let ((__tmp114253
                                                       (##structure-ref
                                                        _ctx112487_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self112435_
                                                   __tmp114253)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp114252
                                          gx#current-expander-context
                                          _ctx112487_))))
                                   _tl112445112470_
                                   _hd112446112468_)))
                              (let ()
                                (declare (not safe))
                                (_g112438112452_ _g112439112455_)))))
                      (let ()
                        (declare (not safe))
                        (_g112438112452_ _g112439112455_))))))
          (declare (not safe))
          (_g112437112490_ _stx112436_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls112391112393_ (gxc#current-compile-decls)))
          (if _decls112391112393_
              (let ((_decls112396_ _decls112391112393_))
                (let _lp112398_ ((_rest112400_ _decls112396_))
                  (let* ((_rest112401112409_ _rest112400_)
                         (_else112403112417_ (lambda () '#f))
                         (_K112405112423_
                          (lambda (_decls112420_ _decl112421_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl112421_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl112421_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp112398_ _decls112420_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest112401112409_))
                        (let ((_hd112406112426_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest112401112409_)))
                              (_tl112407112428_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest112401112409_))))
                          (let* ((_decl112431_ _hd112406112426_)
                                 (_decls112433_ _tl112407112428_))
                            (declare (not safe))
                            (_K112405112423_ _decls112433_ _decl112431_)))
                        (let () (declare (not safe)) (_else112403112417_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id112385_ _syntax?112386_)
        (let ((_eid112388_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id112385_))
                '1
                gx#binding::t
                '#f))
              (_ht112389_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid112388_)
              '#!void
              (let ((__tmp114254
                     (let ((__tmp114255
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid112388_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp114255 _syntax?112386_))))
                (declare (not safe))
                (hash-put! _ht112389_ _eid112388_ __tmp114254))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1112378_ _id2112379_)
        (letrec ((_symbol-e112381_
                  (lambda (_id112383_)
                    (if (let () (declare (not safe)) (symbol? _id112383_))
                        _id112383_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id112383_))))))
          (let ((__tmp114257
                 (let () (declare (not safe)) (_symbol-e112381_ _id1112378_)))
                (__tmp114256
                 (let () (declare (not safe)) (_symbol-e112381_ _id2112379_))))
            (declare (not safe))
            (eq? __tmp114257 __tmp114256)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id112356_)
        (let ((_$e112358_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id112356_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id112356_))
                   '#f)))
          (if _$e112358_
              ((lambda (_bind112361_)
                 (let ((_eid112363_
                        (##structure-ref _bind112361_ '1 gx#binding::t '#f))
                       (_ht112364_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid112363_)
                       _eid112363_
                       (let ((_$e112366_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht112364_ _eid112363_))))
                         (if _$e112366_
                             (values _$e112366_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind112361_
                                    'gx#local-binding::t))
                                 (let ((_gid112369_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid112363_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht112364_
                                      _eid112363_
                                      _gid112369_))
                                   _gid112369_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind112361_
                                        'gx#module-binding::t))
                                     (let ((_gid112376_
                                            (let ((_$e112371_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind112361_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e112371_
                                                  ((lambda (_ns112374_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns112374_
                                                        '"#"
                                                        _eid112363_)))
                                                   _$e112371_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid112363_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht112364_
                                          _eid112363_
                                          _gid112376_))
                                       _gid112376_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id112356_
                                        _eid112363_
                                        _bind112361_)))))))))
               _$e112358_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id112356_)))
                  (let () (declare (not safe)) (gx#stx-e _id112356_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id112356_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id112354_)
        (if (let () (declare (not safe)) (gx#identifier? _id112354_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id112354_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym112334_ _quote?112335_)
        (let* ((_ht112337_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e112339_
                (let ()
                  (declare (not safe))
                  (hash-get _ht112337_ _sym112334_))))
          (if _$e112339_
              (values _$e112339_)
              (let ((_g112342_
                     (if _quote?112335_
                         (let ((__tmp114258 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym112334_
                            '"__"
                            __tmp114258))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym112334_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht112337_ _sym112334_ _g112342_))
                _g112342_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym112347_)
        (let ((_quote?112349_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym112347_
           _quote?112349_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g114260_
        (let ((_g114259_ (let () (declare (not safe)) (##length _g114260_))))
          (cond ((let () (declare (not safe)) (##fx= _g114259_ 1))
                 (apply (lambda (_sym112347_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym112347_)))
                        _g114260_))
                ((let () (declare (not safe)) (##fx= _g114259_ 2))
                 (apply (lambda (_sym112351_ _quote?112352_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym112351_
                             _quote?112352_)))
                        _g114260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g114260_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id112331_)
        (let ((__tmp114261
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id112331_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp114261))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key112291_)
        (if (interned-symbol? _key112291_)
            _key112291_
            (if (uninterned-symbol? _key112291_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key112291_))
                (let* ((_key112292112299_ _key112291_)
                       (_E112294112303_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key112292112299_))))
                       (_K112295112319_
                        (lambda (_mark112306_ _eid112307_)
                          (let ((_$e112309_
                                 (##structure-ref
                                  _mark112306_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e112309_
                                ((lambda (_ht112312_)
                                   (let ((_$e112314_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht112312_
                                             _eid112307_))))
                                     (if _$e112314_
                                         ((lambda (_id112317_)
                                            (if (interned-symbol? _id112317_)
                                                _id112317_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id112317_))))
                                          _$e112314_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid112307_)))))
                                 _$e112309_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid112307_)))))))
                  (if (let () (declare (not safe)) (##pair? _key112292112299_))
                      (let ((_hd112296112322_
                             (let ()
                               (declare (not safe))
                               (##car _key112292112299_)))
                            (_tl112297112324_
                             (let ()
                               (declare (not safe))
                               (##cdr _key112292112299_))))
                        (let* ((_eid112327_ _hd112296112322_)
                               (_mark112329_ _tl112297112324_))
                          (declare (not safe))
                          (_K112295112319_ _mark112329_ _eid112327_)))
                      (let () (declare (not safe)) (_E112294112303_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top112278_)
        (if _top112278_
            (let ((_ns112280_
                   (##structure-ref
                    (let ((__tmp114263 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp114263))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi112281_ (gx#current-expander-phi)))
              (if _ns112280_
                  (if (fxpositive? _phi112281_)
                      (let ((__tmp114269 (number->string _phi112281_))
                            (__tmp114268 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns112280_
                         '"["
                         __tmp114269
                         '"]#_"
                         __tmp114268
                         '"_"))
                      (let ((__tmp114267 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns112280_ '"#_" __tmp114267 '"_")))
                  (if (fxpositive? _phi112281_)
                      (let ((__tmp114266 (number->string _phi112281_))
                            (__tmp114265 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp114266
                         '"]#_"
                         __tmp114265
                         '"_"))
                      (let ((__tmp114264 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp114264 '"_")))))
            (let ((__tmp114262 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp114262 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top112287_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top112287_))))
    (define gxc#generate-runtime-temporary
      (lambda _g114271_
        (let ((_g114270_ (let () (declare (not safe)) (##length _g114271_))))
          (cond ((let () (declare (not safe)) (##fx= _g114270_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g114271_))
                ((let () (declare (not safe)) (##fx= _g114270_ 1))
                 (apply (lambda (_top112289_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top112289_)))
                        _g114271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g114271_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self112274_ _stx112275_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self112121_ _stx112122_)
        (letrec ((_simplify112124_
                  (lambda (_body112172_)
                    (let _lp112174_ ((_rest112176_ _body112172_)
                                     (_r112177_ '()))
                      (let* ((_rest112178112186_ _rest112176_)
                             (_else112180112194_
                              (lambda () (reverse _r112177_)))
                             (_K112182112262_
                              (lambda (_rest112197_ _hd112198_)
                                (let* ((_hd112199112215_ _hd112198_)
                                       (_else112203112223_
                                        (lambda ()
                                          (let ((__tmp114272
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd112198_
                                                         _r112177_))))
                                            (declare (not safe))
                                            (_lp112174_
                                             _rest112197_
                                             __tmp114272)))))
                                  (let ((_K112211112252_
                                         (lambda (_exprs112250_)
                                           (let ((__tmp114273
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest112197_
                                                            _exprs112250_))))
                                             (declare (not safe))
                                             (_lp112174_
                                              __tmp114273
                                              _r112177_))))
                                        (_K112206112236_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112197_))
                                               (let ((__tmp114274
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112198_
                                                              _r112177_))))
                                                 (declare (not safe))
                                                 (_lp112174_
                                                  _rest112197_
                                                  __tmp114274))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112174_
                                                  _rest112197_
                                                  _r112177_)))))
                                        (_K112205112228_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112197_))
                                               (let ((__tmp114275
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112198_
                                                              _r112177_))))
                                                 (declare (not safe))
                                                 (_lp112174_
                                                  _rest112197_
                                                  __tmp114275))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112174_
                                                  _rest112197_
                                                  _r112177_))))))
                                    (let ((_try-match112202112231_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd112199112215_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K112205112228_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else112203112223_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd112199112215_))
                                          (let ((_tl112213112257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd112199112215_)))
                                                (_hd112212112255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd112199112215_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd112212112255_
                                                         'begin))
                                                (let ((_exprs112260_
                                                       _tl112213112257_))
                                                  (declare (not safe))
                                                  (_K112211112252_
                                                   _exprs112260_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd112212112255_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl112213112257_))
                                                        (let ((_tl112210112244_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl112213112257_))))
                  (if (let () (declare (not safe)) (##null? _tl112210112244_))
                      (let () (declare (not safe)) (_K112206112236_))
                      (let () (declare (not safe)) (_try-match112202112231_))))
                (let () (declare (not safe)) (_try-match112202112231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match112202112231_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match112202112231_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest112178112186_))
                            (let ((_hd112183112265_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest112178112186_)))
                                  (_tl112184112267_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest112178112186_))))
                              (let* ((_hd112270_ _hd112183112265_)
                                     (_rest112272_ _tl112184112267_))
                                (declare (not safe))
                                (_K112182112262_ _rest112272_ _hd112270_)))
                            (let ()
                              (declare (not safe))
                              (_else112180112194_))))))))
          (let* ((_g112126112136_
                  (lambda (_g112127112133_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g112127112133_))))
                 (_g112125112169_
                  (lambda (_g112127112139_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g112127112139_))
                        (let ((_e112131112141_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g112127112139_))))
                          (let ((_hd112130112144_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112131112141_)))
                                (_tl112129112146_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112131112141_))))
                            ((lambda (_L112149_)
                               (let* ((_body112164_
                                       (map (lambda (_g112159112161_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self112121_
                                                 _g112159112161_)))
                                            _L112149_))
                                      (_body112166_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify112124_ _body112164_))))
                                 (if (fx= (length _body112166_) '1)
                                     (car _body112166_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body112166_)))))
                             _tl112129112146_)))
                        (let ()
                          (declare (not safe))
                          (_g112126112136_ _g112127112139_))))))
            (declare (not safe))
            (_g112125112169_ _stx112122_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self112082_ _stx112083_)
        (let* ((_g112085112095_
                (lambda (_g112086112092_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112086112092_))))
               (_g112084112118_
                (lambda (_g112086112098_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112086112098_))
                      (let ((_e112090112100_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112086112098_))))
                        (let ((_hd112089112103_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112090112100_)))
                              (_tl112088112105_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112090112100_))))
                          ((lambda (_L112108_)
                             (let ((__tmp114276
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L112108_))))
                               (declare (not safe))
                               (cons 'begin __tmp114276)))
                           _tl112088112105_)))
                      (let ()
                        (declare (not safe))
                        (_g112085112095_ _g112086112098_))))))
          (declare (not safe))
          (_g112084112118_ _stx112083_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self111846_ _stx111847_)
        (let* ((___stx112874112875_ _stx111847_)
               (_g111851111903_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112874112875_)))))
          (let ((___kont112876112877_
                 (lambda (_L112064_ _L112065_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111846_ _L112064_))))
                (___kont112878112879_
                 (lambda (_L112012_ _L112013_ _L112014_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111846_ _L112012_))))
                (___kont112882112883_
                 (lambda (_L111932_ _L111933_)
                   (let ((_decls111948_ (map gx#syntax->datum _L111933_)))
                     (let ((__tmp114279
                            (lambda ()
                              (let ((__tmp114280
                                     (let ((__tmp114283
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls111948_)))
                                           (__tmp114281
                                            (let ((__tmp114282
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self111846_
                                                      _L111932_))))
                                              (declare (not safe))
                                              (cons __tmp114282 '()))))
                                       (declare (not safe))
                                       (cons __tmp114283 __tmp114281))))
                                (declare (not safe))
                                (cons 'begin __tmp114280))))
                           (__tmp114277
                            (let ((__tmp114278 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp114278 _decls111948_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp114279
                        gxc#current-compile-decls
                        __tmp114277))))))
            (let* ((___match112929112930_
                    (lambda (_e111869111956_
                             _hd111868111959_
                             _tl111867111961_
                             _e111872111964_
                             _hd111871111967_
                             _tl111870111969_
                             _e111875111972_
                             _hd111874111975_
                             _tl111873111977_
                             ___splice112880112881_
                             _target111876111980_
                             _tl111878111982_)
                      (letrec ((_loop111879111985_
                                (lambda (_hd111877111988_ _param111883111990_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111877111988_))
                                      (let ((_e111880111993_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111877111988_))))
                                        (let ((_lp-tl111882111998_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111880111993_)))
                                              (_lp-hd111881111996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111880111993_))))
                                          (let ((__tmp114285
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd111881111996_
                                                         _param111883111990_))))
                                            (declare (not safe))
                                            (_loop111879111985_
                                             _lp-tl111882111998_
                                             __tmp114285))))
                                      (let ((_param111884112001_
                                             (reverse _param111883111990_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl111870111969_))
                                            (let ((_e111887112004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl111870111969_))))
                                              (let ((_tl111885112009_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e111887112004_)))
                                                    (_hd111886112007_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e111887112004_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl111885112009_))
                                                    (let ((_L112012_
                                                           _hd111886112007_)
                                                          (_L112013_
                                                           _param111884112001_)
                                                          (_L112014_
                                                           _hd111874111975_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L112014_))
                       (let ((__tmp114284
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L112014_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp114284)))
                  (___kont112878112879_ _L112012_ _L112013_ _L112014_)
                  (___kont112882112883_ _hd111886112007_ _hd111871111967_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g111851111903_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g111851111903_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop111879111985_ _target111876111980_ '())))))
                   (___match112903112904_
                    (lambda (_e111857112040_
                             _hd111856112043_
                             _tl111855112045_
                             _e111860112048_
                             _hd111859112051_
                             _tl111858112053_
                             _e111863112056_
                             _hd111862112059_
                             _tl111861112061_)
                      (let ((_L112064_ _hd111862112059_)
                            (_L112065_ _hd111859112051_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L112065_))
                            (___kont112876112877_ _L112064_ _L112065_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd111859112051_))
                                (let ((_e111875111972_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd111859112051_))))
                                  (let ((_tl111873111977_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e111875111972_)))
                                        (_hd111874111975_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e111875111972_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl111873111977_))
                                        (let ((___splice112880112881_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl111873111977_
                                                  '0))))
                                          (let ((_tl111878111982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112880112881_
                                                    '1)))
                                                (_target111876111980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112880112881_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl111878111982_))
                                                (___match112929112930_
                                                 _e111857112040_
                                                 _hd111856112043_
                                                 _tl111855112045_
                                                 _e111860112048_
                                                 _hd111859112051_
                                                 _tl111858112053_
                                                 _e111875111972_
                                                 _hd111874111975_
                                                 _tl111873111977_
                                                 ___splice112880112881_
                                                 _target111876111980_
                                                 _tl111878111982_)
                                                (___kont112882112883_
                                                 _hd111862112059_
                                                 _hd111859112051_))))
                                        (___kont112882112883_
                                         _hd111862112059_
                                         _hd111859112051_))))
                                (___kont112882112883_
                                 _hd111862112059_
                                 _hd111859112051_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112874112875_))
                  (let ((_e111857112040_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112874112875_))))
                    (let ((_tl111855112045_
                           (let ()
                             (declare (not safe))
                             (##cdr _e111857112040_)))
                          (_hd111856112043_
                           (let ()
                             (declare (not safe))
                             (##car _e111857112040_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl111855112045_))
                          (let ((_e111860112048_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl111855112045_))))
                            (let ((_tl111858112053_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e111860112048_)))
                                  (_hd111859112051_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e111860112048_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl111858112053_))
                                  (let ((_e111863112056_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl111858112053_))))
                                    (let ((_tl111861112061_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e111863112056_)))
                                          (_hd111862112059_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e111863112056_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl111861112061_))
                                          (___match112903112904_
                                           _e111857112040_
                                           _hd111856112043_
                                           _tl111855112045_
                                           _e111860112048_
                                           _hd111859112051_
                                           _tl111858112053_
                                           _e111863112056_
                                           _hd111862112059_
                                           _tl111861112061_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd111859112051_))
                                              (let ((_e111875111972_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd111859112051_))))
                                                (let ((_tl111873111977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e111875111972_)))
                                                      (_hd111874111975_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e111875111972_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl111873111977_))
                                                      (let ((___splice112880112881_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl111873111977_ '0))))
                (let ((_tl111878111982_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112880112881_ '1)))
                      (_target111876111980_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112880112881_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl111878111982_))
                      (___match112929112930_
                       _e111857112040_
                       _hd111856112043_
                       _tl111855112045_
                       _e111860112048_
                       _hd111859112051_
                       _tl111858112053_
                       _e111875111972_
                       _hd111874111975_
                       _tl111873111977_
                       ___splice112880112881_
                       _target111876111980_
                       _tl111878111982_)
                      (let () (declare (not safe)) (_g111851111903_)))))
              (let () (declare (not safe)) (_g111851111903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g111851111903_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111859112051_))
                                      (let ((_e111875111972_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111859112051_))))
                                        (let ((_tl111873111977_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111875111972_)))
                                              (_hd111874111975_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111875111972_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl111873111977_))
                                              (let ((___splice112880112881_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl111873111977_
                                                        '0))))
                                                (let ((_tl111878111982_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112880112881_
                                                          '1)))
                                                      (_target111876111980_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112880112881_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl111878111982_))
                                                      (___match112929112930_
                                                       _e111857112040_
                                                       _hd111856112043_
                                                       _tl111855112045_
                                                       _e111860112048_
                                                       _hd111859112051_
                                                       _tl111858112053_
                                                       _e111875111972_
                                                       _hd111874111975_
                                                       _tl111873111977_
                                                       ___splice112880112881_
                                                       _target111876111980_
                                                       _tl111878111982_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g111851111903_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g111851111903_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111851111903_))))))
                          (let () (declare (not safe)) (_g111851111903_)))))
                  (let () (declare (not safe)) (_g111851111903_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self111805_ _stx111806_)
        (let* ((_g111808111818_
                (lambda (_g111809111815_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111809111815_))))
               (_g111807111843_
                (lambda (_g111809111821_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111809111821_))
                      (let ((_e111813111823_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111809111821_))))
                        (let ((_hd111812111826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111813111823_)))
                              (_tl111811111828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111813111823_))))
                          ((lambda (_L111831_)
                             (let ((_decls111841_
                                    (map gx#syntax->datum _L111831_)))
                               (gxc#current-compile-decls
                                (let ((__tmp114286
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp114286 _decls111841_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls111841_))))
                           _tl111811111828_)))
                      (let ()
                        (declare (not safe))
                        (_g111808111818_ _g111809111821_))))))
          (declare (not safe))
          (_g111807111843_ _stx111806_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self111551_ _stx111552_)
        (let* ((_g111554111571_
                (lambda (_g111555111568_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111555111568_))))
               (_g111553111802_
                (lambda (_g111555111574_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111555111574_))
                      (let ((_e111560111576_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111555111574_))))
                        (let ((_hd111559111579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111560111576_)))
                              (_tl111558111581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111560111576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111558111581_))
                              (let ((_e111563111584_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111558111581_))))
                                (let ((_hd111562111587_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111563111584_)))
                                      (_tl111561111589_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111563111584_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111561111589_))
                                      (let ((_e111566111592_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111561111589_))))
                                        (let ((_hd111565111595_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111566111592_)))
                                              (_tl111564111597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111566111592_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111564111597_))
                                              ((lambda (_L111600_ _L111601_)
                                                 (let* ((___stx112982112983_
                                                         _L111601_)
                                                        (_g111618111632_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx112982112983_)))))
                                                   (let ((___kont112984112985_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self111551_
                                                               _L111600_))))
                                                         (___kont112986112987_
                                                          (lambda (_L111764_)
                                                            (let ((_eid111773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L111764_))))
                      (let ((_lambda-expr111774111776_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L111600_))))
                        (if _lambda-expr111774111776_
                            (let* ((_lambda-expr111779_
                                    _lambda-expr111774111776_)
                                   (__tmp114287
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp114287
                               _lambda-expr111779_
                               _eid111773_))
                            '#f))
                      (let ((__tmp114288
                             (let ((__tmp114289
                                    (let ((__tmp114290
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self111551_
                                              _L111600_))))
                                      (declare (not safe))
                                      (cons __tmp114290 '()))))
                               (declare (not safe))
                               (cons _eid111773_ __tmp114289))))
                        (declare (not safe))
                        (cons 'define __tmp114288)))))
                 (___kont112988112989_
                  (lambda ()
                    (let* ((_tmp111639_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body111748_
                            (let _lp111641_ ((_rest111643_ _L111601_)
                                             (_k111644_ '0)
                                             (_r111645_ '()))
                              (let* ((___stx112952112953_ _rest111643_)
                                     (_g111650111667_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx112952112953_)))))
                                (let ((___kont112954112955_
                                       (lambda (_L111735_)
                                         (let ((__tmp114291
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111644_ '1))))
                                           (declare (not safe))
                                           (_lp111641_
                                            _L111735_
                                            __tmp114291
                                            _r111645_))))
                                      (___kont112956112957_
                                       (lambda (_L111708_ _L111709_)
                                         (let ((__tmp114298
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111644_ '1)))
                                               (__tmp114292
                                                (let ((__tmp114293
                                                       (let ((__tmp114294
                                                              (let ((__tmp114297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111709_)))
                            (__tmp114295
                             (let ((__tmp114296
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp111639_
                                       _k111644_
                                       _L111708_))))
                               (declare (not safe))
                               (cons __tmp114296 '()))))
                        (declare (not safe))
                        (cons __tmp114297 __tmp114295))))
                 (declare (not safe))
                 (cons 'define __tmp114294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114293
                                                        _r111645_))))
                                           (declare (not safe))
                                           (_lp111641_
                                            _L111708_
                                            __tmp114298
                                            __tmp114292))))
                                      (___kont112958112959_
                                       (lambda (_L111679_)
                                         (let ((__tmp114299
                                                (let ((__tmp114300
                                                       (let ((__tmp114301
                                                              (let ((__tmp114304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111679_)))
                            (__tmp114302
                             (let ((__tmp114303
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp111639_
                                       _k111644_))))
                               (declare (not safe))
                               (cons __tmp114303 '()))))
                        (declare (not safe))
                        (cons __tmp114304 __tmp114302))))
                 (declare (not safe))
                 (cons 'define __tmp114301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114300 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp114299
                                                   _r111645_))))
                                      (___kont112960112961_
                                       (lambda () (reverse _r111645_))))
                                  (let ((_g111648111695_
                                         (lambda ()
                                           (let ((_L111679_
                                                  ___stx112952112953_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L111679_))
                                                 (___kont112958112959_
                                                  _L111679_)
                                                 (___kont112960112961_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112952112953_))
                                        (let ((_e111655111724_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112952112953_))))
                                          (let ((_tl111653111729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e111655111724_)))
                                                (_hd111654111727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e111655111724_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd111654111727_))
                                                (let ((_e111656111732_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd111654111727_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e111656111732_
                                                                '#f))
                                                      (___kont112954112955_
                                                       _tl111653111729_)
                                                      (___kont112956112957_
                                                       _tl111653111729_
                                                       _hd111654111727_)))
                                                (___kont112956112957_
                                                 _tl111653111729_
                                                 _hd111654111727_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g111648111695_)))))))))
                      (let ((__tmp114305
                             (let ((__tmp114308
                                    (let ((__tmp114309
                                           (let ((__tmp114310
                                                  (let ((__tmp114311
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self111551_
                                                            _L111600_))))
                                                    (declare (not safe))
                                                    (cons __tmp114311 '()))))
                                             (declare (not safe))
                                             (cons _tmp111639_ __tmp114310))))
                                      (declare (not safe))
                                      (cons 'define __tmp114309)))
                                   (__tmp114306
                                    (let ((__tmp114307
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp111639_
                                              _L111601_
                                              _L111600_))))
                                      (declare (not safe))
                                      (cons __tmp114307 _body111748_))))
                               (declare (not safe))
                               (cons __tmp114308 __tmp114306))))
                        (declare (not safe))
                        (cons 'begin __tmp114305))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx112982112983_))
                                                         (let ((_e111622111786_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx112982112983_))))
                   (let ((_tl111620111791_
                          (let ()
                            (declare (not safe))
                            (##cdr _e111622111786_)))
                         (_hd111621111789_
                          (let ()
                            (declare (not safe))
                            (##car _e111622111786_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd111621111789_))
                         (let ((_e111623111794_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd111621111789_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e111623111794_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111620111791_))
                                   (___kont112984112985_)
                                   (___kont112988112989_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111620111791_))
                                   (___kont112986112987_ _hd111621111789_)
                                   (___kont112988112989_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl111620111791_))
                             (___kont112986112987_ _hd111621111789_)
                             (___kont112988112989_)))))
                 (___kont112988112989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd111565111595_
                                               _hd111562111587_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111554111571_
                                                 _g111555111574_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111554111571_ _g111555111574_)))))
                              (let ()
                                (declare (not safe))
                                (_g111554111571_ _g111555111574_)))))
                      (let ()
                        (declare (not safe))
                        (_g111554111571_ _g111555111574_))))))
          (declare (not safe))
          (_g111553111802_ _stx111552_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals111527_ _hd111528_ _expr111529_)
        (let ((_$e111531_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr111529_))))
          (if _$e111531_
              ((lambda (_count111534_)
                 (let ((_len111536_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd111528_)))
                       (_cmp111537_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd111528_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len111536_ '0)
                           (_cmp111537_ _count111534_ _len111536_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr111529_
                          _hd111528_)))))
               _$e111531_)
              (let* ((_len111542_
                      (let () (declare (not safe)) (gx#stx-length _hd111528_)))
                     (_cmp111544_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd111528_))
                          '##fx=
                          '##fx>=))
                     (_errmsg111546_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd111528_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len111542_)
                       '" values"))
                     (_count111548_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp114335
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd111528_))))
                           (declare (not safe))
                           (not __tmp114335))
                         (fx= _len111542_ '0))
                    '#!void
                    (let ((__tmp114312
                           (let ((__tmp114331
                                  (let ((__tmp114332
                                         (let ((__tmp114333
                                                (let ((__tmp114334
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals111527_))))
                                                  (declare (not safe))
                                                  (cons __tmp114334 '()))))
                                           (declare (not safe))
                                           (cons _count111548_ __tmp114333))))
                                    (declare (not safe))
                                    (cons __tmp114332 '())))
                                 (__tmp114313
                                  (let ((__tmp114314
                                         (let ((__tmp114315
                                                (let ((__tmp114320
                                                       (let ((__tmp114321
                                                              (let ((__tmp114322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp114329
                                        (let ((__tmp114330
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len111542_ '()))))
                                          (declare (not safe))
                                          (cons _count111548_ __tmp114330))))
                                   (declare (not safe))
                                   (cons _cmp111544_ __tmp114329))
                                 (let ((__tmp114323
                                        (let ((__tmp114324
                                               (let ((__tmp114325
                                                      (let ((__tmp114326
                                                             (let ((__tmp114327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114328
                                   (let ()
                                     (declare (not safe))
                                     (cons _len111542_ '()))))
                              (declare (not safe))
                              (cons _count111548_ __tmp114328))))
                       (declare (not safe))
                       (cons _cmp111544_ __tmp114327))))
                (declare (not safe))
                (cons __tmp114326 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114325))))
                                          (declare (not safe))
                                          (cons '() __tmp114324))))
                                   (declare (not safe))
                                   (cons 'let __tmp114323)))))
                        (declare (not safe))
                        (cons __tmp114322 '()))))
                 (declare (not safe))
                 (cons 'not __tmp114321)))
              (__tmp114316
               (let ((__tmp114317
                      (let ((__tmp114318
                             (let ((__tmp114319
                                    (let ()
                                      (declare (not safe))
                                      (cons _count111548_ '()))))
                               (declare (not safe))
                               (cons _errmsg111546_ __tmp114319))))
                        (declare (not safe))
                        (cons 'error __tmp114318))))
                 (declare (not safe))
                 (cons __tmp114317 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114320
                                                        __tmp114316))))
                                           (declare (not safe))
                                           (cons 'if __tmp114315))))
                                    (declare (not safe))
                                    (cons __tmp114314 '()))))
                             (declare (not safe))
                             (cons __tmp114331 __tmp114313))))
                      (declare (not safe))
                      (cons 'let __tmp114312))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var111522_)
        (letrec ((_generate-inline111524_
                  (lambda ()
                    (let ((__tmp114336
                           (let ((__tmp114341
                                  (let ((__tmp114342
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111522_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114342)))
                                 (__tmp114337
                                  (let ((__tmp114339
                                         (let ((__tmp114340
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var111522_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp114340)))
                                        (__tmp114338
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp114339 __tmp114338))))
                             (declare (not safe))
                             (cons __tmp114341 __tmp114337))))
                      (declare (not safe))
                      (cons 'if __tmp114336)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111524_))
              (let ((__tmp114343
                     (let ((__tmp114344
                            (let ((__tmp114345
                                   (let ((__tmp114346
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111524_))))
                                     (declare (not safe))
                                     (cons __tmp114346 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114345))))
                       (declare (not safe))
                       (cons '() __tmp114344))))
                (declare (not safe))
                (cons 'let __tmp114343))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var111515_ _i111516_ _rest111517_)
        (letrec ((_generate-inline111519_
                  (lambda ()
                    (if (and (fx= _i111516_ '0)
                             (let ((__tmp114357
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest111517_))))
                               (declare (not safe))
                               (not __tmp114357)))
                        (let ((__tmp114349
                               (let ((__tmp114355
                                      (let ((__tmp114356
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111515_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp114356)))
                                     (__tmp114350
                                      (let ((__tmp114352
                                             (let ((__tmp114353
                                                    (let ((__tmp114354
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var111515_
                                                            __tmp114354))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp114353)))
                                            (__tmp114351
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111515_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114352 __tmp114351))))
                                 (declare (not safe))
                                 (cons __tmp114355 __tmp114350))))
                          (declare (not safe))
                          (cons 'if __tmp114349))
                        (let ((__tmp114347
                               (let ((__tmp114348
                                      (let ()
                                        (declare (not safe))
                                        (cons _i111516_ '()))))
                                 (declare (not safe))
                                 (cons _var111515_ __tmp114348))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp114347))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111519_))
              (let ((__tmp114358
                     (let ((__tmp114359
                            (let ((__tmp114360
                                   (let ((__tmp114361
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111519_))))
                                     (declare (not safe))
                                     (cons __tmp114361 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114360))))
                       (declare (not safe))
                       (cons '() __tmp114359))))
                (declare (not safe))
                (cons 'let __tmp114358))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var111512_ _i111513_)
        (if (fx= _i111513_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp114409
                       (let ((__tmp114416
                              (let ((__tmp114417
                                     (let ()
                                       (declare (not safe))
                                       (cons _var111512_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp114417)))
                             (__tmp114410
                              (let ((__tmp114414
                                     (let ((__tmp114415
                                            (let ()
                                              (declare (not safe))
                                              (cons _var111512_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp114415)))
                                    (__tmp114411
                                     (let ((__tmp114412
                                            (let ((__tmp114413
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var111512_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp114413))))
                                       (declare (not safe))
                                       (cons __tmp114412 '()))))
                                (declare (not safe))
                                (cons __tmp114414 __tmp114411))))
                         (declare (not safe))
                         (cons __tmp114416 __tmp114410))))
                  (declare (not safe))
                  (cons 'if __tmp114409))
                (let ((__tmp114396
                       (let ((__tmp114397
                              (let ((__tmp114398
                                     (let ((__tmp114399
                                            (let ((__tmp114400
                                                   (let ((__tmp114407
                                                          (let ((__tmp114408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var111512_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp114408)))
                 (__tmp114401
                  (let ((__tmp114405
                         (let ((__tmp114406
                                (let ()
                                  (declare (not safe))
                                  (cons _var111512_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp114406)))
                        (__tmp114402
                         (let ((__tmp114403
                                (let ((__tmp114404
                                       (let ()
                                         (declare (not safe))
                                         (cons _var111512_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp114404))))
                           (declare (not safe))
                           (cons __tmp114403 '()))))
                    (declare (not safe))
                    (cons __tmp114405 __tmp114402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114407
                                                           __tmp114401))))
                                              (declare (not safe))
                                              (cons 'if __tmp114400))))
                                       (declare (not safe))
                                       (cons __tmp114399 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp114398))))
                         (declare (not safe))
                         (cons '() __tmp114397))))
                  (declare (not safe))
                  (cons 'let __tmp114396)))
            (if (fx= _i111513_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114387
                           (let ((__tmp114394
                                  (let ((__tmp114395
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111512_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114395)))
                                 (__tmp114388
                                  (let ((__tmp114390
                                         (let ((__tmp114391
                                                (let ((__tmp114392
                                                       (let ((__tmp114393
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var111512_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp114393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114392 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp114391)))
                                        (__tmp114389
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp114390 __tmp114389))))
                             (declare (not safe))
                             (cons __tmp114394 __tmp114388))))
                      (declare (not safe))
                      (cons 'if __tmp114387))
                    (let ((__tmp114374
                           (let ((__tmp114375
                                  (let ((__tmp114376
                                         (let ((__tmp114377
                                                (let ((__tmp114378
                                                       (let ((__tmp114385
                                                              (let ((__tmp114386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111512_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp114386)))
                     (__tmp114379
                      (let ((__tmp114381
                             (let ((__tmp114382
                                    (let ((__tmp114383
                                           (let ((__tmp114384
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var111512_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp114384))))
                                      (declare (not safe))
                                      (cons __tmp114383 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp114382)))
                            (__tmp114380
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp114381 __tmp114380))))
                 (declare (not safe))
                 (cons __tmp114385 __tmp114379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp114378))))
                                           (declare (not safe))
                                           (cons __tmp114377 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114376))))
                             (declare (not safe))
                             (cons '() __tmp114375))))
                      (declare (not safe))
                      (cons 'let __tmp114374)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114370
                           (let ((__tmp114372
                                  (let ((__tmp114373
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111512_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp114373)))
                                 (__tmp114371
                                  (let ()
                                    (declare (not safe))
                                    (cons _i111513_ '()))))
                             (declare (not safe))
                             (cons __tmp114372 __tmp114371))))
                      (declare (not safe))
                      (cons '##list-tail __tmp114370))
                    (let ((__tmp114362
                           (let ((__tmp114363
                                  (let ((__tmp114364
                                         (let ((__tmp114365
                                                (let ((__tmp114366
                                                       (let ((__tmp114368
                                                              (let ((__tmp114369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111512_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp114369)))
                     (__tmp114367
                      (let () (declare (not safe)) (cons _i111513_ '()))))
                 (declare (not safe))
                 (cons __tmp114368 __tmp114367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp114366))))
                                           (declare (not safe))
                                           (cons __tmp114365 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114364))))
                             (declare (not safe))
                             (cons '() __tmp114363))))
                      (declare (not safe))
                      (cons 'let __tmp114362)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self111444_ _stx111445_)
        (let* ((_g111447111464_
                (lambda (_g111448111461_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111448111461_))))
               (_g111446111509_
                (lambda (_g111448111467_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111448111467_))
                      (let ((_e111453111469_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111448111467_))))
                        (let ((_hd111452111472_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111453111469_)))
                              (_tl111451111474_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111453111469_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111451111474_))
                              (let ((_e111456111477_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111451111474_))))
                                (let ((_hd111455111480_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111456111477_)))
                                      (_tl111454111482_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111456111477_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111454111482_))
                                      (let ((_e111459111485_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111454111482_))))
                                        (let ((_hd111458111488_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111459111485_)))
                                              (_tl111457111490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111459111485_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111457111490_))
                                              ((lambda (_L111493_ _L111494_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self111444_
                                                    _L111494_
                                                    _L111493_)))
                                               _hd111458111488_
                                               _hd111455111480_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111447111464_
                                                 _g111448111467_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111447111464_ _g111448111467_)))))
                              (let ()
                                (declare (not safe))
                                (_g111447111464_ _g111448111467_)))))
                      (let ()
                        (declare (not safe))
                        (_g111447111464_ _g111448111467_))))))
          (declare (not safe))
          (_g111446111509_ _stx111445_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self111403_ _hd111404_ _body111405_)
        (let* ((_hd111407_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd111404_)))
               (_body111409_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self111403_ _body111405_)))
               (_body111441_
                (let* ((_body111410111418_ _body111409_)
                       (_else111412111426_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body111409_ '()))))
                       (_K111414111431_
                        (lambda (_exprs111429_) _exprs111429_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body111410111418_))
                      (let ((_hd111415111434_
                             (let ()
                               (declare (not safe))
                               (##car _body111410111418_)))
                            (_tl111416111436_
                             (let ()
                               (declare (not safe))
                               (##cdr _body111410111418_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd111415111434_ 'begin))
                            (let ((_exprs111439_ _tl111416111436_))
                              (declare (not safe))
                              (_K111414111431_ _exprs111439_))
                            (let ()
                              (declare (not safe))
                              (_else111412111426_))))
                      (let () (declare (not safe)) (_else111412111426_))))))
          (let ((__tmp114418
                 (let () (declare (not safe)) (cons _hd111407_ _body111441_))))
            (declare (not safe))
            (cons 'lambda __tmp114418)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd111401_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd111401_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self109943_ _stx109944_)
        (letrec ((_dispatch-case?109946_
                  (lambda (_hd110631_ _body110632_)
                    (let* ((_form110634_
                            (let ((__tmp114419
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110632_ '()))))
                              (declare (not safe))
                              (cons _hd110631_ __tmp114419)))
                           (___stx113014113015_ _form110634_)
                           (_g110639110796_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113014113015_)))))
                      (let ((___kont113016113017_
                             (lambda (_L111321_ _L111322_ _L111323_) '#t))
                            (___kont113022113023_
                             (lambda (_L111109_
                                      _L111110_
                                      _L111111_
                                      _L111112_
                                      _L111113_
                                      _L111114_)
                               '#t))
                            (___kont113028113029_
                             (lambda (_L110904_ _L110905_ _L110906_ _L110907_)
                               '#t))
                            (___kont113030113031_ (lambda () '#f)))
                        (let* ((___match113155113156_
                                (lambda (_e110758110808_
                                         _hd110757110811_
                                         _tl110756110813_
                                         _e110761110816_
                                         _hd110760110819_
                                         _tl110759110821_
                                         _e110764110824_
                                         _hd110763110827_
                                         _tl110762110829_
                                         _e110767110832_
                                         _hd110766110835_
                                         _tl110765110837_
                                         _e110770110840_
                                         _hd110769110843_
                                         _tl110768110845_
                                         _e110773110848_
                                         _hd110772110851_
                                         _tl110771110853_
                                         _e110776110856_
                                         _hd110775110859_
                                         _tl110774110861_
                                         _e110779110864_
                                         _hd110778110867_
                                         _tl110777110869_
                                         _e110782110872_
                                         _hd110781110875_
                                         _tl110780110877_
                                         _e110785110880_
                                         _hd110784110883_
                                         _tl110783110885_
                                         _e110788110888_
                                         _hd110787110891_
                                         _tl110786110893_
                                         _e110791110896_
                                         _hd110790110899_
                                         _tl110789110901_)
                                  (let ((_L110904_ _hd110790110899_)
                                        (_L110905_ _hd110781110875_)
                                        (_L110906_ _hd110772110851_)
                                        (_L110907_ _hd110757110811_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L110907_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L110906_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L110907_
                                                _L110904_))
                                             (let ((__tmp114420
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L110905_
                                                       _L110907_))))
                                               (declare (not safe))
                                               (not __tmp114420)))
                                        (___kont113028113029_
                                         _L110904_
                                         _L110905_
                                         _L110906_
                                         _L110907_)
                                        (___kont113030113031_)))))
                               (___match113127113128_
                                (lambda (_e110758110808_
                                         _hd110757110811_
                                         _tl110756110813_
                                         _e110761110816_
                                         _hd110760110819_
                                         _tl110759110821_
                                         _e110764110824_
                                         _hd110763110827_
                                         _tl110762110829_
                                         _e110767110832_
                                         _hd110766110835_
                                         _tl110765110837_
                                         _e110770110840_
                                         _hd110769110843_
                                         _tl110768110845_
                                         _e110773110848_
                                         _hd110772110851_
                                         _tl110771110853_
                                         _e110776110856_
                                         _hd110775110859_
                                         _tl110774110861_
                                         _e110779110864_
                                         _hd110778110867_
                                         _tl110777110869_
                                         _e110782110872_
                                         _hd110781110875_
                                         _tl110780110877_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110774110861_))
                                      (let ((_e110785110880_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110774110861_))))
                                        (let ((_tl110783110885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110785110880_)))
                                              (_hd110784110883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110785110880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110784110883_))
                                              (let ((_e110788110888_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110784110883_))))
                                                (let ((_tl110786110893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110788110888_)))
                                                      (_hd110787110891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110788110888_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd110787110891_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd110787110891_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110786110893_))
                      (let ((_e110791110896_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110786110893_))))
                        (let ((_tl110789110901_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110791110896_)))
                              (_hd110790110899_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110791110896_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110789110901_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl110783110885_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl110759110821_))
                                      (___match113155113156_
                                       _e110758110808_
                                       _hd110757110811_
                                       _tl110756110813_
                                       _e110761110816_
                                       _hd110760110819_
                                       _tl110759110821_
                                       _e110764110824_
                                       _hd110763110827_
                                       _tl110762110829_
                                       _e110767110832_
                                       _hd110766110835_
                                       _tl110765110837_
                                       _e110770110840_
                                       _hd110769110843_
                                       _tl110768110845_
                                       _e110773110848_
                                       _hd110772110851_
                                       _tl110771110853_
                                       _e110776110856_
                                       _hd110775110859_
                                       _tl110774110861_
                                       _e110779110864_
                                       _hd110778110867_
                                       _tl110777110869_
                                       _e110782110872_
                                       _hd110781110875_
                                       _tl110780110877_
                                       _e110785110880_
                                       _hd110784110883_
                                       _tl110783110885_
                                       _e110788110888_
                                       _hd110787110891_
                                       _tl110786110893_
                                       _e110791110896_
                                       _hd110790110899_
                                       _tl110789110901_)
                                      (___kont113030113031_))
                                  (___kont113030113031_))
                              (___kont113030113031_))))
                      (___kont113030113031_))
                  (___kont113030113031_))
              (___kont113030113031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113030113031_))))
                                      (___kont113030113031_))))
                               (___match113057113058_
                                (lambda (_e110694110949_
                                         _hd110693110952_
                                         _tl110692110954_
                                         ___splice113024113025_
                                         _target110695110957_
                                         _tl110697110959_)
                                  (letrec ((_loop110698110962_
                                            (lambda (_hd110696110965_
                                                     _arg110702110967_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110696110965_))
                                                  (let ((_e110699110970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110696110965_))))
                                                    (let ((_lp-tl110701110975_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110699110970_)))
                                                          (_lp-hd110700110973_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110699110970_))))
                                                      (let ((__tmp114435
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110700110973_ _arg110702110967_))))
                (declare (not safe))
                (_loop110698110962_ _lp-tl110701110975_ __tmp114435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110703110978_
                                                         (reverse _arg110702110967_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110692110954_))
                                                        (let ((_e110706110981_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110692110954_))))
                  (let ((_tl110704110986_
                         (let () (declare (not safe)) (##cdr _e110706110981_)))
                        (_hd110705110984_
                         (let ()
                           (declare (not safe))
                           (##car _e110706110981_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110705110984_))
                        (let ((_e110709110989_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110705110984_))))
                          (let ((_tl110707110994_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110709110989_)))
                                (_hd110708110992_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110709110989_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110708110992_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110708110992_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110707110994_))
                                        (let ((_e110712110997_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110707110994_))))
                                          (let ((_tl110710111002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110712110997_)))
                                                (_hd110711111000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110712110997_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110711111000_))
                                                (let ((_e110715111005_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110711111000_))))
                                                  (let ((_tl110713111010_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110715111005_)))
                                                        (_hd110714111008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110715111005_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110714111008_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110714111008_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110713111010_))
                        (let ((_e110718111013_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110713111010_))))
                          (let ((_tl110716111018_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110718111013_)))
                                (_hd110717111016_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110718111013_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110716111018_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110710111002_))
                                    (let ((_e110721111021_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110710111002_))))
                                      (let ((_tl110719111026_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110721111021_)))
                                            (_hd110720111024_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110721111021_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110720111024_))
                                            (let ((_e110724111029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110720111024_))))
                                              (let ((_tl110722111034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110724111029_)))
                                                    (_hd110723111032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110724111029_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110723111032_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110723111032_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110722111034_))
                                                            (let ((_e110727111037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110722111034_))))
                      (let ((_tl110725111042_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110727111037_)))
                            (_hd110726111040_
                             (let ()
                               (declare (not safe))
                               (##car _e110727111037_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110725111042_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl110719111026_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl110719111026_))
                                          '1)
                                    (let ((___splice113026113027_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110719111026_
                                              '1))))
                                      (let ((_tl110730111047_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113026113027_
                                                '1)))
                                            (_target110728111045_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113026113027_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110730111047_))
                                            (let ((_e110739111050_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110730111047_))))
                                              (let ((_tl110737111055_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110739111050_)))
                                                    (_hd110738111053_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110739111050_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd110738111053_))
                                                    (let ((_e110742111058_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd110738111053_))))
                                                      (let ((_tl110740111063_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e110742111058_)))
                    (_hd110741111061_
                     (let () (declare (not safe)) (##car _e110742111058_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd110741111061_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd110741111061_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl110740111063_))
                            (let ((_e110745111066_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl110740111063_))))
                              (let ((_tl110743111071_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110745111066_)))
                                    (_hd110744111069_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110745111066_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl110743111071_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl110737111055_))
                                        (letrec ((_loop110731111074_
                                                  (lambda (_hd110729111077_
                                                           _xarg110735111079_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd110729111077_))
                                                        (let ((_e110732111082_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd110729111077_))))
                  (let ((_lp-tl110734111087_
                         (let () (declare (not safe)) (##cdr _e110732111082_)))
                        (_lp-hd110733111085_
                         (let ()
                           (declare (not safe))
                           (##car _e110732111082_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd110733111085_))
                        (let ((_e110748111090_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd110733111085_))))
                          (let ((_tl110746111095_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110748111090_)))
                                (_hd110747111093_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110748111090_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110747111093_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd110747111093_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110746111095_))
                                        (let ((_e110751111098_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110746111095_))))
                                          (let ((_tl110749111103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110751111098_)))
                                                (_hd110750111101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110751111098_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110749111103_))
                                                (let ((__tmp114434
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd110750111101_
                                                               _xarg110735111079_))))
                                                  (declare (not safe))
                                                  (_loop110731111074_
                                                   _lp-tl110734111087_
                                                   __tmp114434))
                                                (___match113127113128_
                                                 _e110694110949_
                                                 _hd110693110952_
                                                 _tl110692110954_
                                                 _e110706110981_
                                                 _hd110705110984_
                                                 _tl110704110986_
                                                 _e110709110989_
                                                 _hd110708110992_
                                                 _tl110707110994_
                                                 _e110712110997_
                                                 _hd110711111000_
                                                 _tl110710111002_
                                                 _e110715111005_
                                                 _hd110714111008_
                                                 _tl110713111010_
                                                 _e110718111013_
                                                 _hd110717111016_
                                                 _tl110716111018_
                                                 _e110721111021_
                                                 _hd110720111024_
                                                 _tl110719111026_
                                                 _e110724111029_
                                                 _hd110723111032_
                                                 _tl110722111034_
                                                 _e110727111037_
                                                 _hd110726111040_
                                                 _tl110725111042_))))
                                        (___match113127113128_
                                         _e110694110949_
                                         _hd110693110952_
                                         _tl110692110954_
                                         _e110706110981_
                                         _hd110705110984_
                                         _tl110704110986_
                                         _e110709110989_
                                         _hd110708110992_
                                         _tl110707110994_
                                         _e110712110997_
                                         _hd110711111000_
                                         _tl110710111002_
                                         _e110715111005_
                                         _hd110714111008_
                                         _tl110713111010_
                                         _e110718111013_
                                         _hd110717111016_
                                         _tl110716111018_
                                         _e110721111021_
                                         _hd110720111024_
                                         _tl110719111026_
                                         _e110724111029_
                                         _hd110723111032_
                                         _tl110722111034_
                                         _e110727111037_
                                         _hd110726111040_
                                         _tl110725111042_))
                                    (___match113127113128_
                                     _e110694110949_
                                     _hd110693110952_
                                     _tl110692110954_
                                     _e110706110981_
                                     _hd110705110984_
                                     _tl110704110986_
                                     _e110709110989_
                                     _hd110708110992_
                                     _tl110707110994_
                                     _e110712110997_
                                     _hd110711111000_
                                     _tl110710111002_
                                     _e110715111005_
                                     _hd110714111008_
                                     _tl110713111010_
                                     _e110718111013_
                                     _hd110717111016_
                                     _tl110716111018_
                                     _e110721111021_
                                     _hd110720111024_
                                     _tl110719111026_
                                     _e110724111029_
                                     _hd110723111032_
                                     _tl110722111034_
                                     _e110727111037_
                                     _hd110726111040_
                                     _tl110725111042_))
                                (___match113127113128_
                                 _e110694110949_
                                 _hd110693110952_
                                 _tl110692110954_
                                 _e110706110981_
                                 _hd110705110984_
                                 _tl110704110986_
                                 _e110709110989_
                                 _hd110708110992_
                                 _tl110707110994_
                                 _e110712110997_
                                 _hd110711111000_
                                 _tl110710111002_
                                 _e110715111005_
                                 _hd110714111008_
                                 _tl110713111010_
                                 _e110718111013_
                                 _hd110717111016_
                                 _tl110716111018_
                                 _e110721111021_
                                 _hd110720111024_
                                 _tl110719111026_
                                 _e110724111029_
                                 _hd110723111032_
                                 _tl110722111034_
                                 _e110727111037_
                                 _hd110726111040_
                                 _tl110725111042_))))
                        (___match113127113128_
                         _e110694110949_
                         _hd110693110952_
                         _tl110692110954_
                         _e110706110981_
                         _hd110705110984_
                         _tl110704110986_
                         _e110709110989_
                         _hd110708110992_
                         _tl110707110994_
                         _e110712110997_
                         _hd110711111000_
                         _tl110710111002_
                         _e110715111005_
                         _hd110714111008_
                         _tl110713111010_
                         _e110718111013_
                         _hd110717111016_
                         _tl110716111018_
                         _e110721111021_
                         _hd110720111024_
                         _tl110719111026_
                         _e110724111029_
                         _hd110723111032_
                         _tl110722111034_
                         _e110727111037_
                         _hd110726111040_
                         _tl110725111042_))))
                (let ((_xarg110736111106_ (reverse _xarg110735111079_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110704110986_))
                      (let ((_L111109_ _hd110744111069_)
                            (_L111110_ _xarg110736111106_)
                            (_L111111_ _hd110726111040_)
                            (_L111112_ _hd110717111016_)
                            (_L111113_ _tl110697110959_)
                            (_L111114_ _arg110703110978_))
                        (if (and (let ((__tmp114432
                                        (let ((__tmp114433
                                               (lambda (_g111157111160_
                                                        _g111158111162_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111157111160_
                                                         _g111158111162_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114433 '() _L111114_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp114432))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L111113_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L111112_ 'apply))
                                 (fx= (length (let ((__tmp114430
                                                     (lambda (_g111164111167_
                                                              _g111165111169_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111164111167_
                                                               _g111165111169_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114430
                                                        '()
                                                        _L111114_)))
                                      (length (let ((__tmp114431
                                                     (lambda (_g111171111174_
                                                              _g111172111176_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111171111174_
                                                               _g111172111176_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114431
                                                        '()
                                                        _L111110_))))
                                 (let ((__tmp114428
                                        (let ((__tmp114429
                                               (lambda (_g111178111181_
                                                        _g111179111183_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111178111181_
                                                         _g111179111183_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114429 '() _L111114_)))
                                       (__tmp114426
                                        (let ((__tmp114427
                                               (lambda (_g111185111188_
                                                        _g111186111190_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111185111188_
                                                         _g111186111190_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114427 '() _L111110_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp114428
                                            __tmp114426))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L111113_ _L111109_))
                                 (let ((__tmp114421
                                        (let ((__tmp114425
                                               (lambda (_g111192111194_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g111192111194_
                                                    _L111111_))))
                                              (__tmp114422
                                               (let ((__tmp114424
                                                      (lambda (_g111196111199_
                                                               _g111197111201_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g111196111199_
                                                                _g111197111201_))))
                                                     (__tmp114423
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L111113_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp114424
                                                         __tmp114423
                                                         _L111114_))))
                                          (declare (not safe))
                                          (find __tmp114425 __tmp114422))))
                                   (declare (not safe))
                                   (not __tmp114421)))
                            (___kont113022113023_
                             _L111109_
                             _L111110_
                             _L111111_
                             _L111112_
                             _L111113_
                             _L111114_)
                            (___match113127113128_
                             _e110694110949_
                             _hd110693110952_
                             _tl110692110954_
                             _e110706110981_
                             _hd110705110984_
                             _tl110704110986_
                             _e110709110989_
                             _hd110708110992_
                             _tl110707110994_
                             _e110712110997_
                             _hd110711111000_
                             _tl110710111002_
                             _e110715111005_
                             _hd110714111008_
                             _tl110713111010_
                             _e110718111013_
                             _hd110717111016_
                             _tl110716111018_
                             _e110721111021_
                             _hd110720111024_
                             _tl110719111026_
                             _e110724111029_
                             _hd110723111032_
                             _tl110722111034_
                             _e110727111037_
                             _hd110726111040_
                             _tl110725111042_)))
                      (___match113127113128_
                       _e110694110949_
                       _hd110693110952_
                       _tl110692110954_
                       _e110706110981_
                       _hd110705110984_
                       _tl110704110986_
                       _e110709110989_
                       _hd110708110992_
                       _tl110707110994_
                       _e110712110997_
                       _hd110711111000_
                       _tl110710111002_
                       _e110715111005_
                       _hd110714111008_
                       _tl110713111010_
                       _e110718111013_
                       _hd110717111016_
                       _tl110716111018_
                       _e110721111021_
                       _hd110720111024_
                       _tl110719111026_
                       _e110724111029_
                       _hd110723111032_
                       _tl110722111034_
                       _e110727111037_
                       _hd110726111040_
                       _tl110725111042_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop110731111074_
                                             _target110728111045_
                                             '())))
                                        (___match113127113128_
                                         _e110694110949_
                                         _hd110693110952_
                                         _tl110692110954_
                                         _e110706110981_
                                         _hd110705110984_
                                         _tl110704110986_
                                         _e110709110989_
                                         _hd110708110992_
                                         _tl110707110994_
                                         _e110712110997_
                                         _hd110711111000_
                                         _tl110710111002_
                                         _e110715111005_
                                         _hd110714111008_
                                         _tl110713111010_
                                         _e110718111013_
                                         _hd110717111016_
                                         _tl110716111018_
                                         _e110721111021_
                                         _hd110720111024_
                                         _tl110719111026_
                                         _e110724111029_
                                         _hd110723111032_
                                         _tl110722111034_
                                         _e110727111037_
                                         _hd110726111040_
                                         _tl110725111042_))
                                    (___match113127113128_
                                     _e110694110949_
                                     _hd110693110952_
                                     _tl110692110954_
                                     _e110706110981_
                                     _hd110705110984_
                                     _tl110704110986_
                                     _e110709110989_
                                     _hd110708110992_
                                     _tl110707110994_
                                     _e110712110997_
                                     _hd110711111000_
                                     _tl110710111002_
                                     _e110715111005_
                                     _hd110714111008_
                                     _tl110713111010_
                                     _e110718111013_
                                     _hd110717111016_
                                     _tl110716111018_
                                     _e110721111021_
                                     _hd110720111024_
                                     _tl110719111026_
                                     _e110724111029_
                                     _hd110723111032_
                                     _tl110722111034_
                                     _e110727111037_
                                     _hd110726111040_
                                     _tl110725111042_))))
                            (___match113127113128_
                             _e110694110949_
                             _hd110693110952_
                             _tl110692110954_
                             _e110706110981_
                             _hd110705110984_
                             _tl110704110986_
                             _e110709110989_
                             _hd110708110992_
                             _tl110707110994_
                             _e110712110997_
                             _hd110711111000_
                             _tl110710111002_
                             _e110715111005_
                             _hd110714111008_
                             _tl110713111010_
                             _e110718111013_
                             _hd110717111016_
                             _tl110716111018_
                             _e110721111021_
                             _hd110720111024_
                             _tl110719111026_
                             _e110724111029_
                             _hd110723111032_
                             _tl110722111034_
                             _e110727111037_
                             _hd110726111040_
                             _tl110725111042_))
                        (___match113127113128_
                         _e110694110949_
                         _hd110693110952_
                         _tl110692110954_
                         _e110706110981_
                         _hd110705110984_
                         _tl110704110986_
                         _e110709110989_
                         _hd110708110992_
                         _tl110707110994_
                         _e110712110997_
                         _hd110711111000_
                         _tl110710111002_
                         _e110715111005_
                         _hd110714111008_
                         _tl110713111010_
                         _e110718111013_
                         _hd110717111016_
                         _tl110716111018_
                         _e110721111021_
                         _hd110720111024_
                         _tl110719111026_
                         _e110724111029_
                         _hd110723111032_
                         _tl110722111034_
                         _e110727111037_
                         _hd110726111040_
                         _tl110725111042_))
                    (___match113127113128_
                     _e110694110949_
                     _hd110693110952_
                     _tl110692110954_
                     _e110706110981_
                     _hd110705110984_
                     _tl110704110986_
                     _e110709110989_
                     _hd110708110992_
                     _tl110707110994_
                     _e110712110997_
                     _hd110711111000_
                     _tl110710111002_
                     _e110715111005_
                     _hd110714111008_
                     _tl110713111010_
                     _e110718111013_
                     _hd110717111016_
                     _tl110716111018_
                     _e110721111021_
                     _hd110720111024_
                     _tl110719111026_
                     _e110724111029_
                     _hd110723111032_
                     _tl110722111034_
                     _e110727111037_
                     _hd110726111040_
                     _tl110725111042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113127113128_
                                                     _e110694110949_
                                                     _hd110693110952_
                                                     _tl110692110954_
                                                     _e110706110981_
                                                     _hd110705110984_
                                                     _tl110704110986_
                                                     _e110709110989_
                                                     _hd110708110992_
                                                     _tl110707110994_
                                                     _e110712110997_
                                                     _hd110711111000_
                                                     _tl110710111002_
                                                     _e110715111005_
                                                     _hd110714111008_
                                                     _tl110713111010_
                                                     _e110718111013_
                                                     _hd110717111016_
                                                     _tl110716111018_
                                                     _e110721111021_
                                                     _hd110720111024_
                                                     _tl110719111026_
                                                     _e110724111029_
                                                     _hd110723111032_
                                                     _tl110722111034_
                                                     _e110727111037_
                                                     _hd110726111040_
                                                     _tl110725111042_))))
                                            (___match113127113128_
                                             _e110694110949_
                                             _hd110693110952_
                                             _tl110692110954_
                                             _e110706110981_
                                             _hd110705110984_
                                             _tl110704110986_
                                             _e110709110989_
                                             _hd110708110992_
                                             _tl110707110994_
                                             _e110712110997_
                                             _hd110711111000_
                                             _tl110710111002_
                                             _e110715111005_
                                             _hd110714111008_
                                             _tl110713111010_
                                             _e110718111013_
                                             _hd110717111016_
                                             _tl110716111018_
                                             _e110721111021_
                                             _hd110720111024_
                                             _tl110719111026_
                                             _e110724111029_
                                             _hd110723111032_
                                             _tl110722111034_
                                             _e110727111037_
                                             _hd110726111040_
                                             _tl110725111042_))))
                                    (___match113127113128_
                                     _e110694110949_
                                     _hd110693110952_
                                     _tl110692110954_
                                     _e110706110981_
                                     _hd110705110984_
                                     _tl110704110986_
                                     _e110709110989_
                                     _hd110708110992_
                                     _tl110707110994_
                                     _e110712110997_
                                     _hd110711111000_
                                     _tl110710111002_
                                     _e110715111005_
                                     _hd110714111008_
                                     _tl110713111010_
                                     _e110718111013_
                                     _hd110717111016_
                                     _tl110716111018_
                                     _e110721111021_
                                     _hd110720111024_
                                     _tl110719111026_
                                     _e110724111029_
                                     _hd110723111032_
                                     _tl110722111034_
                                     _e110727111037_
                                     _hd110726111040_
                                     _tl110725111042_))
                                (___match113127113128_
                                 _e110694110949_
                                 _hd110693110952_
                                 _tl110692110954_
                                 _e110706110981_
                                 _hd110705110984_
                                 _tl110704110986_
                                 _e110709110989_
                                 _hd110708110992_
                                 _tl110707110994_
                                 _e110712110997_
                                 _hd110711111000_
                                 _tl110710111002_
                                 _e110715111005_
                                 _hd110714111008_
                                 _tl110713111010_
                                 _e110718111013_
                                 _hd110717111016_
                                 _tl110716111018_
                                 _e110721111021_
                                 _hd110720111024_
                                 _tl110719111026_
                                 _e110724111029_
                                 _hd110723111032_
                                 _tl110722111034_
                                 _e110727111037_
                                 _hd110726111040_
                                 _tl110725111042_))
                            (___kont113030113031_))))
                    (___kont113030113031_))
                (___kont113030113031_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113030113031_))))
                                            (___kont113030113031_))))
                                    (___kont113030113031_))
                                (___kont113030113031_))))
                        (___kont113030113031_))
                    (___kont113030113031_))
                (___kont113030113031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113030113031_))))
                                        (___kont113030113031_))
                                    (___kont113030113031_))
                                (___kont113030113031_))))
                        (___kont113030113031_))))
                (___kont113030113031_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110698110962_
                                       _target110695110957_
                                       '())))))
                               (___match113045113046_
                                (lambda (_e110646111209_
                                         _hd110645111212_
                                         _tl110644111214_
                                         ___splice113018113019_
                                         _target110647111217_
                                         _tl110649111219_)
                                  (letrec ((_loop110650111222_
                                            (lambda (_hd110648111225_
                                                     _arg110654111227_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110648111225_))
                                                  (let ((_e110651111230_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110648111225_))))
                                                    (let ((_lp-tl110653111235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110651111230_)))
                                                          (_lp-hd110652111233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110651111230_))))
                                                      (let ((__tmp114449
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110652111233_ _arg110654111227_))))
                (declare (not safe))
                (_loop110650111222_ _lp-tl110653111235_ __tmp114449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110655111238_
                                                         (reverse _arg110654111227_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110644111214_))
                                                        (let ((_e110658111241_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110644111214_))))
                  (let ((_tl110656111246_
                         (let () (declare (not safe)) (##cdr _e110658111241_)))
                        (_hd110657111244_
                         (let ()
                           (declare (not safe))
                           (##car _e110658111241_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110657111244_))
                        (let ((_e110661111249_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110657111244_))))
                          (let ((_tl110659111254_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110661111249_)))
                                (_hd110660111252_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110661111249_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110660111252_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110660111252_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110659111254_))
                                        (let ((_e110664111257_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110659111254_))))
                                          (let ((_tl110662111262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110664111257_)))
                                                (_hd110663111260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110664111257_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110663111260_))
                                                (let ((_e110667111265_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110663111260_))))
                                                  (let ((_tl110665111270_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110667111265_)))
                                                        (_hd110666111268_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110667111265_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110666111268_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110666111268_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110665111270_))
                        (let ((_e110670111273_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110665111270_))))
                          (let ((_tl110668111278_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110670111273_)))
                                (_hd110669111276_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110670111273_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110668111278_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110662111262_))
                                    (let ((___splice113020113021_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110662111262_
                                              '0))))
                                      (let ((_tl110673111283_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113020113021_
                                                '1)))
                                            (_target110671111281_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113020113021_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110673111283_))
                                            (letrec ((_loop110674111286_
                                                      (lambda (_hd110672111289_
                                                               _xarg110678111291_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110672111289_))
                                                            (let ((_e110675111294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110672111289_))))
                      (let ((_lp-tl110677111299_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110675111294_)))
                            (_lp-hd110676111297_
                             (let ()
                               (declare (not safe))
                               (##car _e110675111294_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110676111297_))
                            (let ((_e110682111302_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110676111297_))))
                              (let ((_tl110680111307_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110682111302_)))
                                    (_hd110681111305_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110682111302_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110681111305_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110681111305_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110680111307_))
                                            (let ((_e110685111310_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110680111307_))))
                                              (let ((_tl110683111315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110685111310_)))
                                                    (_hd110684111313_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110685111310_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110683111315_))
                                                    (let ((__tmp114448
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110684111313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110678111291_))))
              (declare (not safe))
              (_loop110674111286_ _lp-tl110677111299_ __tmp114448))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113057113058_
                                                     _e110646111209_
                                                     _hd110645111212_
                                                     _tl110644111214_
                                                     ___splice113018113019_
                                                     _target110647111217_
                                                     _tl110649111219_))))
                                            (___match113057113058_
                                             _e110646111209_
                                             _hd110645111212_
                                             _tl110644111214_
                                             ___splice113018113019_
                                             _target110647111217_
                                             _tl110649111219_))
                                        (___match113057113058_
                                         _e110646111209_
                                         _hd110645111212_
                                         _tl110644111214_
                                         ___splice113018113019_
                                         _target110647111217_
                                         _tl110649111219_))
                                    (___match113057113058_
                                     _e110646111209_
                                     _hd110645111212_
                                     _tl110644111214_
                                     ___splice113018113019_
                                     _target110647111217_
                                     _tl110649111219_))))
                            (___match113057113058_
                             _e110646111209_
                             _hd110645111212_
                             _tl110644111214_
                             ___splice113018113019_
                             _target110647111217_
                             _tl110649111219_))))
                    (let ((_xarg110679111318_ (reverse _xarg110678111291_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110656111246_))
                          (let ((_L111321_ _xarg110679111318_)
                                (_L111322_ _hd110669111276_)
                                (_L111323_ _arg110655111238_))
                            (if (and (let ((__tmp114446
                                            (let ((__tmp114447
                                                   (lambda (_g111351111354_
                                                            _g111352111356_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111351111354_
                                                             _g111352111356_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114447
                                                      '()
                                                      _L111323_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp114446))
                                     (fx= (length (let ((__tmp114444
                                                         (lambda (_g111358111361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111359111363_)
                   (let ()
                     (declare (not safe))
                     (cons _g111358111361_ _g111359111363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114444
                                                            '()
                                                            _L111323_)))
                                          (length (let ((__tmp114445
                                                         (lambda (_g111365111368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111366111370_)
                   (let ()
                     (declare (not safe))
                     (cons _g111365111368_ _g111366111370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114445
                                                            '()
                                                            _L111321_))))
                                     (let ((__tmp114442
                                            (let ((__tmp114443
                                                   (lambda (_g111372111375_
                                                            _g111373111377_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111372111375_
                                                             _g111373111377_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114443
                                                      '()
                                                      _L111323_)))
                                           (__tmp114440
                                            (let ((__tmp114441
                                                   (lambda (_g111379111382_
                                                            _g111380111384_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111379111382_
                                                             _g111380111384_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114441
                                                      '()
                                                      _L111321_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp114442
                                                __tmp114440))
                                     (let ((__tmp114436
                                            (let ((__tmp114439
                                                   (lambda (_g111386111388_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g111386111388_
                                                        _L111322_))))
                                                  (__tmp114437
                                                   (let ((__tmp114438
                                                          (lambda (_g111390111393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g111391111395_)
                    (let ()
                      (declare (not safe))
                      (cons _g111390111393_ _g111391111395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp114438
                                                             '()
                                                             _L111323_))))
                                              (declare (not safe))
                                              (find __tmp114439 __tmp114437))))
                                       (declare (not safe))
                                       (not __tmp114436)))
                                (___kont113016113017_
                                 _L111321_
                                 _L111322_
                                 _L111323_)
                                (___match113057113058_
                                 _e110646111209_
                                 _hd110645111212_
                                 _tl110644111214_
                                 ___splice113018113019_
                                 _target110647111217_
                                 _tl110649111219_)))
                          (___match113057113058_
                           _e110646111209_
                           _hd110645111212_
                           _tl110644111214_
                           ___splice113018113019_
                           _target110647111217_
                           _tl110649111219_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110674111286_
                                                 _target110671111281_
                                                 '())))
                                            (___match113057113058_
                                             _e110646111209_
                                             _hd110645111212_
                                             _tl110644111214_
                                             ___splice113018113019_
                                             _target110647111217_
                                             _tl110649111219_))))
                                    (___match113057113058_
                                     _e110646111209_
                                     _hd110645111212_
                                     _tl110644111214_
                                     ___splice113018113019_
                                     _target110647111217_
                                     _tl110649111219_))
                                (___match113057113058_
                                 _e110646111209_
                                 _hd110645111212_
                                 _tl110644111214_
                                 ___splice113018113019_
                                 _target110647111217_
                                 _tl110649111219_))))
                        (___match113057113058_
                         _e110646111209_
                         _hd110645111212_
                         _tl110644111214_
                         ___splice113018113019_
                         _target110647111217_
                         _tl110649111219_))
                    (___match113057113058_
                     _e110646111209_
                     _hd110645111212_
                     _tl110644111214_
                     ___splice113018113019_
                     _target110647111217_
                     _tl110649111219_))
                (___match113057113058_
                 _e110646111209_
                 _hd110645111212_
                 _tl110644111214_
                 ___splice113018113019_
                 _target110647111217_
                 _tl110649111219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113057113058_
                                                 _e110646111209_
                                                 _hd110645111212_
                                                 _tl110644111214_
                                                 ___splice113018113019_
                                                 _target110647111217_
                                                 _tl110649111219_))))
                                        (___match113057113058_
                                         _e110646111209_
                                         _hd110645111212_
                                         _tl110644111214_
                                         ___splice113018113019_
                                         _target110647111217_
                                         _tl110649111219_))
                                    (___match113057113058_
                                     _e110646111209_
                                     _hd110645111212_
                                     _tl110644111214_
                                     ___splice113018113019_
                                     _target110647111217_
                                     _tl110649111219_))
                                (___match113057113058_
                                 _e110646111209_
                                 _hd110645111212_
                                 _tl110644111214_
                                 ___splice113018113019_
                                 _target110647111217_
                                 _tl110649111219_))))
                        (___match113057113058_
                         _e110646111209_
                         _hd110645111212_
                         _tl110644111214_
                         ___splice113018113019_
                         _target110647111217_
                         _tl110649111219_))))
                (___match113057113058_
                 _e110646111209_
                 _hd110645111212_
                 _tl110644111214_
                 ___splice113018113019_
                 _target110647111217_
                 _tl110649111219_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110650111222_
                                       _target110647111217_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113014113015_))
                              (let ((_e110646111209_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113014113015_))))
                                (let ((_tl110644111214_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110646111209_)))
                                      (_hd110645111212_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110646111209_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110645111212_))
                                      (let ((___splice113018113019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110645111212_
                                                '0))))
                                        (let ((_tl110649111219_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113018113019_
                                                  '1)))
                                              (_target110647111217_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113018113019_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110649111219_))
                                              (___match113045113046_
                                               _e110646111209_
                                               _hd110645111212_
                                               _tl110644111214_
                                               ___splice113018113019_
                                               _target110647111217_
                                               _tl110649111219_)
                                              (___match113057113058_
                                               _e110646111209_
                                               _hd110645111212_
                                               _tl110644111214_
                                               ___splice113018113019_
                                               _target110647111217_
                                               _tl110649111219_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110644111214_))
                                          (let ((_e110761110816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110644111214_))))
                                            (let ((_tl110759110821_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110761110816_)))
                                                  (_hd110760110819_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110761110816_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110760110819_))
                                                  (let ((_e110764110824_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110760110819_))))
                                                    (let ((_tl110762110829_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110764110824_)))
                                                          (_hd110763110827_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110764110824_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110763110827_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110763110827_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110762110829_))
                          (let ((_e110767110832_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110762110829_))))
                            (let ((_tl110765110837_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110767110832_)))
                                  (_hd110766110835_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110767110832_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110766110835_))
                                  (let ((_e110770110840_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110766110835_))))
                                    (let ((_tl110768110845_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110770110840_)))
                                          (_hd110769110843_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110770110840_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110769110843_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110769110843_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110768110845_))
                                                  (let ((_e110773110848_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110768110845_))))
                                                    (let ((_tl110771110853_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110773110848_)))
                                                          (_hd110772110851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110773110848_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110771110853_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110765110837_))
                      (let ((_e110776110856_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110765110837_))))
                        (let ((_tl110774110861_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110776110856_)))
                              (_hd110775110859_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110776110856_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110775110859_))
                              (let ((_e110779110864_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110775110859_))))
                                (let ((_tl110777110869_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110779110864_)))
                                      (_hd110778110867_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110779110864_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110778110867_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110778110867_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110777110869_))
                                              (let ((_e110782110872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110777110869_))))
                                                (let ((_tl110780110877_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110782110872_)))
                                                      (_hd110781110875_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110782110872_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110780110877_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110774110861_))
                                                          (let ((_e110785110880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110774110861_))))
                    (let ((_tl110783110885_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110785110880_)))
                          (_hd110784110883_
                           (let ()
                             (declare (not safe))
                             (##car _e110785110880_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd110784110883_))
                          (let ((_e110788110888_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd110784110883_))))
                            (let ((_tl110786110893_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110788110888_)))
                                  (_hd110787110891_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110788110888_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd110787110891_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd110787110891_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110786110893_))
                                          (let ((_e110791110896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110786110893_))))
                                            (let ((_tl110789110901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110791110896_)))
                                                  (_hd110790110899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110791110896_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110789110901_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110783110885_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110759110821_))
                                                          (___match113155113156_
                                                           _e110646111209_
                                                           _hd110645111212_
                                                           _tl110644111214_
                                                           _e110761110816_
                                                           _hd110760110819_
                                                           _tl110759110821_
                                                           _e110764110824_
                                                           _hd110763110827_
                                                           _tl110762110829_
                                                           _e110767110832_
                                                           _hd110766110835_
                                                           _tl110765110837_
                                                           _e110770110840_
                                                           _hd110769110843_
                                                           _tl110768110845_
                                                           _e110773110848_
                                                           _hd110772110851_
                                                           _tl110771110853_
                                                           _e110776110856_
                                                           _hd110775110859_
                                                           _tl110774110861_
                                                           _e110779110864_
                                                           _hd110778110867_
                                                           _tl110777110869_
                                                           _e110782110872_
                                                           _hd110781110875_
                                                           _tl110780110877_
                                                           _e110785110880_
                                                           _hd110784110883_
                                                           _tl110783110885_
                                                           _e110788110888_
                                                           _hd110787110891_
                                                           _tl110786110893_
                                                           _e110791110896_
                                                           _hd110790110899_
                                                           _tl110789110901_)
                                                          (___kont113030113031_))
                                                      (___kont113030113031_))
                                                  (___kont113030113031_))))
                                          (___kont113030113031_))
                                      (___kont113030113031_))
                                  (___kont113030113031_))))
                          (___kont113030113031_))))
                  (___kont113030113031_))
              (___kont113030113031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113030113031_))
                                          (___kont113030113031_))
                                      (___kont113030113031_))))
                              (___kont113030113031_))))
                      (___kont113030113031_))
                  (___kont113030113031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113030113031_))
                                              (___kont113030113031_))
                                          (___kont113030113031_))))
                                  (___kont113030113031_))))
                          (___kont113030113031_))
                      (___kont113030113031_))
                  (___kont113030113031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113030113031_))))
                                          (___kont113030113031_)))))
                              (___kont113030113031_)))))))
                 (_dispatch-case-e109947_
                  (lambda (_hd110095_ _body110096_)
                    (let* ((_form110098_
                            (let ((__tmp114450
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110096_ '()))))
                              (declare (not safe))
                              (cons _hd110095_ __tmp114450)))
                           (___stx113158113159_ _form110098_)
                           (_g110102110226_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113158113159_)))))
                      (let ((___kont113160113161_
                             (lambda (_L110597_ _L110598_ _L110599_)
                               (let ((__tmp114451
                                      (let ((__tmp114453
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114452
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110598_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114453 __tmp114452))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109943_ __tmp114451))))
                            (___kont113166113167_
                             (lambda (_L110445_ _L110446_ _L110447_ _L110448_)
                               (let ((__tmp114454
                                      (let ((__tmp114456
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114455
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110445_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114456 __tmp114455))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109943_ __tmp114454))))
                            (___kont113170113171_
                             (lambda (_L110311_ _L110312_ _L110313_)
                               (let ((__tmp114457
                                      (let ((__tmp114459
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114458
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110311_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114459 __tmp114458))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self109943_
                                  __tmp114457)))))
                        (let* ((___match113267113268_
                                (lambda (_e110194110231_
                                         _hd110193110234_
                                         _tl110192110236_
                                         _e110197110239_
                                         _hd110196110242_
                                         _tl110195110244_
                                         _e110200110247_
                                         _hd110199110250_
                                         _tl110198110252_
                                         _e110203110255_
                                         _hd110202110258_
                                         _tl110201110260_
                                         _e110206110263_
                                         _hd110205110266_
                                         _tl110204110268_
                                         _e110209110271_
                                         _hd110208110274_
                                         _tl110207110276_
                                         _e110212110279_
                                         _hd110211110282_
                                         _tl110210110284_
                                         _e110215110287_
                                         _hd110214110290_
                                         _tl110213110292_
                                         _e110218110295_
                                         _hd110217110298_
                                         _tl110216110300_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110210110284_))
                                      (let ((_e110221110303_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110210110284_))))
                                        (let ((_tl110219110308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110221110303_)))
                                              (_hd110220110306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110221110303_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110219110308_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110195110244_))
                                                  (___kont113170113171_
                                                   _hd110217110298_
                                                   _hd110208110274_
                                                   _hd110193110234_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110102110226_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110102110226_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110102110226_)))))
                               (___match113197113198_
                                (lambda (_e110155110349_
                                         _hd110154110352_
                                         _tl110153110354_
                                         ___splice113168113169_
                                         _target110156110357_
                                         _tl110158110359_)
                                  (letrec ((_loop110159110362_
                                            (lambda (_hd110157110365_
                                                     _arg110163110367_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110157110365_))
                                                  (let ((_e110160110370_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110157110365_))))
                                                    (let ((_lp-tl110162110375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110160110370_)))
                                                          (_lp-hd110161110373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110160110370_))))
                                                      (let ((__tmp114460
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110161110373_ _arg110163110367_))))
                (declare (not safe))
                (_loop110159110362_ _lp-tl110162110375_ __tmp114460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110164110378_
                                                         (reverse _arg110163110367_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110153110354_))
                                                        (let ((_e110167110381_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110153110354_))))
                  (let ((_tl110165110386_
                         (let () (declare (not safe)) (##cdr _e110167110381_)))
                        (_hd110166110384_
                         (let ()
                           (declare (not safe))
                           (##car _e110167110381_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110166110384_))
                        (let ((_e110170110389_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110166110384_))))
                          (let ((_tl110168110394_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110170110389_)))
                                (_hd110169110392_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110170110389_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110169110392_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110169110392_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110168110394_))
                                        (let ((_e110173110397_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110168110394_))))
                                          (let ((_tl110171110402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110173110397_)))
                                                (_hd110172110400_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110173110397_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110172110400_))
                                                (let ((_e110176110405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110172110400_))))
                                                  (let ((_tl110174110410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110176110405_)))
                                                        (_hd110175110408_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110176110405_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110175110408_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110175110408_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110174110410_))
                        (let ((_e110179110413_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110174110410_))))
                          (let ((_tl110177110418_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110179110413_)))
                                (_hd110178110416_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110179110413_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110177110418_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110171110402_))
                                    (let ((_e110182110421_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110171110402_))))
                                      (let ((_tl110180110426_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110182110421_)))
                                            (_hd110181110424_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110182110421_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110181110424_))
                                            (let ((_e110185110429_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110181110424_))))
                                              (let ((_tl110183110434_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110185110429_)))
                                                    (_hd110184110432_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110185110429_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110184110432_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110184110432_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110183110434_))
                                                            (let ((_e110188110437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110183110434_))))
                      (let ((_tl110186110442_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110188110437_)))
                            (_hd110187110440_
                             (let ()
                               (declare (not safe))
                               (##car _e110188110437_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110186110442_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110165110386_))
                                (___kont113166113167_
                                 _hd110187110440_
                                 _hd110178110416_
                                 _tl110158110359_
                                 _arg110164110378_)
                                (___match113267113268_
                                 _e110155110349_
                                 _hd110154110352_
                                 _tl110153110354_
                                 _e110167110381_
                                 _hd110166110384_
                                 _tl110165110386_
                                 _e110170110389_
                                 _hd110169110392_
                                 _tl110168110394_
                                 _e110173110397_
                                 _hd110172110400_
                                 _tl110171110402_
                                 _e110176110405_
                                 _hd110175110408_
                                 _tl110174110410_
                                 _e110179110413_
                                 _hd110178110416_
                                 _tl110177110418_
                                 _e110182110421_
                                 _hd110181110424_
                                 _tl110180110426_
                                 _e110185110429_
                                 _hd110184110432_
                                 _tl110183110434_
                                 _e110188110437_
                                 _hd110187110440_
                                 _tl110186110442_))
                            (let () (declare (not safe)) (_g110102110226_)))))
                    (let () (declare (not safe)) (_g110102110226_)))
                (let () (declare (not safe)) (_g110102110226_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g110102110226_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g110102110226_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g110102110226_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110102110226_)))))
                        (let () (declare (not safe)) (_g110102110226_)))
                    (let () (declare (not safe)) (_g110102110226_)))
                (let () (declare (not safe)) (_g110102110226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g110102110226_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g110102110226_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g110102110226_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110102110226_)))))
                        (let () (declare (not safe)) (_g110102110226_)))))
                (let () (declare (not safe)) (_g110102110226_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110159110362_
                                       _target110156110357_
                                       '())))))
                               (___match113185113186_
                                (lambda (_e110109110485_
                                         _hd110108110488_
                                         _tl110107110490_
                                         ___splice113162113163_
                                         _target110110110493_
                                         _tl110112110495_)
                                  (letrec ((_loop110113110498_
                                            (lambda (_hd110111110501_
                                                     _arg110117110503_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110111110501_))
                                                  (let ((_e110114110506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110111110501_))))
                                                    (let ((_lp-tl110116110511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110114110506_)))
                                                          (_lp-hd110115110509_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110114110506_))))
                                                      (let ((__tmp114462
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110115110509_ _arg110117110503_))))
                (declare (not safe))
                (_loop110113110498_ _lp-tl110116110511_ __tmp114462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110118110514_
                                                         (reverse _arg110117110503_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110107110490_))
                                                        (let ((_e110121110517_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110107110490_))))
                  (let ((_tl110119110522_
                         (let () (declare (not safe)) (##cdr _e110121110517_)))
                        (_hd110120110520_
                         (let ()
                           (declare (not safe))
                           (##car _e110121110517_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110120110520_))
                        (let ((_e110124110525_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110120110520_))))
                          (let ((_tl110122110530_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110124110525_)))
                                (_hd110123110528_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110124110525_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110123110528_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110123110528_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110122110530_))
                                        (let ((_e110127110533_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110122110530_))))
                                          (let ((_tl110125110538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110127110533_)))
                                                (_hd110126110536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110127110533_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110126110536_))
                                                (let ((_e110130110541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110126110536_))))
                                                  (let ((_tl110128110546_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110130110541_)))
                                                        (_hd110129110544_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110130110541_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110129110544_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110129110544_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110128110546_))
                        (let ((_e110133110549_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110128110546_))))
                          (let ((_tl110131110554_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110133110549_)))
                                (_hd110132110552_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110133110549_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110131110554_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110125110538_))
                                    (let ((___splice113164113165_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110125110538_
                                              '0))))
                                      (let ((_tl110136110559_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113164113165_
                                                '1)))
                                            (_target110134110557_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113164113165_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110136110559_))
                                            (letrec ((_loop110137110562_
                                                      (lambda (_hd110135110565_
                                                               _xarg110141110567_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110135110565_))
                                                            (let ((_e110138110570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110135110565_))))
                      (let ((_lp-tl110140110575_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110138110570_)))
                            (_lp-hd110139110573_
                             (let ()
                               (declare (not safe))
                               (##car _e110138110570_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110139110573_))
                            (let ((_e110145110578_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110139110573_))))
                              (let ((_tl110143110583_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110145110578_)))
                                    (_hd110144110581_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110145110578_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110144110581_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110144110581_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110143110583_))
                                            (let ((_e110148110586_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110143110583_))))
                                              (let ((_tl110146110591_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110148110586_)))
                                                    (_hd110147110589_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110148110586_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110146110591_))
                                                    (let ((__tmp114461
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110147110589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110141110567_))))
              (declare (not safe))
              (_loop110137110562_ _lp-tl110140110575_ __tmp114461))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113197113198_
                                                     _e110109110485_
                                                     _hd110108110488_
                                                     _tl110107110490_
                                                     ___splice113162113163_
                                                     _target110110110493_
                                                     _tl110112110495_))))
                                            (___match113197113198_
                                             _e110109110485_
                                             _hd110108110488_
                                             _tl110107110490_
                                             ___splice113162113163_
                                             _target110110110493_
                                             _tl110112110495_))
                                        (___match113197113198_
                                         _e110109110485_
                                         _hd110108110488_
                                         _tl110107110490_
                                         ___splice113162113163_
                                         _target110110110493_
                                         _tl110112110495_))
                                    (___match113197113198_
                                     _e110109110485_
                                     _hd110108110488_
                                     _tl110107110490_
                                     ___splice113162113163_
                                     _target110110110493_
                                     _tl110112110495_))))
                            (___match113197113198_
                             _e110109110485_
                             _hd110108110488_
                             _tl110107110490_
                             ___splice113162113163_
                             _target110110110493_
                             _tl110112110495_))))
                    (let ((_xarg110142110594_ (reverse _xarg110141110567_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110119110522_))
                          (___kont113160113161_
                           _xarg110142110594_
                           _hd110132110552_
                           _arg110118110514_)
                          (___match113197113198_
                           _e110109110485_
                           _hd110108110488_
                           _tl110107110490_
                           ___splice113162113163_
                           _target110110110493_
                           _tl110112110495_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110137110562_
                                                 _target110134110557_
                                                 '())))
                                            (___match113197113198_
                                             _e110109110485_
                                             _hd110108110488_
                                             _tl110107110490_
                                             ___splice113162113163_
                                             _target110110110493_
                                             _tl110112110495_))))
                                    (___match113197113198_
                                     _e110109110485_
                                     _hd110108110488_
                                     _tl110107110490_
                                     ___splice113162113163_
                                     _target110110110493_
                                     _tl110112110495_))
                                (___match113197113198_
                                 _e110109110485_
                                 _hd110108110488_
                                 _tl110107110490_
                                 ___splice113162113163_
                                 _target110110110493_
                                 _tl110112110495_))))
                        (___match113197113198_
                         _e110109110485_
                         _hd110108110488_
                         _tl110107110490_
                         ___splice113162113163_
                         _target110110110493_
                         _tl110112110495_))
                    (___match113197113198_
                     _e110109110485_
                     _hd110108110488_
                     _tl110107110490_
                     ___splice113162113163_
                     _target110110110493_
                     _tl110112110495_))
                (___match113197113198_
                 _e110109110485_
                 _hd110108110488_
                 _tl110107110490_
                 ___splice113162113163_
                 _target110110110493_
                 _tl110112110495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113197113198_
                                                 _e110109110485_
                                                 _hd110108110488_
                                                 _tl110107110490_
                                                 ___splice113162113163_
                                                 _target110110110493_
                                                 _tl110112110495_))))
                                        (___match113197113198_
                                         _e110109110485_
                                         _hd110108110488_
                                         _tl110107110490_
                                         ___splice113162113163_
                                         _target110110110493_
                                         _tl110112110495_))
                                    (___match113197113198_
                                     _e110109110485_
                                     _hd110108110488_
                                     _tl110107110490_
                                     ___splice113162113163_
                                     _target110110110493_
                                     _tl110112110495_))
                                (___match113197113198_
                                 _e110109110485_
                                 _hd110108110488_
                                 _tl110107110490_
                                 ___splice113162113163_
                                 _target110110110493_
                                 _tl110112110495_))))
                        (___match113197113198_
                         _e110109110485_
                         _hd110108110488_
                         _tl110107110490_
                         ___splice113162113163_
                         _target110110110493_
                         _tl110112110495_))))
                (___match113197113198_
                 _e110109110485_
                 _hd110108110488_
                 _tl110107110490_
                 ___splice113162113163_
                 _target110110110493_
                 _tl110112110495_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110113110498_
                                       _target110110110493_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113158113159_))
                              (let ((_e110109110485_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113158113159_))))
                                (let ((_tl110107110490_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110109110485_)))
                                      (_hd110108110488_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110109110485_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110108110488_))
                                      (let ((___splice113162113163_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110108110488_
                                                '0))))
                                        (let ((_tl110112110495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113162113163_
                                                  '1)))
                                              (_target110110110493_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113162113163_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110112110495_))
                                              (___match113185113186_
                                               _e110109110485_
                                               _hd110108110488_
                                               _tl110107110490_
                                               ___splice113162113163_
                                               _target110110110493_
                                               _tl110112110495_)
                                              (___match113197113198_
                                               _e110109110485_
                                               _hd110108110488_
                                               _tl110107110490_
                                               ___splice113162113163_
                                               _target110110110493_
                                               _tl110112110495_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110107110490_))
                                          (let ((_e110197110239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110107110490_))))
                                            (let ((_tl110195110244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110197110239_)))
                                                  (_hd110196110242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110197110239_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110196110242_))
                                                  (let ((_e110200110247_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110196110242_))))
                                                    (let ((_tl110198110252_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110200110247_)))
                                                          (_hd110199110250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110200110247_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110199110250_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110199110250_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110198110252_))
                          (let ((_e110203110255_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110198110252_))))
                            (let ((_tl110201110260_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110203110255_)))
                                  (_hd110202110258_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110203110255_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110202110258_))
                                  (let ((_e110206110263_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110202110258_))))
                                    (let ((_tl110204110268_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110206110263_)))
                                          (_hd110205110266_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110206110263_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110205110266_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110205110266_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110204110268_))
                                                  (let ((_e110209110271_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110204110268_))))
                                                    (let ((_tl110207110276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110209110271_)))
                                                          (_hd110208110274_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110209110271_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110207110276_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110201110260_))
                      (let ((_e110212110279_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110201110260_))))
                        (let ((_tl110210110284_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110212110279_)))
                              (_hd110211110282_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110212110279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110211110282_))
                              (let ((_e110215110287_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110211110282_))))
                                (let ((_tl110213110292_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110215110287_)))
                                      (_hd110214110290_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110215110287_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110214110290_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110214110290_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110213110292_))
                                              (let ((_e110218110295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110213110292_))))
                                                (let ((_tl110216110300_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110218110295_)))
                                                      (_hd110217110298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110218110295_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110216110300_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110210110284_))
                                                          (let ((_e110221110303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110210110284_))))
                    (let ((_tl110219110308_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110221110303_)))
                          (_hd110220110306_
                           (let ()
                             (declare (not safe))
                             (##car _e110221110303_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110219110308_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110195110244_))
                              (___kont113170113171_
                               _hd110217110298_
                               _hd110208110274_
                               _hd110108110488_)
                              (let () (declare (not safe)) (_g110102110226_)))
                          (let () (declare (not safe)) (_g110102110226_)))))
                  (let () (declare (not safe)) (_g110102110226_)))
              (let () (declare (not safe)) (_g110102110226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g110102110226_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110102110226_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g110102110226_)))))
                              (let ()
                                (declare (not safe))
                                (_g110102110226_)))))
                      (let () (declare (not safe)) (_g110102110226_)))
                  (let () (declare (not safe)) (_g110102110226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110102110226_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110102110226_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110102110226_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g110102110226_)))))
                          (let () (declare (not safe)) (_g110102110226_)))
                      (let () (declare (not safe)) (_g110102110226_)))
                  (let () (declare (not safe)) (_g110102110226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110102110226_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g110102110226_))))))
                              (let ()
                                (declare (not safe))
                                (_g110102110226_))))))))
                 (_generate1109948_
                  (lambda (_args110083_ _arglen110084_ _hd110085_ _body110086_)
                    (let* ((_len110088_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd110085_)))
                           (_condition110090_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd110085_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp114477
                                           (let ((__tmp114478
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len110088_ '()))))
                                             (declare (not safe))
                                             (cons _arglen110084_
                                                   __tmp114478))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp114477))
                                    (let ((__tmp114471
                                           (let ((__tmp114472
                                                  (let ((__tmp114473
                                                         (let ((__tmp114474
                                                                (let ((__tmp114475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114476
                                      (let ()
                                        (declare (not safe))
                                        (cons _len110088_ '()))))
                                 (declare (not safe))
                                 (cons _arglen110084_ __tmp114476))))
                          (declare (not safe))
                          (cons '##fx= __tmp114475))))
                   (declare (not safe))
                   (cons __tmp114474 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp114473))))
                                             (declare (not safe))
                                             (cons '() __tmp114472))))
                                      (declare (not safe))
                                      (cons 'let __tmp114471)))
                                (if (> _len110088_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp114469
                                               (let ((__tmp114470
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len110088_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen110084_
                                                       __tmp114470))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp114469))
                                        (let ((__tmp114463
                                               (let ((__tmp114464
                                                      (let ((__tmp114465
                                                             (let ((__tmp114466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114467
                                   (let ((__tmp114468
                                          (let ()
                                            (declare (not safe))
                                            (cons _len110088_ '()))))
                                     (declare (not safe))
                                     (cons _arglen110084_ __tmp114468))))
                              (declare (not safe))
                              (cons '##fx>= __tmp114467))))
                       (declare (not safe))
                       (cons __tmp114466 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp114465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp114464))))
                                          (declare (not safe))
                                          (cons 'let __tmp114463)))
                                    '#t)))
                           (_dispatch110092_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?109946_
                                   _hd110085_
                                   _body110086_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e109947_
                                   _hd110085_
                                   _body110086_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self109943_
                                   _hd110085_
                                   _body110086_)))))
                      (let ((__tmp114479
                             (let ((__tmp114480
                                    (let ((__tmp114481
                                           (let ((__tmp114482
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args110083_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch110092_
                                                   __tmp114482))))
                                      (declare (not safe))
                                      (cons 'apply __tmp114481))))
                               (declare (not safe))
                               (cons __tmp114480 '()))))
                        (declare (not safe))
                        (cons _condition110090_ __tmp114479))))))
          (let* ((_g109950109978_
                  (lambda (_g109951109975_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109951109975_))))
                 (_g109949110080_
                  (lambda (_g109951109981_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109951109981_))
                        (let ((_e109956109983_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109951109981_))))
                          (let ((_hd109955109986_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109956109983_)))
                                (_tl109954109988_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109956109983_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109954109988_))
                                (let ((_g114483_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl109954109988_
                                          '0))))
                                  (begin
                                    (let ((_g114484_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114483_)
                                                 (##vector-length _g114483_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114484_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114484_)))
                                    (let ((_target109957109991_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114483_ 0)))
                                          (_tl109959109993_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114483_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109959109993_))
                                          (letrec ((_loop109960109996_
                                                    (lambda (_hd109958109999_
                                                             _body109964110001_
                                                             _hd109965110003_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd109958109999_))
                                                          (let ((_e109961110006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd109958109999_))))
                    (let ((_lp-hd109962110009_
                           (let ()
                             (declare (not safe))
                             (##car _e109961110006_)))
                          (_lp-tl109963110011_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109961110006_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd109962110009_))
                          (let ((_e109970110014_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd109962110009_))))
                            (let ((_hd109969110017_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109970110014_)))
                                  (_tl109968110019_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109970110014_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl109968110019_))
                                  (let ((_e109973110022_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl109968110019_))))
                                    (let ((_hd109972110025_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109973110022_)))
                                          (_tl109971110027_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109973110022_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109971110027_))
                                          (let ((__tmp114513
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109972110025_
                                                         _body109964110001_)))
                                                (__tmp114512
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109969110017_
                                                         _hd109965110003_))))
                                            (declare (not safe))
                                            (_loop109960109996_
                                             _lp-tl109963110011_
                                             __tmp114513
                                             __tmp114512))
                                          (let ()
                                            (declare (not safe))
                                            (_g109950109978_
                                             _g109951109981_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109950109978_ _g109951109981_)))))
                          (let ()
                            (declare (not safe))
                            (_g109950109978_ _g109951109981_)))))
                  (let ((_body109966110030_ (reverse _body109964110001_))
                        (_hd109967110032_ (reverse _hd109965110003_)))
                    ((lambda (_L110035_ _L110036_)
                       (let ((_args110055_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen110056_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name110057_
                              (let ((_$e110052_
                                     (let ((__tmp114485
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp114485 _stx109944_))))
                                (if _$e110052_
                                    _$e110052_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp114486
                                (let ((__tmp114487
                                       (let ((__tmp114488
                                              (let ((__tmp114489
                                                     (let ((__tmp114502
                                                            (let ((__tmp114503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114504
                                  (let ((__tmp114505
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp114511
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110055_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp114511))
                                             (let ((__tmp114506
                                                    (let ((__tmp114507
                                                           (let ((__tmp114508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114509
                                 (let ((__tmp114510
                                        (let ()
                                          (declare (not safe))
                                          (cons _args110055_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp114510))))
                            (declare (not safe))
                            (cons __tmp114509 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp114508))))
              (declare (not safe))
              (cons '() __tmp114507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp114506)))))
                                    (declare (not safe))
                                    (cons __tmp114505 '()))))
                             (declare (not safe))
                             (cons _arglen110056_ __tmp114504))))
                      (declare (not safe))
                      (cons __tmp114503 '())))
                   (__tmp114490
                    (let ((__tmp114491
                           (let ((__tmp114492
                                  (let ((__tmp114496
                                         (let ((__tmp114497
                                                (let ((__tmp114498
                                                       (let ((__tmp114499
                                                              (let ((__tmp114500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114501
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110055_ '()))))
                               (declare (not safe))
                               (cons _name110057_ __tmp114501))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp114500))))
                 (declare (not safe))
                 (cons __tmp114499 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp114498))))
                                           (declare (not safe))
                                           (cons __tmp114497 '())))
                                        (__tmp114493
                                         (map (lambda (_g110058110061_
                                                       _g110059110063_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1109948_
                                                   _args110055_
                                                   _arglen110056_
                                                   _g110058110061_
                                                   _g110059110063_)))
                                              (let ((__tmp114494
                                                     (lambda (_g110065110068_
                                                              _g110066110070_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110065110068_
                                                               _g110066110070_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114494
                                                        '()
                                                        _L110036_))
                                              (let ((__tmp114495
                                                     (lambda (_g110072110075_
                                                              _g110073110077_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110072110075_
                                                               _g110073110077_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114495
                                                        '()
                                                        _L110035_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp114496 __tmp114493))))
                             (declare (not safe))
                             (cons 'cond __tmp114492))))
                      (declare (not safe))
                      (cons __tmp114491 '()))))
               (declare (not safe))
               (cons __tmp114502 __tmp114490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp114489))))
                                         (declare (not safe))
                                         (cons __tmp114488 '()))))
                                  (declare (not safe))
                                  (cons _args110055_ __tmp114487))))
                           (declare (not safe))
                           (cons 'lambda __tmp114486))))
                     _body109966110030_
                     _hd109967110032_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop109960109996_
                                               _target109957109991_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g109950109978_
                                             _g109951109981_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g109950109978_ _g109951109981_)))))
                        (let ()
                          (declare (not safe))
                          (_g109950109978_ _g109951109981_))))))
            (declare (not safe))
            (_g109949110080_ _stx109944_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self109214_ _stx109215_ _compiled-body?109216_)
        (letrec ((_generate-simple109218_
                  (lambda (_hd109928_ _body109929_)
                    (let ((__tmp114514
                           (let ((__tmp114515
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self109214_
                                     'let
                                     _hd109928_
                                     _body109929_
                                     _compiled-body?109216_))))
                             (declare (not safe))
                             (_coalesce-let*109220_ __tmp114515))))
                      (declare (not safe))
                      (_coalesce-boolean109219_ __tmp114514))))
                 (_coalesce-boolean109219_
                  (lambda (_code109789_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code109790109816_ _code109789_)
                               (_else109792109824_ (lambda () _code109789_))
                               (_K109794109861_
                                (lambda (_expr2109827_
                                         _expr1109828_
                                         _id109829_)
                                  (let* ((_expr2109830109838_ _expr2109827_)
                                         (_else109832109846_
                                          (lambda ()
                                            (let ((__tmp114516
                                                   (let ((__tmp114517
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2109827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1109828_
                                                           __tmp114517))))
                                              (declare (not safe))
                                              (cons 'or __tmp114516))))
                                         (_K109834109851_
                                          (lambda (_exprs109849_)
                                            (let ((__tmp114518
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1109828_
                                                           _exprs109849_))))
                                              (declare (not safe))
                                              (cons 'or __tmp114518)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2109830109838_))
                                        (let ((_hd109835109854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2109830109838_)))
                                              (_tl109836109856_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2109830109838_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109835109854_ 'or))
                                              (let ((_exprs109859_
                                                     _tl109836109856_))
                                                (declare (not safe))
                                                (_K109834109851_
                                                 _exprs109859_))
                                              (let ()
                                                (declare (not safe))
                                                (_else109832109846_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109832109846_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code109790109816_))
                              (let ((_hd109795109864_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code109790109816_)))
                                    (_tl109796109866_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code109790109816_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd109795109864_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl109796109866_))
                                        (let ((_hd109797109869_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl109796109866_)))
                                              (_tl109798109871_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl109796109866_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd109797109869_))
                                              (let ((_hd109809109874_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd109797109869_)))
                                                    (_tl109810109876_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd109797109869_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd109809109874_))
                                                    (let ((_hd109811109879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd109809109874_)))
                                                          (_tl109812109881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd109809109874_))))
                                                      (let ((_id109884_
                                                             _hd109811109879_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl109812109881_))
                                                            (let ((_hd109813109886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl109812109881_)))
                          (_tl109814109888_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl109812109881_))))
                      (let ((_expr1109891_ _hd109813109886_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl109814109888_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl109810109876_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl109798109871_))
                                    (let ((_hd109799109893_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl109798109871_)))
                                          (_tl109800109895_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl109798109871_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109799109893_))
                                          (let ((_hd109801109898_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109799109893_)))
                                                (_tl109802109900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109799109893_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109801109898_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl109802109900_))
                                                    (let ((_hd109803109903_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl109802109900_)))
                                                          (_tl109804109905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl109802109900_))))
                                                      (if ((lambda (_g109907109909_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g109907109909_ _id109884_)))
                   _hd109803109903_)
                  (if (let () (declare (not safe)) (##pair? _tl109804109905_))
                      (let ((_hd109805109912_
                             (let ()
                               (declare (not safe))
                               (##car _tl109804109905_)))
                            (_tl109806109914_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl109804109905_))))
                        (if ((lambda (_g109916109918_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g109916109918_ _id109884_)))
                             _hd109805109912_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl109806109914_))
                                (let ((_hd109807109921_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl109806109914_)))
                                      (_tl109808109923_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl109806109914_))))
                                  (let ((_expr2109926_ _hd109807109921_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl109808109923_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl109800109895_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109794109861_
                                               _expr2109926_
                                               _expr1109891_
                                               _id109884_))
                                            (let ()
                                              (declare (not safe))
                                              (_else109792109824_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else109792109824_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else109792109824_)))
                            (let ()
                              (declare (not safe))
                              (_else109792109824_))))
                      (let () (declare (not safe)) (_else109792109824_)))
                  (let () (declare (not safe)) (_else109792109824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109792109824_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else109792109824_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else109792109824_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109792109824_)))
                                (let ()
                                  (declare (not safe))
                                  (_else109792109824_)))
                            (let ()
                              (declare (not safe))
                              (_else109792109824_)))))
                    (let () (declare (not safe)) (_else109792109824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109792109824_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else109792109824_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109792109824_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else109792109824_))))
                              (let ()
                                (declare (not safe))
                                (_else109792109824_))))
                        _code109789_)))
                 (_coalesce-let*109220_
                  (lambda (_code109522_)
                    (let* ((_code109523109587_ _code109522_)
                           (_else109527109595_ (lambda () _code109522_)))
                      (let ((_K109569109740_
                             (lambda (_body109736_ _expr109737_ _id109738_)
                               (let ((__tmp114519
                                      (let ((__tmp114520
                                             (let ((__tmp114521
                                                    (let ((__tmp114522
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr109737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id109738_ __tmp114522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114521 '()))))
                                        (declare (not safe))
                                        (cons __tmp114520 _body109736_))))
                                 (declare (not safe))
                                 (cons 'let __tmp114519))))
                            (_K109546109665_
                             (lambda (_body109659_
                                      _expr2109660_
                                      _id2109661_
                                      _expr1109662_
                                      _id1109663_)
                               (let ((__tmp114523
                                      (let ((__tmp114524
                                             (let ((__tmp114528
                                                    (let ((__tmp114529
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109663_ __tmp114529)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114525
                                                    (let ((__tmp114526
                                                           (let ((__tmp114527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2109660_ '()))))
                     (declare (not safe))
                     (cons _id2109661_ __tmp114527))))
              (declare (not safe))
              (cons __tmp114526 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114528
                                                     __tmp114525))))
                                        (declare (not safe))
                                        (cons __tmp114524 _body109659_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114523))))
                            (_K109529109604_
                             (lambda (_body109599_
                                      _bind109600_
                                      _expr1109601_
                                      _id1109602_)
                               (let ((__tmp114530
                                      (let ((__tmp114531
                                             (let ((__tmp114532
                                                    (let ((__tmp114533
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109602_ __tmp114533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114532
                                                     _bind109600_))))
                                        (declare (not safe))
                                        (cons __tmp114531 _body109599_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114530)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code109523109587_))
                            (let ((_tl109571109745_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code109523109587_)))
                                  (_hd109570109743_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code109523109587_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd109570109743_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109571109745_))
                                      (let ((_tl109573109750_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109571109745_)))
                                            (_hd109572109748_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109571109745_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd109572109748_))
                                            (let ((_tl109581109755_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd109572109748_)))
                                                  (_hd109580109753_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd109572109748_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd109580109753_))
                                                  (let ((_tl109583109760_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd109580109753_)))
                                                        (_hd109582109758_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd109580109753_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109583109760_))
                                                        (let ((_tl109585109767_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109583109760_)))
                      (_hd109584109765_
                       (let () (declare (not safe)) (##car _tl109583109760_))))
                  (if (let () (declare (not safe)) (##null? _tl109585109767_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl109581109755_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl109573109750_))
                              (let ((_tl109575109774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl109573109750_)))
                                    (_hd109574109772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl109573109750_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109574109772_))
                                    (let ((_tl109577109779_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109574109772_)))
                                          (_hd109576109777_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109574109772_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd109576109777_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl109577109779_))
                                              (let ((_tl109579109784_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl109577109779_)))
                                                    (_hd109578109782_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl109577109779_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd109578109782_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109575109774_))
                                                        (let ((_id109763_
                                                               _hd109582109758_)
                                                              (_expr109770_
                                                               _hd109584109765_)
                                                              (_body109787_
                                                               _tl109579109784_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109569109740_
                                                             _body109787_
                                                             _expr109770_
                                                             _id109763_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109527109595_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd109578109782_))
                                                        (let ((_tl109558109714_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd109578109782_)))
                      (_hd109557109712_
                       (let () (declare (not safe)) (##car _hd109578109782_))))
                  (if (let () (declare (not safe)) (##pair? _hd109557109712_))
                      (let ((_tl109560109719_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd109557109712_)))
                            (_hd109559109717_
                             (let ()
                               (declare (not safe))
                               (##car _hd109557109712_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109560109719_))
                            (let ((_tl109562109726_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109560109719_)))
                                  (_hd109561109724_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109560109719_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109562109726_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl109558109714_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109575109774_))
                                          (let ((_id1109688_ _hd109582109758_)
                                                (_expr1109695_
                                                 _hd109584109765_)
                                                (_id2109722_ _hd109559109717_)
                                                (_expr2109729_
                                                 _hd109561109724_)
                                                (_body109731_
                                                 _tl109579109784_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109546109665_
                                               _body109731_
                                               _expr2109729_
                                               _id2109722_
                                               _expr1109695_
                                               _id1109688_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109527109595_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else109527109595_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109527109595_))))
                            (let ()
                              (declare (not safe))
                              (_else109527109595_))))
                      (let () (declare (not safe)) (_else109527109595_))))
                (let () (declare (not safe)) (_else109527109595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else109527109595_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109576109777_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl109577109779_))
                                                  (let ((_tl109539109648_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl109577109779_)))
                                                        (_hd109538109646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl109577109779_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109575109774_))
                                                        (let ((_id1109627_
                                                               _hd109582109758_)
                                                              (_expr1109634_
                                                               _hd109584109765_)
                                                              (_bind109651_
                                                               _hd109538109646_)
                                                              (_body109653_
                                                               _tl109539109648_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109529109604_
                                                             _body109653_
                                                             _bind109651_
                                                             _expr1109634_
                                                             _id1109627_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109527109595_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109527109595_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else109527109595_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109527109595_))))
                              (let ()
                                (declare (not safe))
                                (_else109527109595_)))
                          (let () (declare (not safe)) (_else109527109595_)))
                      (let () (declare (not safe)) (_else109527109595_))))
                (let () (declare (not safe)) (_else109527109595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109527109595_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else109527109595_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else109527109595_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109527109595_))))
                            (let ()
                              (declare (not safe))
                              (_else109527109595_)))))))
                 (_generate-values109221_
                  (lambda (_hd109335_ _body109336_)
                    (let _lp109338_ ((_rest109340_ _hd109335_)
                                     (_bind109341_ '())
                                     (_check109342_ '())
                                     (_post109343_ '()))
                      (let* ((___stx113469113470_ _rest109340_)
                             (_g109346109357_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113469113470_)))))
                        (let ((___kont113471113472_
                               (lambda (_L109384_ _L109385_)
                                 (let* ((___stx113425113426_ _L109385_)
                                        (_g109400109425_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113425113426_)))))
                                   (let ((___kont113427113428_
                                          (lambda (_L109498_ _L109499_)
                                            (let ((_eid109513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109499_)))
                                                  (_expr109514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self109214_
                                                      _L109498_))))
                                              (let ((__tmp114534
                                                     (let ((__tmp114535
                                                            (let ((__tmp114536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109514_ '()))))
                      (declare (not safe))
                      (cons _eid109513_ __tmp114536))))
               (declare (not safe))
               (cons __tmp114535 _bind109341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp109338_
                                                 _L109384_
                                                 __tmp114534
                                                 _check109342_
                                                 _post109343_)))))
                                         (___kont113429113430_
                                          (lambda (_L109446_ _L109447_)
                                            (let* ((_vals109460_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109462_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109460_
                                                       _L109447_
                                                       _L109446_)))
                                                   (_refs109464_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109460_
                                                       _L109447_)))
                                                   (_expr109466_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self109214_
                                                       _L109446_))))
                                              (let ((__tmp114539
                                                     (let ((__tmp114540
                                                            (let ((__tmp114541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109466_ '()))))
                      (declare (not safe))
                      (cons _vals109460_ __tmp114541))))
               (declare (not safe))
               (cons __tmp114540 _bind109341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114538
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109462_
                                                             _check109342_)))
                                                    (__tmp114537
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs109464_
                                                             _post109343_))))
                                                (declare (not safe))
                                                (_lp109338_
                                                 _L109384_
                                                 __tmp114539
                                                 __tmp114538
                                                 __tmp114537))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113425113426_))
                                         (let ((_e109406109474_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113425113426_))))
                                           (let ((_tl109404109479_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e109406109474_)))
                                                 (_hd109405109477_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e109406109474_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd109405109477_))
                                                 (let ((_e109409109482_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd109405109477_))))
                                                   (let ((_tl109407109487_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e109409109482_)))
                                                         (_hd109408109485_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e109409109482_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl109407109487_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl109404109479_))
                     (let ((_e109412109490_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109404109479_))))
                       (let ((_tl109410109495_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109412109490_)))
                             (_hd109411109493_
                              (let ()
                                (declare (not safe))
                                (##car _e109412109490_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109410109495_))
                             (___kont113427113428_
                              _hd109411109493_
                              _hd109408109485_)
                             (let () (declare (not safe)) (_g109400109425_)))))
                     (let () (declare (not safe)) (_g109400109425_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl109404109479_))
                     (let ((_e109420109438_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109404109479_))))
                       (let ((_tl109418109443_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109420109438_)))
                             (_hd109419109441_
                              (let ()
                                (declare (not safe))
                                (##car _e109420109438_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109418109443_))
                             (___kont113429113430_
                              _hd109419109441_
                              _hd109405109477_)
                             (let () (declare (not safe)) (_g109400109425_)))))
                     (let () (declare (not safe)) (_g109400109425_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl109404109479_))
                                                     (let ((_e109420109438_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl109404109479_))))
                                                       (let ((_tl109418109443_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e109420109438_)))
                     (_hd109419109441_
                      (let () (declare (not safe)) (##car _e109420109438_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl109418109443_))
                     (___kont113429113430_ _hd109419109441_ _hd109405109477_)
                     (let () (declare (not safe)) (_g109400109425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g109400109425_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g109400109425_)))))))
                              (___kont113473113474_
                               (lambda ()
                                 (let* ((_body109364_
                                         (if _compiled-body?109216_
                                             _body109336_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self109214_
                                                _body109336_))))
                                        (_body109366_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post109222_
                                            _post109343_
                                            _body109364_)))
                                        (_body109368_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check109223_
                                            _check109342_
                                            _body109366_))))
                                   (let ((__tmp114542
                                          (let ((__tmp114544
                                                 (reverse _bind109341_))
                                                (__tmp114543
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body109368_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114544 __tmp114543))))
                                     (declare (not safe))
                                     (cons 'let __tmp114542))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113469113470_))
                              (let ((_e109352109376_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113469113470_))))
                                (let ((_tl109350109381_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109352109376_)))
                                      (_hd109351109379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109352109376_))))
                                  (___kont113471113472_
                                   _tl109350109381_
                                   _hd109351109379_)))
                              (___kont113473113474_)))))))
                 (_generate-values-post109222_
                  (lambda (_post109294_ _body109295_)
                    (let _lp109297_ ((_rest109299_ _post109294_)
                                     (_body109300_ _body109295_))
                      (let* ((_rest109301109309_ _rest109299_)
                             (_else109303109317_ (lambda () _body109300_))
                             (_K109305109323_
                              (lambda (_rest109320_ _bind109321_)
                                (let ((__tmp114545
                                       (let ((__tmp114546
                                              (let ((__tmp114547
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body109300_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind109321_
                                                      __tmp114547))))
                                         (declare (not safe))
                                         (cons 'let __tmp114546))))
                                  (declare (not safe))
                                  (_lp109297_ _rest109320_ __tmp114545)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109301109309_))
                            (let ((_hd109306109326_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109301109309_)))
                                  (_tl109307109328_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109301109309_))))
                              (let* ((_bind109331_ _hd109306109326_)
                                     (_rest109333_ _tl109307109328_))
                                (declare (not safe))
                                (_K109305109323_ _rest109333_ _bind109331_)))
                            (let ()
                              (declare (not safe))
                              (_else109303109317_)))))))
                 (_generate-values-check109223_
                  (lambda (_check109291_ _body109292_)
                    (let ((__tmp114548
                           (let ((__tmp114550
                                  (let ()
                                    (declare (not safe))
                                    (cons _body109292_ '())))
                                 (__tmp114549 (reverse _check109291_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114550 __tmp114549))))
                      (declare (not safe))
                      (cons 'begin __tmp114548)))))
          (let* ((_g109225109242_
                  (lambda (_g109226109239_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109226109239_))))
                 (_g109224109288_
                  (lambda (_g109226109245_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109226109245_))
                        (let ((_e109231109247_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109226109245_))))
                          (let ((_hd109230109250_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109231109247_)))
                                (_tl109229109252_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109231109247_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl109229109252_))
                                (let ((_e109234109255_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl109229109252_))))
                                  (let ((_hd109233109258_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e109234109255_)))
                                        (_tl109232109260_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e109234109255_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109232109260_))
                                        (let ((_e109237109263_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109232109260_))))
                                          (let ((_hd109236109266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109237109263_)))
                                                (_tl109235109268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109237109263_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl109235109268_))
                                                ((lambda (_L109271_ _L109272_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L109272_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple109218_
                                                          _L109272_
                                                          _L109271_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values109221_
                                                          _L109272_
                                                          _L109271_))))
                                                 _hd109236109266_
                                                 _hd109233109258_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g109225109242_
                                                   _g109226109245_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109225109242_ _g109226109245_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g109225109242_ _g109226109245_)))))
                        (let ()
                          (declare (not safe))
                          (_g109225109242_ _g109226109245_))))))
            (declare (not safe))
            (_g109224109288_ _stx109215_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self109934_ _stx109935_)
        (let ((_compiled-body?109937_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self109934_
           _stx109935_
           _compiled-body?109937_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g114552_
        (let ((_g114551_ (let () (declare (not safe)) (##length _g114552_))))
          (cond ((let () (declare (not safe)) (##fx= _g114551_ 2))
                 (apply (lambda (_self109934_ _stx109935_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self109934_
                             _stx109935_)))
                        _g114552_))
                ((let () (declare (not safe)) (##fx= _g114551_ 3))
                 (apply (lambda (_self109939_
                                 _stx109940_
                                 _compiled-body?109941_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self109939_
                             _stx109940_
                             _compiled-body?109941_)))
                        _g114552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g114552_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals109108_ _hd109109_)
        (let _lp109111_ ((_rest109113_ _hd109109_)
                         (_k109114_ '0)
                         (_r109115_ '()))
          (let* ((___stx113483113484_ _rest109113_)
                 (_g109120109137_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx113483113484_)))))
            (let ((___kont113485113486_
                   (lambda (_L109200_)
                     (let ((__tmp114553
                            (let () (declare (not safe)) (fx+ _k109114_ '1))))
                       (declare (not safe))
                       (_lp109111_ _L109200_ __tmp114553 _r109115_))))
                  (___kont113487113488_
                   (lambda (_L109173_ _L109174_)
                     (let ((__tmp114559
                            (let () (declare (not safe)) (fx+ _k109114_ '1)))
                           (__tmp114554
                            (let ((__tmp114555
                                   (let ((__tmp114558
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109174_)))
                                         (__tmp114556
                                          (let ((__tmp114557
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals109108_
                                                    _k109114_
                                                    _L109173_))))
                                            (declare (not safe))
                                            (cons __tmp114557 '()))))
                                     (declare (not safe))
                                     (cons __tmp114558 __tmp114556))))
                              (declare (not safe))
                              (cons __tmp114555 _r109115_))))
                       (declare (not safe))
                       (_lp109111_ _L109173_ __tmp114559 __tmp114554))))
                  (___kont113489113490_
                   (lambda (_L109149_)
                     (let ((__tmp114560
                            (let ((__tmp114561
                                   (let ((__tmp114564
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109149_)))
                                         (__tmp114562
                                          (let ((__tmp114563
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals109108_
                                                    _k109114_))))
                                            (declare (not safe))
                                            (cons __tmp114563 '()))))
                                     (declare (not safe))
                                     (cons __tmp114564 __tmp114562))))
                              (declare (not safe))
                              (cons __tmp114561 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp114560 _r109115_))))
                  (___kont113491113492_ (lambda () (reverse _r109115_))))
              (let ((_g109118109160_
                     (lambda ()
                       (let ((_L109149_ ___stx113483113484_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L109149_))
                             (___kont113489113490_ _L109149_)
                             (___kont113491113492_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx113483113484_))
                    (let ((_e109125109189_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx113483113484_))))
                      (let ((_tl109123109194_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109125109189_)))
                            (_hd109124109192_
                             (let ()
                               (declare (not safe))
                               (##car _e109125109189_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd109124109192_))
                            (let ((_e109126109197_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd109124109192_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e109126109197_ '#f))
                                  (___kont113485113486_ _tl109123109194_)
                                  (___kont113487113488_
                                   _tl109123109194_
                                   _hd109124109192_)))
                            (___kont113487113488_
                             _tl109123109194_
                             _hd109124109192_))))
                    (let () (declare (not safe)) (_g109118109160_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self108787_ _stx108788_ _compiled-body?108789_)
        (letrec ((_generate-simple108791_
                  (lambda (_hd109093_ _body109094_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self108787_
                       'letrec
                       _hd109093_
                       _body109094_
                       _compiled-body?108789_))))
                 (_generate-values108792_
                  (lambda (_hd108872_ _body108873_)
                    (let _lp108875_ ((_rest108877_ _hd108872_)
                                     (_bind108878_ '())
                                     (_check108879_ '())
                                     (_post108880_ '()))
                      (let* ((___stx113557113558_ _rest108877_)
                             (_g108883108894_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113557113558_)))))
                        (let ((___kont113559113560_
                               (lambda (_L108921_ _L108922_)
                                 (let* ((___stx113513113514_ _L108922_)
                                        (_g108937108962_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113513113514_)))))
                                   (let ((___kont113515113516_
                                          (lambda (_L109069_ _L109070_)
                                            (let ((_eid109084_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109070_)))
                                                  (_expr109085_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108787_
                                                      _L109069_))))
                                              (let ((__tmp114565
                                                     (let ((__tmp114566
                                                            (let ((__tmp114567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109085_ '()))))
                      (declare (not safe))
                      (cons _eid109084_ __tmp114567))))
               (declare (not safe))
               (cons __tmp114566 _bind108878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108875_
                                                 _L108921_
                                                 __tmp114565
                                                 _check108879_
                                                 _post108880_)))))
                                         (___kont113517113518_
                                          (lambda (_L108983_ _L108984_)
                                            (let* ((_vals108997_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values108999_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals108997_
                                                       _L108984_
                                                       _L108983_)))
                                                   (_refs109001_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals108997_
                                                       _L108984_)))
                                                   (_expr109003_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108787_
                                                       _L108983_))))
                                              (let ((__tmp114570
                                                     (let ((__tmp114573
                                                            (let ((__tmp114574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114575
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr109003_ '()))))
                             (declare (not safe))
                             (cons _vals108997_ __tmp114575))))
                      (declare (not safe))
                      (cons __tmp114574 _bind108878_)))
                   (__tmp114571
                    (map (lambda (_e109005109007_)
                           (let* ((_g109009109018_ _e109005109007_)
                                  (_E109011109022_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g109009109018_))))
                                  (_K109012109027_
                                   (lambda (_eid109025_)
                                     (let ((__tmp114572
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid109025_ __tmp114572)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g109009109018_))
                                 (let ((_hd109013109030_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g109009109018_)))
                                       (_tl109014109032_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g109009109018_))))
                                   (let ((_eid109035_ _hd109013109030_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl109014109032_))
                                         (let ((_tl109016109037_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl109014109032_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl109016109037_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K109012109027_ _eid109035_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E109011109022_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E109011109022_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E109011109022_)))))
                         _refs109001_)))
               (declare (not safe))
               (foldl1 cons __tmp114573 __tmp114571)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114569
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values108999_
                                                             _check108879_)))
                                                    (__tmp114568
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs109001_
                                                               _post108880_))))
                                                (declare (not safe))
                                                (_lp108875_
                                                 _L108921_
                                                 __tmp114570
                                                 __tmp114569
                                                 __tmp114568))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113513113514_))
                                         (let ((_e108943109045_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113513113514_))))
                                           (let ((_tl108941109050_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e108943109045_)))
                                                 (_hd108942109048_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e108943109045_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd108942109048_))
                                                 (let ((_e108946109053_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd108942109048_))))
                                                   (let ((_tl108944109058_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e108946109053_)))
                                                         (_hd108945109056_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e108946109053_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl108944109058_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl108941109050_))
                     (let ((_e108949109061_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108941109050_))))
                       (let ((_tl108947109066_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108949109061_)))
                             (_hd108948109064_
                              (let ()
                                (declare (not safe))
                                (##car _e108949109061_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108947109066_))
                             (___kont113515113516_
                              _hd108948109064_
                              _hd108945109056_)
                             (let () (declare (not safe)) (_g108937108962_)))))
                     (let () (declare (not safe)) (_g108937108962_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl108941109050_))
                     (let ((_e108957108975_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108941109050_))))
                       (let ((_tl108955108980_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108957108975_)))
                             (_hd108956108978_
                              (let ()
                                (declare (not safe))
                                (##car _e108957108975_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108955108980_))
                             (___kont113517113518_
                              _hd108956108978_
                              _hd108942109048_)
                             (let () (declare (not safe)) (_g108937108962_)))))
                     (let () (declare (not safe)) (_g108937108962_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl108941109050_))
                                                     (let ((_e108957108975_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl108941109050_))))
                                                       (let ((_tl108955108980_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e108957108975_)))
                     (_hd108956108978_
                      (let () (declare (not safe)) (##car _e108957108975_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl108955108980_))
                     (___kont113517113518_ _hd108956108978_ _hd108942109048_)
                     (let () (declare (not safe)) (_g108937108962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g108937108962_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g108937108962_)))))))
                              (___kont113561113562_
                               (lambda ()
                                 (let* ((_body108901_
                                         (if _compiled-body?108789_
                                             _body108873_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108787_
                                                _body108873_))))
                                        (_body108903_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108794_
                                            _post108880_
                                            _body108901_)))
                                        (_body108905_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108793_
                                            _check108879_
                                            _body108903_))))
                                   (let ((__tmp114576
                                          (let ((__tmp114578
                                                 (reverse _bind108878_))
                                                (__tmp114577
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body108905_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114578 __tmp114577))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp114576))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113557113558_))
                              (let ((_e108889108913_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113557113558_))))
                                (let ((_tl108887108918_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108889108913_)))
                                      (_hd108888108916_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108889108913_))))
                                  (___kont113559113560_
                                   _tl108887108918_
                                   _hd108888108916_)))
                              (___kont113561113562_)))))))
                 (_generate-values-check108793_
                  (lambda (_check108869_ _body108870_)
                    (let ((__tmp114579
                           (let ((__tmp114581
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108870_ '())))
                                 (__tmp114580 (reverse _check108869_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114581 __tmp114580))))
                      (declare (not safe))
                      (cons 'begin __tmp114579))))
                 (_generate-values-post108794_
                  (lambda (_post108862_ _body108863_)
                    (let ((__tmp114582
                           (let ((__tmp114584
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108863_ '())))
                                 (__tmp114583
                                  (map (lambda (_g108864108866_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g108864108866_)))
                                       (reverse _post108862_))))
                             (declare (not safe))
                             (foldr1 cons __tmp114584 __tmp114583))))
                      (declare (not safe))
                      (cons 'begin __tmp114582)))))
          (let* ((_g108796108813_
                  (lambda (_g108797108810_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108797108810_))))
                 (_g108795108859_
                  (lambda (_g108797108816_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108797108816_))
                        (let ((_e108802108818_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108797108816_))))
                          (let ((_hd108801108821_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108802108818_)))
                                (_tl108800108823_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108802108818_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108800108823_))
                                (let ((_e108805108826_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108800108823_))))
                                  (let ((_hd108804108829_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108805108826_)))
                                        (_tl108803108831_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108805108826_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108803108831_))
                                        (let ((_e108808108834_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108803108831_))))
                                          (let ((_hd108807108837_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108808108834_)))
                                                (_tl108806108839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108808108834_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108806108839_))
                                                ((lambda (_L108842_ _L108843_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108843_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108791_
                                                          _L108843_
                                                          _L108842_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108792_
                                                          _L108843_
                                                          _L108842_))))
                                                 _hd108807108837_
                                                 _hd108804108829_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108796108813_
                                                   _g108797108816_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108796108813_ _g108797108816_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108796108813_ _g108797108816_)))))
                        (let ()
                          (declare (not safe))
                          (_g108796108813_ _g108797108816_))))))
            (declare (not safe))
            (_g108795108859_ _stx108788_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self109099_ _stx109100_)
        (let ((_compiled-body?109102_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self109099_
           _stx109100_
           _compiled-body?109102_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g114586_
        (let ((_g114585_ (let () (declare (not safe)) (##length _g114586_))))
          (cond ((let () (declare (not safe)) (##fx= _g114585_ 2))
                 (apply (lambda (_self109099_ _stx109100_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self109099_
                             _stx109100_)))
                        _g114586_))
                ((let () (declare (not safe)) (##fx= _g114585_ 3))
                 (apply (lambda (_self109104_
                                 _stx109105_
                                 _compiled-body?109106_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self109104_
                             _stx109105_
                             _compiled-body?109106_)))
                        _g114586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g114586_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self108368_ _stx108369_)
        (letrec ((_generate-values108371_
                  (lambda (_hd108614_ _body108615_)
                    (let _lp108617_ ((_rest108619_ _hd108614_)
                                     (_bind108620_ '()))
                      (let* ((_rest108621108629_ _rest108619_)
                             (_else108623108640_
                              (lambda ()
                                (let ((_bind108637_ (reverse _bind108620_))
                                      (_body108638_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self108368_
                                          _body108615_))))
                                  (let ((__tmp114587
                                         (let ((__tmp114588
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body108638_ '()))))
                                           (declare (not safe))
                                           (cons _bind108637_ __tmp114588))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp114587)))))
                             (_K108625108774_
                              (lambda (_rest108643_ _hd-bind108644_)
                                (let* ((___stx113571113572_ _hd-bind108644_)
                                       (_g108647108672_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113571113572_)))))
                                  (let ((___kont113573113574_
                                         (lambda (_L108753_ _L108754_)
                                           (let ((_eid108768_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L108754_)))
                                                 (_expr108769_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self108368_
                                                     _L108753_))))
                                             (let ((__tmp114589
                                                    (let ((__tmp114590
                                                           (let ((__tmp114591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr108769_ '()))))
                     (declare (not safe))
                     (cons _eid108768_ __tmp114591))))
              (declare (not safe))
              (cons __tmp114590 _bind108620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108617_
                                                _rest108643_
                                                __tmp114589)))))
                                        (___kont113575113576_
                                         (lambda (_L108693_ _L108694_)
                                           (let* ((_vals108713_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp108715_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values108717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp108715_
                                                      _L108694_
                                                      _L108693_)))
                                                  (_refs108719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals108713_
                                                      _L108694_)))
                                                  (_expr108721_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108368_
                                                      _L108693_))))
                                             (let ((__tmp114592
                                                    (let ((__tmp114593
                                                           (let ((__tmp114594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114595
                                 (let ((__tmp114596
                                        (let ((__tmp114597
                                               (let ((__tmp114600
                                                      (let ((__tmp114601
                                                             (let ((__tmp114602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr108721_ '()))))
                       (declare (not safe))
                       (cons _tmp108715_ __tmp114602))))
                (declare (not safe))
                (cons __tmp114601 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114598
                                                      (let ((__tmp114599
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp108715_ '()))))
                (declare (not safe))
                (cons _check-values108717_ __tmp114599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114600
                                                       __tmp114598))))
                                          (declare (not safe))
                                          (cons 'let __tmp114597))))
                                   (declare (not safe))
                                   (cons __tmp114596 '()))))
                            (declare (not safe))
                            (cons _vals108713_ __tmp114595))))
                     (declare (not safe))
                     (cons __tmp114594 _bind108620_))))
              (declare (not safe))
              (foldl1 cons __tmp114593 _refs108719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108617_
                                                _rest108643_
                                                __tmp114592))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113571113572_))
                                        (let ((_e108653108729_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113571113572_))))
                                          (let ((_tl108651108734_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108653108729_)))
                                                (_hd108652108732_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108653108729_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108652108732_))
                                                (let ((_e108656108737_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108652108732_))))
                                                  (let ((_tl108654108742_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108656108737_)))
                                                        (_hd108655108740_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108656108737_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl108654108742_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108651108734_))
                                                            (let ((_e108659108745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108651108734_))))
                      (let ((_tl108657108750_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108659108745_)))
                            (_hd108658108748_
                             (let ()
                               (declare (not safe))
                               (##car _e108659108745_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108657108750_))
                            (___kont113573113574_
                             _hd108658108748_
                             _hd108655108740_)
                            (let () (declare (not safe)) (_g108647108672_)))))
                    (let () (declare (not safe)) (_g108647108672_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl108651108734_))
                    (let ((_e108667108685_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108651108734_))))
                      (let ((_tl108665108690_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108667108685_)))
                            (_hd108666108688_
                             (let ()
                               (declare (not safe))
                               (##car _e108667108685_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108665108690_))
                            (___kont113575113576_
                             _hd108666108688_
                             _hd108652108732_)
                            (let () (declare (not safe)) (_g108647108672_)))))
                    (let () (declare (not safe)) (_g108647108672_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl108651108734_))
                                                    (let ((_e108667108685_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl108651108734_))))
                                                      (let ((_tl108665108690_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108667108685_)))
                    (_hd108666108688_
                     (let () (declare (not safe)) (##car _e108667108685_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl108665108690_))
                    (___kont113575113576_ _hd108666108688_ _hd108652108732_)
                    (let () (declare (not safe)) (_g108647108672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108647108672_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108647108672_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108621108629_))
                            (let ((_hd108626108777_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108621108629_)))
                                  (_tl108627108779_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108621108629_))))
                              (let* ((_hd-bind108782_ _hd108626108777_)
                                     (_rest108784_ _tl108627108779_))
                                (declare (not safe))
                                (_K108625108774_
                                 _rest108784_
                                 _hd-bind108782_)))
                            (let ()
                              (declare (not safe))
                              (_else108623108640_)))))))
                 (_generate-letrec?108372_
                  (lambda (_hd108504_)
                    (let _lp108506_ ((_rest108508_ _hd108504_))
                      (let* ((_rest108509108517_ _rest108508_)
                             (_else108511108525_ (lambda () '#t))
                             (_K108513108602_
                              (lambda (_rest108528_ _hd-bind108529_)
                                (let* ((_g108531108548_
                                        (lambda (_g108532108545_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g108532108545_))))
                                       (_g108530108599_
                                        (lambda (_g108532108551_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g108532108551_))
                                              (let ((_e108537108553_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g108532108551_))))
                                                (let ((_hd108536108556_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108537108553_)))
                                                      (_tl108535108558_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108537108553_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd108536108556_))
                                                      (let ((_e108540108561_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd108536108556_))))
                (let ((_hd108539108564_
                       (let () (declare (not safe)) (##car _e108540108561_)))
                      (_tl108538108566_
                       (let () (declare (not safe)) (##cdr _e108540108561_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108538108566_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108535108558_))
                          (let ((_e108543108569_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108535108558_))))
                            (let ((_hd108542108572_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108543108569_)))
                                  (_tl108541108574_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108543108569_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl108541108574_))
                                  ((lambda (_L108577_ _L108578_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?108373_ _L108577_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp108506_ _rest108528_))
                                         '#f))
                                   _hd108542108572_
                                   _hd108539108564_)
                                  (let ()
                                    (declare (not safe))
                                    (_g108531108548_ _g108532108551_)))))
                          (let ()
                            (declare (not safe))
                            (_g108531108548_ _g108532108551_)))
                      (let ()
                        (declare (not safe))
                        (_g108531108548_ _g108532108551_)))))
              (let ()
                (declare (not safe))
                (_g108531108548_ _g108532108551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108531108548_
                                                 _g108532108551_))))))
                                  (declare (not safe))
                                  (_g108530108599_ _hd-bind108529_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108509108517_))
                            (let ((_hd108514108605_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108509108517_)))
                                  (_tl108515108607_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108509108517_))))
                              (let* ((_hd-bind108610_ _hd108514108605_)
                                     (_rest108612_ _tl108515108607_))
                                (declare (not safe))
                                (_K108513108602_
                                 _rest108612_
                                 _hd-bind108610_)))
                            (let ()
                              (declare (not safe))
                              (_else108511108525_)))))))
                 (_is-lambda-expr?108373_
                  (lambda (_expr108441_)
                    (let* ((___stx113615113616_ _expr108441_)
                           (_g108444108458_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113615113616_)))))
                      (let ((___kont113617113618_
                             (lambda (_L108486_ _L108487_) '#t))
                            (___kont113619113620_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx113615113616_))
                            (let ((_e108450108470_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx113615113616_))))
                              (let ((_tl108448108475_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108450108470_)))
                                    (_hd108449108473_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108450108470_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108449108473_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd108449108473_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108448108475_))
                                            (let ((_e108453108478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108448108475_))))
                                              (let ((_tl108451108483_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108453108478_)))
                                                    (_hd108452108481_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108453108478_))))
                                                (___kont113617113618_
                                                 _tl108451108483_
                                                 _hd108452108481_)))
                                            (___kont113619113620_))
                                        (___kont113619113620_))
                                    (___kont113619113620_))))
                            (___kont113619113620_)))))))
          (let* ((_g108375108392_
                  (lambda (_g108376108389_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108376108389_))))
                 (_g108374108438_
                  (lambda (_g108376108395_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108376108395_))
                        (let ((_e108381108397_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108376108395_))))
                          (let ((_hd108380108400_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108381108397_)))
                                (_tl108379108402_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108381108397_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108379108402_))
                                (let ((_e108384108405_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108379108402_))))
                                  (let ((_hd108383108408_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108384108405_)))
                                        (_tl108382108410_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108384108405_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108382108410_))
                                        (let ((_e108387108413_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108382108410_))))
                                          (let ((_hd108386108416_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108387108413_)))
                                                (_tl108385108418_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108387108413_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108385108418_))
                                                ((lambda (_L108421_ _L108422_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108422_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?108372_
                                                              _L108422_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108368_
                                                              'letrec
                                                              _L108422_
                                                              _L108421_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108368_
                                                              'letrec*
                                                              _L108422_
                                                              _L108421_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108371_
                                                          _L108422_
                                                          _L108421_))))
                                                 _hd108386108416_
                                                 _hd108383108408_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108375108392_
                                                   _g108376108395_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108375108392_ _g108376108395_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108375108392_ _g108376108395_)))))
                        (let ()
                          (declare (not safe))
                          (_g108375108392_ _g108376108395_))))))
            (declare (not safe))
            (_g108374108438_ _stx108369_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd108305_)
        (let _lp108307_ ((_rest108309_ _hd108305_))
          (let* ((_rest108310108326_ _rest108309_)
                 (_else108313108334_ (lambda () '#f)))
            (let ((_K108316108347_
                   (lambda (_rest108345_)
                     (let () (declare (not safe)) (_lp108307_ _rest108345_))))
                  (_K108315108339_ (lambda () '#t)))
              (let ((_try-match108312108342_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest108310108326_))
                           (let () (declare (not safe)) (_K108315108339_))
                           (let ()
                             (declare (not safe))
                             (_else108313108334_))))))
                (if (let () (declare (not safe)) (##pair? _rest108310108326_))
                    (let ((_tl108318108352_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest108310108326_)))
                          (_hd108317108350_
                           (let ()
                             (declare (not safe))
                             (##car _rest108310108326_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd108317108350_))
                          (let ((_tl108320108357_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd108317108350_)))
                                (_hd108319108355_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd108317108350_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108319108355_))
                                (let ((_tl108324108360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108319108355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl108324108360_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108320108357_))
                                          (let ((_tl108322108363_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108320108357_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl108322108363_))
                                                (let ((_rest108366_
                                                       _tl108318108352_))
                                                  (declare (not safe))
                                                  (_lp108307_ _rest108366_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108313108334_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108313108334_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else108313108334_))))
                                (let ()
                                  (declare (not safe))
                                  (_else108313108334_))))
                          (let () (declare (not safe)) (_else108313108334_))))
                    (let ()
                      (declare (not safe))
                      (_try-match108312108342_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self108216_
               _form108217_
               _hd108218_
               _body108219_
               _compiled-body?108220_)
        (letrec ((_generate1108222_
                  (lambda (_bind108261_)
                    (let* ((_bind108262108273_ _bind108261_)
                           (_E108264108277_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind108262108273_))))
                           (_K108265108283_
                            (lambda (_expr108280_ _id108281_)
                              (let ((__tmp114605
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id108281_)))
                                    (__tmp114603
                                     (let ((__tmp114604
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self108216_
                                               _expr108280_))))
                                       (declare (not safe))
                                       (cons __tmp114604 '()))))
                                (declare (not safe))
                                (cons __tmp114605 __tmp114603)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind108262108273_))
                          (let ((_hd108266108286_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind108262108273_)))
                                (_tl108267108288_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind108262108273_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108266108286_))
                                (let ((_hd108270108291_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd108266108286_)))
                                      (_tl108271108293_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108266108286_))))
                                  (let ((_id108296_ _hd108270108291_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl108271108293_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl108267108288_))
                                            (let ((_hd108268108298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl108267108288_)))
                                                  (_tl108269108300_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl108267108288_))))
                                              (let ((_expr108303_
                                                     _hd108268108298_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl108269108300_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K108265108283_
                                                       _expr108303_
                                                       _id108296_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E108264108277_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E108264108277_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E108264108277_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E108264108277_))))
                          (let () (declare (not safe)) (_E108264108277_)))))))
          (let* ((_bind108224_ (map _generate1108222_ _hd108218_))
                 (_body108226_
                  (if _compiled-body?108220_
                      _body108219_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self108216_ _body108219_))))
                 (_body108258_
                  (let* ((_body108227108235_ _body108226_)
                         (_else108229108243_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body108226_ '()))))
                         (_K108231108248_
                          (lambda (_exprs108246_) _exprs108246_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body108227108235_))
                        (let ((_hd108232108251_
                               (let ()
                                 (declare (not safe))
                                 (##car _body108227108235_)))
                              (_tl108233108253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body108227108235_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd108232108251_ 'begin))
                              (let ((_exprs108256_ _tl108233108253_))
                                (declare (not safe))
                                (_K108231108248_ _exprs108256_))
                              (let ()
                                (declare (not safe))
                                (_else108229108243_))))
                        (let () (declare (not safe)) (_else108229108243_))))))
            (let ((__tmp114606
                   (let ()
                     (declare (not safe))
                     (cons _bind108224_ _body108258_))))
              (declare (not safe))
              (cons _form108217_ __tmp114606))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self108123_ _stx108124_)
        (letrec ((_generate1108126_
                  (lambda (_datum108178_)
                    (if (or (let () (declare (not safe)) (null? _datum108178_))
                            (interned-symbol? _datum108178_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum108178_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum108178_)))
                        _datum108178_
                        (if (uninterned-symbol? _datum108178_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum108178_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum108178_))
                                (let ((__tmp114611
                                       (let ((__tmp114612 (car _datum108178_)))
                                         (declare (not safe))
                                         (_generate1108126_ __tmp114612)))
                                      (__tmp114609
                                       (let ((__tmp114610 (cdr _datum108178_)))
                                         (declare (not safe))
                                         (_generate1108126_ __tmp114610))))
                                  (declare (not safe))
                                  (cons __tmp114611 __tmp114609))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum108178_))
                                    (let ((__tmp114607
                                           (let ((__tmp114608
                                                  (unbox _datum108178_)))
                                             (declare (not safe))
                                             (_generate1108126_ __tmp114608))))
                                      (declare (not safe))
                                      (box __tmp114607))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum108178_))
                                        (vector-map
                                         _generate1108126_
                                         _datum108178_)
                                        (if (or (s8vector? _datum108178_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum108178_))
                                                (s16vector? _datum108178_)
                                                (u16vector? _datum108178_)
                                                (s32vector? _datum108178_)
                                                (u32vector? _datum108178_)
                                                (s64vector? _datum108178_)
                                                (u64vector? _datum108178_)
                                                (f32vector? _datum108178_)
                                                (f64vector? _datum108178_))
                                            _datum108178_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx108124_)))))))))))
          (let* ((_g108128108141_
                  (lambda (_g108129108138_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108129108138_))))
                 (_g108127108175_
                  (lambda (_g108129108144_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108129108144_))
                        (let ((_e108133108146_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108129108144_))))
                          (let ((_hd108132108149_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108133108146_)))
                                (_tl108131108151_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108133108146_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108131108151_))
                                (let ((_e108136108154_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108131108151_))))
                                  (let ((_hd108135108157_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108136108154_)))
                                        (_tl108134108159_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108136108154_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl108134108159_))
                                        ((lambda (_L108162_)
                                           (let ((__tmp114613
                                                  (let ((__tmp114614
                                                         (let ((__tmp114615
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L108162_))))
                   (declare (not safe))
                   (_generate1108126_ __tmp114615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114614 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp114613)))
                                         _hd108135108157_)
                                        (let ()
                                          (declare (not safe))
                                          (_g108128108141_ _g108129108144_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108128108141_ _g108129108144_)))))
                        (let ()
                          (declare (not safe))
                          (_g108128108141_ _g108129108144_))))))
            (declare (not safe))
            (_g108127108175_ _stx108124_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self107636_ _stx107637_)
        (letrec ((_compile-call107639_
                  (lambda (_rator107863_ _rands107864_)
                    (let ((_rator107870_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self107636_ _rator107863_)))
                          (_rands107871_
                           (map (lambda (_g107865107867_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self107636_
                                     _g107865107867_)))
                                _rands107864_)))
                      (let* ((___stx113662113663_ _rator107870_)
                             (_g107874107926_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113662113663_)))))
                        (let ((___kont113664113665_
                               (lambda (_L108050_
                                        _L108051_
                                        _L108052_
                                        _L108053_)
                                 (if (fx= (length _rands107871_)
                                          (length (let ((__tmp114620
                                                         (lambda (_g108089108092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108090108094_)
                   (let ()
                     (declare (not safe))
                     (cons _g108089108092_ _g108090108094_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114620
                                                            '()
                                                            _L108052_))))
                                     (let* ((_id108097_ _L108053_)
                                            (_args108106_
                                             (let ((__tmp114616
                                                    (lambda (_g108098108101_
                                                             _g108099108103_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108098108101_
                                                              _g108099108103_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114616
                                                       '()
                                                       _L108052_)))
                                            (_body108115_
                                             (let ((__tmp114617
                                                    (lambda (_g108107108110_
                                                             _g108108108112_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108107108110_
                                                              _g108108108112_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114617
                                                       '()
                                                       _L108051_)))
                                            (_init108117_
                                             (map list
                                                  _args108106_
                                                  _rands107871_)))
                                       (let ((__tmp114618
                                              (let ((__tmp114619
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init108117_
                                                             _body108115_))))
                                                (declare (not safe))
                                                (cons _id108097_
                                                      __tmp114619))))
                                         (declare (not safe))
                                         (cons 'let __tmp114618)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx107637_)))))
                              (___kont113670113671_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator107870_ _rands107871_)))))
                          (let ((___match113729113730_
                                 (lambda (_e107882107938_
                                          _hd107881107941_
                                          _tl107880107943_
                                          _e107885107946_
                                          _hd107884107949_
                                          _tl107883107951_
                                          _e107888107954_
                                          _hd107887107957_
                                          _tl107886107959_
                                          _e107891107962_
                                          _hd107890107965_
                                          _tl107889107967_
                                          _e107894107970_
                                          _hd107893107973_
                                          _tl107892107975_
                                          _e107897107978_
                                          _hd107896107981_
                                          _tl107895107983_
                                          _e107900107986_
                                          _hd107899107989_
                                          _tl107898107991_
                                          ___splice113666113667_
                                          _target107901107994_
                                          _tl107903107996_)
                                   (letrec ((_loop107904107999_
                                             (lambda (_hd107902108002_
                                                      _arg107908108004_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd107902108002_))
                                                   (let ((_e107905108007_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd107902108002_))))
                                                     (let ((_lp-tl107907108012_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107905108007_)))
                                                           (_lp-hd107906108010_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107905108007_))))
                                                       (let ((__tmp114622
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd107906108010_ _arg107908108004_))))
                 (declare (not safe))
                 (_loop107904107999_ _lp-tl107907108012_ __tmp114622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg107909108015_
                                                          (reverse _arg107908108004_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl107898107991_))
                                                         (let ((___splice113668113669_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl107898107991_ '0))))
                   (let ((_tl107912108020_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113668113669_ '1)))
                         (_target107910108018_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113668113669_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl107912108020_))
                         (letrec ((_loop107913108023_
                                   (lambda (_hd107911108026_
                                            _body107917108028_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd107911108026_))
                                         (let ((_e107914108031_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd107911108026_))))
                                           (let ((_lp-tl107916108036_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107914108031_)))
                                                 (_lp-hd107915108034_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107914108031_))))
                                             (let ((__tmp114621
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd107915108034_
                                                            _body107917108028_))))
                                               (declare (not safe))
                                               (_loop107913108023_
                                                _lp-tl107916108036_
                                                __tmp114621))))
                                         (let ((_body107918108039_
                                                (reverse _body107917108028_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl107892107975_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl107886107959_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl107883107951_))
                                                       (let ((_e107921108042_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl107883107951_))))
                 (let ((_tl107919108047_
                        (let () (declare (not safe)) (##cdr _e107921108042_)))
                       (_hd107920108045_
                        (let () (declare (not safe)) (##car _e107921108042_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl107919108047_))
                       (let ((_L108050_ _hd107920108045_)
                             (_L108051_ _body107918108039_)
                             (_L108052_ _arg107909108015_)
                             (_L108053_ _hd107890107965_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L108053_ _L108050_))
                             (___kont113664113665_
                              _L108050_
                              _L108051_
                              _L108052_
                              _L108053_)
                             (___kont113670113671_)))
                       (___kont113670113671_))))
               (___kont113670113671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113670113671_))
                                               (___kont113670113671_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop107913108023_ _target107910108018_ '())))
                         (___kont113670113671_))))
                 (___kont113670113671_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop107904107999_
                                        _target107901107994_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx113662113663_))
                                (let ((_e107882107938_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx113662113663_))))
                                  (let ((_tl107880107943_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107882107938_)))
                                        (_hd107881107941_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107882107938_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107881107941_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd107881107941_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107880107943_))
                                                (let ((_e107885107946_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107880107943_))))
                                                  (let ((_tl107883107951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107885107946_)))
                                                        (_hd107884107949_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107885107946_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107884107949_))
                                                        (let ((_e107888107954_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107884107949_))))
                  (let ((_tl107886107959_
                         (let () (declare (not safe)) (##cdr _e107888107954_)))
                        (_hd107887107957_
                         (let ()
                           (declare (not safe))
                           (##car _e107888107954_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107887107957_))
                        (let ((_e107891107962_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107887107957_))))
                          (let ((_tl107889107967_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107891107962_)))
                                (_hd107890107965_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107891107962_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107889107967_))
                                (let ((_e107894107970_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107889107967_))))
                                  (let ((_tl107892107975_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107894107970_)))
                                        (_hd107893107973_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107894107970_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd107893107973_))
                                        (let ((_e107897107978_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd107893107973_))))
                                          (let ((_tl107895107983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107897107978_)))
                                                (_hd107896107981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107897107978_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107896107981_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd107896107981_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107895107983_))
                                                        (let ((_e107900107986_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107895107983_))))
                  (let ((_tl107898107991_
                         (let () (declare (not safe)) (##cdr _e107900107986_)))
                        (_hd107899107989_
                         (let ()
                           (declare (not safe))
                           (##car _e107900107986_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd107899107989_))
                        (let ((___splice113666113667_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd107899107989_
                                  '0))))
                          (let ((_tl107903107996_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113666113667_ '1)))
                                (_target107901107994_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113666113667_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107903107996_))
                                (___match113729113730_
                                 _e107882107938_
                                 _hd107881107941_
                                 _tl107880107943_
                                 _e107885107946_
                                 _hd107884107949_
                                 _tl107883107951_
                                 _e107888107954_
                                 _hd107887107957_
                                 _tl107886107959_
                                 _e107891107962_
                                 _hd107890107965_
                                 _tl107889107967_
                                 _e107894107970_
                                 _hd107893107973_
                                 _tl107892107975_
                                 _e107897107978_
                                 _hd107896107981_
                                 _tl107895107983_
                                 _e107900107986_
                                 _hd107899107989_
                                 _tl107898107991_
                                 ___splice113666113667_
                                 _target107901107994_
                                 _tl107903107996_)
                                (___kont113670113671_))))
                        (___kont113670113671_))))
                (___kont113670113671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113670113671_))
                                                (___kont113670113671_))))
                                        (___kont113670113671_))))
                                (___kont113670113671_))))
                        (___kont113670113671_))))
                (___kont113670113671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113670113671_))
                                            (___kont113670113671_))
                                        (___kont113670113671_))))
                                (___kont113670113671_)))))))))
          (let* ((_g107641107655_
                  (lambda (_g107642107652_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107642107652_))))
                 (_g107640107860_
                  (lambda (_g107642107658_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107642107658_))
                        (let ((_e107647107660_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107642107658_))))
                          (let ((_hd107646107663_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107647107660_)))
                                (_tl107645107665_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107647107660_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107645107665_))
                                (let ((_e107650107668_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107645107665_))))
                                  (let ((_hd107649107671_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107650107668_)))
                                        (_tl107648107673_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107650107668_))))
                                    ((lambda (_L107676_ _L107677_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call107639_
                                              _L107677_
                                              _L107676_))
                                           (let* ((___stx113778113779_
                                                   _L107677_)
                                                  (_g107692107704_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx113778113779_)))))
                                             (let ((___kont113780113781_
                                                    (lambda ()
                                                      (let ((_f107734_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self107636_ _L107677_))))
                (if (let ((__tmp114637 (symbol->string _f107734_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp114637))
                    (let _lp107736_ ((_rest107739_ (reverse _L107676_))
                                     (_bind107741_ '())
                                     (_args107742_ '()))
                      (let* ((_rest107743107751_ _rest107739_)
                             (_else107745107759_
                              (lambda ()
                                (let ((__tmp114623
                                       (let ((__tmp114624
                                              (let ((__tmp114625
                                                     (let ((__tmp114626
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f107734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args107742_))))
               (declare (not safe))
               (cons __tmp114626 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp114625))))
                                         (declare (not safe))
                                         (cons _bind107741_ __tmp114624))))
                                  (declare (not safe))
                                  (cons 'let __tmp114623))))
                             (_K107747107845_
                              (lambda (_rest107762_ _e107763_)
                                (let* ((___stx113732113733_ _e107763_)
                                       (_g107768107786_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113732113733_)))))
                                  (let ((___kont113734113735_
                                         (lambda ()
                                           (let ((__tmp114627
                                                  (let ((__tmp114628
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107763_))))
                                                    (declare (not safe))
                                                    (cons __tmp114628
                                                          _args107742_))))
                                             (declare (not safe))
                                             (_lp107736_
                                              _rest107762_
                                              _bind107741_
                                              __tmp114627))))
                                        (___kont113736113737_
                                         (lambda ()
                                           (let ((__tmp114629
                                                  (let ((__tmp114630
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107763_))))
                                                    (declare (not safe))
                                                    (cons __tmp114630
                                                          _args107742_))))
                                             (declare (not safe))
                                             (_lp107736_
                                              _rest107762_
                                              _bind107741_
                                              __tmp114629))))
                                        (___kont113738113739_
                                         (lambda ()
                                           (let ((_tmp107793_
                                                  (let ((__tmp114631
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp114631))))
                                             (let ((__tmp114633
                                                    (let ((__tmp114634
                                                           (let ((__tmp114635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114636
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e107763_))))
                            (declare (not safe))
                            (cons __tmp114636 '()))))
                     (declare (not safe))
                     (cons _tmp107793_ __tmp114635))))
              (declare (not safe))
              (cons __tmp114634 _bind107741_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114632
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp107793_
                                                            _args107742_))))
                                               (declare (not safe))
                                               (_lp107736_
                                                _rest107762_
                                                __tmp114633
                                                __tmp114632))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113732113733_))
                                        (let ((_e107772107824_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113732113733_))))
                                          (let ((_tl107770107829_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107772107824_)))
                                                (_hd107771107827_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107772107824_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107771107827_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd107771107827_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107770107829_))
                                                        (let ((_e107775107832_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107770107829_))))
                  (let ((_tl107773107837_
                         (let () (declare (not safe)) (##cdr _e107775107832_)))
                        (_hd107774107835_
                         (let ()
                           (declare (not safe))
                           (##car _e107775107832_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl107773107837_))
                        (___kont113734113735_)
                        (___kont113738113739_))))
                (___kont113738113739_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd107771107827_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107770107829_))
                                                            (let ((_e107781107809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107770107829_))))
                      (let ((_tl107779107814_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107781107809_)))
                            (_hd107780107812_
                             (let ()
                               (declare (not safe))
                               (##car _e107781107809_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107779107814_))
                            (___kont113736113737_)
                            (___kont113738113739_))))
                    (___kont113738113739_))
                (___kont113738113739_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113738113739_))))
                                        (___kont113738113739_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107743107751_))
                            (let ((_hd107748107848_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107743107751_)))
                                  (_tl107749107850_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107743107751_))))
                              (let* ((_e107853_ _hd107748107848_)
                                     (_rest107855_ _tl107749107850_))
                                (declare (not safe))
                                (_K107747107845_ _rest107855_ _e107853_)))
                            (let ()
                              (declare (not safe))
                              (_else107745107759_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call107639_ _L107677_ _L107676_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113782113783_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call107639_
                                                         _L107677_
                                                         _L107676_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx113778113779_))
                                                   (let ((_e107696107716_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx113778113779_))))
                                                     (let ((_tl107694107721_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107696107716_)))
                                                           (_hd107695107719_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107696107716_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd107695107719_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd107695107719_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl107694107721_))
                           (let ((_e107699107724_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl107694107721_))))
                             (let ((_tl107697107729_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e107699107724_)))
                                   (_hd107698107727_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e107699107724_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl107697107729_))
                                   (___kont113780113781_)
                                   (___kont113782113783_))))
                           (___kont113782113783_))
                       (___kont113782113783_))
                   (___kont113782113783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113782113783_))))))
                                     _tl107648107673_
                                     _hd107649107671_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107641107655_ _g107642107658_)))))
                        (let ()
                          (declare (not safe))
                          (_g107641107655_ _g107642107658_))))))
            (declare (not safe))
            (_g107640107860_ _stx107637_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self107423_ _stx107424_)
        (let* ((___stx113850113851_ _stx107424_)
               (_g107427107447_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113850113851_)))))
          (let ((___kont113852113853_
                 (lambda (_L107491_ _L107492_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self107423_ _stx107424_))
                       (let ((_f107510_
                              (let ((__tmp114638
                                     (let ((__tmp114640
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp114639
                                            (let ()
                                              (declare (not safe))
                                              (cons _L107492_ '()))))
                                       (declare (not safe))
                                       (cons __tmp114640 __tmp114639))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self107423_ __tmp114638))))
                         (let _lp107512_ ((_rest107515_ (reverse _L107491_))
                                          (_bind107517_ '())
                                          (_args107518_ '()))
                           (let* ((_rest107519107527_ _rest107515_)
                                  (_else107521107535_
                                   (lambda ()
                                     (let ((__tmp114641
                                            (let ((__tmp114642
                                                   (let ((__tmp114643
                                                          (let ((__tmp114644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f107510_ _args107518_))))
                    (declare (not safe))
                    (cons __tmp114644 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp114643))))
                                              (declare (not safe))
                                              (cons _bind107517_
                                                    __tmp114642))))
                                       (declare (not safe))
                                       (cons 'let __tmp114641))))
                                  (_K107523107621_
                                   (lambda (_rest107538_ _e107539_)
                                     (let* ((___stx113804113805_ _e107539_)
                                            (_g107544107562_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx113804113805_)))))
                                       (let ((___kont113806113807_
                                              (lambda ()
                                                (let ((__tmp114645
                                                       (let ((__tmp114646
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107539_))))
                 (declare (not safe))
                 (cons __tmp114646 _args107518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107512_
                                                   _rest107538_
                                                   _bind107517_
                                                   __tmp114645))))
                                             (___kont113808113809_
                                              (lambda ()
                                                (let ((__tmp114647
                                                       (let ((__tmp114648
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107539_))))
                 (declare (not safe))
                 (cons __tmp114648 _args107518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107512_
                                                   _rest107538_
                                                   _bind107517_
                                                   __tmp114647))))
                                             (___kont113810113811_
                                              (lambda ()
                                                (let ((_tmp107569_
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
                                        (gxc#compile-e__0 _e107539_))))
                                 (declare (not safe))
                                 (cons __tmp114654 '()))))
                          (declare (not safe))
                          (cons _tmp107569_ __tmp114653))))
                   (declare (not safe))
                   (cons __tmp114652 _bind107517_)))
                (__tmp114650
                 (let ()
                   (declare (not safe))
                   (cons _tmp107569_ _args107518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp107512_
                                                     _rest107538_
                                                     __tmp114651
                                                     __tmp114650))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx113804113805_))
                                             (let ((_e107548107600_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx113804113805_))))
                                               (let ((_tl107546107605_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e107548107600_)))
                                                     (_hd107547107603_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e107548107600_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd107547107603_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd107547107603_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107546107605_))
                     (let ((_e107551107608_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107546107605_))))
                       (let ((_tl107549107613_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107551107608_)))
                             (_hd107550107611_
                              (let ()
                                (declare (not safe))
                                (##car _e107551107608_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107549107613_))
                             (___kont113806113807_)
                             (___kont113810113811_))))
                     (___kont113810113811_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd107547107603_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl107546107605_))
                         (let ((_e107557107585_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl107546107605_))))
                           (let ((_tl107555107590_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e107557107585_)))
                                 (_hd107556107588_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e107557107585_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl107555107590_))
                                 (___kont113808113809_)
                                 (___kont113810113811_))))
                         (___kont113810113811_))
                     (___kont113810113811_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113810113811_))))
                                             (___kont113810113811_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest107519107527_))
                                 (let ((_hd107524107624_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest107519107527_)))
                                       (_tl107525107626_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest107519107527_))))
                                   (let* ((_e107629_ _hd107524107624_)
                                          (_rest107631_ _tl107525107626_))
                                     (declare (not safe))
                                     (_K107523107621_ _rest107631_ _e107629_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else107521107535_)))))))))
                (___kont113854113855_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self107423_ _stx107424_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx113850113851_))
                (let ((_e107433107459_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx113850113851_))))
                  (let ((_tl107431107464_
                         (let () (declare (not safe)) (##cdr _e107433107459_)))
                        (_hd107432107462_
                         (let ()
                           (declare (not safe))
                           (##car _e107433107459_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl107431107464_))
                        (let ((_e107436107467_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107431107464_))))
                          (let ((_tl107434107472_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107436107467_)))
                                (_hd107435107470_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107436107467_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd107435107470_))
                                (let ((_e107439107475_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd107435107470_))))
                                  (let ((_tl107437107480_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107439107475_)))
                                        (_hd107438107478_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107439107475_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107438107478_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd107438107478_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107437107480_))
                                                (let ((_e107442107483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107437107480_))))
                                                  (let ((_tl107440107488_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107442107483_)))
                                                        (_hd107441107486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107442107483_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107440107488_))
                                                        (___kont113852113853_
                                                         _tl107434107472_
                                                         _hd107441107486_)
                                                        (___kont113854113855_))))
                                                (___kont113854113855_))
                                            (___kont113854113855_))
                                        (___kont113854113855_))))
                                (___kont113854113855_))))
                        (___kont113854113855_))))
                (___kont113854113855_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self107235_ _stx107236_)
        (letrec ((_simplify107238_
                  (lambda (_code107323_)
                    (let* ((_code107324107342_ _code107323_)
                           (_else107326107350_ (lambda () _code107323_))
                           (_K107328107386_
                            (lambda (_expr107353_ _test107354_)
                              (let* ((_expr107355107363_ _expr107353_)
                                     (_else107357107371_
                                      (lambda ()
                                        (let ((__tmp114655
                                               (let ((__tmp114656
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr107353_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test107354_
                                                       __tmp114656))))
                                          (declare (not safe))
                                          (cons 'and __tmp114655))))
                                     (_K107359107376_
                                      (lambda (_exprs107374_)
                                        (let ((__tmp114657
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test107354_
                                                       _exprs107374_))))
                                          (declare (not safe))
                                          (cons 'and __tmp114657)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr107355107363_))
                                    (let ((_hd107360107379_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr107355107363_)))
                                          (_tl107361107381_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr107355107363_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107360107379_ 'and))
                                          (let ((_exprs107384_
                                                 _tl107361107381_))
                                            (declare (not safe))
                                            (_K107359107376_ _exprs107384_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107357107371_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107357107371_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code107324107342_))
                          (let ((_hd107329107389_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code107324107342_)))
                                (_tl107330107391_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code107324107342_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd107329107389_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl107330107391_))
                                    (let ((_hd107331107394_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl107330107391_)))
                                          (_tl107332107396_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl107330107391_))))
                                      (let ((_test107399_ _hd107331107394_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107332107396_))
                                            (let ((_hd107333107401_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107332107396_)))
                                                  (_tl107334107403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107332107396_))))
                                              (let ((_expr107406_
                                                     _hd107333107401_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl107334107403_))
                                                    (let ((_hd107335107408_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl107334107403_)))
                                                          (_tl107336107410_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl107334107403_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd107335107408_))
                                                          (let ((_hd107337107413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd107335107408_)))
                        (_tl107338107415_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107335107408_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107337107413_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107338107415_))
                            (let ((_hd107339107418_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107338107415_)))
                                  (_tl107340107420_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107338107415_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107339107418_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107340107420_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107336107410_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107328107386_
                                             _expr107406_
                                             _test107399_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107326107350_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107326107350_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107326107350_))))
                            (let () (declare (not safe)) (_else107326107350_)))
                        (let () (declare (not safe)) (_else107326107350_))))
                  (let () (declare (not safe)) (_else107326107350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else107326107350_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107326107350_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107326107350_)))
                                (let ()
                                  (declare (not safe))
                                  (_else107326107350_))))
                          (let ()
                            (declare (not safe))
                            (_else107326107350_)))))))
          (let* ((_g107240107261_
                  (lambda (_g107241107258_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107241107258_))))
                 (_g107239107320_
                  (lambda (_g107241107264_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107241107264_))
                        (let ((_e107247107266_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107241107264_))))
                          (let ((_hd107246107269_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107247107266_)))
                                (_tl107245107271_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107247107266_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107245107271_))
                                (let ((_e107250107274_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107245107271_))))
                                  (let ((_hd107249107277_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107250107274_)))
                                        (_tl107248107279_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107250107274_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107248107279_))
                                        (let ((_e107253107282_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107248107279_))))
                                          (let ((_hd107252107285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107253107282_)))
                                                (_tl107251107287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107253107282_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107251107287_))
                                                (let ((_e107256107290_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107251107287_))))
                                                  (let ((_hd107255107293_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107256107290_)))
                                                        (_tl107254107295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107256107290_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107254107295_))
                                                        ((lambda (_L107298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L107299_
                          _L107300_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp114665
                              (let ((__tmp114666
                                     (let ((__tmp114671
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107235_
                                               _L107300_)))
                                           (__tmp114667
                                            (let ((__tmp114670
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107235_
                                                      _L107299_)))
                                                  (__tmp114668
                                                   (let ((__tmp114669
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self107235_
                                                             _L107298_))))
                                                     (declare (not safe))
                                                     (cons __tmp114669 '()))))
                                              (declare (not safe))
                                              (cons __tmp114670 __tmp114668))))
                                       (declare (not safe))
                                       (cons __tmp114671 __tmp114667))))
                                (declare (not safe))
                                (cons 'if __tmp114666))))
                         (declare (not safe))
                         (_simplify107238_ __tmp114665))
                       (let ((__tmp114658
                              (let ((__tmp114663
                                     (let ((__tmp114664
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self107235_
                                                 _L107300_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114664
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp114659
                                     (let ((__tmp114662
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107235_
                                               _L107299_)))
                                           (__tmp114660
                                            (let ((__tmp114661
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107235_
                                                      _L107298_))))
                                              (declare (not safe))
                                              (cons __tmp114661 '()))))
                                       (declare (not safe))
                                       (cons __tmp114662 __tmp114660))))
                                (declare (not safe))
                                (cons __tmp114663 __tmp114659))))
                         (declare (not safe))
                         (cons 'if __tmp114658))))
                 _hd107255107293_
                 _hd107252107285_
                 _hd107249107277_)
                (let ()
                  (declare (not safe))
                  (_g107240107261_ _g107241107264_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107240107261_
                                                   _g107241107264_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107240107261_ _g107241107264_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107240107261_ _g107241107264_)))))
                        (let ()
                          (declare (not safe))
                          (_g107240107261_ _g107241107264_))))))
            (declare (not safe))
            (_g107239107320_ _stx107236_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self107183_ _stx107184_)
        (let* ((_g107186107199_
                (lambda (_g107187107196_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107187107196_))))
               (_g107185107232_
                (lambda (_g107187107202_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107187107202_))
                      (let ((_e107191107204_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107187107202_))))
                        (let ((_hd107190107207_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107191107204_)))
                              (_tl107189107209_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107191107204_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107189107209_))
                              (let ((_e107194107212_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107189107209_))))
                                (let ((_hd107193107215_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107194107212_)))
                                      (_tl107192107217_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107194107212_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl107192107217_))
                                      ((lambda (_L107220_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L107220_)))
                                       _hd107193107215_)
                                      (let ()
                                        (declare (not safe))
                                        (_g107186107199_ _g107187107202_)))))
                              (let ()
                                (declare (not safe))
                                (_g107186107199_ _g107187107202_)))))
                      (let ()
                        (declare (not safe))
                        (_g107186107199_ _g107187107202_))))))
          (declare (not safe))
          (_g107185107232_ _stx107184_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self107115_ _stx107116_)
        (let* ((_g107118107135_
                (lambda (_g107119107132_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107119107132_))))
               (_g107117107180_
                (lambda (_g107119107138_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107119107138_))
                      (let ((_e107124107140_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107119107138_))))
                        (let ((_hd107123107143_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107124107140_)))
                              (_tl107122107145_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107124107140_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107122107145_))
                              (let ((_e107127107148_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107122107145_))))
                                (let ((_hd107126107151_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107127107148_)))
                                      (_tl107125107153_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107127107148_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107125107153_))
                                      (let ((_e107130107156_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107125107153_))))
                                        (let ((_hd107129107159_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107130107156_)))
                                              (_tl107128107161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107130107156_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107128107161_))
                                              ((lambda (_L107164_ _L107165_)
                                                 (let ((__tmp114672
                                                        (let ((__tmp114675
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L107165_)))
                      (__tmp114673
                       (let ((__tmp114674
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self107115_ _L107164_))))
                         (declare (not safe))
                         (cons __tmp114674 '()))))
                  (declare (not safe))
                  (cons __tmp114675 __tmp114673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp114672)))
                                               _hd107129107159_
                                               _hd107126107151_)
                                              (let ()
                                                (declare (not safe))
                                                (_g107118107135_
                                                 _g107119107138_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107118107135_ _g107119107138_)))))
                              (let ()
                                (declare (not safe))
                                (_g107118107135_ _g107119107138_)))))
                      (let ()
                        (declare (not safe))
                        (_g107118107135_ _g107119107138_))))))
          (declare (not safe))
          (_g107117107180_ _stx107116_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self106926_ _stx106927_)
        (let* ((_g106929106946_
                (lambda (_g106930106943_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106930106943_))))
               (_g106928107112_
                (lambda (_g106930106949_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106930106949_))
                      (let ((_e106935106951_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106930106949_))))
                        (let ((_hd106934106954_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106935106951_)))
                              (_tl106933106956_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106935106951_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106933106956_))
                              (let ((_e106938106959_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106933106956_))))
                                (let ((_hd106937106962_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106938106959_)))
                                      (_tl106936106964_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106938106959_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106936106964_))
                                      (let ((_e106941106967_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106936106964_))))
                                        (let ((_hd106940106970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106941106967_)))
                                              (_tl106939106972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106941106967_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106939106972_))
                                              ((lambda (_L106975_ _L106976_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114691
                                                            (let ((__tmp114694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106926_ _L106975_)))
                          (__tmp114692
                           (let ((__tmp114693
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106926_
                                     _L106976_))))
                             (declare (not safe))
                             (cons __tmp114693 '()))))
                      (declare (not safe))
                      (cons __tmp114694 __tmp114692))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp114691))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106991_ ((_rest106994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114690
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106975_ '()))))
                                 (declare (not safe))
                                 (cons _L106976_ __tmp114690)))
                              (_bind106996_ '())
                              (_args106997_ '()))
               (let* ((_rest106998107006_ _rest106994_)
                      (_else107000107014_
                       (lambda ()
                         (let ((__tmp114676
                                (let ((__tmp114677
                                       (let ((__tmp114678
                                              (let ((__tmp114679
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args106997_))))
                                                (declare (not safe))
                                                (cons __tmp114679 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114678))))
                                  (declare (not safe))
                                  (cons _bind106996_ __tmp114677))))
                           (declare (not safe))
                           (cons 'let __tmp114676))))
                      (_K107002107100_
                       (lambda (_rest107017_ _e107018_)
                         (let* ((___stx113888113889_ _e107018_)
                                (_g107023107041_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113888113889_)))))
                           (let ((___kont113890113891_
                                  (lambda ()
                                    (let ((__tmp114680
                                           (let ((__tmp114681
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107018_))))
                                             (declare (not safe))
                                             (cons __tmp114681 _args106997_))))
                                      (declare (not safe))
                                      (_lp106991_
                                       _rest107017_
                                       _bind106996_
                                       __tmp114680))))
                                 (___kont113892113893_
                                  (lambda ()
                                    (let ((__tmp114682
                                           (let ((__tmp114683
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107018_))))
                                             (declare (not safe))
                                             (cons __tmp114683 _args106997_))))
                                      (declare (not safe))
                                      (_lp106991_
                                       _rest107017_
                                       _bind106996_
                                       __tmp114682))))
                                 (___kont113894113895_
                                  (lambda ()
                                    (let ((_tmp107048_
                                           (let ((__tmp114684 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114684))))
                                      (let ((__tmp114686
                                             (let ((__tmp114687
                                                    (let ((__tmp114688
                                                           (let ((__tmp114689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e107018_))))
                     (declare (not safe))
                     (cons __tmp114689 '()))))
              (declare (not safe))
              (cons _tmp107048_ __tmp114688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114687
                                                     _bind106996_)))
                                            (__tmp114685
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp107048_
                                                     _args106997_))))
                                        (declare (not safe))
                                        (_lp106991_
                                         _rest107017_
                                         __tmp114686
                                         __tmp114685))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113888113889_))
                                 (let ((_e107027107079_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113888113889_))))
                                   (let ((_tl107025107084_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e107027107079_)))
                                         (_hd107026107082_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e107027107079_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd107026107082_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd107026107082_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl107025107084_))
                                                 (let ((_e107030107087_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl107025107084_))))
                                                   (let ((_tl107028107092_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107030107087_)))
                                                         (_hd107029107090_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107030107087_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107028107092_))
                                                         (___kont113890113891_)
                                                         (___kont113894113895_))))
                                                 (___kont113894113895_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd107026107082_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107025107084_))
                                                     (let ((_e107036107064_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107025107084_))))
                                                       (let ((_tl107034107069_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107036107064_)))
                     (_hd107035107067_
                      (let () (declare (not safe)) (##car _e107036107064_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107034107069_))
                     (___kont113892113893_)
                     (___kont113894113895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113894113895_))
                                                 (___kont113894113895_)))
                                         (___kont113894113895_))))
                                 (___kont113894113895_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106998107006_))
                     (let ((_hd107003107103_
                            (let ()
                              (declare (not safe))
                              (##car _rest106998107006_)))
                           (_tl107004107105_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106998107006_))))
                       (let* ((_e107108_ _hd107003107103_)
                              (_rest107110_ _tl107004107105_))
                         (declare (not safe))
                         (_K107002107100_ _rest107110_ _e107108_)))
                     (let () (declare (not safe)) (_else107000107014_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106940106970_
                                               _hd106937106962_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106929106946_
                                                 _g106930106949_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106929106946_ _g106930106949_)))))
                              (let ()
                                (declare (not safe))
                                (_g106929106946_ _g106930106949_)))))
                      (let ()
                        (declare (not safe))
                        (_g106929106946_ _g106930106949_))))))
          (declare (not safe))
          (_g106928107112_ _stx106927_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self106737_ _stx106738_)
        (let* ((_g106740106757_
                (lambda (_g106741106754_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106741106754_))))
               (_g106739106923_
                (lambda (_g106741106760_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106741106760_))
                      (let ((_e106746106762_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106741106760_))))
                        (let ((_hd106745106765_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106746106762_)))
                              (_tl106744106767_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106746106762_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106744106767_))
                              (let ((_e106749106770_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106744106767_))))
                                (let ((_hd106748106773_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106749106770_)))
                                      (_tl106747106775_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106749106770_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106747106775_))
                                      (let ((_e106752106778_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106747106775_))))
                                        (let ((_hd106751106781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106752106778_)))
                                              (_tl106750106783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106752106778_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106750106783_))
                                              ((lambda (_L106786_ _L106787_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114710
                                                            (let ((__tmp114713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106737_ _L106786_)))
                          (__tmp114711
                           (let ((__tmp114712
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106737_
                                     _L106787_))))
                             (declare (not safe))
                             (cons __tmp114712 '()))))
                      (declare (not safe))
                      (cons __tmp114713 __tmp114711))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp114710))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106802_ ((_rest106805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114709
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106786_ '()))))
                                 (declare (not safe))
                                 (cons _L106787_ __tmp114709)))
                              (_bind106807_ '())
                              (_args106808_ '()))
               (let* ((_rest106809106817_ _rest106805_)
                      (_else106811106825_
                       (lambda ()
                         (let ((__tmp114695
                                (let ((__tmp114696
                                       (let ((__tmp114697
                                              (let ((__tmp114698
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args106808_))))
                                                (declare (not safe))
                                                (cons __tmp114698 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114697))))
                                  (declare (not safe))
                                  (cons _bind106807_ __tmp114696))))
                           (declare (not safe))
                           (cons 'let __tmp114695))))
                      (_K106813106911_
                       (lambda (_rest106828_ _e106829_)
                         (let* ((___stx113934113935_ _e106829_)
                                (_g106834106852_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113934113935_)))))
                           (let ((___kont113936113937_
                                  (lambda ()
                                    (let ((__tmp114699
                                           (let ((__tmp114700
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106829_))))
                                             (declare (not safe))
                                             (cons __tmp114700 _args106808_))))
                                      (declare (not safe))
                                      (_lp106802_
                                       _rest106828_
                                       _bind106807_
                                       __tmp114699))))
                                 (___kont113938113939_
                                  (lambda ()
                                    (let ((__tmp114701
                                           (let ((__tmp114702
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106829_))))
                                             (declare (not safe))
                                             (cons __tmp114702 _args106808_))))
                                      (declare (not safe))
                                      (_lp106802_
                                       _rest106828_
                                       _bind106807_
                                       __tmp114701))))
                                 (___kont113940113941_
                                  (lambda ()
                                    (let ((_tmp106859_
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
                            (gxc#compile-e__0 _e106829_))))
                     (declare (not safe))
                     (cons __tmp114708 '()))))
              (declare (not safe))
              (cons _tmp106859_ __tmp114707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114706
                                                     _bind106807_)))
                                            (__tmp114704
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106859_
                                                     _args106808_))))
                                        (declare (not safe))
                                        (_lp106802_
                                         _rest106828_
                                         __tmp114705
                                         __tmp114704))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113934113935_))
                                 (let ((_e106838106890_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113934113935_))))
                                   (let ((_tl106836106895_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106838106890_)))
                                         (_hd106837106893_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106838106890_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106837106893_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106837106893_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106836106895_))
                                                 (let ((_e106841106898_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106836106895_))))
                                                   (let ((_tl106839106903_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106841106898_)))
                                                         (_hd106840106901_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106841106898_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106839106903_))
                                                         (___kont113936113937_)
                                                         (___kont113940113941_))))
                                                 (___kont113940113941_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106837106893_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106836106895_))
                                                     (let ((_e106847106875_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106836106895_))))
                                                       (let ((_tl106845106880_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106847106875_)))
                     (_hd106846106878_
                      (let () (declare (not safe)) (##car _e106847106875_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106845106880_))
                     (___kont113938113939_)
                     (___kont113940113941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113940113941_))
                                                 (___kont113940113941_)))
                                         (___kont113940113941_))))
                                 (___kont113940113941_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106809106817_))
                     (let ((_hd106814106914_
                            (let ()
                              (declare (not safe))
                              (##car _rest106809106817_)))
                           (_tl106815106916_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106809106817_))))
                       (let* ((_e106919_ _hd106814106914_)
                              (_rest106921_ _tl106815106916_))
                         (declare (not safe))
                         (_K106813106911_ _rest106921_ _e106919_)))
                     (let () (declare (not safe)) (_else106811106825_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106751106781_
                                               _hd106748106773_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106740106757_
                                                 _g106741106760_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106740106757_ _g106741106760_)))))
                              (let ()
                                (declare (not safe))
                                (_g106740106757_ _g106741106760_)))))
                      (let ()
                        (declare (not safe))
                        (_g106740106757_ _g106741106760_))))))
          (declare (not safe))
          (_g106739106923_ _stx106738_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self106653_ _stx106654_)
        (let* ((_g106656106677_
                (lambda (_g106657106674_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106657106674_))))
               (_g106655106734_
                (lambda (_g106657106680_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106657106680_))
                      (let ((_e106663106682_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106657106680_))))
                        (let ((_hd106662106685_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106663106682_)))
                              (_tl106661106687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106663106682_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106661106687_))
                              (let ((_e106666106690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106661106687_))))
                                (let ((_hd106665106693_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106666106690_)))
                                      (_tl106664106695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106666106690_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106664106695_))
                                      (let ((_e106669106698_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106664106695_))))
                                        (let ((_hd106668106701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106669106698_)))
                                              (_tl106667106703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106669106698_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106667106703_))
                                              (let ((_e106672106706_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106667106703_))))
                                                (let ((_hd106671106709_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106672106706_)))
                                                      (_tl106670106711_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106672106706_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106670106711_))
                                                      ((lambda (_L106714_
                                                                _L106715_
                                                                _L106716_)
                                                         (let ((__tmp114714
                                                                (let ((__tmp114720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106653_ _L106714_)))
                              (__tmp114715
                               (let ((__tmp114719
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106653_
                                         _L106715_)))
                                     (__tmp114716
                                      (let ((__tmp114718
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106653_
                                                _L106716_)))
                                            (__tmp114717
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114718 __tmp114717))))
                                 (declare (not safe))
                                 (cons __tmp114719 __tmp114716))))
                          (declare (not safe))
                          (cons __tmp114720 __tmp114715))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp114714)))
               _hd106671106709_
               _hd106668106701_
               _hd106665106693_)
              (let ()
                (declare (not safe))
                (_g106656106677_ _g106657106680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106656106677_
                                                 _g106657106680_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106656106677_ _g106657106680_)))))
                              (let ()
                                (declare (not safe))
                                (_g106656106677_ _g106657106680_)))))
                      (let ()
                        (declare (not safe))
                        (_g106656106677_ _g106657106680_))))))
          (declare (not safe))
          (_g106655106734_ _stx106654_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self106553_ _stx106554_)
        (let* ((_g106556106581_
                (lambda (_g106557106578_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106557106578_))))
               (_g106555106650_
                (lambda (_g106557106584_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106557106584_))
                      (let ((_e106564106586_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106557106584_))))
                        (let ((_hd106563106589_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106564106586_)))
                              (_tl106562106591_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106564106586_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106562106591_))
                              (let ((_e106567106594_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106562106591_))))
                                (let ((_hd106566106597_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106567106594_)))
                                      (_tl106565106599_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106567106594_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106565106599_))
                                      (let ((_e106570106602_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106565106599_))))
                                        (let ((_hd106569106605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106570106602_)))
                                              (_tl106568106607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106570106602_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106568106607_))
                                              (let ((_e106573106610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106568106607_))))
                                                (let ((_hd106572106613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106573106610_)))
                                                      (_tl106571106615_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106573106610_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106571106615_))
                                                      (let ((_e106576106618_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106571106615_))))
                (let ((_hd106575106621_
                       (let () (declare (not safe)) (##car _e106576106618_)))
                      (_tl106574106623_
                       (let () (declare (not safe)) (##cdr _e106576106618_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106574106623_))
                      ((lambda (_L106626_ _L106627_ _L106628_ _L106629_)
                         (let ((__tmp114721
                                (let ((__tmp114729
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106553_
                                          _L106627_)))
                                      (__tmp114722
                                       (let ((__tmp114728
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106553_
                                                 _L106626_)))
                                             (__tmp114723
                                              (let ((__tmp114727
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106553_
                                                        _L106628_)))
                                                    (__tmp114724
                                                     (let ((__tmp114726
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106553_
                                                               _L106629_)))
                                                           (__tmp114725
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114726 __tmp114725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114727
                                                      __tmp114724))))
                                         (declare (not safe))
                                         (cons __tmp114728 __tmp114723))))
                                  (declare (not safe))
                                  (cons __tmp114729 __tmp114722))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp114721)))
                       _hd106575106621_
                       _hd106572106613_
                       _hd106569106605_
                       _hd106566106597_)
                      (let ()
                        (declare (not safe))
                        (_g106556106581_ _g106557106584_)))))
              (let ()
                (declare (not safe))
                (_g106556106581_ _g106557106584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106556106581_
                                                 _g106557106584_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106556106581_ _g106557106584_)))))
                              (let ()
                                (declare (not safe))
                                (_g106556106581_ _g106557106584_)))))
                      (let ()
                        (declare (not safe))
                        (_g106556106581_ _g106557106584_))))))
          (declare (not safe))
          (_g106555106650_ _stx106554_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self106469_ _stx106470_)
        (let* ((_g106472106493_
                (lambda (_g106473106490_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106473106490_))))
               (_g106471106550_
                (lambda (_g106473106496_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106473106496_))
                      (let ((_e106479106498_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106473106496_))))
                        (let ((_hd106478106501_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106479106498_)))
                              (_tl106477106503_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106479106498_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106477106503_))
                              (let ((_e106482106506_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106477106503_))))
                                (let ((_hd106481106509_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106482106506_)))
                                      (_tl106480106511_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106482106506_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106480106511_))
                                      (let ((_e106485106514_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106480106511_))))
                                        (let ((_hd106484106517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106485106514_)))
                                              (_tl106483106519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106485106514_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106483106519_))
                                              (let ((_e106488106522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106483106519_))))
                                                (let ((_hd106487106525_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106488106522_)))
                                                      (_tl106486106527_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106488106522_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106486106527_))
                                                      ((lambda (_L106530_
                                                                _L106531_
                                                                _L106532_)
                                                         (let ((__tmp114730
                                                                (let ((__tmp114736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106469_ _L106530_)))
                              (__tmp114731
                               (let ((__tmp114735
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106469_
                                         _L106531_)))
                                     (__tmp114732
                                      (let ((__tmp114734
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106469_
                                                _L106532_)))
                                            (__tmp114733
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114734 __tmp114733))))
                                 (declare (not safe))
                                 (cons __tmp114735 __tmp114732))))
                          (declare (not safe))
                          (cons __tmp114736 __tmp114731))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp114730)))
               _hd106487106525_
               _hd106484106517_
               _hd106481106509_)
              (let ()
                (declare (not safe))
                (_g106472106493_ _g106473106496_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106472106493_
                                                 _g106473106496_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106472106493_ _g106473106496_)))))
                              (let ()
                                (declare (not safe))
                                (_g106472106493_ _g106473106496_)))))
                      (let ()
                        (declare (not safe))
                        (_g106472106493_ _g106473106496_))))))
          (declare (not safe))
          (_g106471106550_ _stx106470_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self106369_ _stx106370_)
        (let* ((_g106372106397_
                (lambda (_g106373106394_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106373106394_))))
               (_g106371106466_
                (lambda (_g106373106400_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106373106400_))
                      (let ((_e106380106402_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106373106400_))))
                        (let ((_hd106379106405_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106380106402_)))
                              (_tl106378106407_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106380106402_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106378106407_))
                              (let ((_e106383106410_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106378106407_))))
                                (let ((_hd106382106413_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106383106410_)))
                                      (_tl106381106415_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106383106410_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106381106415_))
                                      (let ((_e106386106418_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106381106415_))))
                                        (let ((_hd106385106421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106386106418_)))
                                              (_tl106384106423_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106386106418_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106384106423_))
                                              (let ((_e106389106426_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106384106423_))))
                                                (let ((_hd106388106429_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106389106426_)))
                                                      (_tl106387106431_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106389106426_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106387106431_))
                                                      (let ((_e106392106434_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106387106431_))))
                (let ((_hd106391106437_
                       (let () (declare (not safe)) (##car _e106392106434_)))
                      (_tl106390106439_
                       (let () (declare (not safe)) (##cdr _e106392106434_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106390106439_))
                      ((lambda (_L106442_ _L106443_ _L106444_ _L106445_)
                         (let ((__tmp114737
                                (let ((__tmp114745
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106369_
                                          _L106443_)))
                                      (__tmp114738
                                       (let ((__tmp114744
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106369_
                                                 _L106442_)))
                                             (__tmp114739
                                              (let ((__tmp114743
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106369_
                                                        _L106444_)))
                                                    (__tmp114740
                                                     (let ((__tmp114742
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106369_
                                                               _L106445_)))
                                                           (__tmp114741
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114742 __tmp114741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114743
                                                      __tmp114740))))
                                         (declare (not safe))
                                         (cons __tmp114744 __tmp114739))))
                                  (declare (not safe))
                                  (cons __tmp114745 __tmp114738))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp114737)))
                       _hd106391106437_
                       _hd106388106429_
                       _hd106385106421_
                       _hd106382106413_)
                      (let ()
                        (declare (not safe))
                        (_g106372106397_ _g106373106400_)))))
              (let ()
                (declare (not safe))
                (_g106372106397_ _g106373106400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106372106397_
                                                 _g106373106400_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106372106397_ _g106373106400_)))))
                              (let ()
                                (declare (not safe))
                                (_g106372106397_ _g106373106400_)))))
                      (let ()
                        (declare (not safe))
                        (_g106372106397_ _g106373106400_))))))
          (declare (not safe))
          (_g106371106466_ _stx106370_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self106164_ _stx106165_)
        (let* ((_g106167106188_
                (lambda (_g106168106185_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106168106185_))))
               (_g106166106366_
                (lambda (_g106168106191_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106168106191_))
                      (let ((_e106174106193_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106168106191_))))
                        (let ((_hd106173106196_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106174106193_)))
                              (_tl106172106198_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106174106193_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106172106198_))
                              (let ((_e106177106201_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106172106198_))))
                                (let ((_hd106176106204_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106177106201_)))
                                      (_tl106175106206_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106177106201_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106175106206_))
                                      (let ((_e106180106209_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106175106206_))))
                                        (let ((_hd106179106212_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106180106209_)))
                                              (_tl106178106214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106180106209_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106178106214_))
                                              (let ((_e106183106217_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106178106214_))))
                                                (let ((_hd106182106220_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106183106217_)))
                                                      (_tl106181106222_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106183106217_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106181106222_))
                                                      ((lambda (_L106225_
                                                                _L106226_
                                                                _L106227_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp114764
                            (let ((__tmp114770
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self106164_
                                      _L106225_)))
                                  (__tmp114765
                                   (let ((__tmp114769
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self106164_
                                             _L106226_)))
                                         (__tmp114766
                                          (let ((__tmp114768
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self106164_
                                                    _L106227_)))
                                                (__tmp114767
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp114768 __tmp114767))))
                                     (declare (not safe))
                                     (cons __tmp114769 __tmp114766))))
                              (declare (not safe))
                              (cons __tmp114770 __tmp114765))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114764))
                     (let _lp106245_ ((_rest106248_
                                       (let ((__tmp114762
                                              (let ((__tmp114763
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L106225_ '()))))
                                                (declare (not safe))
                                                (cons _L106226_ __tmp114763))))
                                         (declare (not safe))
                                         (cons _L106227_ __tmp114762)))
                                      (_bind106250_ '())
                                      (_args106251_ '()))
                       (let* ((_rest106252106260_ _rest106248_)
                              (_else106254106268_
                               (lambda ()
                                 (let ((__tmp114746
                                        (let ((__tmp114747
                                               (let ((__tmp114748
                                                      (let ((__tmp114749
                                                             (let ((__tmp114750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114751
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp114751 _args106251_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114750))))
                (declare (not safe))
                (cons __tmp114749 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114748))))
                                          (declare (not safe))
                                          (cons _bind106250_ __tmp114747))))
                                   (declare (not safe))
                                   (cons 'let __tmp114746))))
                              (_K106256106354_
                               (lambda (_rest106271_ _e106272_)
                                 (let* ((___stx113980113981_ _e106272_)
                                        (_g106277106295_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113980113981_)))))
                                   (let ((___kont113982113983_
                                          (lambda ()
                                            (let ((__tmp114752
                                                   (let ((__tmp114753
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106272_))))
                                                     (declare (not safe))
                                                     (cons __tmp114753
                                                           _args106251_))))
                                              (declare (not safe))
                                              (_lp106245_
                                               _rest106271_
                                               _bind106250_
                                               __tmp114752))))
                                         (___kont113984113985_
                                          (lambda ()
                                            (let ((__tmp114754
                                                   (let ((__tmp114755
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106272_))))
                                                     (declare (not safe))
                                                     (cons __tmp114755
                                                           _args106251_))))
                                              (declare (not safe))
                                              (_lp106245_
                                               _rest106271_
                                               _bind106250_
                                               __tmp114754))))
                                         (___kont113986113987_
                                          (lambda ()
                                            (let ((_tmp106302_
                                                   (let ((__tmp114756
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp114756))))
                                              (let ((__tmp114758
                                                     (let ((__tmp114759
                                                            (let ((__tmp114760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114761
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e106272_))))
                             (declare (not safe))
                             (cons __tmp114761 '()))))
                      (declare (not safe))
                      (cons _tmp106302_ __tmp114760))))
               (declare (not safe))
               (cons __tmp114759 _bind106250_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114757
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp106302_
                                                             _args106251_))))
                                                (declare (not safe))
                                                (_lp106245_
                                                 _rest106271_
                                                 __tmp114758
                                                 __tmp114757))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113980113981_))
                                         (let ((_e106281106333_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113980113981_))))
                                           (let ((_tl106279106338_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106281106333_)))
                                                 (_hd106280106336_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106281106333_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd106280106336_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd106280106336_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl106279106338_))
                                                         (let ((_e106284106341_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl106279106338_))))
                   (let ((_tl106282106346_
                          (let ()
                            (declare (not safe))
                            (##cdr _e106284106341_)))
                         (_hd106283106344_
                          (let ()
                            (declare (not safe))
                            (##car _e106284106341_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106282106346_))
                         (___kont113982113983_)
                         (___kont113986113987_))))
                 (___kont113986113987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd106280106336_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl106279106338_))
                     (let ((_e106290106318_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106279106338_))))
                       (let ((_tl106288106323_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106290106318_)))
                             (_hd106289106321_
                              (let ()
                                (declare (not safe))
                                (##car _e106290106318_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106288106323_))
                             (___kont113984113985_)
                             (___kont113986113987_))))
                     (___kont113986113987_))
                 (___kont113986113987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113986113987_))))
                                         (___kont113986113987_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest106252106260_))
                             (let ((_hd106257106357_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest106252106260_)))
                                   (_tl106258106359_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest106252106260_))))
                               (let* ((_e106362_ _hd106257106357_)
                                      (_rest106364_ _tl106258106359_))
                                 (declare (not safe))
                                 (_K106256106354_ _rest106364_ _e106362_)))
                             (let ()
                               (declare (not safe))
                               (_else106254106268_)))))))
               _hd106182106220_
               _hd106179106212_
               _hd106176106204_)
              (let ()
                (declare (not safe))
                (_g106167106188_ _g106168106191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106167106188_
                                                 _g106168106191_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106167106188_ _g106168106191_)))))
                              (let ()
                                (declare (not safe))
                                (_g106167106188_ _g106168106191_)))))
                      (let ()
                        (declare (not safe))
                        (_g106167106188_ _g106168106191_))))))
          (declare (not safe))
          (_g106166106366_ _stx106165_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self105943_ _stx105944_)
        (let* ((_g105946105971_
                (lambda (_g105947105968_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105947105968_))))
               (_g105945106161_
                (lambda (_g105947105974_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105947105974_))
                      (let ((_e105954105976_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105947105974_))))
                        (let ((_hd105953105979_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105954105976_)))
                              (_tl105952105981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105954105976_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105952105981_))
                              (let ((_e105957105984_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105952105981_))))
                                (let ((_hd105956105987_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105957105984_)))
                                      (_tl105955105989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105957105984_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105955105989_))
                                      (let ((_e105960105992_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105955105989_))))
                                        (let ((_hd105959105995_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105960105992_)))
                                              (_tl105958105997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105960105992_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105958105997_))
                                              (let ((_e105963106000_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105958105997_))))
                                                (let ((_hd105962106003_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105963106000_)))
                                                      (_tl105961106005_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105963106000_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl105961106005_))
                                                      (let ((_e105966106008_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl105961106005_))))
                (let ((_hd105965106011_
                       (let () (declare (not safe)) (##car _e105966106008_)))
                      (_tl105964106013_
                       (let () (declare (not safe)) (##cdr _e105966106008_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105964106013_))
                      ((lambda (_L106016_ _L106017_ _L106018_ _L106019_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp114790
                                    (let ((__tmp114798
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self105943_
                                              _L106017_)))
                                          (__tmp114791
                                           (let ((__tmp114797
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105943_
                                                     _L106016_)))
                                                 (__tmp114792
                                                  (let ((__tmp114796
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self105943_
                                                            _L106018_)))
                                                        (__tmp114793
                                                         (let ((__tmp114795
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self105943_ _L106019_)))
                       (__tmp114794
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp114795 __tmp114794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114796
                                                          __tmp114793))))
                                             (declare (not safe))
                                             (cons __tmp114797 __tmp114792))))
                                      (declare (not safe))
                                      (cons __tmp114798 __tmp114791))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp114790))
                             (let _lp106040_ ((_rest106043_
                                               (let ((__tmp114787
                                                      (let ((__tmp114788
                                                             (let ((__tmp114789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L106017_ '()))))
                       (declare (not safe))
                       (cons _L106016_ __tmp114789))))
                (declare (not safe))
                (cons _L106018_ __tmp114788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L106019_ __tmp114787)))
                                              (_bind106045_ '())
                                              (_args106046_ '()))
                               (let* ((_rest106047106055_ _rest106043_)
                                      (_else106049106063_
                                       (lambda ()
                                         (let ((__tmp114771
                                                (let ((__tmp114772
                                                       (let ((__tmp114773
                                                              (let ((__tmp114774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114775
                                    (let ((__tmp114776
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp114776 _args106046_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp114775))))
                        (declare (not safe))
                        (cons __tmp114774 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp114773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind106045_
                                                        __tmp114772))))
                                           (declare (not safe))
                                           (cons 'let __tmp114771))))
                                      (_K106051106149_
                                       (lambda (_rest106066_ _e106067_)
                                         (let* ((___stx114026114027_ _e106067_)
                                                (_g106072106090_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx114026114027_)))))
                                           (let ((___kont114028114029_
                                                  (lambda ()
                                                    (let ((__tmp114777
                                                           (let ((__tmp114778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106067_))))
                     (declare (not safe))
                     (cons __tmp114778 _args106046_))))
              (declare (not safe))
              (_lp106040_ _rest106066_ _bind106045_ __tmp114777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114030114031_
                                                  (lambda ()
                                                    (let ((__tmp114779
                                                           (let ((__tmp114780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106067_))))
                     (declare (not safe))
                     (cons __tmp114780 _args106046_))))
              (declare (not safe))
              (_lp106040_ _rest106066_ _bind106045_ __tmp114779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114032114033_
                                                  (lambda ()
                                                    (let ((_tmp106097_
                                                           (let ((__tmp114781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp114781))))
              (let ((__tmp114783
                     (let ((__tmp114784
                            (let ((__tmp114785
                                   (let ((__tmp114786
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e106067_))))
                                     (declare (not safe))
                                     (cons __tmp114786 '()))))
                              (declare (not safe))
                              (cons _tmp106097_ __tmp114785))))
                       (declare (not safe))
                       (cons __tmp114784 _bind106045_)))
                    (__tmp114782
                     (let ()
                       (declare (not safe))
                       (cons _tmp106097_ _args106046_))))
                (declare (not safe))
                (_lp106040_ _rest106066_ __tmp114783 __tmp114782))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx114026114027_))
                                                 (let ((_e106076106128_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx114026114027_))))
                                                   (let ((_tl106074106133_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106076106128_)))
                                                         (_hd106075106131_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106076106128_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd106075106131_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd106075106131_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl106074106133_))
                         (let ((_e106079106136_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl106074106133_))))
                           (let ((_tl106077106141_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e106079106136_)))
                                 (_hd106078106139_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e106079106136_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl106077106141_))
                                 (___kont114028114029_)
                                 (___kont114032114033_))))
                         (___kont114032114033_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd106075106131_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl106074106133_))
                             (let ((_e106085106113_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl106074106133_))))
                               (let ((_tl106083106118_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e106085106113_)))
                                     (_hd106084106116_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e106085106113_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl106083106118_))
                                     (___kont114030114031_)
                                     (___kont114032114033_))))
                             (___kont114032114033_))
                         (___kont114032114033_)))
                 (___kont114032114033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114032114033_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest106047106055_))
                                     (let ((_hd106052106152_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest106047106055_)))
                                           (_tl106053106154_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest106047106055_))))
                                       (let* ((_e106157_ _hd106052106152_)
                                              (_rest106159_ _tl106053106154_))
                                         (declare (not safe))
                                         (_K106051106149_
                                          _rest106159_
                                          _e106157_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else106049106063_)))))))
                       _hd105965106011_
                       _hd105962106003_
                       _hd105959105995_
                       _hd105956105987_)
                      (let ()
                        (declare (not safe))
                        (_g105946105971_ _g105947105974_)))))
              (let ()
                (declare (not safe))
                (_g105946105971_ _g105947105974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105946105971_
                                                 _g105947105974_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105946105971_ _g105947105974_)))))
                              (let ()
                                (declare (not safe))
                                (_g105946105971_ _g105947105974_)))))
                      (let ()
                        (declare (not safe))
                        (_g105946105971_ _g105947105974_))))))
          (declare (not safe))
          (_g105945106161_ _stx105944_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self105796_ _stx105797_)
        (letrec ((_import-set-template105799_
                  (lambda (_in105895_ _phi105896_)
                    (let ((_iphi105898_
                           (fx+ _phi105896_
                                (##direct-structure-ref
                                 _in105895_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports105899_
                           (##structure-ref
                            (##direct-structure-ref
                             _in105895_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp105901_ ((_rest105903_ _imports105899_)
                                       (_r105904_ '()))
                        (let* ((_rest105905105913_ _rest105903_)
                               (_else105907105921_ (lambda () _r105904_))
                               (_K105909105931_
                                (lambda (_rest105924_ _in105925_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in105925_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi105898_))
                                          (let ((__tmp114805
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in105925_
                                                         _r105904_))))
                                            (declare (not safe))
                                            (_lp105901_
                                             _rest105924_
                                             __tmp114805))
                                          (let ()
                                            (declare (not safe))
                                            (_lp105901_
                                             _rest105924_
                                             _r105904_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in105925_
                                             'gx#module-import::t))
                                          (let ((_iphi105927_
                                                 (fx+ _phi105896_
                                                      (##direct-structure-ref
                                                       _in105925_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi105927_))
                                                (let ((__tmp114803
                                                       (let ((__tmp114804
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in105925_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp114804
                                                               _r105904_))))
                                                  (declare (not safe))
                                                  (_lp105901_
                                                   _rest105924_
                                                   __tmp114803))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp105901_
                                                   _rest105924_
                                                   _r105904_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in105925_
                                                 'gx#import-set::t))
                                              (let ((_xphi105929_
                                                     (fx+ _iphi105898_
                                                          (##direct-structure-ref
                                                           _in105925_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi105929_))
                                                    (let ((__tmp114801
                                                           (let ((__tmp114802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105925_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp114802 _r105904_))))
              (declare (not safe))
              (_lp105901_ _rest105924_ __tmp114801))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi105929_)
                                                        (let ((__tmp114799
                                                               (let ((__tmp114800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template105799_
                                 _in105925_
                                 _iphi105898_))))
                         (declare (not safe))
                         (foldl1 cons _r105904_ __tmp114800))))
                  (declare (not safe))
                  (_lp105901_ _rest105924_ __tmp114799))
                (let ()
                  (declare (not safe))
                  (_lp105901_ _rest105924_ _r105904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp105901_
                                                 _rest105924_
                                                 _r105904_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105905105913_))
                              (let ((_hd105910105934_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105905105913_)))
                                    (_tl105911105936_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105905105913_))))
                                (let* ((_in105939_ _hd105910105934_)
                                       (_rest105941_ _tl105911105936_))
                                  (declare (not safe))
                                  (_K105909105931_ _rest105941_ _in105939_)))
                              (let ()
                                (declare (not safe))
                                (_else105907105921_)))))))))
          (let* ((_g105801105811_
                  (lambda (_g105802105808_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105802105808_))))
                 (_g105800105892_
                  (lambda (_g105802105814_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105802105814_))
                        (let ((_e105806105816_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105802105814_))))
                          (let ((_hd105805105819_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105806105816_)))
                                (_tl105804105821_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105806105816_))))
                            ((lambda (_L105824_)
                               (let ((_ht105835_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp105837_ ((_rest105839_ _L105824_)
                                                  (_loads105840_ '()))
                                   (letrec ((_K105842_
                                             (lambda (_ctx105885_ _rest105886_)
                                               (let ((_id105888_
                                                      (##structure-ref
                                                       _ctx105885_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht105835_
                                                        _id105888_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp105837_
                                                        _rest105886_
                                                        _loads105840_))
                                                     (let ((_rt105890_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _id105888_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _ht105835_
                                                          _id105888_
                                                          _rt105890_))
                                                       (let ((__tmp114806
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _rt105890_ _loads105840_))))
                 (declare (not safe))
                 (_lp105837_ _rest105886_ __tmp114806))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest105843105851_ _rest105839_)
                                            (_else105845105863_
                                             (lambda ()
                                               (let ((__tmp114807
                                                      (map (lambda (_g105858105860_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g105858105860_))
                   (reverse _loads105840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp114807))))
                                            (_K105847105873_
                                             (lambda (_rest105866_ _in105867_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in105867_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K105842_
                                                      _in105867_
                                                      _rest105866_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in105867_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp114811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105867_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp114811))
                   (let ((__tmp114810
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in105867_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K105842_ __tmp114810 _rest105866_))
                   (let ()
                     (declare (not safe))
                     (_lp105837_ _rest105866_ _loads105840_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in105867_
                      'gx#import-set::t))
                   (let ((_phi105869_
                          (##direct-structure-ref
                           _in105867_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi105869_))
                         (let ((__tmp114809
                                (##direct-structure-ref
                                 _in105867_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K105842_ __tmp114809 _rest105866_))
                         (if (fxpositive? _phi105869_)
                             (let* ((_deps105871_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template105799_
                                        _in105867_
                                        '0)))
                                    (__tmp114808
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest105866_
                                               _deps105871_))))
                               (declare (not safe))
                               (_lp105837_ __tmp114808 _loads105840_))
                             (let ()
                               (declare (not safe))
                               (_lp105837_ _rest105866_ _loads105840_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx105797_
                      _in105867_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest105843105851_))
                                           (let ((_hd105848105876_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest105843105851_)))
                                                 (_tl105849105878_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest105843105851_))))
                                             (let* ((_in105881_
                                                     _hd105848105876_)
                                                    (_rest105883_
                                                     _tl105849105878_))
                                               (declare (not safe))
                                               (_K105847105873_
                                                _rest105883_
                                                _in105881_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else105845105863_))))))))
                             _tl105804105821_)))
                        (let ()
                          (declare (not safe))
                          (_g105801105811_ _g105802105814_))))))
            (declare (not safe))
            (_g105800105892_ _stx105797_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self105611_ _stx105612_)
        (letrec ((_add-lift!105614_
                  (lambda (_expr105794_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp114812 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr105794_ __tmp114812)))))
                 (_generate-syntax-quote105615_
                  (lambda (_id105791_ _marks105792_)
                    (let ((__tmp114813
                           (let ((__tmp114814
                                  (let ((__tmp114818
                                         (let ((__tmp114819
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id105791_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp114819)))
                                        (__tmp114815
                                         (let ((__tmp114816
                                                (let ((__tmp114817
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks105792_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp114817))))
                                           (declare (not safe))
                                           (cons '#f __tmp114816))))
                                    (declare (not safe))
                                    (cons __tmp114818 __tmp114815))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp114814))))
                      (declare (not safe))
                      (cons '##structure __tmp114813))))
                 (_generate-simple105616_
                  (lambda (_stxq105786_)
                    (let ((_gid105788_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid105789_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq105786_))))
                      (let ((__tmp114820
                             (let ((__tmp114821
                                    (let ((__tmp114822
                                           (let ((__tmp114823
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105615_
                                                     _qid105789_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp114823 '()))))
                                      (declare (not safe))
                                      (cons _gid105788_ __tmp114822))))
                               (declare (not safe))
                               (cons 'define __tmp114821))))
                        (declare (not safe))
                        (_add-lift!105614_ __tmp114820))
                      (let ((__tmp114824 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114824 _stxq105786_ _gid105788_))
                      _gid105788_)))
                 (_generate-serialized105617_
                  (lambda (_stxq105776_ _marks105777_)
                    (let* ((_mark-refs105779_
                            (map _generate-mark105618_ _marks105777_))
                           (_gid105781_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid105783_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq105776_))))
                      (let ((__tmp114825
                             (let ((__tmp114826
                                    (let ((__tmp114827
                                           (let ((__tmp114828
                                                  (let ((__tmp114829
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs105779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105615_
                                                     _qid105783_
                                                     __tmp114829))))
                                             (declare (not safe))
                                             (cons __tmp114828 '()))))
                                      (declare (not safe))
                                      (cons _gid105781_ __tmp114827))))
                               (declare (not safe))
                               (cons 'define __tmp114826))))
                        (declare (not safe))
                        (_add-lift!105614_ __tmp114825))
                      (let ((__tmp114830 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114830 _stxq105776_ _gid105781_))
                      _gid105781_)))
                 (_generate-mark105618_
                  (lambda (_mark105762_)
                    (let ((_$e105764_
                           (let ((__tmp114831 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp114831 _mark105762_))))
                      (if _$e105764_
                          (values _$e105764_)
                          (let* ((_gid105767_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr105769_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark105619_ _mark105762_)))
                                 (_ctx105771_
                                  (let ((__tmp114832
                                         (##structure-ref
                                          _mark105762_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp114832)))
                                 (_ctx-ref105773_
                                  (if (let ((__tmp114837
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx105771_ __tmp114837))
                                      '(gx#current-expander-context)
                                      (let ((__tmp114833
                                             (let ((__tmp114834
                                                    (let ((__tmp114835
                                                           (let ((__tmp114836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref105620_ _ctx105771_))))
                     (declare (not safe))
                     (cons __tmp114836 '()))))
              (declare (not safe))
              (cons 'quote __tmp114835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114834 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp114833)))))
                            (let ((__tmp114838 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp114838 _mark105762_ _gid105767_))
                            (let ((__tmp114839
                                   (let ((__tmp114840
                                          (let ((__tmp114841
                                                 (let ((__tmp114842
                                                        (let ((__tmp114843
                                                               (let ((__tmp114845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114846
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr105769_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp114846)))
                             (__tmp114844
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref105773_ '()))))
                         (declare (not safe))
                         (cons __tmp114845 __tmp114844))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp114843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114842 '()))))
                                            (declare (not safe))
                                            (cons _gid105767_ __tmp114841))))
                                     (declare (not safe))
                                     (cons 'define __tmp114840))))
                              (declare (not safe))
                              (_add-lift!105614_ __tmp114839))
                            _gid105767_)))))
                 (_serialize-mark105619_
                  (lambda (_mark105709_)
                    (letrec ((_quote-e105711_
                              (lambda (_sym105760_)
                                (if (interned-symbol? _sym105760_)
                                    _sym105760_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym105760_))))))
                      (let* ((_mark105712105721_ _mark105709_)
                             (_E105714105725_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark105712105721_))))
                             (_K105715105737_
                              (lambda (_trace105728_
                                       _phi105729_
                                       _ctx105730_
                                       _subst105731_)
                                (let* ((_subs105733_
                                        (if _subst105731_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst105731_))
                                            '()))
                                       (__tmp114847
                                        (map (lambda (_pair105735_)
                                               (let ((__tmp114850
                                                      (let ((__tmp114851
                                                             (car _pair105735_)))
                                                        (declare (not safe))
                                                        (_quote-e105711_
                                                         __tmp114851)))
                                                     (__tmp114848
                                                      (let ((__tmp114849
                                                             (cdr _pair105735_)))
                                                        (declare (not safe))
                                                        (_quote-e105711_
                                                         __tmp114849))))
                                                 (declare (not safe))
                                                 (cons __tmp114850
                                                       __tmp114848)))
                                             _subs105733_)))
                                  (declare (not safe))
                                  (cons _phi105729_ __tmp114847)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark105712105721_
                               'gx#expander-mark::t))
                            (let* ((_e105716105740_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105712105721_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst105743_ _e105716105740_)
                                   (_e105717105745_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105712105721_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx105748_ _e105717105745_)
                                   (_e105718105750_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105712105721_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi105753_ _e105718105750_)
                                   (_e105719105755_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105712105721_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace105758_ _e105719105755_))
                              (declare (not safe))
                              (_K105715105737_
                               _trace105758_
                               _phi105753_
                               _ctx105748_
                               _subst105743_))
                            (let ()
                              (declare (not safe))
                              (_E105714105725_)))))))
                 (_context-ref105620_
                  (lambda (_ctx105696_)
                    (if (let ((__tmp114859
                               (##structure-ref
                                _ctx105696_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp114859
                           'gx#module-context::t))
                        (let ((_ctx-ref105698_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested105622_ _ctx105696_)))
                              (_ctx-origin105699_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin105621_ _ctx105696_)))
                              (_origin105700_
                               (let ((__tmp114853
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin105621_ __tmp114853))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin105700_ _ctx-origin105699_))
                              (let ((_ref105702_
                                     (let ((__tmp114854
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested105622_
                                        __tmp114854))))
                                (let _lp105704_ ((_ref105706_
                                                  (cdr _ref105702_))
                                                 (_ctx-ref105707_
                                                  (cdr _ctx-ref105698_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref105706_))
                                           (let ((__tmp114858
                                                  (car _ref105706_))
                                                 (__tmp114857
                                                  (car _ctx-ref105707_)))
                                             (declare (not safe))
                                             (eq? __tmp114858 __tmp114857)))
                                      (let ((__tmp114856 (cdr _ref105706_))
                                            (__tmp114855
                                             (cdr _ctx-ref105707_)))
                                        (declare (not safe))
                                        (_lp105704_ __tmp114856 __tmp114855))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref105707_)))))
                              _ctx-ref105698_))
                        (let ((__tmp114852
                               (##structure-ref
                                _ctx105696_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp114852)))))
                 (_context-ref-origin105621_
                  (lambda (_ctx105688_)
                    (let _lp105690_ ((_ctx105692_ _ctx105688_))
                      (let ((_super105694_
                             (##structure-ref
                              _ctx105692_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105694_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp105690_ _super105694_))
                            _ctx105692_)))))
                 (_context-ref-nested105622_
                  (lambda (_ctx105679_)
                    (let _lp105681_ ((_ctx105683_ _ctx105679_) (_r105684_ '()))
                      (let ((_super105686_
                             (##structure-ref
                              _ctx105683_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105686_
                               'gx#module-context::t))
                            (let ((__tmp114862
                                   (let ((__tmp114863
                                          (car (##structure-ref
                                                _ctx105683_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp114863 _r105684_))))
                              (declare (not safe))
                              (_lp105681_ _super105686_ __tmp114862))
                            (let ((__tmp114860
                                   (let ((__tmp114861
                                          (##structure-ref
                                           _ctx105683_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp114861))))
                              (declare (not safe))
                              (cons __tmp114860 _r105684_))))))))
          (let* ((_g105624105637_
                  (lambda (_g105625105634_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105625105634_))))
                 (_g105623105676_
                  (lambda (_g105625105640_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105625105640_))
                        (let ((_e105629105642_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105625105640_))))
                          (let ((_hd105628105645_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105629105642_)))
                                (_tl105627105647_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105629105642_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105627105647_))
                                (let ((_e105632105650_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105627105647_))))
                                  (let ((_hd105631105653_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105632105650_)))
                                        (_tl105630105655_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105632105650_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105630105655_))
                                        ((lambda (_L105658_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L105658_))
                                               (let ((_$e105671_
                                                      (let ((__tmp114864
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp114864
                                                         _L105658_))))
                                                 (if _$e105671_
                                                     (values _$e105671_)
                                                     (let ((_marks105674_
                                                            (##direct-structure-ref
                                                             _L105658_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks105674_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple105616_
                                                              _L105658_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized105617_
                                                              _L105658_
                                                              _marks105674_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L105658_))))
                                         _hd105631105653_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105624105637_ _g105625105640_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105624105637_ _g105625105640_)))))
                        (let ()
                          (declare (not safe))
                          (_g105624105637_ _g105625105640_))))))
            (declare (not safe))
            (_g105623105676_ _stx105612_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self105543_ _stx105544_)
        (let* ((_g105546105563_
                (lambda (_g105547105560_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105547105560_))))
               (_g105545105608_
                (lambda (_g105547105566_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105547105566_))
                      (let ((_e105552105568_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105547105566_))))
                        (let ((_hd105551105571_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105552105568_)))
                              (_tl105550105573_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105552105568_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105550105573_))
                              (let ((_e105555105576_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105550105573_))))
                                (let ((_hd105554105579_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105555105576_)))
                                      (_tl105553105581_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105555105576_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105553105581_))
                                      (let ((_e105558105584_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105553105581_))))
                                        (let ((_hd105557105587_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105558105584_)))
                                              (_tl105556105589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105558105584_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105556105589_))
                                              ((lambda (_L105592_ _L105593_)
                                                 (let ((__tmp114865
                                                        (let ((__tmp114868
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L105593_)))
                      (__tmp114866
                       (let ((__tmp114867
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105543_ _L105592_))))
                         (declare (not safe))
                         (cons __tmp114867 '()))))
                  (declare (not safe))
                  (cons __tmp114868 __tmp114866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp114865)))
                                               _hd105557105587_
                                               _hd105554105579_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105546105563_
                                                 _g105547105566_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105546105563_ _g105547105566_)))))
                              (let ()
                                (declare (not safe))
                                (_g105546105563_ _g105547105566_)))))
                      (let ()
                        (declare (not safe))
                        (_g105546105563_ _g105547105566_))))))
          (declare (not safe))
          (_g105545105608_ _stx105544_))))
    (define gxc#generate-meta-begin%
      (lambda (_self105492_ _stx105493_)
        (let* ((_g105495105505_
                (lambda (_g105496105502_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105496105502_))))
               (_g105494105540_
                (lambda (_g105496105508_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105496105508_))
                      (let ((_e105500105510_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105496105508_))))
                        (let ((_hd105499105513_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105500105510_)))
                              (_tl105498105515_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105500105510_))))
                          ((lambda (_L105518_)
                             (let* ((_c-body105532_
                                     (map (lambda (_g105527105529_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105492_
                                               _g105527105529_)))
                                          _L105518_))
                                    (_c-body105537_
                                     (filter (lambda (_$obj105534_)
                                               (let ((__tmp114869
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj105534_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp114869)))
                                             _c-body105532_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body105537_))))
                           _tl105498105515_)))
                      (let ()
                        (declare (not safe))
                        (_g105495105505_ _g105496105508_))))))
          (declare (not safe))
          (_g105494105540_ _stx105493_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self105400_ _stx105401_)
        (let* ((_g105403105413_
                (lambda (_g105404105410_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105404105410_))))
               (_g105402105489_
                (lambda (_g105404105416_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105404105416_))
                      (let ((_e105408105418_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105404105416_))))
                        (let ((_hd105407105421_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105408105418_)))
                              (_tl105406105423_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105408105418_))))
                          ((lambda (_L105426_)
                             (let* ((_phi105436_
                                     (let ((__tmp114870
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp114870 '1)))
                                    (_block105438_
                                     (let ((__tmp114871
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self105400_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp114871
                                        _phi105436_)))
                                    (_compiled105441_
                                     (let ((__tmp114872
                                            (lambda ()
                                              (let ((__tmp114874
                                                     (let ((__tmp114875
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp114875
                                                             _L105426_)))
                                                    (__tmp114873
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self105400_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp114874
                                                 'state:
                                                 __tmp114873)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114872
                                        gx#current-expander-phi
                                        _phi105436_))))
                               (let* ((_g105444105454_
                                       (lambda (_g105445105451_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g105445105451_))))
                                      (_g105443105486_
                                       (lambda (_g105445105457_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g105445105457_))
                                             (let ((_e105449105459_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g105445105457_))))
                                               (let ((_hd105448105462_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105449105459_)))
                                                     (_tl105447105464_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105449105459_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105448105462_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd105448105462_))
                                                         ((lambda (_L105467_)
                                                            (let ((_c-body105484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj105481_)
                                     (let ((__tmp114876
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj105481_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp114876)))
                                   _L105467_)))
                      (if _block105438_
                          (let ((__tmp114877
                                 (let ((__tmp114878
                                        (let ((__tmp114879
                                               (let ((__tmp114883
                                                      (let ((__tmp114884
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp114884)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114880
                                                      (let ((__tmp114881
                                                             (let ((__tmp114882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block105438_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp114882))))
                (declare (not safe))
                (cons __tmp114881 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114883
                                                       __tmp114880))))
                                          (declare (not safe))
                                          (cons '%#call __tmp114879))))
                                   (declare (not safe))
                                   (cons __tmp114878 _c-body105484_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp114877))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body105484_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body105484_))))))
                  _tl105447105464_)
                 (let ()
                   (declare (not safe))
                   (_g105444105454_ _g105445105457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105444105454_
                                                        _g105445105457_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g105444105454_
                                                _g105445105457_))))))
                                 (declare (not safe))
                                 (_g105443105486_ _compiled105441_))))
                           _tl105406105423_)))
                      (let ()
                        (declare (not safe))
                        (_g105403105413_ _g105404105416_))))))
          (declare (not safe))
          (_g105402105489_ _stx105401_))))
    (define gxc#generate-meta-module%
      (lambda (_self105331_ _stx105332_)
        (let ((__tmp114885
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self105331_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114885))
        (let* ((_g105334105348_
                (lambda (_g105335105345_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105335105345_))))
               (_g105333105397_
                (lambda (_g105335105351_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105335105351_))
                      (let ((_e105340105353_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105335105351_))))
                        (let ((_hd105339105356_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105340105353_)))
                              (_tl105338105358_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105340105353_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105338105358_))
                              (let ((_e105343105361_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105338105358_))))
                                (let ((_hd105342105364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105343105361_)))
                                      (_tl105341105366_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105343105361_))))
                                  ((lambda (_L105369_ _L105370_)
                                     (let ((_key105383_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L105370_))))
                                       (if (interned-symbol? _key105383_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx105332_
                                              _L105370_
                                              _key105383_)))
                                       (let* ((_ctx105385_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L105370_)))
                                              (_code105388_
                                               (let ((__tmp114886
                                                      (lambda ()
                                                        (let ((__tmp114887
                                                               (##structure-ref
                                                                _ctx105385_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self105331_
                                                           __tmp114887)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp114886
                                                  gx#current-expander-context
                                                  _ctx105385_)))
                                              (_rt105390_
                                               (let ((__tmp114888
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp114888
                                                  _ctx105385_)))
                                              (_loader105392_
                                               (if _rt105390_
                                                   (let ((__tmp114889
                                                          (let ((__tmp114890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114894
                                (let ((__tmp114895
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp114895)))
                               (__tmp114891
                                (let ((__tmp114892
                                       (let ((__tmp114893
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt105390_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp114893))))
                                  (declare (not safe))
                                  (cons __tmp114892 '()))))
                           (declare (not safe))
                           (cons __tmp114894 __tmp114891))))
                    (declare (not safe))
                    (cons '%#call __tmp114890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114889 '()))
                                                   '()))
                                              (_modid105394_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L105370_))))
                                         (let ((__tmp114896
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self105331_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp114896))
                                         (let ((__tmp114897
                                                (let ((__tmp114898
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code105388_
                                                               _loader105392_))))
                                                  (declare (not safe))
                                                  (cons _modid105394_
                                                        __tmp114898))))
                                           (declare (not safe))
                                           (cons '%#module __tmp114897)))))
                                   _tl105341105366_
                                   _hd105342105364_)))
                              (let ()
                                (declare (not safe))
                                (_g105334105348_ _g105335105351_)))))
                      (let ()
                        (declare (not safe))
                        (_g105334105348_ _g105335105351_))))))
          (declare (not safe))
          (_g105333105397_ _stx105332_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx105321_ _context-chain105322_)
        (let _lp105324_ ((_ctx105326_ _ctx105321_) (_path105327_ '()))
          (let ((_super105329_
                 (##structure-ref _ctx105326_ '3 gx#phi-context::t '#f)))
            (if (memq _super105329_ _context-chain105322_)
                (let ((__tmp114903
                       (let ((__tmp114904
                              (car (##structure-ref
                                    _ctx105326_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp114904 _path105327_))))
                  (declare (not safe))
                  (cons '#f __tmp114903))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super105329_
                       'gx#module-context::t))
                    (let ((__tmp114901
                           (let ((__tmp114902
                                  (car (##structure-ref
                                        _ctx105326_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp114902 _path105327_))))
                      (declare (not safe))
                      (_lp105324_ _super105329_ __tmp114901))
                    (let ((__tmp114899
                           (let ((__tmp114900
                                  (##structure-ref
                                   _ctx105326_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp114900))))
                      (declare (not safe))
                      (cons __tmp114899 _path105327_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp105316_ ((_ctx105318_ (gx#current-expander-context))
                         (_r105319_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx105318_ 'gx#module-context::t))
              (let ((__tmp114906
                     (##structure-ref _ctx105318_ '3 gx#phi-context::t '#f))
                    (__tmp114905
                     (let ()
                       (declare (not safe))
                       (cons _ctx105318_ _r105319_))))
                (declare (not safe))
                (_lp105316_ __tmp114906 __tmp114905))
              _r105319_))))
    (define gxc#generate-meta-import%
      (lambda (_self105085_ _stx105086_)
        (letrec* ((_context-chain105088_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec105089_
                   (lambda (_in105252_)
                     (let* ((_in105253105265_ _in105252_)
                            (_E105255105269_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in105253105265_))))
                            (_K105256105279_
                             (lambda (_phi105272_
                                      _name105273_
                                      _src-name105274_
                                      _src-phi105275_
                                      _src-key105276_
                                      _src-ctx105277_)
                               (let ((__tmp114907
                                      (let ((__tmp114911
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name105273_)))
                                            (__tmp114908
                                             (let ((__tmp114909
                                                    (let ((__tmp114910
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name105274_))))
                                                      (declare (not safe))
                                                      (cons __tmp114910 '()))))
                                               (declare (not safe))
                                               (cons _src-phi105275_
                                                     __tmp114909))))
                                        (declare (not safe))
                                        (cons __tmp114911 __tmp114908))))
                                 (declare (not safe))
                                 (cons _phi105272_ __tmp114907)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in105253105265_
                              'gx#module-import::t))
                           (let ((_e105257105282_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in105253105265_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e105257105282_
                                    'gx#module-export::t))
                                 (let* ((_e105260105285_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105257105282_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx105288_ _e105260105285_)
                                        (_e105261105290_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105257105282_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key105293_ _e105261105290_)
                                        (_e105262105295_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105257105282_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi105298_ _e105262105295_)
                                        (_e105263105300_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105257105282_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name105303_ _e105263105300_)
                                        (_e105258105305_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105253105265_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name105308_ _e105258105305_)
                                        (_e105259105310_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105253105265_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi105313_ _e105259105310_))
                                   (declare (not safe))
                                   (_K105256105279_
                                    _phi105313_
                                    _name105308_
                                    _src-name105303_
                                    _src-phi105298_
                                    _src-key105293_
                                    _src-ctx105288_))
                                 (let ()
                                   (declare (not safe))
                                   (_E105255105269_))))
                           (let () (declare (not safe)) (_E105255105269_))))))
                  (_make-import-path105090_
                   (lambda (_ctx105250_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105250_
                        _context-chain105088_))))
                  (_make-import-spec-in105091_
                   (lambda (_ctx105247_ _in105248_)
                     (let ((__tmp114912
                            (let ((__tmp114914
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path105090_ _ctx105247_)))
                                  (__tmp114913 (reverse _in105248_)))
                              (declare (not safe))
                              (cons __tmp114914 __tmp114913))))
                       (declare (not safe))
                       (cons 'spec: __tmp114912)))))
          (let ((__tmp114915
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self105085_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp114915))
          (let* ((_g105093105103_
                  (lambda (_g105094105100_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105094105100_))))
                 (_g105092105244_
                  (lambda (_g105094105106_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105094105106_))
                        (let ((_e105098105108_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105094105106_))))
                          (let ((_hd105097105111_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105098105108_)))
                                (_tl105096105113_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105098105108_))))
                            ((lambda (_L105116_)
                               (let _lp105127_ ((_rest105129_ _L105116_)
                                                (_current-src105130_ '#f)
                                                (_current-in105131_ '())
                                                (_r105132_ '()))
                                 (let* ((_rest105133105141_ _rest105129_)
                                        (_else105135105151_
                                         (lambda ()
                                           (let* ((_r105149_
                                                   (if _current-src105130_
                                                       (let ((__tmp114916
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in105091_
                         _current-src105130_
                         _current-in105131_))))
                 (declare (not safe))
                 (cons __tmp114916 _r105132_))
               _r105132_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp114917
                                                   (reverse _r105149_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp114917))))
                                        (_K105137105232_
                                         (lambda (_rest105154_ _in105155_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in105155_
                                                  'gx#module-import::t))
                                               (let* ((_in105156105163_
                                                       _in105155_)
                                                      (_E105158105167_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in105156105163_))))
              (_K105159105172_
               (lambda (_src-ctx105170_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src105130_ _src-ctx105170_))
                     (let ((__tmp114933
                            (let ((__tmp114934
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec105089_ _in105155_))))
                              (declare (not safe))
                              (cons __tmp114934 _current-in105131_))))
                       (declare (not safe))
                       (_lp105127_
                        _rest105154_
                        _current-src105130_
                        __tmp114933
                        _r105132_))
                     (if _current-src105130_
                         (let ((__tmp114931
                                (let ((__tmp114932
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105089_
                                          _in105155_))))
                                  (declare (not safe))
                                  (cons __tmp114932 '())))
                               (__tmp114929
                                (let ((__tmp114930
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in105091_
                                          _current-src105130_
                                          _current-in105131_))))
                                  (declare (not safe))
                                  (cons __tmp114930 _r105132_))))
                           (declare (not safe))
                           (_lp105127_
                            _rest105154_
                            _src-ctx105170_
                            __tmp114931
                            __tmp114929))
                         (let ((__tmp114927
                                (let ((__tmp114928
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105089_
                                          _in105155_))))
                                  (declare (not safe))
                                  (cons __tmp114928 '()))))
                           (declare (not safe))
                           (_lp105127_
                            _rest105154_
                            _src-ctx105170_
                            __tmp114927
                            _r105132_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in105156105163_
                                                        'gx#module-import::t))
                                                     (let ((_e105160105175_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in105156105163_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e105160105175_
                                                              'gx#module-export::t))
                                                           (let* ((_e105161105178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e105160105175_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx105181_ _e105161105178_))
                     (declare (not safe))
                     (_K105159105172_ _src-ctx105181_))
                   (let () (declare (not safe)) (_E105158105167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E105158105167_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in105155_
                                                      'gx#import-set::t))
                                                   (let* ((_phi105183_
                                                           (##direct-structure-ref
                                                            _in105155_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src105185_
                                                           (##direct-structure-ref
                                                            _in105155_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in105225_
                                                           (let* ((_g105186105195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path105090_ _src105185_)))
                          (_E105189105199_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g105186105195_)))))
                     (let ((_K105191105215_
                            (lambda (_path105213_) _path105213_))
                           (_K105190105205_
                            (lambda (_path105203_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path105203_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g105186105195_))
                           (let ((_tl105193105220_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g105186105195_)))
                                 (_hd105192105218_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g105186105195_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl105193105220_))
                                 (let ((_path105223_ _hd105192105218_))
                                   (declare (not safe))
                                   (_K105191105215_ _path105223_))
                                 (let ((_path105208_ _g105186105195_))
                                   (declare (not safe))
                                   (_K105190105205_ _path105208_))))
                           (let ((_path105208_ _g105186105195_))
                             (declare (not safe))
                             (_K105190105205_ _path105208_))))))
                  (_r105227_
                   (if _current-src105130_
                       (let ((__tmp114922
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in105091_
                                 _current-src105130_
                                 _current-in105131_))))
                         (declare (not safe))
                         (cons __tmp114922 _r105132_))
                       _r105132_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp114923
                                                            (let ((__tmp114924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi105183_))
                               _src-in105225_
                               (let ((__tmp114925
                                      (let ((__tmp114926
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in105225_ '()))))
                                        (declare (not safe))
                                        (cons _phi105183_ __tmp114926))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp114925)))))
                      (declare (not safe))
                      (cons __tmp114924 _r105227_))))
               (declare (not safe))
               (_lp105127_ _rest105154_ '#f '() __tmp114923)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in105155_
                                                          'gx#module-context::t))
                                                       (let* ((_r105230_
                                                               (if _current-src105130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114918
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in105091_
                                     _current-src105130_
                                     _current-in105131_))))
                             (declare (not safe))
                             (cons __tmp114918 _r105132_))
                           _r105132_))
                      (__tmp114919
                       (let ((__tmp114920
                              (let ((__tmp114921
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path105090_ _in105155_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp114921))))
                         (declare (not safe))
                         (cons __tmp114920 _r105230_))))
                 (declare (not safe))
                 (_lp105127_ _rest105154_ '#f '() __tmp114919))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest105133105141_))
                                       (let ((_hd105138105235_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest105133105141_)))
                                             (_tl105139105237_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest105133105141_))))
                                         (let* ((_in105240_ _hd105138105235_)
                                                (_rest105242_
                                                 _tl105139105237_))
                                           (declare (not safe))
                                           (_K105137105232_
                                            _rest105242_
                                            _in105240_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else105135105151_))))))
                             _tl105096105113_)))
                        (let ()
                          (declare (not safe))
                          (_g105093105103_ _g105094105106_))))))
            (declare (not safe))
            (_g105092105244_ _stx105086_)))))
    (define gxc#generate-meta-export%
      (lambda (_self104895_ _stx104896_)
        (letrec* ((_context-chain104898_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path104899_
                   (lambda (_ctx105083_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105083_
                        _context-chain104898_)))))
          (let* ((_g104901104911_
                  (lambda (_g104902104908_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104902104908_))))
                 (_g104900105080_
                  (lambda (_g104902104914_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104902104914_))
                        (let ((_e104906104916_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104902104914_))))
                          (let ((_hd104905104919_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104906104916_)))
                                (_tl104904104921_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104906104916_))))
                            ((lambda (_L104924_)
                               (let _lp104935_ ((_rest104937_ _L104924_)
                                                (_r104938_ '()))
                                 (let* ((_rest104939104947_ _rest104937_)
                                        (_else104941104955_
                                         (lambda ()
                                           (let ((__tmp114935
                                                  (reverse _r104938_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp114935))))
                                        (_K104943105068_
                                         (lambda (_rest104958_ _out104959_)
                                           (let* ((_out104960104973_
                                                   _out104959_)
                                                  (_E104963104977_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out104960104973_)))))
                                             (let ((_K104967105047_
                                                    (lambda (_name105043_
                                                             _phi105044_
                                                             _key105045_)
                                                      (let ((__tmp114936
                                                             (let ((__tmp114937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114938
                                   (let ((__tmp114939
                                          (let ((__tmp114942
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key105045_)))
                                                (__tmp114940
                                                 (let ((__tmp114941
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name105043_))))
                                                   (declare (not safe))
                                                   (cons __tmp114941 '()))))
                                            (declare (not safe))
                                            (cons __tmp114942 __tmp114940))))
                                     (declare (not safe))
                                     (cons _phi105044_ __tmp114939))))
                              (declare (not safe))
                              (cons 'spec: __tmp114938))))
                       (declare (not safe))
                       (cons __tmp114937 _r104938_))))
                (declare (not safe))
                (_lp104935_ _rest104958_ __tmp114936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K104964105027_
                                                    (lambda (_phi104981_
                                                             _src104982_)
                                                      (let* ((_out105022_
                                                              (if _src104982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114943
                                 (let ((__tmp114944
                                        (let* ((_g104983104992_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path104899_
                                                   _src104982_)))
                                               (_E104986104996_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g104983104992_)))))
                                          (let ((_K104988105012_
                                                 (lambda (_path105010_)
                                                   _path105010_))
                                                (_K104987105002_
                                                 (lambda (_path105000_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path105000_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g104983104992_))
                                                (let ((_tl104990105017_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g104983104992_)))
                                                      (_hd104989105015_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g104983104992_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl104990105017_))
                                                      (let ((_path105020_
                                                             _hd104989105015_))
                                                        (declare (not safe))
                                                        (_K104988105012_
                                                         _path105020_))
                                                      (let ((_path105005_
                                                             _g104983104992_))
                                                        (declare (not safe))
                                                        (_K104987105002_
                                                         _path105005_))))
                                                (let ((_path105005_
                                                       _g104983104992_))
                                                  (declare (not safe))
                                                  (_K104987105002_
                                                   _path105005_)))))))
                                   (declare (not safe))
                                   (cons __tmp114944 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp114943))
                          '#t))
                     (_out105024_
                      (if (let () (declare (not safe)) (fxzero? _phi104981_))
                          _out105022_
                          (let ((__tmp114945
                                 (let ((__tmp114946
                                        (let ()
                                          (declare (not safe))
                                          (cons _out105022_ '()))))
                                   (declare (not safe))
                                   (cons _phi104981_ __tmp114946))))
                            (declare (not safe))
                            (cons 'phi: __tmp114945)))))
                (let ((__tmp114947
                       (let ()
                         (declare (not safe))
                         (cons _out105024_ _r104938_))))
                  (declare (not safe))
                  (_lp104935_ _rest104958_ __tmp114947))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match104962105040_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out104960104973_
                                                               'gx#export-set::t))
                                                            (let* ((_e104965105030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104960104973_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e104966105035_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104960104973_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src105033_ _e104965105030_)
                            (_phi105038_ _e104966105035_))
                        (let ()
                          (declare (not safe))
                          (_K104964105027_ _phi105038_ _src105033_))))
                    (let () (declare (not safe)) (_E104963104977_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out104960104973_
                                                        'gx#module-export::t))
                                                     (let* ((_e104968105050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out104960104973_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e104969105053_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104960104973_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e104970105058_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104960104973_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e104971105063_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104960104973_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key105056_ _e104969105053_)
                     (_phi105061_ _e104970105058_)
                     (_name105066_ _e104971105063_))
                 (let ()
                   (declare (not safe))
                   (_K104967105047_ _name105066_ _phi105061_ _key105056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match104962105040_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104939104947_))
                                       (let ((_hd104944105071_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104939104947_)))
                                             (_tl104945105073_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104939104947_))))
                                         (let* ((_out105076_ _hd104944105071_)
                                                (_rest105078_
                                                 _tl104945105073_))
                                           (declare (not safe))
                                           (_K104943105068_
                                            _rest105078_
                                            _out105076_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104941104955_))))))
                             _tl104904104921_)))
                        (let ()
                          (declare (not safe))
                          (_g104901104911_ _g104902104914_))))))
            (declare (not safe))
            (_g104900105080_ _stx104896_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self104856_ _stx104857_)
        (let ((__tmp114948
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104856_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114948))
        (let* ((_g104859104869_
                (lambda (_g104860104866_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104860104866_))))
               (_g104858104892_
                (lambda (_g104860104872_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104860104872_))
                      (let ((_e104864104874_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104860104872_))))
                        (let ((_hd104863104877_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104864104874_)))
                              (_tl104862104879_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104864104874_))))
                          ((lambda (_L104882_)
                             (let ((__tmp114949
                                    (map gxc#generate-runtime-identifier
                                         _L104882_)))
                               (declare (not safe))
                               (cons '%#provide __tmp114949)))
                           _tl104862104879_)))
                      (let ()
                        (declare (not safe))
                        (_g104859104869_ _g104860104872_))))))
          (declare (not safe))
          (_g104858104892_ _stx104857_))))
    (define gxc#generate-meta-extern%
      (lambda (_self104727_ _stx104728_)
        (letrec ((_generate1104730_
                  (lambda (_id104851_ _eid104852_)
                    (let ((_eid104854_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid104852_))))
                      (if (interned-symbol? _eid104854_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx104728_
                             _eid104854_)))
                      (let ((__tmp114951
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id104851_)))
                            (__tmp114950
                             (let ()
                               (declare (not safe))
                               (cons _eid104854_ '()))))
                        (declare (not safe))
                        (cons __tmp114951 __tmp114950))))))
          (let* ((_g104732104760_
                  (lambda (_g104733104757_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104733104757_))))
                 (_g104731104848_
                  (lambda (_g104733104763_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104733104763_))
                        (let ((_e104738104765_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104733104763_))))
                          (let ((_hd104737104768_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104738104765_)))
                                (_tl104736104770_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104738104765_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl104736104770_))
                                (let ((_g114952_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl104736104770_
                                          '0))))
                                  (begin
                                    (let ((_g114953_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114952_)
                                                 (##vector-length _g114952_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114953_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114953_)))
                                    (let ((_target104739104773_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114952_ 0)))
                                          (_tl104741104775_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114952_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104741104775_))
                                          (letrec ((_loop104742104778_
                                                    (lambda (_hd104740104781_
                                                             _eid104746104783_
                                                             _id104747104785_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd104740104781_))
                                                          (let ((_e104743104788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd104740104781_))))
                    (let ((_lp-hd104744104791_
                           (let ()
                             (declare (not safe))
                             (##car _e104743104788_)))
                          (_lp-tl104745104793_
                           (let ()
                             (declare (not safe))
                             (##cdr _e104743104788_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd104744104791_))
                          (let ((_e104752104796_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd104744104791_))))
                            (let ((_hd104751104799_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104752104796_)))
                                  (_tl104750104801_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104752104796_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl104750104801_))
                                  (let ((_e104755104804_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl104750104801_))))
                                    (let ((_hd104754104807_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e104755104804_)))
                                          (_tl104753104809_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e104755104804_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104753104809_))
                                          (let ((__tmp114958
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104754104807_
                                                         _eid104746104783_)))
                                                (__tmp114957
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104751104799_
                                                         _id104747104785_))))
                                            (declare (not safe))
                                            (_loop104742104778_
                                             _lp-tl104745104793_
                                             __tmp114958
                                             __tmp114957))
                                          (let ()
                                            (declare (not safe))
                                            (_g104732104760_
                                             _g104733104763_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g104732104760_ _g104733104763_)))))
                          (let ()
                            (declare (not safe))
                            (_g104732104760_ _g104733104763_)))))
                  (let ((_eid104748104812_ (reverse _eid104746104783_))
                        (_id104749104814_ (reverse _id104747104785_)))
                    ((lambda (_L104817_ _L104818_)
                       (let ((__tmp114954
                              (map _generate1104730_
                                   (let ((__tmp114955
                                          (lambda (_g104833104836_
                                                   _g104834104838_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104833104836_
                                                    _g104834104838_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114955 '() _L104818_))
                                   (let ((__tmp114956
                                          (lambda (_g104840104843_
                                                   _g104841104845_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104840104843_
                                                    _g104841104845_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114956 '() _L104817_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp114954)))
                     _eid104748104812_
                     _id104749104814_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop104742104778_
                                               _target104739104773_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g104732104760_
                                             _g104733104763_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g104732104760_ _g104733104763_)))))
                        (let ()
                          (declare (not safe))
                          (_g104732104760_ _g104733104763_))))))
            (declare (not safe))
            (_g104731104848_ _stx104728_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self104517_ _stx104518_)
        (letrec ((_generate1104520_
                  (lambda (_id104722_)
                    (let ((_eid104724_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id104722_)))
                          (_ident104725_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id104722_))))
                      (let ((__tmp114959
                             (let ((__tmp114960
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid104724_ '()))))
                               (declare (not safe))
                               (cons _ident104725_ __tmp114960))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp114959)))))
                 (_generate*104521_
                  (lambda (_all104690_)
                    (let* ((_all104691104699_ _all104690_)
                           (_else104693104707_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all104690_))))
                           (_K104695104712_
                            (lambda (_one104710_) _one104710_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all104691104699_))
                          (let ((_hd104696104715_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all104691104699_)))
                                (_tl104697104717_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all104691104699_))))
                            (let ((_one104720_ _hd104696104715_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104697104717_))
                                  (let ()
                                    (declare (not safe))
                                    (_K104695104712_ _one104720_))
                                  (let ()
                                    (declare (not safe))
                                    (_else104693104707_)))))
                          (let ()
                            (declare (not safe))
                            (_else104693104707_)))))))
          (let* ((_g104523104540_
                  (lambda (_g104524104537_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104524104537_))))
                 (_g104522104687_
                  (lambda (_g104524104543_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104524104543_))
                        (let ((_e104529104545_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104524104543_))))
                          (let ((_hd104528104548_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104529104545_)))
                                (_tl104527104550_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104529104545_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104527104550_))
                                (let ((_e104532104553_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104527104550_))))
                                  (let ((_hd104531104556_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104532104553_)))
                                        (_tl104530104558_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104532104553_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104530104558_))
                                        (let ((_e104535104561_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104530104558_))))
                                          (let ((_hd104534104564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104535104561_)))
                                                (_tl104533104566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104535104561_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104533104566_))
                                                ((lambda (_L104569_ _L104570_)
                                                   (let _lp104586_ ((_rest104588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L104570_)
                            (_r104589_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx114103114104_
                                                             _rest104588_)
                                                            (_g104594104611_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx114103114104_)))))
               (let ((___kont114105114106_
                      (lambda (_L104674_)
                        (let ()
                          (declare (not safe))
                          (_lp104586_ _L104674_ _r104589_))))
                     (___kont114107114108_
                      (lambda (_L104647_ _L104648_)
                        (let ((__tmp114961
                               (let ((__tmp114962
                                      (let ()
                                        (declare (not safe))
                                        (_generate1104520_ _L104648_))))
                                 (declare (not safe))
                                 (cons __tmp114962 _r104589_))))
                          (declare (not safe))
                          (_lp104586_ _L104647_ __tmp114961))))
                     (___kont114109114110_
                      (lambda (_L104623_)
                        (let ((__tmp114963
                               (let ((__tmp114964
                                      (let ((__tmp114965
                                             (let ()
                                               (declare (not safe))
                                               (_generate1104520_ _L104623_))))
                                        (declare (not safe))
                                        (cons __tmp114965 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp114964 _r104589_))))
                          (declare (not safe))
                          (_generate*104521_ __tmp114963))))
                     (___kont114111114112_
                      (lambda ()
                        (let ((__tmp114966 (reverse _r104589_)))
                          (declare (not safe))
                          (_generate*104521_ __tmp114966)))))
                 (let ((_g104592104634_
                        (lambda ()
                          (let ((_L104623_ ___stx114103114104_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L104623_))
                                (___kont114109114110_ _L104623_)
                                (___kont114111114112_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx114103114104_))
                       (let ((_e104599104663_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx114103114104_))))
                         (let ((_tl104597104668_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e104599104663_)))
                               (_hd104598104666_
                                (let ()
                                  (declare (not safe))
                                  (##car _e104599104663_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd104598104666_))
                               (let ((_e104600104671_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd104598104666_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e104600104671_ '#f))
                                     (___kont114105114106_ _tl104597104668_)
                                     (___kont114107114108_
                                      _tl104597104668_
                                      _hd104598104666_)))
                               (___kont114107114108_
                                _tl104597104668_
                                _hd104598104666_))))
                       (let () (declare (not safe)) (_g104592104634_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd104534104564_
                                                 _hd104531104556_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104523104540_
                                                   _g104524104543_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104523104540_ _g104524104543_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104523104540_ _g104524104543_)))))
                        (let ()
                          (declare (not safe))
                          (_g104523104540_ _g104524104543_))))))
            (declare (not safe))
            (_g104522104687_ _stx104518_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self104414_ _stx104415_)
        (let* ((_g104417104434_
                (lambda (_g104418104431_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104418104431_))))
               (_g104416104514_
                (lambda (_g104418104437_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104418104437_))
                      (let ((_e104423104439_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104418104437_))))
                        (let ((_hd104422104442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104423104439_)))
                              (_tl104421104444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104423104439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104421104444_))
                              (let ((_e104426104447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104421104444_))))
                                (let ((_hd104425104450_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104426104447_)))
                                      (_tl104424104452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104426104447_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104424104452_))
                                      (let ((_e104429104455_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104424104452_))))
                                        (let ((_hd104428104458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104429104455_)))
                                              (_tl104427104460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104429104455_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104427104460_))
                                              ((lambda (_L104463_ _L104464_)
                                                 (let* ((_eid104479_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L104464_)))
                                                        (_phi104481_
                                                         (let ((__tmp114967
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp114967
                                                                '1)))
                                                        (_block104483_
                                                         (let ((__tmp114968
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self104414_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp114968 _phi104481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g104486104493_
                                                           (lambda (_g104487104490_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g104487104490_))))
                  (_g104485104511_
                   (lambda (_g104487104496_)
                     ((lambda (_L104498_)
                        (let ()
                          (let ((__tmp114973
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self104414_ 'state)))
                                (__tmp114969
                                 (let ((__tmp114972
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp114970
                                        (let ((__tmp114971
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L104463_ '()))))
                                          (declare (not safe))
                                          (cons _L104498_ __tmp114971))))
                                   (declare (not safe))
                                   (cons __tmp114972 __tmp114970))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp114973
                             _phi104481_
                             __tmp114969))))
                      _g104487104496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g104485104511_
                                                      _eid104479_))
                                                   (if _block104483_
                                                       (let ((__tmp114977
                                                              (let ((__tmp114983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114984
                                    (let ((__tmp114985
                                           (let ((__tmp114986
                                                  (let ((__tmp114990
                                                         (let ((__tmp114991
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp114991)))
                (__tmp114987
                 (let ((__tmp114988
                        (let ((__tmp114989
                               (let ()
                                 (declare (not safe))
                                 (cons _block104483_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp114989))))
                   (declare (not safe))
                   (cons __tmp114988 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114990
                                                          __tmp114987))))
                                             (declare (not safe))
                                             (cons '%#call __tmp114986))))
                                      (declare (not safe))
                                      (cons __tmp114985 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp114984)))
                            (__tmp114978
                             (let ((__tmp114979
                                    (let ((__tmp114980
                                           (let ((__tmp114982
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L104464_)))
                                                 (__tmp114981
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid104479_ '()))))
                                             (declare (not safe))
                                             (cons __tmp114982 __tmp114981))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp114980))))
                               (declare (not safe))
                               (cons __tmp114979 '()))))
                        (declare (not safe))
                        (cons __tmp114983 __tmp114978))))
                 (declare (not safe))
                 (cons '%#begin __tmp114977))
               (let ((__tmp114974
                      (let ((__tmp114976
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L104464_)))
                            (__tmp114975
                             (let ()
                               (declare (not safe))
                               (cons _eid104479_ '()))))
                        (declare (not safe))
                        (cons __tmp114976 __tmp114975))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp114974)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104428104458_
                                               _hd104425104450_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104417104434_
                                                 _g104418104437_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104417104434_ _g104418104437_)))))
                              (let ()
                                (declare (not safe))
                                (_g104417104434_ _g104418104437_)))))
                      (let ()
                        (declare (not safe))
                        (_g104417104434_ _g104418104437_))))))
          (declare (not safe))
          (_g104416104514_ _stx104415_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self104346_ _stx104347_)
        (let* ((_g104349104366_
                (lambda (_g104350104363_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104350104363_))))
               (_g104348104411_
                (lambda (_g104350104369_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104350104369_))
                      (let ((_e104355104371_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104350104369_))))
                        (let ((_hd104354104374_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104355104371_)))
                              (_tl104353104376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104355104371_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104353104376_))
                              (let ((_e104358104379_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104353104376_))))
                                (let ((_hd104357104382_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104358104379_)))
                                      (_tl104356104384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104358104379_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104356104384_))
                                      (let ((_e104361104387_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104356104384_))))
                                        (let ((_hd104360104390_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104361104387_)))
                                              (_tl104359104392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104361104387_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104359104392_))
                                              ((lambda (_L104395_ _L104396_)
                                                 (let ((__tmp114992
                                                        (let ((__tmp114995
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L104396_)))
                      (__tmp114993
                       (let ((__tmp114994
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L104395_))))
                         (declare (not safe))
                         (cons __tmp114994 '()))))
                  (declare (not safe))
                  (cons __tmp114995 __tmp114993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp114992)))
                                               _hd104360104390_
                                               _hd104357104382_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104349104366_
                                                 _g104350104369_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104349104366_ _g104350104369_)))))
                              (let ()
                                (declare (not safe))
                                (_g104349104366_ _g104350104369_)))))
                      (let ()
                        (declare (not safe))
                        (_g104349104366_ _g104350104369_))))))
          (declare (not safe))
          (_g104348104411_ _stx104347_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self104343_ _stx104344_)
        (let ((__tmp114997
               (let () (declare (not safe)) (slot-ref__0 _self104343_ 'state)))
              (__tmp114996 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114997 __tmp114996 _stx104344_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self104343_ _stx104344_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self104340_ _stx104341_)
        (let ((__tmp114999
               (let () (declare (not safe)) (slot-ref__0 _self104340_ 'state)))
              (__tmp114998 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114999 __tmp114998 _stx104341_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp115002 (list))
            (__tmp115000
             (let ((__tmp115001
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115001 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp115002
         '(src n open blocks)
         __tmp115000
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args104337_
        (apply make-instance gxc#meta-state::t _$args104337_)))
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
      (lambda (_self104334_ _ctx104335_)
        (if (let ((__tmp115011
                   (let ()
                     (declare (not safe))
                     (##structure-length _self104334_))))
              (declare (not safe))
              (##fx< '4 __tmp115011))
            (begin
              (let ((__tmp115005
                     (let ((__tmp115006
                            (##structure-ref
                             _ctx104335_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp115006)))
                    (__tmp115004
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104334_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104334_
                 __tmp115005
                 '1
                 __tmp115004
                 '#f))
              (let ((__tmp115007
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104334_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104334_
                 '1
                 '2
                 __tmp115007
                 '#f))
              (let ((__tmp115009
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115008
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104334_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104334_
                 __tmp115009
                 '3
                 __tmp115008
                 '#f))
              (let ((__tmp115010
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104334_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104334_
                 '()
                 '4
                 __tmp115010
                 '#f)))
            (let ((__tmp115003
                   (let ()
                     (declare (not safe))
                     (##vector-length _self104334_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self104334_
                     '4
                     __tmp115003)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp115014 (list))
            (__tmp115012
             (let ((__tmp115013
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115013 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp115014
         '(ctx phi n code)
         __tmp115012
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args104209_
        (apply make-instance gxc#meta-state-block::t _$args104209_)))
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
      (lambda (_state104168_ _phi104169_)
        (let* ((_state104170104178_ _state104168_)
               (_E104172104182_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state104170104178_))))
               (_K104173104191_
                (lambda (_open104185_ _n104186_ _src104187_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open104185_ _phi104169_))
                      '#f
                      (let ((_block-ref104189_
                             (string-append
                              _src104187_
                              '"~"
                              (number->string _n104186_))))
                        (##structure-set!
                         _state104168_
                         (let () (declare (not safe)) (fx+ _n104186_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp115015
                               (let ((__tmp115016
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp115016
                                  _phi104169_
                                  _n104186_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open104185_ _phi104169_ __tmp115015))
                        _block-ref104189_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state104170104178_
                 'gxc#meta-state::t))
              (let* ((_e104174104194_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104170104178_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src104197_ _e104174104194_)
                     (_e104175104199_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104170104178_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n104202_ _e104175104199_)
                     (_e104176104204_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104170104178_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open104207_ _e104176104204_))
                (declare (not safe))
                (_K104173104191_ _open104207_ _n104202_ _src104197_))
              (let () (declare (not safe)) (_E104172104182_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state104162_ _phi104163_ _stx104164_)
        (let ((_block104166_
               (let ((__tmp115017
                      (##structure-ref
                       _state104162_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp115017 _phi104163_))))
          (##structure-set!
           _block104166_
           (let ((__tmp115018
                  (##structure-ref
                   _block104166_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx104164_ __tmp115018))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state104157_)
        (##structure-set!
         _state104157_
         (let ((__tmp115021
                (lambda (_g115022_ _block104159_ _r104160_)
                  (let ()
                    (declare (not safe))
                    (cons _block104159_ _r104160_))))
               (__tmp115020
                (##structure-ref _state104157_ '4 gxc#meta-state::t '#f))
               (__tmp115019
                (##structure-ref _state104157_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp115021 __tmp115020 __tmp115019))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state104157_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state104109_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state104109_))
        (let ((__tmp115024
               (lambda (_block104111_ _r104112_)
                 (let* ((_block104113104122_ _block104111_)
                        (_E104115104126_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block104113104122_))))
                        (_K104116104134_
                         (lambda (_code104129_
                                  _n104130_
                                  _phi104131_
                                  _ctx104132_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code104129_))
                               _r104112_
                               (let ((__tmp115025
                                      (let ((__tmp115026
                                             (let ((__tmp115027
                                                    (let ((__tmp115028
                                                           (let ((__tmp115029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp115030 (reverse _code104129_)))
                            (declare (not safe))
                            (cons '%#begin __tmp115030))))
                     (declare (not safe))
                     (cons __tmp115029 '()))))
              (declare (not safe))
              (cons _n104130_ __tmp115028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi104131_
                                                     __tmp115027))))
                                        (declare (not safe))
                                        (cons _ctx104132_ __tmp115026))))
                                 (declare (not safe))
                                 (cons __tmp115025 _r104112_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block104113104122_
                          'gxc#meta-state-block::t))
                       (let* ((_e104117104137_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104113104122_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx104140_ _e104117104137_)
                              (_e104118104142_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104113104122_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi104145_ _e104118104142_)
                              (_e104119104147_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104113104122_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n104150_ _e104119104147_)
                              (_e104120104152_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104113104122_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code104155_ _e104120104152_))
                         (declare (not safe))
                         (_K104116104134_
                          _code104155_
                          _n104150_
                          _phi104145_
                          _ctx104140_))
                       (let () (declare (not safe)) (_E104115104126_))))))
              (__tmp115023
               (##structure-ref _state104109_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp115024 '() __tmp115023))))
    (define gxc#collect-expression-refs
      (lambda (_stx104105_)
        (let ((_ht104107_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx104105_ 'table: _ht104107_))
          _ht104107_)))
    (define gxc#collect-refs-ref%
      (lambda (_self104048_ _stx104049_)
        (let* ((_g104051104064_
                (lambda (_g104052104061_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104052104061_))))
               (_g104050104102_
                (lambda (_g104052104067_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104052104067_))
                      (let ((_e104056104069_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104052104067_))))
                        (let ((_hd104055104072_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104056104069_)))
                              (_tl104054104074_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104056104069_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104054104074_))
                              (let ((_e104059104077_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104054104074_))))
                                (let ((_hd104058104080_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104059104077_)))
                                      (_tl104057104082_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104059104077_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl104057104082_))
                                      ((lambda (_L104085_)
                                         (let* ((_bind104097_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L104085_)))
                                                (_eid104099_
                                                 (if _bind104097_
                                                     (##structure-ref
                                                      _bind104097_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L104085_)))))
                                           (let ((__tmp115031
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self104048_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp115031
                                              _eid104099_
                                              _eid104099_))))
                                       _hd104058104080_)
                                      (let ()
                                        (declare (not safe))
                                        (_g104051104064_ _g104052104067_)))))
                              (let ()
                                (declare (not safe))
                                (_g104051104064_ _g104052104067_)))))
                      (let ()
                        (declare (not safe))
                        (_g104051104064_ _g104052104067_))))))
          (declare (not safe))
          (_g104050104102_ _stx104049_))))
    (define gxc#collect-refs-setq%
      (lambda (_self103975_ _stx103976_)
        (let* ((_g103978103995_
                (lambda (_g103979103992_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103979103992_))))
               (_g103977104045_
                (lambda (_g103979103998_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103979103998_))
                      (let ((_e103984104000_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103979103998_))))
                        (let ((_hd103983104003_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103984104000_)))
                              (_tl103982104005_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103984104000_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103982104005_))
                              (let ((_e103987104008_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103982104005_))))
                                (let ((_hd103986104011_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103987104008_)))
                                      (_tl103985104013_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103987104008_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103985104013_))
                                      (let ((_e103990104016_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103985104013_))))
                                        (let ((_hd103989104019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103990104016_)))
                                              (_tl103988104021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103990104016_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103988104021_))
                                              ((lambda (_L104024_ _L104025_)
                                                 (let* ((_bind104040_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L104025_)))
                                                        (_eid104042_
                                                         (if _bind104040_
                                                             (##structure-ref
                                                              _bind104040_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L104025_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp115032
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self103975_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp115032
                                                      _eid104042_
                                                      _eid104042_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self103975_
                                                      _L104024_))))
                                               _hd103989104019_
                                               _hd103986104011_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103978103995_
                                                 _g103979103998_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103978103995_ _g103979103998_)))))
                              (let ()
                                (declare (not safe))
                                (_g103978103995_ _g103979103998_)))))
                      (let ()
                        (declare (not safe))
                        (_g103978103995_ _g103979103998_))))))
          (declare (not safe))
          (_g103977104045_ _stx103976_))))
    (define gxc#find-runtime-begin%
      (lambda (_self103932_ _stx103933_)
        (let* ((_g103935103945_
                (lambda (_g103936103942_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103936103942_))))
               (_g103934103972_
                (lambda (_g103936103948_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103936103948_))
                      (let ((_e103940103950_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103936103948_))))
                        (let ((_hd103939103953_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103940103950_)))
                              (_tl103938103955_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103940103950_))))
                          ((lambda (_L103958_)
                             (let ((__tmp115033
                                    (lambda (_g103967103969_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103932_
                                         _g103967103969_)))))
                               (declare (not safe))
                               (ormap1 __tmp115033 _L103958_)))
                           _tl103938103955_)))
                      (let ()
                        (declare (not safe))
                        (_g103935103945_ _g103936103948_))))))
          (declare (not safe))
          (_g103934103972_ _stx103933_))))
    (define gxc#count-values-single% (lambda (_self103929_ _stx103930_) '1))
    (define gxc#count-values-call%
      (lambda (_self103795_ _stx103796_)
        (let* ((___stx114133114134_ _stx103796_)
               (_g103799103828_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx114133114134_)))))
          (let ((___kont114135114136_
                 (lambda (_L103896_ _L103897_)
                   (length (let ((__tmp115034
                                  (lambda (_g103918103921_ _g103919103923_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g103918103921_
                                            _g103919103923_)))))
                             (declare (not safe))
                             (foldr1 __tmp115034 '() _L103896_)))))
                (___kont114139114140_ (lambda () '#f)))
            (let ((___match114178114179_
                   (lambda (_e103805103840_
                            _hd103804103843_
                            _tl103803103845_
                            _e103808103848_
                            _hd103807103851_
                            _tl103806103853_
                            _e103811103856_
                            _hd103810103859_
                            _tl103809103861_
                            _e103814103864_
                            _hd103813103867_
                            _tl103812103869_
                            ___splice114137114138_
                            _target103815103872_
                            _tl103817103874_)
                     (letrec ((_loop103818103877_
                               (lambda (_hd103816103880_ _rand103822103882_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103816103880_))
                                     (let ((_e103819103885_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103816103880_))))
                                       (let ((_lp-tl103821103890_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103819103885_)))
                                             (_lp-hd103820103888_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103819103885_))))
                                         (let ((__tmp115035
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd103820103888_
                                                        _rand103822103882_))))
                                           (declare (not safe))
                                           (_loop103818103877_
                                            _lp-tl103821103890_
                                            __tmp115035))))
                                     (let ((_rand103823103893_
                                            (reverse _rand103822103882_)))
                                       (let ((_L103896_ _rand103823103893_)
                                             (_L103897_ _hd103813103867_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L103897_
                                                'values))
                                             (___kont114135114136_
                                              _L103896_
                                              _L103897_)
                                             (___kont114139114140_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop103818103877_ _target103815103872_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx114133114134_))
                  (let ((_e103805103840_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx114133114134_))))
                    (let ((_tl103803103845_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103805103840_)))
                          (_hd103804103843_
                           (let ()
                             (declare (not safe))
                             (##car _e103805103840_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103803103845_))
                          (let ((_e103808103848_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103803103845_))))
                            (let ((_tl103806103853_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103808103848_)))
                                  (_hd103807103851_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103808103848_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103807103851_))
                                  (let ((_e103811103856_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103807103851_))))
                                    (let ((_tl103809103861_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103811103856_)))
                                          (_hd103810103859_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103811103856_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103810103859_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103810103859_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103809103861_))
                                                  (let ((_e103814103864_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103809103861_))))
                                                    (let ((_tl103812103869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103814103864_)))
                                                          (_hd103813103867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103814103864_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103812103869_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103806103853_))
                      (let ((___splice114137114138_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103806103853_ '0))))
                        (let ((_tl103817103874_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114137114138_ '1)))
                              (_target103815103872_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114137114138_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103817103874_))
                              (___match114178114179_
                               _e103805103840_
                               _hd103804103843_
                               _tl103803103845_
                               _e103808103848_
                               _hd103807103851_
                               _tl103806103853_
                               _e103811103856_
                               _hd103810103859_
                               _tl103809103861_
                               _e103814103864_
                               _hd103813103867_
                               _tl103812103869_
                               ___splice114137114138_
                               _target103815103872_
                               _tl103817103874_)
                              (___kont114139114140_))))
                      (___kont114139114140_))
                  (___kont114139114140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114139114140_))
                                              (___kont114139114140_))
                                          (___kont114139114140_))))
                                  (___kont114139114140_))))
                          (___kont114139114140_))))
                  (___kont114139114140_)))))))
    (define gxc#count-values-if%
      (lambda (_self103698_ _stx103699_)
        (let* ((_g103701103722_
                (lambda (_g103702103719_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103702103719_))))
               (_g103700103792_
                (lambda (_g103702103725_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103702103725_))
                      (let ((_e103708103727_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103702103725_))))
                        (let ((_hd103707103730_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103708103727_)))
                              (_tl103706103732_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103708103727_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103706103732_))
                              (let ((_e103711103735_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103706103732_))))
                                (let ((_hd103710103738_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103711103735_)))
                                      (_tl103709103740_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103711103735_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103709103740_))
                                      (let ((_e103714103743_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103709103740_))))
                                        (let ((_hd103713103746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103714103743_)))
                                              (_tl103712103748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103714103743_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103712103748_))
                                              (let ((_e103717103751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103712103748_))))
                                                (let ((_hd103716103754_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103717103751_)))
                                                      (_tl103715103756_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103717103751_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103715103756_))
                                                      ((lambda (_L103759_
                                                                _L103760_
                                                                _L103761_)
                                                         (let ((_c1103778103780_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self103698_ _L103760_))))
                   (if _c1103778103780_
                       (let* ((_c1103783_ _c1103778103780_)
                              (_c2103784103786_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103698_ _L103759_))))
                         (if _c2103784103786_
                             (let ((_c2103789_ _c2103784103786_))
                               (if (fx= _c1103783_ _c2103789_) _c1103783_ '#f))
                             '#f))
                       '#f)))
               _hd103716103754_
               _hd103713103746_
               _hd103710103738_)
              (let ()
                (declare (not safe))
                (_g103701103722_ _g103702103725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103701103722_
                                                 _g103702103725_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103701103722_ _g103702103725_)))))
                              (let ()
                                (declare (not safe))
                                (_g103701103722_ _g103702103725_)))))
                      (let ()
                        (declare (not safe))
                        (_g103701103722_ _g103702103725_))))))
          (declare (not safe))
          (_g103700103792_ _stx103699_))))))
