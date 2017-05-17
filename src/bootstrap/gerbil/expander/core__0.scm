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
    (lambda _$args5654_
      (apply make-struct-instance gx#expander-context::t _$args5654_)))
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
    (lambda _$args5651_
      (apply make-struct-instance gx#root-context::t _$args5651_)))
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
    (lambda _$args5648_
      (apply make-struct-instance gx#phi-context::t _$args5648_)))
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
    (lambda _$args5645_
      (apply make-struct-instance gx#top-context::t _$args5645_)))
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
    (lambda _$args5642_
      (apply make-struct-instance gx#module-context::t _$args5642_)))
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
    (lambda _$args5639_
      (apply make-struct-instance gx#prelude-context::t _$args5639_)))
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
    (lambda _$args5636_
      (apply make-struct-instance gx#local-context::t _$args5636_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5618
      (lambda (_self5620_ _id5621_ _super5622_)
        (direct-struct-instance-init!
         _self5620_
         _id5621_
         (make-hash-table-eq)
         _super5622_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5627_ _id5628_)
          (let ((_super5630_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5618
             _self5627_
             _id5628_
             _super5630_))))
      (define gx#phi-context:::init!
        (lambda _g5658_
          (let ((_g5657_ (length _g5658_)))
            (cond ((fx= _g5657_ 2) (apply gx#phi-context:::init!__0 _g5658_))
                  ((fx= _g5657_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5618 _g5658_))
                  (else (error "No clause matching arguments" _g5658_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5604
      (lambda (_self5606_ _super5607_)
        (direct-struct-instance-init!
         _self5606_
         (gensym 'L)
         (make-hash-table-eq)
         _super5607_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5612_)
          (let ((_super5614_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5604
             _self5612_
             _super5614_))))
      (define gx#local-context:::init!
        (lambda _g5660_
          (let ((_g5659_ (length _g5660_)))
            (cond ((fx= _g5659_ 1) (apply gx#local-context:::init!__0 _g5660_))
                  ((fx= _g5659_ 2)
                   (apply gx#local-context:::init!__opt-lambda5604 _g5660_))
                  (else (error "No clause matching arguments" _g5660_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5602_
      (apply make-struct-instance gx#binding::t _$args5602_)))
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
    (lambda _$args5599_
      (apply make-struct-instance gx#runtime-binding::t _$args5599_)))
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
    (lambda _$args5596_
      (apply make-struct-instance gx#local-binding::t _$args5596_)))
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
    (lambda _$args5593_
      (apply make-struct-instance gx#top-binding::t _$args5593_)))
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
    (lambda _$args5590_
      (apply make-struct-instance gx#module-binding::t _$args5590_)))
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
    (lambda _$args5587_
      (apply make-struct-instance gx#extern-binding::t _$args5587_)))
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
    (lambda _$args5584_
      (apply make-struct-instance gx#syntax-binding::t _$args5584_)))
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
    (lambda _$args5581_
      (apply make-struct-instance gx#import-binding::t _$args5581_)))
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
    (lambda _$args5578_
      (apply make-struct-instance gx#alias-binding::t _$args5578_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5575_
      (apply make-struct-instance gx#expander::t _$args5575_)))
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
    (lambda _$args5572_
      (apply make-struct-instance gx#core-expander::t _$args5572_)))
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
    (lambda _$args5569_
      (apply make-struct-instance gx#expression-form::t _$args5569_)))
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
    (lambda _$args5566_
      (apply make-struct-instance gx#special-form::t _$args5566_)))
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
    (lambda _$args5563_
      (apply make-struct-instance gx#definition-form::t _$args5563_)))
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
    (lambda _$args5560_
      (apply make-struct-instance gx#top-special-form::t _$args5560_)))
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
    (lambda _$args5557_
      (apply make-struct-instance gx#module-special-form::t _$args5557_)))
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
    (lambda _$args5554_
      (apply make-struct-instance gx#feature-expander::t _$args5554_)))
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
    (lambda _$args5551_
      (apply make-struct-instance gx#private-feature-expander::t _$args5551_)))
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
    (lambda _$args5548_
      (apply make-struct-instance gx#reserved-expander::t _$args5548_)))
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
    (lambda _$args5545_
      (apply make-struct-instance gx#macro-expander::t _$args5545_)))
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
    (lambda _$args5542_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5542_)))
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
    (lambda _$args5539_
      (apply make-struct-instance gx#user-expander::t _$args5539_)))
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
    (lambda _$args5536_
      (apply make-struct-instance gx#expander-mark::t _$args5536_)))
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
    (lambda _$args5533_
      (apply make-struct-instance gx#syntax-error::t _$args5533_)))
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
    (lambda (_where5528_ _message5529_ _stx5530_ . _details5531_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5529_
              (cons _stx5530_ _details5531_)
              _where5528_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5513
      (lambda (_stx5515_ _expression?5516_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5497 _stx5515_ _expression?5516_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5521_)
          (let ((_expression?5523_ '#f))
            (gx#eval-syntax__opt-lambda5513 _stx5521_ _expression?5523_))))
      (define gx#eval-syntax
        (lambda _g5662_
          (let ((_g5661_ (length _g5662_)))
            (cond ((fx= _g5661_ 1) (apply gx#eval-syntax__0 _g5662_))
                  ((fx= _g5661_ 2)
                   (apply gx#eval-syntax__opt-lambda5513 _g5662_))
                  (else (error "No clause matching arguments" _g5662_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5512_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5512_))))
  (begin
    (define gx#core-expand__opt-lambda5497
      (lambda (_stx5499_ _expression?5500_)
        (if _expression?5500_
            (gx#core-expand-expression _stx5499_)
            (gx#core-expand-top _stx5499_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5505_)
          (let ((_expression?5507_ '#f))
            (gx#core-expand__opt-lambda5497 _stx5505_ _expression?5507_))))
      (define gx#core-expand
        (lambda _g5664_
          (let ((_g5663_ (length _g5664_)))
            (cond ((fx= _g5663_ 1) (apply gx#core-expand__0 _g5664_))
                  ((fx= _g5663_ 2)
                   (apply gx#core-expand__opt-lambda5497 _g5664_))
                  (else (error "No clause matching arguments" _g5664_))))))))
  (define gx#core-expand-top
    (lambda (_stx5466_)
      (let ((_stx5468_ (gx#core-expand*__0 _stx5466_)))
        (let ((_e54695476_ _stx5468_))
          (let ((_E54715480_
                 (lambda () (gx#core-expand-expression _stx5468_))))
            (let ((_E54705494_
                   (lambda ()
                     (if (gx#stx-pair? _e54695476_)
                         (let ((_e54725484_ (gx#syntax-e _e54695476_)))
                           (let ((_hd54735487_ (##car _e54725484_))
                                 (_tl54745489_ (##cdr _e54725484_)))
                             (let ((_form5492_ _hd54735487_))
                               (if (gx#core-bound-identifier?__0 _form5492_)
                                   _stx5468_
                                   (_E54715480_)))))
                         (_E54715480_)))))
              (let () (_E54705494_))))))))
  (define gx#core-expand-expression
    (lambda (_stx5388_)
      (let ((_sealed-expression?5390_
             (lambda (_hd5436_)
               (if (gx#sealed-syntax? _hd5436_)
                   (let ((_e54375444_ _hd5436_))
                     (let ((_E54395448_ (lambda () '#f)))
                       (let ((_E54385462_
                              (lambda ()
                                (if (gx#stx-pair? _e54375444_)
                                    (let ((_e54405452_
                                           (gx#syntax-e _e54375444_)))
                                      (let ((_hd54415455_ (##car _e54405452_))
                                            (_tl54425457_ (##cdr _e54405452_)))
                                        (let ((_form5460_ _hd54415455_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4037
                                               _form5460_
                                               gx#expression-form-binding?)
                                              (_E54395448_)))))
                                    (_E54395448_)))))
                         (let () (_E54385462_)))))
                   '#f))))
        (let ((_illegal-expression5391_
               (lambda (_hd5434_ . _g5665_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx5388_
                  _hd5434_))))
          (let ((_expand-e5392_
                 (lambda (_form5429_ _hd5430_)
                   (let ((_bind5432_
                          (if (##structure-instance-of?
                               _form5429_
                               'gx#binding::t)
                              _form5429_
                              (gx#resolve-identifier__0 _form5429_))))
                     (if (gx#core-expander-binding? _bind5432_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5432_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd5430_
                           (gx#stx-source _stx5388_)))
                         (if (##structure-direct-instance-of?
                              _bind5432_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind5432_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd5430_
                                (gx#stx-source _stx5388_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx5388_
                              _form5429_)))))))
            (let ((_hd5394_ (gx#core-expand-head _stx5388_)))
              (if (_sealed-expression?5390_ _hd5394_)
                  _hd5394_
                  (if (gx#stx-pair? _hd5394_)
                      (let ((_e53955402_ _hd5394_))
                        (let ((_E53975406_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e53955402_))))
                          (let ((_E53965425_
                                 (lambda ()
                                   (if (gx#stx-pair? _e53955402_)
                                       (let ((_e53985410_
                                              (gx#syntax-e _e53955402_)))
                                         (let ((_hd53995413_
                                                (##car _e53985410_))
                                               (_tl54005415_
                                                (##cdr _e53985410_)))
                                           (let ((_form5418_ _hd53995413_))
                                             (if '#t
                                                 (let ((_bind5420_
                                                        (if (gx#identifier?
                                                             _form5418_)
                                                            (gx#resolve-identifier__0
                                                             _form5418_)
                                                            '#f)))
                                                   (if (let ((_$e5422_
                                                              (not _bind5420_)))
                                                         (if _$e5422_
                                                             _$e5422_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind5420_))))
               (_expand-e5392_ '%#call (cons '%#call _hd5394_))
               (if (eq? (##structure-ref _bind5420_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd5394_ _illegal-expression5391_)
                   (if (gx#expression-form-binding? _bind5420_)
                       (_expand-e5392_ _bind5420_ _hd5394_)
                       (_illegal-expression5391_ _hd5394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E53975406_)))))
                                       (_E53975406_)))))
                            (let () (_E53965425_)))))
                      (if (gx#core-bound-identifier?__0 _hd5394_)
                          (_illegal-expression5391_ _hd5394_)
                          (if (gx#identifier? _hd5394_)
                              (_expand-e5392_
                               '%#ref
                               (cons '%#ref (cons _hd5394_ '())))
                              (if (gx#stx-datum? _hd5394_)
                                  (_expand-e5392_
                                   '%#quote
                                   (cons '%#quote (cons _hd5394_ '())))
                                  (_illegal-expression5391_
                                   _hd5394_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5383_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5386_ (gx#core-expand-expression _stx5383_)))
           (values _stx5386_ (gx#eval-syntax* _stx5386_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5362
      (lambda (_stx5364_ _stop?5365_)
        ((letrec ((_lp5367_
                   (lambda (_stx5369_)
                     (if (_stop?5365_ _stx5369_)
                         _stx5369_
                         (let ((_rstx5371_ (gx#core-expand1 _stx5369_)))
                           (if (eq? _stx5369_ _rstx5371_)
                               _stx5369_
                               (_lp5367_ _rstx5371_)))))))
           _lp5367_)
         _stx5364_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5376_)
          (let ((_stop?5378_ false))
            (gx#core-expand*__opt-lambda5362 _stx5376_ _stop?5378_))))
      (define gx#core-expand*
        (lambda _g5667_
          (let ((_g5666_ (length _g5667_)))
            (cond ((fx= _g5666_ 1) (apply gx#core-expand*__0 _g5667_))
                  ((fx= _g5666_ 2)
                   (apply gx#core-expand*__opt-lambda5362 _g5667_))
                  (else (error "No clause matching arguments" _g5667_))))))))
  (define gx#core-expand1
    (lambda (_stx5314_)
      (let ((_step5316_
             (lambda (_hd5353_)
               (let ((_bind5355_ (gx#resolve-identifier__0 _hd5353_)))
                 (if (##structure-instance-of?
                      _bind5355_
                      'gx#runtime-binding::t)
                     _stx5314_
                     (if (##structure-direct-instance-of?
                          _bind5355_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5355_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx5314_)
                         (if (not _bind5355_)
                             (begin
                               (if (let ((_$e5357_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e5357_
                                         _$e5357_
                                         (let ((_$e5360_
                                                (gx#core-context-rebind?__opt-lambda4099
                                                 (gx#core-context-top__0))))
                                           (if _$e5360_
                                               _$e5360_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd5353_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx5314_
                                    _hd5353_))
                               _stx5314_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx5314_))))))))
        (let ((_e53175325_ _stx5314_))
          (let ((_E53235329_ (lambda () _stx5314_)))
            (let ((_E53195335_
                   (lambda ()
                     (let ((_hd5333_ _e53175325_))
                       (if (gx#identifier? _hd5333_)
                           (_step5316_ _hd5333_)
                           (_E53235329_))))))
              (let ((_E53185349_
                     (lambda ()
                       (if (gx#stx-pair? _e53175325_)
                           (let ((_e53205339_ (gx#syntax-e _e53175325_)))
                             (let ((_hd53215342_ (##car _e53205339_))
                                   (_tl53225344_ (##cdr _e53205339_)))
                               (let ((_hd5347_ _hd53215342_))
                                 (if (gx#identifier? _hd5347_)
                                     (_step5316_ _hd5347_)
                                     (_E53195335_)))))
                           (_E53195335_)))))
                (let () (_E53185349_)))))))))
  (define gx#core-expand-head
    (lambda (_stx5280_)
      (let ((_stop?5282_
             (lambda (_stx5284_)
               (let ((_e52855292_ _stx5284_))
                 (let ((_E52875296_ (lambda () '#f)))
                   (let ((_E52865310_
                          (lambda ()
                            (if (gx#stx-pair? _e52855292_)
                                (let ((_e52885300_ (gx#syntax-e _e52855292_)))
                                  (let ((_hd52895303_ (##car _e52885300_))
                                        (_tl52905305_ (##cdr _e52885300_)))
                                    (let ((_hd5308_ _hd52895303_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5308_)
                                          (_E52875296_)))))
                                (_E52875296_)))))
                     (let () (_E52865310_))))))))
        (gx#core-expand*__opt-lambda5362 _stx5280_ _stop?5282_))))
  (begin
    (define gx#core-expand-block__opt-lambda5084
      (lambda (_stx5086_ _expand-special5087_ _begin-form5088_ _expand-e5089_)
        (letrec ((_expand-splice5091_
                  (lambda (_hd5254_ _body5255_ _rest5256_ _r5257_)
                    (if (gx#stx-list? _body5255_)
                        (_K5095_ (gx#stx-foldr cons _rest5256_ _body5255_)
                                 _r5257_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5086_
                         _hd5254_))))
                 (_expand-cond-expand5092_
                  (lambda (_hd5250_ _rest5251_ _r5252_)
                    (_K5095_ (cons (gx#core-expand-cond-expand% _hd5250_)
                                   _rest5251_)
                             _r5252_)))
                 (_expand-include5093_
                  (lambda (_hd5199_ _rest5200_ _r5201_)
                    (let ((_e52025212_ _hd5199_))
                      (let ((_E52045216_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e52025212_))))
                        (let ((_E52035246_
                               (lambda ()
                                 (if (gx#stx-pair? _e52025212_)
                                     (let ((_e52055220_
                                            (gx#syntax-e _e52025212_)))
                                       (let ((_hd52065223_ (##car _e52055220_))
                                             (_tl52075225_
                                              (##cdr _e52055220_)))
                                         (if (gx#stx-pair? _tl52075225_)
                                             (let ((_e52085228_
                                                    (gx#syntax-e
                                                     _tl52075225_)))
                                               (let ((_hd52095231_
                                                      (##car _e52085228_))
                                                     (_tl52105233_
                                                      (##cdr _e52085228_)))
                                                 (let ((_path5236_
                                                        _hd52095231_))
                                                   (if (gx#stx-null?
                                                        _tl52105233_)
                                                       (if (gx#stx-string?
                                                            _path5236_)
                                                           (let ((_rpath5238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda3947
                           _path5236_
                           (gx#stx-source _hd5199_))))
                     (let ((_block5240_
                            (gx#core-expand-include%__opt-lambda4833
                             _hd5199_
                             _rpath5238_)))
                       (let ((_rbody5243_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda5084
                                  _block5240_
                                  _expand-special5087_
                                  '#f
                                  _expand-e5089_))
                               gx#current-expander-path
                               (cons _rpath5238_ (gx#current-expander-path)))))
                         (let ()
                           (_K5095_ _rest5200_
                                    (foldr1 cons _r5201_ _rbody5243_))))))
                   (_E52045216_))
               (_E52045216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E52045216_))))
                                     (_E52045216_)))))
                          (let () (_E52035246_)))))))
                 (_expand-expression5094_
                  (lambda (_hd5195_ _rest5196_ _r5197_)
                    (_K5095_ _rest5196_
                             (cons (_expand-e5089_ _hd5195_) _r5197_))))
                 (_K5095_ (lambda (_rest5125_ _r5126_)
                            (let ((_e51275134_ _rest5125_))
                              (let ((_E51295138_
                                     (lambda ()
                                       (if _begin-form5088_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form5088_
                                             (reverse _r5126_))
                                            (gx#stx-source _stx5086_))
                                           _r5126_))))
                                (let ((_E51285191_
                                       (lambda ()
                                         (if (gx#stx-pair? _e51275134_)
                                             (let ((_e51305142_
                                                    (gx#syntax-e _e51275134_)))
                                               (let ((_hd51315145_
                                                      (##car _e51305142_))
                                                     (_tl51325147_
                                                      (##cdr _e51305142_)))
                                                 (let ((_hd5150_ _hd51315145_))
                                                   (let ((_rest5152_
                                                          _tl51325147_))
                                                     (if '#t
                                                         (let ((_hd5154_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd5150_)))
                   (let ((_e51555162_ _hd5154_))
                     (let ((_E51575166_
                            (lambda ()
                              (_expand-expression5094_
                               _hd5154_
                               _rest5152_
                               _r5126_))))
                       (let ((_E51565187_
                              (lambda ()
                                (if (gx#stx-pair? _e51555162_)
                                    (let ((_e51585170_
                                           (gx#syntax-e _e51555162_)))
                                      (let ((_hd51595173_ (##car _e51585170_))
                                            (_tl51605175_ (##cdr _e51585170_)))
                                        (let ((_form5178_ _hd51595173_))
                                          (let ((_body5180_ _tl51605175_))
                                            (if '#t
                                                (let ((_bind5182_
                                                       (if (gx#identifier?
                                                            _form5178_)
                                                           (gx#resolve-identifier__0
                                                            _form5178_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind5182_)
                                                      (let ((_$e5184_
                                                             (##structure-ref
                                                              _bind5182_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e5184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice5091_
                     _hd5154_
                     _body5180_
                     _rest5152_
                     _r5126_)
                    (if (eq? _$e5184_ '%#cond-expand)
                        (_expand-cond-expand5092_ _hd5154_ _rest5152_ _r5126_)
                        (if (eq? _$e5184_ '%#include)
                            (_expand-include5093_ _hd5154_ _rest5152_ _r5126_)
                            (_expand-special5087_
                             _hd5154_
                             _K5095_
                             _rest5152_
                             _r5126_)))))
              (_expand-expression5094_ _hd5154_ _rest5152_ _r5126_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E51575166_))))))
                                    (_E51575166_)))))
                         (let () (_E51565187_))))))
                 (_E51295138_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E51295138_)))))
                                  (let () (_E51285191_))))))))
          (let ((_e50965103_ _stx5086_))
            (let ((_E50985107_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e50965103_))))
              (let ((_E50975121_
                     (lambda ()
                       (if (gx#stx-pair? _e50965103_)
                           (let ((_e50995111_ (gx#syntax-e _e50965103_)))
                             (let ((_hd51005114_ (##car _e50995111_))
                                   (_tl51015116_ (##cdr _e50995111_)))
                               (let ((_body5119_ _tl51015116_))
                                 (if (gx#stx-list? _body5119_)
                                     (_K5095_ _body5119_ '())
                                     (_E50985107_)))))
                           (_E50985107_)))))
                (let () (_E50975121_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5262_ _expand-special5263_)
          (let ((_begin-form5265_ '%#begin))
            (let ((_expand-e5267_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda5084
               _stx5262_
               _expand-special5263_
               _begin-form5265_
               _expand-e5267_)))))
      (define gx#core-expand-block__1
        (lambda (_stx5269_ _expand-special5270_ _begin-form5271_)
          (let ((_expand-e5273_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5084
             _stx5269_
             _expand-special5270_
             _begin-form5271_
             _expand-e5273_))))
      (define gx#core-expand-block
        (lambda _g5669_
          (let ((_g5668_ (length _g5669_)))
            (cond ((fx= _g5668_ 2) (apply gx#core-expand-block__0 _g5669_))
                  ((fx= _g5668_ 3) (apply gx#core-expand-block__1 _g5669_))
                  ((fx= _g5668_ 4)
                   (apply gx#core-expand-block__opt-lambda5084 _g5669_))
                  (else (error "No clause matching arguments" _g5669_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5034_ _expand-special5035_)
      (let ((_g50365047_
             (gx#core-expand-block__1 _stx5034_ _expand-special5035_ '#f)))
        (let ((_E50405051_
               (lambda () (error '"No clause matching" _g50365047_))))
          (let ((_try-match50395062_
                 (lambda ()
                   (let ((_K50415057_
                          (lambda (_body5055_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body5055_))
                             (gx#stx-source _stx5034_)))))
                     (let ((_body5060_ _g50365047_))
                       (_K50415057_ _body5060_))))))
            (let ((_try-match50385078_
                   (lambda ()
                     (let ((_K50425068_ (lambda (_expr5066_) _expr5066_)))
                       (if (##pair? _g50365047_)
                           (let ((_hd50435071_ (##car _g50365047_))
                                 (_tl50445073_ (##cdr _g50365047_)))
                             (let ((_expr5076_ _hd50435071_))
                               (if (##null? _tl50445073_)
                                   (_K50425068_ _expr5076_)
                                   (_try-match50395062_))))
                           (_try-match50395062_))))))
              (let ((_K50455082_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx5034_))))
                (if (##null? _g50365047_)
                    (_K50455082_)
                    (_try-match50385078_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx4892_)
      (letrec ((_satisfied?4894_
                (lambda (_condition4992_)
                  (let ((_e49935001_ _condition4992_))
                    (let ((_E49965005_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e49935001_))))
                      (let ((_E49955024_
                             (lambda ()
                               (if (gx#stx-pair? _e49935001_)
                                   (let ((_e49975009_
                                          (gx#syntax-e _e49935001_)))
                                     (let ((_hd49985012_ (##car _e49975009_))
                                           (_tl49995014_ (##cdr _e49975009_)))
                                       (let ((_combinator5017_ _hd49985012_))
                                         (let ((_body5019_ _tl49995014_))
                                           (if (gx#stx-list? _body5019_)
                                               (let ((_$e5021_
                                                      (gx#stx-e
                                                       _combinator5017_)))
                                                 (if (eq? _$e5021_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?4894_
                                                           _body5019_))
                                                     (if (eq? _$e5021_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?4894_
                                                          _body5019_)
                                                         (if (eq? _$e5021_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?4894_
                                                              _body5019_)
                                                             (if (eq? _$e5021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body5019_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx4892_
                          _combinator5017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E49965005_))))))
                                   (_E49965005_)))))
                        (let ((_E49945030_
                               (lambda ()
                                 (let ((_id5028_ _e49935001_))
                                   (if (gx#identifier? _id5028_)
                                       (gx#core-bound-identifier?__opt-lambda4037
                                        _id5028_
                                        gx#feature-binding?)
                                       (_E49955024_))))))
                          (let () (_E49945030_))))))))
               (_loop4895_
                (lambda (_rest4925_)
                  (let ((_e49264934_ _rest4925_))
                    (let ((_E49324938_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e49264934_))))
                      (let ((_E49284942_
                             (lambda ()
                               (if (gx#stx-null? _e49264934_)
                                   (if '#t '() (_E49324938_))
                                   (_E49324938_)))))
                        (let ((_E49274988_
                               (lambda ()
                                 (if (gx#stx-pair? _e49264934_)
                                     (let ((_e49294946_
                                            (gx#syntax-e _e49264934_)))
                                       (let ((_hd49304949_ (##car _e49294946_))
                                             (_tl49314951_
                                              (##cdr _e49294946_)))
                                         (let ((_hd4954_ _hd49304949_))
                                           (let ((_rest4956_ _tl49314951_))
                                             (if '#t
                                                 (let ((_e49574964_ _hd4954_))
                                                   (let ((_E49594968_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e49574964_))))
                                                     (let ((_E49584984_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e49574964_)
                          (let ((_e49604972_ (gx#syntax-e _e49574964_)))
                            (let ((_hd49614975_ (##car _e49604972_))
                                  (_tl49624977_ (##cdr _e49604972_)))
                              (let ((_condition4980_ _hd49614975_))
                                (let ((_body4982_ _tl49624977_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition4980_ 'else)
                                          (if (gx#stx-null? _rest4956_)
                                              _body4982_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx4892_
                                               _hd4954_))
                                          (if (_satisfied?4894_
                                               _condition4980_)
                                              _body4982_
                                              (_loop4895_ _rest4956_)))
                                      (_E49594968_))))))
                          (_E49594968_)))))
               (let () (_E49584984_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E49284942_))))))
                                     (_E49284942_)))))
                          (let () (_E49274988_)))))))))
        (let ((_e48964903_ _stx4892_))
          (let ((_E48984907_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e48964903_))))
            (let ((_E48974921_
                   (lambda ()
                     (if (gx#stx-pair? _e48964903_)
                         (let ((_e48994911_ (gx#syntax-e _e48964903_)))
                           (let ((_hd49004914_ (##car _e48994911_))
                                 (_tl49014916_ (##cdr _e48994911_)))
                             (let ((_clauses4919_ _tl49014916_))
                               (if (gx#stx-list? _clauses4919_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop4895_ _clauses4919_))
                                   (_E48984907_)))))
                         (_E48984907_)))))
              (let () (_E48974921_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda4833
      (lambda (_stx4835_ _rpath4836_)
        (let ((_e48374847_ _stx4835_))
          (let ((_E48394851_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e48374847_))))
            (let ((_E48384878_
                   (lambda ()
                     (if (gx#stx-pair? _e48374847_)
                         (let ((_e48404855_ (gx#syntax-e _e48374847_)))
                           (let ((_hd48414858_ (##car _e48404855_))
                                 (_tl48424860_ (##cdr _e48404855_)))
                             (if (gx#stx-pair? _tl48424860_)
                                 (let ((_e48434863_
                                        (gx#syntax-e _tl48424860_)))
                                   (let ((_hd48444866_ (##car _e48434863_))
                                         (_tl48454868_ (##cdr _e48434863_)))
                                     (let ((_path4871_ _hd48444866_))
                                       (if (gx#stx-null? _tl48454868_)
                                           (if (gx#stx-string? _path4871_)
                                               (let ((_rpath4876_
                                                      (let ((_$e4873_
                                                             _rpath4836_))
                                                        (if _$e4873_
                                                            _$e4873_
                                                            (gx#core-resolve-path__opt-lambda3947
                                                             _path4871_
                                                             (gx#stx-source
                                                              _stx4835_))))))
                                                 (if (member _rpath4876_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx4835_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath4876_))
                                                       (gx#stx-source
                                                        _stx4835_)))))
                                               (_E48394851_))
                                           (_E48394851_)))))
                                 (_E48394851_))))
                         (_E48394851_)))))
              (let () (_E48384878_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx4885_)
          (let ((_rpath4887_ '#f))
            (gx#core-expand-include%__opt-lambda4833 _stx4885_ _rpath4887_))))
      (define gx#core-expand-include%
        (lambda _g5671_
          (let ((_g5670_ (length _g5671_)))
            (cond ((fx= _g5670_ 1) (apply gx#core-expand-include%__0 _g5671_))
                  ((fx= _g5670_ 2)
                   (apply gx#core-expand-include%__opt-lambda4833 _g5671_))
                  (else (error "No clause matching arguments" _g5671_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4802
      (lambda (_K4804_ _stx4805_ _method4806_)
        (if (procedure? _K4804_)
            (let ((_$e4808_ (gx#stx-source _stx4805_)))
              (if _$e4808_
                  ((lambda (_g48104812_)
                     (gx#stx-wrap-source (_K4804_ _stx4805_) _g48104812_))
                   _$e4808_)
                  (_K4804_ _stx4805_)))
            (let ((_$e4815_ (bound-method-ref _K4804_ _method4806_)))
              (if _$e4815_
                  ((lambda (_g48174819_)
                     (gx#core-apply-expander__opt-lambda4802
                      _g48174819_
                      _stx4805_
                      _method4806_))
                   _$e4815_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4805_
                   _method4806_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4825_ _stx4826_)
          (let ((_method4828_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4802
             _K4825_
             _stx4826_
             _method4828_))))
      (define gx#core-apply-expander
        (lambda _g5673_
          (let ((_g5672_ (length _g5673_)))
            (cond ((fx= _g5672_ 2) (apply gx#core-apply-expander__0 _g5673_))
                  ((fx= _g5672_ 3)
                   (apply gx#core-apply-expander__opt-lambda4802 _g5673_))
                  (else (error "No clause matching arguments" _g5673_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4800_ _stx4801_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4801_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4775_ _stx4776_)
      (let ((_self47774783_ _self4775_))
        (let ((_E47794787_
               (lambda () (error '"No clause matching" _self47774783_))))
          (let ((_K47804792_
                 (lambda (_K4790_)
                   (gx#core-apply-expander__0 _K4790_ _stx4776_))))
            (if (struct-instance? gx#macro-expander::t _self47774783_)
                (let ((_e47814795_ (##vector-ref _self47774783_ '1)))
                  (let ((_K4798_ _e47814795_)) (_K47804792_ _K4798_)))
                (_E47794787_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4750_ _stx4751_)
      (if (gx#sealed-syntax? _stx4751_)
          _stx4751_
          (let ((_self47524758_ _self4750_))
            (let ((_E47544762_
                   (lambda () (error '"No clause matching" _self47524758_))))
              (let ((_K47554767_
                     (lambda (_K4765_)
                       (gx#core-apply-expander__0 _K4765_ _stx4751_))))
                (if (struct-instance? gx#core-expander::t _self47524758_)
                    (let ((_e47564770_ (##vector-ref _self47524758_ '1)))
                      (let ((_K4773_ _e47564770_)) (_K47554767_ _K4773_)))
                    (_E47544762_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4732
      (lambda (_self4734_ _stx4735_ _top?4736_)
        (if (_top?4736_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4734_ _stx4735_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4735_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4741_ _stx4742_)
          (let ((_top?4744_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4732
             _self4741_
             _stx4742_
             _top?4744_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5675_
          (let ((_g5674_ (length _g5675_)))
            (cond ((fx= _g5674_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5675_))
                  ((fx= _g5674_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4732
                          _g5675_))
                  (else (error "No clause matching arguments" _g5675_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4730_ _stx4731_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4732
       _self4730_
       _stx4731_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4677_ _stx4678_)
      (let ((_self46794685_ _self4677_))
        (let ((_E46814689_
               (lambda () (error '"No clause matching" _self46794685_))))
          (let ((_K46824722_
                 (lambda (_id4692_)
                   (let ((_e46934700_ _stx4678_))
                     (let ((_E46954704_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e46934700_))))
                       (let ((_E46944718_
                              (lambda ()
                                (if (gx#stx-pair? _e46934700_)
                                    (let ((_e46964708_
                                           (gx#syntax-e _e46934700_)))
                                      (let ((_hd46974711_ (##car _e46964708_))
                                            (_tl46984713_ (##cdr _e46964708_)))
                                        (let ((_body4716_ _tl46984713_))
                                          (if '#t
                                              (gx#core-cons
                                               _id4692_
                                               _body4716_)
                                              (_E46954704_)))))
                                    (_E46954704_)))))
                         (let () (_E46944718_))))))))
            (if (struct-instance? gx#rename-macro-expander::t _self46794685_)
                (let ((_e46834725_ (##vector-ref _self46794685_ '1)))
                  (let ((_id4728_ _e46834725_)) (_K46824722_ _id4728_)))
                (_E46814689_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4623
      (lambda (_self4625_ _stx4626_ _method4627_)
        (let ((_self46284636_ _self4625_))
          (let ((_E46304640_
                 (lambda () (error '"No clause matching" _self46284636_))))
            (let ((_K46314647_
                   (lambda (_phi4643_ _ctx4644_ _K4645_)
                     (gx#core-apply-user-macro
                      _K4645_
                      _stx4626_
                      _ctx4644_
                      _phi4643_
                      _method4627_))))
              (if (struct-instance? gx#user-expander::t _self46284636_)
                  (let ((_e46324650_ (##vector-ref _self46284636_ '1)))
                    (let ((_K4653_ _e46324650_))
                      (let ((_e46334655_ (##vector-ref _self46284636_ '2)))
                        (let ((_ctx4658_ _e46334655_))
                          (let ((_e46344660_ (##vector-ref _self46284636_ '3)))
                            (let ((_phi4663_ _e46344660_))
                              (_K46314647_ _phi4663_ _ctx4658_ _K4653_)))))))
                  (_E46304640_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4668_ _stx4669_)
          (let ((_method4671_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4623
             _self4668_
             _stx4669_
             _method4671_))))
      (define gx#core-apply-user-expander
        (lambda _g5677_
          (let ((_g5676_ (length _g5677_)))
            (cond ((fx= _g5676_ 2)
                   (apply gx#core-apply-user-expander__0 _g5677_))
                  ((fx= _g5676_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4623 _g5677_))
                  (else (error "No clause matching arguments" _g5677_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4615_ _stx4616_ _ctx4617_ _phi4618_ _method4619_)
      (let ((_mark4621_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4617_
              _phi4618_
              _stx4616_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4802
             _K4615_
             (gx#stx-apply-mark _stx4616_ _mark4621_)
             _method4619_)
            _mark4621_))
         gx#current-expander-marks
         (cons _mark4621_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4587
      (lambda (_stx4589_ _phi4590_ _ctx4591_)
        ((letrec ((_lp4593_
                   (lambda (_bind4595_)
                     (if (##structure-direct-instance-of?
                          _bind4595_
                          'gx#import-binding::t)
                         (_lp4593_
                          (##structure-ref
                           _bind4595_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind4595_
                              'gx#alias-binding::t)
                             (_lp4593_
                              (gx#core-resolve-identifier__opt-lambda4517
                               (##structure-ref
                                _bind4595_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi4590_
                               _ctx4591_))
                             _bind4595_)))))
           _lp4593_)
         (gx#core-resolve-identifier__opt-lambda4517
          _stx4589_
          _phi4590_
          _ctx4591_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4600_)
          (let ((_phi4602_ (gx#current-expander-phi)))
            (let ((_ctx4604_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda4587
               _stx4600_
               _phi4602_
               _ctx4604_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx4606_ _phi4607_)
          (let ((_ctx4609_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4587
             _stx4606_
             _phi4607_
             _ctx4609_))))
      (define gx#resolve-identifier
        (lambda _g5679_
          (let ((_g5678_ (length _g5679_)))
            (cond ((fx= _g5678_ 1) (apply gx#resolve-identifier__0 _g5679_))
                  ((fx= _g5678_ 2) (apply gx#resolve-identifier__1 _g5679_))
                  ((fx= _g5678_ 3)
                   (apply gx#resolve-identifier__opt-lambda4587 _g5679_))
                  (else (error "No clause matching arguments" _g5679_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4545
      (lambda (_stx4547_ _val4548_ _rebind?4549_ _phi4550_ _ctx4551_)
        (let ((_rebind?4553_
               (if (not _rebind?4549_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4549_) _rebind?4549_ true))))
          (gx#core-bind!__opt-lambda4307
           (gx#core-identifier-key _stx4547_)
           _val4548_
           _rebind?4553_
           _phi4550_
           _ctx4551_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4558_ _val4559_)
          (let ((_rebind?4561_ '#f))
            (let ((_phi4563_ (gx#current-expander-phi)))
              (let ((_ctx4565_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda4545
                 _stx4558_
                 _val4559_
                 _rebind?4561_
                 _phi4563_
                 _ctx4565_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx4567_ _val4568_ _rebind?4569_)
          (let ((_phi4571_ (gx#current-expander-phi)))
            (let ((_ctx4573_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda4545
               _stx4567_
               _val4568_
               _rebind?4569_
               _phi4571_
               _ctx4573_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx4575_ _val4576_ _rebind?4577_ _phi4578_)
          (let ((_ctx4580_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4545
             _stx4575_
             _val4576_
             _rebind?4577_
             _phi4578_
             _ctx4580_))))
      (define gx#bind-identifier!
        (lambda _g5681_
          (let ((_g5680_ (length _g5681_)))
            (cond ((fx= _g5680_ 2) (apply gx#bind-identifier!__0 _g5681_))
                  ((fx= _g5680_ 3) (apply gx#bind-identifier!__1 _g5681_))
                  ((fx= _g5680_ 4) (apply gx#bind-identifier!__2 _g5681_))
                  ((fx= _g5680_ 5)
                   (apply gx#bind-identifier!__opt-lambda4545 _g5681_))
                  (else (error "No clause matching arguments" _g5681_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4517
      (lambda (_stx4519_ _phi4520_ _ctx4521_)
        ((letrec ((_lp4523_
                   (lambda (_e4525_ _marks4526_)
                     (if (symbol? _e4525_)
                         (gx#core-resolve-binding
                          _e4525_
                          _phi4520_
                          _ctx4521_
                          (reverse _marks4526_))
                         (if (gx#identifier-quote? _e4525_)
                             (gx#core-resolve-binding
                              (##structure-ref _e4525_ '1 AST::t '#f)
                              _phi4520_
                              (##structure-ref
                               _e4525_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e4525_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e4525_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e4525_ '1 AST::t '#f)
                                  _phi4520_
                                  _ctx4521_
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e4525_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks4526_))
                                 (if (##structure-direct-instance-of?
                                      _e4525_
                                      'gx#syntax-wrap::t)
                                     (_lp4523_
                                      (##structure-ref _e4525_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e4525_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks4526_))
                                     (if (##structure-instance-of?
                                          _e4525_
                                          'gerbil#AST::t)
                                         (_lp4523_
                                          (##structure-ref
                                           _e4525_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks4526_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx4519_)))))))))
           _lp4523_)
         _stx4519_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4531_)
          (let ((_phi4533_ (gx#current-expander-phi)))
            (let ((_ctx4535_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda4517
               _stx4531_
               _phi4533_
               _ctx4535_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4537_ _phi4538_)
          (let ((_ctx4540_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4517
             _stx4537_
             _phi4538_
             _ctx4540_))))
      (define gx#core-resolve-identifier
        (lambda _g5683_
          (let ((_g5682_ (length _g5683_)))
            (cond ((fx= _g5682_ 1)
                   (apply gx#core-resolve-identifier__0 _g5683_))
                  ((fx= _g5682_ 2)
                   (apply gx#core-resolve-identifier__1 _g5683_))
                  ((fx= _g5682_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4517 _g5683_))
                  (else (error "No clause matching arguments" _g5683_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4433_ _phi4434_ _ctx4435_ _marks4436_)
      (let ((_resolve4438_
             (lambda (_ctx4506_ _src-phi4507_ _key4508_)
               ((letrec ((_lp4510_
                          (lambda (_ctx4512_ _dphi4513_)
                            (let ((_$e4515_
                                   (gx#core-context-resolve
                                    _ctx4512_
                                    _key4508_)))
                              (if _$e4515_
                                  (values _$e4515_)
                                  (if (fxzero? _dphi4513_)
                                      '#f
                                      (if (fxpositive? _dphi4513_)
                                          (_lp4510_
                                           (gx#core-context-shift
                                            _ctx4512_
                                            '-1)
                                           (fx- _dphi4513_ '1))
                                          (if (fxnegative? _dphi4513_)
                                              (_lp4510_
                                               (gx#core-context-shift
                                                _ctx4512_
                                                '1)
                                               (fx+ _dphi4513_ '1))
                                              '#!void))))))))
                  _lp4510_)
                (gx#core-context-shift _ctx4506_ _phi4434_)
                (fx- _phi4434_ _src-phi4507_)))))
        ((letrec ((_lp4440_
                   (lambda (_ctx4442_ _src-phi4443_ _rest4444_)
                     (let ((_rest44454453_ _rest4444_))
                       (let ((_E44484457_
                              (lambda ()
                                (error '"No clause matching" _rest44454453_))))
                         (let ((_else44474461_
                                (lambda ()
                                  (_resolve4438_
                                   _ctx4442_
                                   _src-phi4443_
                                   _id4433_))))
                           (let ((_K44494494_
                                  (lambda (_rest4464_ _hd4465_)
                                    (let ((_hd44664472_ _hd4465_))
                                      (let ((_E44684476_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd44664472_))))
                                        (let ((_K44694486_
                                               (lambda (_subst4479_)
                                                 (let ((_$e4483_
                                                        (let ((_key4481_
                                                               (if _subst4479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (table-ref _subst4479_ _id4433_ '#f)
                           '#f)))
                  (if _key4481_
                      (_resolve4438_ _ctx4442_ _src-phi4443_ _key4481_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e4483_
                                                       _$e4483_
                                                       (_lp4440_
                                                        (##structure-ref
                                                         _hd4465_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd4465_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest4464_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd44664472_)
                                              (let ((_e44704489_
                                                     (##vector-ref
                                                      _hd44664472_
                                                      '1)))
                                                (let ((_subst4492_
                                                       _e44704489_))
                                                  (_K44694486_ _subst4492_)))
                                              (_E44684476_))))))))
                             (if (##pair? _rest44454453_)
                                 (let ((_hd44504497_ (##car _rest44454453_))
                                       (_tl44514499_ (##cdr _rest44454453_)))
                                   (let ((_hd4502_ _hd44504497_))
                                     (let ((_rest4504_ _tl44514499_))
                                       (_K44494494_ _rest4504_ _hd4502_))))
                                 (_else44474461_)))))))))
           _lp4440_)
         _ctx4435_
         _phi4434_
         _marks4436_))))
  (begin
    (define gx#core-bind!__opt-lambda4307
      (lambda (_key4309_ _val4310_ _rebind?4311_ _phi4312_ _ctx4313_)
        (let ((_update-binding4315_
               (lambda (_xval4386_)
                 (if (let ((_$e4388_
                            (_rebind?4311_ _ctx4313_ _xval4386_ _val4310_)))
                       (if _$e4388_
                           _$e4388_
                           (let ((_$e4394_
                                  (if (##structure-direct-instance-of?
                                       _xval4386_
                                       'gx#import-binding::t)
                                      (let ((_$e4391_
                                             (##structure-ref
                                              _xval4386_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e4391_
                                            _$e4391_
                                            (if (##structure-instance-of?
                                                 _val4310_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val4310_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e4394_
                                 _$e4394_
                                 (if (##structure-instance-of?
                                      _xval4386_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val4310_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val4310_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval4386_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val4310_
                     (if (if (##structure-direct-instance-of?
                              _val4310_
                              'gx#import-binding::t)
                             (let ((_$e4397_
                                    (##structure-ref
                                     _val4310_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e4397_
                                   _$e4397_
                                   (if (##structure-instance-of?
                                        _xval4386_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val4310_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval4386_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval4386_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key4309_
                          _xval4386_
                          _val4310_))))))
          (let ((_gensubst4316_
                 (lambda (_subst4381_ _id4382_)
                   (let ((_eid4384_
                          (gensym (if (uninterned-symbol? _id4382_)
                                      '%
                                      _id4382_))))
                     (begin
                       (table-set! _subst4381_ _id4382_ _eid4384_)
                       _eid4384_)))))
            (let ((_subst!4317_
                   (lambda (_key4319_)
                     (let ((_key43204328_ _key4319_))
                       (let ((_E43234332_
                              (lambda ()
                                (error '"No clause matching" _key43204328_))))
                         (let ((_else43224336_ (lambda () _key4319_)))
                           (let ((_K43244369_
                                  (lambda (_mark4339_ _id4340_)
                                    (let ((_mark43414347_ _mark4339_))
                                      (let ((_E43434351_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark43414347_))))
                                        (let ((_K43444361_
                                               (lambda (_subst4354_)
                                                 (if (not _subst4354_)
                                                     (let ((_subst4356_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark4339_
                                                          _subst4356_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst4316_
                                                          _subst4356_
                                                          _id4340_)))
                                                     (let ((_$e4358_
                                                            (table-ref
                                                             _subst4354_
                                                             _id4340_
                                                             '#f)))
                                                       (if _$e4358_
                                                           (values _$e4358_)
                                                           (_gensubst4316_
                                                            _subst4354_
                                                            _id4340_)))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _mark43414347_)
                                              (let ((_e43454364_
                                                     (##vector-ref
                                                      _mark43414347_
                                                      '1)))
                                                (let ((_subst4367_
                                                       _e43454364_))
                                                  (_K43444361_ _subst4367_)))
                                              (_E43434351_))))))))
                             (if (##pair? _key43204328_)
                                 (let ((_hd43254372_ (##car _key43204328_))
                                       (_tl43264374_ (##cdr _key43204328_)))
                                   (let ((_id4377_ _hd43254372_))
                                     (let ((_mark4379_ _tl43264374_))
                                       (_K43244369_ _mark4379_ _id4377_))))
                                 (_else43224336_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx4313_ _phi4312_)
               (_subst!4317_ _key4309_)
               _val4310_
               _update-binding4315_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4403_ _val4404_)
          (let ((_rebind?4406_ false))
            (let ((_phi4408_ (gx#current-expander-phi)))
              (let ((_ctx4410_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda4307
                 _key4403_
                 _val4404_
                 _rebind?4406_
                 _phi4408_
                 _ctx4410_))))))
      (define gx#core-bind!__1
        (lambda (_key4412_ _val4413_ _rebind?4414_)
          (let ((_phi4416_ (gx#current-expander-phi)))
            (let ((_ctx4418_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda4307
               _key4412_
               _val4413_
               _rebind?4414_
               _phi4416_
               _ctx4418_)))))
      (define gx#core-bind!__2
        (lambda (_key4420_ _val4421_ _rebind?4422_ _phi4423_)
          (let ((_ctx4425_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4307
             _key4420_
             _val4421_
             _rebind?4422_
             _phi4423_
             _ctx4425_))))
      (define gx#core-bind!
        (lambda _g5685_
          (let ((_g5684_ (length _g5685_)))
            (cond ((fx= _g5684_ 2) (apply gx#core-bind!__0 _g5685_))
                  ((fx= _g5684_ 3) (apply gx#core-bind!__1 _g5685_))
                  ((fx= _g5684_ 4) (apply gx#core-bind!__2 _g5685_))
                  ((fx= _g5684_ 5)
                   (apply gx#core-bind!__opt-lambda4307 _g5685_))
                  (else (error "No clause matching arguments" _g5685_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4239_)
      (if (symbol? _stx4239_)
          (let ((_g42404248_ (gx#current-expander-marks)))
            (let ((_E42434252_
                   (lambda () (error '"No clause matching" _g42404248_))))
              (let ((_else42424256_ (lambda () _stx4239_)))
                (let ((_K42444261_
                       (lambda (_hd4259_) (cons _stx4239_ _hd4259_))))
                  (if (##pair? _g42404248_)
                      (let ((_hd42454264_ (##car _g42404248_))
                            (_tl42464266_ (##cdr _g42404248_)))
                        (let ((_hd4269_ _hd42454264_)) (_K42444261_ _hd4269_)))
                      (_else42424256_))))))
          (if (gx#identifier? _stx4239_)
              (let ((_id4271_ (gx#syntax-local-unwrap _stx4239_)))
                (let ((_eid4273_ (gx#stx-e _id4271_)))
                  (let ((_marks4275_ (gx#stx-identifier-marks _id4271_)))
                    (let ()
                      (let ((_marks42774285_ _marks4275_))
                        (let ((_E42804289_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks42774285_))))
                          (let ((_else42794293_ (lambda () _eid4273_)))
                            (let ((_K42814298_
                                   (lambda (_hd4296_)
                                     (cons _eid4273_ _hd4296_))))
                              (if (##pair? _marks42774285_)
                                  (let ((_hd42824301_ (##car _marks42774285_))
                                        (_tl42834303_ (##cdr _marks42774285_)))
                                    (let ((_hd4306_ _hd42824301_))
                                      (_K42814298_ _hd4306_)))
                                  (_else42794293_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4239_)))))
  (define gx#core-context-shift
    (lambda (_ctx4184_ _phi4185_)
      (let ((_make-phi4187_
             (lambda (_super4237_)
               (let ((__obj5656 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda5618
                    __obj5656
                    (gensym 'phi)
                    _super4237_)
                   __obj5656)))))
        (let ((_make-phi/up4188_
               (lambda (_ctx4232_ _super4233_)
                 (let ((_ctx+14235_ (_make-phi4187_ _super4233_)))
                   (begin
                     (##structure-set!
                      _ctx4232_
                      _ctx+14235_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+14235_
                      _ctx4232_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+14235_)))))
          (let ((_make-phi/down4189_
                 (lambda (_ctx4227_ _super4228_)
                   (let ((_ctx-14230_ (_make-phi4187_ _super4228_)))
                     (begin
                       (##structure-set!
                        _ctx-14230_
                        _ctx4227_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx4227_
                        _ctx-14230_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-14230_)))))
            (let ((_shift4190_
                   (lambda (_ctx4211_
                            _delta4212_
                            _make-delta-context4213_
                            _phi4214_
                            _K4215_)
                     (let ((_$e4217_
                            (##structure-ref
                             _ctx4211_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e4217_
                           ((lambda (_super4220_)
                              (let ((_super4222_
                                     (_K4215_ _super4220_ _delta4212_)))
                                (let ((_ctx+d4224_
                                       (_make-delta-context4213_
                                        _ctx4211_
                                        _super4222_)))
                                  (let ()
                                    (_K4215_ _ctx+d4224_
                                             (fx- _phi4214_ _delta4212_))))))
                            _$e4217_)
                           (error '"Bad context" _ctx4211_))))))
              ((letrec ((_K4192_ (lambda (_ctx4194_ _phi4195_)
                                   (if (fxzero? _phi4195_)
                                       _ctx4194_
                                       (if (##structure-instance-of?
                                            _ctx4194_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi4195_)
                                               (let ((_$e4197_
                                                      (##structure-ref
                                                       _ctx4194_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4197_
                                                     ((lambda (_g41994201_)
                                                        (_K4192_ _g41994201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx- _phi4195_ '1)))
              _$e4197_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4190_
                                                      _ctx4194_
                                                      '1
                                                      _make-phi/up4188_
                                                      _phi4195_
                                                      _K4192_)))
                                               (let ((_$e4204_
                                                      (##structure-ref
                                                       _ctx4194_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4204_
                                                     ((lambda (_g42064208_)
                                                        (_K4192_ _g42064208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx+ _phi4195_ '1)))
              _$e4204_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4190_
                                                      _ctx4194_
                                                      '-1
                                                      _make-phi/down4189_
                                                      _phi4195_
                                                      _K4192_))))
                                           _ctx4194_)))))
                 _K4192_)
               _ctx4184_
               _phi4185_)))))))
  (define gx#core-context-get
    (lambda (_ctx4181_ _key4182_)
      (table-ref
       (##structure-ref _ctx4181_ '2 gx#expander-context::t '#f)
       _key4182_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4177_ _key4178_ _val4179_)
      (table-set!
       (##structure-ref _ctx4177_ '2 gx#expander-context::t '#f)
       _key4178_
       _val4179_)))
  (define gx#core-context-resolve
    (lambda (_ctx4164_ _key4165_)
      ((letrec ((_lp4167_
                 (lambda (_ctx4169_)
                   (let ((_$e4171_ (gx#core-context-get _ctx4169_ _key4165_)))
                     (if _$e4171_
                         (values _$e4171_)
                         (let ((_$e4174_
                                (if (##structure-instance-of?
                                     _ctx4169_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx4169_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e4174_ (_lp4167_ _$e4174_) '#f)))))))
         _lp4167_)
       _ctx4164_)))
  (define gx#core-context-bind!
    (lambda (_ctx4154_ _key4155_ _val4156_ _rebind4157_)
      (let ((_$e4159_ (gx#core-context-get _ctx4154_ _key4155_)))
        (if _$e4159_
            ((lambda (_xval4162_)
               (gx#core-context-put!
                _ctx4154_
                _key4155_
                (_rebind4157_ _xval4162_)))
             _$e4159_)
            (gx#core-context-put! _ctx4154_ _key4155_ _val4156_)))))
  (begin
    (define gx#core-context-top__opt-lambda4130
      (lambda (_ctx4132_ _stop?4133_)
        ((letrec ((_lp4135_
                   (lambda (_ctx4137_)
                     (if (_stop?4133_ _ctx4137_)
                         _ctx4137_
                         (if (##structure-instance-of?
                              _ctx4137_
                              'gx#context-phi::t)
                             (_lp4135_
                              (##structure-ref
                               _ctx4137_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp4135_)
         _ctx4132_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx4143_ (gx#current-expander-context)))
            (let ((_stop?4145_ gx#top-context?))
              (gx#core-context-top__opt-lambda4130 _ctx4143_ _stop?4145_)))))
      (define gx#core-context-top__1
        (lambda (_ctx4147_)
          (let ((_stop?4149_ gx#top-context?))
            (gx#core-context-top__opt-lambda4130 _ctx4147_ _stop?4149_))))
      (define gx#core-context-top
        (lambda _g5687_
          (let ((_g5686_ (length _g5687_)))
            (cond ((fx= _g5686_ 0) (apply gx#core-context-top__0 _g5687_))
                  ((fx= _g5686_ 1) (apply gx#core-context-top__1 _g5687_))
                  ((fx= _g5686_ 2)
                   (apply gx#core-context-top__opt-lambda4130 _g5687_))
                  (else (error "No clause matching arguments" _g5687_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4115
      (lambda (_ctx4117_)
        ((letrec ((_lp4119_
                   (lambda (_ctx4121_)
                     (if (##structure-instance-of?
                          _ctx4121_
                          'gx#context-phi::t)
                         (_lp4119_
                          (##structure-ref _ctx4121_ '3 gx#phi-context::t '#f))
                         _ctx4121_))))
           _lp4119_)
         _ctx4117_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4127_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4115 _ctx4127_))))
      (define gx#core-context-root
        (lambda _g5689_
          (let ((_g5688_ (length _g5689_)))
            (cond ((fx= _g5688_ 0) (apply gx#core-context-root__0 _g5689_))
                  ((fx= _g5688_ 1)
                   (apply gx#core-context-root__opt-lambda4115 _g5689_))
                  (else (error "No clause matching arguments" _g5689_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4099
      (lambda (_ctx4101_ . __40984102_)
        (if (##structure-instance-of? _ctx4101_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4101_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4101_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4109_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4099 _ctx4109_))))
      (define gx#core-context-rebind?
        (lambda _g5691_
          (let ((_g5690_ (length _g5691_)))
            (cond ((fx= _g5690_ 0) (apply gx#core-context-rebind?__0 _g5691_))
                  ((fx= _g5690_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4099 _g5691_))
                  ((fx>= _g5690_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4099 _g5691_))
                  (else (error "No clause matching arguments" _g5691_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4082
      (lambda (_ctx4084_)
        (let ((_$e4086_ (gx#core-context-top__1 _ctx4084_)))
          (if _$e4086_
              ((lambda (_ctx4089_)
                 (if (##structure-instance-of? _ctx4089_ 'gx#module-context::t)
                     (##structure-ref _ctx4089_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4086_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4095_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4082 _ctx4095_))))
      (define gx#core-context-namespace
        (lambda _g5693_
          (let ((_g5692_ (length _g5693_)))
            (cond ((fx= _g5692_ 0)
                   (apply gx#core-context-namespace__0 _g5693_))
                  ((fx= _g5692_ 1)
                   (apply gx#core-context-namespace__opt-lambda4082 _g5693_))
                  (else (error "No clause matching arguments" _g5693_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4068
      (lambda (_bind4070_ _is?4071_)
        (if (##structure-direct-instance-of? _bind4070_ 'gx#syntax-binding::t)
            (_is?4071_
             (##structure-ref _bind4070_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4076_)
          (let ((_is?4078_ gx#expander?))
            (gx#expander-binding?__opt-lambda4068 _bind4076_ _is?4078_))))
      (define gx#expander-binding?
        (lambda _g5695_
          (let ((_g5694_ (length _g5695_)))
            (cond ((fx= _g5694_ 1) (apply gx#expander-binding?__0 _g5695_))
                  ((fx= _g5694_ 2)
                   (apply gx#expander-binding?__opt-lambda4068 _g5695_))
                  (else (error "No clause matching arguments" _g5695_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4067_)
      (gx#expander-binding?__opt-lambda4068 _bind4067_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4065_)
      (gx#expander-binding?__opt-lambda4068 _bind4065_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind4063_)
      (gx#expander-binding?__opt-lambda4068 _bind4063_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4054_)
      (let ((_feature?4056_
             (lambda (_e4058_)
               (let ((_$e4060_
                      (##structure-instance-of?
                       _e4058_
                       'gx#feature-expander::t)))
                 (if _$e4060_
                     _$e4060_
                     (##structure-instance-of?
                      _e4058_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4068 _bind4054_ _feature?4056_))))
  (define gx#private-feature-binding?
    (lambda (_bind4052_)
      (gx#expander-binding?__opt-lambda4068
       _bind4052_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4037
      (lambda (_id4039_ _bound?4040_)
        (if (gx#identifier? _id4039_)
            (_bound?4040_ (gx#resolve-identifier__0 _id4039_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4045_)
          (let ((_bound?4047_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4037
             _id4045_
             _bound?4047_))))
      (define gx#core-bound-identifier?
        (lambda _g5697_
          (let ((_g5696_ (length _g5697_)))
            (cond ((fx= _g5696_ 1)
                   (apply gx#core-bound-identifier?__0 _g5697_))
                  ((fx= _g5696_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4037 _g5697_))
                  (else (error "No clause matching arguments" _g5697_))))))))
  (define gx#core-identifier=?
    (lambda (_x4029_ _y4030_)
      (let ((_y=?4032_
             (lambda (_xid4036_)
               ((if (list? _y4030_) memq eq?) _xid4036_ _y4030_))))
        (let ((_bind4034_ (gx#resolve-identifier__0 _x4029_)))
          (if (##structure-instance-of? _bind4034_ 'gx#binding::t)
              (_y=?4032_ (##structure-ref _bind4034_ '1 gx#binding::t '#f))
              (_y=?4032_ (gx#stx-e _x4029_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4027_)
      (if (interned-symbol? _e4027_)
          (string-index (symbol->string _e4027_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda3983
      (lambda (_stx3985_ _src3986_ _ctx3987_ _marks3988_)
        (if (gx#sealed-syntax? _stx3985_)
            (gx#stx-unwrap__0 _stx3985_)
            (if (gx#identifier? _stx3985_)
                (let ((_id3990_ (gx#syntax-local-unwrap _stx3985_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id3990_)
                   (let ((_$e3992_ (gx#stx-source _id3990_)))
                     (if _$e3992_ _$e3992_ _src3986_))
                   _ctx3987_
                   (##structure-ref _id3990_ '3 gx#identifier-wrap::t '#f)))
                (if (gx#stx-datum? _stx3985_)
                    (gx#stx-e _stx3985_)
                    (##structure
                     gx#syntax-quote::t
                     _stx3985_
                     (let ((_$e3995_ (gx#stx-source _stx3985_)))
                       (if _$e3995_ _$e3995_ _src3986_))
                     _ctx3987_
                     (reverse _marks3988_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4001_)
          (let ((_src4003_ '#f))
            (let ((_ctx4005_ (gx#current-expander-context)))
              (let ((_marks4007_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda3983
                 _stx4001_
                 _src4003_
                 _ctx4005_
                 _marks4007_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4009_ _src4010_)
          (let ((_ctx4012_ (gx#current-expander-context)))
            (let ((_marks4014_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda3983
               _stx4009_
               _src4010_
               _ctx4012_
               _marks4014_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4016_ _src4017_ _ctx4018_)
          (let ((_marks4020_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda3983
             _stx4016_
             _src4017_
             _ctx4018_
             _marks4020_))))
      (define gx#core-quote-syntax
        (lambda _g5699_
          (let ((_g5698_ (length _g5699_)))
            (cond ((fx= _g5698_ 1) (apply gx#core-quote-syntax__0 _g5699_))
                  ((fx= _g5698_ 2) (apply gx#core-quote-syntax__1 _g5699_))
                  ((fx= _g5698_ 3) (apply gx#core-quote-syntax__2 _g5699_))
                  ((fx= _g5698_ 4)
                   (apply gx#core-quote-syntax__opt-lambda3983 _g5699_))
                  (else (error "No clause matching arguments" _g5699_))))))))
  (define gx#core-cons
    (lambda (_hd3981_ _tl3982_)
      (cons (gx#core-quote-syntax__0 _hd3981_) _tl3982_)))
  (define gx#core-list
    (lambda (_hd3978_ . _rest3979_)
      (cons (gx#core-quote-syntax__0 _hd3978_) _rest3979_)))
  (define gx#core-cons*
    (lambda (_hd3975_ . _rest3976_)
      (apply cons* (gx#core-quote-syntax__0 _hd3975_) _rest3976_)))
  (begin
    (define gx#core-resolve-path__opt-lambda3947
      (lambda (_stx-path3949_ _rel3950_)
        (let ((_path3962_ (gx#stx-e _stx-path3949_))
              (_reldir3963_
               ((letrec ((_lp3952_
                          (lambda (_relsrc3954_)
                            (if (##structure-instance-of?
                                 _relsrc3954_
                                 'gerbil#AST::t)
                                (_lp3952_
                                 (let ((_$e3956_ (gx#stx-source _relsrc3954_)))
                                   (if _$e3956_
                                       _$e3956_
                                       (gx#stx-e _relsrc3954_))))
                                (if (source-location-path? _relsrc3954_)
                                    (path-directory
                                     (source-location-path _relsrc3954_))
                                    (if (string? _relsrc3954_)
                                        (path-directory _relsrc3954_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp3952_)
                (let ((_$e3959_ (gx#stx-source _stx-path3949_)))
                  (if _$e3959_ _$e3959_ _rel3950_)))))
          (path-expand _path3962_ (path-normalize _reldir3963_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path3968_)
          (let ((_rel3970_ '#f))
            (gx#core-resolve-path__opt-lambda3947 _stx-path3968_ _rel3970_))))
      (define gx#core-resolve-path
        (lambda _g5701_
          (let ((_g5700_ (length _g5701_)))
            (cond ((fx= _g5700_ 1) (apply gx#core-resolve-path__0 _g5701_))
                  ((fx= _g5700_ 2)
                   (apply gx#core-resolve-path__opt-lambda3947 _g5701_))
                  (else (error "No clause matching arguments" _g5701_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx3946_) (gx#stx-rewrap _stx3946_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx3944_)
      (gx#stx-unwrap__opt-lambda3757 _stx3944_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx3912_)
      (let ((_g39133921_ (gx#current-expander-marks)))
        (let ((_E39163925_
               (lambda () (error '"No clause matching" _g39133921_))))
          (let ((_else39153929_ (lambda () _stx3912_)))
            (let ((_K39173934_
                   (lambda (_hd3932_) (gx#stx-apply-mark _stx3912_ _hd3932_))))
              (if (##pair? _g39133921_)
                  (let ((_hd39183937_ (##car _g39133921_))
                        (_tl39193939_ (##cdr _g39133921_)))
                    (let ((_hd3942_ _hd39183937_)) (_K39173934_ _hd3942_)))
                  (_else39153929_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda3895
      (lambda (_stx3897_ _E3898_)
        (let ((_bind3900_ (gx#resolve-identifier__0 _stx3897_)))
          (if (##structure-direct-instance-of?
               _bind3900_
               'gx#syntax-binding::t)
              (##structure-ref _bind3900_ '4 gx#syntax-binding::t '#f)
              (_E3898_ _stx3897_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx3905_)
          (let ((_E3907_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda3895 _stx3905_ _E3907_))))
      (define gx#syntax-local-e
        (lambda _g5703_
          (let ((_g5702_ (length _g5703_)))
            (cond ((fx= _g5702_ 1) (apply gx#syntax-local-e__0 _g5703_))
                  ((fx= _g5702_ 2)
                   (apply gx#syntax-local-e__opt-lambda3895 _g5703_))
                  (else (error "No clause matching arguments" _g5703_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda3879
      (lambda (_stx3881_ _E3882_)
        (let ((_e3884_ (gx#syntax-local-e__opt-lambda3895 _stx3881_ _E3882_)))
          (if (##structure-instance-of? _e3884_ 'gx#expander::t)
              (##structure-ref _e3884_ '1 gx#expander::t '#f)
              _e3884_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx3889_)
          (let ((_E3891_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda3879 _stx3889_ _E3891_))))
      (define gx#syntax-local-value
        (lambda _g5705_
          (let ((_g5704_ (length _g5705_)))
            (cond ((fx= _g5704_ 1) (apply gx#syntax-local-value__0 _g5705_))
                  ((fx= _g5704_ 2)
                   (apply gx#syntax-local-value__opt-lambda3879 _g5705_))
                  (else (error "No clause matching arguments" _g5705_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx3878_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx3878_))))
