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
    (lambda _$args4430_
      (apply make-struct-instance gx#expander-context::t _$args4430_)))
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
    (lambda _$args4427_
      (apply make-struct-instance gx#root-context::t _$args4427_)))
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
    (lambda _$args4424_
      (apply make-struct-instance gx#phi-context::t _$args4424_)))
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
    (lambda _$args4421_
      (apply make-struct-instance gx#top-context::t _$args4421_)))
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
    (lambda _$args4418_
      (apply make-struct-instance gx#module-context::t _$args4418_)))
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
    (lambda _$args4415_
      (apply make-struct-instance gx#prelude-context::t _$args4415_)))
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
    (lambda _$args4412_
      (apply make-struct-instance gx#local-context::t _$args4412_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda4394
      (lambda (_self4396_ _id4397_ _super4398_)
        (direct-struct-instance-init!
         _self4396_
         _id4397_
         (make-hash-table-eq)
         _super4398_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self4403_ _id4404_)
          (let ((_super4406_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda4394
             _self4403_
             _id4404_
             _super4406_))))
      (define gx#phi-context:::init!
        (lambda _g4434_
          (let ((_g4433_ (length _g4434_)))
            (cond ((fx= _g4433_ 2)
                   (apply (lambda (_self4403_ _id4404_)
                            (gx#phi-context:::init!__0 _self4403_ _id4404_))
                          _g4434_))
                  ((fx= _g4433_ 3)
                   (apply (lambda (_self4408_ _id4409_ _super4410_)
                            (gx#phi-context:::init!__opt-lambda4394
                             _self4408_
                             _id4409_
                             _super4410_))
                          _g4434_))
                  (else (error "No clause matching arguments" _g4434_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda4380
      (lambda (_self4382_ _super4383_)
        (direct-struct-instance-init!
         _self4382_
         (gensym 'L)
         (make-hash-table-eq)
         _super4383_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self4388_)
          (let ((_super4390_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda4380
             _self4388_
             _super4390_))))
      (define gx#local-context:::init!
        (lambda _g4436_
          (let ((_g4435_ (length _g4436_)))
            (cond ((fx= _g4435_ 1)
                   (apply (lambda (_self4388_)
                            (gx#local-context:::init!__0 _self4388_))
                          _g4436_))
                  ((fx= _g4435_ 2)
                   (apply (lambda (_self4392_ _super4393_)
                            (gx#local-context:::init!__opt-lambda4380
                             _self4392_
                             _super4393_))
                          _g4436_))
                  (else (error "No clause matching arguments" _g4436_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args4378_
      (apply make-struct-instance gx#binding::t _$args4378_)))
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
    (lambda _$args4375_
      (apply make-struct-instance gx#runtime-binding::t _$args4375_)))
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
    (lambda _$args4372_
      (apply make-struct-instance gx#local-binding::t _$args4372_)))
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
    (lambda _$args4369_
      (apply make-struct-instance gx#top-binding::t _$args4369_)))
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
    (lambda _$args4366_
      (apply make-struct-instance gx#module-binding::t _$args4366_)))
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
    (lambda _$args4363_
      (apply make-struct-instance gx#extern-binding::t _$args4363_)))
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
    (lambda _$args4360_
      (apply make-struct-instance gx#syntax-binding::t _$args4360_)))
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
    (lambda _$args4357_
      (apply make-struct-instance gx#import-binding::t _$args4357_)))
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
    (lambda _$args4354_
      (apply make-struct-instance gx#alias-binding::t _$args4354_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args4351_
      (apply make-struct-instance gx#expander::t _$args4351_)))
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
    (lambda _$args4348_
      (apply make-struct-instance gx#core-expander::t _$args4348_)))
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
    (lambda _$args4345_
      (apply make-struct-instance gx#expression-form::t _$args4345_)))
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
    (lambda _$args4342_
      (apply make-struct-instance gx#special-form::t _$args4342_)))
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
    (lambda _$args4339_
      (apply make-struct-instance gx#definition-form::t _$args4339_)))
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
    (lambda _$args4336_
      (apply make-struct-instance gx#top-special-form::t _$args4336_)))
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
    (lambda _$args4333_
      (apply make-struct-instance gx#module-special-form::t _$args4333_)))
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
    (lambda _$args4330_
      (apply make-struct-instance gx#feature-expander::t _$args4330_)))
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
    (lambda _$args4327_
      (apply make-struct-instance gx#private-feature-expander::t _$args4327_)))
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
    (lambda _$args4324_
      (apply make-struct-instance gx#reserved-expander::t _$args4324_)))
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
    (lambda _$args4321_
      (apply make-struct-instance gx#macro-expander::t _$args4321_)))
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
    (lambda _$args4318_
      (apply make-struct-instance gx#rename-macro-expander::t _$args4318_)))
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
    (lambda _$args4315_
      (apply make-struct-instance gx#user-expander::t _$args4315_)))
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
    (lambda _$args4312_
      (apply make-struct-instance gx#expander-mark::t _$args4312_)))
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
    (lambda _$args4309_
      (apply make-struct-instance gx#syntax-error::t _$args4309_)))
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
    (lambda (_where4304_ _message4305_ _stx4306_ . _details4307_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message4305_
              (cons _stx4306_ _details4307_)
              _where4304_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda4289
      (lambda (_stx4291_ _expression?4292_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda4273 _stx4291_ _expression?4292_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx4297_)
          (let ((_expression?4299_ '#f))
            (gx#eval-syntax__opt-lambda4289 _stx4297_ _expression?4299_))))
      (define gx#eval-syntax
        (lambda _g4438_
          (let ((_g4437_ (length _g4438_)))
            (cond ((fx= _g4437_ 1)
                   (apply (lambda (_stx4297_) (gx#eval-syntax__0 _stx4297_))
                          _g4438_))
                  ((fx= _g4437_ 2)
                   (apply (lambda (_stx4301_ _expression?4302_)
                            (gx#eval-syntax__opt-lambda4289
                             _stx4301_
                             _expression?4302_))
                          _g4438_))
                  (else (error "No clause matching arguments" _g4438_))))))))
  (define gx#eval-syntax*
    (lambda (_stx4288_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx4288_))))
  (begin
    (define gx#core-expand__opt-lambda4273
      (lambda (_stx4275_ _expression?4276_)
        (if _expression?4276_
            (gx#core-expand-expression _stx4275_)
            (gx#core-expand-top _stx4275_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx4281_)
          (let ((_expression?4283_ '#f))
            (gx#core-expand__opt-lambda4273 _stx4281_ _expression?4283_))))
      (define gx#core-expand
        (lambda _g4440_
          (let ((_g4439_ (length _g4440_)))
            (cond ((fx= _g4439_ 1)
                   (apply (lambda (_stx4281_) (gx#core-expand__0 _stx4281_))
                          _g4440_))
                  ((fx= _g4439_ 2)
                   (apply (lambda (_stx4285_ _expression?4286_)
                            (gx#core-expand__opt-lambda4273
                             _stx4285_
                             _expression?4286_))
                          _g4440_))
                  (else (error "No clause matching arguments" _g4440_))))))))
  (define gx#core-expand-top
    (lambda (_stx4242_)
      (let ((_stx4244_ (gx#core-expand*__0 _stx4242_)))
        (let ((_e42454252_ _stx4244_))
          (let ((_E42474256_
                 (lambda () (gx#core-expand-expression _stx4244_))))
            (let ((_E42464270_
                   (lambda ()
                     (if (gx#stx-pair? _e42454252_)
                         (let ((_e42484260_ (gx#syntax-e _e42454252_)))
                           (let ((_hd42494263_ (##car _e42484260_))
                                 (_tl42504265_ (##cdr _e42484260_)))
                             (let ((_form4268_ _hd42494263_))
                               (if (gx#core-bound-identifier?__0 _form4268_)
                                   _stx4244_
                                   (_E42474256_)))))
                         (_E42474256_)))))
              (let () (_E42464270_))))))))
  (define gx#core-expand-expression
    (lambda (_stx4164_)
      (let ((_sealed-expression?4166_
             (lambda (_hd4212_)
               (if (gx#sealed-syntax? _hd4212_)
                   (let ((_e42134220_ _hd4212_))
                     (let ((_E42154224_ (lambda () '#f)))
                       (let ((_E42144238_
                              (lambda ()
                                (if (gx#stx-pair? _e42134220_)
                                    (let ((_e42164228_
                                           (gx#syntax-e _e42134220_)))
                                      (let ((_hd42174231_ (##car _e42164228_))
                                            (_tl42184233_ (##cdr _e42164228_)))
                                        (let ((_form4236_ _hd42174231_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda2813
                                               _form4236_
                                               gx#expression-form-binding?)
                                              (_E42154224_)))))
                                    (_E42154224_)))))
                         (let () (_E42144238_)))))
                   '#f))))
        (let ((_illegal-expression4167_
               (lambda (_hd4210_ . _g4441_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx4164_
                  _hd4210_))))
          (let ((_expand-e4168_
                 (lambda (_form4205_ _hd4206_)
                   (let ((_bind4208_
                          (if (##structure-instance-of?
                               _form4205_
                               'gx#binding::t)
                              _form4205_
                              (gx#resolve-identifier__0 _form4205_))))
                     (if (gx#core-expander-binding? _bind4208_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind4208_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd4206_
                           (gx#stx-source _stx4164_)))
                         (if (##structure-direct-instance-of?
                              _bind4208_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind4208_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd4206_
                                (gx#stx-source _stx4164_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx4164_
                              _form4205_)))))))
            (let ((_hd4170_ (gx#core-expand-head _stx4164_)))
              (if (_sealed-expression?4166_ _hd4170_)
                  _hd4170_
                  (if (gx#stx-pair? _hd4170_)
                      (let ((_e41714178_ _hd4170_))
                        (let ((_E41734182_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e41714178_))))
                          (let ((_E41724201_
                                 (lambda ()
                                   (if (gx#stx-pair? _e41714178_)
                                       (let ((_e41744186_
                                              (gx#syntax-e _e41714178_)))
                                         (let ((_hd41754189_
                                                (##car _e41744186_))
                                               (_tl41764191_
                                                (##cdr _e41744186_)))
                                           (let ((_form4194_ _hd41754189_))
                                             (if '#t
                                                 (let ((_bind4196_
                                                        (if (gx#identifier?
                                                             _form4194_)
                                                            (gx#resolve-identifier__0
                                                             _form4194_)
                                                            '#f)))
                                                   (if (let ((_$e4198_
                                                              (not _bind4196_)))
                                                         (if _$e4198_
                                                             _$e4198_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind4196_))))
               (_expand-e4168_ '%#call (cons '%#call _hd4170_))
               (if (eq? (##structure-ref _bind4196_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd4170_ _illegal-expression4167_)
                   (if (gx#expression-form-binding? _bind4196_)
                       (_expand-e4168_ _bind4196_ _hd4170_)
                       (_illegal-expression4167_ _hd4170_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E41734182_)))))
                                       (_E41734182_)))))
                            (let () (_E41724201_)))))
                      (if (gx#core-bound-identifier?__0 _hd4170_)
                          (_illegal-expression4167_ _hd4170_)
                          (if (gx#identifier? _hd4170_)
                              (_expand-e4168_
                               '%#ref
                               (cons '%#ref (cons _hd4170_ '())))
                              (if (gx#stx-datum? _hd4170_)
                                  (_expand-e4168_
                                   '%#quote
                                   (cons '%#quote (cons _hd4170_ '())))
                                  (_illegal-expression4167_
                                   _hd4170_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx4159_)
      (call-with-parameters
       (lambda ()
         (let ((_stx4162_ (gx#core-expand-expression _stx4159_)))
           (values _stx4162_ (gx#eval-syntax* _stx4162_))))
       gx#current-expander-phi
       (fx1+ (gx#current-expander-phi)))))
  (begin
    (define gx#core-expand*__opt-lambda4138
      (lambda (_stx4140_ _stop?4141_)
        ((letrec ((_lp4143_
                   (lambda (_stx4145_)
                     (if (_stop?4141_ _stx4145_)
                         _stx4145_
                         (let ((_rstx4147_ (gx#core-expand1 _stx4145_)))
                           (if (eq? _stx4145_ _rstx4147_)
                               _stx4145_
                               (_lp4143_ _rstx4147_)))))))
           _lp4143_)
         _stx4140_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx4152_)
          (let ((_stop?4154_ false))
            (gx#core-expand*__opt-lambda4138 _stx4152_ _stop?4154_))))
      (define gx#core-expand*
        (lambda _g4443_
          (let ((_g4442_ (length _g4443_)))
            (cond ((fx= _g4442_ 1)
                   (apply (lambda (_stx4152_) (gx#core-expand*__0 _stx4152_))
                          _g4443_))
                  ((fx= _g4442_ 2)
                   (apply (lambda (_stx4156_ _stop?4157_)
                            (gx#core-expand*__opt-lambda4138
                             _stx4156_
                             _stop?4157_))
                          _g4443_))
                  (else (error "No clause matching arguments" _g4443_))))))))
  (define gx#core-expand1
    (lambda (_stx4090_)
      (let ((_step4092_
             (lambda (_hd4129_)
               (let ((_bind4131_ (gx#resolve-identifier__0 _hd4129_)))
                 (if (##structure-instance-of?
                      _bind4131_
                      'gx#runtime-binding::t)
                     _stx4090_
                     (if (##structure-direct-instance-of?
                          _bind4131_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind4131_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx4090_)
                         (if (not _bind4131_)
                             (begin
                               (if (let ((_$e4133_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e4133_
                                         _$e4133_
                                         (let ((_$e4136_
                                                (gx#core-context-rebind?__opt-lambda2875
                                                 (gx#core-context-top__0))))
                                           (if _$e4136_
                                               _$e4136_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd4129_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx4090_
                                    _hd4129_))
                               _stx4090_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx4090_))))))))
        (let ((_e40934101_ _stx4090_))
          (let ((_E40994105_ (lambda () _stx4090_)))
            (let ((_E40954111_
                   (lambda ()
                     (let ((_hd4109_ _e40934101_))
                       (if (gx#identifier? _hd4109_)
                           (_step4092_ _hd4109_)
                           (_E40994105_))))))
              (let ((_E40944125_
                     (lambda ()
                       (if (gx#stx-pair? _e40934101_)
                           (let ((_e40964115_ (gx#syntax-e _e40934101_)))
                             (let ((_hd40974118_ (##car _e40964115_))
                                   (_tl40984120_ (##cdr _e40964115_)))
                               (let ((_hd4123_ _hd40974118_))
                                 (if (gx#identifier? _hd4123_)
                                     (_step4092_ _hd4123_)
                                     (_E40954111_)))))
                           (_E40954111_)))))
                (let () (_E40944125_)))))))))
  (define gx#core-expand-head
    (lambda (_stx4056_)
      (let ((_stop?4058_
             (lambda (_stx4060_)
               (let ((_e40614068_ _stx4060_))
                 (let ((_E40634072_ (lambda () '#f)))
                   (let ((_E40624086_
                          (lambda ()
                            (if (gx#stx-pair? _e40614068_)
                                (let ((_e40644076_ (gx#syntax-e _e40614068_)))
                                  (let ((_hd40654079_ (##car _e40644076_))
                                        (_tl40664081_ (##cdr _e40644076_)))
                                    (let ((_hd4084_ _hd40654079_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd4084_)
                                          (_E40634072_)))))
                                (_E40634072_)))))
                     (let () (_E40624086_))))))))
        (gx#core-expand*__opt-lambda4138 _stx4056_ _stop?4058_))))
  (begin
    (define gx#core-expand-block__opt-lambda3860
      (lambda (_stx3862_ _expand-special3863_ _begin-form3864_ _expand-e3865_)
        (letrec ((_expand-splice3867_
                  (lambda (_hd4030_ _body4031_ _rest4032_ _r4033_)
                    (if (gx#stx-list? _body4031_)
                        (_K3871_ (gx#stx-foldr cons _rest4032_ _body4031_)
                                 _r4033_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx3862_
                         _hd4030_))))
                 (_expand-cond-expand3868_
                  (lambda (_hd4026_ _rest4027_ _r4028_)
                    (_K3871_ (cons (gx#core-expand-cond-expand% _hd4026_)
                                   _rest4027_)
                             _r4028_)))
                 (_expand-include3869_
                  (lambda (_hd3975_ _rest3976_ _r3977_)
                    (let ((_e39783988_ _hd3975_))
                      (let ((_E39803992_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e39783988_))))
                        (let ((_E39794022_
                               (lambda ()
                                 (if (gx#stx-pair? _e39783988_)
                                     (let ((_e39813996_
                                            (gx#syntax-e _e39783988_)))
                                       (let ((_hd39823999_ (##car _e39813996_))
                                             (_tl39834001_
                                              (##cdr _e39813996_)))
                                         (if (gx#stx-pair? _tl39834001_)
                                             (let ((_e39844004_
                                                    (gx#syntax-e
                                                     _tl39834001_)))
                                               (let ((_hd39854007_
                                                      (##car _e39844004_))
                                                     (_tl39864009_
                                                      (##cdr _e39844004_)))
                                                 (let ((_path4012_
                                                        _hd39854007_))
                                                   (if (gx#stx-null?
                                                        _tl39864009_)
                                                       (if (gx#stx-string?
                                                            _path4012_)
                                                           (let ((_rpath4014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda2723
                           _path4012_
                           (gx#stx-source _hd3975_))))
                     (let ((_block4016_
                            (gx#core-expand-include%__opt-lambda3609
                             _hd3975_
                             _rpath4014_)))
                       (let ((_rbody4019_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda3860
                                  _block4016_
                                  _expand-special3863_
                                  '#f
                                  _expand-e3865_))
                               gx#current-expander-path
                               (cons _rpath4014_ (gx#current-expander-path)))))
                         (let ()
                           (_K3871_ _rest3976_
                                    (foldr cons _r3977_ _rbody4019_))))))
                   (_E39803992_))
               (_E39803992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E39803992_))))
                                     (_E39803992_)))))
                          (let () (_E39794022_)))))))
                 (_expand-expression3870_
                  (lambda (_hd3971_ _rest3972_ _r3973_)
                    (_K3871_ _rest3972_
                             (cons (_expand-e3865_ _hd3971_) _r3973_))))
                 (_K3871_ (lambda (_rest3901_ _r3902_)
                            (let ((_e39033910_ _rest3901_))
                              (let ((_E39053914_
                                     (lambda ()
                                       (if _begin-form3864_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form3864_
                                             (reverse _r3902_))
                                            (gx#stx-source _stx3862_))
                                           _r3902_))))
                                (let ((_E39043967_
                                       (lambda ()
                                         (if (gx#stx-pair? _e39033910_)
                                             (let ((_e39063918_
                                                    (gx#syntax-e _e39033910_)))
                                               (let ((_hd39073921_
                                                      (##car _e39063918_))
                                                     (_tl39083923_
                                                      (##cdr _e39063918_)))
                                                 (let ((_hd3926_ _hd39073921_))
                                                   (let ((_rest3928_
                                                          _tl39083923_))
                                                     (if '#t
                                                         (let ((_hd3930_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3926_)))
                   (let ((_e39313938_ _hd3930_))
                     (let ((_E39333942_
                            (lambda ()
                              (_expand-expression3870_
                               _hd3930_
                               _rest3928_
                               _r3902_))))
                       (let ((_E39323963_
                              (lambda ()
                                (if (gx#stx-pair? _e39313938_)
                                    (let ((_e39343946_
                                           (gx#syntax-e _e39313938_)))
                                      (let ((_hd39353949_ (##car _e39343946_))
                                            (_tl39363951_ (##cdr _e39343946_)))
                                        (let ((_form3954_ _hd39353949_))
                                          (let ((_body3956_ _tl39363951_))
                                            (if '#t
                                                (let ((_bind3958_
                                                       (if (gx#identifier?
                                                            _form3954_)
                                                           (gx#resolve-identifier__0
                                                            _form3954_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind3958_)
                                                      (let ((_$e3960_
                                                             (##structure-ref
                                                              _bind3958_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e3960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice3867_
                     _hd3930_
                     _body3956_
                     _rest3928_
                     _r3902_)
                    (if (eq? _$e3960_ '%#cond-expand)
                        (_expand-cond-expand3868_ _hd3930_ _rest3928_ _r3902_)
                        (if (eq? _$e3960_ '%#include)
                            (_expand-include3869_ _hd3930_ _rest3928_ _r3902_)
                            (_expand-special3863_
                             _hd3930_
                             _K3871_
                             _rest3928_
                             _r3902_)))))
              (_expand-expression3870_ _hd3930_ _rest3928_ _r3902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E39333942_))))))
                                    (_E39333942_)))))
                         (let () (_E39323963_))))))
                 (_E39053914_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E39053914_)))))
                                  (let () (_E39043967_))))))))
          (let ((_e38723879_ _stx3862_))
            (let ((_E38743883_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e38723879_))))
              (let ((_E38733897_
                     (lambda ()
                       (if (gx#stx-pair? _e38723879_)
                           (let ((_e38753887_ (gx#syntax-e _e38723879_)))
                             (let ((_hd38763890_ (##car _e38753887_))
                                   (_tl38773892_ (##cdr _e38753887_)))
                               (let ((_body3895_ _tl38773892_))
                                 (if (gx#stx-list? _body3895_)
                                     (_K3871_ _body3895_ '())
                                     (_E38743883_)))))
                           (_E38743883_)))))
                (let () (_E38733897_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx4038_ _expand-special4039_)
          (let ((_begin-form4041_ '%#begin))
            (let ((_expand-e4043_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda3860
               _stx4038_
               _expand-special4039_
               _begin-form4041_
               _expand-e4043_)))))
      (define gx#core-expand-block__1
        (lambda (_stx4045_ _expand-special4046_ _begin-form4047_)
          (let ((_expand-e4049_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda3860
             _stx4045_
             _expand-special4046_
             _begin-form4047_
             _expand-e4049_))))
      (define gx#core-expand-block
        (lambda _g4445_
          (let ((_g4444_ (length _g4445_)))
            (cond ((fx= _g4444_ 2)
                   (apply (lambda (_stx4038_ _expand-special4039_)
                            (gx#core-expand-block__0
                             _stx4038_
                             _expand-special4039_))
                          _g4445_))
                  ((fx= _g4444_ 3)
                   (apply (lambda (_stx4045_
                                   _expand-special4046_
                                   _begin-form4047_)
                            (gx#core-expand-block__1
                             _stx4045_
                             _expand-special4046_
                             _begin-form4047_))
                          _g4445_))
                  ((fx= _g4444_ 4)
                   (apply (lambda (_stx4051_
                                   _expand-special4052_
                                   _begin-form4053_
                                   _expand-e4054_)
                            (gx#core-expand-block__opt-lambda3860
                             _stx4051_
                             _expand-special4052_
                             _begin-form4053_
                             _expand-e4054_))
                          _g4445_))
                  (else (error "No clause matching arguments" _g4445_))))))))
  (define gx#core-expand-block*
    (lambda (_stx3810_ _expand-special3811_)
      (let ((_g38123823_
             (gx#core-expand-block__1 _stx3810_ _expand-special3811_ '#f)))
        (let ((_E38163827_
               (lambda () (error '"No clause matching" _g38123823_))))
          (let ((_try-match38153838_
                 (lambda ()
                   (let ((_K38173833_
                          (lambda (_body3831_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body3831_))
                             (gx#stx-source _stx3810_)))))
                     (let ((_body3836_ _g38123823_))
                       (_K38173833_ _body3836_))))))
            (let ((_try-match38143854_
                   (lambda ()
                     (let ((_K38183844_ (lambda (_expr3842_) _expr3842_)))
                       (if (##pair? _g38123823_)
                           (let ((_hd38193847_ (##car _g38123823_))
                                 (_tl38203849_ (##cdr _g38123823_)))
                             (let ((_expr3852_ _hd38193847_))
                               (if (##null? _tl38203849_)
                                   (_K38183844_ _expr3852_)
                                   (_try-match38153838_))))
                           (_try-match38153838_))))))
              (let ((_K38213858_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx3810_))))
                (if (##null? _g38123823_)
                    (_K38213858_)
                    (_try-match38143854_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx3668_)
      (letrec ((_satisfied?3670_
                (lambda (_condition3768_)
                  (let ((_e37693777_ _condition3768_))
                    (let ((_E37723781_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e37693777_))))
                      (let ((_E37713800_
                             (lambda ()
                               (if (gx#stx-pair? _e37693777_)
                                   (let ((_e37733785_
                                          (gx#syntax-e _e37693777_)))
                                     (let ((_hd37743788_ (##car _e37733785_))
                                           (_tl37753790_ (##cdr _e37733785_)))
                                       (let ((_combinator3793_ _hd37743788_))
                                         (let ((_body3795_ _tl37753790_))
                                           (if (gx#stx-list? _body3795_)
                                               (let ((_$e3797_
                                                      (gx#stx-e
                                                       _combinator3793_)))
                                                 (if (eq? _$e3797_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?3670_
                                                           _body3795_))
                                                     (if (eq? _$e3797_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?3670_
                                                          _body3795_)
                                                         (if (eq? _$e3797_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?3670_
                                                              _body3795_)
                                                             (if (eq? _$e3797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body3795_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx3668_
                          _combinator3793_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E37723781_))))))
                                   (_E37723781_)))))
                        (let ((_E37703806_
                               (lambda ()
                                 (let ((_id3804_ _e37693777_))
                                   (if (gx#identifier? _id3804_)
                                       (gx#core-bound-identifier?__opt-lambda2813
                                        _id3804_
                                        gx#feature-binding?)
                                       (_E37713800_))))))
                          (let () (_E37703806_))))))))
               (_loop3671_
                (lambda (_rest3701_)
                  (let ((_e37023710_ _rest3701_))
                    (let ((_E37083714_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e37023710_))))
                      (let ((_E37043718_
                             (lambda ()
                               (if (gx#stx-null? _e37023710_)
                                   (if '#t '() (_E37083714_))
                                   (_E37083714_)))))
                        (let ((_E37033764_
                               (lambda ()
                                 (if (gx#stx-pair? _e37023710_)
                                     (let ((_e37053722_
                                            (gx#syntax-e _e37023710_)))
                                       (let ((_hd37063725_ (##car _e37053722_))
                                             (_tl37073727_
                                              (##cdr _e37053722_)))
                                         (let ((_hd3730_ _hd37063725_))
                                           (let ((_rest3732_ _tl37073727_))
                                             (if '#t
                                                 (let ((_e37333740_ _hd3730_))
                                                   (let ((_E37353744_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e37333740_))))
                                                     (let ((_E37343760_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e37333740_)
                          (let ((_e37363748_ (gx#syntax-e _e37333740_)))
                            (let ((_hd37373751_ (##car _e37363748_))
                                  (_tl37383753_ (##cdr _e37363748_)))
                              (let ((_condition3756_ _hd37373751_))
                                (let ((_body3758_ _tl37383753_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition3756_ 'else)
                                          (if (gx#stx-null? _rest3732_)
                                              _body3758_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx3668_
                                               _hd3730_))
                                          (if (_satisfied?3670_
                                               _condition3756_)
                                              _body3758_
                                              (_loop3671_ _rest3732_)))
                                      (_E37353744_))))))
                          (_E37353744_)))))
               (let () (_E37343760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E37043718_))))))
                                     (_E37043718_)))))
                          (let () (_E37033764_)))))))))
        (let ((_e36723679_ _stx3668_))
          (let ((_E36743683_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e36723679_))))
            (let ((_E36733697_
                   (lambda ()
                     (if (gx#stx-pair? _e36723679_)
                         (let ((_e36753687_ (gx#syntax-e _e36723679_)))
                           (let ((_hd36763690_ (##car _e36753687_))
                                 (_tl36773692_ (##cdr _e36753687_)))
                             (let ((_clauses3695_ _tl36773692_))
                               (if (gx#stx-list? _clauses3695_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop3671_ _clauses3695_))
                                   (_E36743683_)))))
                         (_E36743683_)))))
              (let () (_E36733697_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda3609
      (lambda (_stx3611_ _rpath3612_)
        (let ((_e36133623_ _stx3611_))
          (let ((_E36153627_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e36133623_))))
            (let ((_E36143654_
                   (lambda ()
                     (if (gx#stx-pair? _e36133623_)
                         (let ((_e36163631_ (gx#syntax-e _e36133623_)))
                           (let ((_hd36173634_ (##car _e36163631_))
                                 (_tl36183636_ (##cdr _e36163631_)))
                             (if (gx#stx-pair? _tl36183636_)
                                 (let ((_e36193639_
                                        (gx#syntax-e _tl36183636_)))
                                   (let ((_hd36203642_ (##car _e36193639_))
                                         (_tl36213644_ (##cdr _e36193639_)))
                                     (let ((_path3647_ _hd36203642_))
                                       (if (gx#stx-null? _tl36213644_)
                                           (if (gx#stx-string? _path3647_)
                                               (let ((_rpath3652_
                                                      (let ((_$e3649_
                                                             _rpath3612_))
                                                        (if _$e3649_
                                                            _$e3649_
                                                            (gx#core-resolve-path__opt-lambda2723
                                                             _path3647_
                                                             (gx#stx-source
                                                              _stx3611_))))))
                                                 (if (member _rpath3652_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx3611_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath3652_))
                                                       (gx#stx-source
                                                        _stx3611_)))))
                                               (_E36153627_))
                                           (_E36153627_)))))
                                 (_E36153627_))))
                         (_E36153627_)))))
              (let () (_E36143654_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx3661_)
          (let ((_rpath3663_ '#f))
            (gx#core-expand-include%__opt-lambda3609 _stx3661_ _rpath3663_))))
      (define gx#core-expand-include%
        (lambda _g4447_
          (let ((_g4446_ (length _g4447_)))
            (cond ((fx= _g4446_ 1)
                   (apply (lambda (_stx3661_)
                            (gx#core-expand-include%__0 _stx3661_))
                          _g4447_))
                  ((fx= _g4446_ 2)
                   (apply (lambda (_stx3665_ _rpath3666_)
                            (gx#core-expand-include%__opt-lambda3609
                             _stx3665_
                             _rpath3666_))
                          _g4447_))
                  (else (error "No clause matching arguments" _g4447_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda3578
      (lambda (_K3580_ _stx3581_ _method3582_)
        (if (procedure? _K3580_)
            (let ((_$e3584_ (gx#stx-source _stx3581_)))
              (if _$e3584_
                  ((lambda (_g35863588_)
                     (gx#stx-wrap-source (_K3580_ _stx3581_) _g35863588_))
                   _$e3584_)
                  (_K3580_ _stx3581_)))
            (let ((_$e3591_ (bound-method-ref _K3580_ _method3582_)))
              (if _$e3591_
                  ((lambda (_g35933595_)
                     (gx#core-apply-expander__opt-lambda3578
                      _g35933595_
                      _stx3581_
                      _method3582_))
                   _$e3591_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx3581_
                   _method3582_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K3601_ _stx3602_)
          (let ((_method3604_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda3578
             _K3601_
             _stx3602_
             _method3604_))))
      (define gx#core-apply-expander
        (lambda _g4449_
          (let ((_g4448_ (length _g4449_)))
            (cond ((fx= _g4448_ 2)
                   (apply (lambda (_K3601_ _stx3602_)
                            (gx#core-apply-expander__0 _K3601_ _stx3602_))
                          _g4449_))
                  ((fx= _g4448_ 3)
                   (apply (lambda (_K3606_ _stx3607_ _method3608_)
                            (gx#core-apply-expander__opt-lambda3578
                             _K3606_
                             _stx3607_
                             _method3608_))
                          _g4449_))
                  (else (error "No clause matching arguments" _g4449_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self3576_ _stx3577_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx3577_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self3551_ _stx3552_)
      (let ((_self35533559_ _self3551_))
        (let ((_E35553563_
               (lambda () (error '"No clause matching" _self35533559_))))
          (let ((_K35563568_
                 (lambda (_K3566_)
                   (gx#core-apply-expander__0 _K3566_ _stx3552_))))
            (if (struct-instance? gx#macro-expander::t _self35533559_)
                (let ((_e35573571_ (##vector-ref _self35533559_ '1)))
                  (let ((_K3574_ _e35573571_)) (_K35563568_ _K3574_)))
                (_E35553563_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self3526_ _stx3527_)
      (if (gx#sealed-syntax? _stx3527_)
          _stx3527_
          (let ((_self35283534_ _self3526_))
            (let ((_E35303538_
                   (lambda () (error '"No clause matching" _self35283534_))))
              (let ((_K35313543_
                     (lambda (_K3541_)
                       (gx#core-apply-expander__0 _K3541_ _stx3527_))))
                (if (struct-instance? gx#core-expander::t _self35283534_)
                    (let ((_e35323546_ (##vector-ref _self35283534_ '1)))
                      (let ((_K3549_ _e35323546_)) (_K35313543_ _K3549_)))
                    (_E35303538_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda3508
      (lambda (_self3510_ _stx3511_ _top?3512_)
        (if (_top?3512_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self3510_ _stx3511_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx3511_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self3517_ _stx3518_)
          (let ((_top?3520_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda3508
             _self3517_
             _stx3518_
             _top?3520_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g4451_
          (let ((_g4450_ (length _g4451_)))
            (cond ((fx= _g4450_ 2)
                   (apply (lambda (_self3517_ _stx3518_)
                            (gx#top-special-form::apply-macro-expander__0
                             _self3517_
                             _stx3518_))
                          _g4451_))
                  ((fx= _g4450_ 3)
                   (apply (lambda (_self3522_ _stx3523_ _top?3524_)
                            (gx#top-special-form::apply-macro-expander__opt-lambda3508
                             _self3522_
                             _stx3523_
                             _top?3524_))
                          _g4451_))
                  (else (error "No clause matching arguments" _g4451_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self3506_ _stx3507_)
      (gx#top-special-form::apply-macro-expander__opt-lambda3508
       _self3506_
       _stx3507_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self3453_ _stx3454_)
      (let ((_self34553461_ _self3453_))
        (let ((_E34573465_
               (lambda () (error '"No clause matching" _self34553461_))))
          (let ((_K34583498_
                 (lambda (_id3468_)
                   (let ((_e34693476_ _stx3454_))
                     (let ((_E34713480_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e34693476_))))
                       (let ((_E34703494_
                              (lambda ()
                                (if (gx#stx-pair? _e34693476_)
                                    (let ((_e34723484_
                                           (gx#syntax-e _e34693476_)))
                                      (let ((_hd34733487_ (##car _e34723484_))
                                            (_tl34743489_ (##cdr _e34723484_)))
                                        (let ((_body3492_ _tl34743489_))
                                          (if '#t
                                              (gx#core-cons
                                               _id3468_
                                               _body3492_)
                                              (_E34713480_)))))
                                    (_E34713480_)))))
                         (let () (_E34703494_))))))))
            (if (struct-instance? gx#rename-macro-expander::t _self34553461_)
                (let ((_e34593501_ (##vector-ref _self34553461_ '1)))
                  (let ((_id3504_ _e34593501_)) (_K34583498_ _id3504_)))
                (_E34573465_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda3399
      (lambda (_self3401_ _stx3402_ _method3403_)
        (let ((_self34043412_ _self3401_))
          (let ((_E34063416_
                 (lambda () (error '"No clause matching" _self34043412_))))
            (let ((_K34073423_
                   (lambda (_phi3419_ _ctx3420_ _K3421_)
                     (gx#core-apply-user-macro
                      _K3421_
                      _stx3402_
                      _ctx3420_
                      _phi3419_
                      _method3403_))))
              (if (struct-instance? gx#user-expander::t _self34043412_)
                  (let ((_e34083426_ (##vector-ref _self34043412_ '1)))
                    (let ((_K3429_ _e34083426_))
                      (let ((_e34093431_ (##vector-ref _self34043412_ '2)))
                        (let ((_ctx3434_ _e34093431_))
                          (let ((_e34103436_ (##vector-ref _self34043412_ '3)))
                            (let ((_phi3439_ _e34103436_))
                              (_K34073423_ _phi3439_ _ctx3434_ _K3429_)))))))
                  (_E34063416_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self3444_ _stx3445_)
          (let ((_method3447_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda3399
             _self3444_
             _stx3445_
             _method3447_))))
      (define gx#core-apply-user-expander
        (lambda _g4453_
          (let ((_g4452_ (length _g4453_)))
            (cond ((fx= _g4452_ 2)
                   (apply (lambda (_self3444_ _stx3445_)
                            (gx#core-apply-user-expander__0
                             _self3444_
                             _stx3445_))
                          _g4453_))
                  ((fx= _g4452_ 3)
                   (apply (lambda (_self3449_ _stx3450_ _method3451_)
                            (gx#core-apply-user-expander__opt-lambda3399
                             _self3449_
                             _stx3450_
                             _method3451_))
                          _g4453_))
                  (else (error "No clause matching arguments" _g4453_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K3391_ _stx3392_ _ctx3393_ _phi3394_ _method3395_)
      (let ((_mark3397_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx3393_
              _phi3394_
              _stx3392_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda3578
             _K3391_
             (gx#stx-apply-mark _stx3392_ _mark3397_)
             _method3395_)
            _mark3397_))
         gx#current-expander-marks
         (cons _mark3397_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda3363
      (lambda (_stx3365_ _phi3366_ _ctx3367_)
        ((letrec ((_lp3369_
                   (lambda (_bind3371_)
                     (if (##structure-direct-instance-of?
                          _bind3371_
                          'gx#import-binding::t)
                         (_lp3369_
                          (##structure-ref
                           _bind3371_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind3371_
                              'gx#alias-binding::t)
                             (_lp3369_
                              (gx#core-resolve-identifier__opt-lambda3293
                               (##structure-ref
                                _bind3371_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi3366_
                               _ctx3367_))
                             _bind3371_)))))
           _lp3369_)
         (gx#core-resolve-identifier__opt-lambda3293
          _stx3365_
          _phi3366_
          _ctx3367_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx3376_)
          (let ((_phi3378_ (gx#current-expander-phi)))
            (let ((_ctx3380_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda3363
               _stx3376_
               _phi3378_
               _ctx3380_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx3382_ _phi3383_)
          (let ((_ctx3385_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda3363
             _stx3382_
             _phi3383_
             _ctx3385_))))
      (define gx#resolve-identifier
        (lambda _g4455_
          (let ((_g4454_ (length _g4455_)))
            (cond ((fx= _g4454_ 1)
                   (apply (lambda (_stx3376_)
                            (gx#resolve-identifier__0 _stx3376_))
                          _g4455_))
                  ((fx= _g4454_ 2)
                   (apply (lambda (_stx3382_ _phi3383_)
                            (gx#resolve-identifier__1 _stx3382_ _phi3383_))
                          _g4455_))
                  ((fx= _g4454_ 3)
                   (apply (lambda (_stx3387_ _phi3388_ _ctx3389_)
                            (gx#resolve-identifier__opt-lambda3363
                             _stx3387_
                             _phi3388_
                             _ctx3389_))
                          _g4455_))
                  (else (error "No clause matching arguments" _g4455_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda3321
      (lambda (_stx3323_ _val3324_ _rebind?3325_ _phi3326_ _ctx3327_)
        (let ((_rebind?3329_
               (if (not _rebind?3325_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?3325_) _rebind?3325_ true))))
          (gx#core-bind!__opt-lambda3083
           (gx#core-identifier-key _stx3323_)
           _val3324_
           _rebind?3329_
           _phi3326_
           _ctx3327_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx3334_ _val3335_)
          (let ((_rebind?3337_ '#f))
            (let ((_phi3339_ (gx#current-expander-phi)))
              (let ((_ctx3341_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda3321
                 _stx3334_
                 _val3335_
                 _rebind?3337_
                 _phi3339_
                 _ctx3341_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx3343_ _val3344_ _rebind?3345_)
          (let ((_phi3347_ (gx#current-expander-phi)))
            (let ((_ctx3349_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda3321
               _stx3343_
               _val3344_
               _rebind?3345_
               _phi3347_
               _ctx3349_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx3351_ _val3352_ _rebind?3353_ _phi3354_)
          (let ((_ctx3356_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda3321
             _stx3351_
             _val3352_
             _rebind?3353_
             _phi3354_
             _ctx3356_))))
      (define gx#bind-identifier!
        (lambda _g4457_
          (let ((_g4456_ (length _g4457_)))
            (cond ((fx= _g4456_ 2)
                   (apply (lambda (_stx3334_ _val3335_)
                            (gx#bind-identifier!__0 _stx3334_ _val3335_))
                          _g4457_))
                  ((fx= _g4456_ 3)
                   (apply (lambda (_stx3343_ _val3344_ _rebind?3345_)
                            (gx#bind-identifier!__1
                             _stx3343_
                             _val3344_
                             _rebind?3345_))
                          _g4457_))
                  ((fx= _g4456_ 4)
                   (apply (lambda (_stx3351_ _val3352_ _rebind?3353_ _phi3354_)
                            (gx#bind-identifier!__2
                             _stx3351_
                             _val3352_
                             _rebind?3353_
                             _phi3354_))
                          _g4457_))
                  ((fx= _g4456_ 5)
                   (apply (lambda (_stx3358_
                                   _val3359_
                                   _rebind?3360_
                                   _phi3361_
                                   _ctx3362_)
                            (gx#bind-identifier!__opt-lambda3321
                             _stx3358_
                             _val3359_
                             _rebind?3360_
                             _phi3361_
                             _ctx3362_))
                          _g4457_))
                  (else (error "No clause matching arguments" _g4457_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda3293
      (lambda (_stx3295_ _phi3296_ _ctx3297_)
        ((letrec ((_lp3299_
                   (lambda (_e3301_ _marks3302_)
                     (if (symbol? _e3301_)
                         (gx#core-resolve-binding
                          _e3301_
                          _phi3296_
                          _ctx3297_
                          (reverse _marks3302_))
                         (if (gx#identifier-quote? _e3301_)
                             (gx#core-resolve-binding
                              (##structure-ref _e3301_ '1 AST::t '#f)
                              _phi3296_
                              (##structure-ref
                               _e3301_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e3301_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e3301_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e3301_ '1 AST::t '#f)
                                  _phi3296_
                                  _ctx3297_
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e3301_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks3302_))
                                 (if (##structure-direct-instance-of?
                                      _e3301_
                                      'gx#syntax-wrap::t)
                                     (_lp3299_
                                      (##structure-ref _e3301_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e3301_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks3302_))
                                     (if (##structure-instance-of?
                                          _e3301_
                                          'gerbil#AST::t)
                                         (_lp3299_
                                          (##structure-ref
                                           _e3301_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks3302_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx3295_)))))))))
           _lp3299_)
         _stx3295_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx3307_)
          (let ((_phi3309_ (gx#current-expander-phi)))
            (let ((_ctx3311_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda3293
               _stx3307_
               _phi3309_
               _ctx3311_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx3313_ _phi3314_)
          (let ((_ctx3316_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda3293
             _stx3313_
             _phi3314_
             _ctx3316_))))
      (define gx#core-resolve-identifier
        (lambda _g4459_
          (let ((_g4458_ (length _g4459_)))
            (cond ((fx= _g4458_ 1)
                   (apply (lambda (_stx3307_)
                            (gx#core-resolve-identifier__0 _stx3307_))
                          _g4459_))
                  ((fx= _g4458_ 2)
                   (apply (lambda (_stx3313_ _phi3314_)
                            (gx#core-resolve-identifier__1
                             _stx3313_
                             _phi3314_))
                          _g4459_))
                  ((fx= _g4458_ 3)
                   (apply (lambda (_stx3318_ _phi3319_ _ctx3320_)
                            (gx#core-resolve-identifier__opt-lambda3293
                             _stx3318_
                             _phi3319_
                             _ctx3320_))
                          _g4459_))
                  (else (error "No clause matching arguments" _g4459_))))))))
  (define gx#core-resolve-binding
    (lambda (_id3209_ _phi3210_ _ctx3211_ _marks3212_)
      (let ((_resolve3214_
             (lambda (_ctx3282_ _src-phi3283_ _key3284_)
               ((letrec ((_lp3286_
                          (lambda (_ctx3288_ _dphi3289_)
                            (let ((_$e3291_
                                   (gx#core-context-resolve
                                    _ctx3288_
                                    _key3284_)))
                              (if _$e3291_
                                  (values _$e3291_)
                                  (if (fxzero? _dphi3289_)
                                      '#f
                                      (if (fxpositive? _dphi3289_)
                                          (_lp3286_
                                           (gx#core-context-shift
                                            _ctx3288_
                                            '-1)
                                           (fx1- _dphi3289_))
                                          (if (fxnegative? _dphi3289_)
                                              (_lp3286_
                                               (gx#core-context-shift
                                                _ctx3288_
                                                '1)
                                               (fx1+ _dphi3289_))
                                              '#!void))))))))
                  _lp3286_)
                (gx#core-context-shift _ctx3282_ _phi3210_)
                (fx- _phi3210_ _src-phi3283_)))))
        ((letrec ((_lp3216_
                   (lambda (_ctx3218_ _src-phi3219_ _rest3220_)
                     (let ((_rest32213229_ _rest3220_))
                       (let ((_E32243233_
                              (lambda ()
                                (error '"No clause matching" _rest32213229_))))
                         (let ((_else32233237_
                                (lambda ()
                                  (_resolve3214_
                                   _ctx3218_
                                   _src-phi3219_
                                   _id3209_))))
                           (let ((_K32253270_
                                  (lambda (_rest3240_ _hd3241_)
                                    (let ((_hd32423248_ _hd3241_))
                                      (let ((_E32443252_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd32423248_))))
                                        (let ((_K32453262_
                                               (lambda (_subst3255_)
                                                 (let ((_$e3259_
                                                        (let ((_key3257_
                                                               (if _subst3255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (hash-get _subst3255_ _id3209_)
                           '#f)))
                  (if _key3257_
                      (_resolve3214_ _ctx3218_ _src-phi3219_ _key3257_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e3259_
                                                       _$e3259_
                                                       (_lp3216_
                                                        (##structure-ref
                                                         _hd3241_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd3241_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest3240_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd32423248_)
                                              (let ((_e32463265_
                                                     (##vector-ref
                                                      _hd32423248_
                                                      '1)))
                                                (let ((_subst3268_
                                                       _e32463265_))
                                                  (_K32453262_ _subst3268_)))
                                              (_E32443252_))))))))
                             (if (##pair? _rest32213229_)
                                 (let ((_hd32263273_ (##car _rest32213229_))
                                       (_tl32273275_ (##cdr _rest32213229_)))
                                   (let ((_hd3278_ _hd32263273_))
                                     (let ((_rest3280_ _tl32273275_))
                                       (_K32253270_ _rest3280_ _hd3278_))))
                                 (_else32233237_)))))))))
           _lp3216_)
         _ctx3211_
         _phi3210_
         _marks3212_))))
  (begin
    (define gx#core-bind!__opt-lambda3083
      (lambda (_key3085_ _val3086_ _rebind?3087_ _phi3088_ _ctx3089_)
        (let ((_update-binding3091_
               (lambda (_xval3162_)
                 (if (let ((_$e3164_
                            (_rebind?3087_ _ctx3089_ _xval3162_ _val3086_)))
                       (if _$e3164_
                           _$e3164_
                           (let ((_$e3170_
                                  (if (##structure-direct-instance-of?
                                       _xval3162_
                                       'gx#import-binding::t)
                                      (let ((_$e3167_
                                             (##structure-ref
                                              _xval3162_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e3167_
                                            _$e3167_
                                            (if (##structure-instance-of?
                                                 _val3086_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val3086_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e3170_
                                 _$e3170_
                                 (if (##structure-instance-of?
                                      _xval3162_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val3086_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val3086_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval3162_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val3086_
                     (if (if (##structure-direct-instance-of?
                              _val3086_
                              'gx#import-binding::t)
                             (let ((_$e3173_
                                    (##structure-ref
                                     _val3086_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e3173_
                                   _$e3173_
                                   (if (##structure-instance-of?
                                        _xval3162_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val3086_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval3162_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval3162_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key3085_
                          _xval3162_
                          _val3086_))))))
          (let ((_gensubst3092_
                 (lambda (_subst3157_ _id3158_)
                   (let ((_eid3160_
                          (gensym (if (uninterned-symbol? _id3158_)
                                      '%
                                      _id3158_))))
                     (begin
                       (hash-put! _subst3157_ _id3158_ _eid3160_)
                       _eid3160_)))))
            (let ((_subst!3093_
                   (lambda (_key3095_)
                     (let ((_key30963104_ _key3095_))
                       (let ((_E30993108_
                              (lambda ()
                                (error '"No clause matching" _key30963104_))))
                         (let ((_else30983112_ (lambda () _key3095_)))
                           (let ((_K31003145_
                                  (lambda (_mark3115_ _id3116_)
                                    (let ((_mark31173123_ _mark3115_))
                                      (let ((_E31193127_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark31173123_))))
                                        (let ((_K31203137_
                                               (lambda (_subst3130_)
                                                 (if (not _subst3130_)
                                                     (let ((_subst3132_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark3115_
                                                          _subst3132_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst3092_
                                                          _subst3132_
                                                          _id3116_)))
                                                     (let ((_$e3134_
                                                            (hash-get
                                                             _subst3130_
                                                             _id3116_)))
                                                       (if _$e3134_
                                                           (values _$e3134_)
                                                           (_gensubst3092_
                                                            _subst3130_
                                                            _id3116_)))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _mark31173123_)
                                              (let ((_e31213140_
                                                     (##vector-ref
                                                      _mark31173123_
                                                      '1)))
                                                (let ((_subst3143_
                                                       _e31213140_))
                                                  (_K31203137_ _subst3143_)))
                                              (_E31193127_))))))))
                             (if (##pair? _key30963104_)
                                 (let ((_hd31013148_ (##car _key30963104_))
                                       (_tl31023150_ (##cdr _key30963104_)))
                                   (let ((_id3153_ _hd31013148_))
                                     (let ((_mark3155_ _tl31023150_))
                                       (_K31003145_ _mark3155_ _id3153_))))
                                 (_else30983112_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx3089_ _phi3088_)
               (_subst!3093_ _key3085_)
               _val3086_
               _update-binding3091_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key3179_ _val3180_)
          (let ((_rebind?3182_ false))
            (let ((_phi3184_ (gx#current-expander-phi)))
              (let ((_ctx3186_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda3083
                 _key3179_
                 _val3180_
                 _rebind?3182_
                 _phi3184_
                 _ctx3186_))))))
      (define gx#core-bind!__1
        (lambda (_key3188_ _val3189_ _rebind?3190_)
          (let ((_phi3192_ (gx#current-expander-phi)))
            (let ((_ctx3194_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda3083
               _key3188_
               _val3189_
               _rebind?3190_
               _phi3192_
               _ctx3194_)))))
      (define gx#core-bind!__2
        (lambda (_key3196_ _val3197_ _rebind?3198_ _phi3199_)
          (let ((_ctx3201_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda3083
             _key3196_
             _val3197_
             _rebind?3198_
             _phi3199_
             _ctx3201_))))
      (define gx#core-bind!
        (lambda _g4461_
          (let ((_g4460_ (length _g4461_)))
            (cond ((fx= _g4460_ 2)
                   (apply (lambda (_key3179_ _val3180_)
                            (gx#core-bind!__0 _key3179_ _val3180_))
                          _g4461_))
                  ((fx= _g4460_ 3)
                   (apply (lambda (_key3188_ _val3189_ _rebind?3190_)
                            (gx#core-bind!__1
                             _key3188_
                             _val3189_
                             _rebind?3190_))
                          _g4461_))
                  ((fx= _g4460_ 4)
                   (apply (lambda (_key3196_ _val3197_ _rebind?3198_ _phi3199_)
                            (gx#core-bind!__2
                             _key3196_
                             _val3197_
                             _rebind?3198_
                             _phi3199_))
                          _g4461_))
                  ((fx= _g4460_ 5)
                   (apply (lambda (_key3203_
                                   _val3204_
                                   _rebind?3205_
                                   _phi3206_
                                   _ctx3207_)
                            (gx#core-bind!__opt-lambda3083
                             _key3203_
                             _val3204_
                             _rebind?3205_
                             _phi3206_
                             _ctx3207_))
                          _g4461_))
                  (else (error "No clause matching arguments" _g4461_))))))))
  (define gx#core-identifier-key
    (lambda (_stx3015_)
      (if (symbol? _stx3015_)
          (let ((_g30163024_ (gx#current-expander-marks)))
            (let ((_E30193028_
                   (lambda () (error '"No clause matching" _g30163024_))))
              (let ((_else30183032_ (lambda () _stx3015_)))
                (let ((_K30203037_
                       (lambda (_hd3035_) (cons _stx3015_ _hd3035_))))
                  (if (##pair? _g30163024_)
                      (let ((_hd30213040_ (##car _g30163024_))
                            (_tl30223042_ (##cdr _g30163024_)))
                        (let ((_hd3045_ _hd30213040_)) (_K30203037_ _hd3045_)))
                      (_else30183032_))))))
          (if (gx#identifier? _stx3015_)
              (let ((_id3047_ (gx#syntax-local-unwrap _stx3015_)))
                (let ((_eid3049_ (gx#stx-e _id3047_)))
                  (let ((_marks3051_ (gx#stx-identifier-marks _id3047_)))
                    (let ()
                      (let ((_marks30533061_ _marks3051_))
                        (let ((_E30563065_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks30533061_))))
                          (let ((_else30553069_ (lambda () _eid3049_)))
                            (let ((_K30573074_
                                   (lambda (_hd3072_)
                                     (cons _eid3049_ _hd3072_))))
                              (if (##pair? _marks30533061_)
                                  (let ((_hd30583077_ (##car _marks30533061_))
                                        (_tl30593079_ (##cdr _marks30533061_)))
                                    (let ((_hd3082_ _hd30583077_))
                                      (_K30573074_ _hd3082_)))
                                  (_else30553069_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx3015_)))))
  (define gx#core-context-shift
    (lambda (_ctx2960_ _phi2961_)
      (let ((_make-phi2963_
             (lambda (_super3013_)
               (let ((__obj4432 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda4394
                    __obj4432
                    (gensym 'phi)
                    _super3013_)
                   __obj4432)))))
        (let ((_make-phi/up2964_
               (lambda (_ctx3008_ _super3009_)
                 (let ((_ctx+13011_ (_make-phi2963_ _super3009_)))
                   (begin
                     (##structure-set!
                      _ctx3008_
                      _ctx+13011_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+13011_
                      _ctx3008_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+13011_)))))
          (let ((_make-phi/down2965_
                 (lambda (_ctx3003_ _super3004_)
                   (let ((_ctx-13006_ (_make-phi2963_ _super3004_)))
                     (begin
                       (##structure-set!
                        _ctx-13006_
                        _ctx3003_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx3003_
                        _ctx-13006_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-13006_)))))
            (let ((_shift2966_
                   (lambda (_ctx2987_
                            _delta2988_
                            _make-delta-context2989_
                            _phi2990_
                            _K2991_)
                     (let ((_$e2993_
                            (##structure-ref
                             _ctx2987_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e2993_
                           ((lambda (_super2996_)
                              (let ((_super2998_
                                     (_K2991_ _super2996_ _delta2988_)))
                                (let ((_ctx+d3000_
                                       (_make-delta-context2989_
                                        _ctx2987_
                                        _super2998_)))
                                  (let ()
                                    (_K2991_ _ctx+d3000_
                                             (fx- _phi2990_ _delta2988_))))))
                            _$e2993_)
                           (error '"Bad context" _ctx2987_))))))
              ((letrec ((_K2968_ (lambda (_ctx2970_ _phi2971_)
                                   (if (fxzero? _phi2971_)
                                       _ctx2970_
                                       (if (##structure-instance-of?
                                            _ctx2970_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi2971_)
                                               (let ((_$e2973_
                                                      (##structure-ref
                                                       _ctx2970_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e2973_
                                                     ((lambda (_g29752977_)
                                                        (_K2968_ _g29752977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1- _phi2971_)))
              _$e2973_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2966_
                                                      _ctx2970_
                                                      '1
                                                      _make-phi/up2964_
                                                      _phi2971_
                                                      _K2968_)))
                                               (let ((_$e2980_
                                                      (##structure-ref
                                                       _ctx2970_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e2980_
                                                     ((lambda (_g29822984_)
                                                        (_K2968_ _g29822984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1+ _phi2971_)))
              _$e2980_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2966_
                                                      _ctx2970_
                                                      '-1
                                                      _make-phi/down2965_
                                                      _phi2971_
                                                      _K2968_))))
                                           _ctx2970_)))))
                 _K2968_)
               _ctx2960_
               _phi2961_)))))))
  (define gx#core-context-get
    (lambda (_ctx2957_ _key2958_)
      (hash-get
       (##structure-ref _ctx2957_ '2 gx#expander-context::t '#f)
       _key2958_)))
  (define gx#core-context-put!
    (lambda (_ctx2953_ _key2954_ _val2955_)
      (hash-put!
       (##structure-ref _ctx2953_ '2 gx#expander-context::t '#f)
       _key2954_
       _val2955_)))
  (define gx#core-context-resolve
    (lambda (_ctx2940_ _key2941_)
      ((letrec ((_lp2943_
                 (lambda (_ctx2945_)
                   (let ((_$e2947_ (gx#core-context-get _ctx2945_ _key2941_)))
                     (if _$e2947_
                         (values _$e2947_)
                         (let ((_$e2950_
                                (if (##structure-instance-of?
                                     _ctx2945_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx2945_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e2950_ (_lp2943_ _$e2950_) '#f)))))))
         _lp2943_)
       _ctx2940_)))
  (define gx#core-context-bind!
    (lambda (_ctx2930_ _key2931_ _val2932_ _rebind2933_)
      (let ((_$e2935_ (gx#core-context-get _ctx2930_ _key2931_)))
        (if _$e2935_
            ((lambda (_xval2938_)
               (gx#core-context-put!
                _ctx2930_
                _key2931_
                (_rebind2933_ _xval2938_)))
             _$e2935_)
            (gx#core-context-put! _ctx2930_ _key2931_ _val2932_)))))
  (begin
    (define gx#core-context-top__opt-lambda2906
      (lambda (_ctx2908_ _stop?2909_)
        ((letrec ((_lp2911_
                   (lambda (_ctx2913_)
                     (if (_stop?2909_ _ctx2913_)
                         _ctx2913_
                         (if (##structure-instance-of?
                              _ctx2913_
                              'gx#context-phi::t)
                             (_lp2911_
                              (##structure-ref
                               _ctx2913_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp2911_)
         _ctx2908_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx2919_ (gx#current-expander-context)))
            (let ((_stop?2921_ gx#top-context?))
              (gx#core-context-top__opt-lambda2906 _ctx2919_ _stop?2921_)))))
      (define gx#core-context-top__1
        (lambda (_ctx2923_)
          (let ((_stop?2925_ gx#top-context?))
            (gx#core-context-top__opt-lambda2906 _ctx2923_ _stop?2925_))))
      (define gx#core-context-top
        (lambda _g4463_
          (let ((_g4462_ (length _g4463_)))
            (cond ((fx= _g4462_ 0)
                   (apply (lambda () (gx#core-context-top__0)) _g4463_))
                  ((fx= _g4462_ 1)
                   (apply (lambda (_ctx2923_)
                            (gx#core-context-top__1 _ctx2923_))
                          _g4463_))
                  ((fx= _g4462_ 2)
                   (apply (lambda (_ctx2927_ _stop?2928_)
                            (gx#core-context-top__opt-lambda2906
                             _ctx2927_
                             _stop?2928_))
                          _g4463_))
                  (else (error "No clause matching arguments" _g4463_))))))))
  (begin
    (define gx#core-context-root__opt-lambda2891
      (lambda (_ctx2893_)
        ((letrec ((_lp2895_
                   (lambda (_ctx2897_)
                     (if (##structure-instance-of?
                          _ctx2897_
                          'gx#context-phi::t)
                         (_lp2895_
                          (##structure-ref _ctx2897_ '3 gx#phi-context::t '#f))
                         _ctx2897_))))
           _lp2895_)
         _ctx2893_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx2903_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda2891 _ctx2903_))))
      (define gx#core-context-root
        (lambda _g4465_
          (let ((_g4464_ (length _g4465_)))
            (cond ((fx= _g4464_ 0)
                   (apply (lambda () (gx#core-context-root__0)) _g4465_))
                  ((fx= _g4464_ 1)
                   (apply (lambda (_ctx2905_)
                            (gx#core-context-root__opt-lambda2891 _ctx2905_))
                          _g4465_))
                  (else (error "No clause matching arguments" _g4465_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda2875
      (lambda (_ctx2877_ . __28742878_)
        (if (##structure-instance-of? _ctx2877_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx2877_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx2877_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx2885_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda2875 _ctx2885_))))
      (define gx#core-context-rebind?
        (lambda _g4467_
          (let ((_g4466_ (length _g4467_)))
            (cond ((fx= _g4466_ 0)
                   (apply (lambda () (gx#core-context-rebind?__0)) _g4467_))
                  ((fx= _g4466_ 1)
                   (apply (lambda (_ctx2887_)
                            (gx#core-context-rebind?__opt-lambda2875
                             _ctx2887_))
                          _g4467_))
                  ((fx>= _g4466_ 1)
                   (apply (lambda (_ctx2889_ . __28742890_)
                            (apply gx#core-context-rebind?__opt-lambda2875
                                   _ctx2889_
                                   __28742890_))
                          _g4467_))
                  (else (error "No clause matching arguments" _g4467_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda2858
      (lambda (_ctx2860_)
        (let ((_$e2862_ (gx#core-context-top__1 _ctx2860_)))
          (if _$e2862_
              ((lambda (_ctx2865_)
                 (if (##structure-instance-of? _ctx2865_ 'gx#module-context::t)
                     (##structure-ref _ctx2865_ '6 gx#module-context::t '#f)
                     '#f))
               _$e2862_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx2871_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda2858 _ctx2871_))))
      (define gx#core-context-namespace
        (lambda _g4469_
          (let ((_g4468_ (length _g4469_)))
            (cond ((fx= _g4468_ 0)
                   (apply (lambda () (gx#core-context-namespace__0)) _g4469_))
                  ((fx= _g4468_ 1)
                   (apply (lambda (_ctx2873_)
                            (gx#core-context-namespace__opt-lambda2858
                             _ctx2873_))
                          _g4469_))
                  (else (error "No clause matching arguments" _g4469_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda2844
      (lambda (_bind2846_ _is?2847_)
        (if (##structure-direct-instance-of? _bind2846_ 'gx#syntax-binding::t)
            (_is?2847_
             (##structure-ref _bind2846_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind2852_)
          (let ((_is?2854_ gx#expander?))
            (gx#expander-binding?__opt-lambda2844 _bind2852_ _is?2854_))))
      (define gx#expander-binding?
        (lambda _g4471_
          (let ((_g4470_ (length _g4471_)))
            (cond ((fx= _g4470_ 1)
                   (apply (lambda (_bind2852_)
                            (gx#expander-binding?__0 _bind2852_))
                          _g4471_))
                  ((fx= _g4470_ 2)
                   (apply (lambda (_bind2856_ _is?2857_)
                            (gx#expander-binding?__opt-lambda2844
                             _bind2856_
                             _is?2857_))
                          _g4471_))
                  (else (error "No clause matching arguments" _g4471_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind2843_)
      (gx#expander-binding?__opt-lambda2844 _bind2843_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind2841_)
      (gx#expander-binding?__opt-lambda2844 _bind2841_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind2839_)
      (gx#expander-binding?__opt-lambda2844 _bind2839_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind2830_)
      (let ((_feature?2832_
             (lambda (_e2834_)
               (let ((_$e2836_
                      (##structure-instance-of?
                       _e2834_
                       'gx#feature-expander::t)))
                 (if _$e2836_
                     _$e2836_
                     (##structure-instance-of?
                      _e2834_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda2844 _bind2830_ _feature?2832_))))
  (define gx#private-feature-binding?
    (lambda (_bind2828_)
      (gx#expander-binding?__opt-lambda2844
       _bind2828_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda2813
      (lambda (_id2815_ _bound?2816_)
        (if (gx#identifier? _id2815_)
            (_bound?2816_ (gx#resolve-identifier__0 _id2815_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id2821_)
          (let ((_bound?2823_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda2813
             _id2821_
             _bound?2823_))))
      (define gx#core-bound-identifier?
        (lambda _g4473_
          (let ((_g4472_ (length _g4473_)))
            (cond ((fx= _g4472_ 1)
                   (apply (lambda (_id2821_)
                            (gx#core-bound-identifier?__0 _id2821_))
                          _g4473_))
                  ((fx= _g4472_ 2)
                   (apply (lambda (_id2825_ _bound?2826_)
                            (gx#core-bound-identifier?__opt-lambda2813
                             _id2825_
                             _bound?2826_))
                          _g4473_))
                  (else (error "No clause matching arguments" _g4473_))))))))
  (define gx#core-identifier=?
    (lambda (_x2805_ _y2806_)
      (let ((_y=?2808_
             (lambda (_xid2812_)
               ((if (list? _y2806_) memq eq?) _xid2812_ _y2806_))))
        (let ((_bind2810_ (gx#resolve-identifier__0 _x2805_)))
          (if (##structure-instance-of? _bind2810_ 'gx#binding::t)
              (_y=?2808_ (##structure-ref _bind2810_ '1 gx#binding::t '#f))
              (_y=?2808_ (gx#stx-e _x2805_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e2803_)
      (if (interned-symbol? _e2803_)
          (string-index (symbol->string _e2803_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda2759
      (lambda (_stx2761_ _src2762_ _ctx2763_ _marks2764_)
        (if (gx#sealed-syntax? _stx2761_)
            (gx#stx-unwrap__0 _stx2761_)
            (if (gx#identifier? _stx2761_)
                (let ((_id2766_ (gx#syntax-local-unwrap _stx2761_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id2766_)
                   (let ((_$e2768_ (gx#stx-source _id2766_)))
                     (if _$e2768_ _$e2768_ _src2762_))
                   _ctx2763_
                   (##structure-ref _id2766_ '3 gx#identifier-wrap::t '#f)))
                (if (gx#stx-datum? _stx2761_)
                    (gx#stx-e _stx2761_)
                    (##structure
                     gx#syntax-quote::t
                     _stx2761_
                     (let ((_$e2771_ (gx#stx-source _stx2761_)))
                       (if _$e2771_ _$e2771_ _src2762_))
                     _ctx2763_
                     (reverse _marks2764_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx2777_)
          (let ((_src2779_ '#f))
            (let ((_ctx2781_ (gx#current-expander-context)))
              (let ((_marks2783_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda2759
                 _stx2777_
                 _src2779_
                 _ctx2781_
                 _marks2783_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx2785_ _src2786_)
          (let ((_ctx2788_ (gx#current-expander-context)))
            (let ((_marks2790_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda2759
               _stx2785_
               _src2786_
               _ctx2788_
               _marks2790_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx2792_ _src2793_ _ctx2794_)
          (let ((_marks2796_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda2759
             _stx2792_
             _src2793_
             _ctx2794_
             _marks2796_))))
      (define gx#core-quote-syntax
        (lambda _g4475_
          (let ((_g4474_ (length _g4475_)))
            (cond ((fx= _g4474_ 1)
                   (apply (lambda (_stx2777_)
                            (gx#core-quote-syntax__0 _stx2777_))
                          _g4475_))
                  ((fx= _g4474_ 2)
                   (apply (lambda (_stx2785_ _src2786_)
                            (gx#core-quote-syntax__1 _stx2785_ _src2786_))
                          _g4475_))
                  ((fx= _g4474_ 3)
                   (apply (lambda (_stx2792_ _src2793_ _ctx2794_)
                            (gx#core-quote-syntax__2
                             _stx2792_
                             _src2793_
                             _ctx2794_))
                          _g4475_))
                  ((fx= _g4474_ 4)
                   (apply (lambda (_stx2798_ _src2799_ _ctx2800_ _marks2801_)
                            (gx#core-quote-syntax__opt-lambda2759
                             _stx2798_
                             _src2799_
                             _ctx2800_
                             _marks2801_))
                          _g4475_))
                  (else (error "No clause matching arguments" _g4475_))))))))
  (define gx#core-cons
    (lambda (_hd2757_ _tl2758_)
      (cons (gx#core-quote-syntax__0 _hd2757_) _tl2758_)))
  (define gx#core-list
    (lambda (_hd2754_ . _rest2755_)
      (cons (gx#core-quote-syntax__0 _hd2754_) _rest2755_)))
  (define gx#core-cons*
    (lambda (_hd2751_ . _rest2752_)
      (apply cons* (gx#core-quote-syntax__0 _hd2751_) _rest2752_)))
  (begin
    (define gx#core-resolve-path__opt-lambda2723
      (lambda (_stx-path2725_ _rel2726_)
        (let ((_path2738_ (gx#stx-e _stx-path2725_))
              (_reldir2739_
               ((letrec ((_lp2728_
                          (lambda (_relsrc2730_)
                            (if (##structure-instance-of?
                                 _relsrc2730_
                                 'gerbil#AST::t)
                                (_lp2728_
                                 (let ((_$e2732_ (gx#stx-source _relsrc2730_)))
                                   (if _$e2732_
                                       _$e2732_
                                       (gx#stx-e _relsrc2730_))))
                                (if (source-location-path? _relsrc2730_)
                                    (path-directory
                                     (source-location-path _relsrc2730_))
                                    (if (string? _relsrc2730_)
                                        (path-directory _relsrc2730_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp2728_)
                (let ((_$e2735_ (gx#stx-source _stx-path2725_)))
                  (if _$e2735_ _$e2735_ _rel2726_)))))
          (path-expand _path2738_ (path-normalize _reldir2739_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path2744_)
          (let ((_rel2746_ '#f))
            (gx#core-resolve-path__opt-lambda2723 _stx-path2744_ _rel2746_))))
      (define gx#core-resolve-path
        (lambda _g4477_
          (let ((_g4476_ (length _g4477_)))
            (cond ((fx= _g4476_ 1)
                   (apply (lambda (_stx-path2744_)
                            (gx#core-resolve-path__0 _stx-path2744_))
                          _g4477_))
                  ((fx= _g4476_ 2)
                   (apply (lambda (_stx-path2748_ _rel2749_)
                            (gx#core-resolve-path__opt-lambda2723
                             _stx-path2748_
                             _rel2749_))
                          _g4477_))
                  (else (error "No clause matching arguments" _g4477_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx2722_) (gx#stx-rewrap _stx2722_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx2720_)
      (gx#stx-unwrap__opt-lambda2533 _stx2720_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx2688_)
      (let ((_g26892697_ (gx#current-expander-marks)))
        (let ((_E26922701_
               (lambda () (error '"No clause matching" _g26892697_))))
          (let ((_else26912705_ (lambda () _stx2688_)))
            (let ((_K26932710_
                   (lambda (_hd2708_) (gx#stx-apply-mark _stx2688_ _hd2708_))))
              (if (##pair? _g26892697_)
                  (let ((_hd26942713_ (##car _g26892697_))
                        (_tl26952715_ (##cdr _g26892697_)))
                    (let ((_hd2718_ _hd26942713_)) (_K26932710_ _hd2718_)))
                  (_else26912705_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda2671
      (lambda (_stx2673_ _E2674_)
        (let ((_bind2676_ (gx#resolve-identifier__0 _stx2673_)))
          (if (##structure-direct-instance-of?
               _bind2676_
               'gx#syntax-binding::t)
              (##structure-ref _bind2676_ '4 gx#syntax-binding::t '#f)
              (_E2674_ _stx2673_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx2681_)
          (let ((_E2683_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda2671 _stx2681_ _E2683_))))
      (define gx#syntax-local-e
        (lambda _g4479_
          (let ((_g4478_ (length _g4479_)))
            (cond ((fx= _g4478_ 1)
                   (apply (lambda (_stx2681_) (gx#syntax-local-e__0 _stx2681_))
                          _g4479_))
                  ((fx= _g4478_ 2)
                   (apply (lambda (_stx2685_ _E2686_)
                            (gx#syntax-local-e__opt-lambda2671
                             _stx2685_
                             _E2686_))
                          _g4479_))
                  (else (error "No clause matching arguments" _g4479_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda2655
      (lambda (_stx2657_ _E2658_)
        (let ((_e2660_ (gx#syntax-local-e__opt-lambda2671 _stx2657_ _E2658_)))
          (if (##structure-instance-of? _e2660_ 'gx#expander::t)
              (##structure-ref _e2660_ '1 gx#expander::t '#f)
              _e2660_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx2665_)
          (let ((_E2667_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda2655 _stx2665_ _E2667_))))
      (define gx#syntax-local-value
        (lambda _g4481_
          (let ((_g4480_ (length _g4481_)))
            (cond ((fx= _g4480_ 1)
                   (apply (lambda (_stx2665_)
                            (gx#syntax-local-value__0 _stx2665_))
                          _g4481_))
                  ((fx= _g4480_ 2)
                   (apply (lambda (_stx2669_ _E2670_)
                            (gx#syntax-local-value__opt-lambda2655
                             _stx2669_
                             _E2670_))
                          _g4481_))
                  (else (error "No clause matching arguments" _g4481_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx2654_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx2654_))))
