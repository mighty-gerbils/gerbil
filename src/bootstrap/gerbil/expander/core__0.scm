(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
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
    (lambda _$args4324_
      (apply make-struct-instance gx#expander-context::t _$args4324_)))
  (define gx#expander-context-id
    (make-struct-field-accessor gx#expander-context::t '0))
  (define gx#expander-context-table
    (make-struct-field-accessor gx#expander-context::t '1))
  (define gx#expander-context-id-set!
    (make-struct-field-mutator gx#expander-context::t '0))
  (define gx#expander-context-table-set!
    (make-struct-field-mutator gx#expander-context::t '1))
  (begin)
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
    (lambda _$args4321_
      (apply make-struct-instance gx#root-context::t _$args4321_)))
  (begin)
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
    (lambda _$args4318_
      (apply make-struct-instance gx#phi-context::t _$args4318_)))
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
  (begin)
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
    (lambda _$args4315_
      (apply make-struct-instance gx#top-context::t _$args4315_)))
  (begin)
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
    (lambda _$args4312_
      (apply make-struct-instance gx#module-context::t _$args4312_)))
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
  (begin)
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
    (lambda _$args4309_
      (apply make-struct-instance gx#prelude-context::t _$args4309_)))
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
  (begin)
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
    (lambda _$args4306_
      (apply make-struct-instance gx#local-context::t _$args4306_)))
  (begin)
  (define gx#phi-context:::init!
    (let ((_opt-lambda42884294_
           (lambda (_self4290_ _id4291_ _super4292_)
             (direct-struct-instance-init!
              _self4290_
              _id4291_
              (make-hash-table-eq)
              _super4292_
              '#f
              '#f))))
      (lambda _g12064_
        (let ((_g12063_ (length _g12064_)))
          (cond ((fx= _g12063_ 2)
                 (apply (lambda (_self4297_ _id4298_)
                          (let ((_super4300_ (gx#current-expander-context)))
                            (_opt-lambda42884294_
                             _self4297_
                             _id4298_
                             _super4300_)))
                        _g12064_))
                ((fx= _g12063_ 3)
                 (apply (lambda (_self4302_ _id4303_ _super4304_)
                          (_opt-lambda42884294_
                           _self4302_
                           _id4303_
                           _super4304_))
                        _g12064_))
                (else (error "No clause matching arguments" _g12064_)))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (define gx#local-context:::init!
    (let ((_opt-lambda42744279_
           (lambda (_self4276_ _super4277_)
             (direct-struct-instance-init!
              _self4276_
              (gensym 'L)
              (make-hash-table-eq)
              _super4277_
              '#f
              '#f))))
      (lambda _g12066_
        (let ((_g12065_ (length _g12066_)))
          (cond ((fx= _g12065_ 1)
                 (apply (lambda (_self4282_)
                          (let ((_super4284_ (gx#current-expander-context)))
                            (_opt-lambda42744279_ _self4282_ _super4284_)))
                        _g12066_))
                ((fx= _g12065_ 2)
                 (apply (lambda (_self4286_ _super4287_)
                          (_opt-lambda42744279_ _self4286_ _super4287_))
                        _g12066_))
                (else (error "No clause matching arguments" _g12066_)))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args4272_
      (apply make-struct-instance gx#binding::t _$args4272_)))
  (define gx#binding-id (make-struct-field-accessor gx#binding::t '0))
  (define gx#binding-key (make-struct-field-accessor gx#binding::t '1))
  (define gx#binding-phi (make-struct-field-accessor gx#binding::t '2))
  (define gx#binding-id-set! (make-struct-field-mutator gx#binding::t '0))
  (define gx#binding-key-set! (make-struct-field-mutator gx#binding::t '1))
  (define gx#binding-phi-set! (make-struct-field-mutator gx#binding::t '2))
  (begin)
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
    (lambda _$args4269_
      (apply make-struct-instance gx#runtime-binding::t _$args4269_)))
  (begin)
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
    (lambda _$args4266_
      (apply make-struct-instance gx#local-binding::t _$args4266_)))
  (begin)
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
    (lambda _$args4263_
      (apply make-struct-instance gx#top-binding::t _$args4263_)))
  (begin)
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
    (lambda _$args4260_
      (apply make-struct-instance gx#module-binding::t _$args4260_)))
  (define gx#module-binding-context
    (make-struct-field-accessor gx#module-binding::t '0))
  (define gx#module-binding-context-set!
    (make-struct-field-mutator gx#module-binding::t '0))
  (begin)
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
    (lambda _$args4257_
      (apply make-struct-instance gx#extern-binding::t _$args4257_)))
  (begin)
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
    (lambda _$args4254_
      (apply make-struct-instance gx#syntax-binding::t _$args4254_)))
  (define gx#syntax-binding-e
    (make-struct-field-accessor gx#syntax-binding::t '0))
  (define gx#syntax-binding-e-set!
    (make-struct-field-mutator gx#syntax-binding::t '0))
  (begin)
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
    (lambda _$args4251_
      (apply make-struct-instance gx#import-binding::t _$args4251_)))
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
  (begin)
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
    (lambda _$args4248_
      (apply make-struct-instance gx#alias-binding::t _$args4248_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (begin)
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args4245_
      (apply make-struct-instance gx#expander::t _$args4245_)))
  (define gx#expander-e (make-struct-field-accessor gx#expander::t '0))
  (define gx#expander-e-set! (make-struct-field-mutator gx#expander::t '0))
  (begin)
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
    (lambda _$args4242_
      (apply make-struct-instance gx#core-expander::t _$args4242_)))
  (define gx#core-expander-id
    (make-struct-field-accessor gx#core-expander::t '0))
  (define gx#core-expander-compile-top
    (make-struct-field-accessor gx#core-expander::t '1))
  (define gx#core-expander-id-set!
    (make-struct-field-mutator gx#core-expander::t '0))
  (define gx#core-expander-compile-top-set!
    (make-struct-field-mutator gx#core-expander::t '1))
  (begin)
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
    (lambda _$args4239_
      (apply make-struct-instance gx#expression-form::t _$args4239_)))
  (begin)
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
    (lambda _$args4236_
      (apply make-struct-instance gx#special-form::t _$args4236_)))
  (begin)
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
    (lambda _$args4233_
      (apply make-struct-instance gx#definition-form::t _$args4233_)))
  (begin)
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
    (lambda _$args4230_
      (apply make-struct-instance gx#top-special-form::t _$args4230_)))
  (begin)
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
    (lambda _$args4227_
      (apply make-struct-instance gx#module-special-form::t _$args4227_)))
  (begin)
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
    (lambda _$args4224_
      (apply make-struct-instance gx#feature-expander::t _$args4224_)))
  (begin)
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
    (lambda _$args4221_
      (apply make-struct-instance gx#private-feature-expander::t _$args4221_)))
  (begin)
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
    (lambda _$args4218_
      (apply make-struct-instance gx#reserved-expander::t _$args4218_)))
  (begin)
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
    (lambda _$args4215_
      (apply make-struct-instance gx#macro-expander::t _$args4215_)))
  (begin)
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
    (lambda _$args4212_
      (apply make-struct-instance gx#rename-macro-expander::t _$args4212_)))
  (begin)
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
    (lambda _$args4209_
      (apply make-struct-instance gx#user-expander::t _$args4209_)))
  (define gx#user-expander-context
    (make-struct-field-accessor gx#user-expander::t '0))
  (define gx#user-expander-phi
    (make-struct-field-accessor gx#user-expander::t '1))
  (define gx#user-expander-context-set!
    (make-struct-field-mutator gx#user-expander::t '0))
  (define gx#user-expander-phi-set!
    (make-struct-field-mutator gx#user-expander::t '1))
  (begin)
  (define gx#expander-mark::t
    (make-struct-type 'gx#expander-mark::t '#f '4 'expander-mark '() '#f))
  (define gx#expander-mark? (make-struct-predicate gx#expander-mark::t))
  (define gx#make-expander-mark
    (lambda _$args4206_
      (apply make-struct-instance gx#expander-mark::t _$args4206_)))
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
  (begin)
  (define gx#syntax-error::t
    (make-struct-type 'gx#syntax-error::t error::t '3 'syntax-error '() '#f))
  (define gx#syntax-error? (make-struct-predicate gx#syntax-error::t))
  (define gx#make-syntax-error
    (lambda _$args4203_
      (apply make-struct-instance gx#syntax-error::t _$args4203_)))
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
  (begin)
  (define gx#raise-syntax-error
    (lambda (_where4198_ _message4199_ _stx4200_ . _details4201_)
      (raise (gx#make-syntax-error
              _message4199_
              (cons _stx4200_ _details4201_)
              _where4198_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (define gx#eval-syntax
    (let ((_opt-lambda41834188_
           (lambda (_stx4185_ _expression?4186_)
             (gx#eval-syntax* (gx#core-expand _stx4185_ _expression?4186_)))))
      (lambda _g12068_
        (let ((_g12067_ (length _g12068_)))
          (cond ((fx= _g12067_ 1)
                 (apply (lambda (_stx4191_)
                          (let ((_expression?4193_ '#f))
                            (_opt-lambda41834188_
                             _stx4191_
                             _expression?4193_)))
                        _g12068_))
                ((fx= _g12067_ 2)
                 (apply (lambda (_stx4195_ _expression?4196_)
                          (_opt-lambda41834188_ _stx4195_ _expression?4196_))
                        _g12068_))
                (else (error "No clause matching arguments" _g12068_)))))))
  (define gx#eval-syntax*
    (lambda (_stx4182_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx4182_))))
  (define gx#core-expand
    (let ((_opt-lambda41674172_
           (lambda (_stx4169_ _expression?4170_)
             (if _expression?4170_
                 (gx#core-expand-expression _stx4169_)
                 (gx#core-expand-top _stx4169_)))))
      (lambda _g12070_
        (let ((_g12069_ (length _g12070_)))
          (cond ((fx= _g12069_ 1)
                 (apply (lambda (_stx4175_)
                          (let ((_expression?4177_ '#f))
                            (_opt-lambda41674172_
                             _stx4175_
                             _expression?4177_)))
                        _g12070_))
                ((fx= _g12069_ 2)
                 (apply (lambda (_stx4179_ _expression?4180_)
                          (_opt-lambda41674172_ _stx4179_ _expression?4180_))
                        _g12070_))
                (else (error "No clause matching arguments" _g12070_)))))))
  (define gx#core-expand-top
    (lambda (_stx4136_)
      (let ((_stx4138_ (gx#core-expand* _stx4136_)))
        (let ((_e41394146_ _stx4138_))
          (let ((_E41414150_
                 (lambda () (gx#core-expand-expression _stx4138_))))
            (let ((_E41404164_
                   (lambda ()
                     (if (gx#stx-pair? _e41394146_)
                         (let ((_e41424154_ (gx#syntax-e _e41394146_)))
                           (let ((_hd41434157_ (##car _e41424154_))
                                 (_tl41444159_ (##cdr _e41424154_)))
                             (let ((_form4162_ _hd41434157_))
                               (if (gx#core-bound-identifier? _form4162_)
                                   _stx4138_
                                   (_E41414150_)))))
                         (_E41414150_)))))
              (let () (_E41404164_))))))))
  (define gx#core-expand-expression
    (lambda (_stx4058_)
      (let ((_sealed-expression?4060_
             (lambda (_hd4106_)
               (if (gx#sealed-syntax? _hd4106_)
                   (let ((_e41074114_ _hd4106_))
                     (let ((_E41094118_ (lambda () '#f)))
                       (let ((_E41084132_
                              (lambda ()
                                (if (gx#stx-pair? _e41074114_)
                                    (let ((_e41104122_
                                           (gx#syntax-e _e41074114_)))
                                      (let ((_hd41114125_ (##car _e41104122_))
                                            (_tl41124127_ (##cdr _e41104122_)))
                                        (let ((_form4130_ _hd41114125_))
                                          (if '#t
                                              (gx#core-bound-identifier?
                                               _form4130_
                                               gx#expression-form-binding?)
                                              (_E41094118_)))))
                                    (_E41094118_)))))
                         (let () (_E41084132_)))))
                   '#f))))
        (let ((_illegal-expression4061_
               (lambda (_hd4104_ . _g12071_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx4058_
                  _hd4104_))))
          (let ((_expand-e4062_
                 (lambda (_form4099_ _hd4100_)
                   (let ((_bind4102_
                          (if (gx#binding? _form4099_)
                              _form4099_
                              (gx#resolve-identifier _form4099_))))
                     (if (gx#core-expander-binding? _bind4102_)
                         (gx#core-apply-expander
                          (gx#syntax-binding-e _bind4102_)
                          (gx#stx-wrap-source
                           _hd4100_
                           (gx#stx-source _stx4058_)))
                         (if (gx#syntax-binding? _bind4102_)
                             (gx#core-expand-expression
                              (gx#core-apply-expander
                               (gx#syntax-binding-e _bind4102_)
                               (gx#stx-wrap-source
                                _hd4100_
                                (gx#stx-source _stx4058_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx4058_
                              _form4099_)))))))
            (let ((_hd4064_ (gx#core-expand-head _stx4058_)))
              (if (_sealed-expression?4060_ _hd4064_)
                  _hd4064_
                  (if (gx#stx-pair? _hd4064_)
                      (let ((_e40654072_ _hd4064_))
                        (let ((_E40674076_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e40654072_))))
                          (let ((_E40664095_
                                 (lambda ()
                                   (if (gx#stx-pair? _e40654072_)
                                       (let ((_e40684080_
                                              (gx#syntax-e _e40654072_)))
                                         (let ((_hd40694083_
                                                (##car _e40684080_))
                                               (_tl40704085_
                                                (##cdr _e40684080_)))
                                           (let ((_form4088_ _hd40694083_))
                                             (if '#t
                                                 (let ((_bind4090_
                                                        (if (gx#identifier?
                                                             _form4088_)
                                                            (gx#resolve-identifier
                                                             _form4088_)
                                                            '#f)))
                                                   (if (let ((_$e4092_
                                                              (not _bind4090_)))
                                                         (if _$e4092_
                                                             _$e4092_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind4090_))))
               (_expand-e4062_ '%#call (cons '%#call _hd4064_))
               (if (eq? (gx#binding-id _bind4090_) '%#begin)
                   (gx#core-expand-block* _hd4064_ _illegal-expression4061_)
                   (if (gx#expression-form-binding? _bind4090_)
                       (_expand-e4062_ _bind4090_ _hd4064_)
                       (_illegal-expression4061_ _hd4064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E40674076_)))))
                                       (_E40674076_)))))
                            (let () (_E40664095_)))))
                      (if (gx#core-bound-identifier? _hd4064_)
                          (_illegal-expression4061_ _hd4064_)
                          (if (gx#identifier? _hd4064_)
                              (_expand-e4062_
                               '%#ref
                               (cons '%#ref (cons _hd4064_ '())))
                              (if (gx#stx-datum? _hd4064_)
                                  (_expand-e4062_
                                   '%#quote
                                   (cons '%#quote (cons _hd4064_ '())))
                                  (_illegal-expression4061_
                                   _hd4064_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx4053_)
      (call-with-parameters
       (lambda ()
         (let ((_stx4056_ (gx#core-expand-expression _stx4053_)))
           (values _stx4056_ (gx#eval-syntax* _stx4056_))))
       gx#current-expander-phi
       (fx1+ (gx#current-expander-phi)))))
  (define gx#core-expand*
    (let ((_opt-lambda40324043_
           (lambda (_stx4034_ _stop?4035_)
             ((letrec ((_lp4037_
                        (lambda (_stx4039_)
                          (if (_stop?4035_ _stx4039_)
                              _stx4039_
                              (let ((_rstx4041_ (gx#core-expand1 _stx4039_)))
                                (if (eq? _stx4039_ _rstx4041_)
                                    _stx4039_
                                    (_lp4037_ _rstx4041_)))))))
                _lp4037_)
              _stx4034_))))
      (lambda _g12073_
        (let ((_g12072_ (length _g12073_)))
          (cond ((fx= _g12072_ 1)
                 (apply (lambda (_stx4046_)
                          (let ((_stop?4048_ false))
                            (_opt-lambda40324043_ _stx4046_ _stop?4048_)))
                        _g12073_))
                ((fx= _g12072_ 2)
                 (apply (lambda (_stx4050_ _stop?4051_)
                          (_opt-lambda40324043_ _stx4050_ _stop?4051_))
                        _g12073_))
                (else (error "No clause matching arguments" _g12073_)))))))
  (define gx#core-expand1
    (lambda (_stx3984_)
      (let ((_step3986_
             (lambda (_hd4023_)
               (let ((_bind4025_ (gx#resolve-identifier _hd4023_)))
                 (if (gx#runtime-binding? _bind4025_)
                     _stx3984_
                     (if (gx#syntax-binding? _bind4025_)
                         (gx#core-apply-expander
                          (gx#syntax-binding-e _bind4025_)
                          _stx3984_)
                         (if (not _bind4025_)
                             (begin
                               (if (let ((_$e4027_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e4027_
                                         _$e4027_
                                         (let ((_$e4030_
                                                (gx#core-context-rebind?
                                                 (gx#core-context-top))))
                                           (if _$e4030_
                                               _$e4030_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd4023_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx3984_
                                    _hd4023_))
                               _stx3984_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx3984_))))))))
        (let ((_e39873995_ _stx3984_))
          (let ((_E39933999_ (lambda () _stx3984_)))
            (let ((_E39894005_
                   (lambda ()
                     (let ((_hd4003_ _e39873995_))
                       (if (gx#identifier? _hd4003_)
                           (_step3986_ _hd4003_)
                           (_E39933999_))))))
              (let ((_E39884019_
                     (lambda ()
                       (if (gx#stx-pair? _e39873995_)
                           (let ((_e39904009_ (gx#syntax-e _e39873995_)))
                             (let ((_hd39914012_ (##car _e39904009_))
                                   (_tl39924014_ (##cdr _e39904009_)))
                               (let ((_hd4017_ _hd39914012_))
                                 (if (gx#identifier? _hd4017_)
                                     (_step3986_ _hd4017_)
                                     (_E39894005_)))))
                           (_E39894005_)))))
                (let () (_E39884019_)))))))))
  (define gx#core-expand-head
    (lambda (_stx3950_)
      (let ((_stop?3952_
             (lambda (_stx3954_)
               (let ((_e39553962_ _stx3954_))
                 (let ((_E39573966_ (lambda () '#f)))
                   (let ((_E39563980_
                          (lambda ()
                            (if (gx#stx-pair? _e39553962_)
                                (let ((_e39583970_ (gx#syntax-e _e39553962_)))
                                  (let ((_hd39593973_ (##car _e39583970_))
                                        (_tl39603975_ (##cdr _e39583970_)))
                                    (let ((_hd3978_ _hd39593973_))
                                      (if '#t
                                          (gx#core-bound-identifier? _hd3978_)
                                          (_E39573966_)))))
                                (_E39573966_)))))
                     (let () (_E39563980_))))))))
        (gx#core-expand* _stx3950_ _stop?3952_))))
  (define gx#core-expand-block
    (let ((_opt-lambda37543929_
           (lambda (_stx3756_
                    _expand-special3757_
                    _begin-form3758_
                    _expand-e3759_)
             (letrec ((_expand-splice3761_
                       (lambda (_hd3924_ _body3925_ _rest3926_ _r3927_)
                         (if (gx#stx-list? _body3925_)
                             (_K3765_ (gx#stx-foldr cons _rest3926_ _body3925_)
                                      _r3927_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx3756_
                              _hd3924_))))
                      (_expand-cond-expand3762_
                       (lambda (_hd3920_ _rest3921_ _r3922_)
                         (_K3765_ (cons (gx#core-expand-cond-expand% _hd3920_)
                                        _rest3921_)
                                  _r3922_)))
                      (_expand-include3763_
                       (lambda (_hd3869_ _rest3870_ _r3871_)
                         (let ((_e38723882_ _hd3869_))
                           (let ((_E38743886_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e38723882_))))
                             (let ((_E38733916_
                                    (lambda ()
                                      (if (gx#stx-pair? _e38723882_)
                                          (let ((_e38753890_
                                                 (gx#syntax-e _e38723882_)))
                                            (let ((_hd38763893_
                                                   (##car _e38753890_))
                                                  (_tl38773895_
                                                   (##cdr _e38753890_)))
                                              (if (gx#stx-pair? _tl38773895_)
                                                  (let ((_e38783898_
                                                         (gx#syntax-e
                                                          _tl38773895_)))
                                                    (let ((_hd38793901_
                                                           (##car _e38783898_))
                                                          (_tl38803903_
                                                           (##cdr _e38783898_)))
                                                      (let ((_path3906_
                                                             _hd38793901_))
                                                        (if (gx#stx-null?
                                                             _tl38803903_)
                                                            (if (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path3906_)
                        (let ((_rpath3908_
                               (gx#core-resolve-path
                                _path3906_
                                (gx#stx-source _hd3869_))))
                          (let ((_block3910_
                                 (gx#core-expand-include%
                                  _hd3869_
                                  _rpath3908_)))
                            (let ((_rbody3913_
                                   (call-with-parameters
                                    (lambda ()
                                      (gx#core-expand-block
                                       _block3910_
                                       _expand-special3757_
                                       '#f
                                       _expand-e3759_))
                                    gx#current-expander-path
                                    (cons _rpath3908_
                                          (gx#current-expander-path)))))
                              (let ()
                                (_K3765_ _rest3870_
                                         (foldr cons _r3871_ _rbody3913_))))))
                        (_E38743886_))
                    (_E38743886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E38743886_))))
                                          (_E38743886_)))))
                               (let () (_E38733916_)))))))
                      (_expand-expression3764_
                       (lambda (_hd3865_ _rest3866_ _r3867_)
                         (_K3765_ _rest3866_
                                  (cons (_expand-e3759_ _hd3865_) _r3867_))))
                      (_K3765_ (lambda (_rest3795_ _r3796_)
                                 (let ((_e37973804_ _rest3795_))
                                   (let ((_E37993808_
                                          (lambda ()
                                            (if _begin-form3758_
                                                (gx#core-quote-syntax
                                                 (gx#core-cons
                                                  _begin-form3758_
                                                  (reverse _r3796_))
                                                 (gx#stx-source _stx3756_))
                                                _r3796_))))
                                     (let ((_E37983861_
                                            (lambda ()
                                              (if (gx#stx-pair? _e37973804_)
                                                  (let ((_e38003812_
                                                         (gx#syntax-e
                                                          _e37973804_)))
                                                    (let ((_hd38013815_
                                                           (##car _e38003812_))
                                                          (_tl38023817_
                                                           (##cdr _e38003812_)))
                                                      (let ((_hd3820_
                                                             _hd38013815_))
                                                        (let ((_rest3822_
                                                               _tl38023817_))
                                                          (if '#t
                                                              (let ((_hd3824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-expand-head _hd3820_)))
                        (let ((_e38253832_ _hd3824_))
                          (let ((_E38273836_
                                 (lambda ()
                                   (_expand-expression3764_
                                    _hd3824_
                                    _rest3822_
                                    _r3796_))))
                            (let ((_E38263857_
                                   (lambda ()
                                     (if (gx#stx-pair? _e38253832_)
                                         (let ((_e38283840_
                                                (gx#syntax-e _e38253832_)))
                                           (let ((_hd38293843_
                                                  (##car _e38283840_))
                                                 (_tl38303845_
                                                  (##cdr _e38283840_)))
                                             (let ((_form3848_ _hd38293843_))
                                               (let ((_body3850_ _tl38303845_))
                                                 (if '#t
                                                     (let ((_bind3852_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _form3848_)
                        (gx#resolve-identifier _form3848_)
                        '#f)))
               (if (gx#special-form-binding? _bind3852_)
                   (let ((_$e3854_ (gx#binding-id _bind3852_)))
                     (if (eq? _$e3854_ '%#begin)
                         (_expand-splice3761_
                          _hd3824_
                          _body3850_
                          _rest3822_
                          _r3796_)
                         (if (eq? _$e3854_ '%#cond-expand)
                             (_expand-cond-expand3762_
                              _hd3824_
                              _rest3822_
                              _r3796_)
                             (if (eq? _$e3854_ '%#include)
                                 (_expand-include3763_
                                  _hd3824_
                                  _rest3822_
                                  _r3796_)
                                 (_expand-special3757_
                                  _hd3824_
                                  _K3765_
                                  _rest3822_
                                  _r3796_)))))
                   (_expand-expression3764_ _hd3824_ _rest3822_ _r3796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E38273836_))))))
                                         (_E38273836_)))))
                              (let () (_E38263857_))))))
                      (_E37993808_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E37993808_)))))
                                       (let () (_E37983861_))))))))
               (let ((_e37663773_ _stx3756_))
                 (let ((_E37683777_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e37663773_))))
                   (let ((_E37673791_
                          (lambda ()
                            (if (gx#stx-pair? _e37663773_)
                                (let ((_e37693781_ (gx#syntax-e _e37663773_)))
                                  (let ((_hd37703784_ (##car _e37693781_))
                                        (_tl37713786_ (##cdr _e37693781_)))
                                    (let ((_body3789_ _tl37713786_))
                                      (if (gx#stx-list? _body3789_)
                                          (_K3765_ _body3789_ '())
                                          (_E37683777_)))))
                                (_E37683777_)))))
                     (let () (_E37673791_)))))))))
      (lambda _g12075_
        (let ((_g12074_ (length _g12075_)))
          (cond ((fx= _g12074_ 2)
                 (apply (lambda (_stx3932_ _expand-special3933_)
                          (let ((_begin-form3935_ '%#begin))
                            (let ((_expand-e3937_ gx#core-expand-expression))
                              (_opt-lambda37543929_
                               _stx3932_
                               _expand-special3933_
                               _begin-form3935_
                               _expand-e3937_))))
                        _g12075_))
                ((fx= _g12074_ 3)
                 (apply (lambda (_stx3939_
                                 _expand-special3940_
                                 _begin-form3941_)
                          (let ((_expand-e3943_ gx#core-expand-expression))
                            (_opt-lambda37543929_
                             _stx3939_
                             _expand-special3940_
                             _begin-form3941_
                             _expand-e3943_)))
                        _g12075_))
                ((fx= _g12074_ 4)
                 (apply (lambda (_stx3945_
                                 _expand-special3946_
                                 _begin-form3947_
                                 _expand-e3948_)
                          (_opt-lambda37543929_
                           _stx3945_
                           _expand-special3946_
                           _begin-form3947_
                           _expand-e3948_))
                        _g12075_))
                (else (error "No clause matching arguments" _g12075_)))))))
  (define gx#core-expand-block*
    (lambda (_stx3704_ _expand-special3705_)
      (let ((_g37063717_
             (gx#core-expand-block _stx3704_ _expand-special3705_ '#f)))
        (let ((_E37103721_
               (lambda () (error '"No clause matching" _g37063717_))))
          (let ((_try-match37093732_
                 (lambda ()
                   (let ((_K37113727_
                          (lambda (_body3725_)
                            (gx#core-quote-syntax
                             (gx#core-cons '%#begin (reverse _body3725_))
                             (gx#stx-source _stx3704_)))))
                     (let ((_body3730_ _g37063717_))
                       (_K37113727_ _body3730_))))))
            (let ((_try-match37083748_
                   (lambda ()
                     (let ((_K37123738_ (lambda (_expr3736_) _expr3736_)))
                       (if (##pair? _g37063717_)
                           (let ((_hd37133741_ (##car _g37063717_))
                                 (_tl37143743_ (##cdr _g37063717_)))
                             (let ((_expr3746_ _hd37133741_))
                               (if (##null? _tl37143743_)
                                   (_K37123738_ _expr3746_)
                                   (_try-match37093732_))))
                           (_try-match37093732_))))))
              (let ((_K37153752_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx3704_))))
                (if (##null? _g37063717_)
                    (_K37153752_)
                    (_try-match37083748_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx3562_)
      (letrec ((_satisfied?3564_
                (lambda (_condition3662_)
                  (let ((_e36633671_ _condition3662_))
                    (let ((_E36663675_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e36633671_))))
                      (let ((_E36653694_
                             (lambda ()
                               (if (gx#stx-pair? _e36633671_)
                                   (let ((_e36673679_
                                          (gx#syntax-e _e36633671_)))
                                     (let ((_hd36683682_ (##car _e36673679_))
                                           (_tl36693684_ (##cdr _e36673679_)))
                                       (let ((_combinator3687_ _hd36683682_))
                                         (let ((_body3689_ _tl36693684_))
                                           (if (gx#stx-list? _body3689_)
                                               (let ((_$e3691_
                                                      (gx#stx-e
                                                       _combinator3687_)))
                                                 (if (eq? _$e3691_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?3564_
                                                           _body3689_))
                                                     (if (eq? _$e3691_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?3564_
                                                          _body3689_)
                                                         (if (eq? _$e3691_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?3564_
                                                              _body3689_)
                                                             (if (eq? _$e3691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body3689_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx3562_
                          _combinator3687_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E36663675_))))))
                                   (_E36663675_)))))
                        (let ((_E36643700_
                               (lambda ()
                                 (let ((_id3698_ _e36633671_))
                                   (if (gx#identifier? _id3698_)
                                       (gx#core-bound-identifier?
                                        _id3698_
                                        gx#feature-binding?)
                                       (_E36653694_))))))
                          (let () (_E36643700_))))))))
               (_loop3565_
                (lambda (_rest3595_)
                  (let ((_e35963604_ _rest3595_))
                    (let ((_E36023608_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e35963604_))))
                      (let ((_E35983612_
                             (lambda ()
                               (if (gx#stx-null? _e35963604_)
                                   (if '#t '() (_E36023608_))
                                   (_E36023608_)))))
                        (let ((_E35973658_
                               (lambda ()
                                 (if (gx#stx-pair? _e35963604_)
                                     (let ((_e35993616_
                                            (gx#syntax-e _e35963604_)))
                                       (let ((_hd36003619_ (##car _e35993616_))
                                             (_tl36013621_
                                              (##cdr _e35993616_)))
                                         (let ((_hd3624_ _hd36003619_))
                                           (let ((_rest3626_ _tl36013621_))
                                             (if '#t
                                                 (let ((_e36273634_ _hd3624_))
                                                   (let ((_E36293638_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e36273634_))))
                                                     (let ((_E36283654_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e36273634_)
                          (let ((_e36303642_ (gx#syntax-e _e36273634_)))
                            (let ((_hd36313645_ (##car _e36303642_))
                                  (_tl36323647_ (##cdr _e36303642_)))
                              (let ((_condition3650_ _hd36313645_))
                                (let ((_body3652_ _tl36323647_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition3650_ 'else)
                                          (if (gx#stx-null? _rest3626_)
                                              _body3652_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx3562_
                                               _hd3624_))
                                          (if (_satisfied?3564_
                                               _condition3650_)
                                              _body3652_
                                              (_loop3565_ _rest3626_)))
                                      (_E36293638_))))))
                          (_E36293638_)))))
               (let () (_E36283654_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E35983612_))))))
                                     (_E35983612_)))))
                          (let () (_E35973658_)))))))))
        (let ((_e35663573_ _stx3562_))
          (let ((_E35683577_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e35663573_))))
            (let ((_E35673591_
                   (lambda ()
                     (if (gx#stx-pair? _e35663573_)
                         (let ((_e35693581_ (gx#syntax-e _e35663573_)))
                           (let ((_hd35703584_ (##car _e35693581_))
                                 (_tl35713586_ (##cdr _e35693581_)))
                             (let ((_clauses3589_ _tl35713586_))
                               (if (gx#stx-list? _clauses3589_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop3565_ _clauses3589_))
                                   (_E35683577_)))))
                         (_E35683577_)))))
              (let () (_E35673591_))))))))
  (define gx#core-expand-include%
    (let ((_opt-lambda35033552_
           (lambda (_stx3505_ _rpath3506_)
             (let ((_e35073517_ _stx3505_))
               (let ((_E35093521_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e35073517_))))
                 (let ((_E35083548_
                        (lambda ()
                          (if (gx#stx-pair? _e35073517_)
                              (let ((_e35103525_ (gx#syntax-e _e35073517_)))
                                (let ((_hd35113528_ (##car _e35103525_))
                                      (_tl35123530_ (##cdr _e35103525_)))
                                  (if (gx#stx-pair? _tl35123530_)
                                      (let ((_e35133533_
                                             (gx#syntax-e _tl35123530_)))
                                        (let ((_hd35143536_
                                               (##car _e35133533_))
                                              (_tl35153538_
                                               (##cdr _e35133533_)))
                                          (let ((_path3541_ _hd35143536_))
                                            (if (gx#stx-null? _tl35153538_)
                                                (if (gx#stx-string? _path3541_)
                                                    (let ((_rpath3546_
                                                           (let ((_$e3543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rpath3506_))
                     (if _$e3543_
                         _$e3543_
                         (gx#core-resolve-path
                          _path3541_
                          (gx#stx-source _stx3505_))))))
              (if (member _rpath3546_ (gx#current-expander-path))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; cyclic expansion"
                   _stx3505_)
                  (gx#syntax-local-rewrap
                   (gx#stx-wrap-source
                    (gx#core-cons '%#begin (read-syntax-from-file _rpath3546_))
                    (gx#stx-source _stx3505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E35093521_))
                                                (_E35093521_)))))
                                      (_E35093521_))))
                              (_E35093521_)))))
                   (let () (_E35083548_))))))))
      (lambda _g12077_
        (let ((_g12076_ (length _g12077_)))
          (cond ((fx= _g12076_ 1)
                 (apply (lambda (_stx3555_)
                          (let ((_rpath3557_ '#f))
                            (_opt-lambda35033552_ _stx3555_ _rpath3557_)))
                        _g12077_))
                ((fx= _g12076_ 2)
                 (apply (lambda (_stx3559_ _rpath3560_)
                          (_opt-lambda35033552_ _stx3559_ _rpath3560_))
                        _g12077_))
                (else (error "No clause matching arguments" _g12077_)))))))
  (define gx#core-apply-expander
    (let ((_opt-lambda34723492_
           (lambda (_K3474_ _stx3475_ _method3476_)
             (if (procedure? _K3474_)
                 (let ((_$e3478_ (gx#stx-source _stx3475_)))
                   (if _$e3478_
                       ((lambda (_g34803482_)
                          (gx#stx-wrap-source (_K3474_ _stx3475_) _g34803482_))
                        _$e3478_)
                       (_K3474_ _stx3475_)))
                 (let ((_$e3485_ (bound-method-ref _K3474_ _method3476_)))
                   (if _$e3485_
                       ((lambda (_g34873489_)
                          (gx#core-apply-expander
                           _g34873489_
                           _stx3475_
                           _method3476_))
                        _$e3485_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _stx3475_
                        _method3476_)))))))
      (lambda _g12079_
        (let ((_g12078_ (length _g12079_)))
          (cond ((fx= _g12078_ 2)
                 (apply (lambda (_K3495_ _stx3496_)
                          (let ((_method3498_ 'apply-macro-expander))
                            (_opt-lambda34723492_
                             _K3495_
                             _stx3496_
                             _method3498_)))
                        _g12079_))
                ((fx= _g12078_ 3)
                 (apply (lambda (_K3500_ _stx3501_ _method3502_)
                          (_opt-lambda34723492_
                           _K3500_
                           _stx3501_
                           _method3502_))
                        _g12079_))
                (else (error "No clause matching arguments" _g12079_)))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self3470_ _stx3471_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx3471_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self3445_ _stx3446_)
      (let ((_self34473453_ _self3445_))
        (let ((_E34493457_
               (lambda () (error '"No clause matching" _self34473453_))))
          (let ((_K34503462_
                 (lambda (_K3460_)
                   (gx#core-apply-expander _K3460_ _stx3446_))))
            (if (struct-instance? gx#macro-expander::t _self34473453_)
                (let ((_e34513465_ (##vector-ref _self34473453_ '1)))
                  (let ((_K3468_ _e34513465_)) (_K34503462_ _K3468_)))
                (_E34493457_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self3420_ _stx3421_)
      (if (gx#sealed-syntax? _stx3421_)
          _stx3421_
          (let ((_self34223428_ _self3420_))
            (let ((_E34243432_
                   (lambda () (error '"No clause matching" _self34223428_))))
              (let ((_K34253437_
                     (lambda (_K3435_)
                       (gx#core-apply-expander _K3435_ _stx3421_))))
                (if (struct-instance? gx#core-expander::t _self34223428_)
                    (let ((_e34263440_ (##vector-ref _self34223428_ '1)))
                      (let ((_K3443_ _e34263440_)) (_K34253437_ _K3443_)))
                    (_E34243432_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (define gx#top-special-form::apply-macro-expander
    (let ((_opt-lambda34023408_
           (lambda (_self3404_ _stx3405_ _top?3406_)
             (if (_top?3406_ (gx#current-expander-context))
                 (gx#core-expander::apply-macro-expander _self3404_ _stx3405_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal context"
                  _stx3405_)))))
      (lambda _g12081_
        (let ((_g12080_ (length _g12081_)))
          (cond ((fx= _g12080_ 2)
                 (apply (lambda (_self3411_ _stx3412_)
                          (let ((_top?3414_ gx#top-context?))
                            (_opt-lambda34023408_
                             _self3411_
                             _stx3412_
                             _top?3414_)))
                        _g12081_))
                ((fx= _g12080_ 3)
                 (apply (lambda (_self3416_ _stx3417_ _top?3418_)
                          (_opt-lambda34023408_
                           _self3416_
                           _stx3417_
                           _top?3418_))
                        _g12081_))
                (else (error "No clause matching arguments" _g12081_)))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self3400_ _stx3401_)
      (gx#top-special-form::apply-macro-expander
       _self3400_
       _stx3401_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self3347_ _stx3348_)
      (let ((_self33493355_ _self3347_))
        (let ((_E33513359_
               (lambda () (error '"No clause matching" _self33493355_))))
          (let ((_K33523392_
                 (lambda (_id3362_)
                   (let ((_e33633370_ _stx3348_))
                     (let ((_E33653374_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e33633370_))))
                       (let ((_E33643388_
                              (lambda ()
                                (if (gx#stx-pair? _e33633370_)
                                    (let ((_e33663378_
                                           (gx#syntax-e _e33633370_)))
                                      (let ((_hd33673381_ (##car _e33663378_))
                                            (_tl33683383_ (##cdr _e33663378_)))
                                        (let ((_body3386_ _tl33683383_))
                                          (if '#t
                                              (gx#core-cons
                                               _id3362_
                                               _body3386_)
                                              (_E33653374_)))))
                                    (_E33653374_)))))
                         (let () (_E33643388_))))))))
            (if (struct-instance? gx#rename-macro-expander::t _self33493355_)
                (let ((_e33533395_ (##vector-ref _self33493355_ '1)))
                  (let ((_id3398_ _e33533395_)) (_K33523392_ _id3398_)))
                (_E33513359_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (define gx#core-apply-user-expander
    (let ((_opt-lambda32933335_
           (lambda (_self3295_ _stx3296_ _method3297_)
             (let ((_self32983306_ _self3295_))
               (let ((_E33003310_
                      (lambda ()
                        (error '"No clause matching" _self32983306_))))
                 (let ((_K33013317_
                        (lambda (_phi3313_ _ctx3314_ _K3315_)
                          (gx#core-apply-user-macro
                           _K3315_
                           _stx3296_
                           _ctx3314_
                           _phi3313_
                           _method3297_))))
                   (if (struct-instance? gx#user-expander::t _self32983306_)
                       (let ((_e33023320_ (##vector-ref _self32983306_ '1)))
                         (let ((_K3323_ _e33023320_))
                           (let ((_e33033325_
                                  (##vector-ref _self32983306_ '2)))
                             (let ((_ctx3328_ _e33033325_))
                               (let ((_e33043330_
                                      (##vector-ref _self32983306_ '3)))
                                 (let ((_phi3333_ _e33043330_))
                                   (_K33013317_
                                    _phi3333_
                                    _ctx3328_
                                    _K3323_)))))))
                       (_E33003310_))))))))
      (lambda _g12083_
        (let ((_g12082_ (length _g12083_)))
          (cond ((fx= _g12082_ 2)
                 (apply (lambda (_self3338_ _stx3339_)
                          (let ((_method3341_ 'apply-macro-expander))
                            (_opt-lambda32933335_
                             _self3338_
                             _stx3339_
                             _method3341_)))
                        _g12083_))
                ((fx= _g12082_ 3)
                 (apply (lambda (_self3343_ _stx3344_ _method3345_)
                          (_opt-lambda32933335_
                           _self3343_
                           _stx3344_
                           _method3345_))
                        _g12083_))
                (else (error "No clause matching arguments" _g12083_)))))))
  (define gx#core-apply-user-macro
    (lambda (_K3285_ _stx3286_ _ctx3287_ _phi3288_ _method3289_)
      (let ((_mark3291_
             (gx#make-expander-mark '#f _ctx3287_ _phi3288_ _stx3286_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander
             _K3285_
             (gx#stx-apply-mark _stx3286_ _mark3291_)
             _method3289_)
            _mark3291_))
         gx#current-expander-marks
         (cons _mark3291_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (define gx#resolve-identifier
    (let ((_opt-lambda32573267_
           (lambda (_stx3259_ _phi3260_ _ctx3261_)
             ((letrec ((_lp3263_
                        (lambda (_bind3265_)
                          (if (gx#import-binding? _bind3265_)
                              (_lp3263_ (gx#import-binding-e _bind3265_))
                              (if (gx#alias-binding? _bind3265_)
                                  (_lp3263_
                                   (gx#core-resolve-identifier
                                    (gx#alias-binding-e _bind3265_)
                                    _phi3260_
                                    _ctx3261_))
                                  _bind3265_)))))
                _lp3263_)
              (gx#core-resolve-identifier _stx3259_ _phi3260_ _ctx3261_)))))
      (lambda _g12085_
        (let ((_g12084_ (length _g12085_)))
          (cond ((fx= _g12084_ 1)
                 (apply (lambda (_stx3270_)
                          (let ((_phi3272_ (gx#current-expander-phi)))
                            (let ((_ctx3274_ (gx#current-expander-context)))
                              (_opt-lambda32573267_
                               _stx3270_
                               _phi3272_
                               _ctx3274_))))
                        _g12085_))
                ((fx= _g12084_ 2)
                 (apply (lambda (_stx3276_ _phi3277_)
                          (let ((_ctx3279_ (gx#current-expander-context)))
                            (_opt-lambda32573267_
                             _stx3276_
                             _phi3277_
                             _ctx3279_)))
                        _g12085_))
                ((fx= _g12084_ 3)
                 (apply (lambda (_stx3281_ _phi3282_ _ctx3283_)
                          (_opt-lambda32573267_ _stx3281_ _phi3282_ _ctx3283_))
                        _g12085_))
                (else (error "No clause matching arguments" _g12085_)))))))
  (define gx#bind-identifier!
    (let ((_opt-lambda32153225_
           (lambda (_stx3217_ _val3218_ _rebind?3219_ _phi3220_ _ctx3221_)
             (let ((_rebind?3223_
                    (if (not _rebind?3219_)
                        gx#core-context-rebind?
                        (if (procedure? _rebind?3219_) _rebind?3219_ true))))
               (gx#core-bind!
                (gx#core-identifier-key _stx3217_)
                _val3218_
                _rebind?3223_
                _phi3220_
                _ctx3221_)))))
      (lambda _g12087_
        (let ((_g12086_ (length _g12087_)))
          (cond ((fx= _g12086_ 2)
                 (apply (lambda (_stx3228_ _val3229_)
                          (let ((_rebind?3231_ '#f))
                            (let ((_phi3233_ (gx#current-expander-phi)))
                              (let ((_ctx3235_ (gx#current-expander-context)))
                                (_opt-lambda32153225_
                                 _stx3228_
                                 _val3229_
                                 _rebind?3231_
                                 _phi3233_
                                 _ctx3235_)))))
                        _g12087_))
                ((fx= _g12086_ 3)
                 (apply (lambda (_stx3237_ _val3238_ _rebind?3239_)
                          (let ((_phi3241_ (gx#current-expander-phi)))
                            (let ((_ctx3243_ (gx#current-expander-context)))
                              (_opt-lambda32153225_
                               _stx3237_
                               _val3238_
                               _rebind?3239_
                               _phi3241_
                               _ctx3243_))))
                        _g12087_))
                ((fx= _g12086_ 4)
                 (apply (lambda (_stx3245_ _val3246_ _rebind?3247_ _phi3248_)
                          (let ((_ctx3250_ (gx#current-expander-context)))
                            (_opt-lambda32153225_
                             _stx3245_
                             _val3246_
                             _rebind?3247_
                             _phi3248_
                             _ctx3250_)))
                        _g12087_))
                ((fx= _g12086_ 5)
                 (apply (lambda (_stx3252_
                                 _val3253_
                                 _rebind?3254_
                                 _phi3255_
                                 _ctx3256_)
                          (_opt-lambda32153225_
                           _stx3252_
                           _val3253_
                           _rebind?3254_
                           _phi3255_
                           _ctx3256_))
                        _g12087_))
                (else (error "No clause matching arguments" _g12087_)))))))
  (define gx#core-resolve-identifier
    (let ((_opt-lambda31873198_
           (lambda (_stx3189_ _phi3190_ _ctx3191_)
             ((letrec ((_lp3193_
                        (lambda (_e3195_ _marks3196_)
                          (if (symbol? _e3195_)
                              (gx#core-resolve-binding
                               _e3195_
                               _phi3190_
                               _ctx3191_
                               (reverse _marks3196_))
                              (if (gx#identifier-quote? _e3195_)
                                  (gx#core-resolve-binding
                                   (AST-e _e3195_)
                                   _phi3190_
                                   (gx#syntax-quote-context _e3195_)
                                   (gx#syntax-quote-marks _e3195_))
                                  (if (gx#identifier-wrap? _e3195_)
                                      (gx#core-resolve-binding
                                       (AST-e _e3195_)
                                       _phi3190_
                                       _ctx3191_
                                       (foldl gx#apply-mark
                                              (gx#identifier-wrap-marks
                                               _e3195_)
                                              _marks3196_))
                                      (if (gx#syntax-wrap? _e3195_)
                                          (_lp3193_
                                           (AST-e _e3195_)
                                           (gx#apply-mark
                                            (gx#syntax-wrap-mark _e3195_)
                                            _marks3196_))
                                          (if (AST? _e3195_)
                                              (_lp3193_
                                               (AST-e _e3195_)
                                               _marks3196_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad identifier"
                                               _stx3189_)))))))))
                _lp3193_)
              _stx3189_
              (gx#current-expander-marks)))))
      (lambda _g12089_
        (let ((_g12088_ (length _g12089_)))
          (cond ((fx= _g12088_ 1)
                 (apply (lambda (_stx3201_)
                          (let ((_phi3203_ (gx#current-expander-phi)))
                            (let ((_ctx3205_ (gx#current-expander-context)))
                              (_opt-lambda31873198_
                               _stx3201_
                               _phi3203_
                               _ctx3205_))))
                        _g12089_))
                ((fx= _g12088_ 2)
                 (apply (lambda (_stx3207_ _phi3208_)
                          (let ((_ctx3210_ (gx#current-expander-context)))
                            (_opt-lambda31873198_
                             _stx3207_
                             _phi3208_
                             _ctx3210_)))
                        _g12089_))
                ((fx= _g12088_ 3)
                 (apply (lambda (_stx3212_ _phi3213_ _ctx3214_)
                          (_opt-lambda31873198_ _stx3212_ _phi3213_ _ctx3214_))
                        _g12089_))
                (else (error "No clause matching arguments" _g12089_)))))))
  (define gx#core-resolve-binding
    (lambda (_id3103_ _phi3104_ _ctx3105_ _marks3106_)
      (let ((_resolve3108_
             (lambda (_ctx3176_ _src-phi3177_ _key3178_)
               ((letrec ((_lp3180_
                          (lambda (_ctx3182_ _dphi3183_)
                            (let ((_$e3185_
                                   (gx#core-context-resolve
                                    _ctx3182_
                                    _key3178_)))
                              (if _$e3185_
                                  (values _$e3185_)
                                  (if (fxzero? _dphi3183_)
                                      '#f
                                      (if (fxpositive? _dphi3183_)
                                          (_lp3180_
                                           (gx#core-context-shift
                                            _ctx3182_
                                            '-1)
                                           (fx1- _dphi3183_))
                                          (if (fxnegative? _dphi3183_)
                                              (_lp3180_
                                               (gx#core-context-shift
                                                _ctx3182_
                                                '1)
                                               (fx1+ _dphi3183_))
                                              '#!void))))))))
                  _lp3180_)
                (gx#core-context-shift _ctx3176_ _phi3104_)
                (fx- _phi3104_ _src-phi3177_)))))
        ((letrec ((_lp3110_
                   (lambda (_ctx3112_ _src-phi3113_ _rest3114_)
                     (let ((_rest31153123_ _rest3114_))
                       (let ((_E31183127_
                              (lambda ()
                                (error '"No clause matching" _rest31153123_))))
                         (let ((_else31173131_
                                (lambda ()
                                  (_resolve3108_
                                   _ctx3112_
                                   _src-phi3113_
                                   _id3103_))))
                           (let ((_K31193164_
                                  (lambda (_rest3134_ _hd3135_)
                                    (let ((_hd31363142_ _hd3135_))
                                      (let ((_E31383146_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd31363142_))))
                                        (let ((_K31393156_
                                               (lambda (_subst3149_)
                                                 (let ((_$e3153_
                                                        (let ((_key3151_
                                                               (if _subst3149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (hash-get _subst3149_ _id3103_)
                           '#f)))
                  (if _key3151_
                      (_resolve3108_ _ctx3112_ _src-phi3113_ _key3151_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e3153_
                                                       _$e3153_
                                                       (_lp3110_
                                                        (gx#expander-mark-context
                                                         _hd3135_)
                                                        (gx#expander-mark-phi
                                                         _hd3135_)
                                                        _rest3134_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd31363142_)
                                              (let ((_e31403159_
                                                     (##vector-ref
                                                      _hd31363142_
                                                      '1)))
                                                (let ((_subst3162_
                                                       _e31403159_))
                                                  (_K31393156_ _subst3162_)))
                                              (_E31383146_))))))))
                             (if (##pair? _rest31153123_)
                                 (let ((_hd31203167_ (##car _rest31153123_))
                                       (_tl31213169_ (##cdr _rest31153123_)))
                                   (let ((_hd3172_ _hd31203167_))
                                     (let ((_rest3174_ _tl31213169_))
                                       (_K31193164_ _rest3174_ _hd3172_))))
                                 (_else31173131_)))))))))
           _lp3110_)
         _ctx3105_
         _phi3104_
         _marks3106_))))
  (define gx#core-bind!
    (let ((_opt-lambda29773070_
           (lambda (_key2979_ _val2980_ _rebind?2981_ _phi2982_ _ctx2983_)
             (let ((_update-binding2985_
                    (lambda (_xval3056_)
                      (if (let ((_$e3058_
                                 (_rebind?2981_
                                  _ctx2983_
                                  _xval3056_
                                  _val2980_)))
                            (if _$e3058_
                                _$e3058_
                                (let ((_$e3064_
                                       (if (gx#import-binding? _xval3056_)
                                           (let ((_$e3061_
                                                  (gx#import-binding-weak?
                                                   _xval3056_)))
                                             (if _$e3061_
                                                 _$e3061_
                                                 (if (gx#binding? _val2980_)
                                                     (not (gx#import-binding?
                                                           _val2980_))
                                                     '#f)))
                                           '#f)))
                                  (if _$e3064_
                                      _$e3064_
                                      (if (gx#extern-binding? _xval3056_)
                                          (if (gx#runtime-binding? _val2980_)
                                              (eq? (gx#binding-id _val2980_)
                                                   (gx#binding-id _xval3056_))
                                              '#f)
                                          '#f)))))
                          _val2980_
                          (if (if (gx#import-binding? _val2980_)
                                  (let ((_$e3067_
                                         (gx#import-binding-weak? _val2980_)))
                                    (if _$e3067_
                                        _$e3067_
                                        (if (gx#binding? _xval3056_)
                                            (eq? (gx#binding-id _val2980_)
                                                 (gx#binding-id _xval3056_))
                                            '#f)))
                                  '#f)
                              _xval3056_
                              (gx#raise-syntax-error
                               '#f
                               '"Bad binding; rebind conflict"
                               _key2979_
                               _xval3056_
                               _val2980_))))))
               (let ((_gensubst2986_
                      (lambda (_subst3051_ _id3052_)
                        (let ((_eid3054_
                               (gensym (if (uninterned-symbol? _id3052_)
                                           '%
                                           _id3052_))))
                          (begin
                            (hash-put! _subst3051_ _id3052_ _eid3054_)
                            _eid3054_)))))
                 (let ((_subst!2987_
                        (lambda (_key2989_)
                          (let ((_key29902998_ _key2989_))
                            (let ((_E29933002_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _key29902998_))))
                              (let ((_else29923006_ (lambda () _key2989_)))
                                (let ((_K29943039_
                                       (lambda (_mark3009_ _id3010_)
                                         (let ((_mark30113017_ _mark3009_))
                                           (let ((_E30133021_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _mark30113017_))))
                                             (let ((_K30143031_
                                                    (lambda (_subst3024_)
                                                      (if (not _subst3024_)
                                                          (let ((_subst3026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (make-hash-table-eq)))
                    (begin
                      (gx#expander-mark-subst-set! _mark3009_ _subst3026_)
                      (_gensubst2986_ _subst3026_ _id3010_)))
                  (let ((_$e3028_ (hash-get _subst3024_ _id3010_)))
                    (if _$e3028_
                        (values _$e3028_)
                        (_gensubst2986_ _subst3024_ _id3010_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (struct-instance?
                                                    gx#expander-mark::t
                                                    _mark30113017_)
                                                   (let ((_e30153034_
                                                          (##vector-ref
                                                           _mark30113017_
                                                           '1)))
                                                     (let ((_subst3037_
                                                            _e30153034_))
                                                       (_K30143031_
                                                        _subst3037_)))
                                                   (_E30133021_))))))))
                                  (if (##pair? _key29902998_)
                                      (let ((_hd29953042_
                                             (##car _key29902998_))
                                            (_tl29963044_
                                             (##cdr _key29902998_)))
                                        (let ((_id3047_ _hd29953042_))
                                          (let ((_mark3049_ _tl29963044_))
                                            (_K29943039_
                                             _mark3049_
                                             _id3047_))))
                                      (_else29923006_)))))))))
                   (gx#core-context-bind!
                    (gx#core-context-shift _ctx2983_ _phi2982_)
                    (_subst!2987_ _key2979_)
                    _val2980_
                    _update-binding2985_)))))))
      (lambda _g12091_
        (let ((_g12090_ (length _g12091_)))
          (cond ((fx= _g12090_ 2)
                 (apply (lambda (_key3073_ _val3074_)
                          (let ((_rebind?3076_ false))
                            (let ((_phi3078_ (gx#current-expander-phi)))
                              (let ((_ctx3080_ (gx#current-expander-context)))
                                (_opt-lambda29773070_
                                 _key3073_
                                 _val3074_
                                 _rebind?3076_
                                 _phi3078_
                                 _ctx3080_)))))
                        _g12091_))
                ((fx= _g12090_ 3)
                 (apply (lambda (_key3082_ _val3083_ _rebind?3084_)
                          (let ((_phi3086_ (gx#current-expander-phi)))
                            (let ((_ctx3088_ (gx#current-expander-context)))
                              (_opt-lambda29773070_
                               _key3082_
                               _val3083_
                               _rebind?3084_
                               _phi3086_
                               _ctx3088_))))
                        _g12091_))
                ((fx= _g12090_ 4)
                 (apply (lambda (_key3090_ _val3091_ _rebind?3092_ _phi3093_)
                          (let ((_ctx3095_ (gx#current-expander-context)))
                            (_opt-lambda29773070_
                             _key3090_
                             _val3091_
                             _rebind?3092_
                             _phi3093_
                             _ctx3095_)))
                        _g12091_))
                ((fx= _g12090_ 5)
                 (apply (lambda (_key3097_
                                 _val3098_
                                 _rebind?3099_
                                 _phi3100_
                                 _ctx3101_)
                          (_opt-lambda29773070_
                           _key3097_
                           _val3098_
                           _rebind?3099_
                           _phi3100_
                           _ctx3101_))
                        _g12091_))
                (else (error "No clause matching arguments" _g12091_)))))))
  (define gx#core-identifier-key
    (lambda (_stx2909_)
      (if (symbol? _stx2909_)
          (let ((_g29102918_ (gx#current-expander-marks)))
            (let ((_E29132922_
                   (lambda () (error '"No clause matching" _g29102918_))))
              (let ((_else29122926_ (lambda () _stx2909_)))
                (let ((_K29142931_
                       (lambda (_hd2929_) (cons _stx2909_ _hd2929_))))
                  (if (##pair? _g29102918_)
                      (let ((_hd29152934_ (##car _g29102918_))
                            (_tl29162936_ (##cdr _g29102918_)))
                        (let ((_hd2939_ _hd29152934_)) (_K29142931_ _hd2939_)))
                      (_else29122926_))))))
          (if (gx#identifier? _stx2909_)
              (let ((_id2941_ (gx#syntax-local-unwrap _stx2909_)))
                (let ((_eid2943_ (gx#stx-e _id2941_)))
                  (let ((_marks2945_ (gx#stx-identifier-marks _id2941_)))
                    (let ()
                      (let ((_marks29472955_ _marks2945_))
                        (let ((_E29502959_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks29472955_))))
                          (let ((_else29492963_ (lambda () _eid2943_)))
                            (let ((_K29512968_
                                   (lambda (_hd2966_)
                                     (cons _eid2943_ _hd2966_))))
                              (if (##pair? _marks29472955_)
                                  (let ((_hd29522971_ (##car _marks29472955_))
                                        (_tl29532973_ (##cdr _marks29472955_)))
                                    (let ((_hd2976_ _hd29522971_))
                                      (_K29512968_ _hd2976_)))
                                  (_else29492963_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx2909_)))))
  (define gx#core-context-shift
    (lambda (_ctx2854_ _phi2855_)
      (let ((_make-phi2857_
             (lambda (_super2907_)
               (gx#make-phi-context (gensym 'phi) _super2907_))))
        (let ((_make-phi/up2858_
               (lambda (_ctx2902_ _super2903_)
                 (let ((_ctx+12905_ (_make-phi2857_ _super2903_)))
                   (begin
                     (gx#phi-context-up-set! _ctx2902_ _ctx+12905_)
                     (gx#phi-context-down-set! _ctx+12905_ _ctx2902_)
                     _ctx+12905_)))))
          (let ((_make-phi/down2859_
                 (lambda (_ctx2897_ _super2898_)
                   (let ((_ctx-12900_ (_make-phi2857_ _super2898_)))
                     (begin
                       (gx#phi-context-up-set! _ctx-12900_ _ctx2897_)
                       (gx#phi-context-down-set! _ctx2897_ _ctx-12900_)
                       _ctx-12900_)))))
            (let ((_shift2860_
                   (lambda (_ctx2881_
                            _delta2882_
                            _make-delta-context2883_
                            _phi2884_
                            _K2885_)
                     (let ((_$e2887_ (gx#phi-context-super _ctx2881_)))
                       (if _$e2887_
                           ((lambda (_super2890_)
                              (let ((_super2892_
                                     (_K2885_ _super2890_ _delta2882_)))
                                (let ((_ctx+d2894_
                                       (_make-delta-context2883_
                                        _ctx2881_
                                        _super2892_)))
                                  (let ()
                                    (_K2885_ _ctx+d2894_
                                             (fx- _phi2884_ _delta2882_))))))
                            _$e2887_)
                           (error '"Bad context" _ctx2881_))))))
              ((letrec ((_K2862_ (lambda (_ctx2864_ _phi2865_)
                                   (if (fxzero? _phi2865_)
                                       _ctx2864_
                                       (if (gx#phi-context? _ctx2864_)
                                           (if (fxpositive? _phi2865_)
                                               (let ((_$e2867_
                                                      (gx#phi-context-up
                                                       _ctx2864_)))
                                                 (if _$e2867_
                                                     ((lambda (_g28692871_)
                                                        (_K2862_ _g28692871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1- _phi2865_)))
              _$e2867_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2860_
                                                      _ctx2864_
                                                      '1
                                                      _make-phi/up2858_
                                                      _phi2865_
                                                      _K2862_)))
                                               (let ((_$e2874_
                                                      (gx#phi-context-down
                                                       _ctx2864_)))
                                                 (if _$e2874_
                                                     ((lambda (_g28762878_)
                                                        (_K2862_ _g28762878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1+ _phi2865_)))
              _$e2874_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2860_
                                                      _ctx2864_
                                                      '-1
                                                      _make-phi/down2859_
                                                      _phi2865_
                                                      _K2862_))))
                                           _ctx2864_)))))
                 _K2862_)
               _ctx2854_
               _phi2855_)))))))
  (define gx#core-context-get
    (lambda (_ctx2851_ _key2852_)
      (hash-get (gx#expander-context-table _ctx2851_) _key2852_)))
  (define gx#core-context-put!
    (lambda (_ctx2847_ _key2848_ _val2849_)
      (hash-put! (gx#expander-context-table _ctx2847_) _key2848_ _val2849_)))
  (define gx#core-context-resolve
    (lambda (_ctx2834_ _key2835_)
      ((letrec ((_lp2837_
                 (lambda (_ctx2839_)
                   (let ((_$e2841_ (gx#core-context-get _ctx2839_ _key2835_)))
                     (if _$e2841_
                         (values _$e2841_)
                         (let ((_$e2844_
                                (if (gx#phi-context? _ctx2839_)
                                    (gx#phi-context-super _ctx2839_)
                                    '#f)))
                           (if _$e2844_ (_lp2837_ _$e2844_) '#f)))))))
         _lp2837_)
       _ctx2834_)))
  (define gx#core-context-bind!
    (lambda (_ctx2824_ _key2825_ _val2826_ _rebind2827_)
      (let ((_$e2829_ (gx#core-context-get _ctx2824_ _key2825_)))
        (if _$e2829_
            ((lambda (_xval2832_)
               (gx#core-context-put!
                _ctx2824_
                _key2825_
                (_rebind2827_ _xval2832_)))
             _$e2829_)
            (gx#core-context-put! _ctx2824_ _key2825_ _val2826_)))))
  (define gx#core-context-top
    (let ((_opt-lambda28002809_
           (lambda (_ctx2802_ _stop?2803_)
             ((letrec ((_lp2805_
                        (lambda (_ctx2807_)
                          (if (_stop?2803_ _ctx2807_)
                              _ctx2807_
                              (if (gx#phi-context? _ctx2807_)
                                  (_lp2805_ (gx#phi-context-super _ctx2807_))
                                  '#f)))))
                _lp2805_)
              _ctx2802_))))
      (lambda _g12093_
        (let ((_g12092_ (length _g12093_)))
          (cond ((fx= _g12092_ 0)
                 (apply (lambda ()
                          (let ((_ctx2813_ (gx#current-expander-context)))
                            (let ((_stop?2815_ gx#top-context?))
                              (_opt-lambda28002809_ _ctx2813_ _stop?2815_))))
                        _g12093_))
                ((fx= _g12092_ 1)
                 (apply (lambda (_ctx2817_)
                          (let ((_stop?2819_ gx#top-context?))
                            (_opt-lambda28002809_ _ctx2817_ _stop?2819_)))
                        _g12093_))
                ((fx= _g12092_ 2)
                 (apply (lambda (_ctx2821_ _stop?2822_)
                          (_opt-lambda28002809_ _ctx2821_ _stop?2822_))
                        _g12093_))
                (else (error "No clause matching arguments" _g12093_)))))))
  (define gx#core-context-root
    (let ((_opt-lambda27852793_
           (lambda (_ctx2787_)
             ((letrec ((_lp2789_
                        (lambda (_ctx2791_)
                          (if (gx#phi-context? _ctx2791_)
                              (_lp2789_ (gx#phi-context-super _ctx2791_))
                              _ctx2791_))))
                _lp2789_)
              _ctx2787_))))
      (lambda _g12095_
        (let ((_g12094_ (length _g12095_)))
          (cond ((fx= _g12094_ 0)
                 (apply (lambda ()
                          (let ((_ctx2797_ (gx#current-expander-context)))
                            (_opt-lambda27852793_ _ctx2797_)))
                        _g12095_))
                ((fx= _g12094_ 1)
                 (apply (lambda (_ctx2799_) (_opt-lambda27852793_ _ctx2799_))
                        _g12095_))
                (else (error "No clause matching arguments" _g12095_)))))))
  (define gx#core-context-rebind?
    (let ((_opt-lambda27692775_
           (lambda (_ctx2771_ . __27682772_)
             (if (gx#top-context? _ctx2771_)
                 (if (not (gx#module-context? _ctx2771_))
                     (not (gx#prelude-context? _ctx2771_))
                     '#f)
                 '#f))))
      (lambda _g12097_
        (let ((_g12096_ (length _g12097_)))
          (cond ((fx= _g12096_ 0)
                 (apply (lambda ()
                          (let ((_ctx2779_ (gx#current-expander-context)))
                            (_opt-lambda27692775_ _ctx2779_)))
                        _g12097_))
                ((fx= _g12096_ 1)
                 (apply (lambda (_ctx2781_) (_opt-lambda27692775_ _ctx2781_))
                        _g12097_))
                ((fx>= _g12096_ 1)
                 (apply (lambda (_ctx2783_ . __27682784_)
                          (apply _opt-lambda27692775_ _ctx2783_ __27682784_))
                        _g12097_))
                (else (error "No clause matching arguments" _g12097_)))))))
  (define gx#core-context-namespace
    (let ((_opt-lambda27522761_
           (lambda (_ctx2754_)
             (let ((_$e2756_ (gx#core-context-top _ctx2754_)))
               (if _$e2756_
                   ((lambda (_ctx2759_)
                      (if (gx#module-context? _ctx2759_)
                          (gx#module-context-ns _ctx2759_)
                          '#f))
                    _$e2756_)
                   '#f)))))
      (lambda _g12099_
        (let ((_g12098_ (length _g12099_)))
          (cond ((fx= _g12098_ 0)
                 (apply (lambda ()
                          (let ((_ctx2765_ (gx#current-expander-context)))
                            (_opt-lambda27522761_ _ctx2765_)))
                        _g12099_))
                ((fx= _g12098_ 1)
                 (apply (lambda (_ctx2767_) (_opt-lambda27522761_ _ctx2767_))
                        _g12099_))
                (else (error "No clause matching arguments" _g12099_)))))))
  (define gx#expander-binding?
    (let ((_opt-lambda27382743_
           (lambda (_bind2740_ _is?2741_)
             (if (gx#syntax-binding? _bind2740_)
                 (_is?2741_ (gx#syntax-binding-e _bind2740_))
                 '#f))))
      (lambda _g12101_
        (let ((_g12100_ (length _g12101_)))
          (cond ((fx= _g12100_ 1)
                 (apply (lambda (_bind2746_)
                          (let ((_is?2748_ gx#expander?))
                            (_opt-lambda27382743_ _bind2746_ _is?2748_)))
                        _g12101_))
                ((fx= _g12100_ 2)
                 (apply (lambda (_bind2750_ _is?2751_)
                          (_opt-lambda27382743_ _bind2750_ _is?2751_))
                        _g12101_))
                (else (error "No clause matching arguments" _g12101_)))))))
  (define gx#core-expander-binding?
    (lambda (_bind2737_) (gx#expander-binding? _bind2737_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind2735_)
      (gx#expander-binding? _bind2735_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind2733_) (gx#expander-binding? _bind2733_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind2724_)
      (let ((_feature?2726_
             (lambda (_e2728_)
               (let ((_$e2730_ (gx#feature-expander? _e2728_)))
                 (if _$e2730_ _$e2730_ (gx#module-context? _e2728_))))))
        (gx#expander-binding? _bind2724_ _feature?2726_))))
  (define gx#private-feature-binding?
    (lambda (_bind2722_)
      (gx#expander-binding? _bind2722_ gx#private-feature-expander?)))
  (define gx#core-bound-identifier?
    (let ((_opt-lambda27072712_
           (lambda (_id2709_ _bound?2710_)
             (if (gx#identifier? _id2709_)
                 (_bound?2710_ (gx#resolve-identifier _id2709_))
                 '#f))))
      (lambda _g12103_
        (let ((_g12102_ (length _g12103_)))
          (cond ((fx= _g12102_ 1)
                 (apply (lambda (_id2715_)
                          (let ((_bound?2717_ gx#core-expander-binding?))
                            (_opt-lambda27072712_ _id2715_ _bound?2717_)))
                        _g12103_))
                ((fx= _g12102_ 2)
                 (apply (lambda (_id2719_ _bound?2720_)
                          (_opt-lambda27072712_ _id2719_ _bound?2720_))
                        _g12103_))
                (else (error "No clause matching arguments" _g12103_)))))))
  (define gx#core-identifier=?
    (lambda (_x2699_ _y2700_)
      (let ((_y=?2702_
             (lambda (_xid2706_)
               ((if (list? _y2700_) memq eq?) _xid2706_ _y2700_))))
        (let ((_bind2704_ (gx#resolve-identifier _x2699_)))
          (if (gx#binding? _bind2704_)
              (_y=?2702_ (gx#binding-id _bind2704_))
              (_y=?2702_ (gx#stx-e _x2699_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e2697_)
      (if (interned-symbol? _e2697_)
          (string-index (symbol->string _e2697_) '#\#)
          '#f)))
  (define gx#core-quote-syntax
    (let ((_opt-lambda26532668_
           (lambda (_stx2655_ _src2656_ _ctx2657_ _marks2658_)
             (if (gx#sealed-syntax? _stx2655_)
                 (gx#stx-unwrap _stx2655_)
                 (if (gx#identifier? _stx2655_)
                     (let ((_id2660_ (gx#syntax-local-unwrap _stx2655_)))
                       (gx#make-syntax-quote
                        (gx#stx-e _id2660_)
                        (let ((_$e2662_ (gx#stx-source _id2660_)))
                          (if _$e2662_ _$e2662_ _src2656_))
                        _ctx2657_
                        (gx#identifier-wrap-marks _id2660_)))
                     (if (gx#stx-datum? _stx2655_)
                         (gx#stx-e _stx2655_)
                         (gx#make-syntax-quote
                          _stx2655_
                          (let ((_$e2665_ (gx#stx-source _stx2655_)))
                            (if _$e2665_ _$e2665_ _src2656_))
                          _ctx2657_
                          (reverse _marks2658_))))))))
      (lambda _g12105_
        (let ((_g12104_ (length _g12105_)))
          (cond ((fx= _g12104_ 1)
                 (apply (lambda (_stx2671_)
                          (let ((_src2673_ '#f))
                            (let ((_ctx2675_ (gx#current-expander-context)))
                              (let ((_marks2677_ (gx#current-expander-marks)))
                                (_opt-lambda26532668_
                                 _stx2671_
                                 _src2673_
                                 _ctx2675_
                                 _marks2677_)))))
                        _g12105_))
                ((fx= _g12104_ 2)
                 (apply (lambda (_stx2679_ _src2680_)
                          (let ((_ctx2682_ (gx#current-expander-context)))
                            (let ((_marks2684_ (gx#current-expander-marks)))
                              (_opt-lambda26532668_
                               _stx2679_
                               _src2680_
                               _ctx2682_
                               _marks2684_))))
                        _g12105_))
                ((fx= _g12104_ 3)
                 (apply (lambda (_stx2686_ _src2687_ _ctx2688_)
                          (let ((_marks2690_ (gx#current-expander-marks)))
                            (_opt-lambda26532668_
                             _stx2686_
                             _src2687_
                             _ctx2688_
                             _marks2690_)))
                        _g12105_))
                ((fx= _g12104_ 4)
                 (apply (lambda (_stx2692_ _src2693_ _ctx2694_ _marks2695_)
                          (_opt-lambda26532668_
                           _stx2692_
                           _src2693_
                           _ctx2694_
                           _marks2695_))
                        _g12105_))
                (else (error "No clause matching arguments" _g12105_)))))))
  (define gx#core-cons
    (lambda (_hd2651_ _tl2652_)
      (cons (gx#core-quote-syntax _hd2651_) _tl2652_)))
  (define gx#core-list
    (lambda (_hd2648_ . _rest2649_)
      (cons (gx#core-quote-syntax _hd2648_) _rest2649_)))
  (define gx#core-cons*
    (lambda (_hd2645_ . _rest2646_)
      (apply cons* (gx#core-quote-syntax _hd2645_) _rest2646_)))
  (define gx#core-resolve-path
    (let ((_opt-lambda26172635_
           (lambda (_stx-path2619_ _rel2620_)
             (let ((_path2632_ (gx#stx-e _stx-path2619_))
                   (_reldir2633_
                    ((letrec ((_lp2622_
                               (lambda (_relsrc2624_)
                                 (if (AST? _relsrc2624_)
                                     (_lp2622_
                                      (let ((_$e2626_
                                             (gx#stx-source _relsrc2624_)))
                                        (if _$e2626_
                                            _$e2626_
                                            (gx#stx-e _relsrc2624_))))
                                     (if (source-location-path? _relsrc2624_)
                                         (path-directory
                                          (source-location-path _relsrc2624_))
                                         (if (string? _relsrc2624_)
                                             (path-directory _relsrc2624_)
                                             (if (not (null? (gx#current-expander-path)))
                                                 (path-directory
                                                  (car (gx#current-expander-path)))
                                                 (current-directory))))))))
                       _lp2622_)
                     (let ((_$e2629_ (gx#stx-source _stx-path2619_)))
                       (if _$e2629_ _$e2629_ _rel2620_)))))
               (path-expand _path2632_ (path-normalize _reldir2633_))))))
      (lambda _g12107_
        (let ((_g12106_ (length _g12107_)))
          (cond ((fx= _g12106_ 1)
                 (apply (lambda (_stx-path2638_)
                          (let ((_rel2640_ '#f))
                            (_opt-lambda26172635_ _stx-path2638_ _rel2640_)))
                        _g12107_))
                ((fx= _g12106_ 2)
                 (apply (lambda (_stx-path2642_ _rel2643_)
                          (_opt-lambda26172635_ _stx-path2642_ _rel2643_))
                        _g12107_))
                (else (error "No clause matching arguments" _g12107_)))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx2616_) (gx#stx-rewrap _stx2616_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx2614_) (gx#stx-unwrap _stx2614_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx2582_)
      (let ((_g25832591_ (gx#current-expander-marks)))
        (let ((_E25862595_
               (lambda () (error '"No clause matching" _g25832591_))))
          (let ((_else25852599_ (lambda () _stx2582_)))
            (let ((_K25872604_
                   (lambda (_hd2602_) (gx#stx-apply-mark _stx2582_ _hd2602_))))
              (if (##pair? _g25832591_)
                  (let ((_hd25882607_ (##car _g25832591_))
                        (_tl25892609_ (##cdr _g25832591_)))
                    (let ((_hd2612_ _hd25882607_)) (_K25872604_ _hd2612_)))
                  (_else25852599_))))))))
  (define gx#syntax-local-e
    (let ((_opt-lambda25652572_
           (lambda (_stx2567_ _E2568_)
             (let ((_bind2570_ (gx#resolve-identifier _stx2567_)))
               (if (gx#syntax-binding? _bind2570_)
                   (gx#syntax-binding-e _bind2570_)
                   (_E2568_ _stx2567_))))))
      (lambda _g12109_
        (let ((_g12108_ (length _g12109_)))
          (cond ((fx= _g12108_ 1)
                 (apply (lambda (_stx2575_)
                          (let ((_E2577_ gx#raise-syntax-ref-error))
                            (_opt-lambda25652572_ _stx2575_ _E2577_)))
                        _g12109_))
                ((fx= _g12108_ 2)
                 (apply (lambda (_stx2579_ _E2580_)
                          (_opt-lambda25652572_ _stx2579_ _E2580_))
                        _g12109_))
                (else (error "No clause matching arguments" _g12109_)))))))
  (define gx#syntax-local-value
    (let ((_opt-lambda25492556_
           (lambda (_stx2551_ _E2552_)
             (let ((_e2554_ (gx#syntax-local-e _stx2551_ _E2552_)))
               (if (gx#expander? _e2554_) (gx#expander-e _e2554_) _e2554_)))))
      (lambda _g12111_
        (let ((_g12110_ (length _g12111_)))
          (cond ((fx= _g12110_ 1)
                 (apply (lambda (_stx2559_)
                          (let ((_E2561_ gx#raise-syntax-ref-error))
                            (_opt-lambda25492556_ _stx2559_ _E2561_)))
                        _g12111_))
                ((fx= _g12110_ 2)
                 (apply (lambda (_stx2563_ _E2564_)
                          (_opt-lambda25492556_ _stx2563_ _E2564_))
                        _g12111_))
                (else (error "No clause matching arguments" _g12111_)))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx2548_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx2548_))))
