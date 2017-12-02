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
    (lambda _$args5820_
      (apply make-struct-instance gx#expander-context::t _$args5820_)))
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
    (lambda _$args5817_
      (apply make-struct-instance gx#root-context::t _$args5817_)))
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
    (lambda _$args5814_
      (apply make-struct-instance gx#phi-context::t _$args5814_)))
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
    (lambda _$args5811_
      (apply make-struct-instance gx#top-context::t _$args5811_)))
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
    (lambda _$args5808_
      (apply make-struct-instance gx#module-context::t _$args5808_)))
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
    (lambda _$args5805_
      (apply make-struct-instance gx#prelude-context::t _$args5805_)))
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
    (lambda _$args5802_
      (apply make-struct-instance gx#local-context::t _$args5802_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5784
      (lambda (_self5786_ _id5787_ _super5788_)
        (struct-instance-init!
         _self5786_
         _id5787_
         (make-hash-table-eq)
         _super5788_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5793_ _id5794_)
          (let ((_super5796_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5784
             _self5793_
             _id5794_
             _super5796_))))
      (define gx#phi-context:::init!
        (lambda _g5824_
          (let ((_g5823_ (length _g5824_)))
            (cond ((fx= _g5823_ 2) (apply gx#phi-context:::init!__0 _g5824_))
                  ((fx= _g5823_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5784 _g5824_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g5824_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5770
      (lambda (_self5772_ _super5773_)
        (struct-instance-init!
         _self5772_
         (gensym 'L)
         (make-hash-table-eq)
         _super5773_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5778_)
          (let ((_super5780_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5770
             _self5778_
             _super5780_))))
      (define gx#local-context:::init!
        (lambda _g5826_
          (let ((_g5825_ (length _g5826_)))
            (cond ((fx= _g5825_ 1) (apply gx#local-context:::init!__0 _g5826_))
                  ((fx= _g5825_ 2)
                   (apply gx#local-context:::init!__opt-lambda5770 _g5826_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g5826_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5768_
      (apply make-struct-instance gx#binding::t _$args5768_)))
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
    (lambda _$args5765_
      (apply make-struct-instance gx#runtime-binding::t _$args5765_)))
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
    (lambda _$args5762_
      (apply make-struct-instance gx#local-binding::t _$args5762_)))
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
    (lambda _$args5759_
      (apply make-struct-instance gx#top-binding::t _$args5759_)))
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
    (lambda _$args5756_
      (apply make-struct-instance gx#module-binding::t _$args5756_)))
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
    (lambda _$args5753_
      (apply make-struct-instance gx#extern-binding::t _$args5753_)))
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
    (lambda _$args5750_
      (apply make-struct-instance gx#syntax-binding::t _$args5750_)))
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
    (lambda _$args5747_
      (apply make-struct-instance gx#import-binding::t _$args5747_)))
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
    (lambda _$args5744_
      (apply make-struct-instance gx#alias-binding::t _$args5744_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5741_
      (apply make-struct-instance gx#expander::t _$args5741_)))
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
    (lambda _$args5738_
      (apply make-struct-instance gx#core-expander::t _$args5738_)))
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
    (lambda _$args5735_
      (apply make-struct-instance gx#expression-form::t _$args5735_)))
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
    (lambda _$args5732_
      (apply make-struct-instance gx#special-form::t _$args5732_)))
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
    (lambda _$args5729_
      (apply make-struct-instance gx#definition-form::t _$args5729_)))
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
    (lambda _$args5726_
      (apply make-struct-instance gx#top-special-form::t _$args5726_)))
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
    (lambda _$args5723_
      (apply make-struct-instance gx#module-special-form::t _$args5723_)))
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
    (lambda _$args5720_
      (apply make-struct-instance gx#feature-expander::t _$args5720_)))
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
    (lambda _$args5717_
      (apply make-struct-instance gx#private-feature-expander::t _$args5717_)))
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
    (lambda _$args5714_
      (apply make-struct-instance gx#reserved-expander::t _$args5714_)))
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
    (lambda _$args5711_
      (apply make-struct-instance gx#macro-expander::t _$args5711_)))
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
    (lambda _$args5708_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5708_)))
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
    (lambda _$args5705_
      (apply make-struct-instance gx#user-expander::t _$args5705_)))
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
    (lambda _$args5702_
      (apply make-struct-instance gx#expander-mark::t _$args5702_)))
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
    (lambda _$args5699_
      (apply make-struct-instance gx#syntax-error::t _$args5699_)))
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
    (lambda (_where5694_ _message5695_ _stx5696_ . _details5697_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5695_
              (cons _stx5696_ _details5697_)
              _where5694_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5679
      (lambda (_stx5681_ _expression?5682_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5663 _stx5681_ _expression?5682_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5687_)
          (let ((_expression?5689_ '#f))
            (gx#eval-syntax__opt-lambda5679 _stx5687_ _expression?5689_))))
      (define gx#eval-syntax
        (lambda _g5828_
          (let ((_g5827_ (length _g5828_)))
            (cond ((fx= _g5827_ 1) (apply gx#eval-syntax__0 _g5828_))
                  ((fx= _g5827_ 2)
                   (apply gx#eval-syntax__opt-lambda5679 _g5828_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g5828_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5678_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5678_))))
  (begin
    (define gx#core-expand__opt-lambda5663
      (lambda (_stx5665_ _expression?5666_)
        (if _expression?5666_
            (gx#core-expand-expression _stx5665_)
            (gx#core-expand-top _stx5665_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5671_)
          (let ((_expression?5673_ '#f))
            (gx#core-expand__opt-lambda5663 _stx5671_ _expression?5673_))))
      (define gx#core-expand
        (lambda _g5830_
          (let ((_g5829_ (length _g5830_)))
            (cond ((fx= _g5829_ 1) (apply gx#core-expand__0 _g5830_))
                  ((fx= _g5829_ 2)
                   (apply gx#core-expand__opt-lambda5663 _g5830_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g5830_))))))))
  (define gx#core-expand-top
    (lambda (_stx5632_)
      (let* ((_stx5634_ (gx#core-expand*__0 _stx5632_))
             (_e56355642_ _stx5634_)
             (_E56375646_ (lambda () (gx#core-expand-expression _stx5634_)))
             (_E56365660_
              (lambda ()
                (if (gx#stx-pair? _e56355642_)
                    (let ((_e56385650_ (gx#syntax-e _e56355642_)))
                      (let ((_hd56395653_ (##car _e56385650_))
                            (_tl56405655_ (##cdr _e56385650_)))
                        (let ((_form5658_ _hd56395653_))
                          (if (gx#core-bound-identifier?__0 _form5658_)
                              _stx5634_
                              (_E56375646_)))))
                    (_E56375646_)))))
        (_E56365660_))))
  (define gx#core-expand-expression
    (lambda (_stx5554_)
      (letrec ((_sealed-expression?5556_
                (lambda (_hd5602_)
                  (if (gx#sealed-syntax? _hd5602_)
                      (let* ((_e56035610_ _hd5602_)
                             (_E56055614_ (lambda () '#f))
                             (_E56045628_
                              (lambda ()
                                (if (gx#stx-pair? _e56035610_)
                                    (let ((_e56065618_
                                           (gx#syntax-e _e56035610_)))
                                      (let ((_hd56075621_ (##car _e56065618_))
                                            (_tl56085623_ (##cdr _e56065618_)))
                                        (let ((_form5626_ _hd56075621_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4202
                                               _form5626_
                                               gx#expression-form-binding?)
                                              (_E56055614_)))))
                                    (_E56055614_)))))
                        (_E56045628_))
                      '#f)))
               (_illegal-expression5557_
                (lambda (_hd5600_ . _g5831_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx5554_
                   _hd5600_)))
               (_expand-e5558_
                (lambda (_form5595_ _hd5596_)
                  (let ((_bind5598_
                         (if (##structure-instance-of?
                              _form5595_
                              'gx#binding::t)
                             _form5595_
                             (gx#resolve-identifier__0 _form5595_))))
                    (if (gx#core-expander-binding? _bind5598_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind5598_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd5596_
                          (gx#stx-source _stx5554_)))
                        (if (##structure-direct-instance-of?
                             _bind5598_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind5598_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd5596_
                               (gx#stx-source _stx5554_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx5554_
                             _form5595_)))))))
        (let ((_hd5560_ (gx#core-expand-head _stx5554_)))
          (if (_sealed-expression?5556_ _hd5560_)
              _hd5560_
              (if (gx#stx-pair? _hd5560_)
                  (let* ((_e55615568_ _hd5560_)
                         (_E55635572_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e55615568_)))
                         (_E55625591_
                          (lambda ()
                            (if (gx#stx-pair? _e55615568_)
                                (let ((_e55645576_ (gx#syntax-e _e55615568_)))
                                  (let ((_hd55655579_ (##car _e55645576_))
                                        (_tl55665581_ (##cdr _e55645576_)))
                                    (let ((_form5584_ _hd55655579_))
                                      (if '#t
                                          (let ((_bind5586_
                                                 (if (gx#identifier?
                                                      _form5584_)
                                                     (gx#resolve-identifier__0
                                                      _form5584_)
                                                     '#f)))
                                            (if (let ((_$e5588_
                                                       (not _bind5586_)))
                                                  (if _$e5588_
                                                      _$e5588_
                                                      (not (gx#core-expander-binding?
                                                            _bind5586_))))
                                                (_expand-e5558_
                                                 '%%app
                                                 (cons '%%app _hd5560_))
                                                (if (eq? (##structure-ref
                                                          _bind5586_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd5560_
                                                     _illegal-expression5557_)
                                                    (if (gx#expression-form-binding?
                                                         _bind5586_)
                                                        (_expand-e5558_
                                                         _bind5586_
                                                         _hd5560_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind5586_)
                                                            (gx#core-expand-expression
                                                             (_expand-e5558_
                                                              _bind5586_
                                                              _hd5560_))
                                                            (_illegal-expression5557_
                                                             _hd5560_))))))
                                          (_E55635572_)))))
                                (_E55635572_)))))
                    (_E55625591_))
                  (if (gx#core-bound-identifier?__0 _hd5560_)
                      (_illegal-expression5557_ _hd5560_)
                      (if (gx#identifier? _hd5560_)
                          (_expand-e5558_
                           '%%ref
                           (cons '%%ref (cons _hd5560_ '())))
                          (if (gx#stx-datum? _hd5560_)
                              (_expand-e5558_
                               '%#quote
                               (cons '%#quote (cons _hd5560_ '())))
                              (_illegal-expression5557_ _hd5560_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5549_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5552_ (gx#core-expand-expression _stx5549_)))
           (values _stx5552_ (gx#eval-syntax* _stx5552_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5528
      (lambda (_stx5530_ _stop?5531_)
        (let _lp5533_ ((_stx5535_ _stx5530_))
          (if (_stop?5531_ _stx5535_)
              _stx5535_
              (let ((_rstx5537_ (gx#core-expand1 _stx5535_)))
                (if (eq? _stx5535_ _rstx5537_)
                    _stx5535_
                    (_lp5533_ _rstx5537_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5542_)
          (let ((_stop?5544_ false))
            (gx#core-expand*__opt-lambda5528 _stx5542_ _stop?5544_))))
      (define gx#core-expand*
        (lambda _g5833_
          (let ((_g5832_ (length _g5833_)))
            (cond ((fx= _g5832_ 1) (apply gx#core-expand*__0 _g5833_))
                  ((fx= _g5832_ 2)
                   (apply gx#core-expand*__opt-lambda5528 _g5833_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g5833_))))))))
  (define gx#core-expand1
    (lambda (_stx5486_)
      (letrec ((_step5488_
                (lambda (_hd5525_)
                  (let ((_bind5527_ (gx#resolve-identifier__0 _hd5525_)))
                    (if (##structure-instance-of?
                         _bind5527_
                         'gx#runtime-binding::t)
                        _stx5486_
                        (if (##structure-direct-instance-of?
                             _bind5527_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind5527_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx5486_)
                            (if (not _bind5527_)
                                _stx5486_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx5486_))))))))
        (let* ((_e54895497_ _stx5486_)
               (_E54955501_ (lambda () _stx5486_))
               (_E54915507_
                (lambda ()
                  (let ((_hd5505_ _e54895497_))
                    (if (gx#identifier? _hd5505_)
                        (_step5488_ _hd5505_)
                        (_E54955501_)))))
               (_E54905521_
                (lambda ()
                  (if (gx#stx-pair? _e54895497_)
                      (let ((_e54925511_ (gx#syntax-e _e54895497_)))
                        (let ((_hd54935514_ (##car _e54925511_))
                              (_tl54945516_ (##cdr _e54925511_)))
                          (let ((_hd5519_ _hd54935514_))
                            (if (gx#identifier? _hd5519_)
                                (_step5488_ _hd5519_)
                                (_E54915507_)))))
                      (_E54915507_)))))
          (_E54905521_)))))
  (define gx#core-expand-head
    (lambda (_stx5452_)
      (letrec ((_stop?5454_
                (lambda (_stx5456_)
                  (let* ((_e54575464_ _stx5456_)
                         (_E54595468_ (lambda () '#f))
                         (_E54585482_
                          (lambda ()
                            (if (gx#stx-pair? _e54575464_)
                                (let ((_e54605472_ (gx#syntax-e _e54575464_)))
                                  (let ((_hd54615475_ (##car _e54605472_))
                                        (_tl54625477_ (##cdr _e54605472_)))
                                    (let ((_hd5480_ _hd54615475_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5480_)
                                          (_E54595468_)))))
                                (_E54595468_)))))
                    (_E54585482_)))))
        (gx#core-expand*__opt-lambda5528 _stx5452_ _stop?5454_))))
  (begin
    (define gx#core-expand-block__opt-lambda5256
      (lambda (_stx5258_ _expand-special5259_ _begin-form5260_ _expand-e5261_)
        (letrec ((_expand-splice5263_
                  (lambda (_hd5426_ _body5427_ _rest5428_ _r5429_)
                    (if (gx#stx-list? _body5427_)
                        (_K5267_ (gx#stx-foldr cons _rest5428_ _body5427_)
                                 _r5429_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5258_
                         _hd5426_))))
                 (_expand-cond-expand5264_
                  (lambda (_hd5422_ _rest5423_ _r5424_)
                    (_K5267_ (cons (gx#core-expand-cond-expand% _hd5422_)
                                   _rest5423_)
                             _r5424_)))
                 (_expand-include5265_
                  (lambda (_hd5371_ _rest5372_ _r5373_)
                    (let* ((_e53745384_ _hd5371_)
                           (_E53765388_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e53745384_)))
                           (_E53755418_
                            (lambda ()
                              (if (gx#stx-pair? _e53745384_)
                                  (let ((_e53775392_
                                         (gx#syntax-e _e53745384_)))
                                    (let ((_hd53785395_ (##car _e53775392_))
                                          (_tl53795397_ (##cdr _e53775392_)))
                                      (if (gx#stx-pair? _tl53795397_)
                                          (let ((_e53805400_
                                                 (gx#syntax-e _tl53795397_)))
                                            (let ((_hd53815403_
                                                   (##car _e53805400_))
                                                  (_tl53825405_
                                                   (##cdr _e53805400_)))
                                              (let ((_path5408_ _hd53815403_))
                                                (if (gx#stx-null? _tl53825405_)
                                                    (if (gx#stx-string?
                                                         _path5408_)
                                                        (let* ((_rpath5410_
                                                                (gx#core-resolve-path__opt-lambda4112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path5408_
                         (gx#stx-source _hd5371_)))
                       (_block5412_
                        (gx#core-expand-include%__opt-lambda5005
                         _hd5371_
                         _rpath5410_))
                       (_rbody5415_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__opt-lambda5256
                            _block5412_
                            _expand-special5259_
                            '#f
                            _expand-e5261_))
                         gx#current-expander-path
                         (cons _rpath5410_ (gx#current-expander-path)))))
                  (_K5267_ _rest5372_ (foldr1 cons _r5373_ _rbody5415_)))
                (_E53765388_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E53765388_)))))
                                          (_E53765388_))))
                                  (_E53765388_)))))
                      (_E53755418_))))
                 (_expand-expression5266_
                  (lambda (_hd5367_ _rest5368_ _r5369_)
                    (_K5267_ _rest5368_
                             (cons (_expand-e5261_ _hd5367_) _r5369_))))
                 (_K5267_ (lambda (_rest5297_ _r5298_)
                            (let* ((_e52995306_ _rest5297_)
                                   (_E53015310_
                                    (lambda ()
                                      (if _begin-form5260_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form5260_
                                            (reverse _r5298_))
                                           (gx#stx-source _stx5258_))
                                          _r5298_)))
                                   (_E53005363_
                                    (lambda ()
                                      (if (gx#stx-pair? _e52995306_)
                                          (let ((_e53025314_
                                                 (gx#syntax-e _e52995306_)))
                                            (let ((_hd53035317_
                                                   (##car _e53025314_))
                                                  (_tl53045319_
                                                   (##cdr _e53025314_)))
                                              (let* ((_hd5322_ _hd53035317_)
                                                     (_rest5324_ _tl53045319_))
                                                (if '#t
                                                    (let* ((_hd5326_
                                                            (gx#core-expand-head
                                                             _hd5322_))
                                                           (_e53275334_
                                                            _hd5326_)
                                                           (_E53295338_
                                                            (lambda ()
                                                              (_expand-expression5266_
                                                               _hd5326_
                                                               _rest5324_
                                                               _r5298_)))
                                                           (_E53285359_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e53275334_)
                          (let ((_e53305342_ (gx#syntax-e _e53275334_)))
                            (let ((_hd53315345_ (##car _e53305342_))
                                  (_tl53325347_ (##cdr _e53305342_)))
                              (let* ((_form5350_ _hd53315345_)
                                     (_body5352_ _tl53325347_))
                                (if '#t
                                    (let ((_bind5354_
                                           (if (gx#identifier? _form5350_)
                                               (gx#resolve-identifier__0
                                                _form5350_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind5354_)
                                          (let ((_$e5356_
                                                 (##structure-ref
                                                  _bind5354_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? _$e5356_ '%#begin)
                                                (_expand-splice5263_
                                                 _hd5326_
                                                 _body5352_
                                                 _rest5324_
                                                 _r5298_)
                                                (if (eq? _$e5356_
                                                         '%#cond-expand)
                                                    (_expand-cond-expand5264_
                                                     _hd5326_
                                                     _rest5324_
                                                     _r5298_)
                                                    (if (eq? _$e5356_
                                                             '%#include)
                                                        (_expand-include5265_
                                                         _hd5326_
                                                         _rest5324_
                                                         _r5298_)
                                                        (_expand-special5259_
                                                         _hd5326_
                                                         _K5267_
                                                         _rest5324_
                                                         _r5298_)))))
                                          (_expand-expression5266_
                                           _hd5326_
                                           _rest5324_
                                           _r5298_)))
                                    (_E53295338_)))))
                          (_E53295338_)))))
              (_E53285359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E53015310_)))))
                                          (_E53015310_)))))
                              (_E53005363_)))))
          (let* ((_e52685275_ _stx5258_)
                 (_E52705279_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e52685275_)))
                 (_E52695293_
                  (lambda ()
                    (if (gx#stx-pair? _e52685275_)
                        (let ((_e52715283_ (gx#syntax-e _e52685275_)))
                          (let ((_hd52725286_ (##car _e52715283_))
                                (_tl52735288_ (##cdr _e52715283_)))
                            (let ((_body5291_ _tl52735288_))
                              (if (gx#stx-list? _body5291_)
                                  (_K5267_ _body5291_ '())
                                  (_E52705279_)))))
                        (_E52705279_)))))
            (_E52695293_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5434_ _expand-special5435_)
          (let* ((_begin-form5437_ '%#begin)
                 (_expand-e5439_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5256
             _stx5434_
             _expand-special5435_
             _begin-form5437_
             _expand-e5439_))))
      (define gx#core-expand-block__1
        (lambda (_stx5441_ _expand-special5442_ _begin-form5443_)
          (let ((_expand-e5445_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5256
             _stx5441_
             _expand-special5442_
             _begin-form5443_
             _expand-e5445_))))
      (define gx#core-expand-block
        (lambda _g5835_
          (let ((_g5834_ (length _g5835_)))
            (cond ((fx= _g5834_ 2) (apply gx#core-expand-block__0 _g5835_))
                  ((fx= _g5834_ 3) (apply gx#core-expand-block__1 _g5835_))
                  ((fx= _g5834_ 4)
                   (apply gx#core-expand-block__opt-lambda5256 _g5835_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g5835_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5206_ _expand-special5207_)
      (let* ((_g52085219_
              (gx#core-expand-block__1 _stx5206_ _expand-special5207_ '#f))
             (_E52125223_
              (lambda () (error '"No clause matching" _g52085219_)))
             (_try-match52115234_
              (lambda ()
                (let* ((_K52135229_
                        (lambda (_body5227_)
                          (gx#core-quote-syntax__1
                           (gx#core-cons '%#begin (reverse _body5227_))
                           (gx#stx-source _stx5206_))))
                       (_body5232_ _g52085219_))
                  (_K52135229_ _body5232_))))
             (_try-match52105250_
              (lambda ()
                (let ((_K52145240_ (lambda (_expr5238_) _expr5238_)))
                  (if (##pair? _g52085219_)
                      (let ((_hd52155243_ (##car _g52085219_))
                            (_tl52165245_ (##cdr _g52085219_)))
                        (let ((_expr5248_ _hd52155243_))
                          (if (##null? _tl52165245_)
                              (_K52145240_ _expr5248_)
                              (_try-match52115234_))))
                      (_try-match52115234_)))))
             (_K52175254_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; empty block"
                 _stx5206_))))
        (if (##null? _g52085219_) (_K52175254_) (_try-match52105250_)))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5064_)
      (letrec ((_satisfied?5066_
                (lambda (_condition5164_)
                  (let* ((_e51655173_ _condition5164_)
                         (_E51685177_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e51655173_)))
                         (_E51675196_
                          (lambda ()
                            (if (gx#stx-pair? _e51655173_)
                                (let ((_e51695181_ (gx#syntax-e _e51655173_)))
                                  (let ((_hd51705184_ (##car _e51695181_))
                                        (_tl51715186_ (##cdr _e51695181_)))
                                    (let* ((_combinator5189_ _hd51705184_)
                                           (_body5191_ _tl51715186_))
                                      (if (gx#stx-list? _body5191_)
                                          (let ((_$e5193_
                                                 (gx#stx-e _combinator5189_)))
                                            (if (eq? _$e5193_ 'not)
                                                (not (gx#stx-ormap
                                                      _satisfied?5066_
                                                      _body5191_))
                                                (if (eq? _$e5193_ 'and)
                                                    (gx#stx-andmap
                                                     _satisfied?5066_
                                                     _body5191_)
                                                    (if (eq? _$e5193_ 'or)
                                                        (gx#stx-ormap
                                                         _satisfied?5066_
                                                         _body5191_)
                                                        (if (eq? _$e5193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'defined)
                    (gx#stx-andmap gx#core-resolve-identifier _body5191_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx5064_
                     _combinator5189_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E51685177_)))))
                                (_E51685177_))))
                         (_E51665202_
                          (lambda ()
                            (let ((_id5200_ _e51655173_))
                              (if (gx#identifier? _id5200_)
                                  (gx#core-bound-identifier?__opt-lambda4202
                                   _id5200_
                                   gx#feature-binding?)
                                  (_E51675196_))))))
                    (_E51665202_))))
               (_loop5067_
                (lambda (_rest5097_)
                  (let* ((_e50985106_ _rest5097_)
                         (_E51045110_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e50985106_)))
                         (_E51005114_
                          (lambda ()
                            (if (gx#stx-null? _e50985106_)
                                (if '#t '() (_E51045110_))
                                (_E51045110_))))
                         (_E50995160_
                          (lambda ()
                            (if (gx#stx-pair? _e50985106_)
                                (let ((_e51015118_ (gx#syntax-e _e50985106_)))
                                  (let ((_hd51025121_ (##car _e51015118_))
                                        (_tl51035123_ (##cdr _e51015118_)))
                                    (let* ((_hd5126_ _hd51025121_)
                                           (_rest5128_ _tl51035123_))
                                      (if '#t
                                          (let* ((_e51295136_ _hd5126_)
                                                 (_E51315140_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e51295136_)))
                                                 (_E51305156_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e51295136_)
                                                        (let ((_e51325144_
                                                               (gx#syntax-e
                                                                _e51295136_)))
                                                          (let ((_hd51335147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e51325144_))
                        (_tl51345149_ (##cdr _e51325144_)))
                    (let* ((_condition5152_ _hd51335147_)
                           (_body5154_ _tl51345149_))
                      (if '#t
                          (if (gx#stx-eq? _condition5152_ 'else)
                              (if (gx#stx-null? _rest5128_)
                                  _body5154_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx5064_
                                   _hd5126_))
                              (if (_satisfied?5066_ _condition5152_)
                                  _body5154_
                                  (_loop5067_ _rest5128_)))
                          (_E51315140_)))))
                (_E51315140_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E51305156_))
                                          (_E51005114_)))))
                                (_E51005114_)))))
                    (_E50995160_)))))
        (let* ((_e50685075_ _stx5064_)
               (_E50705079_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e50685075_)))
               (_E50695093_
                (lambda ()
                  (if (gx#stx-pair? _e50685075_)
                      (let ((_e50715083_ (gx#syntax-e _e50685075_)))
                        (let ((_hd50725086_ (##car _e50715083_))
                              (_tl50735088_ (##cdr _e50715083_)))
                          (let ((_clauses5091_ _tl50735088_))
                            (if (gx#stx-list? _clauses5091_)
                                (gx#core-cons
                                 'begin
                                 (_loop5067_ _clauses5091_))
                                (_E50705079_)))))
                      (_E50705079_)))))
          (_E50695093_)))))
  (begin
    (define gx#core-expand-include%__opt-lambda5005
      (lambda (_stx5007_ _rpath5008_)
        (let* ((_e50095019_ _stx5007_)
               (_E50115023_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e50095019_)))
               (_E50105050_
                (lambda ()
                  (if (gx#stx-pair? _e50095019_)
                      (let ((_e50125027_ (gx#syntax-e _e50095019_)))
                        (let ((_hd50135030_ (##car _e50125027_))
                              (_tl50145032_ (##cdr _e50125027_)))
                          (if (gx#stx-pair? _tl50145032_)
                              (let ((_e50155035_ (gx#syntax-e _tl50145032_)))
                                (let ((_hd50165038_ (##car _e50155035_))
                                      (_tl50175040_ (##cdr _e50155035_)))
                                  (let ((_path5043_ _hd50165038_))
                                    (if (gx#stx-null? _tl50175040_)
                                        (if (gx#stx-string? _path5043_)
                                            (let ((_rpath5048_
                                                   (let ((_$e5045_
                                                          _rpath5008_))
                                                     (if _$e5045_
                                                         _$e5045_
                                                         (gx#core-resolve-path__opt-lambda4112
                                                          _path5043_
                                                          (gx#stx-source
                                                           _stx5007_))))))
                                              (if (member _rpath5048_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx5007_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath5048_))
                                                    (gx#stx-source
                                                     _stx5007_)))))
                                            (_E50115023_))
                                        (_E50115023_)))))
                              (_E50115023_))))
                      (_E50115023_)))))
          (_E50105050_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5057_)
          (let ((_rpath5059_ '#f))
            (gx#core-expand-include%__opt-lambda5005 _stx5057_ _rpath5059_))))
      (define gx#core-expand-include%
        (lambda _g5837_
          (let ((_g5836_ (length _g5837_)))
            (cond ((fx= _g5836_ 1) (apply gx#core-expand-include%__0 _g5837_))
                  ((fx= _g5836_ 2)
                   (apply gx#core-expand-include%__opt-lambda5005 _g5837_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g5837_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4974
      (lambda (_K4976_ _stx4977_ _method4978_)
        (if (procedure? _K4976_)
            (let ((_$e4980_ (gx#stx-source _stx4977_)))
              (if _$e4980_
                  ((lambda (_g49824984_)
                     (gx#stx-wrap-source (_K4976_ _stx4977_) _g49824984_))
                   _$e4980_)
                  (_K4976_ _stx4977_)))
            (let ((_$e4987_ (bound-method-ref _K4976_ _method4978_)))
              (if _$e4987_
                  ((lambda (_g49894991_)
                     (gx#core-apply-expander__opt-lambda4974
                      _g49894991_
                      _stx4977_
                      _method4978_))
                   _$e4987_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4977_
                   _method4978_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4997_ _stx4998_)
          (let ((_method5000_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4974
             _K4997_
             _stx4998_
             _method5000_))))
      (define gx#core-apply-expander
        (lambda _g5839_
          (let ((_g5838_ (length _g5839_)))
            (cond ((fx= _g5838_ 2) (apply gx#core-apply-expander__0 _g5839_))
                  ((fx= _g5838_ 3)
                   (apply gx#core-apply-expander__opt-lambda4974 _g5839_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g5839_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4972_ _stx4973_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4973_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4947_ _stx4948_)
      (let* ((_self49494955_ _self4947_)
             (_E49514959_
              (lambda () (error '"No clause matching" _self49494955_)))
             (_K49524964_
              (lambda (_K4962_)
                (gx#core-apply-expander__0 _K4962_ _stx4948_))))
        (if (##structure-instance-of?
             _self49494955_
             (##type-id gx#macro-expander::t))
            (let* ((_e49534967_ (##vector-ref _self49494955_ '1))
                   (_K4970_ _e49534967_))
              (_K49524964_ _K4970_))
            (_E49514959_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4922_ _stx4923_)
      (if (gx#sealed-syntax? _stx4923_)
          _stx4923_
          (let* ((_self49244930_ _self4922_)
                 (_E49264934_
                  (lambda () (error '"No clause matching" _self49244930_)))
                 (_K49274939_
                  (lambda (_K4937_)
                    (gx#core-apply-expander__0 _K4937_ _stx4923_))))
            (if (##structure-instance-of?
                 _self49244930_
                 (##type-id gx#core-expander::t))
                (let* ((_e49284942_ (##vector-ref _self49244930_ '1))
                       (_K4945_ _e49284942_))
                  (_K49274939_ _K4945_))
                (_E49264934_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4904
      (lambda (_self4906_ _stx4907_ _top?4908_)
        (if (_top?4908_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4906_ _stx4907_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4907_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4913_ _stx4914_)
          (let ((_top?4916_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4904
             _self4913_
             _stx4914_
             _top?4916_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5841_
          (let ((_g5840_ (length _g5841_)))
            (cond ((fx= _g5840_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5841_))
                  ((fx= _g5840_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4904
                          _g5841_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g5841_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4902_ _stx4903_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4904
       _self4902_
       _stx4903_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4849_ _stx4850_)
      (let* ((_self48514857_ _self4849_)
             (_E48534861_
              (lambda () (error '"No clause matching" _self48514857_)))
             (_K48544894_
              (lambda (_id4864_)
                (let* ((_e48654872_ _stx4850_)
                       (_E48674876_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e48654872_)))
                       (_E48664890_
                        (lambda ()
                          (if (gx#stx-pair? _e48654872_)
                              (let ((_e48684880_ (gx#syntax-e _e48654872_)))
                                (let ((_hd48694883_ (##car _e48684880_))
                                      (_tl48704885_ (##cdr _e48684880_)))
                                  (let ((_body4888_ _tl48704885_))
                                    (if '#t
                                        (gx#core-cons _id4864_ _body4888_)
                                        (_E48674876_)))))
                              (_E48674876_)))))
                  (_E48664890_)))))
        (if (##structure-instance-of?
             _self48514857_
             (##type-id gx#rename-macro-expander::t))
            (let* ((_e48554897_ (##vector-ref _self48514857_ '1))
                   (_id4900_ _e48554897_))
              (_K48544894_ _id4900_))
            (_E48534861_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4795
      (lambda (_self4797_ _stx4798_ _method4799_)
        (let* ((_self48004808_ _self4797_)
               (_E48024812_
                (lambda () (error '"No clause matching" _self48004808_)))
               (_K48034819_
                (lambda (_phi4815_ _ctx4816_ _K4817_)
                  (gx#core-apply-user-macro
                   _K4817_
                   _stx4798_
                   _ctx4816_
                   _phi4815_
                   _method4799_))))
          (if (##structure-instance-of?
               _self48004808_
               (##type-id gx#user-expander::t))
              (let* ((_e48044822_ (##vector-ref _self48004808_ '1))
                     (_K4825_ _e48044822_)
                     (_e48054827_ (##vector-ref _self48004808_ '2))
                     (_ctx4830_ _e48054827_)
                     (_e48064832_ (##vector-ref _self48004808_ '3))
                     (_phi4835_ _e48064832_))
                (_K48034819_ _phi4835_ _ctx4830_ _K4825_))
              (_E48024812_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4840_ _stx4841_)
          (let ((_method4843_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4795
             _self4840_
             _stx4841_
             _method4843_))))
      (define gx#core-apply-user-expander
        (lambda _g5843_
          (let ((_g5842_ (length _g5843_)))
            (cond ((fx= _g5842_ 2)
                   (apply gx#core-apply-user-expander__0 _g5843_))
                  ((fx= _g5842_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4795 _g5843_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g5843_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4787_ _stx4788_ _ctx4789_ _phi4790_ _method4791_)
      (let ((_mark4793_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4789_
              _phi4790_
              _stx4788_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4974
             _K4787_
             (gx#stx-apply-mark _stx4788_ _mark4793_)
             _method4791_)
            _mark4793_))
         gx#current-expander-marks
         (cons _mark4793_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4759
      (lambda (_stx4761_ _phi4762_ _ctx4763_)
        (let _lp4765_ ((_bind4767_
                        (gx#core-resolve-identifier__opt-lambda4689
                         _stx4761_
                         _phi4762_
                         _ctx4763_)))
          (if (##structure-direct-instance-of?
               _bind4767_
               'gx#import-binding::t)
              (_lp4765_
               (##direct-structure-ref _bind4767_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind4767_
                   'gx#alias-binding::t)
                  (_lp4765_
                   (gx#core-resolve-identifier__opt-lambda4689
                    (##direct-structure-ref
                     _bind4767_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi4762_
                    _ctx4763_))
                  _bind4767_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4772_)
          (let* ((_phi4774_ (gx#current-expander-phi))
                 (_ctx4776_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4759
             _stx4772_
             _phi4774_
             _ctx4776_))))
      (define gx#resolve-identifier__1
        (lambda (_stx4778_ _phi4779_)
          (let ((_ctx4781_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4759
             _stx4778_
             _phi4779_
             _ctx4781_))))
      (define gx#resolve-identifier
        (lambda _g5845_
          (let ((_g5844_ (length _g5845_)))
            (cond ((fx= _g5844_ 1) (apply gx#resolve-identifier__0 _g5845_))
                  ((fx= _g5844_ 2) (apply gx#resolve-identifier__1 _g5845_))
                  ((fx= _g5844_ 3)
                   (apply gx#resolve-identifier__opt-lambda4759 _g5845_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g5845_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4717
      (lambda (_stx4719_ _val4720_ _rebind?4721_ _phi4722_ _ctx4723_)
        (let ((_rebind?4725_
               (if (not _rebind?4721_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4721_) _rebind?4721_ true))))
          (gx#core-bind!__opt-lambda4478
           (gx#core-identifier-key _stx4719_)
           _val4720_
           _rebind?4725_
           _phi4722_
           _ctx4723_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4730_ _val4731_)
          (let* ((_rebind?4733_ '#f)
                 (_phi4735_ (gx#current-expander-phi))
                 (_ctx4737_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4717
             _stx4730_
             _val4731_
             _rebind?4733_
             _phi4735_
             _ctx4737_))))
      (define gx#bind-identifier!__1
        (lambda (_stx4739_ _val4740_ _rebind?4741_)
          (let* ((_phi4743_ (gx#current-expander-phi))
                 (_ctx4745_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4717
             _stx4739_
             _val4740_
             _rebind?4741_
             _phi4743_
             _ctx4745_))))
      (define gx#bind-identifier!__2
        (lambda (_stx4747_ _val4748_ _rebind?4749_ _phi4750_)
          (let ((_ctx4752_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4717
             _stx4747_
             _val4748_
             _rebind?4749_
             _phi4750_
             _ctx4752_))))
      (define gx#bind-identifier!
        (lambda _g5847_
          (let ((_g5846_ (length _g5847_)))
            (cond ((fx= _g5846_ 2) (apply gx#bind-identifier!__0 _g5847_))
                  ((fx= _g5846_ 3) (apply gx#bind-identifier!__1 _g5847_))
                  ((fx= _g5846_ 4) (apply gx#bind-identifier!__2 _g5847_))
                  ((fx= _g5846_ 5)
                   (apply gx#bind-identifier!__opt-lambda4717 _g5847_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g5847_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4689
      (lambda (_stx4691_ _phi4692_ _ctx4693_)
        (let _lp4695_ ((_e4697_ _stx4691_)
                       (_marks4698_ (gx#current-expander-marks)))
          (if (symbol? _e4697_)
              (gx#core-resolve-binding
               _e4697_
               _phi4692_
               _phi4692_
               _ctx4693_
               (reverse _marks4698_))
              (if (gx#identifier-quote? _e4697_)
                  (gx#core-resolve-binding
                   (##structure-ref _e4697_ '1 AST::t '#f)
                   _phi4692_
                   '0
                   (##direct-structure-ref _e4697_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e4697_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e4697_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e4697_ '1 AST::t '#f)
                       _phi4692_
                       _phi4692_
                       _ctx4693_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4697_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4698_))
                      (if (##structure-direct-instance-of?
                           _e4697_
                           'gx#syntax-wrap::t)
                          (_lp4695_
                           (##structure-ref _e4697_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e4697_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks4698_))
                          (if (##structure-instance-of? _e4697_ 'gerbil#AST::t)
                              (_lp4695_
                               (##structure-ref _e4697_ '1 AST::t '#f)
                               _marks4698_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx4691_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4703_)
          (let* ((_phi4705_ (gx#current-expander-phi))
                 (_ctx4707_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4689
             _stx4703_
             _phi4705_
             _ctx4707_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4709_ _phi4710_)
          (let ((_ctx4712_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4689
             _stx4709_
             _phi4710_
             _ctx4712_))))
      (define gx#core-resolve-identifier
        (lambda _g5849_
          (let ((_g5848_ (length _g5849_)))
            (cond ((fx= _g5848_ 1)
                   (apply gx#core-resolve-identifier__0 _g5849_))
                  ((fx= _g5848_ 2)
                   (apply gx#core-resolve-identifier__1 _g5849_))
                  ((fx= _g5848_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4689 _g5849_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g5849_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4604_ _phi4605_ _src-phi4606_ _ctx4607_ _marks4608_)
      (letrec ((_resolve4610_
                (lambda (_ctx4678_ _src-phi4679_ _key4680_)
                  (let _lp4682_ ((_ctx4684_
                                  (gx#core-context-shift _ctx4678_ _phi4605_))
                                 (_dphi4685_ (fx- _phi4605_ _src-phi4679_)))
                    (let ((_$e4687_
                           (gx#core-context-resolve _ctx4684_ _key4680_)))
                      (if _$e4687_
                          (values _$e4687_)
                          (if (fxzero? _dphi4685_)
                              '#f
                              (if (fxpositive? _dphi4685_)
                                  (_lp4682_
                                   (gx#core-context-shift _ctx4684_ '-1)
                                   (fx- _dphi4685_ '1))
                                  (if (fxnegative? _dphi4685_)
                                      (_lp4682_
                                       (gx#core-context-shift _ctx4684_ '1)
                                       (fx+ _dphi4685_ '1))
                                      '#!void)))))))))
        (let _lp4612_ ((_ctx4614_ _ctx4607_)
                       (_src-phi4615_ _src-phi4606_)
                       (_rest4616_ _marks4608_))
          (let* ((_rest46174625_ _rest4616_)
                 (_E46204629_
                  (lambda () (error '"No clause matching" _rest46174625_)))
                 (_else46194633_
                  (lambda () (_resolve4610_ _ctx4614_ _src-phi4615_ _id4604_)))
                 (_K46214666_
                  (lambda (_rest4636_ _hd4637_)
                    (let* ((_hd46384644_ _hd4637_)
                           (_E46404648_
                            (lambda ()
                              (error '"No clause matching" _hd46384644_)))
                           (_K46414658_
                            (lambda (_subst4651_)
                              (let ((_$e4655_
                                     (let ((_key4653_
                                            (if _subst4651_
                                                (table-ref
                                                 _subst4651_
                                                 _id4604_
                                                 '#f)
                                                '#f)))
                                       (if _key4653_
                                           (_resolve4610_
                                            _ctx4614_
                                            _src-phi4615_
                                            _key4653_)
                                           '#f))))
                                (if _$e4655_
                                    _$e4655_
                                    (_lp4612_
                                     (##structure-ref
                                      _hd4637_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd4637_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest4636_))))))
                      (if (##structure-instance-of?
                           _hd46384644_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e46424661_ (##vector-ref _hd46384644_ '1))
                                 (_subst4664_ _e46424661_))
                            (_K46414658_ _subst4664_))
                          (_E46404648_))))))
            (if (##pair? _rest46174625_)
                (let ((_hd46224669_ (##car _rest46174625_))
                      (_tl46234671_ (##cdr _rest46174625_)))
                  (let* ((_hd4674_ _hd46224669_) (_rest4676_ _tl46234671_))
                    (_K46214666_ _rest4676_ _hd4674_)))
                (_else46194633_)))))))
  (begin
    (define gx#core-bind!__opt-lambda4478
      (lambda (_key4480_ _val4481_ _rebind?4482_ _phi4483_ _ctx4484_)
        (letrec ((_update-binding4486_
                  (lambda (_xval4557_)
                    (if (let ((_$e4559_
                               (_rebind?4482_ _ctx4484_ _xval4557_ _val4481_)))
                          (if _$e4559_
                              _$e4559_
                              (let ((_$e4565_
                                     (if (##structure-direct-instance-of?
                                          _xval4557_
                                          'gx#import-binding::t)
                                         (let ((_$e4562_
                                                (##direct-structure-ref
                                                 _xval4557_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e4562_
                                               _$e4562_
                                               (if (##structure-instance-of?
                                                    _val4481_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val4481_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e4565_
                                    _$e4565_
                                    (if (##structure-instance-of?
                                         _xval4557_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val4481_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val4481_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval4557_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val4481_
                        (if (if (##structure-direct-instance-of?
                                 _val4481_
                                 'gx#import-binding::t)
                                (let ((_$e4568_
                                       (##direct-structure-ref
                                        _val4481_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e4568_
                                      _$e4568_
                                      (if (##structure-instance-of?
                                           _xval4557_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val4481_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval4557_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval4557_
                            (if (if (##structure-direct-instance-of?
                                     _val4481_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval4557_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key4480_
                                 (cons (##structure-ref
                                        _val4481_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val4481_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval4557_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval4557_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval4557_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval4557_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key4480_
                                 _val4481_
                                 _xval4557_))))))
                 (_gensubst4487_
                  (lambda (_subst4552_ _id4553_)
                    (let ((_eid4555_
                           (gensym (if (uninterned-symbol? _id4553_)
                                       '%
                                       _id4553_))))
                      (begin
                        (table-set! _subst4552_ _id4553_ _eid4555_)
                        _eid4555_))))
                 (_subst!4488_
                  (lambda (_key4490_)
                    (let* ((_key44914499_ _key4490_)
                           (_E44944503_
                            (lambda ()
                              (error '"No clause matching" _key44914499_)))
                           (_else44934507_ (lambda () _key4490_))
                           (_K44954540_
                            (lambda (_mark4510_ _id4511_)
                              (let* ((_mark45124518_ _mark4510_)
                                     (_E45144522_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark45124518_)))
                                     (_K45154532_
                                      (lambda (_subst4525_)
                                        (if (not _subst4525_)
                                            (let ((_subst4527_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark4510_
                                                 _subst4527_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst4487_
                                                 _subst4527_
                                                 _id4511_)))
                                            (let ((_$e4529_
                                                   (table-ref
                                                    _subst4525_
                                                    _id4511_
                                                    '#f)))
                                              (if _$e4529_
                                                  (values _$e4529_)
                                                  (_gensubst4487_
                                                   _subst4525_
                                                   _id4511_)))))))
                                (if (##structure-instance-of?
                                     _mark45124518_
                                     (##type-id gx#expander-mark::t))
                                    (let* ((_e45164535_
                                            (##vector-ref _mark45124518_ '1))
                                           (_subst4538_ _e45164535_))
                                      (_K45154532_ _subst4538_))
                                    (_E45144522_))))))
                      (if (##pair? _key44914499_)
                          (let ((_hd44964543_ (##car _key44914499_))
                                (_tl44974545_ (##cdr _key44914499_)))
                            (let* ((_id4548_ _hd44964543_)
                                   (_mark4550_ _tl44974545_))
                              (_K44954540_ _mark4550_ _id4548_)))
                          (_else44934507_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx4484_ _phi4483_)
           (_subst!4488_ _key4480_)
           _val4481_
           _update-binding4486_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4574_ _val4575_)
          (let* ((_rebind?4577_ false)
                 (_phi4579_ (gx#current-expander-phi))
                 (_ctx4581_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4478
             _key4574_
             _val4575_
             _rebind?4577_
             _phi4579_
             _ctx4581_))))
      (define gx#core-bind!__1
        (lambda (_key4583_ _val4584_ _rebind?4585_)
          (let* ((_phi4587_ (gx#current-expander-phi))
                 (_ctx4589_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4478
             _key4583_
             _val4584_
             _rebind?4585_
             _phi4587_
             _ctx4589_))))
      (define gx#core-bind!__2
        (lambda (_key4591_ _val4592_ _rebind?4593_ _phi4594_)
          (let ((_ctx4596_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4478
             _key4591_
             _val4592_
             _rebind?4593_
             _phi4594_
             _ctx4596_))))
      (define gx#core-bind!
        (lambda _g5851_
          (let ((_g5850_ (length _g5851_)))
            (cond ((fx= _g5850_ 2) (apply gx#core-bind!__0 _g5851_))
                  ((fx= _g5850_ 3) (apply gx#core-bind!__1 _g5851_))
                  ((fx= _g5850_ 4) (apply gx#core-bind!__2 _g5851_))
                  ((fx= _g5850_ 5)
                   (apply gx#core-bind!__opt-lambda4478 _g5851_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g5851_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4410_)
      (if (symbol? _stx4410_)
          (let* ((_g44114419_ (gx#current-expander-marks))
                 (_E44144423_
                  (lambda () (error '"No clause matching" _g44114419_)))
                 (_else44134427_ (lambda () _stx4410_))
                 (_K44154432_ (lambda (_hd4430_) (cons _stx4410_ _hd4430_))))
            (if (##pair? _g44114419_)
                (let ((_hd44164435_ (##car _g44114419_))
                      (_tl44174437_ (##cdr _g44114419_)))
                  (let ((_hd4440_ _hd44164435_)) (_K44154432_ _hd4440_)))
                (_else44134427_)))
          (if (gx#identifier? _stx4410_)
              (let* ((_id4442_ (gx#syntax-local-unwrap _stx4410_))
                     (_eid4444_ (gx#stx-e _id4442_))
                     (_marks4446_ (gx#stx-identifier-marks _id4442_)))
                (let* ((_marks44484456_ _marks4446_)
                       (_E44514460_
                        (lambda ()
                          (error '"No clause matching" _marks44484456_)))
                       (_else44504464_ (lambda () _eid4444_))
                       (_K44524469_
                        (lambda (_hd4467_) (cons _eid4444_ _hd4467_))))
                  (if (##pair? _marks44484456_)
                      (let ((_hd44534472_ (##car _marks44484456_))
                            (_tl44544474_ (##cdr _marks44484456_)))
                        (let ((_hd4477_ _hd44534472_)) (_K44524469_ _hd4477_)))
                      (_else44504464_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4410_)))))
  (define gx#core-context-shift
    (lambda (_ctx4355_ _phi4356_)
      (letrec ((_make-phi4358_
                (lambda (_super4408_)
                  (let ((__obj5822 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__opt-lambda5784
                       __obj5822
                       (gensym 'phi)
                       _super4408_)
                      __obj5822))))
               (_make-phi/up4359_
                (lambda (_ctx4403_ _super4404_)
                  (let ((_ctx+14406_ (_make-phi4358_ _super4404_)))
                    (begin
                      (##structure-set!
                       _ctx4403_
                       _ctx+14406_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+14406_
                       _ctx4403_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+14406_))))
               (_make-phi/down4360_
                (lambda (_ctx4398_ _super4399_)
                  (let ((_ctx-14401_ (_make-phi4358_ _super4399_)))
                    (begin
                      (##structure-set!
                       _ctx-14401_
                       _ctx4398_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx4398_
                       _ctx-14401_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-14401_))))
               (_shift4361_
                (lambda (_ctx4382_
                         _delta4383_
                         _make-delta-context4384_
                         _phi4385_
                         _K4386_)
                  (let ((_$e4388_
                         (##structure-ref _ctx4382_ '3 gx#phi-context::t '#f)))
                    (if _$e4388_
                        ((lambda (_super4391_)
                           (let* ((_super4393_
                                   (_K4386_ _super4391_ _delta4383_))
                                  (_ctx+d4395_
                                   (_make-delta-context4384_
                                    _ctx4382_
                                    _super4393_)))
                             (_K4386_ _ctx+d4395_
                                      (fx- _phi4385_ _delta4383_))))
                         _$e4388_)
                        (error '"Bad context" _ctx4382_))))))
        (let _K4363_ ((_ctx4365_ _ctx4355_) (_phi4366_ _phi4356_))
          (if (fxzero? _phi4366_)
              _ctx4365_
              (if (##structure-instance-of? _ctx4365_ 'gx#context-phi::t)
                  (if (fxpositive? _phi4366_)
                      (let ((_$e4368_
                             (##structure-ref
                              _ctx4365_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e4368_
                            ((lambda (_g43704372_)
                               (_K4363_ _g43704372_ (fx- _phi4366_ '1)))
                             _$e4368_)
                            (_shift4361_
                             _ctx4365_
                             '1
                             _make-phi/up4359_
                             _phi4366_
                             _K4363_)))
                      (let ((_$e4375_
                             (##structure-ref
                              _ctx4365_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e4375_
                            ((lambda (_g43774379_)
                               (_K4363_ _g43774379_ (fx+ _phi4366_ '1)))
                             _$e4375_)
                            (_shift4361_
                             _ctx4365_
                             '-1
                             _make-phi/down4360_
                             _phi4366_
                             _K4363_))))
                  _ctx4365_))))))
  (define gx#core-context-get
    (lambda (_ctx4352_ _key4353_)
      (table-ref
       (##structure-ref _ctx4352_ '2 gx#expander-context::t '#f)
       _key4353_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4348_ _key4349_ _val4350_)
      (table-set!
       (##structure-ref _ctx4348_ '2 gx#expander-context::t '#f)
       _key4349_
       _val4350_)))
  (define gx#core-context-resolve
    (lambda (_ctx4335_ _key4336_)
      (let _lp4338_ ((_ctx4340_ _ctx4335_))
        (let ((_$e4342_ (gx#core-context-get _ctx4340_ _key4336_)))
          (if _$e4342_
              (values _$e4342_)
              (let ((_$e4345_
                     (if (##structure-instance-of?
                          _ctx4340_
                          'gx#context-phi::t)
                         (##structure-ref _ctx4340_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e4345_ (_lp4338_ _$e4345_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx4325_ _key4326_ _val4327_ _rebind4328_)
      (let ((_$e4330_ (gx#core-context-get _ctx4325_ _key4326_)))
        (if _$e4330_
            ((lambda (_xval4333_)
               (gx#core-context-put!
                _ctx4325_
                _key4326_
                (_rebind4328_ _xval4333_)))
             _$e4330_)
            (gx#core-context-put! _ctx4325_ _key4326_ _val4327_)))))
  (begin
    (define gx#core-context-top__opt-lambda4301
      (lambda (_ctx4303_ _stop?4304_)
        (let _lp4306_ ((_ctx4308_ _ctx4303_))
          (if (_stop?4304_ _ctx4308_)
              _ctx4308_
              (if (##structure-instance-of? _ctx4308_ 'gx#context-phi::t)
                  (_lp4306_
                   (##structure-ref _ctx4308_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx4314_ (gx#current-expander-context))
                 (_stop?4316_ gx#top-context?))
            (gx#core-context-top__opt-lambda4301 _ctx4314_ _stop?4316_))))
      (define gx#core-context-top__1
        (lambda (_ctx4318_)
          (let ((_stop?4320_ gx#top-context?))
            (gx#core-context-top__opt-lambda4301 _ctx4318_ _stop?4320_))))
      (define gx#core-context-top
        (lambda _g5853_
          (let ((_g5852_ (length _g5853_)))
            (cond ((fx= _g5852_ 0) (apply gx#core-context-top__0 _g5853_))
                  ((fx= _g5852_ 1) (apply gx#core-context-top__1 _g5853_))
                  ((fx= _g5852_ 2)
                   (apply gx#core-context-top__opt-lambda4301 _g5853_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g5853_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4286
      (lambda (_ctx4288_)
        (let _lp4290_ ((_ctx4292_ _ctx4288_))
          (if (##structure-instance-of? _ctx4292_ 'gx#context-phi::t)
              (_lp4290_ (##structure-ref _ctx4292_ '3 gx#phi-context::t '#f))
              _ctx4292_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4298_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4286 _ctx4298_))))
      (define gx#core-context-root
        (lambda _g5855_
          (let ((_g5854_ (length _g5855_)))
            (cond ((fx= _g5854_ 0) (apply gx#core-context-root__0 _g5855_))
                  ((fx= _g5854_ 1)
                   (apply gx#core-context-root__opt-lambda4286 _g5855_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g5855_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4270
      (lambda (_ctx4272_ . __42694273_)
        (if (##structure-instance-of? _ctx4272_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4272_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4272_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4280_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4270 _ctx4280_))))
      (define gx#core-context-rebind?
        (lambda _g5857_
          (let ((_g5856_ (length _g5857_)))
            (cond ((fx= _g5856_ 0) (apply gx#core-context-rebind?__0 _g5857_))
                  ((fx= _g5856_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4270 _g5857_))
                  ((fx>= _g5856_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4270 _g5857_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g5857_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4253
      (lambda (_ctx4255_)
        (let ((_$e4257_ (gx#core-context-top__1 _ctx4255_)))
          (if _$e4257_
              ((lambda (_ctx4260_)
                 (if (##structure-instance-of? _ctx4260_ 'gx#module-context::t)
                     (##structure-ref _ctx4260_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4257_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4266_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4253 _ctx4266_))))
      (define gx#core-context-namespace
        (lambda _g5859_
          (let ((_g5858_ (length _g5859_)))
            (cond ((fx= _g5858_ 0)
                   (apply gx#core-context-namespace__0 _g5859_))
                  ((fx= _g5858_ 1)
                   (apply gx#core-context-namespace__opt-lambda4253 _g5859_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g5859_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4239
      (lambda (_bind4241_ _is?4242_)
        (if (##structure-direct-instance-of? _bind4241_ 'gx#syntax-binding::t)
            (_is?4242_
             (##direct-structure-ref _bind4241_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4247_)
          (let ((_is?4249_ gx#expander?))
            (gx#expander-binding?__opt-lambda4239 _bind4247_ _is?4249_))))
      (define gx#expander-binding?
        (lambda _g5861_
          (let ((_g5860_ (length _g5861_)))
            (cond ((fx= _g5860_ 1) (apply gx#expander-binding?__0 _g5861_))
                  ((fx= _g5860_ 2)
                   (apply gx#expander-binding?__opt-lambda4239 _g5861_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g5861_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4238_)
      (gx#expander-binding?__opt-lambda4239 _bind4238_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4236_)
      (gx#expander-binding?__opt-lambda4239 _bind4236_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4230_)
      (letrec ((_direct-special-form?4232_
                (lambda (_obj4234_)
                  (##structure-direct-instance-of?
                   _obj4234_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__opt-lambda4239
         _bind4230_
         _direct-special-form?4232_))))
  (define gx#special-form-binding?
    (lambda (_bind4228_)
      (gx#expander-binding?__opt-lambda4239 _bind4228_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4219_)
      (letrec ((_feature?4221_
                (lambda (_e4223_)
                  (let ((_$e4225_
                         (##structure-instance-of?
                          _e4223_
                          'gx#feature-expander::t)))
                    (if _$e4225_
                        _$e4225_
                        (##structure-instance-of?
                         _e4223_
                         'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4239 _bind4219_ _feature?4221_))))
  (define gx#private-feature-binding?
    (lambda (_bind4217_)
      (gx#expander-binding?__opt-lambda4239
       _bind4217_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4202
      (lambda (_id4204_ _bound?4205_)
        (if (gx#identifier? _id4204_)
            (_bound?4205_ (gx#resolve-identifier__0 _id4204_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4210_)
          (let ((_bound?4212_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4202
             _id4210_
             _bound?4212_))))
      (define gx#core-bound-identifier?
        (lambda _g5863_
          (let ((_g5862_ (length _g5863_)))
            (cond ((fx= _g5862_ 1)
                   (apply gx#core-bound-identifier?__0 _g5863_))
                  ((fx= _g5862_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4202 _g5863_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g5863_))))))))
  (define gx#core-identifier=?
    (lambda (_x4194_ _y4195_)
      (letrec ((_y=?4197_
                (lambda (_xid4201_)
                  ((if (list? _y4195_) memq eq?) _xid4201_ _y4195_))))
        (let ((_bind4199_ (gx#resolve-identifier__0 _x4194_)))
          (if (##structure-instance-of? _bind4199_ 'gx#binding::t)
              (_y=?4197_ (##structure-ref _bind4199_ '1 gx#binding::t '#f))
              (_y=?4197_ (gx#stx-e _x4194_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4192_)
      (if (interned-symbol? _e4192_)
          (string-index (symbol->string _e4192_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda4148
      (lambda (_stx4150_ _src4151_ _ctx4152_ _marks4153_)
        (if (gx#sealed-syntax? _stx4150_)
            (gx#stx-unwrap__0 _stx4150_)
            (if (gx#identifier? _stx4150_)
                (let ((_id4155_ (gx#syntax-local-unwrap _stx4150_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4155_)
                   (let ((_$e4157_ (gx#stx-source _id4155_)))
                     (if _$e4157_ _$e4157_ _src4151_))
                   _ctx4152_
                   (##direct-structure-ref
                    _id4155_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4150_)
                    (gx#stx-e _stx4150_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4150_
                     (let ((_$e4160_ (gx#stx-source _stx4150_)))
                       (if _$e4160_ _$e4160_ _src4151_))
                     _ctx4152_
                     (reverse _marks4153_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4166_)
          (let* ((_src4168_ '#f)
                 (_ctx4170_ (gx#current-expander-context))
                 (_marks4172_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4148
             _stx4166_
             _src4168_
             _ctx4170_
             _marks4172_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4174_ _src4175_)
          (let* ((_ctx4177_ (gx#current-expander-context))
                 (_marks4179_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4148
             _stx4174_
             _src4175_
             _ctx4177_
             _marks4179_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4181_ _src4182_ _ctx4183_)
          (let ((_marks4185_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4148
             _stx4181_
             _src4182_
             _ctx4183_
             _marks4185_))))
      (define gx#core-quote-syntax
        (lambda _g5865_
          (let ((_g5864_ (length _g5865_)))
            (cond ((fx= _g5864_ 1) (apply gx#core-quote-syntax__0 _g5865_))
                  ((fx= _g5864_ 2) (apply gx#core-quote-syntax__1 _g5865_))
                  ((fx= _g5864_ 3) (apply gx#core-quote-syntax__2 _g5865_))
                  ((fx= _g5864_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4148 _g5865_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g5865_))))))))
  (define gx#core-cons
    (lambda (_hd4146_ _tl4147_)
      (cons (gx#core-quote-syntax__0 _hd4146_) _tl4147_)))
  (define gx#core-list
    (lambda (_hd4143_ . _rest4144_)
      (cons (gx#core-quote-syntax__0 _hd4143_) _rest4144_)))
  (define gx#core-cons*
    (lambda (_hd4140_ . _rest4141_)
      (apply cons* (gx#core-quote-syntax__0 _hd4140_) _rest4141_)))
  (begin
    (define gx#core-resolve-path__opt-lambda4112
      (lambda (_stx-path4114_ _rel4115_)
        (let ((_path4127_ (gx#stx-e _stx-path4114_))
              (_reldir4128_
               (let _lp4117_ ((_relsrc4119_
                               (let ((_$e4124_ (gx#stx-source _stx-path4114_)))
                                 (if _$e4124_ _$e4124_ _rel4115_))))
                 (if (##structure-instance-of? _relsrc4119_ 'gerbil#AST::t)
                     (_lp4117_
                      (let ((_$e4121_ (gx#stx-source _relsrc4119_)))
                        (if _$e4121_ _$e4121_ (gx#stx-e _relsrc4119_))))
                     (if (source-location-path? _relsrc4119_)
                         (path-directory (source-location-path _relsrc4119_))
                         (if (string? _relsrc4119_)
                             (path-directory _relsrc4119_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4127_ (path-normalize _reldir4128_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4133_)
          (let ((_rel4135_ '#f))
            (gx#core-resolve-path__opt-lambda4112 _stx-path4133_ _rel4135_))))
      (define gx#core-resolve-path
        (lambda _g5867_
          (let ((_g5866_ (length _g5867_)))
            (cond ((fx= _g5866_ 1) (apply gx#core-resolve-path__0 _g5867_))
                  ((fx= _g5866_ 2)
                   (apply gx#core-resolve-path__opt-lambda4112 _g5867_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g5867_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4111_) (gx#stx-rewrap _stx4111_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4109_)
      (gx#stx-unwrap__opt-lambda3922 _stx4109_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4077_)
      (let* ((_g40784086_ (gx#current-expander-marks))
             (_E40814090_
              (lambda () (error '"No clause matching" _g40784086_)))
             (_else40804094_ (lambda () _stx4077_))
             (_K40824099_
              (lambda (_hd4097_) (gx#stx-apply-mark _stx4077_ _hd4097_))))
        (if (##pair? _g40784086_)
            (let ((_hd40834102_ (##car _g40784086_))
                  (_tl40844104_ (##cdr _g40784086_)))
              (let ((_hd4107_ _hd40834102_)) (_K40824099_ _hd4107_)))
            (_else40804094_)))))
  (begin
    (define gx#syntax-local-e__opt-lambda4060
      (lambda (_stx4062_ _E4063_)
        (let ((_bind4065_ (gx#resolve-identifier__0 _stx4062_)))
          (if (##structure-direct-instance-of?
               _bind4065_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4065_ '4 gx#syntax-binding::t '#f)
              (_E4063_ _stx4062_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4070_)
          (let ((_E4072_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda4060 _stx4070_ _E4072_))))
      (define gx#syntax-local-e
        (lambda _g5869_
          (let ((_g5868_ (length _g5869_)))
            (cond ((fx= _g5868_ 1) (apply gx#syntax-local-e__0 _g5869_))
                  ((fx= _g5868_ 2)
                   (apply gx#syntax-local-e__opt-lambda4060 _g5869_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g5869_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda4044
      (lambda (_stx4046_ _E4047_)
        (let ((_e4049_ (gx#syntax-local-e__opt-lambda4060 _stx4046_ _E4047_)))
          (if (##structure-instance-of? _e4049_ 'gx#expander::t)
              (##structure-ref _e4049_ '1 gx#expander::t '#f)
              _e4049_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4054_)
          (let ((_E4056_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda4044 _stx4054_ _E4056_))))
      (define gx#syntax-local-value
        (lambda _g5871_
          (let ((_g5870_ (length _g5871_)))
            (cond ((fx= _g5870_ 1) (apply gx#syntax-local-value__0 _g5871_))
                  ((fx= _g5870_ 2)
                   (apply gx#syntax-local-value__opt-lambda4044 _g5871_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g5871_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4043_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4043_))))
