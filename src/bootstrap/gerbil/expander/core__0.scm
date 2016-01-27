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
    (lambda _$args4392_
      (apply make-struct-instance gx#expander-context::t _$args4392_)))
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
    (lambda _$args4389_
      (apply make-struct-instance gx#root-context::t _$args4389_)))
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
    (lambda _$args4386_
      (apply make-struct-instance gx#phi-context::t _$args4386_)))
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
    (lambda _$args4383_
      (apply make-struct-instance gx#top-context::t _$args4383_)))
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
    (lambda _$args4380_
      (apply make-struct-instance gx#module-context::t _$args4380_)))
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
    (lambda _$args4377_
      (apply make-struct-instance gx#prelude-context::t _$args4377_)))
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
    (lambda _$args4374_
      (apply make-struct-instance gx#local-context::t _$args4374_)))
  (begin)
  (define gx#phi-context:::init!
    (let ((_@super4355_
           (let ((_$super4349_
                  (make-promise
                   (lambda ()
                     (let ((_$e4346_
                            (struct-find-next-method
                             gx#phi-context::t
                             ':init!)))
                       (if _$e4346_
                           _$e4346_
                           (error '"Cannot find super method"
                                  gx#phi-context::t
                                  ':init!)))))))
             (lambda _$args4352_ (apply (force _$super4349_) _$args4352_)))))
      (let ((_opt-lambda43564362_
             (lambda (_self4358_ _id4359_ _super4360_)
               (direct-struct-instance-init!
                _self4358_
                _id4359_
                (make-hash-table-eq)
                _super4360_
                '#f
                '#f))))
        (lambda _g12227_
          (let ((_g12226_ (length _g12227_)))
            (cond ((fx= _g12226_ 2)
                   (apply (lambda (_self4365_ _id4366_)
                            (let ((_super4368_ (gx#current-expander-context)))
                              (_opt-lambda43564362_
                               _self4365_
                               _id4366_
                               _super4368_)))
                          _g12227_))
                  ((fx= _g12226_ 3)
                   (apply (lambda (_self4370_ _id4371_ _super4372_)
                            (_opt-lambda43564362_
                             _self4370_
                             _id4371_
                             _super4372_))
                          _g12227_))
                  (else (error "No clause matching arguments" _g12227_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (define gx#local-context:::init!
    (let ((_@super4329_
           (let ((_$super4323_
                  (make-promise
                   (lambda ()
                     (let ((_$e4320_
                            (struct-find-next-method
                             gx#local-context::t
                             ':init!)))
                       (if _$e4320_
                           _$e4320_
                           (error '"Cannot find super method"
                                  gx#local-context::t
                                  ':init!)))))))
             (lambda _$args4326_ (apply (force _$super4323_) _$args4326_)))))
      (let ((_opt-lambda43304335_
             (lambda (_self4332_ _super4333_)
               (direct-struct-instance-init!
                _self4332_
                (gensym 'L)
                (make-hash-table-eq)
                _super4333_
                '#f
                '#f))))
        (lambda _g12229_
          (let ((_g12228_ (length _g12229_)))
            (cond ((fx= _g12228_ 1)
                   (apply (lambda (_self4338_)
                            (let ((_super4340_ (gx#current-expander-context)))
                              (_opt-lambda43304335_ _self4338_ _super4340_)))
                          _g12229_))
                  ((fx= _g12228_ 2)
                   (apply (lambda (_self4342_ _super4343_)
                            (_opt-lambda43304335_ _self4342_ _super4343_))
                          _g12229_))
                  (else (error "No clause matching arguments" _g12229_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args4316_
      (apply make-struct-instance gx#binding::t _$args4316_)))
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
    (lambda _$args4313_
      (apply make-struct-instance gx#runtime-binding::t _$args4313_)))
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
    (lambda _$args4310_
      (apply make-struct-instance gx#local-binding::t _$args4310_)))
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
    (lambda _$args4307_
      (apply make-struct-instance gx#top-binding::t _$args4307_)))
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
    (lambda _$args4304_
      (apply make-struct-instance gx#module-binding::t _$args4304_)))
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
    (lambda _$args4301_
      (apply make-struct-instance gx#extern-binding::t _$args4301_)))
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
    (lambda _$args4298_
      (apply make-struct-instance gx#syntax-binding::t _$args4298_)))
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
    (lambda _$args4295_
      (apply make-struct-instance gx#import-binding::t _$args4295_)))
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
    (lambda _$args4292_
      (apply make-struct-instance gx#alias-binding::t _$args4292_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (begin)
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args4289_
      (apply make-struct-instance gx#expander::t _$args4289_)))
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
    (lambda _$args4286_
      (apply make-struct-instance gx#core-expander::t _$args4286_)))
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
    (lambda _$args4283_
      (apply make-struct-instance gx#expression-form::t _$args4283_)))
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
    (lambda _$args4280_
      (apply make-struct-instance gx#special-form::t _$args4280_)))
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
    (lambda _$args4277_
      (apply make-struct-instance gx#definition-form::t _$args4277_)))
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
    (lambda _$args4274_
      (apply make-struct-instance gx#top-special-form::t _$args4274_)))
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
    (lambda _$args4271_
      (apply make-struct-instance gx#module-special-form::t _$args4271_)))
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
    (lambda _$args4268_
      (apply make-struct-instance gx#feature-expander::t _$args4268_)))
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
    (lambda _$args4265_
      (apply make-struct-instance gx#private-feature-expander::t _$args4265_)))
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
    (lambda _$args4262_
      (apply make-struct-instance gx#reserved-expander::t _$args4262_)))
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
    (lambda _$args4259_
      (apply make-struct-instance gx#macro-expander::t _$args4259_)))
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
    (lambda _$args4256_
      (apply make-struct-instance gx#rename-macro-expander::t _$args4256_)))
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
    (lambda _$args4253_
      (apply make-struct-instance gx#user-expander::t _$args4253_)))
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
    (lambda _$args4250_
      (apply make-struct-instance gx#expander-mark::t _$args4250_)))
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
    (lambda _$args4247_
      (apply make-struct-instance gx#syntax-error::t _$args4247_)))
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
    (lambda (_where4242_ _message4243_ _stx4244_ . _details4245_)
      (raise (gx#make-syntax-error
              _where4242_
              _message4243_
              (cons _stx4244_ _details4245_)
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (define gx#eval-syntax
    (let ((_opt-lambda42274232_
           (lambda (_stx4229_ _expression?4230_)
             (gx#eval-syntax* (gx#core-expand _stx4229_ _expression?4230_)))))
      (lambda _g12231_
        (let ((_g12230_ (length _g12231_)))
          (cond ((fx= _g12230_ 1)
                 (apply (lambda (_stx4235_)
                          (let ((_expression?4237_ '#f))
                            (_opt-lambda42274232_
                             _stx4235_
                             _expression?4237_)))
                        _g12231_))
                ((fx= _g12230_ 2)
                 (apply (lambda (_stx4239_ _expression?4240_)
                          (_opt-lambda42274232_ _stx4239_ _expression?4240_))
                        _g12231_))
                (else (error "No clause matching arguments" _g12231_)))))))
  (define gx#eval-syntax*
    (lambda (_stx4226_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx4226_))))
  (define gx#core-expand
    (let ((_opt-lambda42114216_
           (lambda (_stx4213_ _expression?4214_)
             (if _expression?4214_
                 (gx#core-expand-expression _stx4213_)
                 (gx#core-expand-top _stx4213_)))))
      (lambda _g12233_
        (let ((_g12232_ (length _g12233_)))
          (cond ((fx= _g12232_ 1)
                 (apply (lambda (_stx4219_)
                          (let ((_expression?4221_ '#f))
                            (_opt-lambda42114216_
                             _stx4219_
                             _expression?4221_)))
                        _g12233_))
                ((fx= _g12232_ 2)
                 (apply (lambda (_stx4223_ _expression?4224_)
                          (_opt-lambda42114216_ _stx4223_ _expression?4224_))
                        _g12233_))
                (else (error "No clause matching arguments" _g12233_)))))))
  (define gx#core-expand-top
    (lambda (_stx4180_)
      (let ((_stx4182_ (gx#core-expand* _stx4180_)))
        (let ((_e41834190_ _stx4182_))
          (let ((_E41854194_
                 (lambda () (gx#core-expand-expression _stx4182_))))
            (let ((_E41844208_
                   (lambda ()
                     (if (gx#stx-pair? _e41834190_)
                         (let ((_e41864198_ (gx#syntax-e _e41834190_)))
                           (let ((_hd41874201_ (##car _e41864198_))
                                 (_tl41884203_ (##cdr _e41864198_)))
                             (let ((_form4206_ _hd41874201_))
                               (if (gx#core-bound-identifier? _form4206_)
                                   _stx4182_
                                   (_E41854194_)))))
                         (_E41854194_)))))
              (let () (_E41844208_))))))))
  (define gx#core-expand-expression
    (lambda (_stx4102_)
      (let ((_sealed-expression?4104_
             (lambda (_hd4150_)
               (if (gx#sealed-syntax? _hd4150_)
                   (let ((_e41514158_ _hd4150_))
                     (let ((_E41534162_ (lambda () '#f)))
                       (let ((_E41524176_
                              (lambda ()
                                (if (gx#stx-pair? _e41514158_)
                                    (let ((_e41544166_
                                           (gx#syntax-e _e41514158_)))
                                      (let ((_hd41554169_ (##car _e41544166_))
                                            (_tl41564171_ (##cdr _e41544166_)))
                                        (let ((_form4174_ _hd41554169_))
                                          (if '#t
                                              (gx#core-bound-identifier?
                                               _form4174_
                                               gx#expression-form-binding?)
                                              (_E41534162_)))))
                                    (_E41534162_)))))
                         (let () (_E41524176_)))))
                   '#f))))
        (let ((_illegal-expression4105_
               (lambda (_hd4148_ . _g12234_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx4102_
                  _hd4148_))))
          (let ((_expand-e4106_
                 (lambda (_form4143_ _hd4144_)
                   (let ((_bind4146_
                          (if (gx#binding? _form4143_)
                              _form4143_
                              (gx#resolve-identifier _form4143_))))
                     (if (gx#core-expander-binding? _bind4146_)
                         (gx#core-apply-expander
                          (gx#syntax-binding-e _bind4146_)
                          (gx#stx-wrap-source
                           _hd4144_
                           (gx#stx-source _stx4102_)))
                         (if (gx#syntax-binding? _bind4146_)
                             (gx#core-expand-expression
                              (gx#core-apply-expander
                               (gx#syntax-binding-e _bind4146_)
                               (gx#stx-wrap-source
                                _hd4144_
                                (gx#stx-source _stx4102_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx4102_
                              _form4143_)))))))
            (let ((_hd4108_ (gx#core-expand-head _stx4102_)))
              (if (_sealed-expression?4104_ _hd4108_)
                  _hd4108_
                  (if (gx#stx-pair? _hd4108_)
                      (let ((_e41094116_ _hd4108_))
                        (let ((_E41114120_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e41094116_))))
                          (let ((_E41104139_
                                 (lambda ()
                                   (if (gx#stx-pair? _e41094116_)
                                       (let ((_e41124124_
                                              (gx#syntax-e _e41094116_)))
                                         (let ((_hd41134127_
                                                (##car _e41124124_))
                                               (_tl41144129_
                                                (##cdr _e41124124_)))
                                           (let ((_form4132_ _hd41134127_))
                                             (if '#t
                                                 (let ((_bind4134_
                                                        (if (gx#identifier?
                                                             _form4132_)
                                                            (gx#resolve-identifier
                                                             _form4132_)
                                                            '#f)))
                                                   (if (let ((_$e4136_
                                                              (not _bind4134_)))
                                                         (if _$e4136_
                                                             _$e4136_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind4134_))))
               (_expand-e4106_ '%#call (cons '%#call _hd4108_))
               (if (eq? (gx#binding-id _bind4134_) '%#begin)
                   (gx#core-expand-block* _hd4108_ _illegal-expression4105_)
                   (if (gx#expression-form-binding? _bind4134_)
                       (_expand-e4106_ _bind4134_ _hd4108_)
                       (_illegal-expression4105_ _hd4108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E41114120_)))))
                                       (_E41114120_)))))
                            (let () (_E41104139_)))))
                      (if (gx#core-bound-identifier? _hd4108_)
                          (_illegal-expression4105_ _hd4108_)
                          (if (gx#identifier? _hd4108_)
                              (_expand-e4106_
                               '%#ref
                               (cons '%#ref (cons _hd4108_ '())))
                              (if (gx#stx-datum? _hd4108_)
                                  (_expand-e4106_
                                   '%#quote
                                   (cons '%#quote (cons _hd4108_ '())))
                                  (_illegal-expression4105_
                                   _hd4108_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx4097_)
      (call-with-parameters
       (lambda ()
         (let ((_stx4100_ (gx#core-expand-expression _stx4097_)))
           (values _stx4100_ (gx#eval-syntax* _stx4100_))))
       gx#current-expander-phi
       (fx1+ (gx#current-expander-phi)))))
  (define gx#core-expand*
    (let ((_opt-lambda40764087_
           (lambda (_stx4078_ _stop?4079_)
             ((letrec ((_lp4081_
                        (lambda (_stx4083_)
                          (if (_stop?4079_ _stx4083_)
                              _stx4083_
                              (let ((_rstx4085_ (gx#core-expand1 _stx4083_)))
                                (if (eq? _stx4083_ _rstx4085_)
                                    _stx4083_
                                    (_lp4081_ _rstx4085_)))))))
                _lp4081_)
              _stx4078_))))
      (lambda _g12236_
        (let ((_g12235_ (length _g12236_)))
          (cond ((fx= _g12235_ 1)
                 (apply (lambda (_stx4090_)
                          (let ((_stop?4092_ false))
                            (_opt-lambda40764087_ _stx4090_ _stop?4092_)))
                        _g12236_))
                ((fx= _g12235_ 2)
                 (apply (lambda (_stx4094_ _stop?4095_)
                          (_opt-lambda40764087_ _stx4094_ _stop?4095_))
                        _g12236_))
                (else (error "No clause matching arguments" _g12236_)))))))
  (define gx#core-expand1
    (lambda (_stx4028_)
      (let ((_step4030_
             (lambda (_hd4067_)
               (let ((_bind4069_ (gx#resolve-identifier _hd4067_)))
                 (if (gx#runtime-binding? _bind4069_)
                     _stx4028_
                     (if (gx#syntax-binding? _bind4069_)
                         (gx#core-apply-expander
                          (gx#syntax-binding-e _bind4069_)
                          _stx4028_)
                         (if (not _bind4069_)
                             (begin
                               (if (let ((_$e4071_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e4071_
                                         _$e4071_
                                         (let ((_$e4074_
                                                (gx#core-context-rebind?
                                                 (gx#core-context-top))))
                                           (if _$e4074_
                                               _$e4074_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd4067_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx4028_
                                    _hd4067_))
                               _stx4028_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx4028_))))))))
        (let ((_e40314039_ _stx4028_))
          (let ((_E40374043_ (lambda () _stx4028_)))
            (let ((_E40334049_
                   (lambda ()
                     (let ((_hd4047_ _e40314039_))
                       (if (gx#identifier? _hd4047_)
                           (_step4030_ _hd4047_)
                           (_E40374043_))))))
              (let ((_E40324063_
                     (lambda ()
                       (if (gx#stx-pair? _e40314039_)
                           (let ((_e40344053_ (gx#syntax-e _e40314039_)))
                             (let ((_hd40354056_ (##car _e40344053_))
                                   (_tl40364058_ (##cdr _e40344053_)))
                               (let ((_hd4061_ _hd40354056_))
                                 (if (gx#identifier? _hd4061_)
                                     (_step4030_ _hd4061_)
                                     (_E40334049_)))))
                           (_E40334049_)))))
                (let () (_E40324063_)))))))))
  (define gx#core-expand-head
    (lambda (_stx3994_)
      (let ((_stop?3996_
             (lambda (_stx3998_)
               (let ((_e39994006_ _stx3998_))
                 (let ((_E40014010_ (lambda () '#f)))
                   (let ((_E40004024_
                          (lambda ()
                            (if (gx#stx-pair? _e39994006_)
                                (let ((_e40024014_ (gx#syntax-e _e39994006_)))
                                  (let ((_hd40034017_ (##car _e40024014_))
                                        (_tl40044019_ (##cdr _e40024014_)))
                                    (let ((_hd4022_ _hd40034017_))
                                      (if '#t
                                          (gx#core-bound-identifier? _hd4022_)
                                          (_E40014010_)))))
                                (_E40014010_)))))
                     (let () (_E40004024_))))))))
        (gx#core-expand* _stx3994_ _stop?3996_))))
  (define gx#core-expand-block
    (let ((_opt-lambda37983973_
           (lambda (_stx3800_
                    _expand-special3801_
                    _begin-form3802_
                    _expand-e3803_)
             (letrec ((_expand-splice3805_
                       (lambda (_hd3968_ _body3969_ _rest3970_ _r3971_)
                         (if (gx#stx-list? _body3969_)
                             (_K3809_ (gx#stx-foldr cons _rest3970_ _body3969_)
                                      _r3971_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx3800_
                              _hd3968_))))
                      (_expand-cond-expand3806_
                       (lambda (_hd3964_ _rest3965_ _r3966_)
                         (_K3809_ (cons (gx#core-expand-cond-expand% _hd3964_)
                                        _rest3965_)
                                  _r3966_)))
                      (_expand-include3807_
                       (lambda (_hd3913_ _rest3914_ _r3915_)
                         (let ((_e39163926_ _hd3913_))
                           (let ((_E39183930_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e39163926_))))
                             (let ((_E39173960_
                                    (lambda ()
                                      (if (gx#stx-pair? _e39163926_)
                                          (let ((_e39193934_
                                                 (gx#syntax-e _e39163926_)))
                                            (let ((_hd39203937_
                                                   (##car _e39193934_))
                                                  (_tl39213939_
                                                   (##cdr _e39193934_)))
                                              (if (gx#stx-pair? _tl39213939_)
                                                  (let ((_e39223942_
                                                         (gx#syntax-e
                                                          _tl39213939_)))
                                                    (let ((_hd39233945_
                                                           (##car _e39223942_))
                                                          (_tl39243947_
                                                           (##cdr _e39223942_)))
                                                      (let ((_path3950_
                                                             _hd39233945_))
                                                        (if (gx#stx-null?
                                                             _tl39243947_)
                                                            (if (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path3950_)
                        (let ((_rpath3952_
                               (gx#core-resolve-path
                                _path3950_
                                (gx#stx-source _hd3913_))))
                          (let ((_block3954_
                                 (gx#core-expand-include%
                                  _hd3913_
                                  _rpath3952_)))
                            (let ((_rbody3957_
                                   (call-with-parameters
                                    (lambda ()
                                      (gx#core-expand-block
                                       _block3954_
                                       _expand-special3801_
                                       '#f
                                       _expand-e3803_))
                                    gx#current-expander-path
                                    (cons _rpath3952_
                                          (gx#current-expander-path)))))
                              (let ()
                                (_K3809_ _rest3914_
                                         (foldr cons _r3915_ _rbody3957_))))))
                        (_E39183930_))
                    (_E39183930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E39183930_))))
                                          (_E39183930_)))))
                               (let () (_E39173960_)))))))
                      (_expand-expression3808_
                       (lambda (_hd3909_ _rest3910_ _r3911_)
                         (_K3809_ _rest3910_
                                  (cons (_expand-e3803_ _hd3909_) _r3911_))))
                      (_K3809_ (lambda (_rest3839_ _r3840_)
                                 (let ((_e38413848_ _rest3839_))
                                   (let ((_E38433852_
                                          (lambda ()
                                            (if _begin-form3802_
                                                (gx#core-quote-syntax
                                                 (gx#core-cons
                                                  _begin-form3802_
                                                  (reverse _r3840_))
                                                 (gx#stx-source _stx3800_))
                                                _r3840_))))
                                     (let ((_E38423905_
                                            (lambda ()
                                              (if (gx#stx-pair? _e38413848_)
                                                  (let ((_e38443856_
                                                         (gx#syntax-e
                                                          _e38413848_)))
                                                    (let ((_hd38453859_
                                                           (##car _e38443856_))
                                                          (_tl38463861_
                                                           (##cdr _e38443856_)))
                                                      (let ((_hd3864_
                                                             _hd38453859_))
                                                        (let ((_rest3866_
                                                               _tl38463861_))
                                                          (if '#t
                                                              (let ((_hd3868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-expand-head _hd3864_)))
                        (let ((_e38693876_ _hd3868_))
                          (let ((_E38713880_
                                 (lambda ()
                                   (_expand-expression3808_
                                    _hd3868_
                                    _rest3866_
                                    _r3840_))))
                            (let ((_E38703901_
                                   (lambda ()
                                     (if (gx#stx-pair? _e38693876_)
                                         (let ((_e38723884_
                                                (gx#syntax-e _e38693876_)))
                                           (let ((_hd38733887_
                                                  (##car _e38723884_))
                                                 (_tl38743889_
                                                  (##cdr _e38723884_)))
                                             (let ((_form3892_ _hd38733887_))
                                               (let ((_body3894_ _tl38743889_))
                                                 (if '#t
                                                     (let ((_bind3896_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _form3892_)
                        (gx#resolve-identifier _form3892_)
                        '#f)))
               (if (gx#special-form-binding? _bind3896_)
                   (let ((_$e3898_ (gx#binding-id _bind3896_)))
                     (if (eq? _$e3898_ '%#begin)
                         (_expand-splice3805_
                          _hd3868_
                          _body3894_
                          _rest3866_
                          _r3840_)
                         (if (eq? _$e3898_ '%#cond-expand)
                             (_expand-cond-expand3806_
                              _hd3868_
                              _rest3866_
                              _r3840_)
                             (if (eq? _$e3898_ '%#include)
                                 (_expand-include3807_
                                  _hd3868_
                                  _rest3866_
                                  _r3840_)
                                 (_expand-special3801_
                                  _hd3868_
                                  _K3809_
                                  _rest3866_
                                  _r3840_)))))
                   (_expand-expression3808_ _hd3868_ _rest3866_ _r3840_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E38713880_))))))
                                         (_E38713880_)))))
                              (let () (_E38703901_))))))
                      (_E38433852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E38433852_)))))
                                       (let () (_E38423905_))))))))
               (let ((_e38103817_ _stx3800_))
                 (let ((_E38123821_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e38103817_))))
                   (let ((_E38113835_
                          (lambda ()
                            (if (gx#stx-pair? _e38103817_)
                                (let ((_e38133825_ (gx#syntax-e _e38103817_)))
                                  (let ((_hd38143828_ (##car _e38133825_))
                                        (_tl38153830_ (##cdr _e38133825_)))
                                    (let ((_body3833_ _tl38153830_))
                                      (if (gx#stx-list? _body3833_)
                                          (_K3809_ _body3833_ '())
                                          (_E38123821_)))))
                                (_E38123821_)))))
                     (let () (_E38113835_)))))))))
      (lambda _g12238_
        (let ((_g12237_ (length _g12238_)))
          (cond ((fx= _g12237_ 2)
                 (apply (lambda (_stx3976_ _expand-special3977_)
                          (let ((_begin-form3979_ '%#begin))
                            (let ((_expand-e3981_ gx#core-expand-expression))
                              (_opt-lambda37983973_
                               _stx3976_
                               _expand-special3977_
                               _begin-form3979_
                               _expand-e3981_))))
                        _g12238_))
                ((fx= _g12237_ 3)
                 (apply (lambda (_stx3983_
                                 _expand-special3984_
                                 _begin-form3985_)
                          (let ((_expand-e3987_ gx#core-expand-expression))
                            (_opt-lambda37983973_
                             _stx3983_
                             _expand-special3984_
                             _begin-form3985_
                             _expand-e3987_)))
                        _g12238_))
                ((fx= _g12237_ 4)
                 (apply (lambda (_stx3989_
                                 _expand-special3990_
                                 _begin-form3991_
                                 _expand-e3992_)
                          (_opt-lambda37983973_
                           _stx3989_
                           _expand-special3990_
                           _begin-form3991_
                           _expand-e3992_))
                        _g12238_))
                (else (error "No clause matching arguments" _g12238_)))))))
  (define gx#core-expand-block*
    (lambda (_stx3748_ _expand-special3749_)
      (let ((_g37503761_
             (gx#core-expand-block _stx3748_ _expand-special3749_ '#f)))
        (let ((_E37543765_
               (lambda () (error '"No clause matching" _g37503761_))))
          (let ((_try-match37533776_
                 (lambda ()
                   (let ((_K37553771_
                          (lambda (_body3769_)
                            (gx#core-quote-syntax
                             (gx#core-cons '%#begin (reverse _body3769_))
                             (gx#stx-source _stx3748_)))))
                     (let ((_body3774_ _g37503761_))
                       (_K37553771_ _body3774_))))))
            (let ((_try-match37523792_
                   (lambda ()
                     (let ((_K37563782_ (lambda (_expr3780_) _expr3780_)))
                       (if (##pair? _g37503761_)
                           (let ((_hd37573785_ (##car _g37503761_))
                                 (_tl37583787_ (##cdr _g37503761_)))
                             (let ((_expr3790_ _hd37573785_))
                               (if (##null? _tl37583787_)
                                   (_K37563782_ _expr3790_)
                                   (_try-match37533776_))))
                           (_try-match37533776_))))))
              (let ((_K37593796_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx3748_))))
                (if (##null? _g37503761_)
                    (_K37593796_)
                    (_try-match37523792_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx3606_)
      (letrec ((_satisfied?3608_
                (lambda (_condition3706_)
                  (let ((_e37073715_ _condition3706_))
                    (let ((_E37103719_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e37073715_))))
                      (let ((_E37093738_
                             (lambda ()
                               (if (gx#stx-pair? _e37073715_)
                                   (let ((_e37113723_
                                          (gx#syntax-e _e37073715_)))
                                     (let ((_hd37123726_ (##car _e37113723_))
                                           (_tl37133728_ (##cdr _e37113723_)))
                                       (let ((_combinator3731_ _hd37123726_))
                                         (let ((_body3733_ _tl37133728_))
                                           (if (gx#stx-list? _body3733_)
                                               (let ((_$e3735_
                                                      (gx#stx-e
                                                       _combinator3731_)))
                                                 (if (eq? _$e3735_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?3608_
                                                           _body3733_))
                                                     (if (eq? _$e3735_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?3608_
                                                          _body3733_)
                                                         (if (eq? _$e3735_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?3608_
                                                              _body3733_)
                                                             (if (eq? _$e3735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body3733_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx3606_
                          _combinator3731_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E37103719_))))))
                                   (_E37103719_)))))
                        (let ((_E37083744_
                               (lambda ()
                                 (let ((_id3742_ _e37073715_))
                                   (if (gx#identifier? _id3742_)
                                       (gx#core-bound-identifier?
                                        _id3742_
                                        gx#feature-binding?)
                                       (_E37093738_))))))
                          (let () (_E37083744_))))))))
               (_loop3609_
                (lambda (_rest3639_)
                  (let ((_e36403648_ _rest3639_))
                    (let ((_E36463652_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e36403648_))))
                      (let ((_E36423656_
                             (lambda ()
                               (if (gx#stx-null? _e36403648_)
                                   (if '#t '() (_E36463652_))
                                   (_E36463652_)))))
                        (let ((_E36413702_
                               (lambda ()
                                 (if (gx#stx-pair? _e36403648_)
                                     (let ((_e36433660_
                                            (gx#syntax-e _e36403648_)))
                                       (let ((_hd36443663_ (##car _e36433660_))
                                             (_tl36453665_
                                              (##cdr _e36433660_)))
                                         (let ((_hd3668_ _hd36443663_))
                                           (let ((_rest3670_ _tl36453665_))
                                             (if '#t
                                                 (let ((_e36713678_ _hd3668_))
                                                   (let ((_E36733682_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e36713678_))))
                                                     (let ((_E36723698_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e36713678_)
                          (let ((_e36743686_ (gx#syntax-e _e36713678_)))
                            (let ((_hd36753689_ (##car _e36743686_))
                                  (_tl36763691_ (##cdr _e36743686_)))
                              (let ((_condition3694_ _hd36753689_))
                                (let ((_body3696_ _tl36763691_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition3694_ 'else)
                                          (if (gx#stx-null? _rest3670_)
                                              _body3696_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx3606_
                                               _hd3668_))
                                          (if (_satisfied?3608_
                                               _condition3694_)
                                              _body3696_
                                              (_loop3609_ _rest3670_)))
                                      (_E36733682_))))))
                          (_E36733682_)))))
               (let () (_E36723698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E36423656_))))))
                                     (_E36423656_)))))
                          (let () (_E36413702_)))))))))
        (let ((_e36103617_ _stx3606_))
          (let ((_E36123621_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e36103617_))))
            (let ((_E36113635_
                   (lambda ()
                     (if (gx#stx-pair? _e36103617_)
                         (let ((_e36133625_ (gx#syntax-e _e36103617_)))
                           (let ((_hd36143628_ (##car _e36133625_))
                                 (_tl36153630_ (##cdr _e36133625_)))
                             (let ((_clauses3633_ _tl36153630_))
                               (if (gx#stx-list? _clauses3633_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop3609_ _clauses3633_))
                                   (_E36123621_)))))
                         (_E36123621_)))))
              (let () (_E36113635_))))))))
  (define gx#core-expand-include%
    (let ((_opt-lambda35473596_
           (lambda (_stx3549_ _rpath3550_)
             (let ((_e35513561_ _stx3549_))
               (let ((_E35533565_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e35513561_))))
                 (let ((_E35523592_
                        (lambda ()
                          (if (gx#stx-pair? _e35513561_)
                              (let ((_e35543569_ (gx#syntax-e _e35513561_)))
                                (let ((_hd35553572_ (##car _e35543569_))
                                      (_tl35563574_ (##cdr _e35543569_)))
                                  (if (gx#stx-pair? _tl35563574_)
                                      (let ((_e35573577_
                                             (gx#syntax-e _tl35563574_)))
                                        (let ((_hd35583580_
                                               (##car _e35573577_))
                                              (_tl35593582_
                                               (##cdr _e35573577_)))
                                          (let ((_path3585_ _hd35583580_))
                                            (if (gx#stx-null? _tl35593582_)
                                                (if (gx#stx-string? _path3585_)
                                                    (let ((_rpath3590_
                                                           (let ((_$e3587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rpath3550_))
                     (if _$e3587_
                         _$e3587_
                         (gx#core-resolve-path
                          _path3585_
                          (gx#stx-source _stx3549_))))))
              (if (member _rpath3590_ (gx#current-expander-path))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; cyclic expansion"
                   _stx3549_)
                  (gx#syntax-local-rewrap
                   (gx#stx-wrap-source
                    (gx#core-cons '%#begin (read-syntax-from-file _rpath3590_))
                    (gx#stx-source _stx3549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E35533565_))
                                                (_E35533565_)))))
                                      (_E35533565_))))
                              (_E35533565_)))))
                   (let () (_E35523592_))))))))
      (lambda _g12240_
        (let ((_g12239_ (length _g12240_)))
          (cond ((fx= _g12239_ 1)
                 (apply (lambda (_stx3599_)
                          (let ((_rpath3601_ '#f))
                            (_opt-lambda35473596_ _stx3599_ _rpath3601_)))
                        _g12240_))
                ((fx= _g12239_ 2)
                 (apply (lambda (_stx3603_ _rpath3604_)
                          (_opt-lambda35473596_ _stx3603_ _rpath3604_))
                        _g12240_))
                (else (error "No clause matching arguments" _g12240_)))))))
  (define gx#core-apply-expander
    (let ((_opt-lambda35163536_
           (lambda (_K3518_ _stx3519_ _method3520_)
             (if (procedure? _K3518_)
                 (let ((_$e3522_ (gx#stx-source _stx3519_)))
                   (if _$e3522_
                       ((lambda (_g35243526_)
                          (gx#stx-wrap-source (_K3518_ _stx3519_) _g35243526_))
                        _$e3522_)
                       (_K3518_ _stx3519_)))
                 (let ((_$e3529_ (bound-method-ref _K3518_ _method3520_)))
                   (if _$e3529_
                       ((lambda (_g35313533_)
                          (gx#core-apply-expander
                           _g35313533_
                           _stx3519_
                           _method3520_))
                        _$e3529_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _stx3519_
                        _method3520_)))))))
      (lambda _g12242_
        (let ((_g12241_ (length _g12242_)))
          (cond ((fx= _g12241_ 2)
                 (apply (lambda (_K3539_ _stx3540_)
                          (let ((_method3542_ 'apply-macro-expander))
                            (_opt-lambda35163536_
                             _K3539_
                             _stx3540_
                             _method3542_)))
                        _g12242_))
                ((fx= _g12241_ 3)
                 (apply (lambda (_K3544_ _stx3545_ _method3546_)
                          (_opt-lambda35163536_
                           _K3544_
                           _stx3545_
                           _method3546_))
                        _g12242_))
                (else (error "No clause matching arguments" _g12242_)))))))
  (define gx#expander::apply-macro-expander
    (let ((_@super3512_
           (let ((_$super3506_
                  (make-promise
                   (lambda ()
                     (let ((_$e3503_
                            (struct-find-next-method
                             gx#expander::t
                             'apply-macro-expander)))
                       (if _$e3503_
                           _$e3503_
                           (error '"Cannot find super method"
                                  gx#expander::t
                                  'apply-macro-expander)))))))
             (lambda _$args3509_ (apply (force _$super3506_) _$args3509_)))))
      (lambda (_self3514_ _stx3515_)
        (gx#raise-syntax-error '#f '"Bad syntax" _stx3515_))))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (let ((_@super3475_
           (let ((_$super3469_
                  (make-promise
                   (lambda ()
                     (let ((_$e3466_
                            (struct-find-next-method
                             gx#macro-expander::t
                             'apply-macro-expander)))
                       (if _$e3466_
                           _$e3466_
                           (error '"Cannot find super method"
                                  gx#macro-expander::t
                                  'apply-macro-expander)))))))
             (lambda _$args3472_ (apply (force _$super3469_) _$args3472_)))))
      (lambda (_self3477_ _stx3478_)
        (let ((_self34793485_ _self3477_))
          (let ((_E34813489_
                 (lambda () (error '"No clause matching" _self34793485_))))
            (let ((_K34823494_
                   (lambda (_K3492_)
                     (gx#core-apply-expander _K3492_ _stx3478_))))
              (if (struct-instance? gx#macro-expander::t _self34793485_)
                  (let ((_e34833497_ (##vector-ref _self34793485_ '1)))
                    (let ((_K3500_ _e34833497_)) (_K34823494_ _K3500_)))
                  (_E34813489_))))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (let ((_@super3438_
           (let ((_$super3432_
                  (make-promise
                   (lambda ()
                     (let ((_$e3429_
                            (struct-find-next-method
                             gx#core-expander::t
                             'apply-macro-expander)))
                       (if _$e3429_
                           _$e3429_
                           (error '"Cannot find super method"
                                  gx#core-expander::t
                                  'apply-macro-expander)))))))
             (lambda _$args3435_ (apply (force _$super3432_) _$args3435_)))))
      (lambda (_self3440_ _stx3441_)
        (if (gx#sealed-syntax? _stx3441_)
            _stx3441_
            (let ((_self34423448_ _self3440_))
              (let ((_E34443452_
                     (lambda () (error '"No clause matching" _self34423448_))))
                (let ((_K34453457_
                       (lambda (_K3455_)
                         (gx#core-apply-expander _K3455_ _stx3441_))))
                  (if (struct-instance? gx#core-expander::t _self34423448_)
                      (let ((_e34463460_ (##vector-ref _self34423448_ '1)))
                        (let ((_K3463_ _e34463460_)) (_K34453457_ _K3463_)))
                      (_E34443452_)))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (define gx#top-special-form::apply-macro-expander
    (let ((_@super3409_
           (let ((_$super3403_
                  (make-promise
                   (lambda ()
                     (let ((_$e3400_
                            (struct-find-next-method
                             gx#top-special-form::t
                             'apply-macro-expander)))
                       (if _$e3400_
                           _$e3400_
                           (error '"Cannot find super method"
                                  gx#top-special-form::t
                                  'apply-macro-expander)))))))
             (lambda _$args3406_ (apply (force _$super3403_) _$args3406_)))))
      (let ((_opt-lambda34103416_
             (lambda (_self3412_ _stx3413_ _top?3414_)
               (if (_top?3414_ (gx#current-expander-context))
                   (_@super3409_ _self3412_ _stx3413_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; illegal context"
                    _stx3413_)))))
        (lambda _g12244_
          (let ((_g12243_ (length _g12244_)))
            (cond ((fx= _g12243_ 2)
                   (apply (lambda (_self3419_ _stx3420_)
                            (let ((_top?3422_ gx#top-context?))
                              (_opt-lambda34103416_
                               _self3419_
                               _stx3420_
                               _top?3422_)))
                          _g12244_))
                  ((fx= _g12243_ 3)
                   (apply (lambda (_self3424_ _stx3425_ _top?3426_)
                            (_opt-lambda34103416_
                             _self3424_
                             _stx3425_
                             _top?3426_))
                          _g12244_))
                  (else (error "No clause matching arguments" _g12244_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (let ((_@super3394_
           (let ((_$super3388_
                  (make-promise
                   (lambda ()
                     (let ((_$e3385_
                            (struct-find-next-method
                             gx#module-special-form::t
                             'apply-macro-expander)))
                       (if _$e3385_
                           _$e3385_
                           (error '"Cannot find super method"
                                  gx#module-special-form::t
                                  'apply-macro-expander)))))))
             (lambda _$args3391_ (apply (force _$super3388_) _$args3391_)))))
      (lambda (_self3396_ _stx3397_)
        (_@super3394_ _self3396_ _stx3397_ gx#module-context?))))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (let ((_@super3329_
           (let ((_$super3323_
                  (make-promise
                   (lambda ()
                     (let ((_$e3320_
                            (struct-find-next-method
                             gx#rename-macro-expander::t
                             'apply-macro-expander)))
                       (if _$e3320_
                           _$e3320_
                           (error '"Cannot find super method"
                                  gx#rename-macro-expander::t
                                  'apply-macro-expander)))))))
             (lambda _$args3326_ (apply (force _$super3323_) _$args3326_)))))
      (lambda (_self3331_ _stx3332_)
        (let ((_self33333339_ _self3331_))
          (let ((_E33353343_
                 (lambda () (error '"No clause matching" _self33333339_))))
            (let ((_K33363376_
                   (lambda (_id3346_)
                     (let ((_e33473354_ _stx3332_))
                       (let ((_E33493358_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e33473354_))))
                         (let ((_E33483372_
                                (lambda ()
                                  (if (gx#stx-pair? _e33473354_)
                                      (let ((_e33503362_
                                             (gx#syntax-e _e33473354_)))
                                        (let ((_hd33513365_
                                               (##car _e33503362_))
                                              (_tl33523367_
                                               (##cdr _e33503362_)))
                                          (let ((_body3370_ _tl33523367_))
                                            (if '#t
                                                (gx#core-cons
                                                 _id3346_
                                                 _body3370_)
                                                (_E33493358_)))))
                                      (_E33493358_)))))
                           (let () (_E33483372_))))))))
              (if (struct-instance? gx#rename-macro-expander::t _self33333339_)
                  (let ((_e33373379_ (##vector-ref _self33333339_ '1)))
                    (let ((_id3382_ _e33373379_)) (_K33363376_ _id3382_)))
                  (_E33353343_))))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (define gx#core-apply-user-expander
    (let ((_opt-lambda32653307_
           (lambda (_self3267_ _stx3268_ _method3269_)
             (let ((_self32703278_ _self3267_))
               (let ((_E32723282_
                      (lambda ()
                        (error '"No clause matching" _self32703278_))))
                 (let ((_K32733289_
                        (lambda (_phi3285_ _ctx3286_ _K3287_)
                          (gx#core-apply-user-macro
                           _K3287_
                           _stx3268_
                           _ctx3286_
                           _phi3285_
                           _method3269_))))
                   (if (struct-instance? gx#user-expander::t _self32703278_)
                       (let ((_e32743292_ (##vector-ref _self32703278_ '1)))
                         (let ((_K3295_ _e32743292_))
                           (let ((_e32753297_
                                  (##vector-ref _self32703278_ '2)))
                             (let ((_ctx3300_ _e32753297_))
                               (let ((_e32763302_
                                      (##vector-ref _self32703278_ '3)))
                                 (let ((_phi3305_ _e32763302_))
                                   (_K32733289_
                                    _phi3305_
                                    _ctx3300_
                                    _K3295_)))))))
                       (_E32723282_))))))))
      (lambda _g12246_
        (let ((_g12245_ (length _g12246_)))
          (cond ((fx= _g12245_ 2)
                 (apply (lambda (_self3310_ _stx3311_)
                          (let ((_method3313_ 'apply-macro-expander))
                            (_opt-lambda32653307_
                             _self3310_
                             _stx3311_
                             _method3313_)))
                        _g12246_))
                ((fx= _g12245_ 3)
                 (apply (lambda (_self3315_ _stx3316_ _method3317_)
                          (_opt-lambda32653307_
                           _self3315_
                           _stx3316_
                           _method3317_))
                        _g12246_))
                (else (error "No clause matching arguments" _g12246_)))))))
  (define gx#core-apply-user-macro
    (lambda (_K3257_ _stx3258_ _ctx3259_ _phi3260_ _method3261_)
      (let ((_mark3263_
             (gx#make-expander-mark '#f _ctx3259_ _phi3260_ _stx3258_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander
             _K3257_
             (gx#stx-apply-mark _stx3258_ _mark3263_)
             _method3261_)
            _mark3263_))
         gx#current-expander-marks
         (cons _mark3263_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander
    (let ((_@super3255_
           (let ((_$super3249_
                  (make-promise
                   (lambda ()
                     (let ((_$e3246_
                            (struct-find-next-method
                             gx#user-expander::t
                             'apply-macro-expander)))
                       (if _$e3246_
                           _$e3246_
                           (error '"Cannot find super method"
                                  gx#user-expander::t
                                  'apply-macro-expander)))))))
             (lambda _$args3252_ (apply (force _$super3249_) _$args3252_)))))
      gx#core-apply-user-expander))
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (define gx#resolve-identifier
    (let ((_opt-lambda32173227_
           (lambda (_stx3219_ _phi3220_ _ctx3221_)
             ((letrec ((_lp3223_
                        (lambda (_bind3225_)
                          (if (gx#import-binding? _bind3225_)
                              (_lp3223_ (gx#import-binding-e _bind3225_))
                              (if (gx#alias-binding? _bind3225_)
                                  (_lp3223_
                                   (gx#core-resolve-identifier
                                    (gx#alias-binding-e _bind3225_)
                                    _phi3220_
                                    _ctx3221_))
                                  _bind3225_)))))
                _lp3223_)
              (gx#core-resolve-identifier _stx3219_ _phi3220_ _ctx3221_)))))
      (lambda _g12248_
        (let ((_g12247_ (length _g12248_)))
          (cond ((fx= _g12247_ 1)
                 (apply (lambda (_stx3230_)
                          (let ((_phi3232_ (gx#current-expander-phi)))
                            (let ((_ctx3234_ (gx#current-expander-context)))
                              (_opt-lambda32173227_
                               _stx3230_
                               _phi3232_
                               _ctx3234_))))
                        _g12248_))
                ((fx= _g12247_ 2)
                 (apply (lambda (_stx3236_ _phi3237_)
                          (let ((_ctx3239_ (gx#current-expander-context)))
                            (_opt-lambda32173227_
                             _stx3236_
                             _phi3237_
                             _ctx3239_)))
                        _g12248_))
                ((fx= _g12247_ 3)
                 (apply (lambda (_stx3241_ _phi3242_ _ctx3243_)
                          (_opt-lambda32173227_ _stx3241_ _phi3242_ _ctx3243_))
                        _g12248_))
                (else (error "No clause matching arguments" _g12248_)))))))
  (define gx#bind-identifier!
    (let ((_opt-lambda31753185_
           (lambda (_stx3177_ _val3178_ _rebind?3179_ _phi3180_ _ctx3181_)
             (let ((_rebind?3183_
                    (if (not _rebind?3179_)
                        gx#core-context-rebind?
                        (if (procedure? _rebind?3179_) _rebind?3179_ true))))
               (gx#core-bind!
                (gx#core-identifier-key _stx3177_)
                _val3178_
                _rebind?3183_
                _phi3180_
                _ctx3181_)))))
      (lambda _g12250_
        (let ((_g12249_ (length _g12250_)))
          (cond ((fx= _g12249_ 2)
                 (apply (lambda (_stx3188_ _val3189_)
                          (let ((_rebind?3191_ '#f))
                            (let ((_phi3193_ (gx#current-expander-phi)))
                              (let ((_ctx3195_ (gx#current-expander-context)))
                                (_opt-lambda31753185_
                                 _stx3188_
                                 _val3189_
                                 _rebind?3191_
                                 _phi3193_
                                 _ctx3195_)))))
                        _g12250_))
                ((fx= _g12249_ 3)
                 (apply (lambda (_stx3197_ _val3198_ _rebind?3199_)
                          (let ((_phi3201_ (gx#current-expander-phi)))
                            (let ((_ctx3203_ (gx#current-expander-context)))
                              (_opt-lambda31753185_
                               _stx3197_
                               _val3198_
                               _rebind?3199_
                               _phi3201_
                               _ctx3203_))))
                        _g12250_))
                ((fx= _g12249_ 4)
                 (apply (lambda (_stx3205_ _val3206_ _rebind?3207_ _phi3208_)
                          (let ((_ctx3210_ (gx#current-expander-context)))
                            (_opt-lambda31753185_
                             _stx3205_
                             _val3206_
                             _rebind?3207_
                             _phi3208_
                             _ctx3210_)))
                        _g12250_))
                ((fx= _g12249_ 5)
                 (apply (lambda (_stx3212_
                                 _val3213_
                                 _rebind?3214_
                                 _phi3215_
                                 _ctx3216_)
                          (_opt-lambda31753185_
                           _stx3212_
                           _val3213_
                           _rebind?3214_
                           _phi3215_
                           _ctx3216_))
                        _g12250_))
                (else (error "No clause matching arguments" _g12250_)))))))
  (define gx#core-resolve-identifier
    (let ((_opt-lambda31473158_
           (lambda (_stx3149_ _phi3150_ _ctx3151_)
             ((letrec ((_lp3153_
                        (lambda (_e3155_ _marks3156_)
                          (if (symbol? _e3155_)
                              (gx#core-resolve-binding
                               _e3155_
                               _phi3150_
                               _ctx3151_
                               (reverse _marks3156_))
                              (if (gx#identifier-quote? _e3155_)
                                  (gx#core-resolve-binding
                                   (AST-e _e3155_)
                                   _phi3150_
                                   (gx#syntax-quote-context _e3155_)
                                   (gx#syntax-quote-marks _e3155_))
                                  (if (gx#identifier-wrap? _e3155_)
                                      (gx#core-resolve-binding
                                       (AST-e _e3155_)
                                       _phi3150_
                                       _ctx3151_
                                       (foldl gx#apply-mark
                                              (gx#identifier-wrap-marks
                                               _e3155_)
                                              _marks3156_))
                                      (if (gx#syntax-wrap? _e3155_)
                                          (_lp3153_
                                           (AST-e _e3155_)
                                           (gx#apply-mark
                                            (gx#syntax-wrap-mark _e3155_)
                                            _marks3156_))
                                          (if (AST? _e3155_)
                                              (_lp3153_
                                               (AST-e _e3155_)
                                               _marks3156_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad identifier"
                                               _stx3149_)))))))))
                _lp3153_)
              _stx3149_
              (gx#current-expander-marks)))))
      (lambda _g12252_
        (let ((_g12251_ (length _g12252_)))
          (cond ((fx= _g12251_ 1)
                 (apply (lambda (_stx3161_)
                          (let ((_phi3163_ (gx#current-expander-phi)))
                            (let ((_ctx3165_ (gx#current-expander-context)))
                              (_opt-lambda31473158_
                               _stx3161_
                               _phi3163_
                               _ctx3165_))))
                        _g12252_))
                ((fx= _g12251_ 2)
                 (apply (lambda (_stx3167_ _phi3168_)
                          (let ((_ctx3170_ (gx#current-expander-context)))
                            (_opt-lambda31473158_
                             _stx3167_
                             _phi3168_
                             _ctx3170_)))
                        _g12252_))
                ((fx= _g12251_ 3)
                 (apply (lambda (_stx3172_ _phi3173_ _ctx3174_)
                          (_opt-lambda31473158_ _stx3172_ _phi3173_ _ctx3174_))
                        _g12252_))
                (else (error "No clause matching arguments" _g12252_)))))))
  (define gx#core-resolve-binding
    (lambda (_id3063_ _phi3064_ _ctx3065_ _marks3066_)
      (let ((_resolve3068_
             (lambda (_ctx3136_ _src-phi3137_ _key3138_)
               ((letrec ((_lp3140_
                          (lambda (_ctx3142_ _dphi3143_)
                            (let ((_$e3145_
                                   (gx#core-context-resolve
                                    _ctx3142_
                                    _key3138_)))
                              (if _$e3145_
                                  (values _$e3145_)
                                  (if (fxzero? _dphi3143_)
                                      '#f
                                      (if (fxpositive? _dphi3143_)
                                          (_lp3140_
                                           (gx#core-context-shift
                                            _ctx3142_
                                            '-1)
                                           (fx1- _dphi3143_))
                                          (if (fxnegative? _dphi3143_)
                                              (_lp3140_
                                               (gx#core-context-shift
                                                _ctx3142_
                                                '1)
                                               (fx1+ _dphi3143_))
                                              '#!void))))))))
                  _lp3140_)
                (gx#core-context-shift _ctx3136_ _phi3064_)
                (fx- _phi3064_ _src-phi3137_)))))
        ((letrec ((_lp3070_
                   (lambda (_ctx3072_ _src-phi3073_ _rest3074_)
                     (let ((_rest30753083_ _rest3074_))
                       (let ((_E30783087_
                              (lambda ()
                                (error '"No clause matching" _rest30753083_))))
                         (let ((_else30773091_
                                (lambda ()
                                  (_resolve3068_
                                   _ctx3072_
                                   _src-phi3073_
                                   _id3063_))))
                           (let ((_K30793124_
                                  (lambda (_rest3094_ _hd3095_)
                                    (let ((_hd30963102_ _hd3095_))
                                      (let ((_E30983106_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd30963102_))))
                                        (let ((_K30993116_
                                               (lambda (_subst3109_)
                                                 (let ((_$e3113_
                                                        (let ((_key3111_
                                                               (if _subst3109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (hash-get _subst3109_ _id3063_)
                           '#f)))
                  (if _key3111_
                      (_resolve3068_ _ctx3072_ _src-phi3073_ _key3111_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e3113_
                                                       _$e3113_
                                                       (_lp3070_
                                                        (gx#expander-mark-context
                                                         _hd3095_)
                                                        (gx#expander-mark-phi
                                                         _hd3095_)
                                                        _rest3094_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd30963102_)
                                              (let ((_e31003119_
                                                     (##vector-ref
                                                      _hd30963102_
                                                      '1)))
                                                (let ((_subst3122_
                                                       _e31003119_))
                                                  (_K30993116_ _subst3122_)))
                                              (_E30983106_))))))))
                             (if (##pair? _rest30753083_)
                                 (let ((_hd30803127_ (##car _rest30753083_))
                                       (_tl30813129_ (##cdr _rest30753083_)))
                                   (let ((_hd3132_ _hd30803127_))
                                     (let ((_rest3134_ _tl30813129_))
                                       (_K30793124_ _rest3134_ _hd3132_))))
                                 (_else30773091_)))))))))
           _lp3070_)
         _ctx3065_
         _phi3064_
         _marks3066_))))
  (define gx#core-bind!
    (let ((_opt-lambda29373030_
           (lambda (_key2939_ _val2940_ _rebind?2941_ _phi2942_ _ctx2943_)
             (let ((_update-binding2945_
                    (lambda (_xval3016_)
                      (if (let ((_$e3018_
                                 (_rebind?2941_
                                  _ctx2943_
                                  _xval3016_
                                  _val2940_)))
                            (if _$e3018_
                                _$e3018_
                                (let ((_$e3024_
                                       (if (gx#import-binding? _xval3016_)
                                           (let ((_$e3021_
                                                  (gx#import-binding-weak?
                                                   _xval3016_)))
                                             (if _$e3021_
                                                 _$e3021_
                                                 (if (gx#binding? _val2940_)
                                                     (not (gx#import-binding?
                                                           _val2940_))
                                                     '#f)))
                                           '#f)))
                                  (if _$e3024_
                                      _$e3024_
                                      (if (gx#extern-binding? _xval3016_)
                                          (if (gx#runtime-binding? _val2940_)
                                              (eq? (gx#binding-id _val2940_)
                                                   (gx#binding-id _xval3016_))
                                              '#f)
                                          '#f)))))
                          _val2940_
                          (if (if (gx#import-binding? _val2940_)
                                  (let ((_$e3027_
                                         (gx#import-binding-weak? _val2940_)))
                                    (if _$e3027_
                                        _$e3027_
                                        (if (gx#binding? _xval3016_)
                                            (eq? (gx#binding-id _val2940_)
                                                 (gx#binding-id _xval3016_))
                                            '#f)))
                                  '#f)
                              _xval3016_
                              (gx#raise-syntax-error
                               '#f
                               '"Bad binding; rebind conflict"
                               _key2939_
                               _xval3016_
                               _val2940_))))))
               (let ((_gensubst2946_
                      (lambda (_subst3011_ _id3012_)
                        (let ((_eid3014_
                               (gensym (if (uninterned-symbol? _id3012_)
                                           '%
                                           _id3012_))))
                          (begin
                            (hash-put! _subst3011_ _id3012_ _eid3014_)
                            _eid3014_)))))
                 (let ((_subst!2947_
                        (lambda (_key2949_)
                          (let ((_key29502958_ _key2949_))
                            (let ((_E29532962_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _key29502958_))))
                              (let ((_else29522966_ (lambda () _key2949_)))
                                (let ((_K29542999_
                                       (lambda (_mark2969_ _id2970_)
                                         (let ((_mark29712977_ _mark2969_))
                                           (let ((_E29732981_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _mark29712977_))))
                                             (let ((_K29742991_
                                                    (lambda (_subst2984_)
                                                      (if (not _subst2984_)
                                                          (let ((_subst2986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (make-hash-table-eq)))
                    (begin
                      (gx#expander-mark-subst-set! _mark2969_ _subst2986_)
                      (_gensubst2946_ _subst2986_ _id2970_)))
                  (let ((_$e2988_ (hash-get _subst2984_ _id2970_)))
                    (if _$e2988_
                        (values _$e2988_)
                        (_gensubst2946_ _subst2984_ _id2970_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (struct-instance?
                                                    gx#expander-mark::t
                                                    _mark29712977_)
                                                   (let ((_e29752994_
                                                          (##vector-ref
                                                           _mark29712977_
                                                           '1)))
                                                     (let ((_subst2997_
                                                            _e29752994_))
                                                       (_K29742991_
                                                        _subst2997_)))
                                                   (_E29732981_))))))))
                                  (if (##pair? _key29502958_)
                                      (let ((_hd29553002_
                                             (##car _key29502958_))
                                            (_tl29563004_
                                             (##cdr _key29502958_)))
                                        (let ((_id3007_ _hd29553002_))
                                          (let ((_mark3009_ _tl29563004_))
                                            (_K29542999_
                                             _mark3009_
                                             _id3007_))))
                                      (_else29522966_)))))))))
                   (gx#core-context-bind!
                    (gx#core-context-shift _ctx2943_ _phi2942_)
                    (_subst!2947_ _key2939_)
                    _val2940_
                    _update-binding2945_)))))))
      (lambda _g12254_
        (let ((_g12253_ (length _g12254_)))
          (cond ((fx= _g12253_ 2)
                 (apply (lambda (_key3033_ _val3034_)
                          (let ((_rebind?3036_ false))
                            (let ((_phi3038_ (gx#current-expander-phi)))
                              (let ((_ctx3040_ (gx#current-expander-context)))
                                (_opt-lambda29373030_
                                 _key3033_
                                 _val3034_
                                 _rebind?3036_
                                 _phi3038_
                                 _ctx3040_)))))
                        _g12254_))
                ((fx= _g12253_ 3)
                 (apply (lambda (_key3042_ _val3043_ _rebind?3044_)
                          (let ((_phi3046_ (gx#current-expander-phi)))
                            (let ((_ctx3048_ (gx#current-expander-context)))
                              (_opt-lambda29373030_
                               _key3042_
                               _val3043_
                               _rebind?3044_
                               _phi3046_
                               _ctx3048_))))
                        _g12254_))
                ((fx= _g12253_ 4)
                 (apply (lambda (_key3050_ _val3051_ _rebind?3052_ _phi3053_)
                          (let ((_ctx3055_ (gx#current-expander-context)))
                            (_opt-lambda29373030_
                             _key3050_
                             _val3051_
                             _rebind?3052_
                             _phi3053_
                             _ctx3055_)))
                        _g12254_))
                ((fx= _g12253_ 5)
                 (apply (lambda (_key3057_
                                 _val3058_
                                 _rebind?3059_
                                 _phi3060_
                                 _ctx3061_)
                          (_opt-lambda29373030_
                           _key3057_
                           _val3058_
                           _rebind?3059_
                           _phi3060_
                           _ctx3061_))
                        _g12254_))
                (else (error "No clause matching arguments" _g12254_)))))))
  (define gx#core-identifier-key
    (lambda (_stx2869_)
      (if (symbol? _stx2869_)
          (let ((_g28702878_ (gx#current-expander-marks)))
            (let ((_E28732882_
                   (lambda () (error '"No clause matching" _g28702878_))))
              (let ((_else28722886_ (lambda () _stx2869_)))
                (let ((_K28742891_
                       (lambda (_hd2889_) (cons _stx2869_ _hd2889_))))
                  (if (##pair? _g28702878_)
                      (let ((_hd28752894_ (##car _g28702878_))
                            (_tl28762896_ (##cdr _g28702878_)))
                        (let ((_hd2899_ _hd28752894_)) (_K28742891_ _hd2899_)))
                      (_else28722886_))))))
          (if (gx#identifier? _stx2869_)
              (let ((_id2901_ (gx#syntax-local-unwrap _stx2869_)))
                (let ((_eid2903_ (gx#stx-e _id2901_)))
                  (let ((_marks2905_ (gx#stx-identifier-marks _id2901_)))
                    (let ()
                      (let ((_marks29072915_ _marks2905_))
                        (let ((_E29102919_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks29072915_))))
                          (let ((_else29092923_ (lambda () _eid2903_)))
                            (let ((_K29112928_
                                   (lambda (_hd2926_)
                                     (cons _eid2903_ _hd2926_))))
                              (if (##pair? _marks29072915_)
                                  (let ((_hd29122931_ (##car _marks29072915_))
                                        (_tl29132933_ (##cdr _marks29072915_)))
                                    (let ((_hd2936_ _hd29122931_))
                                      (_K29112928_ _hd2936_)))
                                  (_else29092923_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx2869_)))))
  (define gx#core-context-shift
    (lambda (_ctx2814_ _phi2815_)
      (let ((_make-phi2817_
             (lambda (_super2867_)
               (gx#make-phi-context (gensym 'phi) _super2867_))))
        (let ((_make-phi/up2818_
               (lambda (_ctx2862_ _super2863_)
                 (let ((_ctx+12865_ (_make-phi2817_ _super2863_)))
                   (begin
                     (gx#phi-context-up-set! _ctx2862_ _ctx+12865_)
                     (gx#phi-context-down-set! _ctx+12865_ _ctx2862_)
                     _ctx+12865_)))))
          (let ((_make-phi/down2819_
                 (lambda (_ctx2857_ _super2858_)
                   (let ((_ctx-12860_ (_make-phi2817_ _super2858_)))
                     (begin
                       (gx#phi-context-up-set! _ctx-12860_ _ctx2857_)
                       (gx#phi-context-down-set! _ctx2857_ _ctx-12860_)
                       _ctx-12860_)))))
            (let ((_shift2820_
                   (lambda (_ctx2841_
                            _delta2842_
                            _make-delta-context2843_
                            _phi2844_
                            _K2845_)
                     (let ((_$e2847_ (gx#phi-context-super _ctx2841_)))
                       (if _$e2847_
                           ((lambda (_super2850_)
                              (let ((_super2852_
                                     (_K2845_ _super2850_ _delta2842_)))
                                (let ((_ctx+d2854_
                                       (_make-delta-context2843_
                                        _ctx2841_
                                        _super2852_)))
                                  (let ()
                                    (_K2845_ _ctx+d2854_
                                             (fx- _phi2844_ _delta2842_))))))
                            _$e2847_)
                           (error '"Bad context" _ctx2841_))))))
              ((letrec ((_K2822_ (lambda (_ctx2824_ _phi2825_)
                                   (if (fxzero? _phi2825_)
                                       _ctx2824_
                                       (if (gx#phi-context? _ctx2824_)
                                           (if (fxpositive? _phi2825_)
                                               (let ((_$e2827_
                                                      (gx#phi-context-up
                                                       _ctx2824_)))
                                                 (if _$e2827_
                                                     ((lambda (_g28292831_)
                                                        (_K2822_ _g28292831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1- _phi2825_)))
              _$e2827_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2820_
                                                      _ctx2824_
                                                      '1
                                                      _make-phi/up2818_
                                                      _phi2825_
                                                      _K2822_)))
                                               (let ((_$e2834_
                                                      (gx#phi-context-down
                                                       _ctx2824_)))
                                                 (if _$e2834_
                                                     ((lambda (_g28362838_)
                                                        (_K2822_ _g28362838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx1+ _phi2825_)))
              _$e2834_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift2820_
                                                      _ctx2824_
                                                      '-1
                                                      _make-phi/down2819_
                                                      _phi2825_
                                                      _K2822_))))
                                           _ctx2824_)))))
                 _K2822_)
               _ctx2814_
               _phi2815_)))))))
  (define gx#core-context-get
    (lambda (_ctx2811_ _key2812_)
      (hash-get (gx#expander-context-table _ctx2811_) _key2812_)))
  (define gx#core-context-put!
    (lambda (_ctx2807_ _key2808_ _val2809_)
      (hash-put! (gx#expander-context-table _ctx2807_) _key2808_ _val2809_)))
  (define gx#core-context-resolve
    (lambda (_ctx2794_ _key2795_)
      ((letrec ((_lp2797_
                 (lambda (_ctx2799_)
                   (let ((_$e2801_ (gx#core-context-get _ctx2799_ _key2795_)))
                     (if _$e2801_
                         (values _$e2801_)
                         (let ((_$e2804_
                                (if (gx#phi-context? _ctx2799_)
                                    (gx#phi-context-super _ctx2799_)
                                    '#f)))
                           (if _$e2804_ (_lp2797_ _$e2804_) '#f)))))))
         _lp2797_)
       _ctx2794_)))
  (define gx#core-context-bind!
    (lambda (_ctx2784_ _key2785_ _val2786_ _rebind2787_)
      (let ((_$e2789_ (gx#core-context-get _ctx2784_ _key2785_)))
        (if _$e2789_
            ((lambda (_xval2792_)
               (gx#core-context-put!
                _ctx2784_
                _key2785_
                (_rebind2787_ _xval2792_)))
             _$e2789_)
            (gx#core-context-put! _ctx2784_ _key2785_ _val2786_)))))
  (define gx#core-context-top
    (let ((_opt-lambda27602769_
           (lambda (_ctx2762_ _stop?2763_)
             ((letrec ((_lp2765_
                        (lambda (_ctx2767_)
                          (if (_stop?2763_ _ctx2767_)
                              _ctx2767_
                              (if (gx#phi-context? _ctx2767_)
                                  (_lp2765_ (gx#phi-context-super _ctx2767_))
                                  '#f)))))
                _lp2765_)
              _ctx2762_))))
      (lambda _g12256_
        (let ((_g12255_ (length _g12256_)))
          (cond ((fx= _g12255_ 0)
                 (apply (lambda ()
                          (let ((_ctx2773_ (gx#current-expander-context)))
                            (let ((_stop?2775_ gx#top-context?))
                              (_opt-lambda27602769_ _ctx2773_ _stop?2775_))))
                        _g12256_))
                ((fx= _g12255_ 1)
                 (apply (lambda (_ctx2777_)
                          (let ((_stop?2779_ gx#top-context?))
                            (_opt-lambda27602769_ _ctx2777_ _stop?2779_)))
                        _g12256_))
                ((fx= _g12255_ 2)
                 (apply (lambda (_ctx2781_ _stop?2782_)
                          (_opt-lambda27602769_ _ctx2781_ _stop?2782_))
                        _g12256_))
                (else (error "No clause matching arguments" _g12256_)))))))
  (define gx#core-context-root
    (let ((_opt-lambda27452753_
           (lambda (_ctx2747_)
             ((letrec ((_lp2749_
                        (lambda (_ctx2751_)
                          (if (gx#phi-context? _ctx2751_)
                              (_lp2749_ (gx#phi-context-super _ctx2751_))
                              _ctx2751_))))
                _lp2749_)
              _ctx2747_))))
      (lambda _g12258_
        (let ((_g12257_ (length _g12258_)))
          (cond ((fx= _g12257_ 0)
                 (apply (lambda ()
                          (let ((_ctx2757_ (gx#current-expander-context)))
                            (_opt-lambda27452753_ _ctx2757_)))
                        _g12258_))
                ((fx= _g12257_ 1)
                 (apply (lambda (_ctx2759_) (_opt-lambda27452753_ _ctx2759_))
                        _g12258_))
                (else (error "No clause matching arguments" _g12258_)))))))
  (define gx#core-context-rebind?
    (let ((_opt-lambda27292735_
           (lambda (_ctx2731_ . __27282732_)
             (if (gx#top-context? _ctx2731_)
                 (if (not (gx#module-context? _ctx2731_))
                     (not (gx#prelude-context? _ctx2731_))
                     '#f)
                 '#f))))
      (lambda _g12260_
        (let ((_g12259_ (length _g12260_)))
          (cond ((fx= _g12259_ 0)
                 (apply (lambda ()
                          (let ((_ctx2739_ (gx#current-expander-context)))
                            (_opt-lambda27292735_ _ctx2739_)))
                        _g12260_))
                ((fx= _g12259_ 1)
                 (apply (lambda (_ctx2741_) (_opt-lambda27292735_ _ctx2741_))
                        _g12260_))
                ((fx>= _g12259_ 1)
                 (apply (lambda (_ctx2743_ . __27282744_)
                          (apply _opt-lambda27292735_ _ctx2743_ __27282744_))
                        _g12260_))
                (else (error "No clause matching arguments" _g12260_)))))))
  (define gx#core-context-namespace
    (let ((_opt-lambda27122721_
           (lambda (_ctx2714_)
             (let ((_$e2716_ (gx#core-context-top _ctx2714_)))
               (if _$e2716_
                   ((lambda (_ctx2719_)
                      (if (gx#module-context? _ctx2719_)
                          (gx#module-context-ns _ctx2719_)
                          '#f))
                    _$e2716_)
                   '#f)))))
      (lambda _g12262_
        (let ((_g12261_ (length _g12262_)))
          (cond ((fx= _g12261_ 0)
                 (apply (lambda ()
                          (let ((_ctx2725_ (gx#current-expander-context)))
                            (_opt-lambda27122721_ _ctx2725_)))
                        _g12262_))
                ((fx= _g12261_ 1)
                 (apply (lambda (_ctx2727_) (_opt-lambda27122721_ _ctx2727_))
                        _g12262_))
                (else (error "No clause matching arguments" _g12262_)))))))
  (define gx#expander-binding?
    (let ((_opt-lambda26982703_
           (lambda (_bind2700_ _is?2701_)
             (if (gx#syntax-binding? _bind2700_)
                 (_is?2701_ (gx#syntax-binding-e _bind2700_))
                 '#f))))
      (lambda _g12264_
        (let ((_g12263_ (length _g12264_)))
          (cond ((fx= _g12263_ 1)
                 (apply (lambda (_bind2706_)
                          (let ((_is?2708_ gx#expander?))
                            (_opt-lambda26982703_ _bind2706_ _is?2708_)))
                        _g12264_))
                ((fx= _g12263_ 2)
                 (apply (lambda (_bind2710_ _is?2711_)
                          (_opt-lambda26982703_ _bind2710_ _is?2711_))
                        _g12264_))
                (else (error "No clause matching arguments" _g12264_)))))))
  (define gx#core-expander-binding?
    (lambda (_bind2697_) (gx#expander-binding? _bind2697_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind2695_)
      (gx#expander-binding? _bind2695_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind2693_) (gx#expander-binding? _bind2693_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind2684_)
      (let ((_feature?2686_
             (lambda (_e2688_)
               (let ((_$e2690_ (gx#feature-expander? _e2688_)))
                 (if _$e2690_ _$e2690_ (gx#module-context? _e2688_))))))
        (gx#expander-binding? _bind2684_ _feature?2686_))))
  (define gx#private-feature-binding?
    (lambda (_bind2682_)
      (gx#expander-binding? _bind2682_ gx#private-feature-expander?)))
  (define gx#core-bound-identifier?
    (let ((_opt-lambda26672672_
           (lambda (_id2669_ _bound?2670_)
             (if (gx#identifier? _id2669_)
                 (_bound?2670_ (gx#resolve-identifier _id2669_))
                 '#f))))
      (lambda _g12266_
        (let ((_g12265_ (length _g12266_)))
          (cond ((fx= _g12265_ 1)
                 (apply (lambda (_id2675_)
                          (let ((_bound?2677_ gx#core-expander-binding?))
                            (_opt-lambda26672672_ _id2675_ _bound?2677_)))
                        _g12266_))
                ((fx= _g12265_ 2)
                 (apply (lambda (_id2679_ _bound?2680_)
                          (_opt-lambda26672672_ _id2679_ _bound?2680_))
                        _g12266_))
                (else (error "No clause matching arguments" _g12266_)))))))
  (define gx#core-identifier=?
    (lambda (_x2659_ _y2660_)
      (let ((_y=?2662_
             (lambda (_xid2666_)
               ((if (list? _y2660_) memq eq?) _xid2666_ _y2660_))))
        (let ((_bind2664_ (gx#resolve-identifier _x2659_)))
          (if (gx#binding? _bind2664_)
              (_y=?2662_ (gx#binding-id _bind2664_))
              (_y=?2662_ (gx#stx-e _x2659_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e2657_)
      (if (interned-symbol? _e2657_)
          (string-index (symbol->string _e2657_) '#\#)
          '#f)))
  (define gx#core-quote-syntax
    (let ((_opt-lambda26132628_
           (lambda (_stx2615_ _src2616_ _ctx2617_ _marks2618_)
             (if (gx#sealed-syntax? _stx2615_)
                 (gx#stx-unwrap _stx2615_)
                 (if (gx#identifier? _stx2615_)
                     (let ((_id2620_ (gx#syntax-local-unwrap _stx2615_)))
                       (gx#make-syntax-quote
                        (gx#stx-e _id2620_)
                        (let ((_$e2622_ (gx#stx-source _id2620_)))
                          (if _$e2622_ _$e2622_ _src2616_))
                        _ctx2617_
                        (gx#identifier-wrap-marks _id2620_)))
                     (if (gx#stx-datum? _stx2615_)
                         (gx#stx-e _stx2615_)
                         (gx#make-syntax-quote
                          _stx2615_
                          (let ((_$e2625_ (gx#stx-source _stx2615_)))
                            (if _$e2625_ _$e2625_ _src2616_))
                          _ctx2617_
                          (reverse _marks2618_))))))))
      (lambda _g12268_
        (let ((_g12267_ (length _g12268_)))
          (cond ((fx= _g12267_ 1)
                 (apply (lambda (_stx2631_)
                          (let ((_src2633_ '#f))
                            (let ((_ctx2635_ (gx#current-expander-context)))
                              (let ((_marks2637_ (gx#current-expander-marks)))
                                (_opt-lambda26132628_
                                 _stx2631_
                                 _src2633_
                                 _ctx2635_
                                 _marks2637_)))))
                        _g12268_))
                ((fx= _g12267_ 2)
                 (apply (lambda (_stx2639_ _src2640_)
                          (let ((_ctx2642_ (gx#current-expander-context)))
                            (let ((_marks2644_ (gx#current-expander-marks)))
                              (_opt-lambda26132628_
                               _stx2639_
                               _src2640_
                               _ctx2642_
                               _marks2644_))))
                        _g12268_))
                ((fx= _g12267_ 3)
                 (apply (lambda (_stx2646_ _src2647_ _ctx2648_)
                          (let ((_marks2650_ (gx#current-expander-marks)))
                            (_opt-lambda26132628_
                             _stx2646_
                             _src2647_
                             _ctx2648_
                             _marks2650_)))
                        _g12268_))
                ((fx= _g12267_ 4)
                 (apply (lambda (_stx2652_ _src2653_ _ctx2654_ _marks2655_)
                          (_opt-lambda26132628_
                           _stx2652_
                           _src2653_
                           _ctx2654_
                           _marks2655_))
                        _g12268_))
                (else (error "No clause matching arguments" _g12268_)))))))
  (define gx#core-cons
    (lambda (_hd2611_ _tl2612_)
      (cons (gx#core-quote-syntax _hd2611_) _tl2612_)))
  (define gx#core-list
    (lambda (_hd2608_ . _rest2609_)
      (cons (gx#core-quote-syntax _hd2608_) _rest2609_)))
  (define gx#core-cons*
    (lambda (_hd2605_ . _rest2606_)
      (apply cons* (gx#core-quote-syntax _hd2605_) _rest2606_)))
  (define gx#core-resolve-path
    (let ((_opt-lambda25772595_
           (lambda (_stx-path2579_ _rel2580_)
             (let ((_path2592_ (gx#stx-e _stx-path2579_))
                   (_reldir2593_
                    ((letrec ((_lp2582_
                               (lambda (_relsrc2584_)
                                 (if (AST? _relsrc2584_)
                                     (_lp2582_
                                      (let ((_$e2586_
                                             (gx#stx-source _relsrc2584_)))
                                        (if _$e2586_
                                            _$e2586_
                                            (gx#stx-e _relsrc2584_))))
                                     (if (source-location-path? _relsrc2584_)
                                         (path-directory
                                          (source-location-path _relsrc2584_))
                                         (if (string? _relsrc2584_)
                                             (path-directory _relsrc2584_)
                                             (if (not (null? (gx#current-expander-path)))
                                                 (path-directory
                                                  (car (gx#current-expander-path)))
                                                 (current-directory))))))))
                       _lp2582_)
                     (let ((_$e2589_ (gx#stx-source _stx-path2579_)))
                       (if _$e2589_ _$e2589_ _rel2580_)))))
               (path-expand _path2592_ (path-normalize _reldir2593_))))))
      (lambda _g12270_
        (let ((_g12269_ (length _g12270_)))
          (cond ((fx= _g12269_ 1)
                 (apply (lambda (_stx-path2598_)
                          (let ((_rel2600_ '#f))
                            (_opt-lambda25772595_ _stx-path2598_ _rel2600_)))
                        _g12270_))
                ((fx= _g12269_ 2)
                 (apply (lambda (_stx-path2602_ _rel2603_)
                          (_opt-lambda25772595_ _stx-path2602_ _rel2603_))
                        _g12270_))
                (else (error "No clause matching arguments" _g12270_)))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx2576_) (gx#stx-rewrap _stx2576_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx2574_) (gx#stx-unwrap _stx2574_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx2542_)
      (let ((_g25432551_ (gx#current-expander-marks)))
        (let ((_E25462555_
               (lambda () (error '"No clause matching" _g25432551_))))
          (let ((_else25452559_ (lambda () _stx2542_)))
            (let ((_K25472564_
                   (lambda (_hd2562_) (gx#stx-apply-mark _stx2542_ _hd2562_))))
              (if (##pair? _g25432551_)
                  (let ((_hd25482567_ (##car _g25432551_))
                        (_tl25492569_ (##cdr _g25432551_)))
                    (let ((_hd2572_ _hd25482567_)) (_K25472564_ _hd2572_)))
                  (_else25452559_))))))))
  (define gx#syntax-local-e
    (let ((_opt-lambda25252532_
           (lambda (_stx2527_ _E2528_)
             (let ((_bind2530_ (gx#resolve-identifier _stx2527_)))
               (if (gx#syntax-binding? _bind2530_)
                   (gx#syntax-binding-e _bind2530_)
                   (_E2528_ _stx2527_))))))
      (lambda _g12272_
        (let ((_g12271_ (length _g12272_)))
          (cond ((fx= _g12271_ 1)
                 (apply (lambda (_stx2535_)
                          (let ((_E2537_ gx#raise-syntax-ref-error))
                            (_opt-lambda25252532_ _stx2535_ _E2537_)))
                        _g12272_))
                ((fx= _g12271_ 2)
                 (apply (lambda (_stx2539_ _E2540_)
                          (_opt-lambda25252532_ _stx2539_ _E2540_))
                        _g12272_))
                (else (error "No clause matching arguments" _g12272_)))))))
  (define gx#syntax-local-value
    (let ((_opt-lambda25092516_
           (lambda (_stx2511_ _E2512_)
             (let ((_e2514_ (gx#syntax-local-e _stx2511_ _E2512_)))
               (if (gx#expander? _e2514_) (gx#expander-e _e2514_) _e2514_)))))
      (lambda _g12274_
        (let ((_g12273_ (length _g12274_)))
          (cond ((fx= _g12273_ 1)
                 (apply (lambda (_stx2519_)
                          (let ((_E2521_ gx#raise-syntax-ref-error))
                            (_opt-lambda25092516_ _stx2519_ _E2521_)))
                        _g12274_))
                ((fx= _g12273_ 2)
                 (apply (lambda (_stx2523_ _E2524_)
                          (_opt-lambda25092516_ _stx2523_ _E2524_))
                        _g12274_))
                (else (error "No clause matching arguments" _g12274_)))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx2508_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx2508_))))
