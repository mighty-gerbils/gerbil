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
    (lambda _$args4371_
      (apply make-struct-instance gx#expander-context::t _$args4371_)))
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
    (lambda _$args4368_
      (apply make-struct-instance gx#root-context::t _$args4368_)))
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
    (lambda _$args4365_
      (apply make-struct-instance gx#phi-context::t _$args4365_)))
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
    (lambda _$args4362_
      (apply make-struct-instance gx#top-context::t _$args4362_)))
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
    (lambda _$args4359_
      (apply make-struct-instance gx#module-context::t _$args4359_)))
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
    (lambda _$args4356_
      (apply make-struct-instance gx#prelude-context::t _$args4356_)))
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
    (lambda _$args4353_
      (apply make-struct-instance gx#local-context::t _$args4353_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda4335
      (lambda (_self4337_ _id4338_ _super4339_)
        (direct-struct-instance-init!
         _self4337_
         _id4338_
         (make-hash-table-eq)
         _super4339_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self4344_ _id4345_)
          (let ((_super4347_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda4335
             _self4344_
             _id4345_
             _super4347_))))
      (define gx#phi-context:::init!
        (lambda _g4374_
          (let ((_g4373_ (length _g4374_)))
            (cond ((fx= _g4373_ 2)
                   (apply (lambda (_self4344_ _id4345_)
                            (gx#phi-context:::init!__0 _self4344_ _id4345_))
                          _g4374_))
                  ((fx= _g4373_ 3)
                   (apply (lambda (_self4349_ _id4350_ _super4351_)
                            (gx#phi-context:::init!__opt-lambda4335
                             _self4349_
                             _id4350_
                             _super4351_))
                          _g4374_))
                  (else (error "No clause matching arguments" _g4374_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda4321
      (lambda (_self4323_ _super4324_)
        (direct-struct-instance-init!
         _self4323_
         (gensym 'L)
         (make-hash-table-eq)
         _super4324_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self4329_)
          (let ((_super4331_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda4321
             _self4329_
             _super4331_))))
      (define gx#local-context:::init!
        (lambda _g4376_
          (let ((_g4375_ (length _g4376_)))
            (cond ((fx= _g4375_ 1)
                   (apply (lambda (_self4329_)
                            (gx#local-context:::init!__0 _self4329_))
                          _g4376_))
                  ((fx= _g4375_ 2)
                   (apply (lambda (_self4333_ _super4334_)
                            (gx#local-context:::init!__opt-lambda4321
                             _self4333_
                             _super4334_))
                          _g4376_))
                  (else (error "No clause matching arguments" _g4376_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args4319_
      (apply make-struct-instance gx#binding::t _$args4319_)))
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
    (lambda _$args4316_
      (apply make-struct-instance gx#runtime-binding::t _$args4316_)))
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
    (lambda _$args4313_
      (apply make-struct-instance gx#local-binding::t _$args4313_)))
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
    (lambda _$args4310_
      (apply make-struct-instance gx#top-binding::t _$args4310_)))
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
    (lambda _$args4307_
      (apply make-struct-instance gx#module-binding::t _$args4307_)))
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
    (lambda _$args4304_
      (apply make-struct-instance gx#extern-binding::t _$args4304_)))
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
    (lambda _$args4301_
      (apply make-struct-instance gx#syntax-binding::t _$args4301_)))
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
    (lambda _$args4298_
      (apply make-struct-instance gx#import-binding::t _$args4298_)))
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
    (lambda _$args4295_
      (apply make-struct-instance gx#alias-binding::t _$args4295_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args4292_
      (apply make-struct-instance gx#expander::t _$args4292_)))
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
    (lambda _$args4289_
      (apply make-struct-instance gx#core-expander::t _$args4289_)))
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
    (lambda _$args4286_
      (apply make-struct-instance gx#expression-form::t _$args4286_)))
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
    (lambda _$args4283_
      (apply make-struct-instance gx#special-form::t _$args4283_)))
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
    (lambda _$args4280_
      (apply make-struct-instance gx#definition-form::t _$args4280_)))
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
    (lambda _$args4277_
      (apply make-struct-instance gx#top-special-form::t _$args4277_)))
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
    (lambda _$args4274_
      (apply make-struct-instance gx#module-special-form::t _$args4274_)))
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
    (lambda _$args4271_
      (apply make-struct-instance gx#feature-expander::t _$args4271_)))
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
    (lambda _$args4268_
      (apply make-struct-instance gx#private-feature-expander::t _$args4268_)))
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
    (lambda _$args4265_
      (apply make-struct-instance gx#reserved-expander::t _$args4265_)))
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
    (lambda _$args4262_
      (apply make-struct-instance gx#macro-expander::t _$args4262_)))
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
    (lambda _$args4259_
      (apply make-struct-instance gx#rename-macro-expander::t _$args4259_)))
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
    (lambda _$args4256_
      (apply make-struct-instance gx#user-expander::t _$args4256_)))
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
    (lambda _$args4253_
      (apply make-struct-instance gx#expander-mark::t _$args4253_)))
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
    (lambda _$args4250_
      (apply make-struct-instance gx#syntax-error::t _$args4250_)))
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
    (lambda (_where4245_ _message4246_ _stx4247_ . _details4248_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message4246_
              (cons _stx4247_ _details4248_)
              _where4245_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda4230
      (lambda (_stx4232_ _expression?4233_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda4214 _stx4232_ _expression?4233_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx4238_)
          (let ((_expression?4240_ '#f))
            (gx#eval-syntax__opt-lambda4230 _stx4238_ _expression?4240_))))
      (define gx#eval-syntax
        (lambda _g4378_
          (let ((_g4377_ (length _g4378_)))
            (cond ((fx= _g4377_ 1)
                   (apply (lambda (_stx4238_) (gx#eval-syntax__0 _stx4238_))
                          _g4378_))
                  ((fx= _g4377_ 2)
                   (apply (lambda (_stx4242_ _expression?4243_)
                            (gx#eval-syntax__opt-lambda4230
                             _stx4242_
                             _expression?4243_))
                          _g4378_))
                  (else (error "No clause matching arguments" _g4378_))))))))
  (define gx#eval-syntax*
    (lambda (_stx4229_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx4229_))))
  (begin
    (define gx#core-expand__opt-lambda4214
      (lambda (_stx4216_ _expression?4217_)
        (if _expression?4217_
            (gx#core-expand-expression _stx4216_)
            (gx#core-expand-top _stx4216_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx4222_)
          (let ((_expression?4224_ '#f))
            (gx#core-expand__opt-lambda4214 _stx4222_ _expression?4224_))))
      (define gx#core-expand
        (lambda _g4380_
          (let ((_g4379_ (length _g4380_)))
            (cond ((fx= _g4379_ 1)
                   (apply (lambda (_stx4222_) (gx#core-expand__0 _stx4222_))
                          _g4380_))
                  ((fx= _g4379_ 2)
                   (apply (lambda (_stx4226_ _expression?4227_)
                            (gx#core-expand__opt-lambda4214
                             _stx4226_
                             _expression?4227_))
                          _g4380_))
                  (else (error "No clause matching arguments" _g4380_))))))))
  (define gx#core-expand-top
    (lambda (_stx4183_)
      (let ((_stx4185_ (gx#core-expand*__0 _stx4183_)))
        (let ((_e41864193_ _stx4185_))
          (let ((_E41884197_
                 (lambda () (gx#core-expand-expression _stx4185_))))
            (let ((_E41874211_
                   (lambda ()
                     (if (gx#stx-pair? _e41864193_)
                         (let ((_e41894201_ (gx#syntax-e _e41864193_)))
                           (let ((_hd41904204_ (##car _e41894201_))
                                 (_tl41914206_ (##cdr _e41894201_)))
                             (let ((_form4209_ _hd41904204_))
                               (if (gx#core-bound-identifier?__0 _form4209_)
                                   _stx4185_
                                   (_E41884197_)))))
                         (_E41884197_)))))
              (let () (_E41874211_))))))))
  (define gx#core-expand-expression
    (lambda (_stx4105_)
      (let ((_sealed-expression?4107_
             (lambda (_hd4153_)
               (if (gx#sealed-syntax? _hd4153_)
                   (let ((_e41544161_ _hd4153_))
                     (let ((_E41564165_ (lambda () '#f)))
                       (let ((_E41554179_
                              (lambda ()
                                (if (gx#stx-pair? _e41544161_)
                                    (let ((_e41574169_
                                           (gx#syntax-e _e41544161_)))
                                      (let ((_hd41584172_ (##car _e41574169_))
                                            (_tl41594174_ (##cdr _e41574169_)))
                                        (let ((_form4177_ _hd41584172_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda2754
                                               _form4177_
                                               gx#expression-form-binding?)
                                              (_E41564165_)))))
                                    (_E41564165_)))))
                         (let () (_E41554179_)))))
                   '#f))))
        (let ((_illegal-expression4108_
               (lambda (_hd4151_ . _g4381_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx4105_
                  _hd4151_))))
          (let ((_expand-e4109_
                 (lambda (_form4146_ _hd4147_)
                   (let ((_bind4149_
                          (if (##structure-instance-of?
                               _form4146_
                               'gx#binding::t)
                              _form4146_
                              (gx#resolve-identifier__0 _form4146_))))
                     (if (gx#core-expander-binding? _bind4149_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind4149_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd4147_
                           (gx#stx-source _stx4105_)))
                         (if (##structure-direct-instance-of?
                              _bind4149_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind4149_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd4147_
                                (gx#stx-source _stx4105_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx4105_
                              _form4146_)))))))
            (let ((_hd4111_ (gx#core-expand-head _stx4105_)))
              (if (_sealed-expression?4107_ _hd4111_)
                  _hd4111_
                  (if (gx#stx-pair? _hd4111_)
                      (let ((_e41124119_ _hd4111_))
                        (let ((_E41144123_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e41124119_))))
                          (let ((_E41134142_
                                 (lambda ()
                                   (if (gx#stx-pair? _e41124119_)
                                       (let ((_e41154127_
                                              (gx#syntax-e _e41124119_)))
                                         (let ((_hd41164130_
                                                (##car _e41154127_))
                                               (_tl41174132_
                                                (##cdr _e41154127_)))
                                           (let ((_form4135_ _hd41164130_))
                                             (if '#t
                                                 (let ((_bind4137_
                                                        (if (gx#identifier?
                                                             _form4135_)
                                                            (gx#resolve-identifier__0
                                                             _form4135_)
                                                            '#f)))
                                                   (if (let ((_$e4139_
                                                              (not _bind4137_)))
                                                         (if _$e4139_
                                                             _$e4139_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind4137_))))
               (_expand-e4109_ '%#call (cons '%#call _hd4111_))
               (if (eq? (##structure-ref _bind4137_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd4111_ _illegal-expression4108_)
                   (if (gx#expression-form-binding? _bind4137_)
                       (_expand-e4109_ _bind4137_ _hd4111_)
                       (_illegal-expression4108_ _hd4111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E41144123_)))))
                                       (_E41144123_)))))
                            (let () (_E41134142_)))))
                      (if (gx#core-bound-identifier?__0 _hd4111_)
                          (_illegal-expression4108_ _hd4111_)
                          (if (gx#identifier? _hd4111_)
                              (_expand-e4109_
                               '%#ref
                               (cons '%#ref (cons _hd4111_ '())))
                              (if (gx#stx-datum? _hd4111_)
                                  (_expand-e4109_
                                   '%#quote
                                   (cons '%#quote (cons _hd4111_ '())))
                                  (_illegal-expression4108_
                                   _hd4111_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx4100_)
      (call-with-parameters
       (lambda ()
         (let ((_stx4103_ (gx#core-expand-expression _stx4100_)))
           (values _stx4103_ (gx#eval-syntax* _stx4103_))))
       gx#current-expander-phi
       (fx1+ (gx#current-expander-phi)))))
  (begin
    (define gx#core-expand*__opt-lambda4079
      (lambda (_stx4081_ _stop?4082_)
        ((letrec ((_lp4084_
                   (lambda (_stx4086_)
                     (if (_stop?4082_ _stx4086_)
                         _stx4086_
                         (let ((_rstx4088_ (gx#core-expand1 _stx4086_)))
                           (if (eq? _stx4086_ _rstx4088_)
                               _stx4086_
                               (_lp4084_ _rstx4088_)))))))
           _lp4084_)
         _stx4081_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx4093_)
          (let ((_stop?4095_ false))
            (gx#core-expand*__opt-lambda4079 _stx4093_ _stop?4095_))))
      (define gx#core-expand*
        (lambda _g4383_
          (let ((_g4382_ (length _g4383_)))
            (cond ((fx= _g4382_ 1)
                   (apply (lambda (_stx4093_) (gx#core-expand*__0 _stx4093_))
                          _g4383_))
                  ((fx= _g4382_ 2)
                   (apply (lambda (_stx4097_ _stop?4098_)
                            (gx#core-expand*__opt-lambda4079
                             _stx4097_
                             _stop?4098_))
                          _g4383_))
                  (else (error "No clause matching arguments" _g4383_))))))))
  (define gx#core-expand1
    (lambda (_stx4031_)
      (let ((_step4033_
             (lambda (_hd4070_)
               (let ((_bind4072_ (gx#resolve-identifier__0 _hd4070_)))
                 (if (##structure-instance-of?
                      _bind4072_
                      'gx#runtime-binding::t)
                     _stx4031_
                     (if (##structure-direct-instance-of?
                          _bind4072_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind4072_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx4031_)
                         (if (not _bind4072_)
                             (begin
                               (if (let ((_$e4074_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e4074_
                                         _$e4074_
                                         (let ((_$e4077_
                                                (gx#core-context-rebind?__opt-lambda2816
                                                 (gx#core-context-top__0))))
                                           (if _$e4077_
                                               _$e4077_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd4070_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx4031_
                                    _hd4070_))
                               _stx4031_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx4031_))))))))
        (let ((_e40344042_ _stx4031_))
          (let ((_E40404046_ (lambda () _stx4031_)))
            (let ((_E40364052_
                   (lambda ()
                     (let ((_hd4050_ _e40344042_))
                       (if (gx#identifier? _hd4050_)
                           (_step4033_ _hd4050_)
                           (_E40404046_))))))
              (let ((_E40354066_
                     (lambda ()
                       (if (gx#stx-pair? _e40344042_)
                           (let ((_e40374056_ (gx#syntax-e _e40344042_)))
                             (let ((_hd40384059_ (##car _e40374056_))
                                   (_tl40394061_ (##cdr _e40374056_)))
                               (let ((_hd4064_ _hd40384059_))
                                 (if (gx#identifier? _hd4064_)
                                     (_step4033_ _hd4064_)
                                     (_E40364052_)))))
                           (_E40364052_)))))
                (let () (_E40354066_)))))))))
  (define gx#core-expand-head
    (lambda (_stx3997_)
      (let ((_stop?3999_
             (lambda (_stx4001_)
               (let ((_e40024009_ _stx4001_))
                 (let ((_E40044013_ (lambda () '#f)))
                   (let ((_E40034027_
                          (lambda ()
                            (if (gx#stx-pair? _e40024009_)
                                (let ((_e40054017_ (gx#syntax-e _e40024009_)))
                                  (let ((_hd40064020_ (##car _e40054017_))
                                        (_tl40074022_ (##cdr _e40054017_)))
                                    (let ((_hd4025_ _hd40064020_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd4025_)
                                          (_E40044013_)))))
                                (_E40044013_)))))
                     (let () (_E40034027_))))))))
        (gx#core-expand*__opt-lambda4079 _stx3997_ _stop?3999_))))
  (begin
    (define gx#core-expand-block__opt-lambda3801
      (lambda (_stx3803_ _expand-special3804_ _begin-form3805_ _expand-e3806_)
        (letrec ((_expand-splice3808_
                  (lambda (_hd3971_ _body3972_ _rest3973_ _r3974_)
                    (if (gx#stx-list? _body3972_)
                        (_K3812_ (gx#stx-foldr cons _rest3973_ _body3972_)
                                 _r3974_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx3803_
                         _hd3971_))))
                 (_expand-cond-expand3809_
                  (lambda (_hd3967_ _rest3968_ _r3969_)
                    (_K3812_ (cons (gx#core-expand-cond-expand% _hd3967_)
                                   _rest3968_)
                             _r3969_)))
                 (_expand-include3810_
                  (lambda (_hd3916_ _rest3917_ _r3918_)
                    (let ((_e39193929_ _hd3916_))
                      (let ((_E39213933_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e39193929_))))
                        (let ((_E39203963_
                               (lambda ()
                                 (if (gx#stx-pair? _e39193929_)
                                     (let ((_e39223937_
                                            (gx#syntax-e _e39193929_)))
                                       (let ((_hd39233940_ (##car _e39223937_))
                                             (_tl39243942_
                                              (##cdr _e39223937_)))
                                         (if (gx#stx-pair? _tl39243942_)
                                             (let ((_e39253945_
                                                    (gx#syntax-e
                                                     _tl39243942_)))
                                               (let ((_hd39263948_
                                                      (##car _e39253945_))
                                                     (_tl39273950_
                                                      (##cdr _e39253945_)))
                                                 (let ((_path3953_
                                                        _hd39263948_))
                                                   (if (gx#stx-null?
                                                        _tl39273950_)
                                                       (if (gx#stx-string?
                                                            _path3953_)
                                                           (let ((_rpath3955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda2664
                           _path3953_
                           (gx#stx-source _hd3916_))))
                     (let ((_block3957_
                            (gx#core-expand-include%__opt-lambda3550
                             _hd3916_
                             _rpath3955_)))
                       (let ((_rbody3960_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda3801
                                  _block3957_
                                  _expand-special3804_
                                  '#f
                                  _expand-e3806_))
                               gx#current-expander-path
                               (cons _rpath3955_ (gx#current-expander-path)))))
                         (let ()
                           (_K3812_ _rest3917_
                                    (foldr cons _r3918_ _rbody3960_))))))
                   (_E39213933_))
               (_E39213933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E39213933_))))
                                     (_E39213933_)))))
                          (let () (_E39203963_)))))))
                 (_expand-expression3811_
                  (lambda (_hd3912_ _rest3913_ _r3914_)
                    (_K3812_ _rest3913_
                             (cons (_expand-e3806_ _hd3912_) _r3914_))))
                 (_K3812_ (lambda (_rest3842_ _r3843_)
                            (let ((_e38443851_ _rest3842_))
                              (let ((_E38463855_
                                     (lambda ()
                                       (if _begin-form3805_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form3805_
                                             (reverse _r3843_))
                                            (gx#stx-source _stx3803_))
                                           _r3843_))))
                                (let ((_E38453908_
                                       (lambda ()
                                         (if (gx#stx-pair? _e38443851_)
                                             (let ((_e38473859_
                                                    (gx#syntax-e _e38443851_)))
                                               (let ((_hd38483862_
                                                      (##car _e38473859_))
                                                     (_tl38493864_
                                                      (##cdr _e38473859_)))
                                                 (let ((_hd3867_ _hd38483862_))
                                                   (let ((_rest3869_
                                                          _tl38493864_))
                                                     (if '#t
                                                         (let ((_hd3871_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3867_)))
                   (let ((_e38723879_ _hd3871_))
                     (let ((_E38743883_
                            (lambda ()
                              (_expand-expression3811_
                               _hd3871_
                               _rest3869_
                               _r3843_))))
                       (let ((_E38733904_
                              (lambda ()
                                (if (gx#stx-pair? _e38723879_)
                                    (let ((_e38753887_
                                           (gx#syntax-e _e38723879_)))
                                      (let ((_hd38763890_ (##car _e38753887_))
                                            (_tl38773892_ (##cdr _e38753887_)))
                                        (let ((_form3895_ _hd38763890_))
                                          (let ((_body3897_ _tl38773892_))
                                            (if '#t
                                                (let ((_bind3899_
                                                       (if (gx#identifier?
                                                            _form3895_)
                                                           (gx#resolve-identifier__0
                                                            _form3895_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind3899_)
                                                      (let ((_$e3901_
                                                             (##structure-ref
                                                              _bind3899_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e3901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice3808_
                     _hd3871_
                     _body3897_
                     _rest3869_
                     _r3843_)
                    (if (eq? _$e3901_ '%#cond-expand)
                        (_expand-cond-expand3809_ _hd3871_ _rest3869_ _r3843_)
                        (if (eq? _$e3901_ '%#include)
                            (_expand-include3810_ _hd3871_ _rest3869_ _r3843_)
                            (_expand-special3804_
                             _hd3871_
                             _K3812_
                             _rest3869_
                             _r3843_)))))
              (_expand-expression3811_ _hd3871_ _rest3869_ _r3843_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E38743883_))))))
                                    (_E38743883_)))))
                         (let () (_E38733904_))))))
                 (_E38463855_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E38463855_)))))
                                  (let () (_E38453908_))))))))
          (let ((_e38133820_ _stx3803_))
            (let ((_E38153824_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e38133820_))))
              (let ((_E38143838_
                     (lambda ()
                       (if (gx#stx-pair? _e38133820_)
                           (let ((_e38163828_ (gx#syntax-e _e38133820_)))
                             (let ((_hd38173831_ (##car _e38163828_))
                                   (_tl38183833_ (##cdr _e38163828_)))
                               (let ((_body3836_ _tl38183833_))
                                 (if (gx#stx-list? _body3836_)
                                     (_K3812_ _body3836_ '())
                                     (_E38153824_)))))
                           (_E38153824_)))))
                (let () (_E38143838_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx3979_ _expand-special3980_)
          (let ((_begin-form3982_ '%#begin))
            (let ((_expand-e3984_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda3801
               _stx3979_
               _expand-special3980_
               _begin-form3982_
               _expand-e3984_)))))
      (define gx#core-expand-block__1
        (lambda (_stx3986_ _expand-special3987_ _begin-form3988_)
          (let ((_expand-e3990_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda3801
             _stx3986_
             _expand-special3987_
             _begin-form3988_
             _expand-e3990_))))
      (define gx#core-expand-block
        (lambda _g4385_
          (let ((_g4384_ (length _g4385_)))
            (cond ((fx= _g4384_ 2)
                   (apply (lambda (_stx3979_ _expand-special3980_)
                            (gx#core-expand-block__0
                             _stx3979_
                             _expand-special3980_))
                          _g4385_))
                  ((fx= _g4384_ 3)
                   (apply (lambda (_stx3986_
                                   _expand-special3987_
                                   _begin-form3988_)
                            (gx#core-expand-block__1
                             _stx3986_
                             _expand-special3987_
                             _begin-form3988_))
                          _g4385_))
                  ((fx= _g4384_ 4)
                   (apply (lambda (_stx3992_
                                   _expand-special3993_
                                   _begin-form3994_
                                   _expand-e3995_)
                            (gx#core-expand-block__opt-lambda3801
                             _stx3992_
                             _expand-special3993_
                             _begin-form3994_
                             _expand-e3995_))
                          _g4385_))
                  (else (error "No clause matching arguments" _g4385_))))))))
  (define gx#core-expand-block*
    (lambda (_stx3751_ _expand-special3752_)
      (let ((_g37533764_
             (gx#core-expand-block__1 _stx3751_ _expand-special3752_ '#f)))
        (let ((_E37573768_
               (lambda () (error '"No clause matching" _g37533764_))))
          (let ((_try-match37563779_
                 (lambda ()
                   (let ((_K37583774_
                          (lambda (_body3772_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body3772_))
                             (gx#stx-source _stx3751_)))))
                     (let ((_body3777_ _g37533764_))
                       (_K37583774_ _body3777_))))))
            (let ((_try-match37553795_
                   (lambda ()
                     (let ((_K37593785_ (lambda (_expr3783_) _expr3783_)))
                       (if (##pair? _g37533764_)
                           (let ((_hd37603788_ (##car _g37533764_))
                                 (_tl37613790_ (##cdr _g37533764_)))
                             (let ((_expr3793_ _hd37603788_))
                               (if (##null? _tl37613790_)
                                   (_K37593785_ _expr3793_)
                                   (_try-match37563779_))))
                           (_try-match37563779_))))))
              (let ((_K37623799_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx3751_))))
                (if (##null? _g37533764_)
                    (_K37623799_)
                    (_try-match37553795_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx3609_)
      (letrec ((_satisfied?3611_
                (lambda (_condition3709_)
                  (let ((_e37103718_ _condition3709_))
                    (let ((_E37133722_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e37103718_))))
                      (let ((_E37123741_
                             (lambda ()
                               (if (gx#stx-pair? _e37103718_)
                                   (let ((_e37143726_
                                          (gx#syntax-e _e37103718_)))
                                     (let ((_hd37153729_ (##car _e37143726_))
                                           (_tl37163731_ (##cdr _e37143726_)))
                                       (let ((_combinator3734_ _hd37153729_))
                                         (let ((_body3736_ _tl37163731_))
                                           (if (gx#stx-list? _body3736_)
                                               (let ((_$e3738_
                                                      (gx#stx-e
                                                       _combinator3734_)))
                                                 (if (eq? _$e3738_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?3611_
                                                           _body3736_))
                                                     (if (eq? _$e3738_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?3611_
                                                          _body3736_)
                                                         (if (eq? _$e3738_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?3611_
                                                              _body3736_)
                                                             (if (eq? _$e3738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body3736_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx3609_
                          _combinator3734_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E37133722_))))))
                                   (_E37133722_)))))
                        (let ((_E37113747_
                               (lambda ()
                                 (let ((_id3745_ _e37103718_))
                                   (if (gx#identifier? _id3745_)
                                       (gx#core-bound-identifier?__opt-lambda2754
                                        _id3745_
                                        gx#feature-binding?)
                                       (_E37123741_))))))
                          (let () (_E37113747_))))))))
               (_loop3612_
                (lambda (_rest3642_)
                  (let ((_e36433651_ _rest3642_))
                    (let ((_E36493655_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e36433651_))))
                      (let ((_E36453659_
                             (lambda ()
                               (if (gx#stx-null? _e36433651_)
                                   (if '#t '() (_E36493655_))
                                   (_E36493655_)))))
                        (let ((_E36443705_
                               (lambda ()
                                 (if (gx#stx-pair? _e36433651_)
                                     (let ((_e36463663_
                                            (gx#syntax-e _e36433651_)))
                                       (let ((_hd36473666_ (##car _e36463663_))
                                             (_tl36483668_
                                              (##cdr _e36463663_)))
                                         (let ((_hd3671_ _hd36473666_))
                                           (let ((_rest3673_ _tl36483668_))
                                             (if '#t
                                                 (let ((_e36743681_ _hd3671_))
                                                   (let ((_E36763685_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e36743681_))))
                                                     (let ((_E36753701_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e36743681_)
                          (let ((_e36773689_ (gx#syntax-e _e36743681_)))
                            (let ((_hd36783692_ (##car _e36773689_))
                                  (_tl36793694_ (##cdr _e36773689_)))
                              (let ((_condition3697_ _hd36783692_))
                                (let ((_body3699_ _tl36793694_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition3697_ 'else)
                                          (if (gx#stx-null? _rest3673_)
                                              _body3699_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx3609_
                                               _hd3671_))
                                          (if (_satisfied?3611_
                                               _condition3697_)
                                              _body3699_
                                              (_loop3612_ _rest3673_)))
                                      (_E36763685_))))))
                          (_E36763685_)))))
               (let () (_E36753701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E36453659_))))))
                                     (_E36453659_)))))
                          (let () (_E36443705_)))))))))
        (let ((_e36133620_ _stx3609_))
          (let ((_E36153624_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e36133620_))))
            (let ((_E36143638_
                   (lambda ()
                     (if (gx#stx-pair? _e36133620_)
                         (let ((_e36163628_ (gx#syntax-e _e36133620_)))
                           (let ((_hd36173631_ (##car _e36163628_))
                                 (_tl36183633_ (##cdr _e36163628_)))
                             (let ((_clauses3636_ _tl36183633_))
                               (if (gx#stx-list? _clauses3636_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop3612_ _clauses3636_))
                                   (_E36153624_)))))
                         (_E36153624_)))))
              (let () (_E36143638_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda3550
      (lambda (_stx3552_ _rpath3553_)
        (let ((_e35543564_ _stx3552_))
          (let ((_E35563568_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e35543564_))))
            (let ((_E35553595_
                   (lambda ()
                     (if (gx#stx-pair? _e35543564_)
                         (let ((_e35573572_ (gx#syntax-e _e35543564_)))
                           (let ((_hd35583575_ (##car _e35573572_))
                                 (_tl35593577_ (##cdr _e35573572_)))
                             (if (gx#stx-pair? _tl35593577_)
                                 (let ((_e35603580_
                                        (gx#syntax-e _tl35593577_)))
                                   (let ((_hd35613583_ (##car _e35603580_))
                                         (_tl35623585_ (##cdr _e35603580_)))
                                     (let ((_path3588_ _hd35613583_))
                                       (if (gx#stx-null? _tl35623585_)
                                           (if (gx#stx-string? _path3588_)
                                               (let ((_rpath3593_
                                                      (let ((_$e3590_
                                                             _rpath3553_))
                                                        (if _$e3590_
                                                            _$e3590_
                                                            (gx#core-resolve-path__opt-lambda2664
                                                             _path3588_
                                                             (gx#stx-source
                                                              _stx3552_))))))
                                                 (if (member _rpath3593_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx3552_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath3593_))
                                                       (gx#stx-source
                                                        _stx3552_)))))
                                               (_E35563568_))
                                           (_E35563568_)))))
                                 (_E35563568_))))
                         (_E35563568_)))))
              (let () (_E35553595_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx3602_)
          (let ((_rpath3604_ '#f))
            (gx#core-expand-include%__opt-lambda3550 _stx3602_ _rpath3604_))))
      (define gx#core-expand-include%
        (lambda _g4387_
          (let ((_g4386_ (length _g4387_)))
            (cond ((fx= _g4386_ 1)
                   (apply (lambda (_stx3602_)
                            (gx#core-expand-include%__0 _stx3602_))
                          _g4387_))
                  ((fx= _g4386_ 2)
                   (apply (lambda (_stx3606_ _rpath3607_)
                            (gx#core-expand-include%__opt-lambda3550
                             _stx3606_
                             _rpath3607_))
                          _g4387_))
                  (else (error "No clause matching arguments" _g4387_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda3519
      (lambda (_K3521_ _stx3522_ _method3523_)
        (if (procedure? _K3521_)
            (let ((_$e3525_ (gx#stx-source _stx3522_)))
              (if _$e3525_
                  ((lambda (_g35273529_)
                     (gx#stx-wrap-source (_K3521_ _stx3522_) _g35273529_))
                   _$e3525_)
                  (_K3521_ _stx3522_)))
            (let ((_$e3532_ (bound-method-ref _K3521_ _method3523_)))
              (if _$e3532_
                  ((lambda (_g35343536_)
                     (gx#core-apply-expander__opt-lambda3519
                      _g35343536_
                      _stx3522_
                      _method3523_))
                   _$e3532_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx3522_
                   _method3523_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K3542_ _stx3543_)
          (let ((_method3545_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda3519
             _K3542_
             _stx3543_
             _method3545_))))
      (define gx#core-apply-expander
        (lambda _g4389_
          (let ((_g4388_ (length _g4389_)))
            (cond ((fx= _g4388_ 2)
                   (apply (lambda (_K3542_ _stx3543_)
                            (gx#core-apply-expander__0 _K3542_ _stx3543_))
                          _g4389_))
                  ((fx= _g4388_ 3)
                   (apply (lambda (_K3547_ _stx3548_ _method3549_)
                            (gx#core-apply-expander__opt-lambda3519
                             _K3547_
                             _stx3548_
                             _method3549_))
                          _g4389_))
                  (else (error "No clause matching arguments" _g4389_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self3517_ _stx3518_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx3518_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self3492_ _stx3493_)
      (let ((_self34943500_ _self3492_))
        (let ((_E34963504_
               (lambda () (error '"No clause matching" _self34943500_))))
          (let ((_K34973509_
                 (lambda (_K3507_)
                   (gx#core-apply-expander__0 _K3507_ _stx3493_))))
            (if (struct-instance? gx#macro-expander::t _self34943500_)
                (let ((_e34983512_ (##vector-ref _self34943500_ '1)))
                  (let ((_K3515_ _e34983512_)) (_K34973509_ _K3515_)))
                (_E34963504_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self3467_ _stx3468_)
      (if (gx#sealed-syntax? _stx3468_)
          _stx3468_
          (let ((_self34693475_ _self3467_))
            (let ((_E34713479_
                   (lambda () (error '"No clause matching" _self34693475_))))
              (let ((_K34723484_
                     (lambda (_K3482_)
                       (gx#core-apply-expander__0 _K3482_ _stx3468_))))
                (if (struct-instance? gx#core-expander::t _self34693475_)
                    (let ((_e34733487_ (##vector-ref _self34693475_ '1)))
                      (let ((_K3490_ _e34733487_)) (_K34723484_ _K3490_)))
                    (_E34713479_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda3449
      (lambda (_self3451_ _stx3452_ _top?3453_)
        (if (_top?3453_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self3451_ _stx3452_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx3452_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self3458_ _stx3459_)
          (let ((_top?3461_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda3449
             _self3458_
             _stx3459_
             _top?3461_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g4391_
          (let ((_g4390_ (length _g4391_)))
            (cond ((fx= _g4390_ 2)
                   (apply (lambda (_self3458_ _stx3459_)
                            (gx#top-special-form::apply-macro-expander__0
                             _self3458_
                             _stx3459_))
                          _g4391_))
                  ((fx= _g4390_ 3)
                   (apply (lambda (_self3463_ _stx3464_ _top?3465_)
                            (gx#top-special-form::apply-macro-expander__opt-lambda3449
                             _self3463_
                             _stx3464_
                             _top?3465_))
                          _g4391_))
                  (else (error "No clause matching arguments" _g4391_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self3447_ _stx3448_)
      (gx#top-special-form::apply-macro-expander__opt-lambda3449
       _self3447_
       _stx3448_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self3394_ _stx3395_)
      (let ((_self33963402_ _self3394_))
        (let ((_E33983406_
               (lambda () (error '"No clause matching" _self33963402_))))
          (let ((_K33993439_
                 (lambda (_id3409_)
                   (let ((_e34103417_ _stx3395_))
                     (let ((_E34123421_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e34103417_))))
                       (let ((_E34113435_
                              (lambda ()
                                (if (gx#stx-pair? _e34103417_)
                                    (let ((_e34133425_
                                           (gx#syntax-e _e34103417_)))
                                      (let ((_hd34143428_ (##car _e34133425_))
                                            (_tl34153430_ (##cdr _e34133425_)))
                                        (let ((_body3433_ _tl34153430_))
                                          (if '#t
                                              (gx#core-cons
                                               _id3409_
                                               _body3433_)
                                              (_E34123421_)))))
                                    (_E34123421_)))))
                         (let () (_E34113435_))))))))
            (if (struct-instance? gx#rename-macro-expander::t _self33963402_)
                (let ((_e34003442_ (##vector-ref _self33963402_ '1)))
                  (let ((_id3445_ _e34003442_)) (_K33993439_ _id3445_)))
                (_E33983406_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda3340
      (lambda (_self3342_ _stx3343_ _method3344_)
        (let ((_self33453353_ _self3342_))
          (let ((_E33473357_
                 (lambda () (error '"No clause matching" _self33453353_))))
            (let ((_K33483364_
                   (lambda (_phi3360_ _ctx3361_ _K3362_)
                     (gx#core-apply-user-macro
                      _K3362_
                      _stx3343_
                      _ctx3361_
                      _phi3360_
                      _method3344_))))
              (if (struct-instance? gx#user-expander::t _self33453353_)
                  (let ((_e33493367_ (##vector-ref _self33453353_ '1)))
                    (let ((_K3370_ _e33493367_))
                      (let ((_e33503372_ (##vector-ref _self33453353_ '2)))
                        (let ((_ctx3375_ _e33503372_))
                          (let ((_e33513377_ (##vector-ref _self33453353_ '3)))
                            (let ((_phi3380_ _e33513377_))
                              (_K33483364_ _phi3380_ _ctx3375_ _K3370_)))))))
                  (_E33473357_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self3385_ _stx3386_)
          (let ((_method3388_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda3340
             _self3385_
             _stx3386_
             _method3388_))))
      (define gx#core-apply-user-expander
        (lambda _g4393_
          (let ((_g4392_ (length _g4393_)))
            (cond ((fx= _g4392_ 2)
                   (apply (lambda (_self3385_ _stx3386_)
                            (gx#core-apply-user-expander__0
                             _self3385_
                             _stx3386_))
                          _g4393_))
                  ((fx= _g4392_ 3)
                   (apply (lambda (_self3390_ _stx3391_ _method3392_)
                            (gx#core-apply-user-expander__opt-lambda3340
                             _self3390_
                             _stx3391_
                             _method3392_))
                          _g4393_))
                  (else (error "No clause matching arguments" _g4393_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K3332_ _stx3333_ _ctx3334_ _phi3335_ _method3336_)
      (let ((_mark3338_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx3334_
              _phi3335_
              _stx3333_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda3519
             _K3332_
             (gx#stx-apply-mark _stx3333_ _mark3338_)
             _method3336_)
            _mark3338_))
         gx#current-expander-marks
         (cons _mark3338_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda3304
      (lambda (_stx3306_ _phi3307_ _ctx3308_)
        ((letrec ((_lp3310_
                   (lambda (_bind3312_)
                     (if (##structure-direct-instance-of?
                          _bind3312_
                          'gx#import-binding::t)
                         (_lp3310_
                          (##structure-ref
                           _bind3312_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind3312_
                              'gx#alias-binding::t)
                             (_lp3310_
                              (gx#core-resolve-identifier__opt-lambda3234
                               (##structure-ref
                                _bind3312_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi3307_
                               _ctx3308_))
                             _bind3312_)))))
           _lp3310_)
         (gx#core-resolve-identifier__opt-lambda3234
          _stx3306_
          _phi3307_
          _ctx3308_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx3317_)
          (let ((_phi3319_ (gx#current-expander-phi)))
            (let ((_ctx3321_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda3304
               _stx3317_
               _phi3319_
               _ctx3321_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx3323_ _phi3324_)
          (let ((_ctx3326_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda3304
             _stx3323_
             _phi3324_
             _ctx3326_))))
      (define gx#resolve-identifier
        (lambda _g4395_
          (let ((_g4394_ (length _g4395_)))
            (cond ((fx= _g4394_ 1)
                   (apply (lambda (_stx3317_)
                            (gx#resolve-identifier__0 _stx3317_))
                          _g4395_))
                  ((fx= _g4394_ 2)
                   (apply (lambda (_stx3323_ _phi3324_)
                            (gx#resolve-identifier__1 _stx3323_ _phi3324_))
                          _g4395_))
                  ((fx= _g4394_ 3)
                   (apply (lambda (_stx3328_ _phi3329_ _ctx3330_)
                            (gx#resolve-identifier__opt-lambda3304
                             _stx3328_
                             _phi3329_
                             _ctx3330_))
                          _g4395_))
                  (else (error "No clause matching arguments" _g4395_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda3262
      (lambda (_stx3264_ _val3265_ _rebind?3266_ _phi3267_ _ctx3268_)
        (let ((_rebind?3270_
               (if (not _rebind?3266_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?3266_) _rebind?3266_ true))))
          (gx#core-bind!__opt-lambda3024
           (gx#core-identifier-key _stx3264_)
           _val3265_
           _rebind?3270_
           _phi3267_
           _ctx3268_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx3275_ _val3276_)
          (let ((_rebind?3278_ '#f))
            (let ((_phi3280_ (gx#current-expander-phi)))
              (let ((_ctx3282_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda3262
                 _stx3275_
                 _val3276_
                 _rebind?3278_
                 _phi3280_
                 _ctx3282_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx3284_ _val3285_ _rebind?3286_)
          (let ((_phi3288_ (gx#current-expander-phi)))
            (let ((_ctx3290_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda3262
               _stx3284_
               _val3285_
               _rebind?3286_
               _phi3288_
               _ctx3290_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx3292_ _val3293_ _rebind?3294_ _phi3295_)
          (let ((_ctx3297_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda3262
             _stx3292_
             _val3293_
             _rebind?3294_
             _phi3295_
             _ctx3297_))))
      (define gx#bind-identifier!
        (lambda _g4397_
          (let ((_g4396_ (length _g4397_)))
            (cond ((fx= _g4396_ 2)
                   (apply (lambda (_stx3275_ _val3276_)
                            (gx#bind-identifier!__0 _stx3275_ _val3276_))
                          _g4397_))
                  ((fx= _g4396_ 3)
                   (apply (lambda (_stx3284_ _val3285_ _rebind?3286_)
                            (gx#bind-identifier!__1
                             _stx3284_
                             _val3285_
                             _rebind?3286_))
                          _g4397_))
                  ((fx= _g4396_ 4)
                   (apply (lambda (_stx3292_ _val3293_ _rebind?3294_ _phi3295_)
                            (gx#bind-identifier!__2
                             _stx3292_
                             _val3293_
                             _rebind?3294_
                             _phi3295_))
                          _g4397_))
                  ((fx= _g4396_ 5)
                   (apply (lambda (_stx3299_
                                   _val3300_
                                   _rebind?3301_
                                   _phi3302_
                                   _ctx3303_)
                            (gx#bind-identifier!__opt-lambda3262
                             _stx3299_
                             _val3300_
                             _rebind?3301_
                             _phi3302_
                             _ctx3303_))
                          _g4397_))
                  (else (error "No clause matching arguments" _g4397_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda3234
      (lambda (_stx3236_ _phi3237_ _ctx3238_)
        ((letrec ((_lp3240_
                   (lambda (_e3242_ _marks3243_)
                     (if (symbol? _e3242_)
                         (gx#core-resolve-binding
                          _e3242_
                          _phi3237_
                          _ctx3238_
                          (reverse _marks3243_))
                         (if (gx#identifier-quote? _e3242_)
                             (gx#core-resolve-binding
                              (##structure-ref _e3242_ '1 AST::t '#f)
                              _phi3237_
                              (##structure-ref
                               _e3242_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e3242_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e3242_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e3242_ '1 AST::t '#f)
                                  _phi3237_
                                  _ctx3238_
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e3242_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks3243_))
                                 (if (##structure-direct-instance-of?
                                      _e3242_
                                      'gx#syntax-wrap::t)
                                     (_lp3240_
                                      (##structure-ref _e3242_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e3242_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks3243_))
                                     (if (##structure-instance-of?
                                          _e3242_
                                          'gerbil#AST::t)
                                         (_lp3240_
                                          (##structure-ref
                                           _e3242_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks3243_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx3236_)))))))))
           _lp3240_)
         _stx3236_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx3248_)
          (let ((_phi3250_ (gx#current-expander-phi)))
            (let ((_ctx3252_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda3234
               _stx3248_
               _phi3250_
               _ctx3252_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx3254_ _phi3255_)
          (let ((_ctx3257_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda3234
             _stx3254_
             _phi3255_
             _ctx3257_))))
      (define gx#core-resolve-identifier
        (lambda _g4399_
          (let ((_g4398_ (length _g4399_)))
            (cond ((fx= _g4398_ 1)
                   (apply (lambda (_stx3248_)
                            (gx#core-resolve-identifier__0 _stx3248_))
                          _g4399_))
                  ((fx= _g4398_ 2)
                   (apply (lambda (_stx3254_ _phi3255_)
                            (gx#core-resolve-identifier__1
                             _stx3254_
                             _phi3255_))
                          _g4399_))
                  ((fx= _g4398_ 3)
                   (apply (lambda (_stx3259_ _phi3260_ _ctx3261_)
                            (gx#core-resolve-identifier__opt-lambda3234
                             _stx3259_
                             _phi3260_
                             _ctx3261_))
                          _g4399_))
                  (else (error "No clause matching arguments" _g4399_))))))))
  (define gx#core-resolve-binding
    (lambda (_id3150_ _phi3151_ _ctx3152_ _marks3153_)
      (let ((_resolve3155_
             (lambda (_ctx3223_ _src-phi3224_ _key3225_)
               ((letrec ((_lp3227_
                          (lambda (_ctx3229_ _dphi3230_)
                            (let ((_$e3232_
                                   (gx#core-context-resolve
                                    _ctx3229_
                                    _key3225_)))
                              (if _$e3232_
                                  (values _$e3232_)
                                  (if (fxzero? _dphi3230_)
                                      '#f
                                      (if (fxpositive? _dphi3230_)
                                          (_lp3227_
                                           (gx#core-context-shift
                                            _ctx3229_
                                            '-1)
                                           (fx1- _dphi3230_))
                                          (if (fxnegative? _dphi3230_)
                                              (_lp3227_
                                               (gx#core-context-shift
                                                _ctx3229_
                                                '1)
                                               (fx1+ _dphi3230_))
                                              '#!void))))))))
                  _lp3227_)
                (gx#core-context-shift _ctx3223_ _phi3151_)
                (fx- _phi3151_ _src-phi3224_)))))
        ((letrec ((_lp3157_
                   (lambda (_ctx3159_ _src-phi3160_ _rest3161_)
                     (let ((_rest31623170_ _rest3161_))
                       (let ((_E31653174_
                              (lambda ()
                                (error '"No clause matching" _rest31623170_))))
                         (let ((_else31643178_
                                (lambda ()
                                  (_resolve3155_
                                   _ctx3159_
                                   _src-phi3160_
                                   _id3150_))))
                           (let ((_K31663211_
                                  (lambda (_rest3181_ _hd3182_)
                                    (let ((_hd31833189_ _hd3182_))
                                      (let ((_E31853193_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd31833189_))))
                                        (let ((_K31863203_
                                               (lambda (_subst3196_)
                                                 (let ((_$e3200_
                                                        (let ((_key3198_
                                                               (if _subst3196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (hash-get _subst3196_ _id3150_)
                           '#f)))
                  (if _key3198_
                      (_resolve3155_ _ctx3159_ _src-phi3160_ _key3198_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e3200_
                                                       _$e3200_
                                                       (_lp3157_
                                                        (##structure-ref
                                                         _hd3182_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd3182_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest3181_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd31833189_)
                                              (let ((_e31873206_
                                                     (##vector-ref
                                                      _hd31833189_
                                                      '1)))
                                                (let ((_subst3209_
                                                       _e31873206_))
                                                  (_K31863203_ _subst3209_)))
                                              (_E31853193_))))))))
                             (if (##pair? _rest31623170_)
                                 (let ((_hd31673214_ (##car _rest31623170_))
                                       (_tl31683216_ (##cdr _rest31623170_)))
                                   (let ((_hd3219_ _hd31673214_))
                                     (let ((_rest3221_ _tl31683216_))
                                       (_K31663211_ _rest3221_ _hd3219_))))
                                 (_else31643178_)))))))))
           _lp3157_)
         _ctx3152_
         _phi3151_
         _marks3153_))))
  (begin
    (define gx#core-bind!__opt-lambda3024
      (lambda (_key3026_ _val3027_ _rebind?3028_ _phi3029_ _ctx3030_)
        (let ((_update-binding3032_
               (lambda (_xval3103_)
                 (if (let ((_$e3105_
                            (_rebind?3028_ _ctx3030_ _xval3103_ _val3027_)))
                       (if _$e3105_
                           _$e3105_
                           (let ((_$e3111_
                                  (if (##structure-direct-instance-of?
                                       _xval3103_
                                       'gx#import-binding::t)
                                      (let ((_$e3108_
                                             (##structure-ref
                                              _xval3103_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e3108_
                                            _$e3108_
                                            (if (##structure-instance-of?
                                                 _val3027_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val3027_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e3111_
                                 _$e3111_
                                 (if (##structure-instance-of?
                                      _xval3103_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val3027_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val3027_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval3103_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val3027_
                     (if (if (##structure-direct-instance-of?
                              _val3027_
                              'gx#import-binding::t)
                             (let ((_$e3114_
                                    (##structure-ref
                                     _val3027_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e3114_
                                   _$e3114_
                                   (if (##structure-instance-of?
                                        _xval3103_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val3027_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval3103_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval3103_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key3026_
                          _xval3103_
                          _val3027_))))))
          (let ((_gensubst3033_
                 (lambda (_subst3098_ _id3099_)
                   (let ((_eid3101_
                          (gensym (if (uninterned-symbol? _id3099_)
                                      '%
                                      _id3099_))))
                     (begin
                       (hash-put! _subst3098_ _id3099_ _eid3101_)
                       _eid3101_)))))
            (let ((_subst!3034_
                   (lambda (_key3036_)
                     (let ((_key30373045_ _key3036_))
                       (let ((_E30403049_
                              (lambda ()
                                (error '"No clause matching" _key30373045_))))
                         (let ((_else30393053_ (lambda () _key3036_)))
                           (let ((_K30413086_
                                  (lambda (_mark3056_ _id3057_)
                                    (let ((_mark30583064_ _mark3056_))
                                      (let ((_E30603068_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark30583064_))))
                                        (let ((_K30613078_
                                               (lambda (_subst3071_)
                                                 (if (not _subst3071_)
                                                     (let ((_subst3073_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark3056_
                                                          _subst3073_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst3033_
                                                          _subst3073_
                                                          _id3057_)))
                                                     (let ((_$e3075_
                                                            (hash-get
                                                             _subst3071_
                                                             _id3057_)))
                                                       (if _$e3075_
                                                           (values _$e3075_)
                                                           (_gensubst3033_
                                                            _subst3071_
                                                            _id3057_)))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _mark30583064_)
                                              (let ((_e30623081_
                                                     (##vector-ref
                                                      _mark30583064_
                                                      '1)))
                                                (let ((_subst3084_
                                                       _e30623081_))
                                                  (_K30613078_ _subst3084_)))
                                              (_E30603068_))))))))
                             (if (##pair? _key30373045_)
                                 (let ((_hd30423089_ (##car _key30373045_))
                                       (_tl30433091_ (##cdr _key30373045_)))
                                   (let ((_id3094_ _hd30423089_))
                                     (let ((_mark3096_ _tl30433091_))
                                       (_K30413086_ _mark3096_ _id3094_))))
                                 (_else30393053_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx3030_ _phi3029_)
               (_subst!3034_ _key3026_)
               _val3027_
               _update-binding3032_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key3120_ _val3121_)
          (let ((_rebind?3123_ false))
            (let ((_phi3125_ (gx#current-expander-phi)))
              (let ((_ctx3127_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda3024
                 _key3120_
                 _val3121_
                 _rebind?3123_
                 _phi3125_
                 _ctx3127_))))))
      (define gx#core-bind!__1
        (lambda (_key3129_ _val3130_ _rebind?3131_)
          (let ((_phi3133_ (gx#current-expander-phi)))
            (let ((_ctx3135_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda3024
               _key3129_
               _val3130_
               _rebind?3131_
               _phi3133_
               _ctx3135_)))))
      (define gx#core-bind!__2
        (lambda (_key3137_ _val3138_ _rebind?3139_ _phi3140_)
          (let ((_ctx3142_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda3024
             _key3137_
             _val3138_
             _rebind?3139_
             _phi3140_
             _ctx3142_))))
      (define gx#core-bind!
        (lambda _g4401_
          (let ((_g4400_ (length _g4401_)))
            (cond ((fx= _g4400_ 2)
                   (apply (lambda (_key3120_ _val3121_)
                            (gx#core-bind!__0 _key3120_ _val3121_))
                          _g4401_))
                  ((fx= _g4400_ 3)
                   (apply (lambda (_key3129_ _val3130_ _rebind?3131_)
                            (gx#core-bind!__1
                             _key3129_
                             _val3130_
                             _rebind?3131_))
                          _g4401_))
                  ((fx= _g4400_ 4)
                   (apply (lambda (_key3137_ _val3138_ _rebind?3139_ _phi3140_)
                            (gx#core-bind!__2
                             _key3137_
                             _val3138_
                             _rebind?3139_
                             _phi3140_))
                          _g4401_))
                  ((fx= _g4400_ 5)
                   (apply (lambda (_key3144_
                                   _val3145_
                                   _rebind?3146_
                                   _phi3147_
                                   _ctx3148_)
                            (gx#core-bind!__opt-lambda3024
                             _key3144_
                             _val3145_
                             _rebind?3146_
                             _phi3147_
                             _ctx3148_))
                          _g4401_))
                  (else (error "No clause matching arguments" _g4401_))))))))
  (define gx#core-identifier-key
    (lambda (_stx2956_)
      (if (symbol? _stx2956_)
          (let ((_g29572965_ (gx#current-expander-marks)))
            (let ((_E29602969_
                   (lambda () (error '"No clause matching" _g29572965_))))
              (let ((_else29592973_ (lambda () _stx2956_)))
                (let ((_K29612978_
                       (lambda (_hd2976_) (cons _stx2956_ _hd2976_))))
                  (if (##pair? _g29572965_)
                      (let ((_hd29622981_ (##car _g29572965_))
                            (_tl29632983_ (##cdr _g29572965_)))
                        (let ((_hd2986_ _hd29622981_)) (_K29612978_ _hd2986_)))
                      (_else29592973_))))))
          (if (gx#identifier? _stx2956_)
              (let ((_id2988_ (gx#syntax-local-unwrap _stx2956_)))
                (let ((_eid2990_ (gx#stx-e _id2988_)))
                  (let ((_marks2992_ (gx#stx-identifier-marks _id2988_)))
                    (let ()
                      (let ((_marks29943002_ _marks2992_))
                        (let ((_E29973006_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks29943002_))))
                          (let ((_else29963010_ (lambda () _eid2990_)))
                            (let ((_K29983015_
                                   (lambda (_hd3013_)
                                     (cons _eid2990_ _hd3013_))))
                              (if (##pair? _marks29943002_)
                                  (let ((_hd29993018_ (##car _marks29943002_))
                                        (_tl30003020_ (##cdr _marks29943002_)))
                                    (let ((_hd3023_ _hd29993018_))
                                      (_K29983015_ _hd3023_)))
                                  (_else29963010_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx2956_)))))
  (define gx#core-context-shift
    (lambda (_ctx2901_ _phi2902_)
      (let ((_make-phi2904_
             (lambda (_super2954_)
               (make-struct-instance
                gx#phi-context::t
                (gensym 'phi)
                _super2954_))))
        (let ((_make-phi/up2905_
               (lambda (_ctx2949_ _super2950_)
                 (let ((_ctx+12952_ (_make-phi2904_ _super2950_)))
                   (begin
                     (##structure-set!
                      _ctx2949_
                      _ctx+12952_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+12952_
                      _ctx2949_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+12952_)))))
          (let ((_make-phi/down2906_
                 (lambda (_ctx2944_ _super2945_)
                   (let ((_ctx-12947_ (_make-phi2904_ _super2945_)))
                     (begin
                       (##structure-set!
                        _ctx-12947_
                        _ctx2944_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx2944_
                        _ctx-12947_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-12947_)))))
            (let ((_shift2907_
                   (lambda (_ctx2928_
                            _delta2929_
                            _make-delta-context2930_
                            _phi2931_
                            _K2932_)
                     (let ((_$e2934_
                            (##structure-ref
                             _ctx2928_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e2934_
                           ((lambda (_super2937_)
                              (let ((_super2939_
                                     (_K2932_ _super2937_ _delta2929_)))
                                (let ((_ctx+d2941_
                                       (_make-delta-context2930_
                                        _ctx2928_
                                        _super2939_)))
                                  (let ()
                                    (_K2932_ _ctx+d2941_
                                             (fx- _phi2931_ _delta2929_))))))
                            _$e2934_)
                           (error '"Bad context" _ctx2928_))))))
              ((letrec ((_K2909_ (lambda (_ctx2911_ _phi2912_)
                                   (if (fxzero? _phi2912_)
                                       _ctx2911_
                                       (if (##structure-instance-of?
                                            _ctx2911_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi2912_)
                                               (let ((_$e2914_
                                                      (##structure-ref
                                                       _ctx2911_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e2914_
                                                     ((lambda (_g29162918_)
                                                        (_K2909_ _g29162918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1- _phi2912_)))
              _$e2914_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2907_
                                                      _ctx2911_
                                                      '1
                                                      _make-phi/up2905_
                                                      _phi2912_
                                                      _K2909_)))
                                               (let ((_$e2921_
                                                      (##structure-ref
                                                       _ctx2911_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e2921_
                                                     ((lambda (_g29232925_)
                                                        (_K2909_ _g29232925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1+ _phi2912_)))
              _$e2921_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2907_
                                                      _ctx2911_
                                                      '-1
                                                      _make-phi/down2906_
                                                      _phi2912_
                                                      _K2909_))))
                                           _ctx2911_)))))
                 _K2909_)
               _ctx2901_
               _phi2902_)))))))
  (define gx#core-context-get
    (lambda (_ctx2898_ _key2899_)
      (hash-get
       (##structure-ref _ctx2898_ '2 gx#expander-context::t '#f)
       _key2899_)))
  (define gx#core-context-put!
    (lambda (_ctx2894_ _key2895_ _val2896_)
      (hash-put!
       (##structure-ref _ctx2894_ '2 gx#expander-context::t '#f)
       _key2895_
       _val2896_)))
  (define gx#core-context-resolve
    (lambda (_ctx2881_ _key2882_)
      ((letrec ((_lp2884_
                 (lambda (_ctx2886_)
                   (let ((_$e2888_ (gx#core-context-get _ctx2886_ _key2882_)))
                     (if _$e2888_
                         (values _$e2888_)
                         (let ((_$e2891_
                                (if (##structure-instance-of?
                                     _ctx2886_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx2886_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e2891_ (_lp2884_ _$e2891_) '#f)))))))
         _lp2884_)
       _ctx2881_)))
  (define gx#core-context-bind!
    (lambda (_ctx2871_ _key2872_ _val2873_ _rebind2874_)
      (let ((_$e2876_ (gx#core-context-get _ctx2871_ _key2872_)))
        (if _$e2876_
            ((lambda (_xval2879_)
               (gx#core-context-put!
                _ctx2871_
                _key2872_
                (_rebind2874_ _xval2879_)))
             _$e2876_)
            (gx#core-context-put! _ctx2871_ _key2872_ _val2873_)))))
  (begin
    (define gx#core-context-top__opt-lambda2847
      (lambda (_ctx2849_ _stop?2850_)
        ((letrec ((_lp2852_
                   (lambda (_ctx2854_)
                     (if (_stop?2850_ _ctx2854_)
                         _ctx2854_
                         (if (##structure-instance-of?
                              _ctx2854_
                              'gx#context-phi::t)
                             (_lp2852_
                              (##structure-ref
                               _ctx2854_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp2852_)
         _ctx2849_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx2860_ (gx#current-expander-context)))
            (let ((_stop?2862_ gx#top-context?))
              (gx#core-context-top__opt-lambda2847 _ctx2860_ _stop?2862_)))))
      (define gx#core-context-top__1
        (lambda (_ctx2864_)
          (let ((_stop?2866_ gx#top-context?))
            (gx#core-context-top__opt-lambda2847 _ctx2864_ _stop?2866_))))
      (define gx#core-context-top
        (lambda _g4403_
          (let ((_g4402_ (length _g4403_)))
            (cond ((fx= _g4402_ 0)
                   (apply (lambda () (gx#core-context-top__0)) _g4403_))
                  ((fx= _g4402_ 1)
                   (apply (lambda (_ctx2864_)
                            (gx#core-context-top__1 _ctx2864_))
                          _g4403_))
                  ((fx= _g4402_ 2)
                   (apply (lambda (_ctx2868_ _stop?2869_)
                            (gx#core-context-top__opt-lambda2847
                             _ctx2868_
                             _stop?2869_))
                          _g4403_))
                  (else (error "No clause matching arguments" _g4403_))))))))
  (begin
    (define gx#core-context-root__opt-lambda2832
      (lambda (_ctx2834_)
        ((letrec ((_lp2836_
                   (lambda (_ctx2838_)
                     (if (##structure-instance-of?
                          _ctx2838_
                          'gx#context-phi::t)
                         (_lp2836_
                          (##structure-ref _ctx2838_ '3 gx#phi-context::t '#f))
                         _ctx2838_))))
           _lp2836_)
         _ctx2834_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx2844_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda2832 _ctx2844_))))
      (define gx#core-context-root
        (lambda _g4405_
          (let ((_g4404_ (length _g4405_)))
            (cond ((fx= _g4404_ 0)
                   (apply (lambda () (gx#core-context-root__0)) _g4405_))
                  ((fx= _g4404_ 1)
                   (apply (lambda (_ctx2846_)
                            (gx#core-context-root__opt-lambda2832 _ctx2846_))
                          _g4405_))
                  (else (error "No clause matching arguments" _g4405_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda2816
      (lambda (_ctx2818_ . __28152819_)
        (if (##structure-instance-of? _ctx2818_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx2818_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx2818_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx2826_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda2816 _ctx2826_))))
      (define gx#core-context-rebind?
        (lambda _g4407_
          (let ((_g4406_ (length _g4407_)))
            (cond ((fx= _g4406_ 0)
                   (apply (lambda () (gx#core-context-rebind?__0)) _g4407_))
                  ((fx= _g4406_ 1)
                   (apply (lambda (_ctx2828_)
                            (gx#core-context-rebind?__opt-lambda2816
                             _ctx2828_))
                          _g4407_))
                  ((fx>= _g4406_ 1)
                   (apply (lambda (_ctx2830_ . __28152831_)
                            (apply gx#core-context-rebind?__opt-lambda2816
                                   _ctx2830_
                                   __28152831_))
                          _g4407_))
                  (else (error "No clause matching arguments" _g4407_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda2799
      (lambda (_ctx2801_)
        (let ((_$e2803_ (gx#core-context-top__1 _ctx2801_)))
          (if _$e2803_
              ((lambda (_ctx2806_)
                 (if (##structure-instance-of? _ctx2806_ 'gx#module-context::t)
                     (##structure-ref _ctx2806_ '6 gx#module-context::t '#f)
                     '#f))
               _$e2803_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx2812_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda2799 _ctx2812_))))
      (define gx#core-context-namespace
        (lambda _g4409_
          (let ((_g4408_ (length _g4409_)))
            (cond ((fx= _g4408_ 0)
                   (apply (lambda () (gx#core-context-namespace__0)) _g4409_))
                  ((fx= _g4408_ 1)
                   (apply (lambda (_ctx2814_)
                            (gx#core-context-namespace__opt-lambda2799
                             _ctx2814_))
                          _g4409_))
                  (else (error "No clause matching arguments" _g4409_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda2785
      (lambda (_bind2787_ _is?2788_)
        (if (##structure-direct-instance-of? _bind2787_ 'gx#syntax-binding::t)
            (_is?2788_
             (##structure-ref _bind2787_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind2793_)
          (let ((_is?2795_ gx#expander?))
            (gx#expander-binding?__opt-lambda2785 _bind2793_ _is?2795_))))
      (define gx#expander-binding?
        (lambda _g4411_
          (let ((_g4410_ (length _g4411_)))
            (cond ((fx= _g4410_ 1)
                   (apply (lambda (_bind2793_)
                            (gx#expander-binding?__0 _bind2793_))
                          _g4411_))
                  ((fx= _g4410_ 2)
                   (apply (lambda (_bind2797_ _is?2798_)
                            (gx#expander-binding?__opt-lambda2785
                             _bind2797_
                             _is?2798_))
                          _g4411_))
                  (else (error "No clause matching arguments" _g4411_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind2784_)
      (gx#expander-binding?__opt-lambda2785 _bind2784_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind2782_)
      (gx#expander-binding?__opt-lambda2785 _bind2782_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind2780_)
      (gx#expander-binding?__opt-lambda2785 _bind2780_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind2771_)
      (let ((_feature?2773_
             (lambda (_e2775_)
               (let ((_$e2777_
                      (##structure-instance-of?
                       _e2775_
                       'gx#feature-expander::t)))
                 (if _$e2777_
                     _$e2777_
                     (##structure-instance-of?
                      _e2775_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda2785 _bind2771_ _feature?2773_))))
  (define gx#private-feature-binding?
    (lambda (_bind2769_)
      (gx#expander-binding?__opt-lambda2785
       _bind2769_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda2754
      (lambda (_id2756_ _bound?2757_)
        (if (gx#identifier? _id2756_)
            (_bound?2757_ (gx#resolve-identifier__0 _id2756_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id2762_)
          (let ((_bound?2764_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda2754
             _id2762_
             _bound?2764_))))
      (define gx#core-bound-identifier?
        (lambda _g4413_
          (let ((_g4412_ (length _g4413_)))
            (cond ((fx= _g4412_ 1)
                   (apply (lambda (_id2762_)
                            (gx#core-bound-identifier?__0 _id2762_))
                          _g4413_))
                  ((fx= _g4412_ 2)
                   (apply (lambda (_id2766_ _bound?2767_)
                            (gx#core-bound-identifier?__opt-lambda2754
                             _id2766_
                             _bound?2767_))
                          _g4413_))
                  (else (error "No clause matching arguments" _g4413_))))))))
  (define gx#core-identifier=?
    (lambda (_x2746_ _y2747_)
      (let ((_y=?2749_
             (lambda (_xid2753_)
               ((if (list? _y2747_) memq eq?) _xid2753_ _y2747_))))
        (let ((_bind2751_ (gx#resolve-identifier__0 _x2746_)))
          (if (##structure-instance-of? _bind2751_ 'gx#binding::t)
              (_y=?2749_ (##structure-ref _bind2751_ '1 gx#binding::t '#f))
              (_y=?2749_ (gx#stx-e _x2746_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e2744_)
      (if (interned-symbol? _e2744_)
          (string-index (symbol->string _e2744_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda2700
      (lambda (_stx2702_ _src2703_ _ctx2704_ _marks2705_)
        (if (gx#sealed-syntax? _stx2702_)
            (gx#stx-unwrap__0 _stx2702_)
            (if (gx#identifier? _stx2702_)
                (let ((_id2707_ (gx#syntax-local-unwrap _stx2702_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id2707_)
                   (let ((_$e2709_ (gx#stx-source _id2707_)))
                     (if _$e2709_ _$e2709_ _src2703_))
                   _ctx2704_
                   (##structure-ref _id2707_ '3 gx#identifier-wrap::t '#f)))
                (if (gx#stx-datum? _stx2702_)
                    (gx#stx-e _stx2702_)
                    (##structure
                     gx#syntax-quote::t
                     _stx2702_
                     (let ((_$e2712_ (gx#stx-source _stx2702_)))
                       (if _$e2712_ _$e2712_ _src2703_))
                     _ctx2704_
                     (reverse _marks2705_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx2718_)
          (let ((_src2720_ '#f))
            (let ((_ctx2722_ (gx#current-expander-context)))
              (let ((_marks2724_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda2700
                 _stx2718_
                 _src2720_
                 _ctx2722_
                 _marks2724_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx2726_ _src2727_)
          (let ((_ctx2729_ (gx#current-expander-context)))
            (let ((_marks2731_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda2700
               _stx2726_
               _src2727_
               _ctx2729_
               _marks2731_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx2733_ _src2734_ _ctx2735_)
          (let ((_marks2737_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda2700
             _stx2733_
             _src2734_
             _ctx2735_
             _marks2737_))))
      (define gx#core-quote-syntax
        (lambda _g4415_
          (let ((_g4414_ (length _g4415_)))
            (cond ((fx= _g4414_ 1)
                   (apply (lambda (_stx2718_)
                            (gx#core-quote-syntax__0 _stx2718_))
                          _g4415_))
                  ((fx= _g4414_ 2)
                   (apply (lambda (_stx2726_ _src2727_)
                            (gx#core-quote-syntax__1 _stx2726_ _src2727_))
                          _g4415_))
                  ((fx= _g4414_ 3)
                   (apply (lambda (_stx2733_ _src2734_ _ctx2735_)
                            (gx#core-quote-syntax__2
                             _stx2733_
                             _src2734_
                             _ctx2735_))
                          _g4415_))
                  ((fx= _g4414_ 4)
                   (apply (lambda (_stx2739_ _src2740_ _ctx2741_ _marks2742_)
                            (gx#core-quote-syntax__opt-lambda2700
                             _stx2739_
                             _src2740_
                             _ctx2741_
                             _marks2742_))
                          _g4415_))
                  (else (error "No clause matching arguments" _g4415_))))))))
  (define gx#core-cons
    (lambda (_hd2698_ _tl2699_)
      (cons (gx#core-quote-syntax__0 _hd2698_) _tl2699_)))
  (define gx#core-list
    (lambda (_hd2695_ . _rest2696_)
      (cons (gx#core-quote-syntax__0 _hd2695_) _rest2696_)))
  (define gx#core-cons*
    (lambda (_hd2692_ . _rest2693_)
      (apply cons* (gx#core-quote-syntax__0 _hd2692_) _rest2693_)))
  (begin
    (define gx#core-resolve-path__opt-lambda2664
      (lambda (_stx-path2666_ _rel2667_)
        (let ((_path2679_ (gx#stx-e _stx-path2666_))
              (_reldir2680_
               ((letrec ((_lp2669_
                          (lambda (_relsrc2671_)
                            (if (##structure-instance-of?
                                 _relsrc2671_
                                 'gerbil#AST::t)
                                (_lp2669_
                                 (let ((_$e2673_ (gx#stx-source _relsrc2671_)))
                                   (if _$e2673_
                                       _$e2673_
                                       (gx#stx-e _relsrc2671_))))
                                (if (source-location-path? _relsrc2671_)
                                    (path-directory
                                     (source-location-path _relsrc2671_))
                                    (if (string? _relsrc2671_)
                                        (path-directory _relsrc2671_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp2669_)
                (let ((_$e2676_ (gx#stx-source _stx-path2666_)))
                  (if _$e2676_ _$e2676_ _rel2667_)))))
          (path-expand _path2679_ (path-normalize _reldir2680_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path2685_)
          (let ((_rel2687_ '#f))
            (gx#core-resolve-path__opt-lambda2664 _stx-path2685_ _rel2687_))))
      (define gx#core-resolve-path
        (lambda _g4417_
          (let ((_g4416_ (length _g4417_)))
            (cond ((fx= _g4416_ 1)
                   (apply (lambda (_stx-path2685_)
                            (gx#core-resolve-path__0 _stx-path2685_))
                          _g4417_))
                  ((fx= _g4416_ 2)
                   (apply (lambda (_stx-path2689_ _rel2690_)
                            (gx#core-resolve-path__opt-lambda2664
                             _stx-path2689_
                             _rel2690_))
                          _g4417_))
                  (else (error "No clause matching arguments" _g4417_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx2663_) (gx#stx-rewrap _stx2663_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx2661_)
      (gx#stx-unwrap__opt-lambda2474 _stx2661_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx2629_)
      (let ((_g26302638_ (gx#current-expander-marks)))
        (let ((_E26332642_
               (lambda () (error '"No clause matching" _g26302638_))))
          (let ((_else26322646_ (lambda () _stx2629_)))
            (let ((_K26342651_
                   (lambda (_hd2649_) (gx#stx-apply-mark _stx2629_ _hd2649_))))
              (if (##pair? _g26302638_)
                  (let ((_hd26352654_ (##car _g26302638_))
                        (_tl26362656_ (##cdr _g26302638_)))
                    (let ((_hd2659_ _hd26352654_)) (_K26342651_ _hd2659_)))
                  (_else26322646_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda2612
      (lambda (_stx2614_ _E2615_)
        (let ((_bind2617_ (gx#resolve-identifier__0 _stx2614_)))
          (if (##structure-direct-instance-of?
               _bind2617_
               'gx#syntax-binding::t)
              (##structure-ref _bind2617_ '4 gx#syntax-binding::t '#f)
              (_E2615_ _stx2614_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx2622_)
          (let ((_E2624_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda2612 _stx2622_ _E2624_))))
      (define gx#syntax-local-e
        (lambda _g4419_
          (let ((_g4418_ (length _g4419_)))
            (cond ((fx= _g4418_ 1)
                   (apply (lambda (_stx2622_) (gx#syntax-local-e__0 _stx2622_))
                          _g4419_))
                  ((fx= _g4418_ 2)
                   (apply (lambda (_stx2626_ _E2627_)
                            (gx#syntax-local-e__opt-lambda2612
                             _stx2626_
                             _E2627_))
                          _g4419_))
                  (else (error "No clause matching arguments" _g4419_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda2596
      (lambda (_stx2598_ _E2599_)
        (let ((_e2601_ (gx#syntax-local-e__opt-lambda2612 _stx2598_ _E2599_)))
          (if (##structure-instance-of? _e2601_ 'gx#expander::t)
              (##structure-ref _e2601_ '1 gx#expander::t '#f)
              _e2601_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx2606_)
          (let ((_E2608_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda2596 _stx2606_ _E2608_))))
      (define gx#syntax-local-value
        (lambda _g4421_
          (let ((_g4420_ (length _g4421_)))
            (cond ((fx= _g4420_ 1)
                   (apply (lambda (_stx2606_)
                            (gx#syntax-local-value__0 _stx2606_))
                          _g4421_))
                  ((fx= _g4420_ 2)
                   (apply (lambda (_stx2610_ _E2611_)
                            (gx#syntax-local-value__opt-lambda2596
                             _stx2610_
                             _E2611_))
                          _g4421_))
                  (else (error "No clause matching arguments" _g4421_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx2595_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx2595_))))
