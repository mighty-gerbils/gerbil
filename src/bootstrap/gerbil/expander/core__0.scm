(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#current-expander-context (make-parameter '#f))
  (define gx#current-expander-marks (make-parameter '()))
  (define gx#current-expander-phi (make-parameter '0))
  (define gx#current-expander-path (make-parameter '()))
  (define gx#current-expander-eval (make-parameter '#f))
  (define gx#current-expander-compile (make-parameter '#f))
  (define gx#current-expander-module-eval (make-parameter '#f))
  (define gx#current-expander-module-import (make-parameter '#f))
  (define gx#current-expander-module-prelude (make-parameter '#f))
  (define gx#current-expander-module-registry (make-parameter '#f))
  (define gx#current-expander-module-library-path (make-parameter '#f))
  (define gx#expander-context::t
    (make-struct-type
     'gx#expander-context::t
     '#f
     '2
     'expander-context
     '()
     ':init!))
  (define gx#expander-context? (make-struct-predicate gx#expander-context::t))
  (define gx#make-expander-context
    (lambda _$args4432_
      (apply make-struct-instance gx#expander-context::t _$args4432_)))
  (define gx#expander-context-id
    (make-struct-field-accessor gx#expander-context::t '0))
  (define gx#expander-context-table
    (make-struct-field-accessor gx#expander-context::t '1))
  (define gx#expander-context-id-set!
    (make-struct-field-mutator gx#expander-context::t '0))
  (define gx#expander-context-table-set!
    (make-struct-field-mutator gx#expander-context::t '1))
  (define gx#root-context::t
    (make-struct-type
     'gx#root-context::t
     gx#expander-context::t
     '0
     'root-context
     '()
     '#f))
  (define gx#root-context? (make-struct-predicate gx#root-context::t))
  (define gx#make-root-context
    (lambda _$args4429_
      (apply make-struct-instance gx#root-context::t _$args4429_)))
  (define gx#phi-context::t
    (make-struct-type
     'gx#context-phi::t
     gx#expander-context::t
     '3
     'phi-context
     '()
     '#f))
  (define gx#phi-context? (make-struct-predicate gx#phi-context::t))
  (define gx#make-phi-context
    (lambda _$args4426_
      (apply make-struct-instance gx#phi-context::t _$args4426_)))
  (define gx#phi-context-super
    (make-struct-field-accessor gx#phi-context::t '0))
  (define gx#phi-context-up (make-struct-field-accessor gx#phi-context::t '1))
  (define gx#phi-context-down
    (make-struct-field-accessor gx#phi-context::t '2))
  (define gx#phi-context-super-set!
    (make-struct-field-mutator gx#phi-context::t '0))
  (define gx#phi-context-up-set!
    (make-struct-field-mutator gx#phi-context::t '1))
  (define gx#phi-context-down-set!
    (make-struct-field-mutator gx#phi-context::t '2))
  (define gx#top-context::t
    (make-struct-type
     'gx#top-context::t
     gx#phi-context::t
     '0
     'top-context
     '()
     '#f))
  (define gx#top-context? (make-struct-predicate gx#top-context::t))
  (define gx#make-top-context
    (lambda _$args4423_
      (apply make-struct-instance gx#top-context::t _$args4423_)))
  (define gx#module-context::t
    (make-struct-type
     'gx#module-context::t
     gx#top-context::t
     '6
     'module-context
     '()
     '#f))
  (define gx#module-context? (make-struct-predicate gx#module-context::t))
  (define gx#make-module-context
    (lambda _$args4420_
      (apply make-struct-instance gx#module-context::t _$args4420_)))
  (define gx#module-context-ns
    (make-struct-field-accessor gx#module-context::t '0))
  (define gx#module-context-path
    (make-struct-field-accessor gx#module-context::t '1))
  (define gx#module-context-import
    (make-struct-field-accessor gx#module-context::t '2))
  (define gx#module-context-export
    (make-struct-field-accessor gx#module-context::t '3))
  (define gx#module-context-e
    (make-struct-field-accessor gx#module-context::t '4))
  (define gx#module-context-code
    (make-struct-field-accessor gx#module-context::t '5))
  (define gx#module-context-ns-set!
    (make-struct-field-mutator gx#module-context::t '0))
  (define gx#module-context-path-set!
    (make-struct-field-mutator gx#module-context::t '1))
  (define gx#module-context-import-set!
    (make-struct-field-mutator gx#module-context::t '2))
  (define gx#module-context-export-set!
    (make-struct-field-mutator gx#module-context::t '3))
  (define gx#module-context-e-set!
    (make-struct-field-mutator gx#module-context::t '4))
  (define gx#module-context-code-set!
    (make-struct-field-mutator gx#module-context::t '5))
  (define gx#prelude-context::t
    (make-struct-type
     'gx#prelude-context::t
     gx#top-context::t
     '3
     'prelude-context
     '()
     '#f))
  (define gx#prelude-context? (make-struct-predicate gx#prelude-context::t))
  (define gx#make-prelude-context
    (lambda _$args4417_
      (apply make-struct-instance gx#prelude-context::t _$args4417_)))
  (define gx#prelude-context-path
    (make-struct-field-accessor gx#prelude-context::t '0))
  (define gx#prelude-context-import
    (make-struct-field-accessor gx#prelude-context::t '1))
  (define gx#prelude-context-e
    (make-struct-field-accessor gx#prelude-context::t '2))
  (define gx#prelude-context-path-set!
    (make-struct-field-mutator gx#prelude-context::t '0))
  (define gx#prelude-context-import-set!
    (make-struct-field-mutator gx#prelude-context::t '1))
  (define gx#prelude-context-e-set!
    (make-struct-field-mutator gx#prelude-context::t '2))
  (define gx#local-context::t
    (make-struct-type
     'gx#local-context::t
     gx#phi-context::t
     '0
     'local-context
     '()
     '#f))
  (define gx#local-context? (make-struct-predicate gx#local-context::t))
  (define gx#make-local-context
    (lambda _$args4414_
      (apply make-struct-instance gx#local-context::t _$args4414_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda4396
      (lambda (_self4398_ _id4399_ _super4400_)
        (direct-struct-instance-init!
         _self4398_
         _id4399_
         (make-hash-table-eq)
         _super4400_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self4405_ _id4406_)
          (let ((_super4408_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda4396
             _self4405_
             _id4406_
             _super4408_))))
      (define gx#phi-context:::init!
        (lambda _g4436_
          (let ((_g4435_ (length _g4436_)))
            (cond ((fx= _g4435_ 2) (apply gx#phi-context:::init!__0 _g4436_))
                  ((fx= _g4435_ 3)
                   (apply gx#phi-context:::init!__opt-lambda4396 _g4436_))
                  (else (error "No clause matching arguments" _g4436_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda4382
      (lambda (_self4384_ _super4385_)
        (direct-struct-instance-init!
         _self4384_
         (gensym 'L)
         (make-hash-table-eq)
         _super4385_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self4390_)
          (let ((_super4392_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda4382
             _self4390_
             _super4392_))))
      (define gx#local-context:::init!
        (lambda _g4438_
          (let ((_g4437_ (length _g4438_)))
            (cond ((fx= _g4437_ 1) (apply gx#local-context:::init!__0 _g4438_))
                  ((fx= _g4437_ 2)
                   (apply gx#local-context:::init!__opt-lambda4382 _g4438_))
                  (else (error "No clause matching arguments" _g4438_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args4380_
      (apply make-struct-instance gx#binding::t _$args4380_)))
  (define gx#binding-id (make-struct-field-accessor gx#binding::t '0))
  (define gx#binding-key (make-struct-field-accessor gx#binding::t '1))
  (define gx#binding-phi (make-struct-field-accessor gx#binding::t '2))
  (define gx#binding-id-set! (make-struct-field-mutator gx#binding::t '0))
  (define gx#binding-key-set! (make-struct-field-mutator gx#binding::t '1))
  (define gx#binding-phi-set! (make-struct-field-mutator gx#binding::t '2))
  (define gx#runtime-binding::t
    (make-struct-type
     'gx#runtime-binding::t
     gx#binding::t
     '0
     'runtime-binding
     '()
     '#f))
  (define gx#runtime-binding? (make-struct-predicate gx#runtime-binding::t))
  (define gx#make-runtime-binding
    (lambda _$args4377_
      (apply make-struct-instance gx#runtime-binding::t _$args4377_)))
  (define gx#local-binding::t
    (make-struct-type
     'gx#local-binding::t
     gx#runtime-binding::t
     '0
     'local-binding
     '()
     '#f))
  (define gx#local-binding? (make-struct-predicate gx#local-binding::t))
  (define gx#make-local-binding
    (lambda _$args4374_
      (apply make-struct-instance gx#local-binding::t _$args4374_)))
  (define gx#top-binding::t
    (make-struct-type
     'gx#top-binding::t
     gx#runtime-binding::t
     '0
     'top-binding
     '()
     '#f))
  (define gx#top-binding? (make-struct-predicate gx#top-binding::t))
  (define gx#make-top-binding
    (lambda _$args4371_
      (apply make-struct-instance gx#top-binding::t _$args4371_)))
  (define gx#module-binding::t
    (make-struct-type
     'gx#module-binding::t
     gx#top-binding::t
     '1
     'module-binding
     '()
     '#f))
  (define gx#module-binding? (make-struct-predicate gx#module-binding::t))
  (define gx#make-module-binding
    (lambda _$args4368_
      (apply make-struct-instance gx#module-binding::t _$args4368_)))
  (define gx#module-binding-context
    (make-struct-field-accessor gx#module-binding::t '0))
  (define gx#module-binding-context-set!
    (make-struct-field-mutator gx#module-binding::t '0))
  (define gx#extern-binding::t
    (make-struct-type
     'gx#extern-binding::t
     gx#top-binding::t
     '0
     'extern-binding
     '()
     '#f))
  (define gx#extern-binding? (make-struct-predicate gx#extern-binding::t))
  (define gx#make-extern-binding
    (lambda _$args4365_
      (apply make-struct-instance gx#extern-binding::t _$args4365_)))
  (define gx#syntax-binding::t
    (make-struct-type
     'gx#syntax-binding::t
     gx#binding::t
     '1
     'syntax-binding
     '((final: . #t))
     '#f))
  (define gx#syntax-binding? (make-struct-predicate gx#syntax-binding::t))
  (define gx#make-syntax-binding
    (lambda _$args4362_
      (apply make-struct-instance gx#syntax-binding::t _$args4362_)))
  (define gx#syntax-binding-e
    (make-struct-field-accessor gx#syntax-binding::t '0))
  (define gx#syntax-binding-e-set!
    (make-struct-field-mutator gx#syntax-binding::t '0))
  (define gx#import-binding::t
    (make-struct-type
     'gx#import-binding::t
     gx#binding::t
     '3
     'import-binding
     '((final: . #t))
     '#f))
  (define gx#import-binding? (make-struct-predicate gx#import-binding::t))
  (define gx#make-import-binding
    (lambda _$args4359_
      (apply make-struct-instance gx#import-binding::t _$args4359_)))
  (define gx#import-binding-e
    (make-struct-field-accessor gx#import-binding::t '0))
  (define gx#import-binding-context
    (make-struct-field-accessor gx#import-binding::t '1))
  (define gx#import-binding-weak?
    (make-struct-field-accessor gx#import-binding::t '2))
  (define gx#import-binding-e-set!
    (make-struct-field-mutator gx#import-binding::t '0))
  (define gx#import-binding-context-set!
    (make-struct-field-mutator gx#import-binding::t '1))
  (define gx#import-binding-weak?-set!
    (make-struct-field-mutator gx#import-binding::t '2))
  (define gx#alias-binding::t
    (make-struct-type
     'gx#alias-binding::t
     gx#binding::t
     '1
     'alias-binding
     '((final: . #t))
     '#f))
  (define gx#alias-binding? (make-struct-predicate gx#alias-binding::t))
  (define gx#make-alias-binding
    (lambda _$args4356_
      (apply make-struct-instance gx#alias-binding::t _$args4356_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args4353_
      (apply make-struct-instance gx#expander::t _$args4353_)))
  (define gx#expander-e (make-struct-field-accessor gx#expander::t '0))
  (define gx#expander-e-set! (make-struct-field-mutator gx#expander::t '0))
  (define gx#core-expander::t
    (make-struct-type
     'gx#core-expander::t
     gx#expander::t
     '2
     'core-expander
     '()
     '#f))
  (define gx#core-expander? (make-struct-predicate gx#core-expander::t))
  (define gx#make-core-expander
    (lambda _$args4350_
      (apply make-struct-instance gx#core-expander::t _$args4350_)))
  (define gx#core-expander-id
    (make-struct-field-accessor gx#core-expander::t '0))
  (define gx#core-expander-compile-top
    (make-struct-field-accessor gx#core-expander::t '1))
  (define gx#core-expander-id-set!
    (make-struct-field-mutator gx#core-expander::t '0))
  (define gx#core-expander-compile-top-set!
    (make-struct-field-mutator gx#core-expander::t '1))
  (define gx#expression-form::t
    (make-struct-type
     'gx#expression-form::t
     gx#core-expander::t
     '0
     'expression-form
     '()
     '#f))
  (define gx#expression-form? (make-struct-predicate gx#expression-form::t))
  (define gx#make-expression-form
    (lambda _$args4347_
      (apply make-struct-instance gx#expression-form::t _$args4347_)))
  (define gx#special-form::t
    (make-struct-type
     'gx#special-form::t
     gx#core-expander::t
     '0
     'special-form
     '()
     '#f))
  (define gx#special-form? (make-struct-predicate gx#special-form::t))
  (define gx#make-special-form
    (lambda _$args4344_
      (apply make-struct-instance gx#special-form::t _$args4344_)))
  (define gx#definition-form::t
    (make-struct-type
     'gx#definition-form::t
     gx#special-form::t
     '0
     'definition-form
     '()
     '#f))
  (define gx#definition-form? (make-struct-predicate gx#definition-form::t))
  (define gx#make-definition-form
    (lambda _$args4341_
      (apply make-struct-instance gx#definition-form::t _$args4341_)))
  (define gx#top-special-form::t
    (make-struct-type
     'gx#top-special-form::t
     gx#special-form::t
     '0
     'top-special-form
     '()
     '#f))
  (define gx#top-special-form? (make-struct-predicate gx#top-special-form::t))
  (define gx#make-top-special-form
    (lambda _$args4338_
      (apply make-struct-instance gx#top-special-form::t _$args4338_)))
  (define gx#module-special-form::t
    (make-struct-type
     'gx#module-special-form::t
     gx#top-special-form::t
     '0
     'module-special-form
     '()
     '#f))
  (define gx#module-special-form?
    (make-struct-predicate gx#module-special-form::t))
  (define gx#make-module-special-form
    (lambda _$args4335_
      (apply make-struct-instance gx#module-special-form::t _$args4335_)))
  (define gx#feature-expander::t
    (make-struct-type
     'gx#feature-expander::t
     gx#expander::t
     '0
     'feature-expander
     '()
     '#f))
  (define gx#feature-expander? (make-struct-predicate gx#feature-expander::t))
  (define gx#make-feature-expander
    (lambda _$args4332_
      (apply make-struct-instance gx#feature-expander::t _$args4332_)))
  (define gx#private-feature-expander::t
    (make-struct-type
     'gx#private-feature-expander::t
     gx#feature-expander::t
     '0
     'private-feature-expander
     '()
     '#f))
  (define gx#private-feature-expander?
    (make-struct-predicate gx#private-feature-expander::t))
  (define gx#make-private-feature-expander
    (lambda _$args4329_
      (apply make-struct-instance gx#private-feature-expander::t _$args4329_)))
  (define gx#reserved-expander::t
    (make-struct-type
     'gx#reserved-expander::t
     gx#expander::t
     '0
     'reserved-expander
     '()
     '#f))
  (define gx#reserved-expander?
    (make-struct-predicate gx#reserved-expander::t))
  (define gx#make-reserved-expander
    (lambda _$args4326_
      (apply make-struct-instance gx#reserved-expander::t _$args4326_)))
  (define gx#macro-expander::t
    (make-struct-type
     'gx#core-macro::t
     gx#expander::t
     '0
     'macro-expander
     '()
     '#f))
  (define gx#macro-expander? (make-struct-predicate gx#macro-expander::t))
  (define gx#make-macro-expander
    (lambda _$args4323_
      (apply make-struct-instance gx#macro-expander::t _$args4323_)))
  (define gx#rename-macro-expander::t
    (make-struct-type
     'gx#rename-macro-expander::t
     gx#macro-expander::t
     '0
     'rename-macro-expander
     '()
     '#f))
  (define gx#rename-macro-expander?
    (make-struct-predicate gx#rename-macro-expander::t))
  (define gx#make-rename-macro-expander
    (lambda _$args4320_
      (apply make-struct-instance gx#rename-macro-expander::t _$args4320_)))
  (define gx#user-expander::t
    (make-struct-type
     'gx#macro-expander::t
     gx#macro-expander::t
     '2
     'user-expander
     '()
     '#f))
  (define gx#user-expander? (make-struct-predicate gx#user-expander::t))
  (define gx#make-user-expander
    (lambda _$args4317_
      (apply make-struct-instance gx#user-expander::t _$args4317_)))
  (define gx#user-expander-context
    (make-struct-field-accessor gx#user-expander::t '0))
  (define gx#user-expander-phi
    (make-struct-field-accessor gx#user-expander::t '1))
  (define gx#user-expander-context-set!
    (make-struct-field-mutator gx#user-expander::t '0))
  (define gx#user-expander-phi-set!
    (make-struct-field-mutator gx#user-expander::t '1))
  (define gx#expander-mark::t
    (make-struct-type 'gx#expander-mark::t '#f '4 'expander-mark '() '#f))
  (define gx#expander-mark? (make-struct-predicate gx#expander-mark::t))
  (define gx#make-expander-mark
    (lambda _$args4314_
      (apply make-struct-instance gx#expander-mark::t _$args4314_)))
  (define gx#expander-mark-subst
    (make-struct-field-accessor gx#expander-mark::t '0))
  (define gx#expander-mark-context
    (make-struct-field-accessor gx#expander-mark::t '1))
  (define gx#expander-mark-phi
    (make-struct-field-accessor gx#expander-mark::t '2))
  (define gx#expander-mark-trace
    (make-struct-field-accessor gx#expander-mark::t '3))
  (define gx#expander-mark-subst-set!
    (make-struct-field-mutator gx#expander-mark::t '0))
  (define gx#expander-mark-context-set!
    (make-struct-field-mutator gx#expander-mark::t '1))
  (define gx#expander-mark-phi-set!
    (make-struct-field-mutator gx#expander-mark::t '2))
  (define gx#expander-mark-trace-set!
    (make-struct-field-mutator gx#expander-mark::t '3))
  (define gx#syntax-error::t
    (make-struct-type 'gx#syntax-error::t error::t '3 'syntax-error '() '#f))
  (define gx#syntax-error? (make-struct-predicate gx#syntax-error::t))
  (define gx#make-syntax-error
    (lambda _$args4311_
      (apply make-struct-instance gx#syntax-error::t _$args4311_)))
  (define gx#syntax-error-context
    (make-struct-field-accessor gx#syntax-error::t '0))
  (define gx#syntax-error-marks
    (make-struct-field-accessor gx#syntax-error::t '1))
  (define gx#syntax-error-phi
    (make-struct-field-accessor gx#syntax-error::t '2))
  (define gx#syntax-error-context-set!
    (make-struct-field-mutator gx#syntax-error::t '0))
  (define gx#syntax-error-marks-set!
    (make-struct-field-mutator gx#syntax-error::t '1))
  (define gx#syntax-error-phi-set!
    (make-struct-field-mutator gx#syntax-error::t '2))
  (define gx#raise-syntax-error
    (lambda (_where4306_ _message4307_ _stx4308_ . _details4309_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message4307_
              (cons _stx4308_ _details4309_)
              _where4306_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda4291
      (lambda (_stx4293_ _expression?4294_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda4275 _stx4293_ _expression?4294_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx4299_)
          (let ((_expression?4301_ '#f))
            (gx#eval-syntax__opt-lambda4291 _stx4299_ _expression?4301_))))
      (define gx#eval-syntax
        (lambda _g4440_
          (let ((_g4439_ (length _g4440_)))
            (cond ((fx= _g4439_ 1) (apply gx#eval-syntax__0 _g4440_))
                  ((fx= _g4439_ 2)
                   (apply gx#eval-syntax__opt-lambda4291 _g4440_))
                  (else (error "No clause matching arguments" _g4440_))))))))
  (define gx#eval-syntax*
    (lambda (_stx4290_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx4290_))))
  (begin
    (define gx#core-expand__opt-lambda4275
      (lambda (_stx4277_ _expression?4278_)
        (if _expression?4278_
            (gx#core-expand-expression _stx4277_)
            (gx#core-expand-top _stx4277_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx4283_)
          (let ((_expression?4285_ '#f))
            (gx#core-expand__opt-lambda4275 _stx4283_ _expression?4285_))))
      (define gx#core-expand
        (lambda _g4442_
          (let ((_g4441_ (length _g4442_)))
            (cond ((fx= _g4441_ 1) (apply gx#core-expand__0 _g4442_))
                  ((fx= _g4441_ 2)
                   (apply gx#core-expand__opt-lambda4275 _g4442_))
                  (else (error "No clause matching arguments" _g4442_))))))))
  (define gx#core-expand-top
    (lambda (_stx4244_)
      (let ((_stx4246_ (gx#core-expand*__0 _stx4244_)))
        (let ((_e42474254_ _stx4246_))
          (let ((_E42494258_
                 (lambda () (gx#core-expand-expression _stx4246_))))
            (let ((_E42484272_
                   (lambda ()
                     (if (gx#stx-pair? _e42474254_)
                         (let ((_e42504262_ (gx#syntax-e _e42474254_)))
                           (let ((_hd42514265_ (##car _e42504262_))
                                 (_tl42524267_ (##cdr _e42504262_)))
                             (let ((_form4270_ _hd42514265_))
                               (if (gx#core-bound-identifier?__0 _form4270_)
                                   _stx4246_
                                   (_E42494258_)))))
                         (_E42494258_)))))
              (let () (_E42484272_))))))))
  (define gx#core-expand-expression
    (lambda (_stx4166_)
      (let ((_sealed-expression?4168_
             (lambda (_hd4214_)
               (if (gx#sealed-syntax? _hd4214_)
                   (let ((_e42154222_ _hd4214_))
                     (let ((_E42174226_ (lambda () '#f)))
                       (let ((_E42164240_
                              (lambda ()
                                (if (gx#stx-pair? _e42154222_)
                                    (let ((_e42184230_
                                           (gx#syntax-e _e42154222_)))
                                      (let ((_hd42194233_ (##car _e42184230_))
                                            (_tl42204235_ (##cdr _e42184230_)))
                                        (let ((_form4238_ _hd42194233_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda2815
                                               _form4238_
                                               gx#expression-form-binding?)
                                              (_E42174226_)))))
                                    (_E42174226_)))))
                         (let () (_E42164240_)))))
                   '#f))))
        (let ((_illegal-expression4169_
               (lambda (_hd4212_ . _g4443_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx4166_
                  _hd4212_))))
          (let ((_expand-e4170_
                 (lambda (_form4207_ _hd4208_)
                   (let ((_bind4210_
                          (if (##structure-instance-of?
                               _form4207_
                               'gx#binding::t)
                              _form4207_
                              (gx#resolve-identifier__0 _form4207_))))
                     (if (gx#core-expander-binding? _bind4210_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind4210_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd4208_
                           (gx#stx-source _stx4166_)))
                         (if (##structure-direct-instance-of?
                              _bind4210_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind4210_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd4208_
                                (gx#stx-source _stx4166_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx4166_
                              _form4207_)))))))
            (let ((_hd4172_ (gx#core-expand-head _stx4166_)))
              (if (_sealed-expression?4168_ _hd4172_)
                  _hd4172_
                  (if (gx#stx-pair? _hd4172_)
                      (let ((_e41734180_ _hd4172_))
                        (let ((_E41754184_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e41734180_))))
                          (let ((_E41744203_
                                 (lambda ()
                                   (if (gx#stx-pair? _e41734180_)
                                       (let ((_e41764188_
                                              (gx#syntax-e _e41734180_)))
                                         (let ((_hd41774191_
                                                (##car _e41764188_))
                                               (_tl41784193_
                                                (##cdr _e41764188_)))
                                           (let ((_form4196_ _hd41774191_))
                                             (if '#t
                                                 (let ((_bind4198_
                                                        (if (gx#identifier?
                                                             _form4196_)
                                                            (gx#resolve-identifier__0
                                                             _form4196_)
                                                            '#f)))
                                                   (if (let ((_$e4200_
                                                              (not _bind4198_)))
                                                         (if _$e4200_
                                                             _$e4200_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind4198_))))
               (_expand-e4170_ '%#call (cons '%#call _hd4172_))
               (if (eq? (##structure-ref _bind4198_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd4172_ _illegal-expression4169_)
                   (if (gx#expression-form-binding? _bind4198_)
                       (_expand-e4170_ _bind4198_ _hd4172_)
                       (_illegal-expression4169_ _hd4172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E41754184_)))))
                                       (_E41754184_)))))
                            (let () (_E41744203_)))))
                      (if (gx#core-bound-identifier?__0 _hd4172_)
                          (_illegal-expression4169_ _hd4172_)
                          (if (gx#identifier? _hd4172_)
                              (_expand-e4170_
                               '%#ref
                               (cons '%#ref (cons _hd4172_ '())))
                              (if (gx#stx-datum? _hd4172_)
                                  (_expand-e4170_
                                   '%#quote
                                   (cons '%#quote (cons _hd4172_ '())))
                                  (_illegal-expression4169_
                                   _hd4172_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx4161_)
      (call-with-parameters
       (lambda ()
         (let ((_stx4164_ (gx#core-expand-expression _stx4161_)))
           (values _stx4164_ (gx#eval-syntax* _stx4164_))))
       gx#current-expander-phi
       (fx1+ (gx#current-expander-phi)))))
  (begin
    (define gx#core-expand*__opt-lambda4140
      (lambda (_stx4142_ _stop?4143_)
        ((letrec ((_lp4145_
                   (lambda (_stx4147_)
                     (if (_stop?4143_ _stx4147_)
                         _stx4147_
                         (let ((_rstx4149_ (gx#core-expand1 _stx4147_)))
                           (if (eq? _stx4147_ _rstx4149_)
                               _stx4147_
                               (_lp4145_ _rstx4149_)))))))
           _lp4145_)
         _stx4142_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx4154_)
          (let ((_stop?4156_ false))
            (gx#core-expand*__opt-lambda4140 _stx4154_ _stop?4156_))))
      (define gx#core-expand*
        (lambda _g4445_
          (let ((_g4444_ (length _g4445_)))
            (cond ((fx= _g4444_ 1) (apply gx#core-expand*__0 _g4445_))
                  ((fx= _g4444_ 2)
                   (apply gx#core-expand*__opt-lambda4140 _g4445_))
                  (else (error "No clause matching arguments" _g4445_))))))))
  (define gx#core-expand1
    (lambda (_stx4092_)
      (let ((_step4094_
             (lambda (_hd4131_)
               (let ((_bind4133_ (gx#resolve-identifier__0 _hd4131_)))
                 (if (##structure-instance-of?
                      _bind4133_
                      'gx#runtime-binding::t)
                     _stx4092_
                     (if (##structure-direct-instance-of?
                          _bind4133_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind4133_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx4092_)
                         (if (not _bind4133_)
                             (begin
                               (if (let ((_$e4135_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e4135_
                                         _$e4135_
                                         (let ((_$e4138_
                                                (gx#core-context-rebind?__opt-lambda2877
                                                 (gx#core-context-top__0))))
                                           (if _$e4138_
                                               _$e4138_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd4131_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx4092_
                                    _hd4131_))
                               _stx4092_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx4092_))))))))
        (let ((_e40954103_ _stx4092_))
          (let ((_E41014107_ (lambda () _stx4092_)))
            (let ((_E40974113_
                   (lambda ()
                     (let ((_hd4111_ _e40954103_))
                       (if (gx#identifier? _hd4111_)
                           (_step4094_ _hd4111_)
                           (_E41014107_))))))
              (let ((_E40964127_
                     (lambda ()
                       (if (gx#stx-pair? _e40954103_)
                           (let ((_e40984117_ (gx#syntax-e _e40954103_)))
                             (let ((_hd40994120_ (##car _e40984117_))
                                   (_tl41004122_ (##cdr _e40984117_)))
                               (let ((_hd4125_ _hd40994120_))
                                 (if (gx#identifier? _hd4125_)
                                     (_step4094_ _hd4125_)
                                     (_E40974113_)))))
                           (_E40974113_)))))
                (let () (_E40964127_)))))))))
  (define gx#core-expand-head
    (lambda (_stx4058_)
      (let ((_stop?4060_
             (lambda (_stx4062_)
               (let ((_e40634070_ _stx4062_))
                 (let ((_E40654074_ (lambda () '#f)))
                   (let ((_E40644088_
                          (lambda ()
                            (if (gx#stx-pair? _e40634070_)
                                (let ((_e40664078_ (gx#syntax-e _e40634070_)))
                                  (let ((_hd40674081_ (##car _e40664078_))
                                        (_tl40684083_ (##cdr _e40664078_)))
                                    (let ((_hd4086_ _hd40674081_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd4086_)
                                          (_E40654074_)))))
                                (_E40654074_)))))
                     (let () (_E40644088_))))))))
        (gx#core-expand*__opt-lambda4140 _stx4058_ _stop?4060_))))
  (begin
    (define gx#core-expand-block__opt-lambda3862
      (lambda (_stx3864_ _expand-special3865_ _begin-form3866_ _expand-e3867_)
        (letrec ((_expand-splice3869_
                  (lambda (_hd4032_ _body4033_ _rest4034_ _r4035_)
                    (if (gx#stx-list? _body4033_)
                        (_K3873_ (gx#stx-foldr cons _rest4034_ _body4033_)
                                 _r4035_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx3864_
                         _hd4032_))))
                 (_expand-cond-expand3870_
                  (lambda (_hd4028_ _rest4029_ _r4030_)
                    (_K3873_ (cons (gx#core-expand-cond-expand% _hd4028_)
                                   _rest4029_)
                             _r4030_)))
                 (_expand-include3871_
                  (lambda (_hd3977_ _rest3978_ _r3979_)
                    (let ((_e39803990_ _hd3977_))
                      (let ((_E39823994_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e39803990_))))
                        (let ((_E39814024_
                               (lambda ()
                                 (if (gx#stx-pair? _e39803990_)
                                     (let ((_e39833998_
                                            (gx#syntax-e _e39803990_)))
                                       (let ((_hd39844001_ (##car _e39833998_))
                                             (_tl39854003_
                                              (##cdr _e39833998_)))
                                         (if (gx#stx-pair? _tl39854003_)
                                             (let ((_e39864006_
                                                    (gx#syntax-e
                                                     _tl39854003_)))
                                               (let ((_hd39874009_
                                                      (##car _e39864006_))
                                                     (_tl39884011_
                                                      (##cdr _e39864006_)))
                                                 (let ((_path4014_
                                                        _hd39874009_))
                                                   (if (gx#stx-null?
                                                        _tl39884011_)
                                                       (if (gx#stx-string?
                                                            _path4014_)
                                                           (let ((_rpath4016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda2725
                           _path4014_
                           (gx#stx-source _hd3977_))))
                     (let ((_block4018_
                            (gx#core-expand-include%__opt-lambda3611
                             _hd3977_
                             _rpath4016_)))
                       (let ((_rbody4021_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda3862
                                  _block4018_
                                  _expand-special3865_
                                  '#f
                                  _expand-e3867_))
                               gx#current-expander-path
                               (cons _rpath4016_ (gx#current-expander-path)))))
                         (let ()
                           (_K3873_ _rest3978_
                                    (foldr cons _r3979_ _rbody4021_))))))
                   (_E39823994_))
               (_E39823994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E39823994_))))
                                     (_E39823994_)))))
                          (let () (_E39814024_)))))))
                 (_expand-expression3872_
                  (lambda (_hd3973_ _rest3974_ _r3975_)
                    (_K3873_ _rest3974_
                             (cons (_expand-e3867_ _hd3973_) _r3975_))))
                 (_K3873_ (lambda (_rest3903_ _r3904_)
                            (let ((_e39053912_ _rest3903_))
                              (let ((_E39073916_
                                     (lambda ()
                                       (if _begin-form3866_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form3866_
                                             (reverse _r3904_))
                                            (gx#stx-source _stx3864_))
                                           _r3904_))))
                                (let ((_E39063969_
                                       (lambda ()
                                         (if (gx#stx-pair? _e39053912_)
                                             (let ((_e39083920_
                                                    (gx#syntax-e _e39053912_)))
                                               (let ((_hd39093923_
                                                      (##car _e39083920_))
                                                     (_tl39103925_
                                                      (##cdr _e39083920_)))
                                                 (let ((_hd3928_ _hd39093923_))
                                                   (let ((_rest3930_
                                                          _tl39103925_))
                                                     (if '#t
                                                         (let ((_hd3932_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3928_)))
                   (let ((_e39333940_ _hd3932_))
                     (let ((_E39353944_
                            (lambda ()
                              (_expand-expression3872_
                               _hd3932_
                               _rest3930_
                               _r3904_))))
                       (let ((_E39343965_
                              (lambda ()
                                (if (gx#stx-pair? _e39333940_)
                                    (let ((_e39363948_
                                           (gx#syntax-e _e39333940_)))
                                      (let ((_hd39373951_ (##car _e39363948_))
                                            (_tl39383953_ (##cdr _e39363948_)))
                                        (let ((_form3956_ _hd39373951_))
                                          (let ((_body3958_ _tl39383953_))
                                            (if '#t
                                                (let ((_bind3960_
                                                       (if (gx#identifier?
                                                            _form3956_)
                                                           (gx#resolve-identifier__0
                                                            _form3956_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind3960_)
                                                      (let ((_$e3962_
                                                             (##structure-ref
                                                              _bind3960_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e3962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice3869_
                     _hd3932_
                     _body3958_
                     _rest3930_
                     _r3904_)
                    (if (eq? _$e3962_ '%#cond-expand)
                        (_expand-cond-expand3870_ _hd3932_ _rest3930_ _r3904_)
                        (if (eq? _$e3962_ '%#include)
                            (_expand-include3871_ _hd3932_ _rest3930_ _r3904_)
                            (_expand-special3865_
                             _hd3932_
                             _K3873_
                             _rest3930_
                             _r3904_)))))
              (_expand-expression3872_ _hd3932_ _rest3930_ _r3904_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E39353944_))))))
                                    (_E39353944_)))))
                         (let () (_E39343965_))))))
                 (_E39073916_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E39073916_)))))
                                  (let () (_E39063969_))))))))
          (let ((_e38743881_ _stx3864_))
            (let ((_E38763885_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e38743881_))))
              (let ((_E38753899_
                     (lambda ()
                       (if (gx#stx-pair? _e38743881_)
                           (let ((_e38773889_ (gx#syntax-e _e38743881_)))
                             (let ((_hd38783892_ (##car _e38773889_))
                                   (_tl38793894_ (##cdr _e38773889_)))
                               (let ((_body3897_ _tl38793894_))
                                 (if (gx#stx-list? _body3897_)
                                     (_K3873_ _body3897_ '())
                                     (_E38763885_)))))
                           (_E38763885_)))))
                (let () (_E38753899_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx4040_ _expand-special4041_)
          (let ((_begin-form4043_ '%#begin))
            (let ((_expand-e4045_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda3862
               _stx4040_
               _expand-special4041_
               _begin-form4043_
               _expand-e4045_)))))
      (define gx#core-expand-block__1
        (lambda (_stx4047_ _expand-special4048_ _begin-form4049_)
          (let ((_expand-e4051_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda3862
             _stx4047_
             _expand-special4048_
             _begin-form4049_
             _expand-e4051_))))
      (define gx#core-expand-block
        (lambda _g4447_
          (let ((_g4446_ (length _g4447_)))
            (cond ((fx= _g4446_ 2) (apply gx#core-expand-block__0 _g4447_))
                  ((fx= _g4446_ 3) (apply gx#core-expand-block__1 _g4447_))
                  ((fx= _g4446_ 4)
                   (apply gx#core-expand-block__opt-lambda3862 _g4447_))
                  (else (error "No clause matching arguments" _g4447_))))))))
  (define gx#core-expand-block*
    (lambda (_stx3812_ _expand-special3813_)
      (let ((_g38143825_
             (gx#core-expand-block__1 _stx3812_ _expand-special3813_ '#f)))
        (let ((_E38183829_
               (lambda () (error '"No clause matching" _g38143825_))))
          (let ((_try-match38173840_
                 (lambda ()
                   (let ((_K38193835_
                          (lambda (_body3833_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body3833_))
                             (gx#stx-source _stx3812_)))))
                     (let ((_body3838_ _g38143825_))
                       (_K38193835_ _body3838_))))))
            (let ((_try-match38163856_
                   (lambda ()
                     (let ((_K38203846_ (lambda (_expr3844_) _expr3844_)))
                       (if (##pair? _g38143825_)
                           (let ((_hd38213849_ (##car _g38143825_))
                                 (_tl38223851_ (##cdr _g38143825_)))
                             (let ((_expr3854_ _hd38213849_))
                               (if (##null? _tl38223851_)
                                   (_K38203846_ _expr3854_)
                                   (_try-match38173840_))))
                           (_try-match38173840_))))))
              (let ((_K38233860_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx3812_))))
                (if (##null? _g38143825_)
                    (_K38233860_)
                    (_try-match38163856_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx3670_)
      (letrec ((_satisfied?3672_
                (lambda (_condition3770_)
                  (let ((_e37713779_ _condition3770_))
                    (let ((_E37743783_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e37713779_))))
                      (let ((_E37733802_
                             (lambda ()
                               (if (gx#stx-pair? _e37713779_)
                                   (let ((_e37753787_
                                          (gx#syntax-e _e37713779_)))
                                     (let ((_hd37763790_ (##car _e37753787_))
                                           (_tl37773792_ (##cdr _e37753787_)))
                                       (let ((_combinator3795_ _hd37763790_))
                                         (let ((_body3797_ _tl37773792_))
                                           (if (gx#stx-list? _body3797_)
                                               (let ((_$e3799_
                                                      (gx#stx-e
                                                       _combinator3795_)))
                                                 (if (eq? _$e3799_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?3672_
                                                           _body3797_))
                                                     (if (eq? _$e3799_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?3672_
                                                          _body3797_)
                                                         (if (eq? _$e3799_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?3672_
                                                              _body3797_)
                                                             (if (eq? _$e3799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body3797_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx3670_
                          _combinator3795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E37743783_))))))
                                   (_E37743783_)))))
                        (let ((_E37723808_
                               (lambda ()
                                 (let ((_id3806_ _e37713779_))
                                   (if (gx#identifier? _id3806_)
                                       (gx#core-bound-identifier?__opt-lambda2815
                                        _id3806_
                                        gx#feature-binding?)
                                       (_E37733802_))))))
                          (let () (_E37723808_))))))))
               (_loop3673_
                (lambda (_rest3703_)
                  (let ((_e37043712_ _rest3703_))
                    (let ((_E37103716_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e37043712_))))
                      (let ((_E37063720_
                             (lambda ()
                               (if (gx#stx-null? _e37043712_)
                                   (if '#t '() (_E37103716_))
                                   (_E37103716_)))))
                        (let ((_E37053766_
                               (lambda ()
                                 (if (gx#stx-pair? _e37043712_)
                                     (let ((_e37073724_
                                            (gx#syntax-e _e37043712_)))
                                       (let ((_hd37083727_ (##car _e37073724_))
                                             (_tl37093729_
                                              (##cdr _e37073724_)))
                                         (let ((_hd3732_ _hd37083727_))
                                           (let ((_rest3734_ _tl37093729_))
                                             (if '#t
                                                 (let ((_e37353742_ _hd3732_))
                                                   (let ((_E37373746_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e37353742_))))
                                                     (let ((_E37363762_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e37353742_)
                          (let ((_e37383750_ (gx#syntax-e _e37353742_)))
                            (let ((_hd37393753_ (##car _e37383750_))
                                  (_tl37403755_ (##cdr _e37383750_)))
                              (let ((_condition3758_ _hd37393753_))
                                (let ((_body3760_ _tl37403755_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition3758_ 'else)
                                          (if (gx#stx-null? _rest3734_)
                                              _body3760_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx3670_
                                               _hd3732_))
                                          (if (_satisfied?3672_
                                               _condition3758_)
                                              _body3760_
                                              (_loop3673_ _rest3734_)))
                                      (_E37373746_))))))
                          (_E37373746_)))))
               (let () (_E37363762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E37063720_))))))
                                     (_E37063720_)))))
                          (let () (_E37053766_)))))))))
        (let ((_e36743681_ _stx3670_))
          (let ((_E36763685_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e36743681_))))
            (let ((_E36753699_
                   (lambda ()
                     (if (gx#stx-pair? _e36743681_)
                         (let ((_e36773689_ (gx#syntax-e _e36743681_)))
                           (let ((_hd36783692_ (##car _e36773689_))
                                 (_tl36793694_ (##cdr _e36773689_)))
                             (let ((_clauses3697_ _tl36793694_))
                               (if (gx#stx-list? _clauses3697_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop3673_ _clauses3697_))
                                   (_E36763685_)))))
                         (_E36763685_)))))
              (let () (_E36753699_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda3611
      (lambda (_stx3613_ _rpath3614_)
        (let ((_e36153625_ _stx3613_))
          (let ((_E36173629_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e36153625_))))
            (let ((_E36163656_
                   (lambda ()
                     (if (gx#stx-pair? _e36153625_)
                         (let ((_e36183633_ (gx#syntax-e _e36153625_)))
                           (let ((_hd36193636_ (##car _e36183633_))
                                 (_tl36203638_ (##cdr _e36183633_)))
                             (if (gx#stx-pair? _tl36203638_)
                                 (let ((_e36213641_
                                        (gx#syntax-e _tl36203638_)))
                                   (let ((_hd36223644_ (##car _e36213641_))
                                         (_tl36233646_ (##cdr _e36213641_)))
                                     (let ((_path3649_ _hd36223644_))
                                       (if (gx#stx-null? _tl36233646_)
                                           (if (gx#stx-string? _path3649_)
                                               (let ((_rpath3654_
                                                      (let ((_$e3651_
                                                             _rpath3614_))
                                                        (if _$e3651_
                                                            _$e3651_
                                                            (gx#core-resolve-path__opt-lambda2725
                                                             _path3649_
                                                             (gx#stx-source
                                                              _stx3613_))))))
                                                 (if (member _rpath3654_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx3613_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath3654_))
                                                       (gx#stx-source
                                                        _stx3613_)))))
                                               (_E36173629_))
                                           (_E36173629_)))))
                                 (_E36173629_))))
                         (_E36173629_)))))
              (let () (_E36163656_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx3663_)
          (let ((_rpath3665_ '#f))
            (gx#core-expand-include%__opt-lambda3611 _stx3663_ _rpath3665_))))
      (define gx#core-expand-include%
        (lambda _g4449_
          (let ((_g4448_ (length _g4449_)))
            (cond ((fx= _g4448_ 1) (apply gx#core-expand-include%__0 _g4449_))
                  ((fx= _g4448_ 2)
                   (apply gx#core-expand-include%__opt-lambda3611 _g4449_))
                  (else (error "No clause matching arguments" _g4449_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda3580
      (lambda (_K3582_ _stx3583_ _method3584_)
        (if (procedure? _K3582_)
            (let ((_$e3586_ (gx#stx-source _stx3583_)))
              (if _$e3586_
                  ((lambda (_g35883590_)
                     (gx#stx-wrap-source (_K3582_ _stx3583_) _g35883590_))
                   _$e3586_)
                  (_K3582_ _stx3583_)))
            (let ((_$e3593_ (bound-method-ref _K3582_ _method3584_)))
              (if _$e3593_
                  ((lambda (_g35953597_)
                     (gx#core-apply-expander__opt-lambda3580
                      _g35953597_
                      _stx3583_
                      _method3584_))
                   _$e3593_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx3583_
                   _method3584_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K3603_ _stx3604_)
          (let ((_method3606_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda3580
             _K3603_
             _stx3604_
             _method3606_))))
      (define gx#core-apply-expander
        (lambda _g4451_
          (let ((_g4450_ (length _g4451_)))
            (cond ((fx= _g4450_ 2) (apply gx#core-apply-expander__0 _g4451_))
                  ((fx= _g4450_ 3)
                   (apply gx#core-apply-expander__opt-lambda3580 _g4451_))
                  (else (error "No clause matching arguments" _g4451_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self3578_ _stx3579_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx3579_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self3553_ _stx3554_)
      (let ((_self35553561_ _self3553_))
        (let ((_E35573565_
               (lambda () (error '"No clause matching" _self35553561_))))
          (let ((_K35583570_
                 (lambda (_K3568_)
                   (gx#core-apply-expander__0 _K3568_ _stx3554_))))
            (if (struct-instance? gx#macro-expander::t _self35553561_)
                (let ((_e35593573_ (##vector-ref _self35553561_ '1)))
                  (let ((_K3576_ _e35593573_)) (_K35583570_ _K3576_)))
                (_E35573565_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self3528_ _stx3529_)
      (if (gx#sealed-syntax? _stx3529_)
          _stx3529_
          (let ((_self35303536_ _self3528_))
            (let ((_E35323540_
                   (lambda () (error '"No clause matching" _self35303536_))))
              (let ((_K35333545_
                     (lambda (_K3543_)
                       (gx#core-apply-expander__0 _K3543_ _stx3529_))))
                (if (struct-instance? gx#core-expander::t _self35303536_)
                    (let ((_e35343548_ (##vector-ref _self35303536_ '1)))
                      (let ((_K3551_ _e35343548_)) (_K35333545_ _K3551_)))
                    (_E35323540_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda3510
      (lambda (_self3512_ _stx3513_ _top?3514_)
        (if (_top?3514_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self3512_ _stx3513_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx3513_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self3519_ _stx3520_)
          (let ((_top?3522_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda3510
             _self3519_
             _stx3520_
             _top?3522_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g4453_
          (let ((_g4452_ (length _g4453_)))
            (cond ((fx= _g4452_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g4453_))
                  ((fx= _g4452_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda3510
                          _g4453_))
                  (else (error "No clause matching arguments" _g4453_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self3508_ _stx3509_)
      (gx#top-special-form::apply-macro-expander__opt-lambda3510
       _self3508_
       _stx3509_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self3455_ _stx3456_)
      (let ((_self34573463_ _self3455_))
        (let ((_E34593467_
               (lambda () (error '"No clause matching" _self34573463_))))
          (let ((_K34603500_
                 (lambda (_id3470_)
                   (let ((_e34713478_ _stx3456_))
                     (let ((_E34733482_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e34713478_))))
                       (let ((_E34723496_
                              (lambda ()
                                (if (gx#stx-pair? _e34713478_)
                                    (let ((_e34743486_
                                           (gx#syntax-e _e34713478_)))
                                      (let ((_hd34753489_ (##car _e34743486_))
                                            (_tl34763491_ (##cdr _e34743486_)))
                                        (let ((_body3494_ _tl34763491_))
                                          (if '#t
                                              (gx#core-cons
                                               _id3470_
                                               _body3494_)
                                              (_E34733482_)))))
                                    (_E34733482_)))))
                         (let () (_E34723496_))))))))
            (if (struct-instance? gx#rename-macro-expander::t _self34573463_)
                (let ((_e34613503_ (##vector-ref _self34573463_ '1)))
                  (let ((_id3506_ _e34613503_)) (_K34603500_ _id3506_)))
                (_E34593467_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda3401
      (lambda (_self3403_ _stx3404_ _method3405_)
        (let ((_self34063414_ _self3403_))
          (let ((_E34083418_
                 (lambda () (error '"No clause matching" _self34063414_))))
            (let ((_K34093425_
                   (lambda (_phi3421_ _ctx3422_ _K3423_)
                     (gx#core-apply-user-macro
                      _K3423_
                      _stx3404_
                      _ctx3422_
                      _phi3421_
                      _method3405_))))
              (if (struct-instance? gx#user-expander::t _self34063414_)
                  (let ((_e34103428_ (##vector-ref _self34063414_ '1)))
                    (let ((_K3431_ _e34103428_))
                      (let ((_e34113433_ (##vector-ref _self34063414_ '2)))
                        (let ((_ctx3436_ _e34113433_))
                          (let ((_e34123438_ (##vector-ref _self34063414_ '3)))
                            (let ((_phi3441_ _e34123438_))
                              (_K34093425_ _phi3441_ _ctx3436_ _K3431_)))))))
                  (_E34083418_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self3446_ _stx3447_)
          (let ((_method3449_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda3401
             _self3446_
             _stx3447_
             _method3449_))))
      (define gx#core-apply-user-expander
        (lambda _g4455_
          (let ((_g4454_ (length _g4455_)))
            (cond ((fx= _g4454_ 2)
                   (apply gx#core-apply-user-expander__0 _g4455_))
                  ((fx= _g4454_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda3401 _g4455_))
                  (else (error "No clause matching arguments" _g4455_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K3393_ _stx3394_ _ctx3395_ _phi3396_ _method3397_)
      (let ((_mark3399_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx3395_
              _phi3396_
              _stx3394_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda3580
             _K3393_
             (gx#stx-apply-mark _stx3394_ _mark3399_)
             _method3397_)
            _mark3399_))
         gx#current-expander-marks
         (cons _mark3399_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda3365
      (lambda (_stx3367_ _phi3368_ _ctx3369_)
        ((letrec ((_lp3371_
                   (lambda (_bind3373_)
                     (if (##structure-direct-instance-of?
                          _bind3373_
                          'gx#import-binding::t)
                         (_lp3371_
                          (##structure-ref
                           _bind3373_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind3373_
                              'gx#alias-binding::t)
                             (_lp3371_
                              (gx#core-resolve-identifier__opt-lambda3295
                               (##structure-ref
                                _bind3373_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi3368_
                               _ctx3369_))
                             _bind3373_)))))
           _lp3371_)
         (gx#core-resolve-identifier__opt-lambda3295
          _stx3367_
          _phi3368_
          _ctx3369_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx3378_)
          (let ((_phi3380_ (gx#current-expander-phi)))
            (let ((_ctx3382_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda3365
               _stx3378_
               _phi3380_
               _ctx3382_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx3384_ _phi3385_)
          (let ((_ctx3387_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda3365
             _stx3384_
             _phi3385_
             _ctx3387_))))
      (define gx#resolve-identifier
        (lambda _g4457_
          (let ((_g4456_ (length _g4457_)))
            (cond ((fx= _g4456_ 1) (apply gx#resolve-identifier__0 _g4457_))
                  ((fx= _g4456_ 2) (apply gx#resolve-identifier__1 _g4457_))
                  ((fx= _g4456_ 3)
                   (apply gx#resolve-identifier__opt-lambda3365 _g4457_))
                  (else (error "No clause matching arguments" _g4457_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda3323
      (lambda (_stx3325_ _val3326_ _rebind?3327_ _phi3328_ _ctx3329_)
        (let ((_rebind?3331_
               (if (not _rebind?3327_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?3327_) _rebind?3327_ true))))
          (gx#core-bind!__opt-lambda3085
           (gx#core-identifier-key _stx3325_)
           _val3326_
           _rebind?3331_
           _phi3328_
           _ctx3329_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx3336_ _val3337_)
          (let ((_rebind?3339_ '#f))
            (let ((_phi3341_ (gx#current-expander-phi)))
              (let ((_ctx3343_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda3323
                 _stx3336_
                 _val3337_
                 _rebind?3339_
                 _phi3341_
                 _ctx3343_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx3345_ _val3346_ _rebind?3347_)
          (let ((_phi3349_ (gx#current-expander-phi)))
            (let ((_ctx3351_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda3323
               _stx3345_
               _val3346_
               _rebind?3347_
               _phi3349_
               _ctx3351_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx3353_ _val3354_ _rebind?3355_ _phi3356_)
          (let ((_ctx3358_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda3323
             _stx3353_
             _val3354_
             _rebind?3355_
             _phi3356_
             _ctx3358_))))
      (define gx#bind-identifier!
        (lambda _g4459_
          (let ((_g4458_ (length _g4459_)))
            (cond ((fx= _g4458_ 2) (apply gx#bind-identifier!__0 _g4459_))
                  ((fx= _g4458_ 3) (apply gx#bind-identifier!__1 _g4459_))
                  ((fx= _g4458_ 4) (apply gx#bind-identifier!__2 _g4459_))
                  ((fx= _g4458_ 5)
                   (apply gx#bind-identifier!__opt-lambda3323 _g4459_))
                  (else (error "No clause matching arguments" _g4459_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda3295
      (lambda (_stx3297_ _phi3298_ _ctx3299_)
        ((letrec ((_lp3301_
                   (lambda (_e3303_ _marks3304_)
                     (if (symbol? _e3303_)
                         (gx#core-resolve-binding
                          _e3303_
                          _phi3298_
                          _ctx3299_
                          (reverse _marks3304_))
                         (if (gx#identifier-quote? _e3303_)
                             (gx#core-resolve-binding
                              (##structure-ref _e3303_ '1 AST::t '#f)
                              _phi3298_
                              (##structure-ref
                               _e3303_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e3303_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e3303_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e3303_ '1 AST::t '#f)
                                  _phi3298_
                                  _ctx3299_
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e3303_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks3304_))
                                 (if (##structure-direct-instance-of?
                                      _e3303_
                                      'gx#syntax-wrap::t)
                                     (_lp3301_
                                      (##structure-ref _e3303_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e3303_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks3304_))
                                     (if (##structure-instance-of?
                                          _e3303_
                                          'gerbil#AST::t)
                                         (_lp3301_
                                          (##structure-ref
                                           _e3303_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks3304_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx3297_)))))))))
           _lp3301_)
         _stx3297_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx3309_)
          (let ((_phi3311_ (gx#current-expander-phi)))
            (let ((_ctx3313_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda3295
               _stx3309_
               _phi3311_
               _ctx3313_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx3315_ _phi3316_)
          (let ((_ctx3318_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda3295
             _stx3315_
             _phi3316_
             _ctx3318_))))
      (define gx#core-resolve-identifier
        (lambda _g4461_
          (let ((_g4460_ (length _g4461_)))
            (cond ((fx= _g4460_ 1)
                   (apply gx#core-resolve-identifier__0 _g4461_))
                  ((fx= _g4460_ 2)
                   (apply gx#core-resolve-identifier__1 _g4461_))
                  ((fx= _g4460_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda3295 _g4461_))
                  (else (error "No clause matching arguments" _g4461_))))))))
  (define gx#core-resolve-binding
    (lambda (_id3211_ _phi3212_ _ctx3213_ _marks3214_)
      (let ((_resolve3216_
             (lambda (_ctx3284_ _src-phi3285_ _key3286_)
               ((letrec ((_lp3288_
                          (lambda (_ctx3290_ _dphi3291_)
                            (let ((_$e3293_
                                   (gx#core-context-resolve
                                    _ctx3290_
                                    _key3286_)))
                              (if _$e3293_
                                  (values _$e3293_)
                                  (if (fxzero? _dphi3291_)
                                      '#f
                                      (if (fxpositive? _dphi3291_)
                                          (_lp3288_
                                           (gx#core-context-shift
                                            _ctx3290_
                                            '-1)
                                           (fx1- _dphi3291_))
                                          (if (fxnegative? _dphi3291_)
                                              (_lp3288_
                                               (gx#core-context-shift
                                                _ctx3290_
                                                '1)
                                               (fx1+ _dphi3291_))
                                              '#!void))))))))
                  _lp3288_)
                (gx#core-context-shift _ctx3284_ _phi3212_)
                (fx- _phi3212_ _src-phi3285_)))))
        ((letrec ((_lp3218_
                   (lambda (_ctx3220_ _src-phi3221_ _rest3222_)
                     (let ((_rest32233231_ _rest3222_))
                       (let ((_E32263235_
                              (lambda ()
                                (error '"No clause matching" _rest32233231_))))
                         (let ((_else32253239_
                                (lambda ()
                                  (_resolve3216_
                                   _ctx3220_
                                   _src-phi3221_
                                   _id3211_))))
                           (let ((_K32273272_
                                  (lambda (_rest3242_ _hd3243_)
                                    (let ((_hd32443250_ _hd3243_))
                                      (let ((_E32463254_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd32443250_))))
                                        (let ((_K32473264_
                                               (lambda (_subst3257_)
                                                 (let ((_$e3261_
                                                        (let ((_key3259_
                                                               (if _subst3257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (hash-get _subst3257_ _id3211_)
                           '#f)))
                  (if _key3259_
                      (_resolve3216_ _ctx3220_ _src-phi3221_ _key3259_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e3261_
                                                       _$e3261_
                                                       (_lp3218_
                                                        (##structure-ref
                                                         _hd3243_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd3243_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest3242_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd32443250_)
                                              (let ((_e32483267_
                                                     (##vector-ref
                                                      _hd32443250_
                                                      '1)))
                                                (let ((_subst3270_
                                                       _e32483267_))
                                                  (_K32473264_ _subst3270_)))
                                              (_E32463254_))))))))
                             (if (##pair? _rest32233231_)
                                 (let ((_hd32283275_ (##car _rest32233231_))
                                       (_tl32293277_ (##cdr _rest32233231_)))
                                   (let ((_hd3280_ _hd32283275_))
                                     (let ((_rest3282_ _tl32293277_))
                                       (_K32273272_ _rest3282_ _hd3280_))))
                                 (_else32253239_)))))))))
           _lp3218_)
         _ctx3213_
         _phi3212_
         _marks3214_))))
  (begin
    (define gx#core-bind!__opt-lambda3085
      (lambda (_key3087_ _val3088_ _rebind?3089_ _phi3090_ _ctx3091_)
        (let ((_update-binding3093_
               (lambda (_xval3164_)
                 (if (let ((_$e3166_
                            (_rebind?3089_ _ctx3091_ _xval3164_ _val3088_)))
                       (if _$e3166_
                           _$e3166_
                           (let ((_$e3172_
                                  (if (##structure-direct-instance-of?
                                       _xval3164_
                                       'gx#import-binding::t)
                                      (let ((_$e3169_
                                             (##structure-ref
                                              _xval3164_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e3169_
                                            _$e3169_
                                            (if (##structure-instance-of?
                                                 _val3088_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val3088_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e3172_
                                 _$e3172_
                                 (if (##structure-instance-of?
                                      _xval3164_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val3088_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val3088_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval3164_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val3088_
                     (if (if (##structure-direct-instance-of?
                              _val3088_
                              'gx#import-binding::t)
                             (let ((_$e3175_
                                    (##structure-ref
                                     _val3088_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e3175_
                                   _$e3175_
                                   (if (##structure-instance-of?
                                        _xval3164_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val3088_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval3164_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval3164_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key3087_
                          _xval3164_
                          _val3088_))))))
          (let ((_gensubst3094_
                 (lambda (_subst3159_ _id3160_)
                   (let ((_eid3162_
                          (gensym (if (uninterned-symbol? _id3160_)
                                      '%
                                      _id3160_))))
                     (begin
                       (hash-put! _subst3159_ _id3160_ _eid3162_)
                       _eid3162_)))))
            (let ((_subst!3095_
                   (lambda (_key3097_)
                     (let ((_key30983106_ _key3097_))
                       (let ((_E31013110_
                              (lambda ()
                                (error '"No clause matching" _key30983106_))))
                         (let ((_else31003114_ (lambda () _key3097_)))
                           (let ((_K31023147_
                                  (lambda (_mark3117_ _id3118_)
                                    (let ((_mark31193125_ _mark3117_))
                                      (let ((_E31213129_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark31193125_))))
                                        (let ((_K31223139_
                                               (lambda (_subst3132_)
                                                 (if (not _subst3132_)
                                                     (let ((_subst3134_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark3117_
                                                          _subst3134_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst3094_
                                                          _subst3134_
                                                          _id3118_)))
                                                     (let ((_$e3136_
                                                            (hash-get
                                                             _subst3132_
                                                             _id3118_)))
                                                       (if _$e3136_
                                                           (values _$e3136_)
                                                           (_gensubst3094_
                                                            _subst3132_
                                                            _id3118_)))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _mark31193125_)
                                              (let ((_e31233142_
                                                     (##vector-ref
                                                      _mark31193125_
                                                      '1)))
                                                (let ((_subst3145_
                                                       _e31233142_))
                                                  (_K31223139_ _subst3145_)))
                                              (_E31213129_))))))))
                             (if (##pair? _key30983106_)
                                 (let ((_hd31033150_ (##car _key30983106_))
                                       (_tl31043152_ (##cdr _key30983106_)))
                                   (let ((_id3155_ _hd31033150_))
                                     (let ((_mark3157_ _tl31043152_))
                                       (_K31023147_ _mark3157_ _id3155_))))
                                 (_else31003114_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx3091_ _phi3090_)
               (_subst!3095_ _key3087_)
               _val3088_
               _update-binding3093_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key3181_ _val3182_)
          (let ((_rebind?3184_ false))
            (let ((_phi3186_ (gx#current-expander-phi)))
              (let ((_ctx3188_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda3085
                 _key3181_
                 _val3182_
                 _rebind?3184_
                 _phi3186_
                 _ctx3188_))))))
      (define gx#core-bind!__1
        (lambda (_key3190_ _val3191_ _rebind?3192_)
          (let ((_phi3194_ (gx#current-expander-phi)))
            (let ((_ctx3196_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda3085
               _key3190_
               _val3191_
               _rebind?3192_
               _phi3194_
               _ctx3196_)))))
      (define gx#core-bind!__2
        (lambda (_key3198_ _val3199_ _rebind?3200_ _phi3201_)
          (let ((_ctx3203_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda3085
             _key3198_
             _val3199_
             _rebind?3200_
             _phi3201_
             _ctx3203_))))
      (define gx#core-bind!
        (lambda _g4463_
          (let ((_g4462_ (length _g4463_)))
            (cond ((fx= _g4462_ 2) (apply gx#core-bind!__0 _g4463_))
                  ((fx= _g4462_ 3) (apply gx#core-bind!__1 _g4463_))
                  ((fx= _g4462_ 4) (apply gx#core-bind!__2 _g4463_))
                  ((fx= _g4462_ 5)
                   (apply gx#core-bind!__opt-lambda3085 _g4463_))
                  (else (error "No clause matching arguments" _g4463_))))))))
  (define gx#core-identifier-key
    (lambda (_stx3017_)
      (if (symbol? _stx3017_)
          (let ((_g30183026_ (gx#current-expander-marks)))
            (let ((_E30213030_
                   (lambda () (error '"No clause matching" _g30183026_))))
              (let ((_else30203034_ (lambda () _stx3017_)))
                (let ((_K30223039_
                       (lambda (_hd3037_) (cons _stx3017_ _hd3037_))))
                  (if (##pair? _g30183026_)
                      (let ((_hd30233042_ (##car _g30183026_))
                            (_tl30243044_ (##cdr _g30183026_)))
                        (let ((_hd3047_ _hd30233042_)) (_K30223039_ _hd3047_)))
                      (_else30203034_))))))
          (if (gx#identifier? _stx3017_)
              (let ((_id3049_ (gx#syntax-local-unwrap _stx3017_)))
                (let ((_eid3051_ (gx#stx-e _id3049_)))
                  (let ((_marks3053_ (gx#stx-identifier-marks _id3049_)))
                    (let ()
                      (let ((_marks30553063_ _marks3053_))
                        (let ((_E30583067_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks30553063_))))
                          (let ((_else30573071_ (lambda () _eid3051_)))
                            (let ((_K30593076_
                                   (lambda (_hd3074_)
                                     (cons _eid3051_ _hd3074_))))
                              (if (##pair? _marks30553063_)
                                  (let ((_hd30603079_ (##car _marks30553063_))
                                        (_tl30613081_ (##cdr _marks30553063_)))
                                    (let ((_hd3084_ _hd30603079_))
                                      (_K30593076_ _hd3084_)))
                                  (_else30573071_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx3017_)))))
  (define gx#core-context-shift
    (lambda (_ctx2962_ _phi2963_)
      (let ((_make-phi2965_
             (lambda (_super3015_)
               (let ((__obj4434 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda4396
                    __obj4434
                    (gensym 'phi)
                    _super3015_)
                   __obj4434)))))
        (let ((_make-phi/up2966_
               (lambda (_ctx3010_ _super3011_)
                 (let ((_ctx+13013_ (_make-phi2965_ _super3011_)))
                   (begin
                     (##structure-set!
                      _ctx3010_
                      _ctx+13013_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+13013_
                      _ctx3010_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+13013_)))))
          (let ((_make-phi/down2967_
                 (lambda (_ctx3005_ _super3006_)
                   (let ((_ctx-13008_ (_make-phi2965_ _super3006_)))
                     (begin
                       (##structure-set!
                        _ctx-13008_
                        _ctx3005_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx3005_
                        _ctx-13008_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-13008_)))))
            (let ((_shift2968_
                   (lambda (_ctx2989_
                            _delta2990_
                            _make-delta-context2991_
                            _phi2992_
                            _K2993_)
                     (let ((_$e2995_
                            (##structure-ref
                             _ctx2989_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e2995_
                           ((lambda (_super2998_)
                              (let ((_super3000_
                                     (_K2993_ _super2998_ _delta2990_)))
                                (let ((_ctx+d3002_
                                       (_make-delta-context2991_
                                        _ctx2989_
                                        _super3000_)))
                                  (let ()
                                    (_K2993_ _ctx+d3002_
                                             (fx- _phi2992_ _delta2990_))))))
                            _$e2995_)
                           (error '"Bad context" _ctx2989_))))))
              ((letrec ((_K2970_ (lambda (_ctx2972_ _phi2973_)
                                   (if (fxzero? _phi2973_)
                                       _ctx2972_
                                       (if (##structure-instance-of?
                                            _ctx2972_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi2973_)
                                               (let ((_$e2975_
                                                      (##structure-ref
                                                       _ctx2972_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e2975_
                                                     ((lambda (_g29772979_)
                                                        (_K2970_ _g29772979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1- _phi2973_)))
              _$e2975_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2968_
                                                      _ctx2972_
                                                      '1
                                                      _make-phi/up2966_
                                                      _phi2973_
                                                      _K2970_)))
                                               (let ((_$e2982_
                                                      (##structure-ref
                                                       _ctx2972_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e2982_
                                                     ((lambda (_g29842986_)
                                                        (_K2970_ _g29842986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1+ _phi2973_)))
              _$e2982_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2968_
                                                      _ctx2972_
                                                      '-1
                                                      _make-phi/down2967_
                                                      _phi2973_
                                                      _K2970_))))
                                           _ctx2972_)))))
                 _K2970_)
               _ctx2962_
               _phi2963_)))))))
  (define gx#core-context-get
    (lambda (_ctx2959_ _key2960_)
      (hash-get
       (##structure-ref _ctx2959_ '2 gx#expander-context::t '#f)
       _key2960_)))
  (define gx#core-context-put!
    (lambda (_ctx2955_ _key2956_ _val2957_)
      (hash-put!
       (##structure-ref _ctx2955_ '2 gx#expander-context::t '#f)
       _key2956_
       _val2957_)))
  (define gx#core-context-resolve
    (lambda (_ctx2942_ _key2943_)
      ((letrec ((_lp2945_
                 (lambda (_ctx2947_)
                   (let ((_$e2949_ (gx#core-context-get _ctx2947_ _key2943_)))
                     (if _$e2949_
                         (values _$e2949_)
                         (let ((_$e2952_
                                (if (##structure-instance-of?
                                     _ctx2947_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx2947_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e2952_ (_lp2945_ _$e2952_) '#f)))))))
         _lp2945_)
       _ctx2942_)))
  (define gx#core-context-bind!
    (lambda (_ctx2932_ _key2933_ _val2934_ _rebind2935_)
      (let ((_$e2937_ (gx#core-context-get _ctx2932_ _key2933_)))
        (if _$e2937_
            ((lambda (_xval2940_)
               (gx#core-context-put!
                _ctx2932_
                _key2933_
                (_rebind2935_ _xval2940_)))
             _$e2937_)
            (gx#core-context-put! _ctx2932_ _key2933_ _val2934_)))))
  (begin
    (define gx#core-context-top__opt-lambda2908
      (lambda (_ctx2910_ _stop?2911_)
        ((letrec ((_lp2913_
                   (lambda (_ctx2915_)
                     (if (_stop?2911_ _ctx2915_)
                         _ctx2915_
                         (if (##structure-instance-of?
                              _ctx2915_
                              'gx#context-phi::t)
                             (_lp2913_
                              (##structure-ref
                               _ctx2915_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp2913_)
         _ctx2910_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx2921_ (gx#current-expander-context)))
            (let ((_stop?2923_ gx#top-context?))
              (gx#core-context-top__opt-lambda2908 _ctx2921_ _stop?2923_)))))
      (define gx#core-context-top__1
        (lambda (_ctx2925_)
          (let ((_stop?2927_ gx#top-context?))
            (gx#core-context-top__opt-lambda2908 _ctx2925_ _stop?2927_))))
      (define gx#core-context-top
        (lambda _g4465_
          (let ((_g4464_ (length _g4465_)))
            (cond ((fx= _g4464_ 0) (apply gx#core-context-top__0 _g4465_))
                  ((fx= _g4464_ 1) (apply gx#core-context-top__1 _g4465_))
                  ((fx= _g4464_ 2)
                   (apply gx#core-context-top__opt-lambda2908 _g4465_))
                  (else (error "No clause matching arguments" _g4465_))))))))
  (begin
    (define gx#core-context-root__opt-lambda2893
      (lambda (_ctx2895_)
        ((letrec ((_lp2897_
                   (lambda (_ctx2899_)
                     (if (##structure-instance-of?
                          _ctx2899_
                          'gx#context-phi::t)
                         (_lp2897_
                          (##structure-ref _ctx2899_ '3 gx#phi-context::t '#f))
                         _ctx2899_))))
           _lp2897_)
         _ctx2895_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx2905_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda2893 _ctx2905_))))
      (define gx#core-context-root
        (lambda _g4467_
          (let ((_g4466_ (length _g4467_)))
            (cond ((fx= _g4466_ 0) (apply gx#core-context-root__0 _g4467_))
                  ((fx= _g4466_ 1)
                   (apply gx#core-context-root__opt-lambda2893 _g4467_))
                  (else (error "No clause matching arguments" _g4467_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda2877
      (lambda (_ctx2879_ . __28762880_)
        (if (##structure-instance-of? _ctx2879_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx2879_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx2879_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx2887_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda2877 _ctx2887_))))
      (define gx#core-context-rebind?
        (lambda _g4469_
          (let ((_g4468_ (length _g4469_)))
            (cond ((fx= _g4468_ 0) (apply gx#core-context-rebind?__0 _g4469_))
                  ((fx= _g4468_ 1)
                   (apply gx#core-context-rebind?__opt-lambda2877 _g4469_))
                  ((fx>= _g4468_ 1)
                   (apply gx#core-context-rebind?__opt-lambda2877 _g4469_))
                  (else (error "No clause matching arguments" _g4469_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda2860
      (lambda (_ctx2862_)
        (let ((_$e2864_ (gx#core-context-top__1 _ctx2862_)))
          (if _$e2864_
              ((lambda (_ctx2867_)
                 (if (##structure-instance-of? _ctx2867_ 'gx#module-context::t)
                     (##structure-ref _ctx2867_ '6 gx#module-context::t '#f)
                     '#f))
               _$e2864_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx2873_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda2860 _ctx2873_))))
      (define gx#core-context-namespace
        (lambda _g4471_
          (let ((_g4470_ (length _g4471_)))
            (cond ((fx= _g4470_ 0)
                   (apply gx#core-context-namespace__0 _g4471_))
                  ((fx= _g4470_ 1)
                   (apply gx#core-context-namespace__opt-lambda2860 _g4471_))
                  (else (error "No clause matching arguments" _g4471_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda2846
      (lambda (_bind2848_ _is?2849_)
        (if (##structure-direct-instance-of? _bind2848_ 'gx#syntax-binding::t)
            (_is?2849_
             (##structure-ref _bind2848_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind2854_)
          (let ((_is?2856_ gx#expander?))
            (gx#expander-binding?__opt-lambda2846 _bind2854_ _is?2856_))))
      (define gx#expander-binding?
        (lambda _g4473_
          (let ((_g4472_ (length _g4473_)))
            (cond ((fx= _g4472_ 1) (apply gx#expander-binding?__0 _g4473_))
                  ((fx= _g4472_ 2)
                   (apply gx#expander-binding?__opt-lambda2846 _g4473_))
                  (else (error "No clause matching arguments" _g4473_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind2845_)
      (gx#expander-binding?__opt-lambda2846 _bind2845_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind2843_)
      (gx#expander-binding?__opt-lambda2846 _bind2843_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind2841_)
      (gx#expander-binding?__opt-lambda2846 _bind2841_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind2832_)
      (let ((_feature?2834_
             (lambda (_e2836_)
               (let ((_$e2838_
                      (##structure-instance-of?
                       _e2836_
                       'gx#feature-expander::t)))
                 (if _$e2838_
                     _$e2838_
                     (##structure-instance-of?
                      _e2836_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda2846 _bind2832_ _feature?2834_))))
  (define gx#private-feature-binding?
    (lambda (_bind2830_)
      (gx#expander-binding?__opt-lambda2846
       _bind2830_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda2815
      (lambda (_id2817_ _bound?2818_)
        (if (gx#identifier? _id2817_)
            (_bound?2818_ (gx#resolve-identifier__0 _id2817_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id2823_)
          (let ((_bound?2825_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda2815
             _id2823_
             _bound?2825_))))
      (define gx#core-bound-identifier?
        (lambda _g4475_
          (let ((_g4474_ (length _g4475_)))
            (cond ((fx= _g4474_ 1)
                   (apply gx#core-bound-identifier?__0 _g4475_))
                  ((fx= _g4474_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda2815 _g4475_))
                  (else (error "No clause matching arguments" _g4475_))))))))
  (define gx#core-identifier=?
    (lambda (_x2807_ _y2808_)
      (let ((_y=?2810_
             (lambda (_xid2814_)
               ((if (list? _y2808_) memq eq?) _xid2814_ _y2808_))))
        (let ((_bind2812_ (gx#resolve-identifier__0 _x2807_)))
          (if (##structure-instance-of? _bind2812_ 'gx#binding::t)
              (_y=?2810_ (##structure-ref _bind2812_ '1 gx#binding::t '#f))
              (_y=?2810_ (gx#stx-e _x2807_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e2805_)
      (if (interned-symbol? _e2805_)
          (string-index (symbol->string _e2805_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda2761
      (lambda (_stx2763_ _src2764_ _ctx2765_ _marks2766_)
        (if (gx#sealed-syntax? _stx2763_)
            (gx#stx-unwrap__0 _stx2763_)
            (if (gx#identifier? _stx2763_)
                (let ((_id2768_ (gx#syntax-local-unwrap _stx2763_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id2768_)
                   (let ((_$e2770_ (gx#stx-source _id2768_)))
                     (if _$e2770_ _$e2770_ _src2764_))
                   _ctx2765_
                   (##structure-ref _id2768_ '3 gx#identifier-wrap::t '#f)))
                (if (gx#stx-datum? _stx2763_)
                    (gx#stx-e _stx2763_)
                    (##structure
                     gx#syntax-quote::t
                     _stx2763_
                     (let ((_$e2773_ (gx#stx-source _stx2763_)))
                       (if _$e2773_ _$e2773_ _src2764_))
                     _ctx2765_
                     (reverse _marks2766_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx2779_)
          (let ((_src2781_ '#f))
            (let ((_ctx2783_ (gx#current-expander-context)))
              (let ((_marks2785_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda2761
                 _stx2779_
                 _src2781_
                 _ctx2783_
                 _marks2785_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx2787_ _src2788_)
          (let ((_ctx2790_ (gx#current-expander-context)))
            (let ((_marks2792_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda2761
               _stx2787_
               _src2788_
               _ctx2790_
               _marks2792_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx2794_ _src2795_ _ctx2796_)
          (let ((_marks2798_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda2761
             _stx2794_
             _src2795_
             _ctx2796_
             _marks2798_))))
      (define gx#core-quote-syntax
        (lambda _g4477_
          (let ((_g4476_ (length _g4477_)))
            (cond ((fx= _g4476_ 1) (apply gx#core-quote-syntax__0 _g4477_))
                  ((fx= _g4476_ 2) (apply gx#core-quote-syntax__1 _g4477_))
                  ((fx= _g4476_ 3) (apply gx#core-quote-syntax__2 _g4477_))
                  ((fx= _g4476_ 4)
                   (apply gx#core-quote-syntax__opt-lambda2761 _g4477_))
                  (else (error "No clause matching arguments" _g4477_))))))))
  (define gx#core-cons
    (lambda (_hd2759_ _tl2760_)
      (cons (gx#core-quote-syntax__0 _hd2759_) _tl2760_)))
  (define gx#core-list
    (lambda (_hd2756_ . _rest2757_)
      (cons (gx#core-quote-syntax__0 _hd2756_) _rest2757_)))
  (define gx#core-cons*
    (lambda (_hd2753_ . _rest2754_)
      (apply cons* (gx#core-quote-syntax__0 _hd2753_) _rest2754_)))
  (begin
    (define gx#core-resolve-path__opt-lambda2725
      (lambda (_stx-path2727_ _rel2728_)
        (let ((_path2740_ (gx#stx-e _stx-path2727_))
              (_reldir2741_
               ((letrec ((_lp2730_
                          (lambda (_relsrc2732_)
                            (if (##structure-instance-of?
                                 _relsrc2732_
                                 'gerbil#AST::t)
                                (_lp2730_
                                 (let ((_$e2734_ (gx#stx-source _relsrc2732_)))
                                   (if _$e2734_
                                       _$e2734_
                                       (gx#stx-e _relsrc2732_))))
                                (if (source-location-path? _relsrc2732_)
                                    (path-directory
                                     (source-location-path _relsrc2732_))
                                    (if (string? _relsrc2732_)
                                        (path-directory _relsrc2732_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp2730_)
                (let ((_$e2737_ (gx#stx-source _stx-path2727_)))
                  (if _$e2737_ _$e2737_ _rel2728_)))))
          (path-expand _path2740_ (path-normalize _reldir2741_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path2746_)
          (let ((_rel2748_ '#f))
            (gx#core-resolve-path__opt-lambda2725 _stx-path2746_ _rel2748_))))
      (define gx#core-resolve-path
        (lambda _g4479_
          (let ((_g4478_ (length _g4479_)))
            (cond ((fx= _g4478_ 1) (apply gx#core-resolve-path__0 _g4479_))
                  ((fx= _g4478_ 2)
                   (apply gx#core-resolve-path__opt-lambda2725 _g4479_))
                  (else (error "No clause matching arguments" _g4479_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx2724_) (gx#stx-rewrap _stx2724_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx2722_)
      (gx#stx-unwrap__opt-lambda2535 _stx2722_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx2690_)
      (let ((_g26912699_ (gx#current-expander-marks)))
        (let ((_E26942703_
               (lambda () (error '"No clause matching" _g26912699_))))
          (let ((_else26932707_ (lambda () _stx2690_)))
            (let ((_K26952712_
                   (lambda (_hd2710_) (gx#stx-apply-mark _stx2690_ _hd2710_))))
              (if (##pair? _g26912699_)
                  (let ((_hd26962715_ (##car _g26912699_))
                        (_tl26972717_ (##cdr _g26912699_)))
                    (let ((_hd2720_ _hd26962715_)) (_K26952712_ _hd2720_)))
                  (_else26932707_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda2673
      (lambda (_stx2675_ _E2676_)
        (let ((_bind2678_ (gx#resolve-identifier__0 _stx2675_)))
          (if (##structure-direct-instance-of?
               _bind2678_
               'gx#syntax-binding::t)
              (##structure-ref _bind2678_ '4 gx#syntax-binding::t '#f)
              (_E2676_ _stx2675_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx2683_)
          (let ((_E2685_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda2673 _stx2683_ _E2685_))))
      (define gx#syntax-local-e
        (lambda _g4481_
          (let ((_g4480_ (length _g4481_)))
            (cond ((fx= _g4480_ 1) (apply gx#syntax-local-e__0 _g4481_))
                  ((fx= _g4480_ 2)
                   (apply gx#syntax-local-e__opt-lambda2673 _g4481_))
                  (else (error "No clause matching arguments" _g4481_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda2657
      (lambda (_stx2659_ _E2660_)
        (let ((_e2662_ (gx#syntax-local-e__opt-lambda2673 _stx2659_ _E2660_)))
          (if (##structure-instance-of? _e2662_ 'gx#expander::t)
              (##structure-ref _e2662_ '1 gx#expander::t '#f)
              _e2662_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx2667_)
          (let ((_E2669_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda2657 _stx2667_ _E2669_))))
      (define gx#syntax-local-value
        (lambda _g4483_
          (let ((_g4482_ (length _g4483_)))
            (cond ((fx= _g4482_ 1) (apply gx#syntax-local-value__0 _g4483_))
                  ((fx= _g4482_ 2)
                   (apply gx#syntax-local-value__opt-lambda2657 _g4483_))
                  (else (error "No clause matching arguments" _g4483_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx2656_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx2656_))))
