(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710776832)
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
        (letrec ((_hash-e112816_
                  (lambda (_id112818_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id112818_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e112816_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp114174 (list gxc#::void::t))
            (__tmp114172
             (let ((__tmp114173
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114173 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp114174
         '()
         __tmp114172
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args112812_
        (apply make-instance gxc#::collect-bindings::t _$args112812_)))
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
      (lambda (_stx112804_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self112807_
                (let ((__obj114148
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj114148))
               (__tmp114175
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112807_ _stx112804_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114175
           gxc#current-compile-method
           _self112807_))))
    (define gxc#::lift-modules::t
      (let ((__tmp114178 (list gxc#::void::t))
            (__tmp114176
             (let ((__tmp114177
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114177 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp114178
         '(modules)
         __tmp114176
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args112801_
        (apply make-instance gxc#::lift-modules::t _$args112801_)))
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
      (lambda (_g114179_ _modules112772112775_ _stx112777_)
        (let ((_modules112780_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules112772112775_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules112772112775_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self112782_
                  (let ((__obj114150
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114150
                       _modules112780_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj114150))
                 (__tmp114180
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112782_ _stx112777_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114180
             gxc#current-compile-method
             _self112782_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys112771112789_ . _args112791_)
        (apply gxc#apply-lift-modules__%
               _keys112771112789_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112771112789_
                  'modules:
                  absent-value))
               _args112791_)))
    (define gxc#apply-lift-modules
      (lambda _args112773112797_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args112773112797_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp114183 (list))
            (__tmp114181
             (let ((__tmp114182
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114182 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp114183
         '()
         __tmp114181
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args112767_
        (apply make-instance gxc#::find-runtime-code::t _$args112767_)))
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
      (lambda (_stx112759_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self112762_
                (let ((__obj114152
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj114152))
               (__tmp114184
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112762_ _stx112759_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114184
           gxc#current-compile-method
           _self112762_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp114187 (list gxc#::false::t))
            (__tmp114185
             (let ((__tmp114186
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114186 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp114187
         '()
         __tmp114185
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args112756_
        (apply make-instance gxc#::find-lambda-expression::t _$args112756_)))
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
      (lambda (_stx112748_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self112751_
                (let ((__obj114154
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj114154))
               (__tmp114188
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112751_ _stx112748_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114188
           gxc#current-compile-method
           _self112751_))))
    (define gxc#::count-values::t
      (let ((__tmp114191 (list gxc#::false-expression::t))
            (__tmp114189
             (let ((__tmp114190
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114190 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp114191
         '()
         __tmp114189
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args112745_
        (apply make-instance gxc#::count-values::t _$args112745_)))
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
      (lambda (_stx112737_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self112740_
                (let ((__obj114156
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj114156))
               (__tmp114192
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112740_ _stx112737_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114192
           gxc#current-compile-method
           _self112740_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp114193 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp114193
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args112734_
        (apply make-instance gxc#::generate-runtime-empty::t _$args112734_)))
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
      (let ((__tmp114196 (list gxc#::generate-runtime-empty::t))
            (__tmp114194
             (let ((__tmp114195
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114195 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp114196
         '()
         __tmp114194
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args112730_
        (apply make-instance gxc#::generate-loader::t _$args112730_)))
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
      (lambda (_stx112722_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self112725_
                (let ((__obj114159
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj114159))
               (__tmp114197
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112725_ _stx112722_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114197
           gxc#current-compile-method
           _self112725_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp114198 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp114198
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args112719_
        (apply make-instance gxc#::generate-runtime::t _$args112719_)))
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
      (lambda (_stx112711_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self112714_
                (let ((__obj114161
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj114161))
               (__tmp114199
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112714_ _stx112711_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114199
           gxc#current-compile-method
           _self112714_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp114202 (list gxc#::generate-runtime::t))
            (__tmp114200
             (let ((__tmp114201
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114201 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp114202
         '()
         __tmp114200
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args112708_
        (apply make-instance gxc#::generate-runtime-phi::t _$args112708_)))
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
      (lambda (_stx112700_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self112703_
                (let ((__obj114163
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj114163))
               (__tmp114203
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112703_ _stx112700_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114203
           gxc#current-compile-method
           _self112703_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp114204 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp114204
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args112697_
        (apply make-instance gxc#::collect-expression-refs::t _$args112697_)))
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
      (lambda (_g114205_ _table112668112671_ _stx112673_)
        (let ((_table112676_
               (if (let ()
                     (declare (not safe))
                     (eq? _table112668112671_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table112668112671_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self112678_
                  (let ((__obj114165
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114165
                       _table112676_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj114165))
                 (__tmp114206
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112678_ _stx112673_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114206
             gxc#current-compile-method
             _self112678_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys112667112685_ . _args112687_)
        (apply gxc#apply-collect-expression-refs__%
               _keys112667112685_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112667112685_ 'table: absent-value))
               _args112687_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args112669112693_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args112669112693_)))
    (define gxc#::generate-meta::t
      (let ((__tmp114209 (list gxc#::void-expression::t))
            (__tmp114207
             (let ((__tmp114208
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114208 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp114209
         '(state)
         __tmp114207
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args112663_
        (apply make-instance gxc#::generate-meta::t _$args112663_)))
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
      (lambda (_g114210_ _state112634112637_ _stx112639_)
        (let ((_state112642_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112634112637_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112634112637_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self112644_
                  (let ((__obj114167
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114167
                       _state112642_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj114167))
                 (__tmp114211
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112644_ _stx112639_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114211
             gxc#current-compile-method
             _self112644_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys112633112651_ . _args112653_)
        (apply gxc#apply-generate-meta__%
               _keys112633112651_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112633112651_ 'state: absent-value))
               _args112653_)))
    (define gxc#apply-generate-meta
      (lambda _args112635112659_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args112635112659_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp114214 (list))
            (__tmp114212
             (let ((__tmp114213
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114213 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp114214
         '(state)
         __tmp114212
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args112629_
        (apply make-instance gxc#::generate-meta-phi::t _$args112629_)))
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
      (lambda (_g114215_ _state112600112603_ _stx112605_)
        (let ((_state112608_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112600112603_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112600112603_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self112610_
                  (let ((__obj114169
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114169
                       _state112608_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj114169))
                 (__tmp114216
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112610_ _stx112605_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114216
             gxc#current-compile-method
             _self112610_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys112599112617_ . _args112619_)
        (apply gxc#apply-generate-meta-phi__%
               _keys112599112617_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112599112617_ 'state: absent-value))
               _args112619_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args112601112625_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args112601112625_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self112528_ _stx112529_)
        (let* ((_g112531112548_
                (lambda (_g112532112545_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112532112545_))))
               (_g112530112595_
                (lambda (_g112532112551_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112532112551_))
                      (let ((_e112537112553_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112532112551_))))
                        (let ((_hd112536112556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112537112553_)))
                              (_tl112535112558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112537112553_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112535112558_))
                              (let ((_e112540112561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112535112558_))))
                                (let ((_hd112539112564_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112540112561_)))
                                      (_tl112538112566_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112540112561_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112538112566_))
                                      (let ((_e112543112569_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112538112566_))))
                                        (let ((_hd112542112572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112543112569_)))
                                              (_tl112541112574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112543112569_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112541112574_))
                                              ((lambda (_L112577_ _L112578_)
                                                 (let ((__tmp114217
                                                        (lambda (_bind112593_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind112593_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind112593_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp114217
                                                    _L112578_)))
                                               _hd112542112572_
                                               _hd112539112564_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112531112548_
                                                 _g112532112551_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112531112548_ _g112532112551_)))))
                              (let ()
                                (declare (not safe))
                                (_g112531112548_ _g112532112551_)))))
                      (let ()
                        (declare (not safe))
                        (_g112531112548_ _g112532112551_))))))
          (declare (not safe))
          (_g112530112595_ _stx112529_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self112460_ _stx112461_)
        (let* ((_g112463112480_
                (lambda (_g112464112477_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112464112477_))))
               (_g112462112525_
                (lambda (_g112464112483_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112464112483_))
                      (let ((_e112469112485_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112464112483_))))
                        (let ((_hd112468112488_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112469112485_)))
                              (_tl112467112490_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112469112485_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112467112490_))
                              (let ((_e112472112493_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112467112490_))))
                                (let ((_hd112471112496_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112472112493_)))
                                      (_tl112470112498_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112472112493_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112470112498_))
                                      (let ((_e112475112501_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112470112498_))))
                                        (let ((_hd112474112504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112475112501_)))
                                              (_tl112473112506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112475112501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112473112506_))
                                              ((lambda (_L112509_ _L112510_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L112510_
                                                    '#t)))
                                               _hd112474112504_
                                               _hd112471112496_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112463112480_
                                                 _g112464112483_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112463112480_ _g112464112483_)))))
                              (let ()
                                (declare (not safe))
                                (_g112463112480_ _g112464112483_)))))
                      (let ()
                        (declare (not safe))
                        (_g112463112480_ _g112464112483_))))))
          (declare (not safe))
          (_g112462112525_ _stx112461_))))
    (define gxc#lift-modules-module%
      (lambda (_self112402_ _stx112403_)
        (let* ((_g112405112419_
                (lambda (_g112406112416_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112406112416_))))
               (_g112404112457_
                (lambda (_g112406112422_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112406112422_))
                      (let ((_e112411112424_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112406112422_))))
                        (let ((_hd112410112427_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112411112424_)))
                              (_tl112409112429_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112411112424_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112409112429_))
                              (let ((_e112414112432_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112409112429_))))
                                (let ((_hd112413112435_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112414112432_)))
                                      (_tl112412112437_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112414112432_))))
                                  ((lambda (_L112440_ _L112441_)
                                     (let ((_ctx112454_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L112441_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self112402_ 'modules))
                                        (let ((__tmp114218
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self112402_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx112454_ __tmp114218)))
                                       (let ((__tmp114219
                                              (lambda ()
                                                (let ((__tmp114220
                                                       (##structure-ref
                                                        _ctx112454_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self112402_
                                                   __tmp114220)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp114219
                                          gx#current-expander-context
                                          _ctx112454_))))
                                   _tl112412112437_
                                   _hd112413112435_)))
                              (let ()
                                (declare (not safe))
                                (_g112405112419_ _g112406112422_)))))
                      (let ()
                        (declare (not safe))
                        (_g112405112419_ _g112406112422_))))))
          (declare (not safe))
          (_g112404112457_ _stx112403_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls112358112360_ (gxc#current-compile-decls)))
          (if _decls112358112360_
              (let ((_decls112363_ _decls112358112360_))
                (let _lp112365_ ((_rest112367_ _decls112363_))
                  (let* ((_rest112368112376_ _rest112367_)
                         (_else112370112384_ (lambda () '#f))
                         (_K112372112390_
                          (lambda (_decls112387_ _decl112388_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl112388_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl112388_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp112365_ _decls112387_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest112368112376_))
                        (let ((_hd112373112393_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest112368112376_)))
                              (_tl112374112395_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest112368112376_))))
                          (let* ((_decl112398_ _hd112373112393_)
                                 (_decls112400_ _tl112374112395_))
                            (declare (not safe))
                            (_K112372112390_ _decls112400_ _decl112398_)))
                        (let () (declare (not safe)) (_else112370112384_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id112352_ _syntax?112353_)
        (let ((_eid112355_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id112352_))
                '1
                gx#binding::t
                '#f))
              (_ht112356_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid112355_)
              '#!void
              (let ((__tmp114221
                     (let ((__tmp114222
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid112355_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp114222 _syntax?112353_))))
                (declare (not safe))
                (hash-put! _ht112356_ _eid112355_ __tmp114221))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1112345_ _id2112346_)
        (letrec ((_symbol-e112348_
                  (lambda (_id112350_)
                    (if (let () (declare (not safe)) (symbol? _id112350_))
                        _id112350_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id112350_))))))
          (let ((__tmp114224
                 (let () (declare (not safe)) (_symbol-e112348_ _id1112345_)))
                (__tmp114223
                 (let () (declare (not safe)) (_symbol-e112348_ _id2112346_))))
            (declare (not safe))
            (eq? __tmp114224 __tmp114223)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id112323_)
        (let ((_$e112325_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id112323_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id112323_))
                   '#f)))
          (if _$e112325_
              ((lambda (_bind112328_)
                 (let ((_eid112330_
                        (##structure-ref _bind112328_ '1 gx#binding::t '#f))
                       (_ht112331_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid112330_)
                       _eid112330_
                       (let ((_$e112333_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht112331_ _eid112330_))))
                         (if _$e112333_
                             (values _$e112333_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind112328_
                                    'gx#local-binding::t))
                                 (let ((_gid112336_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid112330_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht112331_
                                      _eid112330_
                                      _gid112336_))
                                   _gid112336_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind112328_
                                        'gx#module-binding::t))
                                     (let ((_gid112343_
                                            (let ((_$e112338_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind112328_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e112338_
                                                  ((lambda (_ns112341_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns112341_
                                                        '"#"
                                                        _eid112330_)))
                                                   _$e112338_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid112330_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht112331_
                                          _eid112330_
                                          _gid112343_))
                                       _gid112343_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id112323_
                                        _eid112330_
                                        _bind112328_)))))))))
               _$e112325_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id112323_)))
                  (let () (declare (not safe)) (gx#stx-e _id112323_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id112323_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id112321_)
        (if (let () (declare (not safe)) (gx#identifier? _id112321_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id112321_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym112301_ _quote?112302_)
        (let* ((_ht112304_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e112306_
                (let ()
                  (declare (not safe))
                  (hash-get _ht112304_ _sym112301_))))
          (if _$e112306_
              (values _$e112306_)
              (let ((_g112309_
                     (if _quote?112302_
                         (let ((__tmp114225 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym112301_
                            '"__"
                            __tmp114225))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym112301_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht112304_ _sym112301_ _g112309_))
                _g112309_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym112314_)
        (let ((_quote?112316_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym112314_
           _quote?112316_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g114227_
        (let ((_g114226_ (let () (declare (not safe)) (##length _g114227_))))
          (cond ((let () (declare (not safe)) (##fx= _g114226_ 1))
                 (apply (lambda (_sym112314_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym112314_)))
                        _g114227_))
                ((let () (declare (not safe)) (##fx= _g114226_ 2))
                 (apply (lambda (_sym112318_ _quote?112319_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym112318_
                             _quote?112319_)))
                        _g114227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g114227_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id112298_)
        (let ((__tmp114228
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id112298_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp114228))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key112258_)
        (if (interned-symbol? _key112258_)
            _key112258_
            (if (uninterned-symbol? _key112258_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key112258_))
                (let* ((_key112259112266_ _key112258_)
                       (_E112261112270_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key112259112266_))))
                       (_K112262112286_
                        (lambda (_mark112273_ _eid112274_)
                          (let ((_$e112276_
                                 (##structure-ref
                                  _mark112273_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e112276_
                                ((lambda (_ht112279_)
                                   (let ((_$e112281_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht112279_
                                             _eid112274_))))
                                     (if _$e112281_
                                         ((lambda (_id112284_)
                                            (if (interned-symbol? _id112284_)
                                                _id112284_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id112284_))))
                                          _$e112281_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid112274_)))))
                                 _$e112276_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid112274_)))))))
                  (if (let () (declare (not safe)) (##pair? _key112259112266_))
                      (let ((_hd112263112289_
                             (let ()
                               (declare (not safe))
                               (##car _key112259112266_)))
                            (_tl112264112291_
                             (let ()
                               (declare (not safe))
                               (##cdr _key112259112266_))))
                        (let* ((_eid112294_ _hd112263112289_)
                               (_mark112296_ _tl112264112291_))
                          (declare (not safe))
                          (_K112262112286_ _mark112296_ _eid112294_)))
                      (let () (declare (not safe)) (_E112261112270_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top112245_)
        (if _top112245_
            (let ((_ns112247_
                   (##structure-ref
                    (let ((__tmp114230 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp114230))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi112248_ (gx#current-expander-phi)))
              (if _ns112247_
                  (if (fxpositive? _phi112248_)
                      (let ((__tmp114236 (number->string _phi112248_))
                            (__tmp114235 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns112247_
                         '"["
                         __tmp114236
                         '"]#_"
                         __tmp114235
                         '"_"))
                      (let ((__tmp114234 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns112247_ '"#_" __tmp114234 '"_")))
                  (if (fxpositive? _phi112248_)
                      (let ((__tmp114233 (number->string _phi112248_))
                            (__tmp114232 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp114233
                         '"]#_"
                         __tmp114232
                         '"_"))
                      (let ((__tmp114231 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp114231 '"_")))))
            (let ((__tmp114229 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp114229 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top112254_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top112254_))))
    (define gxc#generate-runtime-temporary
      (lambda _g114238_
        (let ((_g114237_ (let () (declare (not safe)) (##length _g114238_))))
          (cond ((let () (declare (not safe)) (##fx= _g114237_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g114238_))
                ((let () (declare (not safe)) (##fx= _g114237_ 1))
                 (apply (lambda (_top112256_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top112256_)))
                        _g114238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g114238_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self112241_ _stx112242_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self112088_ _stx112089_)
        (letrec ((_simplify112091_
                  (lambda (_body112139_)
                    (let _lp112141_ ((_rest112143_ _body112139_)
                                     (_r112144_ '()))
                      (let* ((_rest112145112153_ _rest112143_)
                             (_else112147112161_
                              (lambda () (reverse _r112144_)))
                             (_K112149112229_
                              (lambda (_rest112164_ _hd112165_)
                                (let* ((_hd112166112182_ _hd112165_)
                                       (_else112170112190_
                                        (lambda ()
                                          (let ((__tmp114239
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd112165_
                                                         _r112144_))))
                                            (declare (not safe))
                                            (_lp112141_
                                             _rest112164_
                                             __tmp114239)))))
                                  (let ((_K112178112219_
                                         (lambda (_exprs112217_)
                                           (let ((__tmp114240
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest112164_
                                                            _exprs112217_))))
                                             (declare (not safe))
                                             (_lp112141_
                                              __tmp114240
                                              _r112144_))))
                                        (_K112173112203_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112164_))
                                               (let ((__tmp114241
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112165_
                                                              _r112144_))))
                                                 (declare (not safe))
                                                 (_lp112141_
                                                  _rest112164_
                                                  __tmp114241))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112141_
                                                  _rest112164_
                                                  _r112144_)))))
                                        (_K112172112195_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112164_))
                                               (let ((__tmp114242
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112165_
                                                              _r112144_))))
                                                 (declare (not safe))
                                                 (_lp112141_
                                                  _rest112164_
                                                  __tmp114242))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112141_
                                                  _rest112164_
                                                  _r112144_))))))
                                    (let ((_try-match112169112198_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd112166112182_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K112172112195_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else112170112190_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd112166112182_))
                                          (let ((_tl112180112224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd112166112182_)))
                                                (_hd112179112222_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd112166112182_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd112179112222_
                                                         'begin))
                                                (let ((_exprs112227_
                                                       _tl112180112224_))
                                                  (declare (not safe))
                                                  (_K112178112219_
                                                   _exprs112227_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd112179112222_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl112180112224_))
                                                        (let ((_tl112177112211_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl112180112224_))))
                  (if (let () (declare (not safe)) (##null? _tl112177112211_))
                      (let () (declare (not safe)) (_K112173112203_))
                      (let () (declare (not safe)) (_try-match112169112198_))))
                (let () (declare (not safe)) (_try-match112169112198_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match112169112198_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match112169112198_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest112145112153_))
                            (let ((_hd112150112232_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest112145112153_)))
                                  (_tl112151112234_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest112145112153_))))
                              (let* ((_hd112237_ _hd112150112232_)
                                     (_rest112239_ _tl112151112234_))
                                (declare (not safe))
                                (_K112149112229_ _rest112239_ _hd112237_)))
                            (let ()
                              (declare (not safe))
                              (_else112147112161_))))))))
          (let* ((_g112093112103_
                  (lambda (_g112094112100_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g112094112100_))))
                 (_g112092112136_
                  (lambda (_g112094112106_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g112094112106_))
                        (let ((_e112098112108_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g112094112106_))))
                          (let ((_hd112097112111_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112098112108_)))
                                (_tl112096112113_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112098112108_))))
                            ((lambda (_L112116_)
                               (let* ((_body112131_
                                       (map (lambda (_g112126112128_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self112088_
                                                 _g112126112128_)))
                                            _L112116_))
                                      (_body112133_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify112091_ _body112131_))))
                                 (if (fx= (length _body112133_) '1)
                                     (car _body112133_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body112133_)))))
                             _tl112096112113_)))
                        (let ()
                          (declare (not safe))
                          (_g112093112103_ _g112094112106_))))))
            (declare (not safe))
            (_g112092112136_ _stx112089_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self112049_ _stx112050_)
        (let* ((_g112052112062_
                (lambda (_g112053112059_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112053112059_))))
               (_g112051112085_
                (lambda (_g112053112065_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112053112065_))
                      (let ((_e112057112067_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112053112065_))))
                        (let ((_hd112056112070_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112057112067_)))
                              (_tl112055112072_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112057112067_))))
                          ((lambda (_L112075_)
                             (let ((__tmp114243
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L112075_))))
                               (declare (not safe))
                               (cons 'begin __tmp114243)))
                           _tl112055112072_)))
                      (let ()
                        (declare (not safe))
                        (_g112052112062_ _g112053112065_))))))
          (declare (not safe))
          (_g112051112085_ _stx112050_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self111813_ _stx111814_)
        (let* ((___stx112841112842_ _stx111814_)
               (_g111818111870_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112841112842_)))))
          (let ((___kont112843112844_
                 (lambda (_L112031_ _L112032_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111813_ _L112031_))))
                (___kont112845112846_
                 (lambda (_L111979_ _L111980_ _L111981_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111813_ _L111979_))))
                (___kont112849112850_
                 (lambda (_L111899_ _L111900_)
                   (let ((_decls111915_ (map gx#syntax->datum _L111900_)))
                     (let ((__tmp114246
                            (lambda ()
                              (let ((__tmp114247
                                     (let ((__tmp114250
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls111915_)))
                                           (__tmp114248
                                            (let ((__tmp114249
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self111813_
                                                      _L111899_))))
                                              (declare (not safe))
                                              (cons __tmp114249 '()))))
                                       (declare (not safe))
                                       (cons __tmp114250 __tmp114248))))
                                (declare (not safe))
                                (cons 'begin __tmp114247))))
                           (__tmp114244
                            (let ((__tmp114245 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp114245 _decls111915_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp114246
                        gxc#current-compile-decls
                        __tmp114244))))))
            (let* ((___match112896112897_
                    (lambda (_e111836111923_
                             _hd111835111926_
                             _tl111834111928_
                             _e111839111931_
                             _hd111838111934_
                             _tl111837111936_
                             _e111842111939_
                             _hd111841111942_
                             _tl111840111944_
                             ___splice112847112848_
                             _target111843111947_
                             _tl111845111949_)
                      (letrec ((_loop111846111952_
                                (lambda (_hd111844111955_ _param111850111957_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111844111955_))
                                      (let ((_e111847111960_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111844111955_))))
                                        (let ((_lp-tl111849111965_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111847111960_)))
                                              (_lp-hd111848111963_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111847111960_))))
                                          (let ((__tmp114252
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd111848111963_
                                                         _param111850111957_))))
                                            (declare (not safe))
                                            (_loop111846111952_
                                             _lp-tl111849111965_
                                             __tmp114252))))
                                      (let ((_param111851111968_
                                             (reverse _param111850111957_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl111837111936_))
                                            (let ((_e111854111971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl111837111936_))))
                                              (let ((_tl111852111976_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e111854111971_)))
                                                    (_hd111853111974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e111854111971_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl111852111976_))
                                                    (let ((_L111979_
                                                           _hd111853111974_)
                                                          (_L111980_
                                                           _param111851111968_)
                                                          (_L111981_
                                                           _hd111841111942_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L111981_))
                       (let ((__tmp114251
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L111981_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp114251)))
                  (___kont112845112846_ _L111979_ _L111980_ _L111981_)
                  (___kont112849112850_ _hd111853111974_ _hd111838111934_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g111818111870_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g111818111870_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop111846111952_ _target111843111947_ '())))))
                   (___match112870112871_
                    (lambda (_e111824112007_
                             _hd111823112010_
                             _tl111822112012_
                             _e111827112015_
                             _hd111826112018_
                             _tl111825112020_
                             _e111830112023_
                             _hd111829112026_
                             _tl111828112028_)
                      (let ((_L112031_ _hd111829112026_)
                            (_L112032_ _hd111826112018_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L112032_))
                            (___kont112843112844_ _L112031_ _L112032_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd111826112018_))
                                (let ((_e111842111939_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd111826112018_))))
                                  (let ((_tl111840111944_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e111842111939_)))
                                        (_hd111841111942_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e111842111939_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl111840111944_))
                                        (let ((___splice112847112848_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl111840111944_
                                                  '0))))
                                          (let ((_tl111845111949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112847112848_
                                                    '1)))
                                                (_target111843111947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112847112848_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl111845111949_))
                                                (___match112896112897_
                                                 _e111824112007_
                                                 _hd111823112010_
                                                 _tl111822112012_
                                                 _e111827112015_
                                                 _hd111826112018_
                                                 _tl111825112020_
                                                 _e111842111939_
                                                 _hd111841111942_
                                                 _tl111840111944_
                                                 ___splice112847112848_
                                                 _target111843111947_
                                                 _tl111845111949_)
                                                (___kont112849112850_
                                                 _hd111829112026_
                                                 _hd111826112018_))))
                                        (___kont112849112850_
                                         _hd111829112026_
                                         _hd111826112018_))))
                                (___kont112849112850_
                                 _hd111829112026_
                                 _hd111826112018_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112841112842_))
                  (let ((_e111824112007_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112841112842_))))
                    (let ((_tl111822112012_
                           (let ()
                             (declare (not safe))
                             (##cdr _e111824112007_)))
                          (_hd111823112010_
                           (let ()
                             (declare (not safe))
                             (##car _e111824112007_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl111822112012_))
                          (let ((_e111827112015_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl111822112012_))))
                            (let ((_tl111825112020_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e111827112015_)))
                                  (_hd111826112018_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e111827112015_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl111825112020_))
                                  (let ((_e111830112023_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl111825112020_))))
                                    (let ((_tl111828112028_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e111830112023_)))
                                          (_hd111829112026_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e111830112023_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl111828112028_))
                                          (___match112870112871_
                                           _e111824112007_
                                           _hd111823112010_
                                           _tl111822112012_
                                           _e111827112015_
                                           _hd111826112018_
                                           _tl111825112020_
                                           _e111830112023_
                                           _hd111829112026_
                                           _tl111828112028_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd111826112018_))
                                              (let ((_e111842111939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd111826112018_))))
                                                (let ((_tl111840111944_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e111842111939_)))
                                                      (_hd111841111942_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e111842111939_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl111840111944_))
                                                      (let ((___splice112847112848_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl111840111944_ '0))))
                (let ((_tl111845111949_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112847112848_ '1)))
                      (_target111843111947_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112847112848_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl111845111949_))
                      (___match112896112897_
                       _e111824112007_
                       _hd111823112010_
                       _tl111822112012_
                       _e111827112015_
                       _hd111826112018_
                       _tl111825112020_
                       _e111842111939_
                       _hd111841111942_
                       _tl111840111944_
                       ___splice112847112848_
                       _target111843111947_
                       _tl111845111949_)
                      (let () (declare (not safe)) (_g111818111870_)))))
              (let () (declare (not safe)) (_g111818111870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g111818111870_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111826112018_))
                                      (let ((_e111842111939_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111826112018_))))
                                        (let ((_tl111840111944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111842111939_)))
                                              (_hd111841111942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111842111939_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl111840111944_))
                                              (let ((___splice112847112848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl111840111944_
                                                        '0))))
                                                (let ((_tl111845111949_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112847112848_
                                                          '1)))
                                                      (_target111843111947_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112847112848_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl111845111949_))
                                                      (___match112896112897_
                                                       _e111824112007_
                                                       _hd111823112010_
                                                       _tl111822112012_
                                                       _e111827112015_
                                                       _hd111826112018_
                                                       _tl111825112020_
                                                       _e111842111939_
                                                       _hd111841111942_
                                                       _tl111840111944_
                                                       ___splice112847112848_
                                                       _target111843111947_
                                                       _tl111845111949_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g111818111870_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g111818111870_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111818111870_))))))
                          (let () (declare (not safe)) (_g111818111870_)))))
                  (let () (declare (not safe)) (_g111818111870_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self111772_ _stx111773_)
        (let* ((_g111775111785_
                (lambda (_g111776111782_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111776111782_))))
               (_g111774111810_
                (lambda (_g111776111788_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111776111788_))
                      (let ((_e111780111790_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111776111788_))))
                        (let ((_hd111779111793_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111780111790_)))
                              (_tl111778111795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111780111790_))))
                          ((lambda (_L111798_)
                             (let ((_decls111808_
                                    (map gx#syntax->datum _L111798_)))
                               (gxc#current-compile-decls
                                (let ((__tmp114253
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp114253 _decls111808_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls111808_))))
                           _tl111778111795_)))
                      (let ()
                        (declare (not safe))
                        (_g111775111785_ _g111776111788_))))))
          (declare (not safe))
          (_g111774111810_ _stx111773_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self111518_ _stx111519_)
        (let* ((_g111521111538_
                (lambda (_g111522111535_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111522111535_))))
               (_g111520111769_
                (lambda (_g111522111541_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111522111541_))
                      (let ((_e111527111543_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111522111541_))))
                        (let ((_hd111526111546_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111527111543_)))
                              (_tl111525111548_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111527111543_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111525111548_))
                              (let ((_e111530111551_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111525111548_))))
                                (let ((_hd111529111554_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111530111551_)))
                                      (_tl111528111556_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111530111551_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111528111556_))
                                      (let ((_e111533111559_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111528111556_))))
                                        (let ((_hd111532111562_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111533111559_)))
                                              (_tl111531111564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111533111559_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111531111564_))
                                              ((lambda (_L111567_ _L111568_)
                                                 (let* ((___stx112949112950_
                                                         _L111568_)
                                                        (_g111585111599_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx112949112950_)))))
                                                   (let ((___kont112951112952_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self111518_
                                                               _L111567_))))
                                                         (___kont112953112954_
                                                          (lambda (_L111731_)
                                                            (let ((_eid111740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L111731_))))
                      (let ((_lambda-expr111741111743_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L111567_))))
                        (if _lambda-expr111741111743_
                            (let* ((_lambda-expr111746_
                                    _lambda-expr111741111743_)
                                   (__tmp114254
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp114254
                               _lambda-expr111746_
                               _eid111740_))
                            '#f))
                      (let ((__tmp114255
                             (let ((__tmp114256
                                    (let ((__tmp114257
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self111518_
                                              _L111567_))))
                                      (declare (not safe))
                                      (cons __tmp114257 '()))))
                               (declare (not safe))
                               (cons _eid111740_ __tmp114256))))
                        (declare (not safe))
                        (cons 'define __tmp114255)))))
                 (___kont112955112956_
                  (lambda ()
                    (let* ((_tmp111606_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body111715_
                            (let _lp111608_ ((_rest111610_ _L111568_)
                                             (_k111611_ '0)
                                             (_r111612_ '()))
                              (let* ((___stx112919112920_ _rest111610_)
                                     (_g111617111634_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx112919112920_)))))
                                (let ((___kont112921112922_
                                       (lambda (_L111702_)
                                         (let ((__tmp114258
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111611_ '1))))
                                           (declare (not safe))
                                           (_lp111608_
                                            _L111702_
                                            __tmp114258
                                            _r111612_))))
                                      (___kont112923112924_
                                       (lambda (_L111675_ _L111676_)
                                         (let ((__tmp114265
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111611_ '1)))
                                               (__tmp114259
                                                (let ((__tmp114260
                                                       (let ((__tmp114261
                                                              (let ((__tmp114264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111676_)))
                            (__tmp114262
                             (let ((__tmp114263
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp111606_
                                       _k111611_
                                       _L111675_))))
                               (declare (not safe))
                               (cons __tmp114263 '()))))
                        (declare (not safe))
                        (cons __tmp114264 __tmp114262))))
                 (declare (not safe))
                 (cons 'define __tmp114261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114260
                                                        _r111612_))))
                                           (declare (not safe))
                                           (_lp111608_
                                            _L111675_
                                            __tmp114265
                                            __tmp114259))))
                                      (___kont112925112926_
                                       (lambda (_L111646_)
                                         (let ((__tmp114266
                                                (let ((__tmp114267
                                                       (let ((__tmp114268
                                                              (let ((__tmp114271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111646_)))
                            (__tmp114269
                             (let ((__tmp114270
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp111606_
                                       _k111611_))))
                               (declare (not safe))
                               (cons __tmp114270 '()))))
                        (declare (not safe))
                        (cons __tmp114271 __tmp114269))))
                 (declare (not safe))
                 (cons 'define __tmp114268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114267 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp114266
                                                   _r111612_))))
                                      (___kont112927112928_
                                       (lambda () (reverse _r111612_))))
                                  (let ((_g111615111662_
                                         (lambda ()
                                           (let ((_L111646_
                                                  ___stx112919112920_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L111646_))
                                                 (___kont112925112926_
                                                  _L111646_)
                                                 (___kont112927112928_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112919112920_))
                                        (let ((_e111622111691_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112919112920_))))
                                          (let ((_tl111620111696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e111622111691_)))
                                                (_hd111621111694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e111622111691_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd111621111694_))
                                                (let ((_e111623111699_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd111621111694_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e111623111699_
                                                                '#f))
                                                      (___kont112921112922_
                                                       _tl111620111696_)
                                                      (___kont112923112924_
                                                       _tl111620111696_
                                                       _hd111621111694_)))
                                                (___kont112923112924_
                                                 _tl111620111696_
                                                 _hd111621111694_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g111615111662_)))))))))
                      (let ((__tmp114272
                             (let ((__tmp114275
                                    (let ((__tmp114276
                                           (let ((__tmp114277
                                                  (let ((__tmp114278
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self111518_
                                                            _L111567_))))
                                                    (declare (not safe))
                                                    (cons __tmp114278 '()))))
                                             (declare (not safe))
                                             (cons _tmp111606_ __tmp114277))))
                                      (declare (not safe))
                                      (cons 'define __tmp114276)))
                                   (__tmp114273
                                    (let ((__tmp114274
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp111606_
                                              _L111568_
                                              _L111567_))))
                                      (declare (not safe))
                                      (cons __tmp114274 _body111715_))))
                               (declare (not safe))
                               (cons __tmp114275 __tmp114273))))
                        (declare (not safe))
                        (cons 'begin __tmp114272))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx112949112950_))
                                                         (let ((_e111589111753_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx112949112950_))))
                   (let ((_tl111587111758_
                          (let ()
                            (declare (not safe))
                            (##cdr _e111589111753_)))
                         (_hd111588111756_
                          (let ()
                            (declare (not safe))
                            (##car _e111589111753_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd111588111756_))
                         (let ((_e111590111761_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd111588111756_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e111590111761_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111587111758_))
                                   (___kont112951112952_)
                                   (___kont112955112956_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111587111758_))
                                   (___kont112953112954_ _hd111588111756_)
                                   (___kont112955112956_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl111587111758_))
                             (___kont112953112954_ _hd111588111756_)
                             (___kont112955112956_)))))
                 (___kont112955112956_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd111532111562_
                                               _hd111529111554_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111521111538_
                                                 _g111522111541_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111521111538_ _g111522111541_)))))
                              (let ()
                                (declare (not safe))
                                (_g111521111538_ _g111522111541_)))))
                      (let ()
                        (declare (not safe))
                        (_g111521111538_ _g111522111541_))))))
          (declare (not safe))
          (_g111520111769_ _stx111519_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals111494_ _hd111495_ _expr111496_)
        (let ((_$e111498_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr111496_))))
          (if _$e111498_
              ((lambda (_count111501_)
                 (let ((_len111503_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd111495_)))
                       (_cmp111504_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd111495_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len111503_ '0)
                           (_cmp111504_ _count111501_ _len111503_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr111496_
                          _hd111495_)))))
               _$e111498_)
              (let* ((_len111509_
                      (let () (declare (not safe)) (gx#stx-length _hd111495_)))
                     (_cmp111511_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd111495_))
                          '##fx=
                          '##fx>=))
                     (_errmsg111513_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd111495_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len111509_)
                       '" values"))
                     (_count111515_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp114302
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd111495_))))
                           (declare (not safe))
                           (not __tmp114302))
                         (fx= _len111509_ '0))
                    '#!void
                    (let ((__tmp114279
                           (let ((__tmp114298
                                  (let ((__tmp114299
                                         (let ((__tmp114300
                                                (let ((__tmp114301
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals111494_))))
                                                  (declare (not safe))
                                                  (cons __tmp114301 '()))))
                                           (declare (not safe))
                                           (cons _count111515_ __tmp114300))))
                                    (declare (not safe))
                                    (cons __tmp114299 '())))
                                 (__tmp114280
                                  (let ((__tmp114281
                                         (let ((__tmp114282
                                                (let ((__tmp114287
                                                       (let ((__tmp114288
                                                              (let ((__tmp114289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp114296
                                        (let ((__tmp114297
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len111509_ '()))))
                                          (declare (not safe))
                                          (cons _count111515_ __tmp114297))))
                                   (declare (not safe))
                                   (cons _cmp111511_ __tmp114296))
                                 (let ((__tmp114290
                                        (let ((__tmp114291
                                               (let ((__tmp114292
                                                      (let ((__tmp114293
                                                             (let ((__tmp114294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114295
                                   (let ()
                                     (declare (not safe))
                                     (cons _len111509_ '()))))
                              (declare (not safe))
                              (cons _count111515_ __tmp114295))))
                       (declare (not safe))
                       (cons _cmp111511_ __tmp114294))))
                (declare (not safe))
                (cons __tmp114293 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114292))))
                                          (declare (not safe))
                                          (cons '() __tmp114291))))
                                   (declare (not safe))
                                   (cons 'let __tmp114290)))))
                        (declare (not safe))
                        (cons __tmp114289 '()))))
                 (declare (not safe))
                 (cons 'not __tmp114288)))
              (__tmp114283
               (let ((__tmp114284
                      (let ((__tmp114285
                             (let ((__tmp114286
                                    (let ()
                                      (declare (not safe))
                                      (cons _count111515_ '()))))
                               (declare (not safe))
                               (cons _errmsg111513_ __tmp114286))))
                        (declare (not safe))
                        (cons 'error __tmp114285))))
                 (declare (not safe))
                 (cons __tmp114284 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114287
                                                        __tmp114283))))
                                           (declare (not safe))
                                           (cons 'if __tmp114282))))
                                    (declare (not safe))
                                    (cons __tmp114281 '()))))
                             (declare (not safe))
                             (cons __tmp114298 __tmp114280))))
                      (declare (not safe))
                      (cons 'let __tmp114279))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var111489_)
        (letrec ((_generate-inline111491_
                  (lambda ()
                    (let ((__tmp114303
                           (let ((__tmp114308
                                  (let ((__tmp114309
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111489_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114309)))
                                 (__tmp114304
                                  (let ((__tmp114306
                                         (let ((__tmp114307
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var111489_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp114307)))
                                        (__tmp114305
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp114306 __tmp114305))))
                             (declare (not safe))
                             (cons __tmp114308 __tmp114304))))
                      (declare (not safe))
                      (cons 'if __tmp114303)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111491_))
              (let ((__tmp114310
                     (let ((__tmp114311
                            (let ((__tmp114312
                                   (let ((__tmp114313
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111491_))))
                                     (declare (not safe))
                                     (cons __tmp114313 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114312))))
                       (declare (not safe))
                       (cons '() __tmp114311))))
                (declare (not safe))
                (cons 'let __tmp114310))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var111482_ _i111483_ _rest111484_)
        (letrec ((_generate-inline111486_
                  (lambda ()
                    (if (and (fx= _i111483_ '0)
                             (let ((__tmp114324
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest111484_))))
                               (declare (not safe))
                               (not __tmp114324)))
                        (let ((__tmp114316
                               (let ((__tmp114322
                                      (let ((__tmp114323
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111482_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp114323)))
                                     (__tmp114317
                                      (let ((__tmp114319
                                             (let ((__tmp114320
                                                    (let ((__tmp114321
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var111482_
                                                            __tmp114321))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp114320)))
                                            (__tmp114318
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111482_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114319 __tmp114318))))
                                 (declare (not safe))
                                 (cons __tmp114322 __tmp114317))))
                          (declare (not safe))
                          (cons 'if __tmp114316))
                        (let ((__tmp114314
                               (let ((__tmp114315
                                      (let ()
                                        (declare (not safe))
                                        (cons _i111483_ '()))))
                                 (declare (not safe))
                                 (cons _var111482_ __tmp114315))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp114314))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111486_))
              (let ((__tmp114325
                     (let ((__tmp114326
                            (let ((__tmp114327
                                   (let ((__tmp114328
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111486_))))
                                     (declare (not safe))
                                     (cons __tmp114328 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114327))))
                       (declare (not safe))
                       (cons '() __tmp114326))))
                (declare (not safe))
                (cons 'let __tmp114325))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var111479_ _i111480_)
        (if (fx= _i111480_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp114376
                       (let ((__tmp114383
                              (let ((__tmp114384
                                     (let ()
                                       (declare (not safe))
                                       (cons _var111479_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp114384)))
                             (__tmp114377
                              (let ((__tmp114381
                                     (let ((__tmp114382
                                            (let ()
                                              (declare (not safe))
                                              (cons _var111479_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp114382)))
                                    (__tmp114378
                                     (let ((__tmp114379
                                            (let ((__tmp114380
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var111479_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp114380))))
                                       (declare (not safe))
                                       (cons __tmp114379 '()))))
                                (declare (not safe))
                                (cons __tmp114381 __tmp114378))))
                         (declare (not safe))
                         (cons __tmp114383 __tmp114377))))
                  (declare (not safe))
                  (cons 'if __tmp114376))
                (let ((__tmp114363
                       (let ((__tmp114364
                              (let ((__tmp114365
                                     (let ((__tmp114366
                                            (let ((__tmp114367
                                                   (let ((__tmp114374
                                                          (let ((__tmp114375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var111479_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp114375)))
                 (__tmp114368
                  (let ((__tmp114372
                         (let ((__tmp114373
                                (let ()
                                  (declare (not safe))
                                  (cons _var111479_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp114373)))
                        (__tmp114369
                         (let ((__tmp114370
                                (let ((__tmp114371
                                       (let ()
                                         (declare (not safe))
                                         (cons _var111479_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp114371))))
                           (declare (not safe))
                           (cons __tmp114370 '()))))
                    (declare (not safe))
                    (cons __tmp114372 __tmp114369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114374
                                                           __tmp114368))))
                                              (declare (not safe))
                                              (cons 'if __tmp114367))))
                                       (declare (not safe))
                                       (cons __tmp114366 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp114365))))
                         (declare (not safe))
                         (cons '() __tmp114364))))
                  (declare (not safe))
                  (cons 'let __tmp114363)))
            (if (fx= _i111480_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114354
                           (let ((__tmp114361
                                  (let ((__tmp114362
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111479_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114362)))
                                 (__tmp114355
                                  (let ((__tmp114357
                                         (let ((__tmp114358
                                                (let ((__tmp114359
                                                       (let ((__tmp114360
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var111479_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp114360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114359 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp114358)))
                                        (__tmp114356
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp114357 __tmp114356))))
                             (declare (not safe))
                             (cons __tmp114361 __tmp114355))))
                      (declare (not safe))
                      (cons 'if __tmp114354))
                    (let ((__tmp114341
                           (let ((__tmp114342
                                  (let ((__tmp114343
                                         (let ((__tmp114344
                                                (let ((__tmp114345
                                                       (let ((__tmp114352
                                                              (let ((__tmp114353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111479_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp114353)))
                     (__tmp114346
                      (let ((__tmp114348
                             (let ((__tmp114349
                                    (let ((__tmp114350
                                           (let ((__tmp114351
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var111479_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp114351))))
                                      (declare (not safe))
                                      (cons __tmp114350 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp114349)))
                            (__tmp114347
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp114348 __tmp114347))))
                 (declare (not safe))
                 (cons __tmp114352 __tmp114346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp114345))))
                                           (declare (not safe))
                                           (cons __tmp114344 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114343))))
                             (declare (not safe))
                             (cons '() __tmp114342))))
                      (declare (not safe))
                      (cons 'let __tmp114341)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114337
                           (let ((__tmp114339
                                  (let ((__tmp114340
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111479_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp114340)))
                                 (__tmp114338
                                  (let ()
                                    (declare (not safe))
                                    (cons _i111480_ '()))))
                             (declare (not safe))
                             (cons __tmp114339 __tmp114338))))
                      (declare (not safe))
                      (cons '##list-tail __tmp114337))
                    (let ((__tmp114329
                           (let ((__tmp114330
                                  (let ((__tmp114331
                                         (let ((__tmp114332
                                                (let ((__tmp114333
                                                       (let ((__tmp114335
                                                              (let ((__tmp114336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111479_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp114336)))
                     (__tmp114334
                      (let () (declare (not safe)) (cons _i111480_ '()))))
                 (declare (not safe))
                 (cons __tmp114335 __tmp114334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp114333))))
                                           (declare (not safe))
                                           (cons __tmp114332 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114331))))
                             (declare (not safe))
                             (cons '() __tmp114330))))
                      (declare (not safe))
                      (cons 'let __tmp114329)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self111411_ _stx111412_)
        (let* ((_g111414111431_
                (lambda (_g111415111428_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111415111428_))))
               (_g111413111476_
                (lambda (_g111415111434_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111415111434_))
                      (let ((_e111420111436_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111415111434_))))
                        (let ((_hd111419111439_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111420111436_)))
                              (_tl111418111441_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111420111436_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111418111441_))
                              (let ((_e111423111444_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111418111441_))))
                                (let ((_hd111422111447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111423111444_)))
                                      (_tl111421111449_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111423111444_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111421111449_))
                                      (let ((_e111426111452_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111421111449_))))
                                        (let ((_hd111425111455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111426111452_)))
                                              (_tl111424111457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111426111452_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111424111457_))
                                              ((lambda (_L111460_ _L111461_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self111411_
                                                    _L111461_
                                                    _L111460_)))
                                               _hd111425111455_
                                               _hd111422111447_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111414111431_
                                                 _g111415111434_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111414111431_ _g111415111434_)))))
                              (let ()
                                (declare (not safe))
                                (_g111414111431_ _g111415111434_)))))
                      (let ()
                        (declare (not safe))
                        (_g111414111431_ _g111415111434_))))))
          (declare (not safe))
          (_g111413111476_ _stx111412_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self111370_ _hd111371_ _body111372_)
        (let* ((_hd111374_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd111371_)))
               (_body111376_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self111370_ _body111372_)))
               (_body111408_
                (let* ((_body111377111385_ _body111376_)
                       (_else111379111393_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body111376_ '()))))
                       (_K111381111398_
                        (lambda (_exprs111396_) _exprs111396_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body111377111385_))
                      (let ((_hd111382111401_
                             (let ()
                               (declare (not safe))
                               (##car _body111377111385_)))
                            (_tl111383111403_
                             (let ()
                               (declare (not safe))
                               (##cdr _body111377111385_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd111382111401_ 'begin))
                            (let ((_exprs111406_ _tl111383111403_))
                              (declare (not safe))
                              (_K111381111398_ _exprs111406_))
                            (let ()
                              (declare (not safe))
                              (_else111379111393_))))
                      (let () (declare (not safe)) (_else111379111393_))))))
          (let ((__tmp114385
                 (let () (declare (not safe)) (cons _hd111374_ _body111408_))))
            (declare (not safe))
            (cons 'lambda __tmp114385)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd111368_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd111368_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self109910_ _stx109911_)
        (letrec ((_dispatch-case?109913_
                  (lambda (_hd110598_ _body110599_)
                    (let* ((_form110601_
                            (let ((__tmp114386
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110599_ '()))))
                              (declare (not safe))
                              (cons _hd110598_ __tmp114386)))
                           (___stx112981112982_ _form110601_)
                           (_g110606110763_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx112981112982_)))))
                      (let ((___kont112983112984_
                             (lambda (_L111288_ _L111289_ _L111290_) '#t))
                            (___kont112989112990_
                             (lambda (_L111076_
                                      _L111077_
                                      _L111078_
                                      _L111079_
                                      _L111080_
                                      _L111081_)
                               '#t))
                            (___kont112995112996_
                             (lambda (_L110871_ _L110872_ _L110873_ _L110874_)
                               '#t))
                            (___kont112997112998_ (lambda () '#f)))
                        (let* ((___match113122113123_
                                (lambda (_e110725110775_
                                         _hd110724110778_
                                         _tl110723110780_
                                         _e110728110783_
                                         _hd110727110786_
                                         _tl110726110788_
                                         _e110731110791_
                                         _hd110730110794_
                                         _tl110729110796_
                                         _e110734110799_
                                         _hd110733110802_
                                         _tl110732110804_
                                         _e110737110807_
                                         _hd110736110810_
                                         _tl110735110812_
                                         _e110740110815_
                                         _hd110739110818_
                                         _tl110738110820_
                                         _e110743110823_
                                         _hd110742110826_
                                         _tl110741110828_
                                         _e110746110831_
                                         _hd110745110834_
                                         _tl110744110836_
                                         _e110749110839_
                                         _hd110748110842_
                                         _tl110747110844_
                                         _e110752110847_
                                         _hd110751110850_
                                         _tl110750110852_
                                         _e110755110855_
                                         _hd110754110858_
                                         _tl110753110860_
                                         _e110758110863_
                                         _hd110757110866_
                                         _tl110756110868_)
                                  (let ((_L110871_ _hd110757110866_)
                                        (_L110872_ _hd110748110842_)
                                        (_L110873_ _hd110739110818_)
                                        (_L110874_ _hd110724110778_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L110874_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L110873_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L110874_
                                                _L110871_))
                                             (let ((__tmp114387
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L110872_
                                                       _L110874_))))
                                               (declare (not safe))
                                               (not __tmp114387)))
                                        (___kont112995112996_
                                         _L110871_
                                         _L110872_
                                         _L110873_
                                         _L110874_)
                                        (___kont112997112998_)))))
                               (___match113094113095_
                                (lambda (_e110725110775_
                                         _hd110724110778_
                                         _tl110723110780_
                                         _e110728110783_
                                         _hd110727110786_
                                         _tl110726110788_
                                         _e110731110791_
                                         _hd110730110794_
                                         _tl110729110796_
                                         _e110734110799_
                                         _hd110733110802_
                                         _tl110732110804_
                                         _e110737110807_
                                         _hd110736110810_
                                         _tl110735110812_
                                         _e110740110815_
                                         _hd110739110818_
                                         _tl110738110820_
                                         _e110743110823_
                                         _hd110742110826_
                                         _tl110741110828_
                                         _e110746110831_
                                         _hd110745110834_
                                         _tl110744110836_
                                         _e110749110839_
                                         _hd110748110842_
                                         _tl110747110844_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110741110828_))
                                      (let ((_e110752110847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110741110828_))))
                                        (let ((_tl110750110852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110752110847_)))
                                              (_hd110751110850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110752110847_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110751110850_))
                                              (let ((_e110755110855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110751110850_))))
                                                (let ((_tl110753110860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110755110855_)))
                                                      (_hd110754110858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110755110855_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd110754110858_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd110754110858_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110753110860_))
                      (let ((_e110758110863_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110753110860_))))
                        (let ((_tl110756110868_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110758110863_)))
                              (_hd110757110866_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110758110863_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110756110868_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl110750110852_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl110726110788_))
                                      (___match113122113123_
                                       _e110725110775_
                                       _hd110724110778_
                                       _tl110723110780_
                                       _e110728110783_
                                       _hd110727110786_
                                       _tl110726110788_
                                       _e110731110791_
                                       _hd110730110794_
                                       _tl110729110796_
                                       _e110734110799_
                                       _hd110733110802_
                                       _tl110732110804_
                                       _e110737110807_
                                       _hd110736110810_
                                       _tl110735110812_
                                       _e110740110815_
                                       _hd110739110818_
                                       _tl110738110820_
                                       _e110743110823_
                                       _hd110742110826_
                                       _tl110741110828_
                                       _e110746110831_
                                       _hd110745110834_
                                       _tl110744110836_
                                       _e110749110839_
                                       _hd110748110842_
                                       _tl110747110844_
                                       _e110752110847_
                                       _hd110751110850_
                                       _tl110750110852_
                                       _e110755110855_
                                       _hd110754110858_
                                       _tl110753110860_
                                       _e110758110863_
                                       _hd110757110866_
                                       _tl110756110868_)
                                      (___kont112997112998_))
                                  (___kont112997112998_))
                              (___kont112997112998_))))
                      (___kont112997112998_))
                  (___kont112997112998_))
              (___kont112997112998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont112997112998_))))
                                      (___kont112997112998_))))
                               (___match113024113025_
                                (lambda (_e110661110916_
                                         _hd110660110919_
                                         _tl110659110921_
                                         ___splice112991112992_
                                         _target110662110924_
                                         _tl110664110926_)
                                  (letrec ((_loop110665110929_
                                            (lambda (_hd110663110932_
                                                     _arg110669110934_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110663110932_))
                                                  (let ((_e110666110937_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110663110932_))))
                                                    (let ((_lp-tl110668110942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110666110937_)))
                                                          (_lp-hd110667110940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110666110937_))))
                                                      (let ((__tmp114402
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110667110940_ _arg110669110934_))))
                (declare (not safe))
                (_loop110665110929_ _lp-tl110668110942_ __tmp114402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110670110945_
                                                         (reverse _arg110669110934_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110659110921_))
                                                        (let ((_e110673110948_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110659110921_))))
                  (let ((_tl110671110953_
                         (let () (declare (not safe)) (##cdr _e110673110948_)))
                        (_hd110672110951_
                         (let ()
                           (declare (not safe))
                           (##car _e110673110948_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110672110951_))
                        (let ((_e110676110956_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110672110951_))))
                          (let ((_tl110674110961_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110676110956_)))
                                (_hd110675110959_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110676110956_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110675110959_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110675110959_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110674110961_))
                                        (let ((_e110679110964_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110674110961_))))
                                          (let ((_tl110677110969_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110679110964_)))
                                                (_hd110678110967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110679110964_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110678110967_))
                                                (let ((_e110682110972_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110678110967_))))
                                                  (let ((_tl110680110977_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110682110972_)))
                                                        (_hd110681110975_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110682110972_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110681110975_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110681110975_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110680110977_))
                        (let ((_e110685110980_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110680110977_))))
                          (let ((_tl110683110985_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110685110980_)))
                                (_hd110684110983_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110685110980_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110683110985_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110677110969_))
                                    (let ((_e110688110988_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110677110969_))))
                                      (let ((_tl110686110993_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110688110988_)))
                                            (_hd110687110991_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110688110988_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110687110991_))
                                            (let ((_e110691110996_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110687110991_))))
                                              (let ((_tl110689111001_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110691110996_)))
                                                    (_hd110690110999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110691110996_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110690110999_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110690110999_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110689111001_))
                                                            (let ((_e110694111004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110689111001_))))
                      (let ((_tl110692111009_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110694111004_)))
                            (_hd110693111007_
                             (let ()
                               (declare (not safe))
                               (##car _e110694111004_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110692111009_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl110686110993_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl110686110993_))
                                          '1)
                                    (let ((___splice112993112994_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110686110993_
                                              '1))))
                                      (let ((_tl110697111014_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112993112994_
                                                '1)))
                                            (_target110695111012_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112993112994_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110697111014_))
                                            (let ((_e110706111017_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110697111014_))))
                                              (let ((_tl110704111022_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110706111017_)))
                                                    (_hd110705111020_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110706111017_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd110705111020_))
                                                    (let ((_e110709111025_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd110705111020_))))
                                                      (let ((_tl110707111030_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e110709111025_)))
                    (_hd110708111028_
                     (let () (declare (not safe)) (##car _e110709111025_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd110708111028_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd110708111028_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl110707111030_))
                            (let ((_e110712111033_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl110707111030_))))
                              (let ((_tl110710111038_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110712111033_)))
                                    (_hd110711111036_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110712111033_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl110710111038_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl110704111022_))
                                        (letrec ((_loop110698111041_
                                                  (lambda (_hd110696111044_
                                                           _xarg110702111046_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd110696111044_))
                                                        (let ((_e110699111049_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd110696111044_))))
                  (let ((_lp-tl110701111054_
                         (let () (declare (not safe)) (##cdr _e110699111049_)))
                        (_lp-hd110700111052_
                         (let ()
                           (declare (not safe))
                           (##car _e110699111049_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd110700111052_))
                        (let ((_e110715111057_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd110700111052_))))
                          (let ((_tl110713111062_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110715111057_)))
                                (_hd110714111060_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110715111057_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110714111060_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd110714111060_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110713111062_))
                                        (let ((_e110718111065_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110713111062_))))
                                          (let ((_tl110716111070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110718111065_)))
                                                (_hd110717111068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110718111065_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110716111070_))
                                                (let ((__tmp114401
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd110717111068_
                                                               _xarg110702111046_))))
                                                  (declare (not safe))
                                                  (_loop110698111041_
                                                   _lp-tl110701111054_
                                                   __tmp114401))
                                                (___match113094113095_
                                                 _e110661110916_
                                                 _hd110660110919_
                                                 _tl110659110921_
                                                 _e110673110948_
                                                 _hd110672110951_
                                                 _tl110671110953_
                                                 _e110676110956_
                                                 _hd110675110959_
                                                 _tl110674110961_
                                                 _e110679110964_
                                                 _hd110678110967_
                                                 _tl110677110969_
                                                 _e110682110972_
                                                 _hd110681110975_
                                                 _tl110680110977_
                                                 _e110685110980_
                                                 _hd110684110983_
                                                 _tl110683110985_
                                                 _e110688110988_
                                                 _hd110687110991_
                                                 _tl110686110993_
                                                 _e110691110996_
                                                 _hd110690110999_
                                                 _tl110689111001_
                                                 _e110694111004_
                                                 _hd110693111007_
                                                 _tl110692111009_))))
                                        (___match113094113095_
                                         _e110661110916_
                                         _hd110660110919_
                                         _tl110659110921_
                                         _e110673110948_
                                         _hd110672110951_
                                         _tl110671110953_
                                         _e110676110956_
                                         _hd110675110959_
                                         _tl110674110961_
                                         _e110679110964_
                                         _hd110678110967_
                                         _tl110677110969_
                                         _e110682110972_
                                         _hd110681110975_
                                         _tl110680110977_
                                         _e110685110980_
                                         _hd110684110983_
                                         _tl110683110985_
                                         _e110688110988_
                                         _hd110687110991_
                                         _tl110686110993_
                                         _e110691110996_
                                         _hd110690110999_
                                         _tl110689111001_
                                         _e110694111004_
                                         _hd110693111007_
                                         _tl110692111009_))
                                    (___match113094113095_
                                     _e110661110916_
                                     _hd110660110919_
                                     _tl110659110921_
                                     _e110673110948_
                                     _hd110672110951_
                                     _tl110671110953_
                                     _e110676110956_
                                     _hd110675110959_
                                     _tl110674110961_
                                     _e110679110964_
                                     _hd110678110967_
                                     _tl110677110969_
                                     _e110682110972_
                                     _hd110681110975_
                                     _tl110680110977_
                                     _e110685110980_
                                     _hd110684110983_
                                     _tl110683110985_
                                     _e110688110988_
                                     _hd110687110991_
                                     _tl110686110993_
                                     _e110691110996_
                                     _hd110690110999_
                                     _tl110689111001_
                                     _e110694111004_
                                     _hd110693111007_
                                     _tl110692111009_))
                                (___match113094113095_
                                 _e110661110916_
                                 _hd110660110919_
                                 _tl110659110921_
                                 _e110673110948_
                                 _hd110672110951_
                                 _tl110671110953_
                                 _e110676110956_
                                 _hd110675110959_
                                 _tl110674110961_
                                 _e110679110964_
                                 _hd110678110967_
                                 _tl110677110969_
                                 _e110682110972_
                                 _hd110681110975_
                                 _tl110680110977_
                                 _e110685110980_
                                 _hd110684110983_
                                 _tl110683110985_
                                 _e110688110988_
                                 _hd110687110991_
                                 _tl110686110993_
                                 _e110691110996_
                                 _hd110690110999_
                                 _tl110689111001_
                                 _e110694111004_
                                 _hd110693111007_
                                 _tl110692111009_))))
                        (___match113094113095_
                         _e110661110916_
                         _hd110660110919_
                         _tl110659110921_
                         _e110673110948_
                         _hd110672110951_
                         _tl110671110953_
                         _e110676110956_
                         _hd110675110959_
                         _tl110674110961_
                         _e110679110964_
                         _hd110678110967_
                         _tl110677110969_
                         _e110682110972_
                         _hd110681110975_
                         _tl110680110977_
                         _e110685110980_
                         _hd110684110983_
                         _tl110683110985_
                         _e110688110988_
                         _hd110687110991_
                         _tl110686110993_
                         _e110691110996_
                         _hd110690110999_
                         _tl110689111001_
                         _e110694111004_
                         _hd110693111007_
                         _tl110692111009_))))
                (let ((_xarg110703111073_ (reverse _xarg110702111046_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110671110953_))
                      (let ((_L111076_ _hd110711111036_)
                            (_L111077_ _xarg110703111073_)
                            (_L111078_ _hd110693111007_)
                            (_L111079_ _hd110684110983_)
                            (_L111080_ _tl110664110926_)
                            (_L111081_ _arg110670110945_))
                        (if (and (let ((__tmp114399
                                        (let ((__tmp114400
                                               (lambda (_g111124111127_
                                                        _g111125111129_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111124111127_
                                                         _g111125111129_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114400 '() _L111081_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp114399))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L111080_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L111079_ 'apply))
                                 (fx= (length (let ((__tmp114397
                                                     (lambda (_g111131111134_
                                                              _g111132111136_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111131111134_
                                                               _g111132111136_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114397
                                                        '()
                                                        _L111081_)))
                                      (length (let ((__tmp114398
                                                     (lambda (_g111138111141_
                                                              _g111139111143_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111138111141_
                                                               _g111139111143_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114398
                                                        '()
                                                        _L111077_))))
                                 (let ((__tmp114395
                                        (let ((__tmp114396
                                               (lambda (_g111145111148_
                                                        _g111146111150_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111145111148_
                                                         _g111146111150_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114396 '() _L111081_)))
                                       (__tmp114393
                                        (let ((__tmp114394
                                               (lambda (_g111152111155_
                                                        _g111153111157_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111152111155_
                                                         _g111153111157_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114394 '() _L111077_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp114395
                                            __tmp114393))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L111080_ _L111076_))
                                 (let ((__tmp114388
                                        (let ((__tmp114392
                                               (lambda (_g111159111161_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g111159111161_
                                                    _L111078_))))
                                              (__tmp114389
                                               (let ((__tmp114391
                                                      (lambda (_g111163111166_
                                                               _g111164111168_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g111163111166_
                                                                _g111164111168_))))
                                                     (__tmp114390
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L111080_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp114391
                                                         __tmp114390
                                                         _L111081_))))
                                          (declare (not safe))
                                          (find __tmp114392 __tmp114389))))
                                   (declare (not safe))
                                   (not __tmp114388)))
                            (___kont112989112990_
                             _L111076_
                             _L111077_
                             _L111078_
                             _L111079_
                             _L111080_
                             _L111081_)
                            (___match113094113095_
                             _e110661110916_
                             _hd110660110919_
                             _tl110659110921_
                             _e110673110948_
                             _hd110672110951_
                             _tl110671110953_
                             _e110676110956_
                             _hd110675110959_
                             _tl110674110961_
                             _e110679110964_
                             _hd110678110967_
                             _tl110677110969_
                             _e110682110972_
                             _hd110681110975_
                             _tl110680110977_
                             _e110685110980_
                             _hd110684110983_
                             _tl110683110985_
                             _e110688110988_
                             _hd110687110991_
                             _tl110686110993_
                             _e110691110996_
                             _hd110690110999_
                             _tl110689111001_
                             _e110694111004_
                             _hd110693111007_
                             _tl110692111009_)))
                      (___match113094113095_
                       _e110661110916_
                       _hd110660110919_
                       _tl110659110921_
                       _e110673110948_
                       _hd110672110951_
                       _tl110671110953_
                       _e110676110956_
                       _hd110675110959_
                       _tl110674110961_
                       _e110679110964_
                       _hd110678110967_
                       _tl110677110969_
                       _e110682110972_
                       _hd110681110975_
                       _tl110680110977_
                       _e110685110980_
                       _hd110684110983_
                       _tl110683110985_
                       _e110688110988_
                       _hd110687110991_
                       _tl110686110993_
                       _e110691110996_
                       _hd110690110999_
                       _tl110689111001_
                       _e110694111004_
                       _hd110693111007_
                       _tl110692111009_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop110698111041_
                                             _target110695111012_
                                             '())))
                                        (___match113094113095_
                                         _e110661110916_
                                         _hd110660110919_
                                         _tl110659110921_
                                         _e110673110948_
                                         _hd110672110951_
                                         _tl110671110953_
                                         _e110676110956_
                                         _hd110675110959_
                                         _tl110674110961_
                                         _e110679110964_
                                         _hd110678110967_
                                         _tl110677110969_
                                         _e110682110972_
                                         _hd110681110975_
                                         _tl110680110977_
                                         _e110685110980_
                                         _hd110684110983_
                                         _tl110683110985_
                                         _e110688110988_
                                         _hd110687110991_
                                         _tl110686110993_
                                         _e110691110996_
                                         _hd110690110999_
                                         _tl110689111001_
                                         _e110694111004_
                                         _hd110693111007_
                                         _tl110692111009_))
                                    (___match113094113095_
                                     _e110661110916_
                                     _hd110660110919_
                                     _tl110659110921_
                                     _e110673110948_
                                     _hd110672110951_
                                     _tl110671110953_
                                     _e110676110956_
                                     _hd110675110959_
                                     _tl110674110961_
                                     _e110679110964_
                                     _hd110678110967_
                                     _tl110677110969_
                                     _e110682110972_
                                     _hd110681110975_
                                     _tl110680110977_
                                     _e110685110980_
                                     _hd110684110983_
                                     _tl110683110985_
                                     _e110688110988_
                                     _hd110687110991_
                                     _tl110686110993_
                                     _e110691110996_
                                     _hd110690110999_
                                     _tl110689111001_
                                     _e110694111004_
                                     _hd110693111007_
                                     _tl110692111009_))))
                            (___match113094113095_
                             _e110661110916_
                             _hd110660110919_
                             _tl110659110921_
                             _e110673110948_
                             _hd110672110951_
                             _tl110671110953_
                             _e110676110956_
                             _hd110675110959_
                             _tl110674110961_
                             _e110679110964_
                             _hd110678110967_
                             _tl110677110969_
                             _e110682110972_
                             _hd110681110975_
                             _tl110680110977_
                             _e110685110980_
                             _hd110684110983_
                             _tl110683110985_
                             _e110688110988_
                             _hd110687110991_
                             _tl110686110993_
                             _e110691110996_
                             _hd110690110999_
                             _tl110689111001_
                             _e110694111004_
                             _hd110693111007_
                             _tl110692111009_))
                        (___match113094113095_
                         _e110661110916_
                         _hd110660110919_
                         _tl110659110921_
                         _e110673110948_
                         _hd110672110951_
                         _tl110671110953_
                         _e110676110956_
                         _hd110675110959_
                         _tl110674110961_
                         _e110679110964_
                         _hd110678110967_
                         _tl110677110969_
                         _e110682110972_
                         _hd110681110975_
                         _tl110680110977_
                         _e110685110980_
                         _hd110684110983_
                         _tl110683110985_
                         _e110688110988_
                         _hd110687110991_
                         _tl110686110993_
                         _e110691110996_
                         _hd110690110999_
                         _tl110689111001_
                         _e110694111004_
                         _hd110693111007_
                         _tl110692111009_))
                    (___match113094113095_
                     _e110661110916_
                     _hd110660110919_
                     _tl110659110921_
                     _e110673110948_
                     _hd110672110951_
                     _tl110671110953_
                     _e110676110956_
                     _hd110675110959_
                     _tl110674110961_
                     _e110679110964_
                     _hd110678110967_
                     _tl110677110969_
                     _e110682110972_
                     _hd110681110975_
                     _tl110680110977_
                     _e110685110980_
                     _hd110684110983_
                     _tl110683110985_
                     _e110688110988_
                     _hd110687110991_
                     _tl110686110993_
                     _e110691110996_
                     _hd110690110999_
                     _tl110689111001_
                     _e110694111004_
                     _hd110693111007_
                     _tl110692111009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113094113095_
                                                     _e110661110916_
                                                     _hd110660110919_
                                                     _tl110659110921_
                                                     _e110673110948_
                                                     _hd110672110951_
                                                     _tl110671110953_
                                                     _e110676110956_
                                                     _hd110675110959_
                                                     _tl110674110961_
                                                     _e110679110964_
                                                     _hd110678110967_
                                                     _tl110677110969_
                                                     _e110682110972_
                                                     _hd110681110975_
                                                     _tl110680110977_
                                                     _e110685110980_
                                                     _hd110684110983_
                                                     _tl110683110985_
                                                     _e110688110988_
                                                     _hd110687110991_
                                                     _tl110686110993_
                                                     _e110691110996_
                                                     _hd110690110999_
                                                     _tl110689111001_
                                                     _e110694111004_
                                                     _hd110693111007_
                                                     _tl110692111009_))))
                                            (___match113094113095_
                                             _e110661110916_
                                             _hd110660110919_
                                             _tl110659110921_
                                             _e110673110948_
                                             _hd110672110951_
                                             _tl110671110953_
                                             _e110676110956_
                                             _hd110675110959_
                                             _tl110674110961_
                                             _e110679110964_
                                             _hd110678110967_
                                             _tl110677110969_
                                             _e110682110972_
                                             _hd110681110975_
                                             _tl110680110977_
                                             _e110685110980_
                                             _hd110684110983_
                                             _tl110683110985_
                                             _e110688110988_
                                             _hd110687110991_
                                             _tl110686110993_
                                             _e110691110996_
                                             _hd110690110999_
                                             _tl110689111001_
                                             _e110694111004_
                                             _hd110693111007_
                                             _tl110692111009_))))
                                    (___match113094113095_
                                     _e110661110916_
                                     _hd110660110919_
                                     _tl110659110921_
                                     _e110673110948_
                                     _hd110672110951_
                                     _tl110671110953_
                                     _e110676110956_
                                     _hd110675110959_
                                     _tl110674110961_
                                     _e110679110964_
                                     _hd110678110967_
                                     _tl110677110969_
                                     _e110682110972_
                                     _hd110681110975_
                                     _tl110680110977_
                                     _e110685110980_
                                     _hd110684110983_
                                     _tl110683110985_
                                     _e110688110988_
                                     _hd110687110991_
                                     _tl110686110993_
                                     _e110691110996_
                                     _hd110690110999_
                                     _tl110689111001_
                                     _e110694111004_
                                     _hd110693111007_
                                     _tl110692111009_))
                                (___match113094113095_
                                 _e110661110916_
                                 _hd110660110919_
                                 _tl110659110921_
                                 _e110673110948_
                                 _hd110672110951_
                                 _tl110671110953_
                                 _e110676110956_
                                 _hd110675110959_
                                 _tl110674110961_
                                 _e110679110964_
                                 _hd110678110967_
                                 _tl110677110969_
                                 _e110682110972_
                                 _hd110681110975_
                                 _tl110680110977_
                                 _e110685110980_
                                 _hd110684110983_
                                 _tl110683110985_
                                 _e110688110988_
                                 _hd110687110991_
                                 _tl110686110993_
                                 _e110691110996_
                                 _hd110690110999_
                                 _tl110689111001_
                                 _e110694111004_
                                 _hd110693111007_
                                 _tl110692111009_))
                            (___kont112997112998_))))
                    (___kont112997112998_))
                (___kont112997112998_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont112997112998_))))
                                            (___kont112997112998_))))
                                    (___kont112997112998_))
                                (___kont112997112998_))))
                        (___kont112997112998_))
                    (___kont112997112998_))
                (___kont112997112998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont112997112998_))))
                                        (___kont112997112998_))
                                    (___kont112997112998_))
                                (___kont112997112998_))))
                        (___kont112997112998_))))
                (___kont112997112998_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110665110929_
                                       _target110662110924_
                                       '())))))
                               (___match113012113013_
                                (lambda (_e110613111176_
                                         _hd110612111179_
                                         _tl110611111181_
                                         ___splice112985112986_
                                         _target110614111184_
                                         _tl110616111186_)
                                  (letrec ((_loop110617111189_
                                            (lambda (_hd110615111192_
                                                     _arg110621111194_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110615111192_))
                                                  (let ((_e110618111197_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110615111192_))))
                                                    (let ((_lp-tl110620111202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110618111197_)))
                                                          (_lp-hd110619111200_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110618111197_))))
                                                      (let ((__tmp114416
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110619111200_ _arg110621111194_))))
                (declare (not safe))
                (_loop110617111189_ _lp-tl110620111202_ __tmp114416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110622111205_
                                                         (reverse _arg110621111194_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110611111181_))
                                                        (let ((_e110625111208_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110611111181_))))
                  (let ((_tl110623111213_
                         (let () (declare (not safe)) (##cdr _e110625111208_)))
                        (_hd110624111211_
                         (let ()
                           (declare (not safe))
                           (##car _e110625111208_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110624111211_))
                        (let ((_e110628111216_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110624111211_))))
                          (let ((_tl110626111221_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110628111216_)))
                                (_hd110627111219_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110628111216_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110627111219_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110627111219_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110626111221_))
                                        (let ((_e110631111224_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110626111221_))))
                                          (let ((_tl110629111229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110631111224_)))
                                                (_hd110630111227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110631111224_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110630111227_))
                                                (let ((_e110634111232_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110630111227_))))
                                                  (let ((_tl110632111237_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110634111232_)))
                                                        (_hd110633111235_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110634111232_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110633111235_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110633111235_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110632111237_))
                        (let ((_e110637111240_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110632111237_))))
                          (let ((_tl110635111245_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110637111240_)))
                                (_hd110636111243_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110637111240_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110635111245_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110629111229_))
                                    (let ((___splice112987112988_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110629111229_
                                              '0))))
                                      (let ((_tl110640111250_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112987112988_
                                                '1)))
                                            (_target110638111248_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112987112988_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110640111250_))
                                            (letrec ((_loop110641111253_
                                                      (lambda (_hd110639111256_
                                                               _xarg110645111258_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110639111256_))
                                                            (let ((_e110642111261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110639111256_))))
                      (let ((_lp-tl110644111266_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110642111261_)))
                            (_lp-hd110643111264_
                             (let ()
                               (declare (not safe))
                               (##car _e110642111261_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110643111264_))
                            (let ((_e110649111269_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110643111264_))))
                              (let ((_tl110647111274_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110649111269_)))
                                    (_hd110648111272_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110649111269_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110648111272_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110648111272_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110647111274_))
                                            (let ((_e110652111277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110647111274_))))
                                              (let ((_tl110650111282_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110652111277_)))
                                                    (_hd110651111280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110652111277_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110650111282_))
                                                    (let ((__tmp114415
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110651111280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110645111258_))))
              (declare (not safe))
              (_loop110641111253_ _lp-tl110644111266_ __tmp114415))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113024113025_
                                                     _e110613111176_
                                                     _hd110612111179_
                                                     _tl110611111181_
                                                     ___splice112985112986_
                                                     _target110614111184_
                                                     _tl110616111186_))))
                                            (___match113024113025_
                                             _e110613111176_
                                             _hd110612111179_
                                             _tl110611111181_
                                             ___splice112985112986_
                                             _target110614111184_
                                             _tl110616111186_))
                                        (___match113024113025_
                                         _e110613111176_
                                         _hd110612111179_
                                         _tl110611111181_
                                         ___splice112985112986_
                                         _target110614111184_
                                         _tl110616111186_))
                                    (___match113024113025_
                                     _e110613111176_
                                     _hd110612111179_
                                     _tl110611111181_
                                     ___splice112985112986_
                                     _target110614111184_
                                     _tl110616111186_))))
                            (___match113024113025_
                             _e110613111176_
                             _hd110612111179_
                             _tl110611111181_
                             ___splice112985112986_
                             _target110614111184_
                             _tl110616111186_))))
                    (let ((_xarg110646111285_ (reverse _xarg110645111258_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110623111213_))
                          (let ((_L111288_ _xarg110646111285_)
                                (_L111289_ _hd110636111243_)
                                (_L111290_ _arg110622111205_))
                            (if (and (let ((__tmp114413
                                            (let ((__tmp114414
                                                   (lambda (_g111318111321_
                                                            _g111319111323_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111318111321_
                                                             _g111319111323_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114414
                                                      '()
                                                      _L111290_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp114413))
                                     (fx= (length (let ((__tmp114411
                                                         (lambda (_g111325111328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111326111330_)
                   (let ()
                     (declare (not safe))
                     (cons _g111325111328_ _g111326111330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114411
                                                            '()
                                                            _L111290_)))
                                          (length (let ((__tmp114412
                                                         (lambda (_g111332111335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111333111337_)
                   (let ()
                     (declare (not safe))
                     (cons _g111332111335_ _g111333111337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114412
                                                            '()
                                                            _L111288_))))
                                     (let ((__tmp114409
                                            (let ((__tmp114410
                                                   (lambda (_g111339111342_
                                                            _g111340111344_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111339111342_
                                                             _g111340111344_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114410
                                                      '()
                                                      _L111290_)))
                                           (__tmp114407
                                            (let ((__tmp114408
                                                   (lambda (_g111346111349_
                                                            _g111347111351_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111346111349_
                                                             _g111347111351_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114408
                                                      '()
                                                      _L111288_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp114409
                                                __tmp114407))
                                     (let ((__tmp114403
                                            (let ((__tmp114406
                                                   (lambda (_g111353111355_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g111353111355_
                                                        _L111289_))))
                                                  (__tmp114404
                                                   (let ((__tmp114405
                                                          (lambda (_g111357111360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g111358111362_)
                    (let ()
                      (declare (not safe))
                      (cons _g111357111360_ _g111358111362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp114405
                                                             '()
                                                             _L111290_))))
                                              (declare (not safe))
                                              (find __tmp114406 __tmp114404))))
                                       (declare (not safe))
                                       (not __tmp114403)))
                                (___kont112983112984_
                                 _L111288_
                                 _L111289_
                                 _L111290_)
                                (___match113024113025_
                                 _e110613111176_
                                 _hd110612111179_
                                 _tl110611111181_
                                 ___splice112985112986_
                                 _target110614111184_
                                 _tl110616111186_)))
                          (___match113024113025_
                           _e110613111176_
                           _hd110612111179_
                           _tl110611111181_
                           ___splice112985112986_
                           _target110614111184_
                           _tl110616111186_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110641111253_
                                                 _target110638111248_
                                                 '())))
                                            (___match113024113025_
                                             _e110613111176_
                                             _hd110612111179_
                                             _tl110611111181_
                                             ___splice112985112986_
                                             _target110614111184_
                                             _tl110616111186_))))
                                    (___match113024113025_
                                     _e110613111176_
                                     _hd110612111179_
                                     _tl110611111181_
                                     ___splice112985112986_
                                     _target110614111184_
                                     _tl110616111186_))
                                (___match113024113025_
                                 _e110613111176_
                                 _hd110612111179_
                                 _tl110611111181_
                                 ___splice112985112986_
                                 _target110614111184_
                                 _tl110616111186_))))
                        (___match113024113025_
                         _e110613111176_
                         _hd110612111179_
                         _tl110611111181_
                         ___splice112985112986_
                         _target110614111184_
                         _tl110616111186_))
                    (___match113024113025_
                     _e110613111176_
                     _hd110612111179_
                     _tl110611111181_
                     ___splice112985112986_
                     _target110614111184_
                     _tl110616111186_))
                (___match113024113025_
                 _e110613111176_
                 _hd110612111179_
                 _tl110611111181_
                 ___splice112985112986_
                 _target110614111184_
                 _tl110616111186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113024113025_
                                                 _e110613111176_
                                                 _hd110612111179_
                                                 _tl110611111181_
                                                 ___splice112985112986_
                                                 _target110614111184_
                                                 _tl110616111186_))))
                                        (___match113024113025_
                                         _e110613111176_
                                         _hd110612111179_
                                         _tl110611111181_
                                         ___splice112985112986_
                                         _target110614111184_
                                         _tl110616111186_))
                                    (___match113024113025_
                                     _e110613111176_
                                     _hd110612111179_
                                     _tl110611111181_
                                     ___splice112985112986_
                                     _target110614111184_
                                     _tl110616111186_))
                                (___match113024113025_
                                 _e110613111176_
                                 _hd110612111179_
                                 _tl110611111181_
                                 ___splice112985112986_
                                 _target110614111184_
                                 _tl110616111186_))))
                        (___match113024113025_
                         _e110613111176_
                         _hd110612111179_
                         _tl110611111181_
                         ___splice112985112986_
                         _target110614111184_
                         _tl110616111186_))))
                (___match113024113025_
                 _e110613111176_
                 _hd110612111179_
                 _tl110611111181_
                 ___splice112985112986_
                 _target110614111184_
                 _tl110616111186_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110617111189_
                                       _target110614111184_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx112981112982_))
                              (let ((_e110613111176_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx112981112982_))))
                                (let ((_tl110611111181_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110613111176_)))
                                      (_hd110612111179_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110613111176_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110612111179_))
                                      (let ((___splice112985112986_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110612111179_
                                                '0))))
                                        (let ((_tl110616111186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112985112986_
                                                  '1)))
                                              (_target110614111184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112985112986_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110616111186_))
                                              (___match113012113013_
                                               _e110613111176_
                                               _hd110612111179_
                                               _tl110611111181_
                                               ___splice112985112986_
                                               _target110614111184_
                                               _tl110616111186_)
                                              (___match113024113025_
                                               _e110613111176_
                                               _hd110612111179_
                                               _tl110611111181_
                                               ___splice112985112986_
                                               _target110614111184_
                                               _tl110616111186_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110611111181_))
                                          (let ((_e110728110783_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110611111181_))))
                                            (let ((_tl110726110788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110728110783_)))
                                                  (_hd110727110786_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110728110783_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110727110786_))
                                                  (let ((_e110731110791_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110727110786_))))
                                                    (let ((_tl110729110796_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110731110791_)))
                                                          (_hd110730110794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110731110791_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110730110794_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110730110794_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110729110796_))
                          (let ((_e110734110799_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110729110796_))))
                            (let ((_tl110732110804_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110734110799_)))
                                  (_hd110733110802_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110734110799_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110733110802_))
                                  (let ((_e110737110807_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110733110802_))))
                                    (let ((_tl110735110812_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110737110807_)))
                                          (_hd110736110810_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110737110807_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110736110810_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110736110810_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110735110812_))
                                                  (let ((_e110740110815_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110735110812_))))
                                                    (let ((_tl110738110820_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110740110815_)))
                                                          (_hd110739110818_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110740110815_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110738110820_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110732110804_))
                      (let ((_e110743110823_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110732110804_))))
                        (let ((_tl110741110828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110743110823_)))
                              (_hd110742110826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110743110823_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110742110826_))
                              (let ((_e110746110831_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110742110826_))))
                                (let ((_tl110744110836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110746110831_)))
                                      (_hd110745110834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110746110831_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110745110834_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110745110834_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110744110836_))
                                              (let ((_e110749110839_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110744110836_))))
                                                (let ((_tl110747110844_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110749110839_)))
                                                      (_hd110748110842_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110749110839_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110747110844_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110741110828_))
                                                          (let ((_e110752110847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110741110828_))))
                    (let ((_tl110750110852_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110752110847_)))
                          (_hd110751110850_
                           (let ()
                             (declare (not safe))
                             (##car _e110752110847_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd110751110850_))
                          (let ((_e110755110855_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd110751110850_))))
                            (let ((_tl110753110860_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110755110855_)))
                                  (_hd110754110858_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110755110855_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd110754110858_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd110754110858_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110753110860_))
                                          (let ((_e110758110863_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110753110860_))))
                                            (let ((_tl110756110868_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110758110863_)))
                                                  (_hd110757110866_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110758110863_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110756110868_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110750110852_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110726110788_))
                                                          (___match113122113123_
                                                           _e110613111176_
                                                           _hd110612111179_
                                                           _tl110611111181_
                                                           _e110728110783_
                                                           _hd110727110786_
                                                           _tl110726110788_
                                                           _e110731110791_
                                                           _hd110730110794_
                                                           _tl110729110796_
                                                           _e110734110799_
                                                           _hd110733110802_
                                                           _tl110732110804_
                                                           _e110737110807_
                                                           _hd110736110810_
                                                           _tl110735110812_
                                                           _e110740110815_
                                                           _hd110739110818_
                                                           _tl110738110820_
                                                           _e110743110823_
                                                           _hd110742110826_
                                                           _tl110741110828_
                                                           _e110746110831_
                                                           _hd110745110834_
                                                           _tl110744110836_
                                                           _e110749110839_
                                                           _hd110748110842_
                                                           _tl110747110844_
                                                           _e110752110847_
                                                           _hd110751110850_
                                                           _tl110750110852_
                                                           _e110755110855_
                                                           _hd110754110858_
                                                           _tl110753110860_
                                                           _e110758110863_
                                                           _hd110757110866_
                                                           _tl110756110868_)
                                                          (___kont112997112998_))
                                                      (___kont112997112998_))
                                                  (___kont112997112998_))))
                                          (___kont112997112998_))
                                      (___kont112997112998_))
                                  (___kont112997112998_))))
                          (___kont112997112998_))))
                  (___kont112997112998_))
              (___kont112997112998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont112997112998_))
                                          (___kont112997112998_))
                                      (___kont112997112998_))))
                              (___kont112997112998_))))
                      (___kont112997112998_))
                  (___kont112997112998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112997112998_))
                                              (___kont112997112998_))
                                          (___kont112997112998_))))
                                  (___kont112997112998_))))
                          (___kont112997112998_))
                      (___kont112997112998_))
                  (___kont112997112998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112997112998_))))
                                          (___kont112997112998_)))))
                              (___kont112997112998_)))))))
                 (_dispatch-case-e109914_
                  (lambda (_hd110062_ _body110063_)
                    (let* ((_form110065_
                            (let ((__tmp114417
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110063_ '()))))
                              (declare (not safe))
                              (cons _hd110062_ __tmp114417)))
                           (___stx113125113126_ _form110065_)
                           (_g110069110193_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113125113126_)))))
                      (let ((___kont113127113128_
                             (lambda (_L110564_ _L110565_ _L110566_)
                               (let ((__tmp114418
                                      (let ((__tmp114420
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114419
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110565_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114420 __tmp114419))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109910_ __tmp114418))))
                            (___kont113133113134_
                             (lambda (_L110412_ _L110413_ _L110414_ _L110415_)
                               (let ((__tmp114421
                                      (let ((__tmp114423
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114422
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110412_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114423 __tmp114422))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109910_ __tmp114421))))
                            (___kont113137113138_
                             (lambda (_L110278_ _L110279_ _L110280_)
                               (let ((__tmp114424
                                      (let ((__tmp114426
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114425
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110278_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114426 __tmp114425))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self109910_
                                  __tmp114424)))))
                        (let* ((___match113234113235_
                                (lambda (_e110161110198_
                                         _hd110160110201_
                                         _tl110159110203_
                                         _e110164110206_
                                         _hd110163110209_
                                         _tl110162110211_
                                         _e110167110214_
                                         _hd110166110217_
                                         _tl110165110219_
                                         _e110170110222_
                                         _hd110169110225_
                                         _tl110168110227_
                                         _e110173110230_
                                         _hd110172110233_
                                         _tl110171110235_
                                         _e110176110238_
                                         _hd110175110241_
                                         _tl110174110243_
                                         _e110179110246_
                                         _hd110178110249_
                                         _tl110177110251_
                                         _e110182110254_
                                         _hd110181110257_
                                         _tl110180110259_
                                         _e110185110262_
                                         _hd110184110265_
                                         _tl110183110267_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110177110251_))
                                      (let ((_e110188110270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110177110251_))))
                                        (let ((_tl110186110275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110188110270_)))
                                              (_hd110187110273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110188110270_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110186110275_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110162110211_))
                                                  (___kont113137113138_
                                                   _hd110184110265_
                                                   _hd110175110241_
                                                   _hd110160110201_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110069110193_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110069110193_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110069110193_)))))
                               (___match113164113165_
                                (lambda (_e110122110316_
                                         _hd110121110319_
                                         _tl110120110321_
                                         ___splice113135113136_
                                         _target110123110324_
                                         _tl110125110326_)
                                  (letrec ((_loop110126110329_
                                            (lambda (_hd110124110332_
                                                     _arg110130110334_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110124110332_))
                                                  (let ((_e110127110337_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110124110332_))))
                                                    (let ((_lp-tl110129110342_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110127110337_)))
                                                          (_lp-hd110128110340_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110127110337_))))
                                                      (let ((__tmp114427
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110128110340_ _arg110130110334_))))
                (declare (not safe))
                (_loop110126110329_ _lp-tl110129110342_ __tmp114427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110131110345_
                                                         (reverse _arg110130110334_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110120110321_))
                                                        (let ((_e110134110348_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110120110321_))))
                  (let ((_tl110132110353_
                         (let () (declare (not safe)) (##cdr _e110134110348_)))
                        (_hd110133110351_
                         (let ()
                           (declare (not safe))
                           (##car _e110134110348_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110133110351_))
                        (let ((_e110137110356_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110133110351_))))
                          (let ((_tl110135110361_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110137110356_)))
                                (_hd110136110359_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110137110356_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110136110359_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110136110359_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110135110361_))
                                        (let ((_e110140110364_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110135110361_))))
                                          (let ((_tl110138110369_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110140110364_)))
                                                (_hd110139110367_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110140110364_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110139110367_))
                                                (let ((_e110143110372_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110139110367_))))
                                                  (let ((_tl110141110377_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110143110372_)))
                                                        (_hd110142110375_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110143110372_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110142110375_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110142110375_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110141110377_))
                        (let ((_e110146110380_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110141110377_))))
                          (let ((_tl110144110385_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110146110380_)))
                                (_hd110145110383_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110146110380_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110144110385_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110138110369_))
                                    (let ((_e110149110388_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110138110369_))))
                                      (let ((_tl110147110393_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110149110388_)))
                                            (_hd110148110391_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110149110388_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110148110391_))
                                            (let ((_e110152110396_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110148110391_))))
                                              (let ((_tl110150110401_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110152110396_)))
                                                    (_hd110151110399_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110152110396_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110151110399_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110151110399_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110150110401_))
                                                            (let ((_e110155110404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110150110401_))))
                      (let ((_tl110153110409_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110155110404_)))
                            (_hd110154110407_
                             (let ()
                               (declare (not safe))
                               (##car _e110155110404_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110153110409_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110132110353_))
                                (___kont113133113134_
                                 _hd110154110407_
                                 _hd110145110383_
                                 _tl110125110326_
                                 _arg110131110345_)
                                (___match113234113235_
                                 _e110122110316_
                                 _hd110121110319_
                                 _tl110120110321_
                                 _e110134110348_
                                 _hd110133110351_
                                 _tl110132110353_
                                 _e110137110356_
                                 _hd110136110359_
                                 _tl110135110361_
                                 _e110140110364_
                                 _hd110139110367_
                                 _tl110138110369_
                                 _e110143110372_
                                 _hd110142110375_
                                 _tl110141110377_
                                 _e110146110380_
                                 _hd110145110383_
                                 _tl110144110385_
                                 _e110149110388_
                                 _hd110148110391_
                                 _tl110147110393_
                                 _e110152110396_
                                 _hd110151110399_
                                 _tl110150110401_
                                 _e110155110404_
                                 _hd110154110407_
                                 _tl110153110409_))
                            (let () (declare (not safe)) (_g110069110193_)))))
                    (let () (declare (not safe)) (_g110069110193_)))
                (let () (declare (not safe)) (_g110069110193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g110069110193_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g110069110193_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g110069110193_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110069110193_)))))
                        (let () (declare (not safe)) (_g110069110193_)))
                    (let () (declare (not safe)) (_g110069110193_)))
                (let () (declare (not safe)) (_g110069110193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g110069110193_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g110069110193_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g110069110193_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110069110193_)))))
                        (let () (declare (not safe)) (_g110069110193_)))))
                (let () (declare (not safe)) (_g110069110193_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110126110329_
                                       _target110123110324_
                                       '())))))
                               (___match113152113153_
                                (lambda (_e110076110452_
                                         _hd110075110455_
                                         _tl110074110457_
                                         ___splice113129113130_
                                         _target110077110460_
                                         _tl110079110462_)
                                  (letrec ((_loop110080110465_
                                            (lambda (_hd110078110468_
                                                     _arg110084110470_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110078110468_))
                                                  (let ((_e110081110473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110078110468_))))
                                                    (let ((_lp-tl110083110478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110081110473_)))
                                                          (_lp-hd110082110476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110081110473_))))
                                                      (let ((__tmp114429
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110082110476_ _arg110084110470_))))
                (declare (not safe))
                (_loop110080110465_ _lp-tl110083110478_ __tmp114429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110085110481_
                                                         (reverse _arg110084110470_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110074110457_))
                                                        (let ((_e110088110484_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110074110457_))))
                  (let ((_tl110086110489_
                         (let () (declare (not safe)) (##cdr _e110088110484_)))
                        (_hd110087110487_
                         (let ()
                           (declare (not safe))
                           (##car _e110088110484_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110087110487_))
                        (let ((_e110091110492_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110087110487_))))
                          (let ((_tl110089110497_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110091110492_)))
                                (_hd110090110495_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110091110492_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110090110495_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110090110495_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110089110497_))
                                        (let ((_e110094110500_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110089110497_))))
                                          (let ((_tl110092110505_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110094110500_)))
                                                (_hd110093110503_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110094110500_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110093110503_))
                                                (let ((_e110097110508_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110093110503_))))
                                                  (let ((_tl110095110513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110097110508_)))
                                                        (_hd110096110511_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110097110508_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110096110511_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110096110511_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110095110513_))
                        (let ((_e110100110516_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110095110513_))))
                          (let ((_tl110098110521_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110100110516_)))
                                (_hd110099110519_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110100110516_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110098110521_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110092110505_))
                                    (let ((___splice113131113132_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110092110505_
                                              '0))))
                                      (let ((_tl110103110526_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113131113132_
                                                '1)))
                                            (_target110101110524_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113131113132_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110103110526_))
                                            (letrec ((_loop110104110529_
                                                      (lambda (_hd110102110532_
                                                               _xarg110108110534_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110102110532_))
                                                            (let ((_e110105110537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110102110532_))))
                      (let ((_lp-tl110107110542_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110105110537_)))
                            (_lp-hd110106110540_
                             (let ()
                               (declare (not safe))
                               (##car _e110105110537_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110106110540_))
                            (let ((_e110112110545_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110106110540_))))
                              (let ((_tl110110110550_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110112110545_)))
                                    (_hd110111110548_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110112110545_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110111110548_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110111110548_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110110110550_))
                                            (let ((_e110115110553_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110110110550_))))
                                              (let ((_tl110113110558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110115110553_)))
                                                    (_hd110114110556_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110115110553_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110113110558_))
                                                    (let ((__tmp114428
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110114110556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110108110534_))))
              (declare (not safe))
              (_loop110104110529_ _lp-tl110107110542_ __tmp114428))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113164113165_
                                                     _e110076110452_
                                                     _hd110075110455_
                                                     _tl110074110457_
                                                     ___splice113129113130_
                                                     _target110077110460_
                                                     _tl110079110462_))))
                                            (___match113164113165_
                                             _e110076110452_
                                             _hd110075110455_
                                             _tl110074110457_
                                             ___splice113129113130_
                                             _target110077110460_
                                             _tl110079110462_))
                                        (___match113164113165_
                                         _e110076110452_
                                         _hd110075110455_
                                         _tl110074110457_
                                         ___splice113129113130_
                                         _target110077110460_
                                         _tl110079110462_))
                                    (___match113164113165_
                                     _e110076110452_
                                     _hd110075110455_
                                     _tl110074110457_
                                     ___splice113129113130_
                                     _target110077110460_
                                     _tl110079110462_))))
                            (___match113164113165_
                             _e110076110452_
                             _hd110075110455_
                             _tl110074110457_
                             ___splice113129113130_
                             _target110077110460_
                             _tl110079110462_))))
                    (let ((_xarg110109110561_ (reverse _xarg110108110534_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110086110489_))
                          (___kont113127113128_
                           _xarg110109110561_
                           _hd110099110519_
                           _arg110085110481_)
                          (___match113164113165_
                           _e110076110452_
                           _hd110075110455_
                           _tl110074110457_
                           ___splice113129113130_
                           _target110077110460_
                           _tl110079110462_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110104110529_
                                                 _target110101110524_
                                                 '())))
                                            (___match113164113165_
                                             _e110076110452_
                                             _hd110075110455_
                                             _tl110074110457_
                                             ___splice113129113130_
                                             _target110077110460_
                                             _tl110079110462_))))
                                    (___match113164113165_
                                     _e110076110452_
                                     _hd110075110455_
                                     _tl110074110457_
                                     ___splice113129113130_
                                     _target110077110460_
                                     _tl110079110462_))
                                (___match113164113165_
                                 _e110076110452_
                                 _hd110075110455_
                                 _tl110074110457_
                                 ___splice113129113130_
                                 _target110077110460_
                                 _tl110079110462_))))
                        (___match113164113165_
                         _e110076110452_
                         _hd110075110455_
                         _tl110074110457_
                         ___splice113129113130_
                         _target110077110460_
                         _tl110079110462_))
                    (___match113164113165_
                     _e110076110452_
                     _hd110075110455_
                     _tl110074110457_
                     ___splice113129113130_
                     _target110077110460_
                     _tl110079110462_))
                (___match113164113165_
                 _e110076110452_
                 _hd110075110455_
                 _tl110074110457_
                 ___splice113129113130_
                 _target110077110460_
                 _tl110079110462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113164113165_
                                                 _e110076110452_
                                                 _hd110075110455_
                                                 _tl110074110457_
                                                 ___splice113129113130_
                                                 _target110077110460_
                                                 _tl110079110462_))))
                                        (___match113164113165_
                                         _e110076110452_
                                         _hd110075110455_
                                         _tl110074110457_
                                         ___splice113129113130_
                                         _target110077110460_
                                         _tl110079110462_))
                                    (___match113164113165_
                                     _e110076110452_
                                     _hd110075110455_
                                     _tl110074110457_
                                     ___splice113129113130_
                                     _target110077110460_
                                     _tl110079110462_))
                                (___match113164113165_
                                 _e110076110452_
                                 _hd110075110455_
                                 _tl110074110457_
                                 ___splice113129113130_
                                 _target110077110460_
                                 _tl110079110462_))))
                        (___match113164113165_
                         _e110076110452_
                         _hd110075110455_
                         _tl110074110457_
                         ___splice113129113130_
                         _target110077110460_
                         _tl110079110462_))))
                (___match113164113165_
                 _e110076110452_
                 _hd110075110455_
                 _tl110074110457_
                 ___splice113129113130_
                 _target110077110460_
                 _tl110079110462_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110080110465_
                                       _target110077110460_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113125113126_))
                              (let ((_e110076110452_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113125113126_))))
                                (let ((_tl110074110457_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110076110452_)))
                                      (_hd110075110455_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110076110452_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110075110455_))
                                      (let ((___splice113129113130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110075110455_
                                                '0))))
                                        (let ((_tl110079110462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113129113130_
                                                  '1)))
                                              (_target110077110460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113129113130_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110079110462_))
                                              (___match113152113153_
                                               _e110076110452_
                                               _hd110075110455_
                                               _tl110074110457_
                                               ___splice113129113130_
                                               _target110077110460_
                                               _tl110079110462_)
                                              (___match113164113165_
                                               _e110076110452_
                                               _hd110075110455_
                                               _tl110074110457_
                                               ___splice113129113130_
                                               _target110077110460_
                                               _tl110079110462_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110074110457_))
                                          (let ((_e110164110206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110074110457_))))
                                            (let ((_tl110162110211_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110164110206_)))
                                                  (_hd110163110209_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110164110206_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110163110209_))
                                                  (let ((_e110167110214_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110163110209_))))
                                                    (let ((_tl110165110219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110167110214_)))
                                                          (_hd110166110217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110167110214_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110166110217_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110166110217_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110165110219_))
                          (let ((_e110170110222_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110165110219_))))
                            (let ((_tl110168110227_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110170110222_)))
                                  (_hd110169110225_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110170110222_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110169110225_))
                                  (let ((_e110173110230_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110169110225_))))
                                    (let ((_tl110171110235_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110173110230_)))
                                          (_hd110172110233_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110173110230_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110172110233_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110172110233_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110171110235_))
                                                  (let ((_e110176110238_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110171110235_))))
                                                    (let ((_tl110174110243_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110176110238_)))
                                                          (_hd110175110241_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110176110238_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110174110243_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110168110227_))
                      (let ((_e110179110246_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110168110227_))))
                        (let ((_tl110177110251_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110179110246_)))
                              (_hd110178110249_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110179110246_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110178110249_))
                              (let ((_e110182110254_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110178110249_))))
                                (let ((_tl110180110259_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110182110254_)))
                                      (_hd110181110257_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110182110254_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110181110257_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110181110257_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110180110259_))
                                              (let ((_e110185110262_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110180110259_))))
                                                (let ((_tl110183110267_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110185110262_)))
                                                      (_hd110184110265_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110185110262_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110183110267_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110177110251_))
                                                          (let ((_e110188110270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110177110251_))))
                    (let ((_tl110186110275_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110188110270_)))
                          (_hd110187110273_
                           (let ()
                             (declare (not safe))
                             (##car _e110188110270_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110186110275_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110162110211_))
                              (___kont113137113138_
                               _hd110184110265_
                               _hd110175110241_
                               _hd110075110455_)
                              (let () (declare (not safe)) (_g110069110193_)))
                          (let () (declare (not safe)) (_g110069110193_)))))
                  (let () (declare (not safe)) (_g110069110193_)))
              (let () (declare (not safe)) (_g110069110193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g110069110193_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110069110193_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g110069110193_)))))
                              (let ()
                                (declare (not safe))
                                (_g110069110193_)))))
                      (let () (declare (not safe)) (_g110069110193_)))
                  (let () (declare (not safe)) (_g110069110193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110069110193_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110069110193_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110069110193_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g110069110193_)))))
                          (let () (declare (not safe)) (_g110069110193_)))
                      (let () (declare (not safe)) (_g110069110193_)))
                  (let () (declare (not safe)) (_g110069110193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110069110193_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g110069110193_))))))
                              (let ()
                                (declare (not safe))
                                (_g110069110193_))))))))
                 (_generate1109915_
                  (lambda (_args110050_ _arglen110051_ _hd110052_ _body110053_)
                    (let* ((_len110055_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd110052_)))
                           (_condition110057_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd110052_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp114444
                                           (let ((__tmp114445
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len110055_ '()))))
                                             (declare (not safe))
                                             (cons _arglen110051_
                                                   __tmp114445))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp114444))
                                    (let ((__tmp114438
                                           (let ((__tmp114439
                                                  (let ((__tmp114440
                                                         (let ((__tmp114441
                                                                (let ((__tmp114442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114443
                                      (let ()
                                        (declare (not safe))
                                        (cons _len110055_ '()))))
                                 (declare (not safe))
                                 (cons _arglen110051_ __tmp114443))))
                          (declare (not safe))
                          (cons '##fx= __tmp114442))))
                   (declare (not safe))
                   (cons __tmp114441 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp114440))))
                                             (declare (not safe))
                                             (cons '() __tmp114439))))
                                      (declare (not safe))
                                      (cons 'let __tmp114438)))
                                (if (> _len110055_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp114436
                                               (let ((__tmp114437
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len110055_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen110051_
                                                       __tmp114437))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp114436))
                                        (let ((__tmp114430
                                               (let ((__tmp114431
                                                      (let ((__tmp114432
                                                             (let ((__tmp114433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114434
                                   (let ((__tmp114435
                                          (let ()
                                            (declare (not safe))
                                            (cons _len110055_ '()))))
                                     (declare (not safe))
                                     (cons _arglen110051_ __tmp114435))))
                              (declare (not safe))
                              (cons '##fx>= __tmp114434))))
                       (declare (not safe))
                       (cons __tmp114433 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp114432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp114431))))
                                          (declare (not safe))
                                          (cons 'let __tmp114430)))
                                    '#t)))
                           (_dispatch110059_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?109913_
                                   _hd110052_
                                   _body110053_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e109914_
                                   _hd110052_
                                   _body110053_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self109910_
                                   _hd110052_
                                   _body110053_)))))
                      (let ((__tmp114446
                             (let ((__tmp114447
                                    (let ((__tmp114448
                                           (let ((__tmp114449
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args110050_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch110059_
                                                   __tmp114449))))
                                      (declare (not safe))
                                      (cons 'apply __tmp114448))))
                               (declare (not safe))
                               (cons __tmp114447 '()))))
                        (declare (not safe))
                        (cons _condition110057_ __tmp114446))))))
          (let* ((_g109917109945_
                  (lambda (_g109918109942_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109918109942_))))
                 (_g109916110047_
                  (lambda (_g109918109948_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109918109948_))
                        (let ((_e109923109950_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109918109948_))))
                          (let ((_hd109922109953_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109923109950_)))
                                (_tl109921109955_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109923109950_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109921109955_))
                                (let ((_g114450_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl109921109955_
                                          '0))))
                                  (begin
                                    (let ((_g114451_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114450_)
                                                 (##vector-length _g114450_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114451_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114451_)))
                                    (let ((_target109924109958_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114450_ 0)))
                                          (_tl109926109960_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114450_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109926109960_))
                                          (letrec ((_loop109927109963_
                                                    (lambda (_hd109925109966_
                                                             _body109931109968_
                                                             _hd109932109970_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd109925109966_))
                                                          (let ((_e109928109973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd109925109966_))))
                    (let ((_lp-hd109929109976_
                           (let ()
                             (declare (not safe))
                             (##car _e109928109973_)))
                          (_lp-tl109930109978_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109928109973_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd109929109976_))
                          (let ((_e109937109981_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd109929109976_))))
                            (let ((_hd109936109984_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109937109981_)))
                                  (_tl109935109986_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109937109981_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl109935109986_))
                                  (let ((_e109940109989_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl109935109986_))))
                                    (let ((_hd109939109992_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109940109989_)))
                                          (_tl109938109994_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109940109989_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109938109994_))
                                          (let ((__tmp114480
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109939109992_
                                                         _body109931109968_)))
                                                (__tmp114479
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109936109984_
                                                         _hd109932109970_))))
                                            (declare (not safe))
                                            (_loop109927109963_
                                             _lp-tl109930109978_
                                             __tmp114480
                                             __tmp114479))
                                          (let ()
                                            (declare (not safe))
                                            (_g109917109945_
                                             _g109918109948_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109917109945_ _g109918109948_)))))
                          (let ()
                            (declare (not safe))
                            (_g109917109945_ _g109918109948_)))))
                  (let ((_body109933109997_ (reverse _body109931109968_))
                        (_hd109934109999_ (reverse _hd109932109970_)))
                    ((lambda (_L110002_ _L110003_)
                       (let ((_args110022_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen110023_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name110024_
                              (let ((_$e110019_
                                     (let ((__tmp114452
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp114452 _stx109911_))))
                                (if _$e110019_
                                    _$e110019_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp114453
                                (let ((__tmp114454
                                       (let ((__tmp114455
                                              (let ((__tmp114456
                                                     (let ((__tmp114469
                                                            (let ((__tmp114470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114471
                                  (let ((__tmp114472
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp114478
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110022_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp114478))
                                             (let ((__tmp114473
                                                    (let ((__tmp114474
                                                           (let ((__tmp114475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114476
                                 (let ((__tmp114477
                                        (let ()
                                          (declare (not safe))
                                          (cons _args110022_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp114477))))
                            (declare (not safe))
                            (cons __tmp114476 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp114475))))
              (declare (not safe))
              (cons '() __tmp114474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp114473)))))
                                    (declare (not safe))
                                    (cons __tmp114472 '()))))
                             (declare (not safe))
                             (cons _arglen110023_ __tmp114471))))
                      (declare (not safe))
                      (cons __tmp114470 '())))
                   (__tmp114457
                    (let ((__tmp114458
                           (let ((__tmp114459
                                  (let ((__tmp114463
                                         (let ((__tmp114464
                                                (let ((__tmp114465
                                                       (let ((__tmp114466
                                                              (let ((__tmp114467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114468
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110022_ '()))))
                               (declare (not safe))
                               (cons _name110024_ __tmp114468))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp114467))))
                 (declare (not safe))
                 (cons __tmp114466 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp114465))))
                                           (declare (not safe))
                                           (cons __tmp114464 '())))
                                        (__tmp114460
                                         (map (lambda (_g110025110028_
                                                       _g110026110030_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1109915_
                                                   _args110022_
                                                   _arglen110023_
                                                   _g110025110028_
                                                   _g110026110030_)))
                                              (let ((__tmp114461
                                                     (lambda (_g110032110035_
                                                              _g110033110037_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110032110035_
                                                               _g110033110037_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114461
                                                        '()
                                                        _L110003_))
                                              (let ((__tmp114462
                                                     (lambda (_g110039110042_
                                                              _g110040110044_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110039110042_
                                                               _g110040110044_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114462
                                                        '()
                                                        _L110002_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp114463 __tmp114460))))
                             (declare (not safe))
                             (cons 'cond __tmp114459))))
                      (declare (not safe))
                      (cons __tmp114458 '()))))
               (declare (not safe))
               (cons __tmp114469 __tmp114457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp114456))))
                                         (declare (not safe))
                                         (cons __tmp114455 '()))))
                                  (declare (not safe))
                                  (cons _args110022_ __tmp114454))))
                           (declare (not safe))
                           (cons 'lambda __tmp114453))))
                     _body109933109997_
                     _hd109934109999_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop109927109963_
                                               _target109924109958_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g109917109945_
                                             _g109918109948_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g109917109945_ _g109918109948_)))))
                        (let ()
                          (declare (not safe))
                          (_g109917109945_ _g109918109948_))))))
            (declare (not safe))
            (_g109916110047_ _stx109911_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self109181_ _stx109182_ _compiled-body?109183_)
        (letrec ((_generate-simple109185_
                  (lambda (_hd109895_ _body109896_)
                    (let ((__tmp114481
                           (let ((__tmp114482
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self109181_
                                     'let
                                     _hd109895_
                                     _body109896_
                                     _compiled-body?109183_))))
                             (declare (not safe))
                             (_coalesce-let*109187_ __tmp114482))))
                      (declare (not safe))
                      (_coalesce-boolean109186_ __tmp114481))))
                 (_coalesce-boolean109186_
                  (lambda (_code109756_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code109757109783_ _code109756_)
                               (_else109759109791_ (lambda () _code109756_))
                               (_K109761109828_
                                (lambda (_expr2109794_
                                         _expr1109795_
                                         _id109796_)
                                  (let* ((_expr2109797109805_ _expr2109794_)
                                         (_else109799109813_
                                          (lambda ()
                                            (let ((__tmp114483
                                                   (let ((__tmp114484
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2109794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1109795_
                                                           __tmp114484))))
                                              (declare (not safe))
                                              (cons 'or __tmp114483))))
                                         (_K109801109818_
                                          (lambda (_exprs109816_)
                                            (let ((__tmp114485
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1109795_
                                                           _exprs109816_))))
                                              (declare (not safe))
                                              (cons 'or __tmp114485)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2109797109805_))
                                        (let ((_hd109802109821_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2109797109805_)))
                                              (_tl109803109823_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2109797109805_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109802109821_ 'or))
                                              (let ((_exprs109826_
                                                     _tl109803109823_))
                                                (declare (not safe))
                                                (_K109801109818_
                                                 _exprs109826_))
                                              (let ()
                                                (declare (not safe))
                                                (_else109799109813_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109799109813_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code109757109783_))
                              (let ((_hd109762109831_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code109757109783_)))
                                    (_tl109763109833_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code109757109783_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd109762109831_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl109763109833_))
                                        (let ((_hd109764109836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl109763109833_)))
                                              (_tl109765109838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl109763109833_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd109764109836_))
                                              (let ((_hd109776109841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd109764109836_)))
                                                    (_tl109777109843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd109764109836_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd109776109841_))
                                                    (let ((_hd109778109846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd109776109841_)))
                                                          (_tl109779109848_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd109776109841_))))
                                                      (let ((_id109851_
                                                             _hd109778109846_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl109779109848_))
                                                            (let ((_hd109780109853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl109779109848_)))
                          (_tl109781109855_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl109779109848_))))
                      (let ((_expr1109858_ _hd109780109853_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl109781109855_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl109777109843_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl109765109838_))
                                    (let ((_hd109766109860_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl109765109838_)))
                                          (_tl109767109862_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl109765109838_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109766109860_))
                                          (let ((_hd109768109865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109766109860_)))
                                                (_tl109769109867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109766109860_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109768109865_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl109769109867_))
                                                    (let ((_hd109770109870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl109769109867_)))
                                                          (_tl109771109872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl109769109867_))))
                                                      (if ((lambda (_g109874109876_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g109874109876_ _id109851_)))
                   _hd109770109870_)
                  (if (let () (declare (not safe)) (##pair? _tl109771109872_))
                      (let ((_hd109772109879_
                             (let ()
                               (declare (not safe))
                               (##car _tl109771109872_)))
                            (_tl109773109881_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl109771109872_))))
                        (if ((lambda (_g109883109885_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g109883109885_ _id109851_)))
                             _hd109772109879_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl109773109881_))
                                (let ((_hd109774109888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl109773109881_)))
                                      (_tl109775109890_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl109773109881_))))
                                  (let ((_expr2109893_ _hd109774109888_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl109775109890_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl109767109862_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109761109828_
                                               _expr2109893_
                                               _expr1109858_
                                               _id109851_))
                                            (let ()
                                              (declare (not safe))
                                              (_else109759109791_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else109759109791_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else109759109791_)))
                            (let ()
                              (declare (not safe))
                              (_else109759109791_))))
                      (let () (declare (not safe)) (_else109759109791_)))
                  (let () (declare (not safe)) (_else109759109791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109759109791_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else109759109791_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else109759109791_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109759109791_)))
                                (let ()
                                  (declare (not safe))
                                  (_else109759109791_)))
                            (let ()
                              (declare (not safe))
                              (_else109759109791_)))))
                    (let () (declare (not safe)) (_else109759109791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109759109791_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else109759109791_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109759109791_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else109759109791_))))
                              (let ()
                                (declare (not safe))
                                (_else109759109791_))))
                        _code109756_)))
                 (_coalesce-let*109187_
                  (lambda (_code109489_)
                    (let* ((_code109490109554_ _code109489_)
                           (_else109494109562_ (lambda () _code109489_)))
                      (let ((_K109536109707_
                             (lambda (_body109703_ _expr109704_ _id109705_)
                               (let ((__tmp114486
                                      (let ((__tmp114487
                                             (let ((__tmp114488
                                                    (let ((__tmp114489
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr109704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id109705_ __tmp114489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114488 '()))))
                                        (declare (not safe))
                                        (cons __tmp114487 _body109703_))))
                                 (declare (not safe))
                                 (cons 'let __tmp114486))))
                            (_K109513109632_
                             (lambda (_body109626_
                                      _expr2109627_
                                      _id2109628_
                                      _expr1109629_
                                      _id1109630_)
                               (let ((__tmp114490
                                      (let ((__tmp114491
                                             (let ((__tmp114495
                                                    (let ((__tmp114496
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109630_ __tmp114496)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114492
                                                    (let ((__tmp114493
                                                           (let ((__tmp114494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2109627_ '()))))
                     (declare (not safe))
                     (cons _id2109628_ __tmp114494))))
              (declare (not safe))
              (cons __tmp114493 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114495
                                                     __tmp114492))))
                                        (declare (not safe))
                                        (cons __tmp114491 _body109626_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114490))))
                            (_K109496109571_
                             (lambda (_body109566_
                                      _bind109567_
                                      _expr1109568_
                                      _id1109569_)
                               (let ((__tmp114497
                                      (let ((__tmp114498
                                             (let ((__tmp114499
                                                    (let ((__tmp114500
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109569_ __tmp114500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114499
                                                     _bind109567_))))
                                        (declare (not safe))
                                        (cons __tmp114498 _body109566_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114497)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code109490109554_))
                            (let ((_tl109538109712_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code109490109554_)))
                                  (_hd109537109710_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code109490109554_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd109537109710_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109538109712_))
                                      (let ((_tl109540109717_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109538109712_)))
                                            (_hd109539109715_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109538109712_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd109539109715_))
                                            (let ((_tl109548109722_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd109539109715_)))
                                                  (_hd109547109720_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd109539109715_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd109547109720_))
                                                  (let ((_tl109550109727_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd109547109720_)))
                                                        (_hd109549109725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd109547109720_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109550109727_))
                                                        (let ((_tl109552109734_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109550109727_)))
                      (_hd109551109732_
                       (let () (declare (not safe)) (##car _tl109550109727_))))
                  (if (let () (declare (not safe)) (##null? _tl109552109734_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl109548109722_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl109540109717_))
                              (let ((_tl109542109741_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl109540109717_)))
                                    (_hd109541109739_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl109540109717_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109541109739_))
                                    (let ((_tl109544109746_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109541109739_)))
                                          (_hd109543109744_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109541109739_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd109543109744_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl109544109746_))
                                              (let ((_tl109546109751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl109544109746_)))
                                                    (_hd109545109749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl109544109746_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd109545109749_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109542109741_))
                                                        (let ((_id109730_
                                                               _hd109549109725_)
                                                              (_expr109737_
                                                               _hd109551109732_)
                                                              (_body109754_
                                                               _tl109546109751_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109536109707_
                                                             _body109754_
                                                             _expr109737_
                                                             _id109730_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109494109562_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd109545109749_))
                                                        (let ((_tl109525109681_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd109545109749_)))
                      (_hd109524109679_
                       (let () (declare (not safe)) (##car _hd109545109749_))))
                  (if (let () (declare (not safe)) (##pair? _hd109524109679_))
                      (let ((_tl109527109686_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd109524109679_)))
                            (_hd109526109684_
                             (let ()
                               (declare (not safe))
                               (##car _hd109524109679_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109527109686_))
                            (let ((_tl109529109693_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109527109686_)))
                                  (_hd109528109691_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109527109686_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109529109693_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl109525109681_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109542109741_))
                                          (let ((_id1109655_ _hd109549109725_)
                                                (_expr1109662_
                                                 _hd109551109732_)
                                                (_id2109689_ _hd109526109684_)
                                                (_expr2109696_
                                                 _hd109528109691_)
                                                (_body109698_
                                                 _tl109546109751_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109513109632_
                                               _body109698_
                                               _expr2109696_
                                               _id2109689_
                                               _expr1109662_
                                               _id1109655_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109494109562_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else109494109562_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109494109562_))))
                            (let ()
                              (declare (not safe))
                              (_else109494109562_))))
                      (let () (declare (not safe)) (_else109494109562_))))
                (let () (declare (not safe)) (_else109494109562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else109494109562_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109543109744_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl109544109746_))
                                                  (let ((_tl109506109615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl109544109746_)))
                                                        (_hd109505109613_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl109544109746_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109542109741_))
                                                        (let ((_id1109594_
                                                               _hd109549109725_)
                                                              (_expr1109601_
                                                               _hd109551109732_)
                                                              (_bind109618_
                                                               _hd109505109613_)
                                                              (_body109620_
                                                               _tl109506109615_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109496109571_
                                                             _body109620_
                                                             _bind109618_
                                                             _expr1109601_
                                                             _id1109594_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109494109562_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109494109562_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else109494109562_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109494109562_))))
                              (let ()
                                (declare (not safe))
                                (_else109494109562_)))
                          (let () (declare (not safe)) (_else109494109562_)))
                      (let () (declare (not safe)) (_else109494109562_))))
                (let () (declare (not safe)) (_else109494109562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109494109562_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else109494109562_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else109494109562_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109494109562_))))
                            (let ()
                              (declare (not safe))
                              (_else109494109562_)))))))
                 (_generate-values109188_
                  (lambda (_hd109302_ _body109303_)
                    (let _lp109305_ ((_rest109307_ _hd109302_)
                                     (_bind109308_ '())
                                     (_check109309_ '())
                                     (_post109310_ '()))
                      (let* ((___stx113436113437_ _rest109307_)
                             (_g109313109324_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113436113437_)))))
                        (let ((___kont113438113439_
                               (lambda (_L109351_ _L109352_)
                                 (let* ((___stx113392113393_ _L109352_)
                                        (_g109367109392_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113392113393_)))))
                                   (let ((___kont113394113395_
                                          (lambda (_L109465_ _L109466_)
                                            (let ((_eid109480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109466_)))
                                                  (_expr109481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self109181_
                                                      _L109465_))))
                                              (let ((__tmp114501
                                                     (let ((__tmp114502
                                                            (let ((__tmp114503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109481_ '()))))
                      (declare (not safe))
                      (cons _eid109480_ __tmp114503))))
               (declare (not safe))
               (cons __tmp114502 _bind109308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp109305_
                                                 _L109351_
                                                 __tmp114501
                                                 _check109309_
                                                 _post109310_)))))
                                         (___kont113396113397_
                                          (lambda (_L109413_ _L109414_)
                                            (let* ((_vals109427_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109429_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109427_
                                                       _L109414_
                                                       _L109413_)))
                                                   (_refs109431_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109427_
                                                       _L109414_)))
                                                   (_expr109433_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self109181_
                                                       _L109413_))))
                                              (let ((__tmp114506
                                                     (let ((__tmp114507
                                                            (let ((__tmp114508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109433_ '()))))
                      (declare (not safe))
                      (cons _vals109427_ __tmp114508))))
               (declare (not safe))
               (cons __tmp114507 _bind109308_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114505
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109429_
                                                             _check109309_)))
                                                    (__tmp114504
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs109431_
                                                             _post109310_))))
                                                (declare (not safe))
                                                (_lp109305_
                                                 _L109351_
                                                 __tmp114506
                                                 __tmp114505
                                                 __tmp114504))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113392113393_))
                                         (let ((_e109373109441_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113392113393_))))
                                           (let ((_tl109371109446_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e109373109441_)))
                                                 (_hd109372109444_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e109373109441_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd109372109444_))
                                                 (let ((_e109376109449_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd109372109444_))))
                                                   (let ((_tl109374109454_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e109376109449_)))
                                                         (_hd109375109452_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e109376109449_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl109374109454_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl109371109446_))
                     (let ((_e109379109457_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109371109446_))))
                       (let ((_tl109377109462_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109379109457_)))
                             (_hd109378109460_
                              (let ()
                                (declare (not safe))
                                (##car _e109379109457_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109377109462_))
                             (___kont113394113395_
                              _hd109378109460_
                              _hd109375109452_)
                             (let () (declare (not safe)) (_g109367109392_)))))
                     (let () (declare (not safe)) (_g109367109392_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl109371109446_))
                     (let ((_e109387109405_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109371109446_))))
                       (let ((_tl109385109410_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109387109405_)))
                             (_hd109386109408_
                              (let ()
                                (declare (not safe))
                                (##car _e109387109405_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109385109410_))
                             (___kont113396113397_
                              _hd109386109408_
                              _hd109372109444_)
                             (let () (declare (not safe)) (_g109367109392_)))))
                     (let () (declare (not safe)) (_g109367109392_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl109371109446_))
                                                     (let ((_e109387109405_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl109371109446_))))
                                                       (let ((_tl109385109410_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e109387109405_)))
                     (_hd109386109408_
                      (let () (declare (not safe)) (##car _e109387109405_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl109385109410_))
                     (___kont113396113397_ _hd109386109408_ _hd109372109444_)
                     (let () (declare (not safe)) (_g109367109392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g109367109392_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g109367109392_)))))))
                              (___kont113440113441_
                               (lambda ()
                                 (let* ((_body109331_
                                         (if _compiled-body?109183_
                                             _body109303_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self109181_
                                                _body109303_))))
                                        (_body109333_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post109189_
                                            _post109310_
                                            _body109331_)))
                                        (_body109335_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check109190_
                                            _check109309_
                                            _body109333_))))
                                   (let ((__tmp114509
                                          (let ((__tmp114511
                                                 (reverse _bind109308_))
                                                (__tmp114510
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body109335_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114511 __tmp114510))))
                                     (declare (not safe))
                                     (cons 'let __tmp114509))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113436113437_))
                              (let ((_e109319109343_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113436113437_))))
                                (let ((_tl109317109348_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109319109343_)))
                                      (_hd109318109346_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109319109343_))))
                                  (___kont113438113439_
                                   _tl109317109348_
                                   _hd109318109346_)))
                              (___kont113440113441_)))))))
                 (_generate-values-post109189_
                  (lambda (_post109261_ _body109262_)
                    (let _lp109264_ ((_rest109266_ _post109261_)
                                     (_body109267_ _body109262_))
                      (let* ((_rest109268109276_ _rest109266_)
                             (_else109270109284_ (lambda () _body109267_))
                             (_K109272109290_
                              (lambda (_rest109287_ _bind109288_)
                                (let ((__tmp114512
                                       (let ((__tmp114513
                                              (let ((__tmp114514
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body109267_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind109288_
                                                      __tmp114514))))
                                         (declare (not safe))
                                         (cons 'let __tmp114513))))
                                  (declare (not safe))
                                  (_lp109264_ _rest109287_ __tmp114512)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109268109276_))
                            (let ((_hd109273109293_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109268109276_)))
                                  (_tl109274109295_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109268109276_))))
                              (let* ((_bind109298_ _hd109273109293_)
                                     (_rest109300_ _tl109274109295_))
                                (declare (not safe))
                                (_K109272109290_ _rest109300_ _bind109298_)))
                            (let ()
                              (declare (not safe))
                              (_else109270109284_)))))))
                 (_generate-values-check109190_
                  (lambda (_check109258_ _body109259_)
                    (let ((__tmp114515
                           (let ((__tmp114517
                                  (let ()
                                    (declare (not safe))
                                    (cons _body109259_ '())))
                                 (__tmp114516 (reverse _check109258_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114517 __tmp114516))))
                      (declare (not safe))
                      (cons 'begin __tmp114515)))))
          (let* ((_g109192109209_
                  (lambda (_g109193109206_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109193109206_))))
                 (_g109191109255_
                  (lambda (_g109193109212_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109193109212_))
                        (let ((_e109198109214_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109193109212_))))
                          (let ((_hd109197109217_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109198109214_)))
                                (_tl109196109219_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109198109214_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl109196109219_))
                                (let ((_e109201109222_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl109196109219_))))
                                  (let ((_hd109200109225_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e109201109222_)))
                                        (_tl109199109227_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e109201109222_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109199109227_))
                                        (let ((_e109204109230_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109199109227_))))
                                          (let ((_hd109203109233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109204109230_)))
                                                (_tl109202109235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109204109230_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl109202109235_))
                                                ((lambda (_L109238_ _L109239_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L109239_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple109185_
                                                          _L109239_
                                                          _L109238_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values109188_
                                                          _L109239_
                                                          _L109238_))))
                                                 _hd109203109233_
                                                 _hd109200109225_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g109192109209_
                                                   _g109193109212_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109192109209_ _g109193109212_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g109192109209_ _g109193109212_)))))
                        (let ()
                          (declare (not safe))
                          (_g109192109209_ _g109193109212_))))))
            (declare (not safe))
            (_g109191109255_ _stx109182_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self109901_ _stx109902_)
        (let ((_compiled-body?109904_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self109901_
           _stx109902_
           _compiled-body?109904_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g114519_
        (let ((_g114518_ (let () (declare (not safe)) (##length _g114519_))))
          (cond ((let () (declare (not safe)) (##fx= _g114518_ 2))
                 (apply (lambda (_self109901_ _stx109902_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self109901_
                             _stx109902_)))
                        _g114519_))
                ((let () (declare (not safe)) (##fx= _g114518_ 3))
                 (apply (lambda (_self109906_
                                 _stx109907_
                                 _compiled-body?109908_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self109906_
                             _stx109907_
                             _compiled-body?109908_)))
                        _g114519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g114519_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals109075_ _hd109076_)
        (let _lp109078_ ((_rest109080_ _hd109076_)
                         (_k109081_ '0)
                         (_r109082_ '()))
          (let* ((___stx113450113451_ _rest109080_)
                 (_g109087109104_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx113450113451_)))))
            (let ((___kont113452113453_
                   (lambda (_L109167_)
                     (let ((__tmp114520
                            (let () (declare (not safe)) (fx+ _k109081_ '1))))
                       (declare (not safe))
                       (_lp109078_ _L109167_ __tmp114520 _r109082_))))
                  (___kont113454113455_
                   (lambda (_L109140_ _L109141_)
                     (let ((__tmp114526
                            (let () (declare (not safe)) (fx+ _k109081_ '1)))
                           (__tmp114521
                            (let ((__tmp114522
                                   (let ((__tmp114525
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109141_)))
                                         (__tmp114523
                                          (let ((__tmp114524
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals109075_
                                                    _k109081_
                                                    _L109140_))))
                                            (declare (not safe))
                                            (cons __tmp114524 '()))))
                                     (declare (not safe))
                                     (cons __tmp114525 __tmp114523))))
                              (declare (not safe))
                              (cons __tmp114522 _r109082_))))
                       (declare (not safe))
                       (_lp109078_ _L109140_ __tmp114526 __tmp114521))))
                  (___kont113456113457_
                   (lambda (_L109116_)
                     (let ((__tmp114527
                            (let ((__tmp114528
                                   (let ((__tmp114531
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109116_)))
                                         (__tmp114529
                                          (let ((__tmp114530
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals109075_
                                                    _k109081_))))
                                            (declare (not safe))
                                            (cons __tmp114530 '()))))
                                     (declare (not safe))
                                     (cons __tmp114531 __tmp114529))))
                              (declare (not safe))
                              (cons __tmp114528 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp114527 _r109082_))))
                  (___kont113458113459_ (lambda () (reverse _r109082_))))
              (let ((_g109085109127_
                     (lambda ()
                       (let ((_L109116_ ___stx113450113451_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L109116_))
                             (___kont113456113457_ _L109116_)
                             (___kont113458113459_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx113450113451_))
                    (let ((_e109092109156_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx113450113451_))))
                      (let ((_tl109090109161_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109092109156_)))
                            (_hd109091109159_
                             (let ()
                               (declare (not safe))
                               (##car _e109092109156_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd109091109159_))
                            (let ((_e109093109164_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd109091109159_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e109093109164_ '#f))
                                  (___kont113452113453_ _tl109090109161_)
                                  (___kont113454113455_
                                   _tl109090109161_
                                   _hd109091109159_)))
                            (___kont113454113455_
                             _tl109090109161_
                             _hd109091109159_))))
                    (let () (declare (not safe)) (_g109085109127_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self108754_ _stx108755_ _compiled-body?108756_)
        (letrec ((_generate-simple108758_
                  (lambda (_hd109060_ _body109061_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self108754_
                       'letrec
                       _hd109060_
                       _body109061_
                       _compiled-body?108756_))))
                 (_generate-values108759_
                  (lambda (_hd108839_ _body108840_)
                    (let _lp108842_ ((_rest108844_ _hd108839_)
                                     (_bind108845_ '())
                                     (_check108846_ '())
                                     (_post108847_ '()))
                      (let* ((___stx113524113525_ _rest108844_)
                             (_g108850108861_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113524113525_)))))
                        (let ((___kont113526113527_
                               (lambda (_L108888_ _L108889_)
                                 (let* ((___stx113480113481_ _L108889_)
                                        (_g108904108929_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113480113481_)))))
                                   (let ((___kont113482113483_
                                          (lambda (_L109036_ _L109037_)
                                            (let ((_eid109051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109037_)))
                                                  (_expr109052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108754_
                                                      _L109036_))))
                                              (let ((__tmp114532
                                                     (let ((__tmp114533
                                                            (let ((__tmp114534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109052_ '()))))
                      (declare (not safe))
                      (cons _eid109051_ __tmp114534))))
               (declare (not safe))
               (cons __tmp114533 _bind108845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108842_
                                                 _L108888_
                                                 __tmp114532
                                                 _check108846_
                                                 _post108847_)))))
                                         (___kont113484113485_
                                          (lambda (_L108950_ _L108951_)
                                            (let* ((_vals108964_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values108966_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals108964_
                                                       _L108951_
                                                       _L108950_)))
                                                   (_refs108968_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals108964_
                                                       _L108951_)))
                                                   (_expr108970_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108754_
                                                       _L108950_))))
                                              (let ((__tmp114537
                                                     (let ((__tmp114540
                                                            (let ((__tmp114541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114542
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr108970_ '()))))
                             (declare (not safe))
                             (cons _vals108964_ __tmp114542))))
                      (declare (not safe))
                      (cons __tmp114541 _bind108845_)))
                   (__tmp114538
                    (map (lambda (_e108972108974_)
                           (let* ((_g108976108985_ _e108972108974_)
                                  (_E108978108989_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g108976108985_))))
                                  (_K108979108994_
                                   (lambda (_eid108992_)
                                     (let ((__tmp114539
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid108992_ __tmp114539)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g108976108985_))
                                 (let ((_hd108980108997_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g108976108985_)))
                                       (_tl108981108999_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g108976108985_))))
                                   (let ((_eid109002_ _hd108980108997_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl108981108999_))
                                         (let ((_tl108983109004_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl108981108999_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl108983109004_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K108979108994_ _eid109002_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E108978108989_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E108978108989_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E108978108989_)))))
                         _refs108968_)))
               (declare (not safe))
               (foldl1 cons __tmp114540 __tmp114538)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114536
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values108966_
                                                             _check108846_)))
                                                    (__tmp114535
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs108968_
                                                               _post108847_))))
                                                (declare (not safe))
                                                (_lp108842_
                                                 _L108888_
                                                 __tmp114537
                                                 __tmp114536
                                                 __tmp114535))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113480113481_))
                                         (let ((_e108910109012_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113480113481_))))
                                           (let ((_tl108908109017_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e108910109012_)))
                                                 (_hd108909109015_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e108910109012_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd108909109015_))
                                                 (let ((_e108913109020_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd108909109015_))))
                                                   (let ((_tl108911109025_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e108913109020_)))
                                                         (_hd108912109023_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e108913109020_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl108911109025_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl108908109017_))
                     (let ((_e108916109028_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108908109017_))))
                       (let ((_tl108914109033_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108916109028_)))
                             (_hd108915109031_
                              (let ()
                                (declare (not safe))
                                (##car _e108916109028_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108914109033_))
                             (___kont113482113483_
                              _hd108915109031_
                              _hd108912109023_)
                             (let () (declare (not safe)) (_g108904108929_)))))
                     (let () (declare (not safe)) (_g108904108929_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl108908109017_))
                     (let ((_e108924108942_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108908109017_))))
                       (let ((_tl108922108947_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108924108942_)))
                             (_hd108923108945_
                              (let ()
                                (declare (not safe))
                                (##car _e108924108942_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108922108947_))
                             (___kont113484113485_
                              _hd108923108945_
                              _hd108909109015_)
                             (let () (declare (not safe)) (_g108904108929_)))))
                     (let () (declare (not safe)) (_g108904108929_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl108908109017_))
                                                     (let ((_e108924108942_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl108908109017_))))
                                                       (let ((_tl108922108947_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e108924108942_)))
                     (_hd108923108945_
                      (let () (declare (not safe)) (##car _e108924108942_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl108922108947_))
                     (___kont113484113485_ _hd108923108945_ _hd108909109015_)
                     (let () (declare (not safe)) (_g108904108929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g108904108929_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g108904108929_)))))))
                              (___kont113528113529_
                               (lambda ()
                                 (let* ((_body108868_
                                         (if _compiled-body?108756_
                                             _body108840_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108754_
                                                _body108840_))))
                                        (_body108870_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108761_
                                            _post108847_
                                            _body108868_)))
                                        (_body108872_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108760_
                                            _check108846_
                                            _body108870_))))
                                   (let ((__tmp114543
                                          (let ((__tmp114545
                                                 (reverse _bind108845_))
                                                (__tmp114544
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body108872_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114545 __tmp114544))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp114543))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113524113525_))
                              (let ((_e108856108880_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113524113525_))))
                                (let ((_tl108854108885_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108856108880_)))
                                      (_hd108855108883_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108856108880_))))
                                  (___kont113526113527_
                                   _tl108854108885_
                                   _hd108855108883_)))
                              (___kont113528113529_)))))))
                 (_generate-values-check108760_
                  (lambda (_check108836_ _body108837_)
                    (let ((__tmp114546
                           (let ((__tmp114548
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108837_ '())))
                                 (__tmp114547 (reverse _check108836_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114548 __tmp114547))))
                      (declare (not safe))
                      (cons 'begin __tmp114546))))
                 (_generate-values-post108761_
                  (lambda (_post108829_ _body108830_)
                    (let ((__tmp114549
                           (let ((__tmp114551
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108830_ '())))
                                 (__tmp114550
                                  (map (lambda (_g108831108833_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g108831108833_)))
                                       (reverse _post108829_))))
                             (declare (not safe))
                             (foldr1 cons __tmp114551 __tmp114550))))
                      (declare (not safe))
                      (cons 'begin __tmp114549)))))
          (let* ((_g108763108780_
                  (lambda (_g108764108777_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108764108777_))))
                 (_g108762108826_
                  (lambda (_g108764108783_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108764108783_))
                        (let ((_e108769108785_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108764108783_))))
                          (let ((_hd108768108788_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108769108785_)))
                                (_tl108767108790_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108769108785_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108767108790_))
                                (let ((_e108772108793_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108767108790_))))
                                  (let ((_hd108771108796_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108772108793_)))
                                        (_tl108770108798_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108772108793_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108770108798_))
                                        (let ((_e108775108801_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108770108798_))))
                                          (let ((_hd108774108804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108775108801_)))
                                                (_tl108773108806_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108775108801_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108773108806_))
                                                ((lambda (_L108809_ _L108810_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108810_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108758_
                                                          _L108810_
                                                          _L108809_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108759_
                                                          _L108810_
                                                          _L108809_))))
                                                 _hd108774108804_
                                                 _hd108771108796_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108763108780_
                                                   _g108764108783_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108763108780_ _g108764108783_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108763108780_ _g108764108783_)))))
                        (let ()
                          (declare (not safe))
                          (_g108763108780_ _g108764108783_))))))
            (declare (not safe))
            (_g108762108826_ _stx108755_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self109066_ _stx109067_)
        (let ((_compiled-body?109069_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self109066_
           _stx109067_
           _compiled-body?109069_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g114553_
        (let ((_g114552_ (let () (declare (not safe)) (##length _g114553_))))
          (cond ((let () (declare (not safe)) (##fx= _g114552_ 2))
                 (apply (lambda (_self109066_ _stx109067_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self109066_
                             _stx109067_)))
                        _g114553_))
                ((let () (declare (not safe)) (##fx= _g114552_ 3))
                 (apply (lambda (_self109071_
                                 _stx109072_
                                 _compiled-body?109073_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self109071_
                             _stx109072_
                             _compiled-body?109073_)))
                        _g114553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g114553_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self108335_ _stx108336_)
        (letrec ((_generate-values108338_
                  (lambda (_hd108581_ _body108582_)
                    (let _lp108584_ ((_rest108586_ _hd108581_)
                                     (_bind108587_ '()))
                      (let* ((_rest108588108596_ _rest108586_)
                             (_else108590108607_
                              (lambda ()
                                (let ((_bind108604_ (reverse _bind108587_))
                                      (_body108605_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self108335_
                                          _body108582_))))
                                  (let ((__tmp114554
                                         (let ((__tmp114555
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body108605_ '()))))
                                           (declare (not safe))
                                           (cons _bind108604_ __tmp114555))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp114554)))))
                             (_K108592108741_
                              (lambda (_rest108610_ _hd-bind108611_)
                                (let* ((___stx113538113539_ _hd-bind108611_)
                                       (_g108614108639_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113538113539_)))))
                                  (let ((___kont113540113541_
                                         (lambda (_L108720_ _L108721_)
                                           (let ((_eid108735_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L108721_)))
                                                 (_expr108736_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self108335_
                                                     _L108720_))))
                                             (let ((__tmp114556
                                                    (let ((__tmp114557
                                                           (let ((__tmp114558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr108736_ '()))))
                     (declare (not safe))
                     (cons _eid108735_ __tmp114558))))
              (declare (not safe))
              (cons __tmp114557 _bind108587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108584_
                                                _rest108610_
                                                __tmp114556)))))
                                        (___kont113542113543_
                                         (lambda (_L108660_ _L108661_)
                                           (let* ((_vals108680_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp108682_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values108684_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp108682_
                                                      _L108661_
                                                      _L108660_)))
                                                  (_refs108686_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals108680_
                                                      _L108661_)))
                                                  (_expr108688_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108335_
                                                      _L108660_))))
                                             (let ((__tmp114559
                                                    (let ((__tmp114560
                                                           (let ((__tmp114561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114562
                                 (let ((__tmp114563
                                        (let ((__tmp114564
                                               (let ((__tmp114567
                                                      (let ((__tmp114568
                                                             (let ((__tmp114569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr108688_ '()))))
                       (declare (not safe))
                       (cons _tmp108682_ __tmp114569))))
                (declare (not safe))
                (cons __tmp114568 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114565
                                                      (let ((__tmp114566
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp108682_ '()))))
                (declare (not safe))
                (cons _check-values108684_ __tmp114566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114567
                                                       __tmp114565))))
                                          (declare (not safe))
                                          (cons 'let __tmp114564))))
                                   (declare (not safe))
                                   (cons __tmp114563 '()))))
                            (declare (not safe))
                            (cons _vals108680_ __tmp114562))))
                     (declare (not safe))
                     (cons __tmp114561 _bind108587_))))
              (declare (not safe))
              (foldl1 cons __tmp114560 _refs108686_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108584_
                                                _rest108610_
                                                __tmp114559))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113538113539_))
                                        (let ((_e108620108696_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113538113539_))))
                                          (let ((_tl108618108701_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108620108696_)))
                                                (_hd108619108699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108620108696_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108619108699_))
                                                (let ((_e108623108704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108619108699_))))
                                                  (let ((_tl108621108709_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108623108704_)))
                                                        (_hd108622108707_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108623108704_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl108621108709_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108618108701_))
                                                            (let ((_e108626108712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108618108701_))))
                      (let ((_tl108624108717_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108626108712_)))
                            (_hd108625108715_
                             (let ()
                               (declare (not safe))
                               (##car _e108626108712_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108624108717_))
                            (___kont113540113541_
                             _hd108625108715_
                             _hd108622108707_)
                            (let () (declare (not safe)) (_g108614108639_)))))
                    (let () (declare (not safe)) (_g108614108639_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl108618108701_))
                    (let ((_e108634108652_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108618108701_))))
                      (let ((_tl108632108657_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108634108652_)))
                            (_hd108633108655_
                             (let ()
                               (declare (not safe))
                               (##car _e108634108652_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108632108657_))
                            (___kont113542113543_
                             _hd108633108655_
                             _hd108619108699_)
                            (let () (declare (not safe)) (_g108614108639_)))))
                    (let () (declare (not safe)) (_g108614108639_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl108618108701_))
                                                    (let ((_e108634108652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl108618108701_))))
                                                      (let ((_tl108632108657_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108634108652_)))
                    (_hd108633108655_
                     (let () (declare (not safe)) (##car _e108634108652_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl108632108657_))
                    (___kont113542113543_ _hd108633108655_ _hd108619108699_)
                    (let () (declare (not safe)) (_g108614108639_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108614108639_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108614108639_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108588108596_))
                            (let ((_hd108593108744_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108588108596_)))
                                  (_tl108594108746_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108588108596_))))
                              (let* ((_hd-bind108749_ _hd108593108744_)
                                     (_rest108751_ _tl108594108746_))
                                (declare (not safe))
                                (_K108592108741_
                                 _rest108751_
                                 _hd-bind108749_)))
                            (let ()
                              (declare (not safe))
                              (_else108590108607_)))))))
                 (_generate-letrec?108339_
                  (lambda (_hd108471_)
                    (let _lp108473_ ((_rest108475_ _hd108471_))
                      (let* ((_rest108476108484_ _rest108475_)
                             (_else108478108492_ (lambda () '#t))
                             (_K108480108569_
                              (lambda (_rest108495_ _hd-bind108496_)
                                (let* ((_g108498108515_
                                        (lambda (_g108499108512_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g108499108512_))))
                                       (_g108497108566_
                                        (lambda (_g108499108518_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g108499108518_))
                                              (let ((_e108504108520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g108499108518_))))
                                                (let ((_hd108503108523_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108504108520_)))
                                                      (_tl108502108525_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108504108520_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd108503108523_))
                                                      (let ((_e108507108528_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd108503108523_))))
                (let ((_hd108506108531_
                       (let () (declare (not safe)) (##car _e108507108528_)))
                      (_tl108505108533_
                       (let () (declare (not safe)) (##cdr _e108507108528_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108505108533_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108502108525_))
                          (let ((_e108510108536_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108502108525_))))
                            (let ((_hd108509108539_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108510108536_)))
                                  (_tl108508108541_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108510108536_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl108508108541_))
                                  ((lambda (_L108544_ _L108545_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?108340_ _L108544_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp108473_ _rest108495_))
                                         '#f))
                                   _hd108509108539_
                                   _hd108506108531_)
                                  (let ()
                                    (declare (not safe))
                                    (_g108498108515_ _g108499108518_)))))
                          (let ()
                            (declare (not safe))
                            (_g108498108515_ _g108499108518_)))
                      (let ()
                        (declare (not safe))
                        (_g108498108515_ _g108499108518_)))))
              (let ()
                (declare (not safe))
                (_g108498108515_ _g108499108518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108498108515_
                                                 _g108499108518_))))))
                                  (declare (not safe))
                                  (_g108497108566_ _hd-bind108496_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108476108484_))
                            (let ((_hd108481108572_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108476108484_)))
                                  (_tl108482108574_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108476108484_))))
                              (let* ((_hd-bind108577_ _hd108481108572_)
                                     (_rest108579_ _tl108482108574_))
                                (declare (not safe))
                                (_K108480108569_
                                 _rest108579_
                                 _hd-bind108577_)))
                            (let ()
                              (declare (not safe))
                              (_else108478108492_)))))))
                 (_is-lambda-expr?108340_
                  (lambda (_expr108408_)
                    (let* ((___stx113582113583_ _expr108408_)
                           (_g108411108425_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113582113583_)))))
                      (let ((___kont113584113585_
                             (lambda (_L108453_ _L108454_) '#t))
                            (___kont113586113587_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx113582113583_))
                            (let ((_e108417108437_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx113582113583_))))
                              (let ((_tl108415108442_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108417108437_)))
                                    (_hd108416108440_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108417108437_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108416108440_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd108416108440_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108415108442_))
                                            (let ((_e108420108445_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108415108442_))))
                                              (let ((_tl108418108450_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108420108445_)))
                                                    (_hd108419108448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108420108445_))))
                                                (___kont113584113585_
                                                 _tl108418108450_
                                                 _hd108419108448_)))
                                            (___kont113586113587_))
                                        (___kont113586113587_))
                                    (___kont113586113587_))))
                            (___kont113586113587_)))))))
          (let* ((_g108342108359_
                  (lambda (_g108343108356_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108343108356_))))
                 (_g108341108405_
                  (lambda (_g108343108362_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108343108362_))
                        (let ((_e108348108364_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108343108362_))))
                          (let ((_hd108347108367_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108348108364_)))
                                (_tl108346108369_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108348108364_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108346108369_))
                                (let ((_e108351108372_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108346108369_))))
                                  (let ((_hd108350108375_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108351108372_)))
                                        (_tl108349108377_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108351108372_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108349108377_))
                                        (let ((_e108354108380_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108349108377_))))
                                          (let ((_hd108353108383_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108354108380_)))
                                                (_tl108352108385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108354108380_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108352108385_))
                                                ((lambda (_L108388_ _L108389_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108389_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?108339_
                                                              _L108389_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108335_
                                                              'letrec
                                                              _L108389_
                                                              _L108388_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108335_
                                                              'letrec*
                                                              _L108389_
                                                              _L108388_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108338_
                                                          _L108389_
                                                          _L108388_))))
                                                 _hd108353108383_
                                                 _hd108350108375_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108342108359_
                                                   _g108343108362_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108342108359_ _g108343108362_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108342108359_ _g108343108362_)))))
                        (let ()
                          (declare (not safe))
                          (_g108342108359_ _g108343108362_))))))
            (declare (not safe))
            (_g108341108405_ _stx108336_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd108272_)
        (let _lp108274_ ((_rest108276_ _hd108272_))
          (let* ((_rest108277108293_ _rest108276_)
                 (_else108280108301_ (lambda () '#f)))
            (let ((_K108283108314_
                   (lambda (_rest108312_)
                     (let () (declare (not safe)) (_lp108274_ _rest108312_))))
                  (_K108282108306_ (lambda () '#t)))
              (let ((_try-match108279108309_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest108277108293_))
                           (let () (declare (not safe)) (_K108282108306_))
                           (let ()
                             (declare (not safe))
                             (_else108280108301_))))))
                (if (let () (declare (not safe)) (##pair? _rest108277108293_))
                    (let ((_tl108285108319_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest108277108293_)))
                          (_hd108284108317_
                           (let ()
                             (declare (not safe))
                             (##car _rest108277108293_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd108284108317_))
                          (let ((_tl108287108324_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd108284108317_)))
                                (_hd108286108322_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd108284108317_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108286108322_))
                                (let ((_tl108291108327_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108286108322_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl108291108327_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108287108324_))
                                          (let ((_tl108289108330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108287108324_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl108289108330_))
                                                (let ((_rest108333_
                                                       _tl108285108319_))
                                                  (declare (not safe))
                                                  (_lp108274_ _rest108333_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108280108301_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108280108301_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else108280108301_))))
                                (let ()
                                  (declare (not safe))
                                  (_else108280108301_))))
                          (let () (declare (not safe)) (_else108280108301_))))
                    (let ()
                      (declare (not safe))
                      (_try-match108279108309_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self108183_
               _form108184_
               _hd108185_
               _body108186_
               _compiled-body?108187_)
        (letrec ((_generate1108189_
                  (lambda (_bind108228_)
                    (let* ((_bind108229108240_ _bind108228_)
                           (_E108231108244_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind108229108240_))))
                           (_K108232108250_
                            (lambda (_expr108247_ _id108248_)
                              (let ((__tmp114572
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id108248_)))
                                    (__tmp114570
                                     (let ((__tmp114571
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self108183_
                                               _expr108247_))))
                                       (declare (not safe))
                                       (cons __tmp114571 '()))))
                                (declare (not safe))
                                (cons __tmp114572 __tmp114570)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind108229108240_))
                          (let ((_hd108233108253_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind108229108240_)))
                                (_tl108234108255_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind108229108240_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108233108253_))
                                (let ((_hd108237108258_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd108233108253_)))
                                      (_tl108238108260_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108233108253_))))
                                  (let ((_id108263_ _hd108237108258_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl108238108260_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl108234108255_))
                                            (let ((_hd108235108265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl108234108255_)))
                                                  (_tl108236108267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl108234108255_))))
                                              (let ((_expr108270_
                                                     _hd108235108265_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl108236108267_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K108232108250_
                                                       _expr108270_
                                                       _id108263_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E108231108244_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E108231108244_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E108231108244_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E108231108244_))))
                          (let () (declare (not safe)) (_E108231108244_)))))))
          (let* ((_bind108191_ (map _generate1108189_ _hd108185_))
                 (_body108193_
                  (if _compiled-body?108187_
                      _body108186_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self108183_ _body108186_))))
                 (_body108225_
                  (let* ((_body108194108202_ _body108193_)
                         (_else108196108210_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body108193_ '()))))
                         (_K108198108215_
                          (lambda (_exprs108213_) _exprs108213_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body108194108202_))
                        (let ((_hd108199108218_
                               (let ()
                                 (declare (not safe))
                                 (##car _body108194108202_)))
                              (_tl108200108220_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body108194108202_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd108199108218_ 'begin))
                              (let ((_exprs108223_ _tl108200108220_))
                                (declare (not safe))
                                (_K108198108215_ _exprs108223_))
                              (let ()
                                (declare (not safe))
                                (_else108196108210_))))
                        (let () (declare (not safe)) (_else108196108210_))))))
            (let ((__tmp114573
                   (let ()
                     (declare (not safe))
                     (cons _bind108191_ _body108225_))))
              (declare (not safe))
              (cons _form108184_ __tmp114573))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self108090_ _stx108091_)
        (letrec ((_generate1108093_
                  (lambda (_datum108145_)
                    (if (or (let () (declare (not safe)) (null? _datum108145_))
                            (interned-symbol? _datum108145_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum108145_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum108145_)))
                        _datum108145_
                        (if (uninterned-symbol? _datum108145_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum108145_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum108145_))
                                (let ((__tmp114578
                                       (let ((__tmp114579 (car _datum108145_)))
                                         (declare (not safe))
                                         (_generate1108093_ __tmp114579)))
                                      (__tmp114576
                                       (let ((__tmp114577 (cdr _datum108145_)))
                                         (declare (not safe))
                                         (_generate1108093_ __tmp114577))))
                                  (declare (not safe))
                                  (cons __tmp114578 __tmp114576))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum108145_))
                                    (let ((__tmp114574
                                           (let ((__tmp114575
                                                  (unbox _datum108145_)))
                                             (declare (not safe))
                                             (_generate1108093_ __tmp114575))))
                                      (declare (not safe))
                                      (box __tmp114574))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum108145_))
                                        (vector-map
                                         _generate1108093_
                                         _datum108145_)
                                        (if (or (s8vector? _datum108145_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum108145_))
                                                (s16vector? _datum108145_)
                                                (u16vector? _datum108145_)
                                                (s32vector? _datum108145_)
                                                (u32vector? _datum108145_)
                                                (s64vector? _datum108145_)
                                                (u64vector? _datum108145_)
                                                (f32vector? _datum108145_)
                                                (f64vector? _datum108145_))
                                            _datum108145_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx108091_)))))))))))
          (let* ((_g108095108108_
                  (lambda (_g108096108105_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108096108105_))))
                 (_g108094108142_
                  (lambda (_g108096108111_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108096108111_))
                        (let ((_e108100108113_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108096108111_))))
                          (let ((_hd108099108116_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108100108113_)))
                                (_tl108098108118_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108100108113_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108098108118_))
                                (let ((_e108103108121_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108098108118_))))
                                  (let ((_hd108102108124_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108103108121_)))
                                        (_tl108101108126_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108103108121_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl108101108126_))
                                        ((lambda (_L108129_)
                                           (let ((__tmp114580
                                                  (let ((__tmp114581
                                                         (let ((__tmp114582
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L108129_))))
                   (declare (not safe))
                   (_generate1108093_ __tmp114582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114581 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp114580)))
                                         _hd108102108124_)
                                        (let ()
                                          (declare (not safe))
                                          (_g108095108108_ _g108096108111_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108095108108_ _g108096108111_)))))
                        (let ()
                          (declare (not safe))
                          (_g108095108108_ _g108096108111_))))))
            (declare (not safe))
            (_g108094108142_ _stx108091_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self107603_ _stx107604_)
        (letrec ((_compile-call107606_
                  (lambda (_rator107830_ _rands107831_)
                    (let ((_rator107837_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self107603_ _rator107830_)))
                          (_rands107838_
                           (map (lambda (_g107832107834_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self107603_
                                     _g107832107834_)))
                                _rands107831_)))
                      (let* ((___stx113629113630_ _rator107837_)
                             (_g107841107893_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113629113630_)))))
                        (let ((___kont113631113632_
                               (lambda (_L108017_
                                        _L108018_
                                        _L108019_
                                        _L108020_)
                                 (if (fx= (length _rands107838_)
                                          (length (let ((__tmp114587
                                                         (lambda (_g108056108059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108057108061_)
                   (let ()
                     (declare (not safe))
                     (cons _g108056108059_ _g108057108061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114587
                                                            '()
                                                            _L108019_))))
                                     (let* ((_id108064_ _L108020_)
                                            (_args108073_
                                             (let ((__tmp114583
                                                    (lambda (_g108065108068_
                                                             _g108066108070_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108065108068_
                                                              _g108066108070_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114583
                                                       '()
                                                       _L108019_)))
                                            (_body108082_
                                             (let ((__tmp114584
                                                    (lambda (_g108074108077_
                                                             _g108075108079_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108074108077_
                                                              _g108075108079_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114584
                                                       '()
                                                       _L108018_)))
                                            (_init108084_
                                             (map list
                                                  _args108073_
                                                  _rands107838_)))
                                       (let ((__tmp114585
                                              (let ((__tmp114586
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init108084_
                                                             _body108082_))))
                                                (declare (not safe))
                                                (cons _id108064_
                                                      __tmp114586))))
                                         (declare (not safe))
                                         (cons 'let __tmp114585)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx107604_)))))
                              (___kont113637113638_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator107837_ _rands107838_)))))
                          (let ((___match113696113697_
                                 (lambda (_e107849107905_
                                          _hd107848107908_
                                          _tl107847107910_
                                          _e107852107913_
                                          _hd107851107916_
                                          _tl107850107918_
                                          _e107855107921_
                                          _hd107854107924_
                                          _tl107853107926_
                                          _e107858107929_
                                          _hd107857107932_
                                          _tl107856107934_
                                          _e107861107937_
                                          _hd107860107940_
                                          _tl107859107942_
                                          _e107864107945_
                                          _hd107863107948_
                                          _tl107862107950_
                                          _e107867107953_
                                          _hd107866107956_
                                          _tl107865107958_
                                          ___splice113633113634_
                                          _target107868107961_
                                          _tl107870107963_)
                                   (letrec ((_loop107871107966_
                                             (lambda (_hd107869107969_
                                                      _arg107875107971_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd107869107969_))
                                                   (let ((_e107872107974_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd107869107969_))))
                                                     (let ((_lp-tl107874107979_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107872107974_)))
                                                           (_lp-hd107873107977_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107872107974_))))
                                                       (let ((__tmp114589
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd107873107977_ _arg107875107971_))))
                 (declare (not safe))
                 (_loop107871107966_ _lp-tl107874107979_ __tmp114589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg107876107982_
                                                          (reverse _arg107875107971_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl107865107958_))
                                                         (let ((___splice113635113636_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl107865107958_ '0))))
                   (let ((_tl107879107987_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113635113636_ '1)))
                         (_target107877107985_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113635113636_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl107879107987_))
                         (letrec ((_loop107880107990_
                                   (lambda (_hd107878107993_
                                            _body107884107995_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd107878107993_))
                                         (let ((_e107881107998_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd107878107993_))))
                                           (let ((_lp-tl107883108003_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107881107998_)))
                                                 (_lp-hd107882108001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107881107998_))))
                                             (let ((__tmp114588
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd107882108001_
                                                            _body107884107995_))))
                                               (declare (not safe))
                                               (_loop107880107990_
                                                _lp-tl107883108003_
                                                __tmp114588))))
                                         (let ((_body107885108006_
                                                (reverse _body107884107995_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl107859107942_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl107853107926_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl107850107918_))
                                                       (let ((_e107888108009_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl107850107918_))))
                 (let ((_tl107886108014_
                        (let () (declare (not safe)) (##cdr _e107888108009_)))
                       (_hd107887108012_
                        (let () (declare (not safe)) (##car _e107888108009_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl107886108014_))
                       (let ((_L108017_ _hd107887108012_)
                             (_L108018_ _body107885108006_)
                             (_L108019_ _arg107876107982_)
                             (_L108020_ _hd107857107932_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L108020_ _L108017_))
                             (___kont113631113632_
                              _L108017_
                              _L108018_
                              _L108019_
                              _L108020_)
                             (___kont113637113638_)))
                       (___kont113637113638_))))
               (___kont113637113638_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113637113638_))
                                               (___kont113637113638_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop107880107990_ _target107877107985_ '())))
                         (___kont113637113638_))))
                 (___kont113637113638_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop107871107966_
                                        _target107868107961_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx113629113630_))
                                (let ((_e107849107905_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx113629113630_))))
                                  (let ((_tl107847107910_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107849107905_)))
                                        (_hd107848107908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107849107905_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107848107908_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd107848107908_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107847107910_))
                                                (let ((_e107852107913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107847107910_))))
                                                  (let ((_tl107850107918_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107852107913_)))
                                                        (_hd107851107916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107852107913_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107851107916_))
                                                        (let ((_e107855107921_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107851107916_))))
                  (let ((_tl107853107926_
                         (let () (declare (not safe)) (##cdr _e107855107921_)))
                        (_hd107854107924_
                         (let ()
                           (declare (not safe))
                           (##car _e107855107921_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107854107924_))
                        (let ((_e107858107929_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107854107924_))))
                          (let ((_tl107856107934_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107858107929_)))
                                (_hd107857107932_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107858107929_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107856107934_))
                                (let ((_e107861107937_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107856107934_))))
                                  (let ((_tl107859107942_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107861107937_)))
                                        (_hd107860107940_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107861107937_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd107860107940_))
                                        (let ((_e107864107945_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd107860107940_))))
                                          (let ((_tl107862107950_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107864107945_)))
                                                (_hd107863107948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107864107945_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107863107948_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd107863107948_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107862107950_))
                                                        (let ((_e107867107953_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107862107950_))))
                  (let ((_tl107865107958_
                         (let () (declare (not safe)) (##cdr _e107867107953_)))
                        (_hd107866107956_
                         (let ()
                           (declare (not safe))
                           (##car _e107867107953_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd107866107956_))
                        (let ((___splice113633113634_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd107866107956_
                                  '0))))
                          (let ((_tl107870107963_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113633113634_ '1)))
                                (_target107868107961_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113633113634_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107870107963_))
                                (___match113696113697_
                                 _e107849107905_
                                 _hd107848107908_
                                 _tl107847107910_
                                 _e107852107913_
                                 _hd107851107916_
                                 _tl107850107918_
                                 _e107855107921_
                                 _hd107854107924_
                                 _tl107853107926_
                                 _e107858107929_
                                 _hd107857107932_
                                 _tl107856107934_
                                 _e107861107937_
                                 _hd107860107940_
                                 _tl107859107942_
                                 _e107864107945_
                                 _hd107863107948_
                                 _tl107862107950_
                                 _e107867107953_
                                 _hd107866107956_
                                 _tl107865107958_
                                 ___splice113633113634_
                                 _target107868107961_
                                 _tl107870107963_)
                                (___kont113637113638_))))
                        (___kont113637113638_))))
                (___kont113637113638_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113637113638_))
                                                (___kont113637113638_))))
                                        (___kont113637113638_))))
                                (___kont113637113638_))))
                        (___kont113637113638_))))
                (___kont113637113638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113637113638_))
                                            (___kont113637113638_))
                                        (___kont113637113638_))))
                                (___kont113637113638_)))))))))
          (let* ((_g107608107622_
                  (lambda (_g107609107619_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107609107619_))))
                 (_g107607107827_
                  (lambda (_g107609107625_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107609107625_))
                        (let ((_e107614107627_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107609107625_))))
                          (let ((_hd107613107630_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107614107627_)))
                                (_tl107612107632_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107614107627_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107612107632_))
                                (let ((_e107617107635_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107612107632_))))
                                  (let ((_hd107616107638_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107617107635_)))
                                        (_tl107615107640_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107617107635_))))
                                    ((lambda (_L107643_ _L107644_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call107606_
                                              _L107644_
                                              _L107643_))
                                           (let* ((___stx113745113746_
                                                   _L107644_)
                                                  (_g107659107671_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx113745113746_)))))
                                             (let ((___kont113747113748_
                                                    (lambda ()
                                                      (let ((_f107701_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self107603_ _L107644_))))
                (if (let ((__tmp114604 (symbol->string _f107701_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp114604))
                    (let _lp107703_ ((_rest107706_ (reverse _L107643_))
                                     (_bind107708_ '())
                                     (_args107709_ '()))
                      (let* ((_rest107710107718_ _rest107706_)
                             (_else107712107726_
                              (lambda ()
                                (let ((__tmp114590
                                       (let ((__tmp114591
                                              (let ((__tmp114592
                                                     (let ((__tmp114593
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f107701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args107709_))))
               (declare (not safe))
               (cons __tmp114593 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp114592))))
                                         (declare (not safe))
                                         (cons _bind107708_ __tmp114591))))
                                  (declare (not safe))
                                  (cons 'let __tmp114590))))
                             (_K107714107812_
                              (lambda (_rest107729_ _e107730_)
                                (let* ((___stx113699113700_ _e107730_)
                                       (_g107735107753_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113699113700_)))))
                                  (let ((___kont113701113702_
                                         (lambda ()
                                           (let ((__tmp114594
                                                  (let ((__tmp114595
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107730_))))
                                                    (declare (not safe))
                                                    (cons __tmp114595
                                                          _args107709_))))
                                             (declare (not safe))
                                             (_lp107703_
                                              _rest107729_
                                              _bind107708_
                                              __tmp114594))))
                                        (___kont113703113704_
                                         (lambda ()
                                           (let ((__tmp114596
                                                  (let ((__tmp114597
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107730_))))
                                                    (declare (not safe))
                                                    (cons __tmp114597
                                                          _args107709_))))
                                             (declare (not safe))
                                             (_lp107703_
                                              _rest107729_
                                              _bind107708_
                                              __tmp114596))))
                                        (___kont113705113706_
                                         (lambda ()
                                           (let ((_tmp107760_
                                                  (let ((__tmp114598
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp114598))))
                                             (let ((__tmp114600
                                                    (let ((__tmp114601
                                                           (let ((__tmp114602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114603
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e107730_))))
                            (declare (not safe))
                            (cons __tmp114603 '()))))
                     (declare (not safe))
                     (cons _tmp107760_ __tmp114602))))
              (declare (not safe))
              (cons __tmp114601 _bind107708_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114599
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp107760_
                                                            _args107709_))))
                                               (declare (not safe))
                                               (_lp107703_
                                                _rest107729_
                                                __tmp114600
                                                __tmp114599))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113699113700_))
                                        (let ((_e107739107791_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113699113700_))))
                                          (let ((_tl107737107796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107739107791_)))
                                                (_hd107738107794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107739107791_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107738107794_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd107738107794_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107737107796_))
                                                        (let ((_e107742107799_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107737107796_))))
                  (let ((_tl107740107804_
                         (let () (declare (not safe)) (##cdr _e107742107799_)))
                        (_hd107741107802_
                         (let ()
                           (declare (not safe))
                           (##car _e107742107799_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl107740107804_))
                        (___kont113701113702_)
                        (___kont113705113706_))))
                (___kont113705113706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd107738107794_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107737107796_))
                                                            (let ((_e107748107776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107737107796_))))
                      (let ((_tl107746107781_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107748107776_)))
                            (_hd107747107779_
                             (let ()
                               (declare (not safe))
                               (##car _e107748107776_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107746107781_))
                            (___kont113703113704_)
                            (___kont113705113706_))))
                    (___kont113705113706_))
                (___kont113705113706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113705113706_))))
                                        (___kont113705113706_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107710107718_))
                            (let ((_hd107715107815_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107710107718_)))
                                  (_tl107716107817_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107710107718_))))
                              (let* ((_e107820_ _hd107715107815_)
                                     (_rest107822_ _tl107716107817_))
                                (declare (not safe))
                                (_K107714107812_ _rest107822_ _e107820_)))
                            (let ()
                              (declare (not safe))
                              (_else107712107726_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call107606_ _L107644_ _L107643_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113749113750_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call107606_
                                                         _L107644_
                                                         _L107643_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx113745113746_))
                                                   (let ((_e107663107683_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx113745113746_))))
                                                     (let ((_tl107661107688_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107663107683_)))
                                                           (_hd107662107686_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107663107683_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd107662107686_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd107662107686_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl107661107688_))
                           (let ((_e107666107691_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl107661107688_))))
                             (let ((_tl107664107696_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e107666107691_)))
                                   (_hd107665107694_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e107666107691_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl107664107696_))
                                   (___kont113747113748_)
                                   (___kont113749113750_))))
                           (___kont113749113750_))
                       (___kont113749113750_))
                   (___kont113749113750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113749113750_))))))
                                     _tl107615107640_
                                     _hd107616107638_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107608107622_ _g107609107625_)))))
                        (let ()
                          (declare (not safe))
                          (_g107608107622_ _g107609107625_))))))
            (declare (not safe))
            (_g107607107827_ _stx107604_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self107390_ _stx107391_)
        (let* ((___stx113817113818_ _stx107391_)
               (_g107394107414_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113817113818_)))))
          (let ((___kont113819113820_
                 (lambda (_L107458_ _L107459_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self107390_ _stx107391_))
                       (let ((_f107477_
                              (let ((__tmp114605
                                     (let ((__tmp114607
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp114606
                                            (let ()
                                              (declare (not safe))
                                              (cons _L107459_ '()))))
                                       (declare (not safe))
                                       (cons __tmp114607 __tmp114606))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self107390_ __tmp114605))))
                         (let _lp107479_ ((_rest107482_ (reverse _L107458_))
                                          (_bind107484_ '())
                                          (_args107485_ '()))
                           (let* ((_rest107486107494_ _rest107482_)
                                  (_else107488107502_
                                   (lambda ()
                                     (let ((__tmp114608
                                            (let ((__tmp114609
                                                   (let ((__tmp114610
                                                          (let ((__tmp114611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f107477_ _args107485_))))
                    (declare (not safe))
                    (cons __tmp114611 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp114610))))
                                              (declare (not safe))
                                              (cons _bind107484_
                                                    __tmp114609))))
                                       (declare (not safe))
                                       (cons 'let __tmp114608))))
                                  (_K107490107588_
                                   (lambda (_rest107505_ _e107506_)
                                     (let* ((___stx113771113772_ _e107506_)
                                            (_g107511107529_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx113771113772_)))))
                                       (let ((___kont113773113774_
                                              (lambda ()
                                                (let ((__tmp114612
                                                       (let ((__tmp114613
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107506_))))
                 (declare (not safe))
                 (cons __tmp114613 _args107485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107479_
                                                   _rest107505_
                                                   _bind107484_
                                                   __tmp114612))))
                                             (___kont113775113776_
                                              (lambda ()
                                                (let ((__tmp114614
                                                       (let ((__tmp114615
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107506_))))
                 (declare (not safe))
                 (cons __tmp114615 _args107485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107479_
                                                   _rest107505_
                                                   _bind107484_
                                                   __tmp114614))))
                                             (___kont113777113778_
                                              (lambda ()
                                                (let ((_tmp107536_
                                                       (let ((__tmp114616
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp114616))))
                                                  (let ((__tmp114618
                                                         (let ((__tmp114619
                                                                (let ((__tmp114620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114621
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e107506_))))
                                 (declare (not safe))
                                 (cons __tmp114621 '()))))
                          (declare (not safe))
                          (cons _tmp107536_ __tmp114620))))
                   (declare (not safe))
                   (cons __tmp114619 _bind107484_)))
                (__tmp114617
                 (let ()
                   (declare (not safe))
                   (cons _tmp107536_ _args107485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp107479_
                                                     _rest107505_
                                                     __tmp114618
                                                     __tmp114617))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx113771113772_))
                                             (let ((_e107515107567_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx113771113772_))))
                                               (let ((_tl107513107572_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e107515107567_)))
                                                     (_hd107514107570_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e107515107567_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd107514107570_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd107514107570_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107513107572_))
                     (let ((_e107518107575_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107513107572_))))
                       (let ((_tl107516107580_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107518107575_)))
                             (_hd107517107578_
                              (let ()
                                (declare (not safe))
                                (##car _e107518107575_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107516107580_))
                             (___kont113773113774_)
                             (___kont113777113778_))))
                     (___kont113777113778_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd107514107570_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl107513107572_))
                         (let ((_e107524107552_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl107513107572_))))
                           (let ((_tl107522107557_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e107524107552_)))
                                 (_hd107523107555_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e107524107552_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl107522107557_))
                                 (___kont113775113776_)
                                 (___kont113777113778_))))
                         (___kont113777113778_))
                     (___kont113777113778_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113777113778_))))
                                             (___kont113777113778_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest107486107494_))
                                 (let ((_hd107491107591_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest107486107494_)))
                                       (_tl107492107593_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest107486107494_))))
                                   (let* ((_e107596_ _hd107491107591_)
                                          (_rest107598_ _tl107492107593_))
                                     (declare (not safe))
                                     (_K107490107588_ _rest107598_ _e107596_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else107488107502_)))))))))
                (___kont113821113822_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self107390_ _stx107391_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx113817113818_))
                (let ((_e107400107426_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx113817113818_))))
                  (let ((_tl107398107431_
                         (let () (declare (not safe)) (##cdr _e107400107426_)))
                        (_hd107399107429_
                         (let ()
                           (declare (not safe))
                           (##car _e107400107426_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl107398107431_))
                        (let ((_e107403107434_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107398107431_))))
                          (let ((_tl107401107439_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107403107434_)))
                                (_hd107402107437_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107403107434_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd107402107437_))
                                (let ((_e107406107442_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd107402107437_))))
                                  (let ((_tl107404107447_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107406107442_)))
                                        (_hd107405107445_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107406107442_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107405107445_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd107405107445_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107404107447_))
                                                (let ((_e107409107450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107404107447_))))
                                                  (let ((_tl107407107455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107409107450_)))
                                                        (_hd107408107453_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107409107450_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107407107455_))
                                                        (___kont113819113820_
                                                         _tl107401107439_
                                                         _hd107408107453_)
                                                        (___kont113821113822_))))
                                                (___kont113821113822_))
                                            (___kont113821113822_))
                                        (___kont113821113822_))))
                                (___kont113821113822_))))
                        (___kont113821113822_))))
                (___kont113821113822_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self107202_ _stx107203_)
        (letrec ((_simplify107205_
                  (lambda (_code107290_)
                    (let* ((_code107291107309_ _code107290_)
                           (_else107293107317_ (lambda () _code107290_))
                           (_K107295107353_
                            (lambda (_expr107320_ _test107321_)
                              (let* ((_expr107322107330_ _expr107320_)
                                     (_else107324107338_
                                      (lambda ()
                                        (let ((__tmp114622
                                               (let ((__tmp114623
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr107320_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test107321_
                                                       __tmp114623))))
                                          (declare (not safe))
                                          (cons 'and __tmp114622))))
                                     (_K107326107343_
                                      (lambda (_exprs107341_)
                                        (let ((__tmp114624
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test107321_
                                                       _exprs107341_))))
                                          (declare (not safe))
                                          (cons 'and __tmp114624)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr107322107330_))
                                    (let ((_hd107327107346_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr107322107330_)))
                                          (_tl107328107348_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr107322107330_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107327107346_ 'and))
                                          (let ((_exprs107351_
                                                 _tl107328107348_))
                                            (declare (not safe))
                                            (_K107326107343_ _exprs107351_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107324107338_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107324107338_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code107291107309_))
                          (let ((_hd107296107356_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code107291107309_)))
                                (_tl107297107358_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code107291107309_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd107296107356_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl107297107358_))
                                    (let ((_hd107298107361_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl107297107358_)))
                                          (_tl107299107363_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl107297107358_))))
                                      (let ((_test107366_ _hd107298107361_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107299107363_))
                                            (let ((_hd107300107368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107299107363_)))
                                                  (_tl107301107370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107299107363_))))
                                              (let ((_expr107373_
                                                     _hd107300107368_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl107301107370_))
                                                    (let ((_hd107302107375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl107301107370_)))
                                                          (_tl107303107377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl107301107370_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd107302107375_))
                                                          (let ((_hd107304107380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd107302107375_)))
                        (_tl107305107382_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107302107375_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107304107380_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107305107382_))
                            (let ((_hd107306107385_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107305107382_)))
                                  (_tl107307107387_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107305107382_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107306107385_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107307107387_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107303107377_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107295107353_
                                             _expr107373_
                                             _test107366_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107293107317_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107293107317_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107293107317_))))
                            (let () (declare (not safe)) (_else107293107317_)))
                        (let () (declare (not safe)) (_else107293107317_))))
                  (let () (declare (not safe)) (_else107293107317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else107293107317_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107293107317_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107293107317_)))
                                (let ()
                                  (declare (not safe))
                                  (_else107293107317_))))
                          (let ()
                            (declare (not safe))
                            (_else107293107317_)))))))
          (let* ((_g107207107228_
                  (lambda (_g107208107225_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107208107225_))))
                 (_g107206107287_
                  (lambda (_g107208107231_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107208107231_))
                        (let ((_e107214107233_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107208107231_))))
                          (let ((_hd107213107236_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107214107233_)))
                                (_tl107212107238_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107214107233_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107212107238_))
                                (let ((_e107217107241_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107212107238_))))
                                  (let ((_hd107216107244_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107217107241_)))
                                        (_tl107215107246_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107217107241_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107215107246_))
                                        (let ((_e107220107249_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107215107246_))))
                                          (let ((_hd107219107252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107220107249_)))
                                                (_tl107218107254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107220107249_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107218107254_))
                                                (let ((_e107223107257_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107218107254_))))
                                                  (let ((_hd107222107260_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107223107257_)))
                                                        (_tl107221107262_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107223107257_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107221107262_))
                                                        ((lambda (_L107265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L107266_
                          _L107267_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp114632
                              (let ((__tmp114633
                                     (let ((__tmp114638
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107202_
                                               _L107267_)))
                                           (__tmp114634
                                            (let ((__tmp114637
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107202_
                                                      _L107266_)))
                                                  (__tmp114635
                                                   (let ((__tmp114636
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self107202_
                                                             _L107265_))))
                                                     (declare (not safe))
                                                     (cons __tmp114636 '()))))
                                              (declare (not safe))
                                              (cons __tmp114637 __tmp114635))))
                                       (declare (not safe))
                                       (cons __tmp114638 __tmp114634))))
                                (declare (not safe))
                                (cons 'if __tmp114633))))
                         (declare (not safe))
                         (_simplify107205_ __tmp114632))
                       (let ((__tmp114625
                              (let ((__tmp114630
                                     (let ((__tmp114631
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self107202_
                                                 _L107267_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114631
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp114626
                                     (let ((__tmp114629
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107202_
                                               _L107266_)))
                                           (__tmp114627
                                            (let ((__tmp114628
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107202_
                                                      _L107265_))))
                                              (declare (not safe))
                                              (cons __tmp114628 '()))))
                                       (declare (not safe))
                                       (cons __tmp114629 __tmp114627))))
                                (declare (not safe))
                                (cons __tmp114630 __tmp114626))))
                         (declare (not safe))
                         (cons 'if __tmp114625))))
                 _hd107222107260_
                 _hd107219107252_
                 _hd107216107244_)
                (let ()
                  (declare (not safe))
                  (_g107207107228_ _g107208107231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107207107228_
                                                   _g107208107231_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107207107228_ _g107208107231_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107207107228_ _g107208107231_)))))
                        (let ()
                          (declare (not safe))
                          (_g107207107228_ _g107208107231_))))))
            (declare (not safe))
            (_g107206107287_ _stx107203_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self107150_ _stx107151_)
        (let* ((_g107153107166_
                (lambda (_g107154107163_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107154107163_))))
               (_g107152107199_
                (lambda (_g107154107169_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107154107169_))
                      (let ((_e107158107171_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107154107169_))))
                        (let ((_hd107157107174_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107158107171_)))
                              (_tl107156107176_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107158107171_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107156107176_))
                              (let ((_e107161107179_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107156107176_))))
                                (let ((_hd107160107182_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107161107179_)))
                                      (_tl107159107184_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107161107179_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl107159107184_))
                                      ((lambda (_L107187_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L107187_)))
                                       _hd107160107182_)
                                      (let ()
                                        (declare (not safe))
                                        (_g107153107166_ _g107154107169_)))))
                              (let ()
                                (declare (not safe))
                                (_g107153107166_ _g107154107169_)))))
                      (let ()
                        (declare (not safe))
                        (_g107153107166_ _g107154107169_))))))
          (declare (not safe))
          (_g107152107199_ _stx107151_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self107082_ _stx107083_)
        (let* ((_g107085107102_
                (lambda (_g107086107099_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107086107099_))))
               (_g107084107147_
                (lambda (_g107086107105_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107086107105_))
                      (let ((_e107091107107_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107086107105_))))
                        (let ((_hd107090107110_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107091107107_)))
                              (_tl107089107112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107091107107_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107089107112_))
                              (let ((_e107094107115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107089107112_))))
                                (let ((_hd107093107118_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107094107115_)))
                                      (_tl107092107120_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107094107115_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107092107120_))
                                      (let ((_e107097107123_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107092107120_))))
                                        (let ((_hd107096107126_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107097107123_)))
                                              (_tl107095107128_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107097107123_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107095107128_))
                                              ((lambda (_L107131_ _L107132_)
                                                 (let ((__tmp114639
                                                        (let ((__tmp114642
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L107132_)))
                      (__tmp114640
                       (let ((__tmp114641
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self107082_ _L107131_))))
                         (declare (not safe))
                         (cons __tmp114641 '()))))
                  (declare (not safe))
                  (cons __tmp114642 __tmp114640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp114639)))
                                               _hd107096107126_
                                               _hd107093107118_)
                                              (let ()
                                                (declare (not safe))
                                                (_g107085107102_
                                                 _g107086107105_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107085107102_ _g107086107105_)))))
                              (let ()
                                (declare (not safe))
                                (_g107085107102_ _g107086107105_)))))
                      (let ()
                        (declare (not safe))
                        (_g107085107102_ _g107086107105_))))))
          (declare (not safe))
          (_g107084107147_ _stx107083_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self106893_ _stx106894_)
        (let* ((_g106896106913_
                (lambda (_g106897106910_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106897106910_))))
               (_g106895107079_
                (lambda (_g106897106916_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106897106916_))
                      (let ((_e106902106918_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106897106916_))))
                        (let ((_hd106901106921_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106902106918_)))
                              (_tl106900106923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106902106918_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106900106923_))
                              (let ((_e106905106926_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106900106923_))))
                                (let ((_hd106904106929_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106905106926_)))
                                      (_tl106903106931_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106905106926_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106903106931_))
                                      (let ((_e106908106934_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106903106931_))))
                                        (let ((_hd106907106937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106908106934_)))
                                              (_tl106906106939_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106908106934_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106906106939_))
                                              ((lambda (_L106942_ _L106943_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114658
                                                            (let ((__tmp114661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106893_ _L106942_)))
                          (__tmp114659
                           (let ((__tmp114660
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106893_
                                     _L106943_))))
                             (declare (not safe))
                             (cons __tmp114660 '()))))
                      (declare (not safe))
                      (cons __tmp114661 __tmp114659))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp114658))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106958_ ((_rest106961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114657
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106942_ '()))))
                                 (declare (not safe))
                                 (cons _L106943_ __tmp114657)))
                              (_bind106963_ '())
                              (_args106964_ '()))
               (let* ((_rest106965106973_ _rest106961_)
                      (_else106967106981_
                       (lambda ()
                         (let ((__tmp114643
                                (let ((__tmp114644
                                       (let ((__tmp114645
                                              (let ((__tmp114646
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args106964_))))
                                                (declare (not safe))
                                                (cons __tmp114646 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114645))))
                                  (declare (not safe))
                                  (cons _bind106963_ __tmp114644))))
                           (declare (not safe))
                           (cons 'let __tmp114643))))
                      (_K106969107067_
                       (lambda (_rest106984_ _e106985_)
                         (let* ((___stx113855113856_ _e106985_)
                                (_g106990107008_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113855113856_)))))
                           (let ((___kont113857113858_
                                  (lambda ()
                                    (let ((__tmp114647
                                           (let ((__tmp114648
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106985_))))
                                             (declare (not safe))
                                             (cons __tmp114648 _args106964_))))
                                      (declare (not safe))
                                      (_lp106958_
                                       _rest106984_
                                       _bind106963_
                                       __tmp114647))))
                                 (___kont113859113860_
                                  (lambda ()
                                    (let ((__tmp114649
                                           (let ((__tmp114650
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106985_))))
                                             (declare (not safe))
                                             (cons __tmp114650 _args106964_))))
                                      (declare (not safe))
                                      (_lp106958_
                                       _rest106984_
                                       _bind106963_
                                       __tmp114649))))
                                 (___kont113861113862_
                                  (lambda ()
                                    (let ((_tmp107015_
                                           (let ((__tmp114651 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114651))))
                                      (let ((__tmp114653
                                             (let ((__tmp114654
                                                    (let ((__tmp114655
                                                           (let ((__tmp114656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106985_))))
                     (declare (not safe))
                     (cons __tmp114656 '()))))
              (declare (not safe))
              (cons _tmp107015_ __tmp114655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114654
                                                     _bind106963_)))
                                            (__tmp114652
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp107015_
                                                     _args106964_))))
                                        (declare (not safe))
                                        (_lp106958_
                                         _rest106984_
                                         __tmp114653
                                         __tmp114652))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113855113856_))
                                 (let ((_e106994107046_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113855113856_))))
                                   (let ((_tl106992107051_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106994107046_)))
                                         (_hd106993107049_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106994107046_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106993107049_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106993107049_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106992107051_))
                                                 (let ((_e106997107054_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106992107051_))))
                                                   (let ((_tl106995107059_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106997107054_)))
                                                         (_hd106996107057_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106997107054_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106995107059_))
                                                         (___kont113857113858_)
                                                         (___kont113861113862_))))
                                                 (___kont113861113862_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106993107049_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106992107051_))
                                                     (let ((_e107003107031_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106992107051_))))
                                                       (let ((_tl107001107036_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107003107031_)))
                     (_hd107002107034_
                      (let () (declare (not safe)) (##car _e107003107031_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107001107036_))
                     (___kont113859113860_)
                     (___kont113861113862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113861113862_))
                                                 (___kont113861113862_)))
                                         (___kont113861113862_))))
                                 (___kont113861113862_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106965106973_))
                     (let ((_hd106970107070_
                            (let ()
                              (declare (not safe))
                              (##car _rest106965106973_)))
                           (_tl106971107072_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106965106973_))))
                       (let* ((_e107075_ _hd106970107070_)
                              (_rest107077_ _tl106971107072_))
                         (declare (not safe))
                         (_K106969107067_ _rest107077_ _e107075_)))
                     (let () (declare (not safe)) (_else106967106981_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106907106937_
                                               _hd106904106929_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106896106913_
                                                 _g106897106916_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106896106913_ _g106897106916_)))))
                              (let ()
                                (declare (not safe))
                                (_g106896106913_ _g106897106916_)))))
                      (let ()
                        (declare (not safe))
                        (_g106896106913_ _g106897106916_))))))
          (declare (not safe))
          (_g106895107079_ _stx106894_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self106704_ _stx106705_)
        (let* ((_g106707106724_
                (lambda (_g106708106721_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106708106721_))))
               (_g106706106890_
                (lambda (_g106708106727_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106708106727_))
                      (let ((_e106713106729_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106708106727_))))
                        (let ((_hd106712106732_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106713106729_)))
                              (_tl106711106734_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106713106729_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106711106734_))
                              (let ((_e106716106737_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106711106734_))))
                                (let ((_hd106715106740_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106716106737_)))
                                      (_tl106714106742_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106716106737_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106714106742_))
                                      (let ((_e106719106745_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106714106742_))))
                                        (let ((_hd106718106748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106719106745_)))
                                              (_tl106717106750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106719106745_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106717106750_))
                                              ((lambda (_L106753_ _L106754_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114677
                                                            (let ((__tmp114680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106704_ _L106753_)))
                          (__tmp114678
                           (let ((__tmp114679
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106704_
                                     _L106754_))))
                             (declare (not safe))
                             (cons __tmp114679 '()))))
                      (declare (not safe))
                      (cons __tmp114680 __tmp114678))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp114677))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106769_ ((_rest106772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114676
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106753_ '()))))
                                 (declare (not safe))
                                 (cons _L106754_ __tmp114676)))
                              (_bind106774_ '())
                              (_args106775_ '()))
               (let* ((_rest106776106784_ _rest106772_)
                      (_else106778106792_
                       (lambda ()
                         (let ((__tmp114662
                                (let ((__tmp114663
                                       (let ((__tmp114664
                                              (let ((__tmp114665
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args106775_))))
                                                (declare (not safe))
                                                (cons __tmp114665 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114664))))
                                  (declare (not safe))
                                  (cons _bind106774_ __tmp114663))))
                           (declare (not safe))
                           (cons 'let __tmp114662))))
                      (_K106780106878_
                       (lambda (_rest106795_ _e106796_)
                         (let* ((___stx113901113902_ _e106796_)
                                (_g106801106819_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113901113902_)))))
                           (let ((___kont113903113904_
                                  (lambda ()
                                    (let ((__tmp114666
                                           (let ((__tmp114667
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106796_))))
                                             (declare (not safe))
                                             (cons __tmp114667 _args106775_))))
                                      (declare (not safe))
                                      (_lp106769_
                                       _rest106795_
                                       _bind106774_
                                       __tmp114666))))
                                 (___kont113905113906_
                                  (lambda ()
                                    (let ((__tmp114668
                                           (let ((__tmp114669
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106796_))))
                                             (declare (not safe))
                                             (cons __tmp114669 _args106775_))))
                                      (declare (not safe))
                                      (_lp106769_
                                       _rest106795_
                                       _bind106774_
                                       __tmp114668))))
                                 (___kont113907113908_
                                  (lambda ()
                                    (let ((_tmp106826_
                                           (let ((__tmp114670 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114670))))
                                      (let ((__tmp114672
                                             (let ((__tmp114673
                                                    (let ((__tmp114674
                                                           (let ((__tmp114675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106796_))))
                     (declare (not safe))
                     (cons __tmp114675 '()))))
              (declare (not safe))
              (cons _tmp106826_ __tmp114674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114673
                                                     _bind106774_)))
                                            (__tmp114671
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106826_
                                                     _args106775_))))
                                        (declare (not safe))
                                        (_lp106769_
                                         _rest106795_
                                         __tmp114672
                                         __tmp114671))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113901113902_))
                                 (let ((_e106805106857_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113901113902_))))
                                   (let ((_tl106803106862_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106805106857_)))
                                         (_hd106804106860_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106805106857_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106804106860_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106804106860_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106803106862_))
                                                 (let ((_e106808106865_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106803106862_))))
                                                   (let ((_tl106806106870_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106808106865_)))
                                                         (_hd106807106868_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106808106865_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106806106870_))
                                                         (___kont113903113904_)
                                                         (___kont113907113908_))))
                                                 (___kont113907113908_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106804106860_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106803106862_))
                                                     (let ((_e106814106842_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106803106862_))))
                                                       (let ((_tl106812106847_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106814106842_)))
                     (_hd106813106845_
                      (let () (declare (not safe)) (##car _e106814106842_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106812106847_))
                     (___kont113905113906_)
                     (___kont113907113908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113907113908_))
                                                 (___kont113907113908_)))
                                         (___kont113907113908_))))
                                 (___kont113907113908_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106776106784_))
                     (let ((_hd106781106881_
                            (let ()
                              (declare (not safe))
                              (##car _rest106776106784_)))
                           (_tl106782106883_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106776106784_))))
                       (let* ((_e106886_ _hd106781106881_)
                              (_rest106888_ _tl106782106883_))
                         (declare (not safe))
                         (_K106780106878_ _rest106888_ _e106886_)))
                     (let () (declare (not safe)) (_else106778106792_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106718106748_
                                               _hd106715106740_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106707106724_
                                                 _g106708106727_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106707106724_ _g106708106727_)))))
                              (let ()
                                (declare (not safe))
                                (_g106707106724_ _g106708106727_)))))
                      (let ()
                        (declare (not safe))
                        (_g106707106724_ _g106708106727_))))))
          (declare (not safe))
          (_g106706106890_ _stx106705_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self106620_ _stx106621_)
        (let* ((_g106623106644_
                (lambda (_g106624106641_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106624106641_))))
               (_g106622106701_
                (lambda (_g106624106647_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106624106647_))
                      (let ((_e106630106649_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106624106647_))))
                        (let ((_hd106629106652_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106630106649_)))
                              (_tl106628106654_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106630106649_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106628106654_))
                              (let ((_e106633106657_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106628106654_))))
                                (let ((_hd106632106660_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106633106657_)))
                                      (_tl106631106662_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106633106657_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106631106662_))
                                      (let ((_e106636106665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106631106662_))))
                                        (let ((_hd106635106668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106636106665_)))
                                              (_tl106634106670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106636106665_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106634106670_))
                                              (let ((_e106639106673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106634106670_))))
                                                (let ((_hd106638106676_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106639106673_)))
                                                      (_tl106637106678_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106639106673_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106637106678_))
                                                      ((lambda (_L106681_
                                                                _L106682_
                                                                _L106683_)
                                                         (let ((__tmp114681
                                                                (let ((__tmp114687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106620_ _L106681_)))
                              (__tmp114682
                               (let ((__tmp114686
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106620_
                                         _L106682_)))
                                     (__tmp114683
                                      (let ((__tmp114685
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106620_
                                                _L106683_)))
                                            (__tmp114684
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114685 __tmp114684))))
                                 (declare (not safe))
                                 (cons __tmp114686 __tmp114683))))
                          (declare (not safe))
                          (cons __tmp114687 __tmp114682))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp114681)))
               _hd106638106676_
               _hd106635106668_
               _hd106632106660_)
              (let ()
                (declare (not safe))
                (_g106623106644_ _g106624106647_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106623106644_
                                                 _g106624106647_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106623106644_ _g106624106647_)))))
                              (let ()
                                (declare (not safe))
                                (_g106623106644_ _g106624106647_)))))
                      (let ()
                        (declare (not safe))
                        (_g106623106644_ _g106624106647_))))))
          (declare (not safe))
          (_g106622106701_ _stx106621_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self106520_ _stx106521_)
        (let* ((_g106523106548_
                (lambda (_g106524106545_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106524106545_))))
               (_g106522106617_
                (lambda (_g106524106551_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106524106551_))
                      (let ((_e106531106553_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106524106551_))))
                        (let ((_hd106530106556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106531106553_)))
                              (_tl106529106558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106531106553_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106529106558_))
                              (let ((_e106534106561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106529106558_))))
                                (let ((_hd106533106564_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106534106561_)))
                                      (_tl106532106566_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106534106561_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106532106566_))
                                      (let ((_e106537106569_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106532106566_))))
                                        (let ((_hd106536106572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106537106569_)))
                                              (_tl106535106574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106537106569_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106535106574_))
                                              (let ((_e106540106577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106535106574_))))
                                                (let ((_hd106539106580_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106540106577_)))
                                                      (_tl106538106582_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106540106577_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106538106582_))
                                                      (let ((_e106543106585_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106538106582_))))
                (let ((_hd106542106588_
                       (let () (declare (not safe)) (##car _e106543106585_)))
                      (_tl106541106590_
                       (let () (declare (not safe)) (##cdr _e106543106585_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106541106590_))
                      ((lambda (_L106593_ _L106594_ _L106595_ _L106596_)
                         (let ((__tmp114688
                                (let ((__tmp114696
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106520_
                                          _L106594_)))
                                      (__tmp114689
                                       (let ((__tmp114695
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106520_
                                                 _L106593_)))
                                             (__tmp114690
                                              (let ((__tmp114694
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106520_
                                                        _L106595_)))
                                                    (__tmp114691
                                                     (let ((__tmp114693
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106520_
                                                               _L106596_)))
                                                           (__tmp114692
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114693 __tmp114692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114694
                                                      __tmp114691))))
                                         (declare (not safe))
                                         (cons __tmp114695 __tmp114690))))
                                  (declare (not safe))
                                  (cons __tmp114696 __tmp114689))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp114688)))
                       _hd106542106588_
                       _hd106539106580_
                       _hd106536106572_
                       _hd106533106564_)
                      (let ()
                        (declare (not safe))
                        (_g106523106548_ _g106524106551_)))))
              (let ()
                (declare (not safe))
                (_g106523106548_ _g106524106551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106523106548_
                                                 _g106524106551_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106523106548_ _g106524106551_)))))
                              (let ()
                                (declare (not safe))
                                (_g106523106548_ _g106524106551_)))))
                      (let ()
                        (declare (not safe))
                        (_g106523106548_ _g106524106551_))))))
          (declare (not safe))
          (_g106522106617_ _stx106521_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self106436_ _stx106437_)
        (let* ((_g106439106460_
                (lambda (_g106440106457_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106440106457_))))
               (_g106438106517_
                (lambda (_g106440106463_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106440106463_))
                      (let ((_e106446106465_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106440106463_))))
                        (let ((_hd106445106468_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106446106465_)))
                              (_tl106444106470_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106446106465_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106444106470_))
                              (let ((_e106449106473_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106444106470_))))
                                (let ((_hd106448106476_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106449106473_)))
                                      (_tl106447106478_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106449106473_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106447106478_))
                                      (let ((_e106452106481_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106447106478_))))
                                        (let ((_hd106451106484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106452106481_)))
                                              (_tl106450106486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106452106481_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106450106486_))
                                              (let ((_e106455106489_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106450106486_))))
                                                (let ((_hd106454106492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106455106489_)))
                                                      (_tl106453106494_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106455106489_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106453106494_))
                                                      ((lambda (_L106497_
                                                                _L106498_
                                                                _L106499_)
                                                         (let ((__tmp114697
                                                                (let ((__tmp114703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106436_ _L106497_)))
                              (__tmp114698
                               (let ((__tmp114702
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106436_
                                         _L106498_)))
                                     (__tmp114699
                                      (let ((__tmp114701
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106436_
                                                _L106499_)))
                                            (__tmp114700
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114701 __tmp114700))))
                                 (declare (not safe))
                                 (cons __tmp114702 __tmp114699))))
                          (declare (not safe))
                          (cons __tmp114703 __tmp114698))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp114697)))
               _hd106454106492_
               _hd106451106484_
               _hd106448106476_)
              (let ()
                (declare (not safe))
                (_g106439106460_ _g106440106463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106439106460_
                                                 _g106440106463_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106439106460_ _g106440106463_)))))
                              (let ()
                                (declare (not safe))
                                (_g106439106460_ _g106440106463_)))))
                      (let ()
                        (declare (not safe))
                        (_g106439106460_ _g106440106463_))))))
          (declare (not safe))
          (_g106438106517_ _stx106437_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self106336_ _stx106337_)
        (let* ((_g106339106364_
                (lambda (_g106340106361_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106340106361_))))
               (_g106338106433_
                (lambda (_g106340106367_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106340106367_))
                      (let ((_e106347106369_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106340106367_))))
                        (let ((_hd106346106372_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106347106369_)))
                              (_tl106345106374_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106347106369_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106345106374_))
                              (let ((_e106350106377_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106345106374_))))
                                (let ((_hd106349106380_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106350106377_)))
                                      (_tl106348106382_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106350106377_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106348106382_))
                                      (let ((_e106353106385_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106348106382_))))
                                        (let ((_hd106352106388_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106353106385_)))
                                              (_tl106351106390_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106353106385_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106351106390_))
                                              (let ((_e106356106393_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106351106390_))))
                                                (let ((_hd106355106396_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106356106393_)))
                                                      (_tl106354106398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106356106393_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106354106398_))
                                                      (let ((_e106359106401_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106354106398_))))
                (let ((_hd106358106404_
                       (let () (declare (not safe)) (##car _e106359106401_)))
                      (_tl106357106406_
                       (let () (declare (not safe)) (##cdr _e106359106401_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106357106406_))
                      ((lambda (_L106409_ _L106410_ _L106411_ _L106412_)
                         (let ((__tmp114704
                                (let ((__tmp114712
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106336_
                                          _L106410_)))
                                      (__tmp114705
                                       (let ((__tmp114711
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106336_
                                                 _L106409_)))
                                             (__tmp114706
                                              (let ((__tmp114710
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106336_
                                                        _L106411_)))
                                                    (__tmp114707
                                                     (let ((__tmp114709
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106336_
                                                               _L106412_)))
                                                           (__tmp114708
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114709 __tmp114708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114710
                                                      __tmp114707))))
                                         (declare (not safe))
                                         (cons __tmp114711 __tmp114706))))
                                  (declare (not safe))
                                  (cons __tmp114712 __tmp114705))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp114704)))
                       _hd106358106404_
                       _hd106355106396_
                       _hd106352106388_
                       _hd106349106380_)
                      (let ()
                        (declare (not safe))
                        (_g106339106364_ _g106340106367_)))))
              (let ()
                (declare (not safe))
                (_g106339106364_ _g106340106367_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106339106364_
                                                 _g106340106367_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106339106364_ _g106340106367_)))))
                              (let ()
                                (declare (not safe))
                                (_g106339106364_ _g106340106367_)))))
                      (let ()
                        (declare (not safe))
                        (_g106339106364_ _g106340106367_))))))
          (declare (not safe))
          (_g106338106433_ _stx106337_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self106131_ _stx106132_)
        (let* ((_g106134106155_
                (lambda (_g106135106152_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106135106152_))))
               (_g106133106333_
                (lambda (_g106135106158_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106135106158_))
                      (let ((_e106141106160_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106135106158_))))
                        (let ((_hd106140106163_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106141106160_)))
                              (_tl106139106165_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106141106160_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106139106165_))
                              (let ((_e106144106168_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106139106165_))))
                                (let ((_hd106143106171_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106144106168_)))
                                      (_tl106142106173_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106144106168_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106142106173_))
                                      (let ((_e106147106176_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106142106173_))))
                                        (let ((_hd106146106179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106147106176_)))
                                              (_tl106145106181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106147106176_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106145106181_))
                                              (let ((_e106150106184_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106145106181_))))
                                                (let ((_hd106149106187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106150106184_)))
                                                      (_tl106148106189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106150106184_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106148106189_))
                                                      ((lambda (_L106192_
                                                                _L106193_
                                                                _L106194_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp114731
                            (let ((__tmp114737
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self106131_
                                      _L106192_)))
                                  (__tmp114732
                                   (let ((__tmp114736
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self106131_
                                             _L106193_)))
                                         (__tmp114733
                                          (let ((__tmp114735
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self106131_
                                                    _L106194_)))
                                                (__tmp114734
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp114735 __tmp114734))))
                                     (declare (not safe))
                                     (cons __tmp114736 __tmp114733))))
                              (declare (not safe))
                              (cons __tmp114737 __tmp114732))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114731))
                     (let _lp106212_ ((_rest106215_
                                       (let ((__tmp114729
                                              (let ((__tmp114730
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L106192_ '()))))
                                                (declare (not safe))
                                                (cons _L106193_ __tmp114730))))
                                         (declare (not safe))
                                         (cons _L106194_ __tmp114729)))
                                      (_bind106217_ '())
                                      (_args106218_ '()))
                       (let* ((_rest106219106227_ _rest106215_)
                              (_else106221106235_
                               (lambda ()
                                 (let ((__tmp114713
                                        (let ((__tmp114714
                                               (let ((__tmp114715
                                                      (let ((__tmp114716
                                                             (let ((__tmp114717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114718
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp114718 _args106218_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114717))))
                (declare (not safe))
                (cons __tmp114716 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114715))))
                                          (declare (not safe))
                                          (cons _bind106217_ __tmp114714))))
                                   (declare (not safe))
                                   (cons 'let __tmp114713))))
                              (_K106223106321_
                               (lambda (_rest106238_ _e106239_)
                                 (let* ((___stx113947113948_ _e106239_)
                                        (_g106244106262_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113947113948_)))))
                                   (let ((___kont113949113950_
                                          (lambda ()
                                            (let ((__tmp114719
                                                   (let ((__tmp114720
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106239_))))
                                                     (declare (not safe))
                                                     (cons __tmp114720
                                                           _args106218_))))
                                              (declare (not safe))
                                              (_lp106212_
                                               _rest106238_
                                               _bind106217_
                                               __tmp114719))))
                                         (___kont113951113952_
                                          (lambda ()
                                            (let ((__tmp114721
                                                   (let ((__tmp114722
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106239_))))
                                                     (declare (not safe))
                                                     (cons __tmp114722
                                                           _args106218_))))
                                              (declare (not safe))
                                              (_lp106212_
                                               _rest106238_
                                               _bind106217_
                                               __tmp114721))))
                                         (___kont113953113954_
                                          (lambda ()
                                            (let ((_tmp106269_
                                                   (let ((__tmp114723
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp114723))))
                                              (let ((__tmp114725
                                                     (let ((__tmp114726
                                                            (let ((__tmp114727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114728
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e106239_))))
                             (declare (not safe))
                             (cons __tmp114728 '()))))
                      (declare (not safe))
                      (cons _tmp106269_ __tmp114727))))
               (declare (not safe))
               (cons __tmp114726 _bind106217_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114724
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp106269_
                                                             _args106218_))))
                                                (declare (not safe))
                                                (_lp106212_
                                                 _rest106238_
                                                 __tmp114725
                                                 __tmp114724))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113947113948_))
                                         (let ((_e106248106300_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113947113948_))))
                                           (let ((_tl106246106305_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106248106300_)))
                                                 (_hd106247106303_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106248106300_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd106247106303_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd106247106303_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl106246106305_))
                                                         (let ((_e106251106308_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl106246106305_))))
                   (let ((_tl106249106313_
                          (let ()
                            (declare (not safe))
                            (##cdr _e106251106308_)))
                         (_hd106250106311_
                          (let ()
                            (declare (not safe))
                            (##car _e106251106308_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106249106313_))
                         (___kont113949113950_)
                         (___kont113953113954_))))
                 (___kont113953113954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd106247106303_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl106246106305_))
                     (let ((_e106257106285_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106246106305_))))
                       (let ((_tl106255106290_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106257106285_)))
                             (_hd106256106288_
                              (let ()
                                (declare (not safe))
                                (##car _e106257106285_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106255106290_))
                             (___kont113951113952_)
                             (___kont113953113954_))))
                     (___kont113953113954_))
                 (___kont113953113954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113953113954_))))
                                         (___kont113953113954_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest106219106227_))
                             (let ((_hd106224106324_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest106219106227_)))
                                   (_tl106225106326_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest106219106227_))))
                               (let* ((_e106329_ _hd106224106324_)
                                      (_rest106331_ _tl106225106326_))
                                 (declare (not safe))
                                 (_K106223106321_ _rest106331_ _e106329_)))
                             (let ()
                               (declare (not safe))
                               (_else106221106235_)))))))
               _hd106149106187_
               _hd106146106179_
               _hd106143106171_)
              (let ()
                (declare (not safe))
                (_g106134106155_ _g106135106158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106134106155_
                                                 _g106135106158_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106134106155_ _g106135106158_)))))
                              (let ()
                                (declare (not safe))
                                (_g106134106155_ _g106135106158_)))))
                      (let ()
                        (declare (not safe))
                        (_g106134106155_ _g106135106158_))))))
          (declare (not safe))
          (_g106133106333_ _stx106132_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self105910_ _stx105911_)
        (let* ((_g105913105938_
                (lambda (_g105914105935_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105914105935_))))
               (_g105912106128_
                (lambda (_g105914105941_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105914105941_))
                      (let ((_e105921105943_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105914105941_))))
                        (let ((_hd105920105946_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105921105943_)))
                              (_tl105919105948_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105921105943_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105919105948_))
                              (let ((_e105924105951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105919105948_))))
                                (let ((_hd105923105954_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105924105951_)))
                                      (_tl105922105956_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105924105951_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105922105956_))
                                      (let ((_e105927105959_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105922105956_))))
                                        (let ((_hd105926105962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105927105959_)))
                                              (_tl105925105964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105927105959_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105925105964_))
                                              (let ((_e105930105967_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105925105964_))))
                                                (let ((_hd105929105970_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105930105967_)))
                                                      (_tl105928105972_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105930105967_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl105928105972_))
                                                      (let ((_e105933105975_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl105928105972_))))
                (let ((_hd105932105978_
                       (let () (declare (not safe)) (##car _e105933105975_)))
                      (_tl105931105980_
                       (let () (declare (not safe)) (##cdr _e105933105975_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105931105980_))
                      ((lambda (_L105983_ _L105984_ _L105985_ _L105986_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp114757
                                    (let ((__tmp114765
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self105910_
                                              _L105984_)))
                                          (__tmp114758
                                           (let ((__tmp114764
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105910_
                                                     _L105983_)))
                                                 (__tmp114759
                                                  (let ((__tmp114763
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self105910_
                                                            _L105985_)))
                                                        (__tmp114760
                                                         (let ((__tmp114762
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self105910_ _L105986_)))
                       (__tmp114761
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp114762 __tmp114761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114763
                                                          __tmp114760))))
                                             (declare (not safe))
                                             (cons __tmp114764 __tmp114759))))
                                      (declare (not safe))
                                      (cons __tmp114765 __tmp114758))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp114757))
                             (let _lp106007_ ((_rest106010_
                                               (let ((__tmp114754
                                                      (let ((__tmp114755
                                                             (let ((__tmp114756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L105984_ '()))))
                       (declare (not safe))
                       (cons _L105983_ __tmp114756))))
                (declare (not safe))
                (cons _L105985_ __tmp114755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L105986_ __tmp114754)))
                                              (_bind106012_ '())
                                              (_args106013_ '()))
                               (let* ((_rest106014106022_ _rest106010_)
                                      (_else106016106030_
                                       (lambda ()
                                         (let ((__tmp114738
                                                (let ((__tmp114739
                                                       (let ((__tmp114740
                                                              (let ((__tmp114741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114742
                                    (let ((__tmp114743
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp114743 _args106013_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp114742))))
                        (declare (not safe))
                        (cons __tmp114741 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp114740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind106012_
                                                        __tmp114739))))
                                           (declare (not safe))
                                           (cons 'let __tmp114738))))
                                      (_K106018106116_
                                       (lambda (_rest106033_ _e106034_)
                                         (let* ((___stx113993113994_ _e106034_)
                                                (_g106039106057_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx113993113994_)))))
                                           (let ((___kont113995113996_
                                                  (lambda ()
                                                    (let ((__tmp114744
                                                           (let ((__tmp114745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106034_))))
                     (declare (not safe))
                     (cons __tmp114745 _args106013_))))
              (declare (not safe))
              (_lp106007_ _rest106033_ _bind106012_ __tmp114744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113997113998_
                                                  (lambda ()
                                                    (let ((__tmp114746
                                                           (let ((__tmp114747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106034_))))
                     (declare (not safe))
                     (cons __tmp114747 _args106013_))))
              (declare (not safe))
              (_lp106007_ _rest106033_ _bind106012_ __tmp114746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113999114000_
                                                  (lambda ()
                                                    (let ((_tmp106064_
                                                           (let ((__tmp114748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp114748))))
              (let ((__tmp114750
                     (let ((__tmp114751
                            (let ((__tmp114752
                                   (let ((__tmp114753
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e106034_))))
                                     (declare (not safe))
                                     (cons __tmp114753 '()))))
                              (declare (not safe))
                              (cons _tmp106064_ __tmp114752))))
                       (declare (not safe))
                       (cons __tmp114751 _bind106012_)))
                    (__tmp114749
                     (let ()
                       (declare (not safe))
                       (cons _tmp106064_ _args106013_))))
                (declare (not safe))
                (_lp106007_ _rest106033_ __tmp114750 __tmp114749))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx113993113994_))
                                                 (let ((_e106043106095_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx113993113994_))))
                                                   (let ((_tl106041106100_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106043106095_)))
                                                         (_hd106042106098_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106043106095_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd106042106098_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd106042106098_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl106041106100_))
                         (let ((_e106046106103_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl106041106100_))))
                           (let ((_tl106044106108_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e106046106103_)))
                                 (_hd106045106106_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e106046106103_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl106044106108_))
                                 (___kont113995113996_)
                                 (___kont113999114000_))))
                         (___kont113999114000_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd106042106098_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl106041106100_))
                             (let ((_e106052106080_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl106041106100_))))
                               (let ((_tl106050106085_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e106052106080_)))
                                     (_hd106051106083_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e106052106080_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl106050106085_))
                                     (___kont113997113998_)
                                     (___kont113999114000_))))
                             (___kont113999114000_))
                         (___kont113999114000_)))
                 (___kont113999114000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113999114000_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest106014106022_))
                                     (let ((_hd106019106119_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest106014106022_)))
                                           (_tl106020106121_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest106014106022_))))
                                       (let* ((_e106124_ _hd106019106119_)
                                              (_rest106126_ _tl106020106121_))
                                         (declare (not safe))
                                         (_K106018106116_
                                          _rest106126_
                                          _e106124_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else106016106030_)))))))
                       _hd105932105978_
                       _hd105929105970_
                       _hd105926105962_
                       _hd105923105954_)
                      (let ()
                        (declare (not safe))
                        (_g105913105938_ _g105914105941_)))))
              (let ()
                (declare (not safe))
                (_g105913105938_ _g105914105941_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105913105938_
                                                 _g105914105941_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105913105938_ _g105914105941_)))))
                              (let ()
                                (declare (not safe))
                                (_g105913105938_ _g105914105941_)))))
                      (let ()
                        (declare (not safe))
                        (_g105913105938_ _g105914105941_))))))
          (declare (not safe))
          (_g105912106128_ _stx105911_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self105763_ _stx105764_)
        (letrec ((_import-set-template105766_
                  (lambda (_in105862_ _phi105863_)
                    (let ((_iphi105865_
                           (fx+ _phi105863_
                                (##direct-structure-ref
                                 _in105862_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports105866_
                           (##structure-ref
                            (##direct-structure-ref
                             _in105862_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp105868_ ((_rest105870_ _imports105866_)
                                       (_r105871_ '()))
                        (let* ((_rest105872105880_ _rest105870_)
                               (_else105874105888_ (lambda () _r105871_))
                               (_K105876105898_
                                (lambda (_rest105891_ _in105892_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in105892_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi105865_))
                                          (let ((__tmp114772
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in105892_
                                                         _r105871_))))
                                            (declare (not safe))
                                            (_lp105868_
                                             _rest105891_
                                             __tmp114772))
                                          (let ()
                                            (declare (not safe))
                                            (_lp105868_
                                             _rest105891_
                                             _r105871_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in105892_
                                             'gx#module-import::t))
                                          (let ((_iphi105894_
                                                 (fx+ _phi105863_
                                                      (##direct-structure-ref
                                                       _in105892_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi105894_))
                                                (let ((__tmp114770
                                                       (let ((__tmp114771
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in105892_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp114771
                                                               _r105871_))))
                                                  (declare (not safe))
                                                  (_lp105868_
                                                   _rest105891_
                                                   __tmp114770))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp105868_
                                                   _rest105891_
                                                   _r105871_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in105892_
                                                 'gx#import-set::t))
                                              (let ((_xphi105896_
                                                     (fx+ _iphi105865_
                                                          (##direct-structure-ref
                                                           _in105892_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi105896_))
                                                    (let ((__tmp114768
                                                           (let ((__tmp114769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105892_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp114769 _r105871_))))
              (declare (not safe))
              (_lp105868_ _rest105891_ __tmp114768))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi105896_)
                                                        (let ((__tmp114766
                                                               (let ((__tmp114767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template105766_
                                 _in105892_
                                 _iphi105865_))))
                         (declare (not safe))
                         (foldl1 cons _r105871_ __tmp114767))))
                  (declare (not safe))
                  (_lp105868_ _rest105891_ __tmp114766))
                (let ()
                  (declare (not safe))
                  (_lp105868_ _rest105891_ _r105871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp105868_
                                                 _rest105891_
                                                 _r105871_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105872105880_))
                              (let ((_hd105877105901_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105872105880_)))
                                    (_tl105878105903_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105872105880_))))
                                (let* ((_in105906_ _hd105877105901_)
                                       (_rest105908_ _tl105878105903_))
                                  (declare (not safe))
                                  (_K105876105898_ _rest105908_ _in105906_)))
                              (let ()
                                (declare (not safe))
                                (_else105874105888_)))))))))
          (let* ((_g105768105778_
                  (lambda (_g105769105775_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105769105775_))))
                 (_g105767105859_
                  (lambda (_g105769105781_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105769105781_))
                        (let ((_e105773105783_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105769105781_))))
                          (let ((_hd105772105786_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105773105783_)))
                                (_tl105771105788_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105773105783_))))
                            ((lambda (_L105791_)
                               (let ((_ht105802_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp105804_ ((_rest105806_ _L105791_)
                                                  (_loads105807_ '()))
                                   (letrec ((_K105809_
                                             (lambda (_ctx105852_ _rest105853_)
                                               (let ((_id105855_
                                                      (##structure-ref
                                                       _ctx105852_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht105802_
                                                        _id105855_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp105804_
                                                        _rest105853_
                                                        _loads105807_))
                                                     (let ((_rt105857_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _id105855_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _ht105802_
                                                          _id105855_
                                                          _rt105857_))
                                                       (let ((__tmp114773
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _rt105857_ _loads105807_))))
                 (declare (not safe))
                 (_lp105804_ _rest105853_ __tmp114773))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest105810105818_ _rest105806_)
                                            (_else105812105830_
                                             (lambda ()
                                               (let ((__tmp114774
                                                      (map (lambda (_g105825105827_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g105825105827_))
                   (reverse _loads105807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp114774))))
                                            (_K105814105840_
                                             (lambda (_rest105833_ _in105834_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in105834_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K105809_
                                                      _in105834_
                                                      _rest105833_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in105834_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp114778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105834_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp114778))
                   (let ((__tmp114777
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in105834_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K105809_ __tmp114777 _rest105833_))
                   (let ()
                     (declare (not safe))
                     (_lp105804_ _rest105833_ _loads105807_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in105834_
                      'gx#import-set::t))
                   (let ((_phi105836_
                          (##direct-structure-ref
                           _in105834_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi105836_))
                         (let ((__tmp114776
                                (##direct-structure-ref
                                 _in105834_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K105809_ __tmp114776 _rest105833_))
                         (if (fxpositive? _phi105836_)
                             (let* ((_deps105838_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template105766_
                                        _in105834_
                                        '0)))
                                    (__tmp114775
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest105833_
                                               _deps105838_))))
                               (declare (not safe))
                               (_lp105804_ __tmp114775 _loads105807_))
                             (let ()
                               (declare (not safe))
                               (_lp105804_ _rest105833_ _loads105807_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx105764_
                      _in105834_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest105810105818_))
                                           (let ((_hd105815105843_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest105810105818_)))
                                                 (_tl105816105845_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest105810105818_))))
                                             (let* ((_in105848_
                                                     _hd105815105843_)
                                                    (_rest105850_
                                                     _tl105816105845_))
                                               (declare (not safe))
                                               (_K105814105840_
                                                _rest105850_
                                                _in105848_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else105812105830_))))))))
                             _tl105771105788_)))
                        (let ()
                          (declare (not safe))
                          (_g105768105778_ _g105769105781_))))))
            (declare (not safe))
            (_g105767105859_ _stx105764_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self105578_ _stx105579_)
        (letrec ((_add-lift!105581_
                  (lambda (_expr105761_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp114779 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr105761_ __tmp114779)))))
                 (_generate-syntax-quote105582_
                  (lambda (_id105758_ _marks105759_)
                    (let ((__tmp114780
                           (let ((__tmp114781
                                  (let ((__tmp114785
                                         (let ((__tmp114786
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id105758_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp114786)))
                                        (__tmp114782
                                         (let ((__tmp114783
                                                (let ((__tmp114784
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks105759_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp114784))))
                                           (declare (not safe))
                                           (cons '#f __tmp114783))))
                                    (declare (not safe))
                                    (cons __tmp114785 __tmp114782))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp114781))))
                      (declare (not safe))
                      (cons '##structure __tmp114780))))
                 (_generate-simple105583_
                  (lambda (_stxq105753_)
                    (let ((_gid105755_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid105756_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq105753_))))
                      (let ((__tmp114787
                             (let ((__tmp114788
                                    (let ((__tmp114789
                                           (let ((__tmp114790
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105582_
                                                     _qid105756_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp114790 '()))))
                                      (declare (not safe))
                                      (cons _gid105755_ __tmp114789))))
                               (declare (not safe))
                               (cons 'define __tmp114788))))
                        (declare (not safe))
                        (_add-lift!105581_ __tmp114787))
                      (let ((__tmp114791 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114791 _stxq105753_ _gid105755_))
                      _gid105755_)))
                 (_generate-serialized105584_
                  (lambda (_stxq105743_ _marks105744_)
                    (let* ((_mark-refs105746_
                            (map _generate-mark105585_ _marks105744_))
                           (_gid105748_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid105750_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq105743_))))
                      (let ((__tmp114792
                             (let ((__tmp114793
                                    (let ((__tmp114794
                                           (let ((__tmp114795
                                                  (let ((__tmp114796
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs105746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105582_
                                                     _qid105750_
                                                     __tmp114796))))
                                             (declare (not safe))
                                             (cons __tmp114795 '()))))
                                      (declare (not safe))
                                      (cons _gid105748_ __tmp114794))))
                               (declare (not safe))
                               (cons 'define __tmp114793))))
                        (declare (not safe))
                        (_add-lift!105581_ __tmp114792))
                      (let ((__tmp114797 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114797 _stxq105743_ _gid105748_))
                      _gid105748_)))
                 (_generate-mark105585_
                  (lambda (_mark105729_)
                    (let ((_$e105731_
                           (let ((__tmp114798 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp114798 _mark105729_))))
                      (if _$e105731_
                          (values _$e105731_)
                          (let* ((_gid105734_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr105736_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark105586_ _mark105729_)))
                                 (_ctx105738_
                                  (let ((__tmp114799
                                         (##structure-ref
                                          _mark105729_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp114799)))
                                 (_ctx-ref105740_
                                  (if (let ((__tmp114804
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx105738_ __tmp114804))
                                      '(gx#current-expander-context)
                                      (let ((__tmp114800
                                             (let ((__tmp114801
                                                    (let ((__tmp114802
                                                           (let ((__tmp114803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref105587_ _ctx105738_))))
                     (declare (not safe))
                     (cons __tmp114803 '()))))
              (declare (not safe))
              (cons 'quote __tmp114802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114801 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp114800)))))
                            (let ((__tmp114805 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp114805 _mark105729_ _gid105734_))
                            (let ((__tmp114806
                                   (let ((__tmp114807
                                          (let ((__tmp114808
                                                 (let ((__tmp114809
                                                        (let ((__tmp114810
                                                               (let ((__tmp114812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114813
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr105736_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp114813)))
                             (__tmp114811
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref105740_ '()))))
                         (declare (not safe))
                         (cons __tmp114812 __tmp114811))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp114810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114809 '()))))
                                            (declare (not safe))
                                            (cons _gid105734_ __tmp114808))))
                                     (declare (not safe))
                                     (cons 'define __tmp114807))))
                              (declare (not safe))
                              (_add-lift!105581_ __tmp114806))
                            _gid105734_)))))
                 (_serialize-mark105586_
                  (lambda (_mark105676_)
                    (letrec ((_quote-e105678_
                              (lambda (_sym105727_)
                                (if (interned-symbol? _sym105727_)
                                    _sym105727_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym105727_))))))
                      (let* ((_mark105679105688_ _mark105676_)
                             (_E105681105692_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark105679105688_))))
                             (_K105682105704_
                              (lambda (_trace105695_
                                       _phi105696_
                                       _ctx105697_
                                       _subst105698_)
                                (let* ((_subs105700_
                                        (if _subst105698_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst105698_))
                                            '()))
                                       (__tmp114814
                                        (map (lambda (_pair105702_)
                                               (let ((__tmp114817
                                                      (let ((__tmp114818
                                                             (car _pair105702_)))
                                                        (declare (not safe))
                                                        (_quote-e105678_
                                                         __tmp114818)))
                                                     (__tmp114815
                                                      (let ((__tmp114816
                                                             (cdr _pair105702_)))
                                                        (declare (not safe))
                                                        (_quote-e105678_
                                                         __tmp114816))))
                                                 (declare (not safe))
                                                 (cons __tmp114817
                                                       __tmp114815)))
                                             _subs105700_)))
                                  (declare (not safe))
                                  (cons _phi105696_ __tmp114814)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark105679105688_
                               'gx#expander-mark::t))
                            (let* ((_e105683105707_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105679105688_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst105710_ _e105683105707_)
                                   (_e105684105712_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105679105688_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx105715_ _e105684105712_)
                                   (_e105685105717_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105679105688_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi105720_ _e105685105717_)
                                   (_e105686105722_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105679105688_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace105725_ _e105686105722_))
                              (declare (not safe))
                              (_K105682105704_
                               _trace105725_
                               _phi105720_
                               _ctx105715_
                               _subst105710_))
                            (let ()
                              (declare (not safe))
                              (_E105681105692_)))))))
                 (_context-ref105587_
                  (lambda (_ctx105663_)
                    (if (let ((__tmp114826
                               (##structure-ref
                                _ctx105663_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp114826
                           'gx#module-context::t))
                        (let ((_ctx-ref105665_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested105589_ _ctx105663_)))
                              (_ctx-origin105666_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin105588_ _ctx105663_)))
                              (_origin105667_
                               (let ((__tmp114820
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin105588_ __tmp114820))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin105667_ _ctx-origin105666_))
                              (let ((_ref105669_
                                     (let ((__tmp114821
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested105589_
                                        __tmp114821))))
                                (let _lp105671_ ((_ref105673_
                                                  (cdr _ref105669_))
                                                 (_ctx-ref105674_
                                                  (cdr _ctx-ref105665_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref105673_))
                                           (let ((__tmp114825
                                                  (car _ref105673_))
                                                 (__tmp114824
                                                  (car _ctx-ref105674_)))
                                             (declare (not safe))
                                             (eq? __tmp114825 __tmp114824)))
                                      (let ((__tmp114823 (cdr _ref105673_))
                                            (__tmp114822
                                             (cdr _ctx-ref105674_)))
                                        (declare (not safe))
                                        (_lp105671_ __tmp114823 __tmp114822))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref105674_)))))
                              _ctx-ref105665_))
                        (let ((__tmp114819
                               (##structure-ref
                                _ctx105663_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp114819)))))
                 (_context-ref-origin105588_
                  (lambda (_ctx105655_)
                    (let _lp105657_ ((_ctx105659_ _ctx105655_))
                      (let ((_super105661_
                             (##structure-ref
                              _ctx105659_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105661_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp105657_ _super105661_))
                            _ctx105659_)))))
                 (_context-ref-nested105589_
                  (lambda (_ctx105646_)
                    (let _lp105648_ ((_ctx105650_ _ctx105646_) (_r105651_ '()))
                      (let ((_super105653_
                             (##structure-ref
                              _ctx105650_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105653_
                               'gx#module-context::t))
                            (let ((__tmp114829
                                   (let ((__tmp114830
                                          (car (##structure-ref
                                                _ctx105650_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp114830 _r105651_))))
                              (declare (not safe))
                              (_lp105648_ _super105653_ __tmp114829))
                            (let ((__tmp114827
                                   (let ((__tmp114828
                                          (##structure-ref
                                           _ctx105650_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp114828))))
                              (declare (not safe))
                              (cons __tmp114827 _r105651_))))))))
          (let* ((_g105591105604_
                  (lambda (_g105592105601_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105592105601_))))
                 (_g105590105643_
                  (lambda (_g105592105607_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105592105607_))
                        (let ((_e105596105609_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105592105607_))))
                          (let ((_hd105595105612_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105596105609_)))
                                (_tl105594105614_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105596105609_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105594105614_))
                                (let ((_e105599105617_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105594105614_))))
                                  (let ((_hd105598105620_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105599105617_)))
                                        (_tl105597105622_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105599105617_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105597105622_))
                                        ((lambda (_L105625_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L105625_))
                                               (let ((_$e105638_
                                                      (let ((__tmp114831
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp114831
                                                         _L105625_))))
                                                 (if _$e105638_
                                                     (values _$e105638_)
                                                     (let ((_marks105641_
                                                            (##direct-structure-ref
                                                             _L105625_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks105641_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple105583_
                                                              _L105625_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized105584_
                                                              _L105625_
                                                              _marks105641_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L105625_))))
                                         _hd105598105620_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105591105604_ _g105592105607_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105591105604_ _g105592105607_)))))
                        (let ()
                          (declare (not safe))
                          (_g105591105604_ _g105592105607_))))))
            (declare (not safe))
            (_g105590105643_ _stx105579_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self105510_ _stx105511_)
        (let* ((_g105513105530_
                (lambda (_g105514105527_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105514105527_))))
               (_g105512105575_
                (lambda (_g105514105533_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105514105533_))
                      (let ((_e105519105535_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105514105533_))))
                        (let ((_hd105518105538_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105519105535_)))
                              (_tl105517105540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105519105535_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105517105540_))
                              (let ((_e105522105543_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105517105540_))))
                                (let ((_hd105521105546_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105522105543_)))
                                      (_tl105520105548_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105522105543_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105520105548_))
                                      (let ((_e105525105551_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105520105548_))))
                                        (let ((_hd105524105554_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105525105551_)))
                                              (_tl105523105556_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105525105551_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105523105556_))
                                              ((lambda (_L105559_ _L105560_)
                                                 (let ((__tmp114832
                                                        (let ((__tmp114835
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L105560_)))
                      (__tmp114833
                       (let ((__tmp114834
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105510_ _L105559_))))
                         (declare (not safe))
                         (cons __tmp114834 '()))))
                  (declare (not safe))
                  (cons __tmp114835 __tmp114833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp114832)))
                                               _hd105524105554_
                                               _hd105521105546_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105513105530_
                                                 _g105514105533_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105513105530_ _g105514105533_)))))
                              (let ()
                                (declare (not safe))
                                (_g105513105530_ _g105514105533_)))))
                      (let ()
                        (declare (not safe))
                        (_g105513105530_ _g105514105533_))))))
          (declare (not safe))
          (_g105512105575_ _stx105511_))))
    (define gxc#generate-meta-begin%
      (lambda (_self105459_ _stx105460_)
        (let* ((_g105462105472_
                (lambda (_g105463105469_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105463105469_))))
               (_g105461105507_
                (lambda (_g105463105475_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105463105475_))
                      (let ((_e105467105477_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105463105475_))))
                        (let ((_hd105466105480_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105467105477_)))
                              (_tl105465105482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105467105477_))))
                          ((lambda (_L105485_)
                             (let* ((_c-body105499_
                                     (map (lambda (_g105494105496_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105459_
                                               _g105494105496_)))
                                          _L105485_))
                                    (_c-body105504_
                                     (filter (lambda (_$obj105501_)
                                               (let ((__tmp114836
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj105501_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp114836)))
                                             _c-body105499_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body105504_))))
                           _tl105465105482_)))
                      (let ()
                        (declare (not safe))
                        (_g105462105472_ _g105463105475_))))))
          (declare (not safe))
          (_g105461105507_ _stx105460_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self105367_ _stx105368_)
        (let* ((_g105370105380_
                (lambda (_g105371105377_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105371105377_))))
               (_g105369105456_
                (lambda (_g105371105383_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105371105383_))
                      (let ((_e105375105385_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105371105383_))))
                        (let ((_hd105374105388_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105375105385_)))
                              (_tl105373105390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105375105385_))))
                          ((lambda (_L105393_)
                             (let* ((_phi105403_
                                     (let ((__tmp114837
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp114837 '1)))
                                    (_block105405_
                                     (let ((__tmp114838
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self105367_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp114838
                                        _phi105403_)))
                                    (_compiled105408_
                                     (let ((__tmp114839
                                            (lambda ()
                                              (let ((__tmp114841
                                                     (let ((__tmp114842
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp114842
                                                             _L105393_)))
                                                    (__tmp114840
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self105367_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp114841
                                                 'state:
                                                 __tmp114840)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114839
                                        gx#current-expander-phi
                                        _phi105403_))))
                               (let* ((_g105411105421_
                                       (lambda (_g105412105418_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g105412105418_))))
                                      (_g105410105453_
                                       (lambda (_g105412105424_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g105412105424_))
                                             (let ((_e105416105426_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g105412105424_))))
                                               (let ((_hd105415105429_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105416105426_)))
                                                     (_tl105414105431_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105416105426_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105415105429_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd105415105429_))
                                                         ((lambda (_L105434_)
                                                            (let ((_c-body105451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj105448_)
                                     (let ((__tmp114843
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj105448_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp114843)))
                                   _L105434_)))
                      (if _block105405_
                          (let ((__tmp114844
                                 (let ((__tmp114845
                                        (let ((__tmp114846
                                               (let ((__tmp114850
                                                      (let ((__tmp114851
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp114851)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114847
                                                      (let ((__tmp114848
                                                             (let ((__tmp114849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block105405_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp114849))))
                (declare (not safe))
                (cons __tmp114848 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114850
                                                       __tmp114847))))
                                          (declare (not safe))
                                          (cons '%#call __tmp114846))))
                                   (declare (not safe))
                                   (cons __tmp114845 _c-body105451_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp114844))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body105451_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body105451_))))))
                  _tl105414105431_)
                 (let ()
                   (declare (not safe))
                   (_g105411105421_ _g105412105424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105411105421_
                                                        _g105412105424_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g105411105421_
                                                _g105412105424_))))))
                                 (declare (not safe))
                                 (_g105410105453_ _compiled105408_))))
                           _tl105373105390_)))
                      (let ()
                        (declare (not safe))
                        (_g105370105380_ _g105371105383_))))))
          (declare (not safe))
          (_g105369105456_ _stx105368_))))
    (define gxc#generate-meta-module%
      (lambda (_self105298_ _stx105299_)
        (let ((__tmp114852
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self105298_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114852))
        (let* ((_g105301105315_
                (lambda (_g105302105312_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105302105312_))))
               (_g105300105364_
                (lambda (_g105302105318_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105302105318_))
                      (let ((_e105307105320_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105302105318_))))
                        (let ((_hd105306105323_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105307105320_)))
                              (_tl105305105325_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105307105320_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105305105325_))
                              (let ((_e105310105328_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105305105325_))))
                                (let ((_hd105309105331_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105310105328_)))
                                      (_tl105308105333_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105310105328_))))
                                  ((lambda (_L105336_ _L105337_)
                                     (let ((_key105350_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L105337_))))
                                       (if (interned-symbol? _key105350_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx105299_
                                              _L105337_
                                              _key105350_)))
                                       (let* ((_ctx105352_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L105337_)))
                                              (_code105355_
                                               (let ((__tmp114853
                                                      (lambda ()
                                                        (let ((__tmp114854
                                                               (##structure-ref
                                                                _ctx105352_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self105298_
                                                           __tmp114854)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp114853
                                                  gx#current-expander-context
                                                  _ctx105352_)))
                                              (_rt105357_
                                               (let ((__tmp114855
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp114855
                                                  _ctx105352_)))
                                              (_loader105359_
                                               (if _rt105357_
                                                   (let ((__tmp114856
                                                          (let ((__tmp114857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114861
                                (let ((__tmp114862
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp114862)))
                               (__tmp114858
                                (let ((__tmp114859
                                       (let ((__tmp114860
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt105357_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp114860))))
                                  (declare (not safe))
                                  (cons __tmp114859 '()))))
                           (declare (not safe))
                           (cons __tmp114861 __tmp114858))))
                    (declare (not safe))
                    (cons '%#call __tmp114857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114856 '()))
                                                   '()))
                                              (_modid105361_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L105337_))))
                                         (let ((__tmp114863
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self105298_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp114863))
                                         (let ((__tmp114864
                                                (let ((__tmp114865
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code105355_
                                                               _loader105359_))))
                                                  (declare (not safe))
                                                  (cons _modid105361_
                                                        __tmp114865))))
                                           (declare (not safe))
                                           (cons '%#module __tmp114864)))))
                                   _tl105308105333_
                                   _hd105309105331_)))
                              (let ()
                                (declare (not safe))
                                (_g105301105315_ _g105302105318_)))))
                      (let ()
                        (declare (not safe))
                        (_g105301105315_ _g105302105318_))))))
          (declare (not safe))
          (_g105300105364_ _stx105299_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx105288_ _context-chain105289_)
        (let _lp105291_ ((_ctx105293_ _ctx105288_) (_path105294_ '()))
          (let ((_super105296_
                 (##structure-ref _ctx105293_ '3 gx#phi-context::t '#f)))
            (if (memq _super105296_ _context-chain105289_)
                (let ((__tmp114870
                       (let ((__tmp114871
                              (car (##structure-ref
                                    _ctx105293_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp114871 _path105294_))))
                  (declare (not safe))
                  (cons '#f __tmp114870))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super105296_
                       'gx#module-context::t))
                    (let ((__tmp114868
                           (let ((__tmp114869
                                  (car (##structure-ref
                                        _ctx105293_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp114869 _path105294_))))
                      (declare (not safe))
                      (_lp105291_ _super105296_ __tmp114868))
                    (let ((__tmp114866
                           (let ((__tmp114867
                                  (##structure-ref
                                   _ctx105293_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp114867))))
                      (declare (not safe))
                      (cons __tmp114866 _path105294_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp105283_ ((_ctx105285_ (gx#current-expander-context))
                         (_r105286_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx105285_ 'gx#module-context::t))
              (let ((__tmp114873
                     (##structure-ref _ctx105285_ '3 gx#phi-context::t '#f))
                    (__tmp114872
                     (let ()
                       (declare (not safe))
                       (cons _ctx105285_ _r105286_))))
                (declare (not safe))
                (_lp105283_ __tmp114873 __tmp114872))
              _r105286_))))
    (define gxc#generate-meta-import%
      (lambda (_self105052_ _stx105053_)
        (letrec* ((_context-chain105055_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec105056_
                   (lambda (_in105219_)
                     (let* ((_in105220105232_ _in105219_)
                            (_E105222105236_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in105220105232_))))
                            (_K105223105246_
                             (lambda (_phi105239_
                                      _name105240_
                                      _src-name105241_
                                      _src-phi105242_
                                      _src-key105243_
                                      _src-ctx105244_)
                               (let ((__tmp114874
                                      (let ((__tmp114878
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name105240_)))
                                            (__tmp114875
                                             (let ((__tmp114876
                                                    (let ((__tmp114877
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name105241_))))
                                                      (declare (not safe))
                                                      (cons __tmp114877 '()))))
                                               (declare (not safe))
                                               (cons _src-phi105242_
                                                     __tmp114876))))
                                        (declare (not safe))
                                        (cons __tmp114878 __tmp114875))))
                                 (declare (not safe))
                                 (cons _phi105239_ __tmp114874)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in105220105232_
                              'gx#module-import::t))
                           (let ((_e105224105249_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in105220105232_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e105224105249_
                                    'gx#module-export::t))
                                 (let* ((_e105227105252_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105224105249_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx105255_ _e105227105252_)
                                        (_e105228105257_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105224105249_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key105260_ _e105228105257_)
                                        (_e105229105262_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105224105249_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi105265_ _e105229105262_)
                                        (_e105230105267_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105224105249_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name105270_ _e105230105267_)
                                        (_e105225105272_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105220105232_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name105275_ _e105225105272_)
                                        (_e105226105277_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105220105232_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi105280_ _e105226105277_))
                                   (declare (not safe))
                                   (_K105223105246_
                                    _phi105280_
                                    _name105275_
                                    _src-name105270_
                                    _src-phi105265_
                                    _src-key105260_
                                    _src-ctx105255_))
                                 (let ()
                                   (declare (not safe))
                                   (_E105222105236_))))
                           (let () (declare (not safe)) (_E105222105236_))))))
                  (_make-import-path105057_
                   (lambda (_ctx105217_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105217_
                        _context-chain105055_))))
                  (_make-import-spec-in105058_
                   (lambda (_ctx105214_ _in105215_)
                     (let ((__tmp114879
                            (let ((__tmp114881
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path105057_ _ctx105214_)))
                                  (__tmp114880 (reverse _in105215_)))
                              (declare (not safe))
                              (cons __tmp114881 __tmp114880))))
                       (declare (not safe))
                       (cons 'spec: __tmp114879)))))
          (let ((__tmp114882
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self105052_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp114882))
          (let* ((_g105060105070_
                  (lambda (_g105061105067_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105061105067_))))
                 (_g105059105211_
                  (lambda (_g105061105073_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105061105073_))
                        (let ((_e105065105075_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105061105073_))))
                          (let ((_hd105064105078_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105065105075_)))
                                (_tl105063105080_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105065105075_))))
                            ((lambda (_L105083_)
                               (let _lp105094_ ((_rest105096_ _L105083_)
                                                (_current-src105097_ '#f)
                                                (_current-in105098_ '())
                                                (_r105099_ '()))
                                 (let* ((_rest105100105108_ _rest105096_)
                                        (_else105102105118_
                                         (lambda ()
                                           (let* ((_r105116_
                                                   (if _current-src105097_
                                                       (let ((__tmp114883
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in105058_
                         _current-src105097_
                         _current-in105098_))))
                 (declare (not safe))
                 (cons __tmp114883 _r105099_))
               _r105099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp114884
                                                   (reverse _r105116_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp114884))))
                                        (_K105104105199_
                                         (lambda (_rest105121_ _in105122_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in105122_
                                                  'gx#module-import::t))
                                               (let* ((_in105123105130_
                                                       _in105122_)
                                                      (_E105125105134_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in105123105130_))))
              (_K105126105139_
               (lambda (_src-ctx105137_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src105097_ _src-ctx105137_))
                     (let ((__tmp114900
                            (let ((__tmp114901
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec105056_ _in105122_))))
                              (declare (not safe))
                              (cons __tmp114901 _current-in105098_))))
                       (declare (not safe))
                       (_lp105094_
                        _rest105121_
                        _current-src105097_
                        __tmp114900
                        _r105099_))
                     (if _current-src105097_
                         (let ((__tmp114898
                                (let ((__tmp114899
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105056_
                                          _in105122_))))
                                  (declare (not safe))
                                  (cons __tmp114899 '())))
                               (__tmp114896
                                (let ((__tmp114897
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in105058_
                                          _current-src105097_
                                          _current-in105098_))))
                                  (declare (not safe))
                                  (cons __tmp114897 _r105099_))))
                           (declare (not safe))
                           (_lp105094_
                            _rest105121_
                            _src-ctx105137_
                            __tmp114898
                            __tmp114896))
                         (let ((__tmp114894
                                (let ((__tmp114895
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105056_
                                          _in105122_))))
                                  (declare (not safe))
                                  (cons __tmp114895 '()))))
                           (declare (not safe))
                           (_lp105094_
                            _rest105121_
                            _src-ctx105137_
                            __tmp114894
                            _r105099_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in105123105130_
                                                        'gx#module-import::t))
                                                     (let ((_e105127105142_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in105123105130_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e105127105142_
                                                              'gx#module-export::t))
                                                           (let* ((_e105128105145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e105127105142_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx105148_ _e105128105145_))
                     (declare (not safe))
                     (_K105126105139_ _src-ctx105148_))
                   (let () (declare (not safe)) (_E105125105134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E105125105134_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in105122_
                                                      'gx#import-set::t))
                                                   (let* ((_phi105150_
                                                           (##direct-structure-ref
                                                            _in105122_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src105152_
                                                           (##direct-structure-ref
                                                            _in105122_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in105192_
                                                           (let* ((_g105153105162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path105057_ _src105152_)))
                          (_E105156105166_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g105153105162_)))))
                     (let ((_K105158105182_
                            (lambda (_path105180_) _path105180_))
                           (_K105157105172_
                            (lambda (_path105170_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path105170_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g105153105162_))
                           (let ((_tl105160105187_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g105153105162_)))
                                 (_hd105159105185_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g105153105162_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl105160105187_))
                                 (let ((_path105190_ _hd105159105185_))
                                   (declare (not safe))
                                   (_K105158105182_ _path105190_))
                                 (let ((_path105175_ _g105153105162_))
                                   (declare (not safe))
                                   (_K105157105172_ _path105175_))))
                           (let ((_path105175_ _g105153105162_))
                             (declare (not safe))
                             (_K105157105172_ _path105175_))))))
                  (_r105194_
                   (if _current-src105097_
                       (let ((__tmp114889
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in105058_
                                 _current-src105097_
                                 _current-in105098_))))
                         (declare (not safe))
                         (cons __tmp114889 _r105099_))
                       _r105099_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp114890
                                                            (let ((__tmp114891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi105150_))
                               _src-in105192_
                               (let ((__tmp114892
                                      (let ((__tmp114893
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in105192_ '()))))
                                        (declare (not safe))
                                        (cons _phi105150_ __tmp114893))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp114892)))))
                      (declare (not safe))
                      (cons __tmp114891 _r105194_))))
               (declare (not safe))
               (_lp105094_ _rest105121_ '#f '() __tmp114890)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in105122_
                                                          'gx#module-context::t))
                                                       (let* ((_r105197_
                                                               (if _current-src105097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114885
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in105058_
                                     _current-src105097_
                                     _current-in105098_))))
                             (declare (not safe))
                             (cons __tmp114885 _r105099_))
                           _r105099_))
                      (__tmp114886
                       (let ((__tmp114887
                              (let ((__tmp114888
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path105057_ _in105122_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp114888))))
                         (declare (not safe))
                         (cons __tmp114887 _r105197_))))
                 (declare (not safe))
                 (_lp105094_ _rest105121_ '#f '() __tmp114886))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest105100105108_))
                                       (let ((_hd105105105202_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest105100105108_)))
                                             (_tl105106105204_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest105100105108_))))
                                         (let* ((_in105207_ _hd105105105202_)
                                                (_rest105209_
                                                 _tl105106105204_))
                                           (declare (not safe))
                                           (_K105104105199_
                                            _rest105209_
                                            _in105207_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else105102105118_))))))
                             _tl105063105080_)))
                        (let ()
                          (declare (not safe))
                          (_g105060105070_ _g105061105073_))))))
            (declare (not safe))
            (_g105059105211_ _stx105053_)))))
    (define gxc#generate-meta-export%
      (lambda (_self104862_ _stx104863_)
        (letrec* ((_context-chain104865_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path104866_
                   (lambda (_ctx105050_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105050_
                        _context-chain104865_)))))
          (let* ((_g104868104878_
                  (lambda (_g104869104875_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104869104875_))))
                 (_g104867105047_
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
                               (let _lp104902_ ((_rest104904_ _L104891_)
                                                (_r104905_ '()))
                                 (let* ((_rest104906104914_ _rest104904_)
                                        (_else104908104922_
                                         (lambda ()
                                           (let ((__tmp114902
                                                  (reverse _r104905_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp114902))))
                                        (_K104910105035_
                                         (lambda (_rest104925_ _out104926_)
                                           (let* ((_out104927104940_
                                                   _out104926_)
                                                  (_E104930104944_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out104927104940_)))))
                                             (let ((_K104934105014_
                                                    (lambda (_name105010_
                                                             _phi105011_
                                                             _key105012_)
                                                      (let ((__tmp114903
                                                             (let ((__tmp114904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114905
                                   (let ((__tmp114906
                                          (let ((__tmp114909
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key105012_)))
                                                (__tmp114907
                                                 (let ((__tmp114908
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name105010_))))
                                                   (declare (not safe))
                                                   (cons __tmp114908 '()))))
                                            (declare (not safe))
                                            (cons __tmp114909 __tmp114907))))
                                     (declare (not safe))
                                     (cons _phi105011_ __tmp114906))))
                              (declare (not safe))
                              (cons 'spec: __tmp114905))))
                       (declare (not safe))
                       (cons __tmp114904 _r104905_))))
                (declare (not safe))
                (_lp104902_ _rest104925_ __tmp114903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K104931104994_
                                                    (lambda (_phi104948_
                                                             _src104949_)
                                                      (let* ((_out104989_
                                                              (if _src104949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114910
                                 (let ((__tmp114911
                                        (let* ((_g104950104959_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path104866_
                                                   _src104949_)))
                                               (_E104953104963_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g104950104959_)))))
                                          (let ((_K104955104979_
                                                 (lambda (_path104977_)
                                                   _path104977_))
                                                (_K104954104969_
                                                 (lambda (_path104967_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path104967_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g104950104959_))
                                                (let ((_tl104957104984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g104950104959_)))
                                                      (_hd104956104982_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g104950104959_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl104957104984_))
                                                      (let ((_path104987_
                                                             _hd104956104982_))
                                                        (declare (not safe))
                                                        (_K104955104979_
                                                         _path104987_))
                                                      (let ((_path104972_
                                                             _g104950104959_))
                                                        (declare (not safe))
                                                        (_K104954104969_
                                                         _path104972_))))
                                                (let ((_path104972_
                                                       _g104950104959_))
                                                  (declare (not safe))
                                                  (_K104954104969_
                                                   _path104972_)))))))
                                   (declare (not safe))
                                   (cons __tmp114911 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp114910))
                          '#t))
                     (_out104991_
                      (if (let () (declare (not safe)) (fxzero? _phi104948_))
                          _out104989_
                          (let ((__tmp114912
                                 (let ((__tmp114913
                                        (let ()
                                          (declare (not safe))
                                          (cons _out104989_ '()))))
                                   (declare (not safe))
                                   (cons _phi104948_ __tmp114913))))
                            (declare (not safe))
                            (cons 'phi: __tmp114912)))))
                (let ((__tmp114914
                       (let ()
                         (declare (not safe))
                         (cons _out104991_ _r104905_))))
                  (declare (not safe))
                  (_lp104902_ _rest104925_ __tmp114914))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match104929105007_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out104927104940_
                                                               'gx#export-set::t))
                                                            (let* ((_e104932104997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104927104940_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e104933105002_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104927104940_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src105000_ _e104932104997_)
                            (_phi105005_ _e104933105002_))
                        (let ()
                          (declare (not safe))
                          (_K104931104994_ _phi105005_ _src105000_))))
                    (let () (declare (not safe)) (_E104930104944_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out104927104940_
                                                        'gx#module-export::t))
                                                     (let* ((_e104935105017_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out104927104940_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e104936105020_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104927104940_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e104937105025_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104927104940_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e104938105030_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104927104940_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key105023_ _e104936105020_)
                     (_phi105028_ _e104937105025_)
                     (_name105033_ _e104938105030_))
                 (let ()
                   (declare (not safe))
                   (_K104934105014_ _name105033_ _phi105028_ _key105023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match104929105007_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104906104914_))
                                       (let ((_hd104911105038_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104906104914_)))
                                             (_tl104912105040_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104906104914_))))
                                         (let* ((_out105043_ _hd104911105038_)
                                                (_rest105045_
                                                 _tl104912105040_))
                                           (declare (not safe))
                                           (_K104910105035_
                                            _rest105045_
                                            _out105043_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104908104922_))))))
                             _tl104871104888_)))
                        (let ()
                          (declare (not safe))
                          (_g104868104878_ _g104869104881_))))))
            (declare (not safe))
            (_g104867105047_ _stx104863_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self104823_ _stx104824_)
        (let ((__tmp114915
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104823_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114915))
        (let* ((_g104826104836_
                (lambda (_g104827104833_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104827104833_))))
               (_g104825104859_
                (lambda (_g104827104839_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104827104839_))
                      (let ((_e104831104841_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104827104839_))))
                        (let ((_hd104830104844_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104831104841_)))
                              (_tl104829104846_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104831104841_))))
                          ((lambda (_L104849_)
                             (let ((__tmp114916
                                    (map gxc#generate-runtime-identifier
                                         _L104849_)))
                               (declare (not safe))
                               (cons '%#provide __tmp114916)))
                           _tl104829104846_)))
                      (let ()
                        (declare (not safe))
                        (_g104826104836_ _g104827104839_))))))
          (declare (not safe))
          (_g104825104859_ _stx104824_))))
    (define gxc#generate-meta-extern%
      (lambda (_self104694_ _stx104695_)
        (letrec ((_generate1104697_
                  (lambda (_id104818_ _eid104819_)
                    (let ((_eid104821_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid104819_))))
                      (if (interned-symbol? _eid104821_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx104695_
                             _eid104821_)))
                      (let ((__tmp114918
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id104818_)))
                            (__tmp114917
                             (let ()
                               (declare (not safe))
                               (cons _eid104821_ '()))))
                        (declare (not safe))
                        (cons __tmp114918 __tmp114917))))))
          (let* ((_g104699104727_
                  (lambda (_g104700104724_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104700104724_))))
                 (_g104698104815_
                  (lambda (_g104700104730_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104700104730_))
                        (let ((_e104705104732_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104700104730_))))
                          (let ((_hd104704104735_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104705104732_)))
                                (_tl104703104737_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104705104732_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl104703104737_))
                                (let ((_g114919_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl104703104737_
                                          '0))))
                                  (begin
                                    (let ((_g114920_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114919_)
                                                 (##vector-length _g114919_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114920_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114920_)))
                                    (let ((_target104706104740_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114919_ 0)))
                                          (_tl104708104742_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114919_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104708104742_))
                                          (letrec ((_loop104709104745_
                                                    (lambda (_hd104707104748_
                                                             _eid104713104750_
                                                             _id104714104752_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd104707104748_))
                                                          (let ((_e104710104755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd104707104748_))))
                    (let ((_lp-hd104711104758_
                           (let ()
                             (declare (not safe))
                             (##car _e104710104755_)))
                          (_lp-tl104712104760_
                           (let ()
                             (declare (not safe))
                             (##cdr _e104710104755_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd104711104758_))
                          (let ((_e104719104763_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd104711104758_))))
                            (let ((_hd104718104766_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104719104763_)))
                                  (_tl104717104768_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104719104763_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl104717104768_))
                                  (let ((_e104722104771_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl104717104768_))))
                                    (let ((_hd104721104774_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e104722104771_)))
                                          (_tl104720104776_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e104722104771_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104720104776_))
                                          (let ((__tmp114925
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104721104774_
                                                         _eid104713104750_)))
                                                (__tmp114924
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104718104766_
                                                         _id104714104752_))))
                                            (declare (not safe))
                                            (_loop104709104745_
                                             _lp-tl104712104760_
                                             __tmp114925
                                             __tmp114924))
                                          (let ()
                                            (declare (not safe))
                                            (_g104699104727_
                                             _g104700104730_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g104699104727_ _g104700104730_)))))
                          (let ()
                            (declare (not safe))
                            (_g104699104727_ _g104700104730_)))))
                  (let ((_eid104715104779_ (reverse _eid104713104750_))
                        (_id104716104781_ (reverse _id104714104752_)))
                    ((lambda (_L104784_ _L104785_)
                       (let ((__tmp114921
                              (map _generate1104697_
                                   (let ((__tmp114922
                                          (lambda (_g104800104803_
                                                   _g104801104805_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104800104803_
                                                    _g104801104805_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114922 '() _L104785_))
                                   (let ((__tmp114923
                                          (lambda (_g104807104810_
                                                   _g104808104812_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104807104810_
                                                    _g104808104812_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114923 '() _L104784_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp114921)))
                     _eid104715104779_
                     _id104716104781_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop104709104745_
                                               _target104706104740_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g104699104727_
                                             _g104700104730_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g104699104727_ _g104700104730_)))))
                        (let ()
                          (declare (not safe))
                          (_g104699104727_ _g104700104730_))))))
            (declare (not safe))
            (_g104698104815_ _stx104695_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self104484_ _stx104485_)
        (letrec ((_generate1104487_
                  (lambda (_id104689_)
                    (let ((_eid104691_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id104689_)))
                          (_ident104692_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id104689_))))
                      (let ((__tmp114926
                             (let ((__tmp114927
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid104691_ '()))))
                               (declare (not safe))
                               (cons _ident104692_ __tmp114927))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp114926)))))
                 (_generate*104488_
                  (lambda (_all104657_)
                    (let* ((_all104658104666_ _all104657_)
                           (_else104660104674_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all104657_))))
                           (_K104662104679_
                            (lambda (_one104677_) _one104677_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all104658104666_))
                          (let ((_hd104663104682_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all104658104666_)))
                                (_tl104664104684_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all104658104666_))))
                            (let ((_one104687_ _hd104663104682_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104664104684_))
                                  (let ()
                                    (declare (not safe))
                                    (_K104662104679_ _one104687_))
                                  (let ()
                                    (declare (not safe))
                                    (_else104660104674_)))))
                          (let ()
                            (declare (not safe))
                            (_else104660104674_)))))))
          (let* ((_g104490104507_
                  (lambda (_g104491104504_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104491104504_))))
                 (_g104489104654_
                  (lambda (_g104491104510_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104491104510_))
                        (let ((_e104496104512_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104491104510_))))
                          (let ((_hd104495104515_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104496104512_)))
                                (_tl104494104517_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104496104512_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104494104517_))
                                (let ((_e104499104520_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104494104517_))))
                                  (let ((_hd104498104523_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104499104520_)))
                                        (_tl104497104525_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104499104520_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104497104525_))
                                        (let ((_e104502104528_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104497104525_))))
                                          (let ((_hd104501104531_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104502104528_)))
                                                (_tl104500104533_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104502104528_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104500104533_))
                                                ((lambda (_L104536_ _L104537_)
                                                   (let _lp104553_ ((_rest104555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L104537_)
                            (_r104556_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx114070114071_
                                                             _rest104555_)
                                                            (_g104561104578_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx114070114071_)))))
               (let ((___kont114072114073_
                      (lambda (_L104641_)
                        (let ()
                          (declare (not safe))
                          (_lp104553_ _L104641_ _r104556_))))
                     (___kont114074114075_
                      (lambda (_L104614_ _L104615_)
                        (let ((__tmp114928
                               (let ((__tmp114929
                                      (let ()
                                        (declare (not safe))
                                        (_generate1104487_ _L104615_))))
                                 (declare (not safe))
                                 (cons __tmp114929 _r104556_))))
                          (declare (not safe))
                          (_lp104553_ _L104614_ __tmp114928))))
                     (___kont114076114077_
                      (lambda (_L104590_)
                        (let ((__tmp114930
                               (let ((__tmp114931
                                      (let ((__tmp114932
                                             (let ()
                                               (declare (not safe))
                                               (_generate1104487_ _L104590_))))
                                        (declare (not safe))
                                        (cons __tmp114932 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp114931 _r104556_))))
                          (declare (not safe))
                          (_generate*104488_ __tmp114930))))
                     (___kont114078114079_
                      (lambda ()
                        (let ((__tmp114933 (reverse _r104556_)))
                          (declare (not safe))
                          (_generate*104488_ __tmp114933)))))
                 (let ((_g104559104601_
                        (lambda ()
                          (let ((_L104590_ ___stx114070114071_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L104590_))
                                (___kont114076114077_ _L104590_)
                                (___kont114078114079_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx114070114071_))
                       (let ((_e104566104630_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx114070114071_))))
                         (let ((_tl104564104635_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e104566104630_)))
                               (_hd104565104633_
                                (let ()
                                  (declare (not safe))
                                  (##car _e104566104630_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd104565104633_))
                               (let ((_e104567104638_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd104565104633_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e104567104638_ '#f))
                                     (___kont114072114073_ _tl104564104635_)
                                     (___kont114074114075_
                                      _tl104564104635_
                                      _hd104565104633_)))
                               (___kont114074114075_
                                _tl104564104635_
                                _hd104565104633_))))
                       (let () (declare (not safe)) (_g104559104601_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd104501104531_
                                                 _hd104498104523_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104490104507_
                                                   _g104491104510_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104490104507_ _g104491104510_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104490104507_ _g104491104510_)))))
                        (let ()
                          (declare (not safe))
                          (_g104490104507_ _g104491104510_))))))
            (declare (not safe))
            (_g104489104654_ _stx104485_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self104381_ _stx104382_)
        (let* ((_g104384104401_
                (lambda (_g104385104398_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104385104398_))))
               (_g104383104481_
                (lambda (_g104385104404_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104385104404_))
                      (let ((_e104390104406_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104385104404_))))
                        (let ((_hd104389104409_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104390104406_)))
                              (_tl104388104411_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104390104406_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104388104411_))
                              (let ((_e104393104414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104388104411_))))
                                (let ((_hd104392104417_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104393104414_)))
                                      (_tl104391104419_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104393104414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104391104419_))
                                      (let ((_e104396104422_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104391104419_))))
                                        (let ((_hd104395104425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104396104422_)))
                                              (_tl104394104427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104396104422_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104394104427_))
                                              ((lambda (_L104430_ _L104431_)
                                                 (let* ((_eid104446_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L104431_)))
                                                        (_phi104448_
                                                         (let ((__tmp114934
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp114934
                                                                '1)))
                                                        (_block104450_
                                                         (let ((__tmp114935
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self104381_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp114935 _phi104448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g104453104460_
                                                           (lambda (_g104454104457_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g104454104457_))))
                  (_g104452104478_
                   (lambda (_g104454104463_)
                     ((lambda (_L104465_)
                        (let ()
                          (let ((__tmp114940
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self104381_ 'state)))
                                (__tmp114936
                                 (let ((__tmp114939
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp114937
                                        (let ((__tmp114938
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L104430_ '()))))
                                          (declare (not safe))
                                          (cons _L104465_ __tmp114938))))
                                   (declare (not safe))
                                   (cons __tmp114939 __tmp114937))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp114940
                             _phi104448_
                             __tmp114936))))
                      _g104454104463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g104452104478_
                                                      _eid104446_))
                                                   (if _block104450_
                                                       (let ((__tmp114944
                                                              (let ((__tmp114950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114951
                                    (let ((__tmp114952
                                           (let ((__tmp114953
                                                  (let ((__tmp114957
                                                         (let ((__tmp114958
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp114958)))
                (__tmp114954
                 (let ((__tmp114955
                        (let ((__tmp114956
                               (let ()
                                 (declare (not safe))
                                 (cons _block104450_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp114956))))
                   (declare (not safe))
                   (cons __tmp114955 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114957
                                                          __tmp114954))))
                                             (declare (not safe))
                                             (cons '%#call __tmp114953))))
                                      (declare (not safe))
                                      (cons __tmp114952 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp114951)))
                            (__tmp114945
                             (let ((__tmp114946
                                    (let ((__tmp114947
                                           (let ((__tmp114949
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L104431_)))
                                                 (__tmp114948
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid104446_ '()))))
                                             (declare (not safe))
                                             (cons __tmp114949 __tmp114948))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp114947))))
                               (declare (not safe))
                               (cons __tmp114946 '()))))
                        (declare (not safe))
                        (cons __tmp114950 __tmp114945))))
                 (declare (not safe))
                 (cons '%#begin __tmp114944))
               (let ((__tmp114941
                      (let ((__tmp114943
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L104431_)))
                            (__tmp114942
                             (let ()
                               (declare (not safe))
                               (cons _eid104446_ '()))))
                        (declare (not safe))
                        (cons __tmp114943 __tmp114942))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp114941)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104395104425_
                                               _hd104392104417_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104384104401_
                                                 _g104385104404_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104384104401_ _g104385104404_)))))
                              (let ()
                                (declare (not safe))
                                (_g104384104401_ _g104385104404_)))))
                      (let ()
                        (declare (not safe))
                        (_g104384104401_ _g104385104404_))))))
          (declare (not safe))
          (_g104383104481_ _stx104382_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self104313_ _stx104314_)
        (let* ((_g104316104333_
                (lambda (_g104317104330_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104317104330_))))
               (_g104315104378_
                (lambda (_g104317104336_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104317104336_))
                      (let ((_e104322104338_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104317104336_))))
                        (let ((_hd104321104341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104322104338_)))
                              (_tl104320104343_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104322104338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104320104343_))
                              (let ((_e104325104346_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104320104343_))))
                                (let ((_hd104324104349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104325104346_)))
                                      (_tl104323104351_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104325104346_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104323104351_))
                                      (let ((_e104328104354_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104323104351_))))
                                        (let ((_hd104327104357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104328104354_)))
                                              (_tl104326104359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104328104354_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104326104359_))
                                              ((lambda (_L104362_ _L104363_)
                                                 (let ((__tmp114959
                                                        (let ((__tmp114962
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L104363_)))
                      (__tmp114960
                       (let ((__tmp114961
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L104362_))))
                         (declare (not safe))
                         (cons __tmp114961 '()))))
                  (declare (not safe))
                  (cons __tmp114962 __tmp114960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp114959)))
                                               _hd104327104357_
                                               _hd104324104349_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104316104333_
                                                 _g104317104336_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104316104333_ _g104317104336_)))))
                              (let ()
                                (declare (not safe))
                                (_g104316104333_ _g104317104336_)))))
                      (let ()
                        (declare (not safe))
                        (_g104316104333_ _g104317104336_))))))
          (declare (not safe))
          (_g104315104378_ _stx104314_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self104310_ _stx104311_)
        (let ((__tmp114964
               (let () (declare (not safe)) (slot-ref__0 _self104310_ 'state)))
              (__tmp114963 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114964 __tmp114963 _stx104311_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self104310_ _stx104311_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self104307_ _stx104308_)
        (let ((__tmp114966
               (let () (declare (not safe)) (slot-ref__0 _self104307_ 'state)))
              (__tmp114965 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114966 __tmp114965 _stx104308_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp114969 (list))
            (__tmp114967
             (let ((__tmp114968
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114968 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp114969
         '(src n open blocks)
         __tmp114967
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args104304_
        (apply make-instance gxc#meta-state::t _$args104304_)))
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
      (lambda (_self104301_ _ctx104302_)
        (if (let ((__tmp114978
                   (let ()
                     (declare (not safe))
                     (##structure-length _self104301_))))
              (declare (not safe))
              (##fx< '4 __tmp114978))
            (begin
              (let ((__tmp114972
                     (let ((__tmp114973
                            (##structure-ref
                             _ctx104302_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp114973)))
                    (__tmp114971
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104301_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104301_
                 __tmp114972
                 '1
                 __tmp114971
                 '#f))
              (let ((__tmp114974
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104301_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104301_
                 '1
                 '2
                 __tmp114974
                 '#f))
              (let ((__tmp114976
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114975
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104301_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104301_
                 __tmp114976
                 '3
                 __tmp114975
                 '#f))
              (let ((__tmp114977
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104301_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104301_
                 '()
                 '4
                 __tmp114977
                 '#f)))
            (let ((__tmp114970
                   (let ()
                     (declare (not safe))
                     (##vector-length _self104301_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self104301_
                     '4
                     __tmp114970)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp114981 (list))
            (__tmp114979
             (let ((__tmp114980
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114980 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp114981
         '(ctx phi n code)
         __tmp114979
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args104176_
        (apply make-instance gxc#meta-state-block::t _$args104176_)))
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
      (lambda (_state104135_ _phi104136_)
        (let* ((_state104137104145_ _state104135_)
               (_E104139104149_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state104137104145_))))
               (_K104140104158_
                (lambda (_open104152_ _n104153_ _src104154_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open104152_ _phi104136_))
                      '#f
                      (let ((_block-ref104156_
                             (string-append
                              _src104154_
                              '"~"
                              (number->string _n104153_))))
                        (##structure-set!
                         _state104135_
                         (let () (declare (not safe)) (fx+ _n104153_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp114982
                               (let ((__tmp114983
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp114983
                                  _phi104136_
                                  _n104153_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open104152_ _phi104136_ __tmp114982))
                        _block-ref104156_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state104137104145_
                 'gxc#meta-state::t))
              (let* ((_e104141104161_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104137104145_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src104164_ _e104141104161_)
                     (_e104142104166_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104137104145_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n104169_ _e104142104166_)
                     (_e104143104171_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104137104145_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open104174_ _e104143104171_))
                (declare (not safe))
                (_K104140104158_ _open104174_ _n104169_ _src104164_))
              (let () (declare (not safe)) (_E104139104149_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state104129_ _phi104130_ _stx104131_)
        (let ((_block104133_
               (let ((__tmp114984
                      (##structure-ref
                       _state104129_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp114984 _phi104130_))))
          (##structure-set!
           _block104133_
           (let ((__tmp114985
                  (##structure-ref
                   _block104133_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx104131_ __tmp114985))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state104124_)
        (##structure-set!
         _state104124_
         (let ((__tmp114988
                (lambda (_g114989_ _block104126_ _r104127_)
                  (let ()
                    (declare (not safe))
                    (cons _block104126_ _r104127_))))
               (__tmp114987
                (##structure-ref _state104124_ '4 gxc#meta-state::t '#f))
               (__tmp114986
                (##structure-ref _state104124_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp114988 __tmp114987 __tmp114986))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state104124_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state104076_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state104076_))
        (let ((__tmp114991
               (lambda (_block104078_ _r104079_)
                 (let* ((_block104080104089_ _block104078_)
                        (_E104082104093_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block104080104089_))))
                        (_K104083104101_
                         (lambda (_code104096_
                                  _n104097_
                                  _phi104098_
                                  _ctx104099_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code104096_))
                               _r104079_
                               (let ((__tmp114992
                                      (let ((__tmp114993
                                             (let ((__tmp114994
                                                    (let ((__tmp114995
                                                           (let ((__tmp114996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114997 (reverse _code104096_)))
                            (declare (not safe))
                            (cons '%#begin __tmp114997))))
                     (declare (not safe))
                     (cons __tmp114996 '()))))
              (declare (not safe))
              (cons _n104097_ __tmp114995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi104098_
                                                     __tmp114994))))
                                        (declare (not safe))
                                        (cons _ctx104099_ __tmp114993))))
                                 (declare (not safe))
                                 (cons __tmp114992 _r104079_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block104080104089_
                          'gxc#meta-state-block::t))
                       (let* ((_e104084104104_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104080104089_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx104107_ _e104084104104_)
                              (_e104085104109_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104080104089_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi104112_ _e104085104109_)
                              (_e104086104114_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104080104089_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n104117_ _e104086104114_)
                              (_e104087104119_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104080104089_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code104122_ _e104087104119_))
                         (declare (not safe))
                         (_K104083104101_
                          _code104122_
                          _n104117_
                          _phi104112_
                          _ctx104107_))
                       (let () (declare (not safe)) (_E104082104093_))))))
              (__tmp114990
               (##structure-ref _state104076_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp114991 '() __tmp114990))))
    (define gxc#collect-expression-refs
      (lambda (_stx104072_)
        (let ((_ht104074_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx104072_ 'table: _ht104074_))
          _ht104074_)))
    (define gxc#collect-refs-ref%
      (lambda (_self104015_ _stx104016_)
        (let* ((_g104018104031_
                (lambda (_g104019104028_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104019104028_))))
               (_g104017104069_
                (lambda (_g104019104034_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104019104034_))
                      (let ((_e104023104036_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104019104034_))))
                        (let ((_hd104022104039_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104023104036_)))
                              (_tl104021104041_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104023104036_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104021104041_))
                              (let ((_e104026104044_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104021104041_))))
                                (let ((_hd104025104047_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104026104044_)))
                                      (_tl104024104049_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104026104044_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl104024104049_))
                                      ((lambda (_L104052_)
                                         (let* ((_bind104064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L104052_)))
                                                (_eid104066_
                                                 (if _bind104064_
                                                     (##structure-ref
                                                      _bind104064_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L104052_)))))
                                           (let ((__tmp114998
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self104015_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp114998
                                              _eid104066_
                                              _eid104066_))))
                                       _hd104025104047_)
                                      (let ()
                                        (declare (not safe))
                                        (_g104018104031_ _g104019104034_)))))
                              (let ()
                                (declare (not safe))
                                (_g104018104031_ _g104019104034_)))))
                      (let ()
                        (declare (not safe))
                        (_g104018104031_ _g104019104034_))))))
          (declare (not safe))
          (_g104017104069_ _stx104016_))))
    (define gxc#collect-refs-setq%
      (lambda (_self103942_ _stx103943_)
        (let* ((_g103945103962_
                (lambda (_g103946103959_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103946103959_))))
               (_g103944104012_
                (lambda (_g103946103965_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103946103965_))
                      (let ((_e103951103967_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103946103965_))))
                        (let ((_hd103950103970_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103951103967_)))
                              (_tl103949103972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103951103967_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103949103972_))
                              (let ((_e103954103975_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103949103972_))))
                                (let ((_hd103953103978_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103954103975_)))
                                      (_tl103952103980_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103954103975_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103952103980_))
                                      (let ((_e103957103983_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103952103980_))))
                                        (let ((_hd103956103986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103957103983_)))
                                              (_tl103955103988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103957103983_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103955103988_))
                                              ((lambda (_L103991_ _L103992_)
                                                 (let* ((_bind104007_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L103992_)))
                                                        (_eid104009_
                                                         (if _bind104007_
                                                             (##structure-ref
                                                              _bind104007_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L103992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp114999
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self103942_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp114999
                                                      _eid104009_
                                                      _eid104009_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self103942_
                                                      _L103991_))))
                                               _hd103956103986_
                                               _hd103953103978_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103945103962_
                                                 _g103946103965_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103945103962_ _g103946103965_)))))
                              (let ()
                                (declare (not safe))
                                (_g103945103962_ _g103946103965_)))))
                      (let ()
                        (declare (not safe))
                        (_g103945103962_ _g103946103965_))))))
          (declare (not safe))
          (_g103944104012_ _stx103943_))))
    (define gxc#find-runtime-begin%
      (lambda (_self103899_ _stx103900_)
        (let* ((_g103902103912_
                (lambda (_g103903103909_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103903103909_))))
               (_g103901103939_
                (lambda (_g103903103915_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103903103915_))
                      (let ((_e103907103917_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103903103915_))))
                        (let ((_hd103906103920_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103907103917_)))
                              (_tl103905103922_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103907103917_))))
                          ((lambda (_L103925_)
                             (let ((__tmp115000
                                    (lambda (_g103934103936_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103899_
                                         _g103934103936_)))))
                               (declare (not safe))
                               (ormap1 __tmp115000 _L103925_)))
                           _tl103905103922_)))
                      (let ()
                        (declare (not safe))
                        (_g103902103912_ _g103903103915_))))))
          (declare (not safe))
          (_g103901103939_ _stx103900_))))
    (define gxc#count-values-single% (lambda (_self103896_ _stx103897_) '1))
    (define gxc#count-values-call%
      (lambda (_self103762_ _stx103763_)
        (let* ((___stx114100114101_ _stx103763_)
               (_g103766103795_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx114100114101_)))))
          (let ((___kont114102114103_
                 (lambda (_L103863_ _L103864_)
                   (length (let ((__tmp115001
                                  (lambda (_g103885103888_ _g103886103890_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g103885103888_
                                            _g103886103890_)))))
                             (declare (not safe))
                             (foldr1 __tmp115001 '() _L103863_)))))
                (___kont114106114107_ (lambda () '#f)))
            (let ((___match114145114146_
                   (lambda (_e103772103807_
                            _hd103771103810_
                            _tl103770103812_
                            _e103775103815_
                            _hd103774103818_
                            _tl103773103820_
                            _e103778103823_
                            _hd103777103826_
                            _tl103776103828_
                            _e103781103831_
                            _hd103780103834_
                            _tl103779103836_
                            ___splice114104114105_
                            _target103782103839_
                            _tl103784103841_)
                     (letrec ((_loop103785103844_
                               (lambda (_hd103783103847_ _rand103789103849_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103783103847_))
                                     (let ((_e103786103852_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103783103847_))))
                                       (let ((_lp-tl103788103857_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103786103852_)))
                                             (_lp-hd103787103855_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103786103852_))))
                                         (let ((__tmp115002
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd103787103855_
                                                        _rand103789103849_))))
                                           (declare (not safe))
                                           (_loop103785103844_
                                            _lp-tl103788103857_
                                            __tmp115002))))
                                     (let ((_rand103790103860_
                                            (reverse _rand103789103849_)))
                                       (let ((_L103863_ _rand103790103860_)
                                             (_L103864_ _hd103780103834_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L103864_
                                                'values))
                                             (___kont114102114103_
                                              _L103863_
                                              _L103864_)
                                             (___kont114106114107_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop103785103844_ _target103782103839_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx114100114101_))
                  (let ((_e103772103807_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx114100114101_))))
                    (let ((_tl103770103812_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103772103807_)))
                          (_hd103771103810_
                           (let ()
                             (declare (not safe))
                             (##car _e103772103807_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103770103812_))
                          (let ((_e103775103815_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103770103812_))))
                            (let ((_tl103773103820_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103775103815_)))
                                  (_hd103774103818_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103775103815_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103774103818_))
                                  (let ((_e103778103823_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103774103818_))))
                                    (let ((_tl103776103828_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103778103823_)))
                                          (_hd103777103826_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103778103823_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103777103826_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103777103826_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103776103828_))
                                                  (let ((_e103781103831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103776103828_))))
                                                    (let ((_tl103779103836_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103781103831_)))
                                                          (_hd103780103834_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103781103831_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103779103836_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103773103820_))
                      (let ((___splice114104114105_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103773103820_ '0))))
                        (let ((_tl103784103841_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114104114105_ '1)))
                              (_target103782103839_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114104114105_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103784103841_))
                              (___match114145114146_
                               _e103772103807_
                               _hd103771103810_
                               _tl103770103812_
                               _e103775103815_
                               _hd103774103818_
                               _tl103773103820_
                               _e103778103823_
                               _hd103777103826_
                               _tl103776103828_
                               _e103781103831_
                               _hd103780103834_
                               _tl103779103836_
                               ___splice114104114105_
                               _target103782103839_
                               _tl103784103841_)
                              (___kont114106114107_))))
                      (___kont114106114107_))
                  (___kont114106114107_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114106114107_))
                                              (___kont114106114107_))
                                          (___kont114106114107_))))
                                  (___kont114106114107_))))
                          (___kont114106114107_))))
                  (___kont114106114107_)))))))
    (define gxc#count-values-if%
      (lambda (_self103665_ _stx103666_)
        (let* ((_g103668103689_
                (lambda (_g103669103686_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103669103686_))))
               (_g103667103759_
                (lambda (_g103669103692_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103669103692_))
                      (let ((_e103675103694_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103669103692_))))
                        (let ((_hd103674103697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103675103694_)))
                              (_tl103673103699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103675103694_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103673103699_))
                              (let ((_e103678103702_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103673103699_))))
                                (let ((_hd103677103705_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103678103702_)))
                                      (_tl103676103707_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103678103702_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103676103707_))
                                      (let ((_e103681103710_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103676103707_))))
                                        (let ((_hd103680103713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103681103710_)))
                                              (_tl103679103715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103681103710_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103679103715_))
                                              (let ((_e103684103718_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103679103715_))))
                                                (let ((_hd103683103721_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103684103718_)))
                                                      (_tl103682103723_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103684103718_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103682103723_))
                                                      ((lambda (_L103726_
                                                                _L103727_
                                                                _L103728_)
                                                         (let ((_c1103745103747_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self103665_ _L103727_))))
                   (if _c1103745103747_
                       (let* ((_c1103750_ _c1103745103747_)
                              (_c2103751103753_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103665_ _L103726_))))
                         (if _c2103751103753_
                             (let ((_c2103756_ _c2103751103753_))
                               (if (fx= _c1103750_ _c2103756_) _c1103750_ '#f))
                             '#f))
                       '#f)))
               _hd103683103721_
               _hd103680103713_
               _hd103677103705_)
              (let ()
                (declare (not safe))
                (_g103668103689_ _g103669103692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103668103689_
                                                 _g103669103692_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103668103689_ _g103669103692_)))))
                              (let ()
                                (declare (not safe))
                                (_g103668103689_ _g103669103692_)))))
                      (let ()
                        (declare (not safe))
                        (_g103668103689_ _g103669103692_))))))
          (declare (not safe))
          (_g103667103759_ _stx103666_))))))
