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
    (lambda _$args5823_
      (apply make-struct-instance gx#expander-context::t _$args5823_)))
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
    (lambda _$args5820_
      (apply make-struct-instance gx#root-context::t _$args5820_)))
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
    (lambda _$args5817_
      (apply make-struct-instance gx#phi-context::t _$args5817_)))
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
    (lambda _$args5814_
      (apply make-struct-instance gx#top-context::t _$args5814_)))
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
    (lambda _$args5811_
      (apply make-struct-instance gx#module-context::t _$args5811_)))
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
    (lambda _$args5808_
      (apply make-struct-instance gx#prelude-context::t _$args5808_)))
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
    (lambda _$args5805_
      (apply make-struct-instance gx#local-context::t _$args5805_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5787
      (lambda (_self5789_ _id5790_ _super5791_)
        (struct-instance-init!
         _self5789_
         _id5790_
         (make-hash-table-eq)
         _super5791_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5796_ _id5797_)
          (let ((_super5799_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5787
             _self5796_
             _id5797_
             _super5799_))))
      (define gx#phi-context:::init!
        (lambda _g5827_
          (let ((_g5826_ (length _g5827_)))
            (cond ((fx= _g5826_ 2) (apply gx#phi-context:::init!__0 _g5827_))
                  ((fx= _g5826_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5787 _g5827_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g5827_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5773
      (lambda (_self5775_ _super5776_)
        (struct-instance-init!
         _self5775_
         (gensym 'L)
         (make-hash-table-eq)
         _super5776_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5781_)
          (let ((_super5783_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5773
             _self5781_
             _super5783_))))
      (define gx#local-context:::init!
        (lambda _g5829_
          (let ((_g5828_ (length _g5829_)))
            (cond ((fx= _g5828_ 1) (apply gx#local-context:::init!__0 _g5829_))
                  ((fx= _g5828_ 2)
                   (apply gx#local-context:::init!__opt-lambda5773 _g5829_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g5829_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5771_
      (apply make-struct-instance gx#binding::t _$args5771_)))
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
    (lambda _$args5768_
      (apply make-struct-instance gx#runtime-binding::t _$args5768_)))
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
    (lambda _$args5765_
      (apply make-struct-instance gx#local-binding::t _$args5765_)))
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
    (lambda _$args5762_
      (apply make-struct-instance gx#top-binding::t _$args5762_)))
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
    (lambda _$args5759_
      (apply make-struct-instance gx#module-binding::t _$args5759_)))
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
    (lambda _$args5756_
      (apply make-struct-instance gx#extern-binding::t _$args5756_)))
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
    (lambda _$args5753_
      (apply make-struct-instance gx#syntax-binding::t _$args5753_)))
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
    (lambda _$args5750_
      (apply make-struct-instance gx#import-binding::t _$args5750_)))
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
    (lambda _$args5747_
      (apply make-struct-instance gx#alias-binding::t _$args5747_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5744_
      (apply make-struct-instance gx#expander::t _$args5744_)))
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
    (lambda _$args5741_
      (apply make-struct-instance gx#core-expander::t _$args5741_)))
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
    (lambda _$args5738_
      (apply make-struct-instance gx#expression-form::t _$args5738_)))
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
    (lambda _$args5735_
      (apply make-struct-instance gx#special-form::t _$args5735_)))
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
    (lambda _$args5732_
      (apply make-struct-instance gx#definition-form::t _$args5732_)))
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
    (lambda _$args5729_
      (apply make-struct-instance gx#top-special-form::t _$args5729_)))
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
    (lambda _$args5726_
      (apply make-struct-instance gx#module-special-form::t _$args5726_)))
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
    (lambda _$args5723_
      (apply make-struct-instance gx#feature-expander::t _$args5723_)))
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
    (lambda _$args5720_
      (apply make-struct-instance gx#private-feature-expander::t _$args5720_)))
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
    (lambda _$args5717_
      (apply make-struct-instance gx#reserved-expander::t _$args5717_)))
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
    (lambda _$args5714_
      (apply make-struct-instance gx#macro-expander::t _$args5714_)))
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
    (lambda _$args5711_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5711_)))
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
    (lambda _$args5708_
      (apply make-struct-instance gx#user-expander::t _$args5708_)))
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
    (lambda _$args5705_
      (apply make-struct-instance gx#expander-mark::t _$args5705_)))
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
    (lambda _$args5702_
      (apply make-struct-instance gx#syntax-error::t _$args5702_)))
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
    (lambda (_where5697_ _message5698_ _stx5699_ . _details5700_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5698_
              (cons _stx5699_ _details5700_)
              _where5697_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5682
      (lambda (_stx5684_ _expression?5685_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5666 _stx5684_ _expression?5685_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5690_)
          (let ((_expression?5692_ '#f))
            (gx#eval-syntax__opt-lambda5682 _stx5690_ _expression?5692_))))
      (define gx#eval-syntax
        (lambda _g5831_
          (let ((_g5830_ (length _g5831_)))
            (cond ((fx= _g5830_ 1) (apply gx#eval-syntax__0 _g5831_))
                  ((fx= _g5830_ 2)
                   (apply gx#eval-syntax__opt-lambda5682 _g5831_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g5831_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5681_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5681_))))
  (begin
    (define gx#core-expand__opt-lambda5666
      (lambda (_stx5668_ _expression?5669_)
        (if _expression?5669_
            (gx#core-expand-expression _stx5668_)
            (gx#core-expand-top _stx5668_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5674_)
          (let ((_expression?5676_ '#f))
            (gx#core-expand__opt-lambda5666 _stx5674_ _expression?5676_))))
      (define gx#core-expand
        (lambda _g5833_
          (let ((_g5832_ (length _g5833_)))
            (cond ((fx= _g5832_ 1) (apply gx#core-expand__0 _g5833_))
                  ((fx= _g5832_ 2)
                   (apply gx#core-expand__opt-lambda5666 _g5833_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g5833_))))))))
  (define gx#core-expand-top
    (lambda (_stx5635_)
      (let* ((_stx5637_ (gx#core-expand*__0 _stx5635_))
             (_e56385645_ _stx5637_)
             (_E56405649_ (lambda () (gx#core-expand-expression _stx5637_)))
             (_E56395663_
              (lambda ()
                (if (gx#stx-pair? _e56385645_)
                    (let ((_e56415653_ (gx#syntax-e _e56385645_)))
                      (let ((_hd56425656_ (##car _e56415653_))
                            (_tl56435658_ (##cdr _e56415653_)))
                        (let ((_form5661_ _hd56425656_))
                          (if (gx#core-bound-identifier?__0 _form5661_)
                              _stx5637_
                              (_E56405649_)))))
                    (_E56405649_)))))
        (_E56395663_))))
  (define gx#core-expand-expression
    (lambda (_stx5557_)
      (letrec ((_sealed-expression?5559_
                (lambda (_hd5605_)
                  (if (gx#sealed-syntax? _hd5605_)
                      (let* ((_e56065613_ _hd5605_)
                             (_E56085617_ (lambda () '#f))
                             (_E56075631_
                              (lambda ()
                                (if (gx#stx-pair? _e56065613_)
                                    (let ((_e56095621_
                                           (gx#syntax-e _e56065613_)))
                                      (let ((_hd56105624_ (##car _e56095621_))
                                            (_tl56115626_ (##cdr _e56095621_)))
                                        (let ((_form5629_ _hd56105624_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4205
                                               _form5629_
                                               gx#expression-form-binding?)
                                              (_E56085617_)))))
                                    (_E56085617_)))))
                        (_E56075631_))
                      '#f)))
               (_illegal-expression5560_
                (lambda (_hd5603_ . _g5834_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx5557_
                   _hd5603_)))
               (_expand-e5561_
                (lambda (_form5598_ _hd5599_)
                  (let ((_bind5601_
                         (if (##structure-instance-of?
                              _form5598_
                              'gx#binding::t)
                             _form5598_
                             (gx#resolve-identifier__0 _form5598_))))
                    (if (gx#core-expander-binding? _bind5601_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind5601_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd5599_
                          (gx#stx-source _stx5557_)))
                        (if (##structure-direct-instance-of?
                             _bind5601_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind5601_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd5599_
                               (gx#stx-source _stx5557_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx5557_
                             _form5598_)))))))
        (let ((_hd5563_ (gx#core-expand-head _stx5557_)))
          (if (_sealed-expression?5559_ _hd5563_)
              _hd5563_
              (if (gx#stx-pair? _hd5563_)
                  (let* ((_e55645571_ _hd5563_)
                         (_E55665575_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e55645571_)))
                         (_E55655594_
                          (lambda ()
                            (if (gx#stx-pair? _e55645571_)
                                (let ((_e55675579_ (gx#syntax-e _e55645571_)))
                                  (let ((_hd55685582_ (##car _e55675579_))
                                        (_tl55695584_ (##cdr _e55675579_)))
                                    (let ((_form5587_ _hd55685582_))
                                      (if '#t
                                          (let ((_bind5589_
                                                 (if (gx#identifier?
                                                      _form5587_)
                                                     (gx#resolve-identifier__0
                                                      _form5587_)
                                                     '#f)))
                                            (if (let ((_$e5591_
                                                       (not _bind5589_)))
                                                  (if _$e5591_
                                                      _$e5591_
                                                      (not (gx#core-expander-binding?
                                                            _bind5589_))))
                                                (_expand-e5561_
                                                 '%%app
                                                 (cons '%%app _hd5563_))
                                                (if (eq? (##structure-ref
                                                          _bind5589_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd5563_
                                                     _illegal-expression5560_)
                                                    (if (gx#expression-form-binding?
                                                         _bind5589_)
                                                        (_expand-e5561_
                                                         _bind5589_
                                                         _hd5563_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind5589_)
                                                            (gx#core-expand-expression
                                                             (_expand-e5561_
                                                              _bind5589_
                                                              _hd5563_))
                                                            (_illegal-expression5560_
                                                             _hd5563_))))))
                                          (_E55665575_)))))
                                (_E55665575_)))))
                    (_E55655594_))
                  (if (gx#core-bound-identifier?__0 _hd5563_)
                      (_illegal-expression5560_ _hd5563_)
                      (if (gx#identifier? _hd5563_)
                          (_expand-e5561_
                           '%%ref
                           (cons '%%ref (cons _hd5563_ '())))
                          (if (gx#stx-datum? _hd5563_)
                              (_expand-e5561_
                               '%#quote
                               (cons '%#quote (cons _hd5563_ '())))
                              (_illegal-expression5560_ _hd5563_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5552_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5555_ (gx#core-expand-expression _stx5552_)))
           (values _stx5555_ (gx#eval-syntax* _stx5555_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5531
      (lambda (_stx5533_ _stop?5534_)
        (let _lp5536_ ((_stx5538_ _stx5533_))
          (if (_stop?5534_ _stx5538_)
              _stx5538_
              (let ((_rstx5540_ (gx#core-expand1 _stx5538_)))
                (if (eq? _stx5538_ _rstx5540_)
                    _stx5538_
                    (_lp5536_ _rstx5540_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5545_)
          (let ((_stop?5547_ false))
            (gx#core-expand*__opt-lambda5531 _stx5545_ _stop?5547_))))
      (define gx#core-expand*
        (lambda _g5836_
          (let ((_g5835_ (length _g5836_)))
            (cond ((fx= _g5835_ 1) (apply gx#core-expand*__0 _g5836_))
                  ((fx= _g5835_ 2)
                   (apply gx#core-expand*__opt-lambda5531 _g5836_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g5836_))))))))
  (define gx#core-expand1
    (lambda (_stx5489_)
      (letrec ((_step5491_
                (lambda (_hd5528_)
                  (let ((_bind5530_ (gx#resolve-identifier__0 _hd5528_)))
                    (if (##structure-instance-of?
                         _bind5530_
                         'gx#runtime-binding::t)
                        _stx5489_
                        (if (##structure-direct-instance-of?
                             _bind5530_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind5530_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx5489_)
                            (if (not _bind5530_)
                                _stx5489_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx5489_))))))))
        (let* ((_e54925500_ _stx5489_)
               (_E54985504_ (lambda () _stx5489_))
               (_E54945510_
                (lambda ()
                  (let ((_hd5508_ _e54925500_))
                    (if (gx#identifier? _hd5508_)
                        (_step5491_ _hd5508_)
                        (_E54985504_)))))
               (_E54935524_
                (lambda ()
                  (if (gx#stx-pair? _e54925500_)
                      (let ((_e54955514_ (gx#syntax-e _e54925500_)))
                        (let ((_hd54965517_ (##car _e54955514_))
                              (_tl54975519_ (##cdr _e54955514_)))
                          (let ((_hd5522_ _hd54965517_))
                            (if (gx#identifier? _hd5522_)
                                (_step5491_ _hd5522_)
                                (_E54945510_)))))
                      (_E54945510_)))))
          (_E54935524_)))))
  (define gx#core-expand-head
    (lambda (_stx5455_)
      (letrec ((_stop?5457_
                (lambda (_stx5459_)
                  (let* ((_e54605467_ _stx5459_)
                         (_E54625471_ (lambda () '#f))
                         (_E54615485_
                          (lambda ()
                            (if (gx#stx-pair? _e54605467_)
                                (let ((_e54635475_ (gx#syntax-e _e54605467_)))
                                  (let ((_hd54645478_ (##car _e54635475_))
                                        (_tl54655480_ (##cdr _e54635475_)))
                                    (let ((_hd5483_ _hd54645478_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5483_)
                                          (_E54625471_)))))
                                (_E54625471_)))))
                    (_E54615485_)))))
        (gx#core-expand*__opt-lambda5531 _stx5455_ _stop?5457_))))
  (begin
    (define gx#core-expand-block__opt-lambda5259
      (lambda (_stx5261_ _expand-special5262_ _begin-form5263_ _expand-e5264_)
        (letrec ((_expand-splice5266_
                  (lambda (_hd5429_ _body5430_ _rest5431_ _r5432_)
                    (if (gx#stx-list? _body5430_)
                        (_K5270_ (gx#stx-foldr cons _rest5431_ _body5430_)
                                 _r5432_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5261_
                         _hd5429_))))
                 (_expand-cond-expand5267_
                  (lambda (_hd5425_ _rest5426_ _r5427_)
                    (_K5270_ (cons (gx#core-expand-cond-expand% _hd5425_)
                                   _rest5426_)
                             _r5427_)))
                 (_expand-include5268_
                  (lambda (_hd5374_ _rest5375_ _r5376_)
                    (let* ((_e53775387_ _hd5374_)
                           (_E53795391_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e53775387_)))
                           (_E53785421_
                            (lambda ()
                              (if (gx#stx-pair? _e53775387_)
                                  (let ((_e53805395_
                                         (gx#syntax-e _e53775387_)))
                                    (let ((_hd53815398_ (##car _e53805395_))
                                          (_tl53825400_ (##cdr _e53805395_)))
                                      (if (gx#stx-pair? _tl53825400_)
                                          (let ((_e53835403_
                                                 (gx#syntax-e _tl53825400_)))
                                            (let ((_hd53845406_
                                                   (##car _e53835403_))
                                                  (_tl53855408_
                                                   (##cdr _e53835403_)))
                                              (let ((_path5411_ _hd53845406_))
                                                (if (gx#stx-null? _tl53855408_)
                                                    (if (gx#stx-string?
                                                         _path5411_)
                                                        (let* ((_rpath5413_
                                                                (gx#core-resolve-path__opt-lambda4115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path5411_
                         (gx#stx-source _hd5374_)))
                       (_block5415_
                        (gx#core-expand-include%__opt-lambda5008
                         _hd5374_
                         _rpath5413_))
                       (_rbody5418_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__opt-lambda5259
                            _block5415_
                            _expand-special5262_
                            '#f
                            _expand-e5264_))
                         gx#current-expander-path
                         (cons _rpath5413_ (gx#current-expander-path)))))
                  (_K5270_ _rest5375_ (foldr1 cons _r5376_ _rbody5418_)))
                (_E53795391_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E53795391_)))))
                                          (_E53795391_))))
                                  (_E53795391_)))))
                      (_E53785421_))))
                 (_expand-expression5269_
                  (lambda (_hd5370_ _rest5371_ _r5372_)
                    (_K5270_ _rest5371_
                             (cons (_expand-e5264_ _hd5370_) _r5372_))))
                 (_K5270_ (lambda (_rest5300_ _r5301_)
                            (let* ((_e53025309_ _rest5300_)
                                   (_E53045313_
                                    (lambda ()
                                      (if _begin-form5263_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form5263_
                                            (reverse _r5301_))
                                           (gx#stx-source _stx5261_))
                                          _r5301_)))
                                   (_E53035366_
                                    (lambda ()
                                      (if (gx#stx-pair? _e53025309_)
                                          (let ((_e53055317_
                                                 (gx#syntax-e _e53025309_)))
                                            (let ((_hd53065320_
                                                   (##car _e53055317_))
                                                  (_tl53075322_
                                                   (##cdr _e53055317_)))
                                              (let* ((_hd5325_ _hd53065320_)
                                                     (_rest5327_ _tl53075322_))
                                                (if '#t
                                                    (let* ((_hd5329_
                                                            (gx#core-expand-head
                                                             _hd5325_))
                                                           (_e53305337_
                                                            _hd5329_)
                                                           (_E53325341_
                                                            (lambda ()
                                                              (_expand-expression5269_
                                                               _hd5329_
                                                               _rest5327_
                                                               _r5301_)))
                                                           (_E53315362_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e53305337_)
                          (let ((_e53335345_ (gx#syntax-e _e53305337_)))
                            (let ((_hd53345348_ (##car _e53335345_))
                                  (_tl53355350_ (##cdr _e53335345_)))
                              (let* ((_form5353_ _hd53345348_)
                                     (_body5355_ _tl53355350_))
                                (if '#t
                                    (let ((_bind5357_
                                           (if (gx#identifier? _form5353_)
                                               (gx#resolve-identifier__0
                                                _form5353_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind5357_)
                                          (let ((_$e5359_
                                                 (##structure-ref
                                                  _bind5357_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? _$e5359_ '%#begin)
                                                (_expand-splice5266_
                                                 _hd5329_
                                                 _body5355_
                                                 _rest5327_
                                                 _r5301_)
                                                (if (eq? _$e5359_
                                                         '%#cond-expand)
                                                    (_expand-cond-expand5267_
                                                     _hd5329_
                                                     _rest5327_
                                                     _r5301_)
                                                    (if (eq? _$e5359_
                                                             '%#include)
                                                        (_expand-include5268_
                                                         _hd5329_
                                                         _rest5327_
                                                         _r5301_)
                                                        (_expand-special5262_
                                                         _hd5329_
                                                         _K5270_
                                                         _rest5327_
                                                         _r5301_)))))
                                          (_expand-expression5269_
                                           _hd5329_
                                           _rest5327_
                                           _r5301_)))
                                    (_E53325341_)))))
                          (_E53325341_)))))
              (_E53315362_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E53045313_)))))
                                          (_E53045313_)))))
                              (_E53035366_)))))
          (let* ((_e52715278_ _stx5261_)
                 (_E52735282_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e52715278_)))
                 (_E52725296_
                  (lambda ()
                    (if (gx#stx-pair? _e52715278_)
                        (let ((_e52745286_ (gx#syntax-e _e52715278_)))
                          (let ((_hd52755289_ (##car _e52745286_))
                                (_tl52765291_ (##cdr _e52745286_)))
                            (let ((_body5294_ _tl52765291_))
                              (if (gx#stx-list? _body5294_)
                                  (_K5270_ _body5294_ '())
                                  (_E52735282_)))))
                        (_E52735282_)))))
            (_E52725296_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5437_ _expand-special5438_)
          (let* ((_begin-form5440_ '%#begin)
                 (_expand-e5442_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5259
             _stx5437_
             _expand-special5438_
             _begin-form5440_
             _expand-e5442_))))
      (define gx#core-expand-block__1
        (lambda (_stx5444_ _expand-special5445_ _begin-form5446_)
          (let ((_expand-e5448_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5259
             _stx5444_
             _expand-special5445_
             _begin-form5446_
             _expand-e5448_))))
      (define gx#core-expand-block
        (lambda _g5838_
          (let ((_g5837_ (length _g5838_)))
            (cond ((fx= _g5837_ 2) (apply gx#core-expand-block__0 _g5838_))
                  ((fx= _g5837_ 3) (apply gx#core-expand-block__1 _g5838_))
                  ((fx= _g5837_ 4)
                   (apply gx#core-expand-block__opt-lambda5259 _g5838_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g5838_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5209_ _expand-special5210_)
      (let* ((_g52115222_
              (gx#core-expand-block__1 _stx5209_ _expand-special5210_ '#f))
             (_E52155226_
              (lambda () (error '"No clause matching" _g52115222_)))
             (_try-match52145237_
              (lambda ()
                (let* ((_K52165232_
                        (lambda (_body5230_)
                          (gx#core-quote-syntax__1
                           (gx#core-cons '%#begin (reverse _body5230_))
                           (gx#stx-source _stx5209_))))
                       (_body5235_ _g52115222_))
                  (_K52165232_ _body5235_))))
             (_try-match52135253_
              (lambda ()
                (let ((_K52175243_ (lambda (_expr5241_) _expr5241_)))
                  (if (##pair? _g52115222_)
                      (let ((_hd52185246_ (##car _g52115222_))
                            (_tl52195248_ (##cdr _g52115222_)))
                        (let ((_expr5251_ _hd52185246_))
                          (if (##null? _tl52195248_)
                              (_K52175243_ _expr5251_)
                              (_try-match52145237_))))
                      (_try-match52145237_)))))
             (_K52205257_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; empty block"
                 _stx5209_))))
        (if (##null? _g52115222_) (_K52205257_) (_try-match52135253_)))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5067_)
      (letrec ((_satisfied?5069_
                (lambda (_condition5167_)
                  (let* ((_e51685176_ _condition5167_)
                         (_E51715180_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e51685176_)))
                         (_E51705199_
                          (lambda ()
                            (if (gx#stx-pair? _e51685176_)
                                (let ((_e51725184_ (gx#syntax-e _e51685176_)))
                                  (let ((_hd51735187_ (##car _e51725184_))
                                        (_tl51745189_ (##cdr _e51725184_)))
                                    (let* ((_combinator5192_ _hd51735187_)
                                           (_body5194_ _tl51745189_))
                                      (if (gx#stx-list? _body5194_)
                                          (let ((_$e5196_
                                                 (gx#stx-e _combinator5192_)))
                                            (if (eq? _$e5196_ 'not)
                                                (not (gx#stx-ormap
                                                      _satisfied?5069_
                                                      _body5194_))
                                                (if (eq? _$e5196_ 'and)
                                                    (gx#stx-andmap
                                                     _satisfied?5069_
                                                     _body5194_)
                                                    (if (eq? _$e5196_ 'or)
                                                        (gx#stx-ormap
                                                         _satisfied?5069_
                                                         _body5194_)
                                                        (if (eq? _$e5196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'defined)
                    (gx#stx-andmap gx#core-resolve-identifier _body5194_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx5067_
                     _combinator5192_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E51715180_)))))
                                (_E51715180_))))
                         (_E51695205_
                          (lambda ()
                            (let ((_id5203_ _e51685176_))
                              (if (gx#identifier? _id5203_)
                                  (gx#core-bound-identifier?__opt-lambda4205
                                   _id5203_
                                   gx#feature-binding?)
                                  (_E51705199_))))))
                    (_E51695205_))))
               (_loop5070_
                (lambda (_rest5100_)
                  (let* ((_e51015109_ _rest5100_)
                         (_E51075113_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e51015109_)))
                         (_E51035117_
                          (lambda ()
                            (if (gx#stx-null? _e51015109_)
                                (if '#t '() (_E51075113_))
                                (_E51075113_))))
                         (_E51025163_
                          (lambda ()
                            (if (gx#stx-pair? _e51015109_)
                                (let ((_e51045121_ (gx#syntax-e _e51015109_)))
                                  (let ((_hd51055124_ (##car _e51045121_))
                                        (_tl51065126_ (##cdr _e51045121_)))
                                    (let* ((_hd5129_ _hd51055124_)
                                           (_rest5131_ _tl51065126_))
                                      (if '#t
                                          (let* ((_e51325139_ _hd5129_)
                                                 (_E51345143_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e51325139_)))
                                                 (_E51335159_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e51325139_)
                                                        (let ((_e51355147_
                                                               (gx#syntax-e
                                                                _e51325139_)))
                                                          (let ((_hd51365150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e51355147_))
                        (_tl51375152_ (##cdr _e51355147_)))
                    (let* ((_condition5155_ _hd51365150_)
                           (_body5157_ _tl51375152_))
                      (if '#t
                          (if (gx#stx-eq? _condition5155_ 'else)
                              (if (gx#stx-null? _rest5131_)
                                  _body5157_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx5067_
                                   _hd5129_))
                              (if (_satisfied?5069_ _condition5155_)
                                  _body5157_
                                  (_loop5070_ _rest5131_)))
                          (_E51345143_)))))
                (_E51345143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E51335159_))
                                          (_E51035117_)))))
                                (_E51035117_)))))
                    (_E51025163_)))))
        (let* ((_e50715078_ _stx5067_)
               (_E50735082_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e50715078_)))
               (_E50725096_
                (lambda ()
                  (if (gx#stx-pair? _e50715078_)
                      (let ((_e50745086_ (gx#syntax-e _e50715078_)))
                        (let ((_hd50755089_ (##car _e50745086_))
                              (_tl50765091_ (##cdr _e50745086_)))
                          (let ((_clauses5094_ _tl50765091_))
                            (if (gx#stx-list? _clauses5094_)
                                (gx#core-cons
                                 'begin
                                 (_loop5070_ _clauses5094_))
                                (_E50735082_)))))
                      (_E50735082_)))))
          (_E50725096_)))))
  (begin
    (define gx#core-expand-include%__opt-lambda5008
      (lambda (_stx5010_ _rpath5011_)
        (let* ((_e50125022_ _stx5010_)
               (_E50145026_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e50125022_)))
               (_E50135053_
                (lambda ()
                  (if (gx#stx-pair? _e50125022_)
                      (let ((_e50155030_ (gx#syntax-e _e50125022_)))
                        (let ((_hd50165033_ (##car _e50155030_))
                              (_tl50175035_ (##cdr _e50155030_)))
                          (if (gx#stx-pair? _tl50175035_)
                              (let ((_e50185038_ (gx#syntax-e _tl50175035_)))
                                (let ((_hd50195041_ (##car _e50185038_))
                                      (_tl50205043_ (##cdr _e50185038_)))
                                  (let ((_path5046_ _hd50195041_))
                                    (if (gx#stx-null? _tl50205043_)
                                        (if (gx#stx-string? _path5046_)
                                            (let ((_rpath5051_
                                                   (let ((_$e5048_
                                                          _rpath5011_))
                                                     (if _$e5048_
                                                         _$e5048_
                                                         (gx#core-resolve-path__opt-lambda4115
                                                          _path5046_
                                                          (gx#stx-source
                                                           _stx5010_))))))
                                              (if (member _rpath5051_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx5010_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath5051_))
                                                    (gx#stx-source
                                                     _stx5010_)))))
                                            (_E50145026_))
                                        (_E50145026_)))))
                              (_E50145026_))))
                      (_E50145026_)))))
          (_E50135053_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5060_)
          (let ((_rpath5062_ '#f))
            (gx#core-expand-include%__opt-lambda5008 _stx5060_ _rpath5062_))))
      (define gx#core-expand-include%
        (lambda _g5840_
          (let ((_g5839_ (length _g5840_)))
            (cond ((fx= _g5839_ 1) (apply gx#core-expand-include%__0 _g5840_))
                  ((fx= _g5839_ 2)
                   (apply gx#core-expand-include%__opt-lambda5008 _g5840_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g5840_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4977
      (lambda (_K4979_ _stx4980_ _method4981_)
        (if (procedure? _K4979_)
            (let ((_$e4983_ (gx#stx-source _stx4980_)))
              (if _$e4983_
                  ((lambda (_g49854987_)
                     (gx#stx-wrap-source (_K4979_ _stx4980_) _g49854987_))
                   _$e4983_)
                  (_K4979_ _stx4980_)))
            (let ((_$e4990_ (bound-method-ref _K4979_ _method4981_)))
              (if _$e4990_
                  ((lambda (_g49924994_)
                     (gx#core-apply-expander__opt-lambda4977
                      _g49924994_
                      _stx4980_
                      _method4981_))
                   _$e4990_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4980_
                   _method4981_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K5000_ _stx5001_)
          (let ((_method5003_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4977
             _K5000_
             _stx5001_
             _method5003_))))
      (define gx#core-apply-expander
        (lambda _g5842_
          (let ((_g5841_ (length _g5842_)))
            (cond ((fx= _g5841_ 2) (apply gx#core-apply-expander__0 _g5842_))
                  ((fx= _g5841_ 3)
                   (apply gx#core-apply-expander__opt-lambda4977 _g5842_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g5842_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4975_ _stx4976_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4976_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4950_ _stx4951_)
      (let* ((_self49524958_ _self4950_)
             (_E49544962_
              (lambda () (error '"No clause matching" _self49524958_)))
             (_K49554967_
              (lambda (_K4965_)
                (gx#core-apply-expander__0 _K4965_ _stx4951_))))
        (if (##structure-instance-of?
             _self49524958_
             (##type-id gx#macro-expander::t))
            (let* ((_e49564970_ (##vector-ref _self49524958_ '1))
                   (_K4973_ _e49564970_))
              (_K49554967_ _K4973_))
            (_E49544962_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4925_ _stx4926_)
      (if (gx#sealed-syntax? _stx4926_)
          _stx4926_
          (let* ((_self49274933_ _self4925_)
                 (_E49294937_
                  (lambda () (error '"No clause matching" _self49274933_)))
                 (_K49304942_
                  (lambda (_K4940_)
                    (gx#core-apply-expander__0 _K4940_ _stx4926_))))
            (if (##structure-instance-of?
                 _self49274933_
                 (##type-id gx#core-expander::t))
                (let* ((_e49314945_ (##vector-ref _self49274933_ '1))
                       (_K4948_ _e49314945_))
                  (_K49304942_ _K4948_))
                (_E49294937_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4907
      (lambda (_self4909_ _stx4910_ _top?4911_)
        (if (_top?4911_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4909_ _stx4910_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4910_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4916_ _stx4917_)
          (let ((_top?4919_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4907
             _self4916_
             _stx4917_
             _top?4919_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5844_
          (let ((_g5843_ (length _g5844_)))
            (cond ((fx= _g5843_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5844_))
                  ((fx= _g5843_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4907
                          _g5844_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g5844_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4905_ _stx4906_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4907
       _self4905_
       _stx4906_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4852_ _stx4853_)
      (let* ((_self48544860_ _self4852_)
             (_E48564864_
              (lambda () (error '"No clause matching" _self48544860_)))
             (_K48574897_
              (lambda (_id4867_)
                (let* ((_e48684875_ _stx4853_)
                       (_E48704879_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e48684875_)))
                       (_E48694893_
                        (lambda ()
                          (if (gx#stx-pair? _e48684875_)
                              (let ((_e48714883_ (gx#syntax-e _e48684875_)))
                                (let ((_hd48724886_ (##car _e48714883_))
                                      (_tl48734888_ (##cdr _e48714883_)))
                                  (let ((_body4891_ _tl48734888_))
                                    (if '#t
                                        (gx#core-cons _id4867_ _body4891_)
                                        (_E48704879_)))))
                              (_E48704879_)))))
                  (_E48694893_)))))
        (if (##structure-instance-of?
             _self48544860_
             (##type-id gx#rename-macro-expander::t))
            (let* ((_e48584900_ (##vector-ref _self48544860_ '1))
                   (_id4903_ _e48584900_))
              (_K48574897_ _id4903_))
            (_E48564864_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4798
      (lambda (_self4800_ _stx4801_ _method4802_)
        (let* ((_self48034811_ _self4800_)
               (_E48054815_
                (lambda () (error '"No clause matching" _self48034811_)))
               (_K48064822_
                (lambda (_phi4818_ _ctx4819_ _K4820_)
                  (gx#core-apply-user-macro
                   _K4820_
                   _stx4801_
                   _ctx4819_
                   _phi4818_
                   _method4802_))))
          (if (##structure-instance-of?
               _self48034811_
               (##type-id gx#user-expander::t))
              (let* ((_e48074825_ (##vector-ref _self48034811_ '1))
                     (_K4828_ _e48074825_)
                     (_e48084830_ (##vector-ref _self48034811_ '2))
                     (_ctx4833_ _e48084830_)
                     (_e48094835_ (##vector-ref _self48034811_ '3))
                     (_phi4838_ _e48094835_))
                (_K48064822_ _phi4838_ _ctx4833_ _K4828_))
              (_E48054815_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4843_ _stx4844_)
          (let ((_method4846_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4798
             _self4843_
             _stx4844_
             _method4846_))))
      (define gx#core-apply-user-expander
        (lambda _g5846_
          (let ((_g5845_ (length _g5846_)))
            (cond ((fx= _g5845_ 2)
                   (apply gx#core-apply-user-expander__0 _g5846_))
                  ((fx= _g5845_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4798 _g5846_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g5846_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4790_ _stx4791_ _ctx4792_ _phi4793_ _method4794_)
      (let ((_mark4796_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4792_
              _phi4793_
              _stx4791_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4977
             _K4790_
             (gx#stx-apply-mark _stx4791_ _mark4796_)
             _method4794_)
            _mark4796_))
         gx#current-expander-marks
         (cons _mark4796_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4762
      (lambda (_stx4764_ _phi4765_ _ctx4766_)
        (let _lp4768_ ((_bind4770_
                        (gx#core-resolve-identifier__opt-lambda4692
                         _stx4764_
                         _phi4765_
                         _ctx4766_)))
          (if (##structure-direct-instance-of?
               _bind4770_
               'gx#import-binding::t)
              (_lp4768_
               (##direct-structure-ref _bind4770_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind4770_
                   'gx#alias-binding::t)
                  (_lp4768_
                   (gx#core-resolve-identifier__opt-lambda4692
                    (##direct-structure-ref
                     _bind4770_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi4765_
                    _ctx4766_))
                  _bind4770_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4775_)
          (let* ((_phi4777_ (gx#current-expander-phi))
                 (_ctx4779_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4762
             _stx4775_
             _phi4777_
             _ctx4779_))))
      (define gx#resolve-identifier__1
        (lambda (_stx4781_ _phi4782_)
          (let ((_ctx4784_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4762
             _stx4781_
             _phi4782_
             _ctx4784_))))
      (define gx#resolve-identifier
        (lambda _g5848_
          (let ((_g5847_ (length _g5848_)))
            (cond ((fx= _g5847_ 1) (apply gx#resolve-identifier__0 _g5848_))
                  ((fx= _g5847_ 2) (apply gx#resolve-identifier__1 _g5848_))
                  ((fx= _g5847_ 3)
                   (apply gx#resolve-identifier__opt-lambda4762 _g5848_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g5848_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4720
      (lambda (_stx4722_ _val4723_ _rebind?4724_ _phi4725_ _ctx4726_)
        (let ((_rebind?4728_
               (if (not _rebind?4724_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4724_) _rebind?4724_ true))))
          (gx#core-bind!__opt-lambda4481
           (gx#core-identifier-key _stx4722_)
           _val4723_
           _rebind?4728_
           _phi4725_
           _ctx4726_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4733_ _val4734_)
          (let* ((_rebind?4736_ '#f)
                 (_phi4738_ (gx#current-expander-phi))
                 (_ctx4740_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4720
             _stx4733_
             _val4734_
             _rebind?4736_
             _phi4738_
             _ctx4740_))))
      (define gx#bind-identifier!__1
        (lambda (_stx4742_ _val4743_ _rebind?4744_)
          (let* ((_phi4746_ (gx#current-expander-phi))
                 (_ctx4748_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4720
             _stx4742_
             _val4743_
             _rebind?4744_
             _phi4746_
             _ctx4748_))))
      (define gx#bind-identifier!__2
        (lambda (_stx4750_ _val4751_ _rebind?4752_ _phi4753_)
          (let ((_ctx4755_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4720
             _stx4750_
             _val4751_
             _rebind?4752_
             _phi4753_
             _ctx4755_))))
      (define gx#bind-identifier!
        (lambda _g5850_
          (let ((_g5849_ (length _g5850_)))
            (cond ((fx= _g5849_ 2) (apply gx#bind-identifier!__0 _g5850_))
                  ((fx= _g5849_ 3) (apply gx#bind-identifier!__1 _g5850_))
                  ((fx= _g5849_ 4) (apply gx#bind-identifier!__2 _g5850_))
                  ((fx= _g5849_ 5)
                   (apply gx#bind-identifier!__opt-lambda4720 _g5850_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g5850_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4692
      (lambda (_stx4694_ _phi4695_ _ctx4696_)
        (let _lp4698_ ((_e4700_ _stx4694_)
                       (_marks4701_ (gx#current-expander-marks)))
          (if (symbol? _e4700_)
              (gx#core-resolve-binding
               _e4700_
               _phi4695_
               _phi4695_
               _ctx4696_
               (reverse _marks4701_))
              (if (gx#identifier-quote? _e4700_)
                  (gx#core-resolve-binding
                   (##structure-ref _e4700_ '1 AST::t '#f)
                   _phi4695_
                   '0
                   (##direct-structure-ref _e4700_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e4700_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e4700_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e4700_ '1 AST::t '#f)
                       _phi4695_
                       _phi4695_
                       _ctx4696_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4700_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4701_))
                      (if (##structure-direct-instance-of?
                           _e4700_
                           'gx#syntax-wrap::t)
                          (_lp4698_
                           (##structure-ref _e4700_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e4700_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks4701_))
                          (if (##structure-instance-of? _e4700_ 'gerbil#AST::t)
                              (_lp4698_
                               (##structure-ref _e4700_ '1 AST::t '#f)
                               _marks4701_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx4694_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4706_)
          (let* ((_phi4708_ (gx#current-expander-phi))
                 (_ctx4710_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4692
             _stx4706_
             _phi4708_
             _ctx4710_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4712_ _phi4713_)
          (let ((_ctx4715_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4692
             _stx4712_
             _phi4713_
             _ctx4715_))))
      (define gx#core-resolve-identifier
        (lambda _g5852_
          (let ((_g5851_ (length _g5852_)))
            (cond ((fx= _g5851_ 1)
                   (apply gx#core-resolve-identifier__0 _g5852_))
                  ((fx= _g5851_ 2)
                   (apply gx#core-resolve-identifier__1 _g5852_))
                  ((fx= _g5851_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4692 _g5852_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g5852_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4607_ _phi4608_ _src-phi4609_ _ctx4610_ _marks4611_)
      (letrec ((_resolve4613_
                (lambda (_ctx4681_ _src-phi4682_ _key4683_)
                  (let _lp4685_ ((_ctx4687_
                                  (gx#core-context-shift _ctx4681_ _phi4608_))
                                 (_dphi4688_ (fx- _phi4608_ _src-phi4682_)))
                    (let ((_$e4690_
                           (gx#core-context-resolve _ctx4687_ _key4683_)))
                      (if _$e4690_
                          (values _$e4690_)
                          (if (fxzero? _dphi4688_)
                              '#f
                              (if (fxpositive? _dphi4688_)
                                  (_lp4685_
                                   (gx#core-context-shift _ctx4687_ '-1)
                                   (fx- _dphi4688_ '1))
                                  (if (fxnegative? _dphi4688_)
                                      (_lp4685_
                                       (gx#core-context-shift _ctx4687_ '1)
                                       (fx+ _dphi4688_ '1))
                                      '#!void)))))))))
        (let _lp4615_ ((_ctx4617_ _ctx4610_)
                       (_src-phi4618_ _src-phi4609_)
                       (_rest4619_ _marks4611_))
          (let* ((_rest46204628_ _rest4619_)
                 (_E46234632_
                  (lambda () (error '"No clause matching" _rest46204628_)))
                 (_else46224636_
                  (lambda () (_resolve4613_ _ctx4617_ _src-phi4618_ _id4607_)))
                 (_K46244669_
                  (lambda (_rest4639_ _hd4640_)
                    (let* ((_hd46414647_ _hd4640_)
                           (_E46434651_
                            (lambda ()
                              (error '"No clause matching" _hd46414647_)))
                           (_K46444661_
                            (lambda (_subst4654_)
                              (let ((_$e4658_
                                     (let ((_key4656_
                                            (if _subst4654_
                                                (table-ref
                                                 _subst4654_
                                                 _id4607_
                                                 '#f)
                                                '#f)))
                                       (if _key4656_
                                           (_resolve4613_
                                            _ctx4617_
                                            _src-phi4618_
                                            _key4656_)
                                           '#f))))
                                (if _$e4658_
                                    _$e4658_
                                    (_lp4615_
                                     (##structure-ref
                                      _hd4640_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd4640_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest4639_))))))
                      (if (##structure-instance-of?
                           _hd46414647_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e46454664_ (##vector-ref _hd46414647_ '1))
                                 (_subst4667_ _e46454664_))
                            (_K46444661_ _subst4667_))
                          (_E46434651_))))))
            (if (##pair? _rest46204628_)
                (let ((_hd46254672_ (##car _rest46204628_))
                      (_tl46264674_ (##cdr _rest46204628_)))
                  (let* ((_hd4677_ _hd46254672_) (_rest4679_ _tl46264674_))
                    (_K46244669_ _rest4679_ _hd4677_)))
                (_else46224636_)))))))
  (begin
    (define gx#core-bind!__opt-lambda4481
      (lambda (_key4483_ _val4484_ _rebind?4485_ _phi4486_ _ctx4487_)
        (letrec ((_update-binding4489_
                  (lambda (_xval4560_)
                    (if (let ((_$e4562_
                               (_rebind?4485_ _ctx4487_ _xval4560_ _val4484_)))
                          (if _$e4562_
                              _$e4562_
                              (let ((_$e4568_
                                     (if (##structure-direct-instance-of?
                                          _xval4560_
                                          'gx#import-binding::t)
                                         (let ((_$e4565_
                                                (##direct-structure-ref
                                                 _xval4560_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e4565_
                                               _$e4565_
                                               (if (##structure-instance-of?
                                                    _val4484_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val4484_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e4568_
                                    _$e4568_
                                    (if (##structure-instance-of?
                                         _xval4560_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val4484_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val4484_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval4560_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val4484_
                        (if (if (##structure-direct-instance-of?
                                 _val4484_
                                 'gx#import-binding::t)
                                (let ((_$e4571_
                                       (##direct-structure-ref
                                        _val4484_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e4571_
                                      _$e4571_
                                      (if (##structure-instance-of?
                                           _xval4560_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val4484_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval4560_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval4560_
                            (gx#raise-syntax-error
                             '#f
                             '"Bad binding; rebind conflict"
                             _key4483_
                             _xval4560_
                             _val4484_)))))
                 (_gensubst4490_
                  (lambda (_subst4555_ _id4556_)
                    (let ((_eid4558_
                           (gensym (if (uninterned-symbol? _id4556_)
                                       '%
                                       _id4556_))))
                      (begin
                        (table-set! _subst4555_ _id4556_ _eid4558_)
                        _eid4558_))))
                 (_subst!4491_
                  (lambda (_key4493_)
                    (let* ((_key44944502_ _key4493_)
                           (_E44974506_
                            (lambda ()
                              (error '"No clause matching" _key44944502_)))
                           (_else44964510_ (lambda () _key4493_))
                           (_K44984543_
                            (lambda (_mark4513_ _id4514_)
                              (let* ((_mark45154521_ _mark4513_)
                                     (_E45174525_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark45154521_)))
                                     (_K45184535_
                                      (lambda (_subst4528_)
                                        (if (not _subst4528_)
                                            (let ((_subst4530_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark4513_
                                                 _subst4530_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst4490_
                                                 _subst4530_
                                                 _id4514_)))
                                            (let ((_$e4532_
                                                   (table-ref
                                                    _subst4528_
                                                    _id4514_
                                                    '#f)))
                                              (if _$e4532_
                                                  (values _$e4532_)
                                                  (_gensubst4490_
                                                   _subst4528_
                                                   _id4514_)))))))
                                (if (##structure-instance-of?
                                     _mark45154521_
                                     (##type-id gx#expander-mark::t))
                                    (let* ((_e45194538_
                                            (##vector-ref _mark45154521_ '1))
                                           (_subst4541_ _e45194538_))
                                      (_K45184535_ _subst4541_))
                                    (_E45174525_))))))
                      (if (##pair? _key44944502_)
                          (let ((_hd44994546_ (##car _key44944502_))
                                (_tl45004548_ (##cdr _key44944502_)))
                            (let* ((_id4551_ _hd44994546_)
                                   (_mark4553_ _tl45004548_))
                              (_K44984543_ _mark4553_ _id4551_)))
                          (_else44964510_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx4487_ _phi4486_)
           (_subst!4491_ _key4483_)
           _val4484_
           _update-binding4489_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4577_ _val4578_)
          (let* ((_rebind?4580_ false)
                 (_phi4582_ (gx#current-expander-phi))
                 (_ctx4584_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4481
             _key4577_
             _val4578_
             _rebind?4580_
             _phi4582_
             _ctx4584_))))
      (define gx#core-bind!__1
        (lambda (_key4586_ _val4587_ _rebind?4588_)
          (let* ((_phi4590_ (gx#current-expander-phi))
                 (_ctx4592_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4481
             _key4586_
             _val4587_
             _rebind?4588_
             _phi4590_
             _ctx4592_))))
      (define gx#core-bind!__2
        (lambda (_key4594_ _val4595_ _rebind?4596_ _phi4597_)
          (let ((_ctx4599_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4481
             _key4594_
             _val4595_
             _rebind?4596_
             _phi4597_
             _ctx4599_))))
      (define gx#core-bind!
        (lambda _g5854_
          (let ((_g5853_ (length _g5854_)))
            (cond ((fx= _g5853_ 2) (apply gx#core-bind!__0 _g5854_))
                  ((fx= _g5853_ 3) (apply gx#core-bind!__1 _g5854_))
                  ((fx= _g5853_ 4) (apply gx#core-bind!__2 _g5854_))
                  ((fx= _g5853_ 5)
                   (apply gx#core-bind!__opt-lambda4481 _g5854_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g5854_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4413_)
      (if (symbol? _stx4413_)
          (let* ((_g44144422_ (gx#current-expander-marks))
                 (_E44174426_
                  (lambda () (error '"No clause matching" _g44144422_)))
                 (_else44164430_ (lambda () _stx4413_))
                 (_K44184435_ (lambda (_hd4433_) (cons _stx4413_ _hd4433_))))
            (if (##pair? _g44144422_)
                (let ((_hd44194438_ (##car _g44144422_))
                      (_tl44204440_ (##cdr _g44144422_)))
                  (let ((_hd4443_ _hd44194438_)) (_K44184435_ _hd4443_)))
                (_else44164430_)))
          (if (gx#identifier? _stx4413_)
              (let* ((_id4445_ (gx#syntax-local-unwrap _stx4413_))
                     (_eid4447_ (gx#stx-e _id4445_))
                     (_marks4449_ (gx#stx-identifier-marks _id4445_)))
                (let* ((_marks44514459_ _marks4449_)
                       (_E44544463_
                        (lambda ()
                          (error '"No clause matching" _marks44514459_)))
                       (_else44534467_ (lambda () _eid4447_))
                       (_K44554472_
                        (lambda (_hd4470_) (cons _eid4447_ _hd4470_))))
                  (if (##pair? _marks44514459_)
                      (let ((_hd44564475_ (##car _marks44514459_))
                            (_tl44574477_ (##cdr _marks44514459_)))
                        (let ((_hd4480_ _hd44564475_)) (_K44554472_ _hd4480_)))
                      (_else44534467_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4413_)))))
  (define gx#core-context-shift
    (lambda (_ctx4358_ _phi4359_)
      (letrec ((_make-phi4361_
                (lambda (_super4411_)
                  (let ((__obj5825 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__opt-lambda5787
                       __obj5825
                       (gensym 'phi)
                       _super4411_)
                      __obj5825))))
               (_make-phi/up4362_
                (lambda (_ctx4406_ _super4407_)
                  (let ((_ctx+14409_ (_make-phi4361_ _super4407_)))
                    (begin
                      (##structure-set!
                       _ctx4406_
                       _ctx+14409_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+14409_
                       _ctx4406_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+14409_))))
               (_make-phi/down4363_
                (lambda (_ctx4401_ _super4402_)
                  (let ((_ctx-14404_ (_make-phi4361_ _super4402_)))
                    (begin
                      (##structure-set!
                       _ctx-14404_
                       _ctx4401_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx4401_
                       _ctx-14404_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-14404_))))
               (_shift4364_
                (lambda (_ctx4385_
                         _delta4386_
                         _make-delta-context4387_
                         _phi4388_
                         _K4389_)
                  (let ((_$e4391_
                         (##structure-ref _ctx4385_ '3 gx#phi-context::t '#f)))
                    (if _$e4391_
                        ((lambda (_super4394_)
                           (let* ((_super4396_
                                   (_K4389_ _super4394_ _delta4386_))
                                  (_ctx+d4398_
                                   (_make-delta-context4387_
                                    _ctx4385_
                                    _super4396_)))
                             (_K4389_ _ctx+d4398_
                                      (fx- _phi4388_ _delta4386_))))
                         _$e4391_)
                        (error '"Bad context" _ctx4385_))))))
        (let _K4366_ ((_ctx4368_ _ctx4358_) (_phi4369_ _phi4359_))
          (if (fxzero? _phi4369_)
              _ctx4368_
              (if (##structure-instance-of? _ctx4368_ 'gx#context-phi::t)
                  (if (fxpositive? _phi4369_)
                      (let ((_$e4371_
                             (##structure-ref
                              _ctx4368_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e4371_
                            ((lambda (_g43734375_)
                               (_K4366_ _g43734375_ (fx- _phi4369_ '1)))
                             _$e4371_)
                            (_shift4364_
                             _ctx4368_
                             '1
                             _make-phi/up4362_
                             _phi4369_
                             _K4366_)))
                      (let ((_$e4378_
                             (##structure-ref
                              _ctx4368_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e4378_
                            ((lambda (_g43804382_)
                               (_K4366_ _g43804382_ (fx+ _phi4369_ '1)))
                             _$e4378_)
                            (_shift4364_
                             _ctx4368_
                             '-1
                             _make-phi/down4363_
                             _phi4369_
                             _K4366_))))
                  _ctx4368_))))))
  (define gx#core-context-get
    (lambda (_ctx4355_ _key4356_)
      (table-ref
       (##structure-ref _ctx4355_ '2 gx#expander-context::t '#f)
       _key4356_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4351_ _key4352_ _val4353_)
      (table-set!
       (##structure-ref _ctx4351_ '2 gx#expander-context::t '#f)
       _key4352_
       _val4353_)))
  (define gx#core-context-resolve
    (lambda (_ctx4338_ _key4339_)
      (let _lp4341_ ((_ctx4343_ _ctx4338_))
        (let ((_$e4345_ (gx#core-context-get _ctx4343_ _key4339_)))
          (if _$e4345_
              (values _$e4345_)
              (let ((_$e4348_
                     (if (##structure-instance-of?
                          _ctx4343_
                          'gx#context-phi::t)
                         (##structure-ref _ctx4343_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e4348_ (_lp4341_ _$e4348_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx4328_ _key4329_ _val4330_ _rebind4331_)
      (let ((_$e4333_ (gx#core-context-get _ctx4328_ _key4329_)))
        (if _$e4333_
            ((lambda (_xval4336_)
               (gx#core-context-put!
                _ctx4328_
                _key4329_
                (_rebind4331_ _xval4336_)))
             _$e4333_)
            (gx#core-context-put! _ctx4328_ _key4329_ _val4330_)))))
  (begin
    (define gx#core-context-top__opt-lambda4304
      (lambda (_ctx4306_ _stop?4307_)
        (let _lp4309_ ((_ctx4311_ _ctx4306_))
          (if (_stop?4307_ _ctx4311_)
              _ctx4311_
              (if (##structure-instance-of? _ctx4311_ 'gx#context-phi::t)
                  (_lp4309_
                   (##structure-ref _ctx4311_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx4317_ (gx#current-expander-context))
                 (_stop?4319_ gx#top-context?))
            (gx#core-context-top__opt-lambda4304 _ctx4317_ _stop?4319_))))
      (define gx#core-context-top__1
        (lambda (_ctx4321_)
          (let ((_stop?4323_ gx#top-context?))
            (gx#core-context-top__opt-lambda4304 _ctx4321_ _stop?4323_))))
      (define gx#core-context-top
        (lambda _g5856_
          (let ((_g5855_ (length _g5856_)))
            (cond ((fx= _g5855_ 0) (apply gx#core-context-top__0 _g5856_))
                  ((fx= _g5855_ 1) (apply gx#core-context-top__1 _g5856_))
                  ((fx= _g5855_ 2)
                   (apply gx#core-context-top__opt-lambda4304 _g5856_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g5856_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4289
      (lambda (_ctx4291_)
        (let _lp4293_ ((_ctx4295_ _ctx4291_))
          (if (##structure-instance-of? _ctx4295_ 'gx#context-phi::t)
              (_lp4293_ (##structure-ref _ctx4295_ '3 gx#phi-context::t '#f))
              _ctx4295_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4301_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4289 _ctx4301_))))
      (define gx#core-context-root
        (lambda _g5858_
          (let ((_g5857_ (length _g5858_)))
            (cond ((fx= _g5857_ 0) (apply gx#core-context-root__0 _g5858_))
                  ((fx= _g5857_ 1)
                   (apply gx#core-context-root__opt-lambda4289 _g5858_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g5858_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4273
      (lambda (_ctx4275_ . __42724276_)
        (if (##structure-instance-of? _ctx4275_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4275_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4275_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4283_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4273 _ctx4283_))))
      (define gx#core-context-rebind?
        (lambda _g5860_
          (let ((_g5859_ (length _g5860_)))
            (cond ((fx= _g5859_ 0) (apply gx#core-context-rebind?__0 _g5860_))
                  ((fx= _g5859_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4273 _g5860_))
                  ((fx>= _g5859_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4273 _g5860_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g5860_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4256
      (lambda (_ctx4258_)
        (let ((_$e4260_ (gx#core-context-top__1 _ctx4258_)))
          (if _$e4260_
              ((lambda (_ctx4263_)
                 (if (##structure-instance-of? _ctx4263_ 'gx#module-context::t)
                     (##structure-ref _ctx4263_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4260_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4269_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4256 _ctx4269_))))
      (define gx#core-context-namespace
        (lambda _g5862_
          (let ((_g5861_ (length _g5862_)))
            (cond ((fx= _g5861_ 0)
                   (apply gx#core-context-namespace__0 _g5862_))
                  ((fx= _g5861_ 1)
                   (apply gx#core-context-namespace__opt-lambda4256 _g5862_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g5862_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4242
      (lambda (_bind4244_ _is?4245_)
        (if (##structure-direct-instance-of? _bind4244_ 'gx#syntax-binding::t)
            (_is?4245_
             (##direct-structure-ref _bind4244_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4250_)
          (let ((_is?4252_ gx#expander?))
            (gx#expander-binding?__opt-lambda4242 _bind4250_ _is?4252_))))
      (define gx#expander-binding?
        (lambda _g5864_
          (let ((_g5863_ (length _g5864_)))
            (cond ((fx= _g5863_ 1) (apply gx#expander-binding?__0 _g5864_))
                  ((fx= _g5863_ 2)
                   (apply gx#expander-binding?__opt-lambda4242 _g5864_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g5864_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4241_)
      (gx#expander-binding?__opt-lambda4242 _bind4241_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4239_)
      (gx#expander-binding?__opt-lambda4242 _bind4239_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4233_)
      (letrec ((_direct-special-form?4235_
                (lambda (_obj4237_)
                  (##structure-direct-instance-of?
                   _obj4237_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__opt-lambda4242
         _bind4233_
         _direct-special-form?4235_))))
  (define gx#special-form-binding?
    (lambda (_bind4231_)
      (gx#expander-binding?__opt-lambda4242 _bind4231_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4222_)
      (letrec ((_feature?4224_
                (lambda (_e4226_)
                  (let ((_$e4228_
                         (##structure-instance-of?
                          _e4226_
                          'gx#feature-expander::t)))
                    (if _$e4228_
                        _$e4228_
                        (##structure-instance-of?
                         _e4226_
                         'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4242 _bind4222_ _feature?4224_))))
  (define gx#private-feature-binding?
    (lambda (_bind4220_)
      (gx#expander-binding?__opt-lambda4242
       _bind4220_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4205
      (lambda (_id4207_ _bound?4208_)
        (if (gx#identifier? _id4207_)
            (_bound?4208_ (gx#resolve-identifier__0 _id4207_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4213_)
          (let ((_bound?4215_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4205
             _id4213_
             _bound?4215_))))
      (define gx#core-bound-identifier?
        (lambda _g5866_
          (let ((_g5865_ (length _g5866_)))
            (cond ((fx= _g5865_ 1)
                   (apply gx#core-bound-identifier?__0 _g5866_))
                  ((fx= _g5865_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4205 _g5866_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g5866_))))))))
  (define gx#core-identifier=?
    (lambda (_x4197_ _y4198_)
      (letrec ((_y=?4200_
                (lambda (_xid4204_)
                  ((if (list? _y4198_) memq eq?) _xid4204_ _y4198_))))
        (let ((_bind4202_ (gx#resolve-identifier__0 _x4197_)))
          (if (##structure-instance-of? _bind4202_ 'gx#binding::t)
              (_y=?4200_ (##structure-ref _bind4202_ '1 gx#binding::t '#f))
              (_y=?4200_ (gx#stx-e _x4197_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4195_)
      (if (interned-symbol? _e4195_)
          (string-index (symbol->string _e4195_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda4151
      (lambda (_stx4153_ _src4154_ _ctx4155_ _marks4156_)
        (if (gx#sealed-syntax? _stx4153_)
            (gx#stx-unwrap__0 _stx4153_)
            (if (gx#identifier? _stx4153_)
                (let ((_id4158_ (gx#syntax-local-unwrap _stx4153_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4158_)
                   (let ((_$e4160_ (gx#stx-source _id4158_)))
                     (if _$e4160_ _$e4160_ _src4154_))
                   _ctx4155_
                   (##direct-structure-ref
                    _id4158_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4153_)
                    (gx#stx-e _stx4153_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4153_
                     (let ((_$e4163_ (gx#stx-source _stx4153_)))
                       (if _$e4163_ _$e4163_ _src4154_))
                     _ctx4155_
                     (reverse _marks4156_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4169_)
          (let* ((_src4171_ '#f)
                 (_ctx4173_ (gx#current-expander-context))
                 (_marks4175_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4151
             _stx4169_
             _src4171_
             _ctx4173_
             _marks4175_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4177_ _src4178_)
          (let* ((_ctx4180_ (gx#current-expander-context))
                 (_marks4182_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4151
             _stx4177_
             _src4178_
             _ctx4180_
             _marks4182_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4184_ _src4185_ _ctx4186_)
          (let ((_marks4188_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4151
             _stx4184_
             _src4185_
             _ctx4186_
             _marks4188_))))
      (define gx#core-quote-syntax
        (lambda _g5868_
          (let ((_g5867_ (length _g5868_)))
            (cond ((fx= _g5867_ 1) (apply gx#core-quote-syntax__0 _g5868_))
                  ((fx= _g5867_ 2) (apply gx#core-quote-syntax__1 _g5868_))
                  ((fx= _g5867_ 3) (apply gx#core-quote-syntax__2 _g5868_))
                  ((fx= _g5867_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4151 _g5868_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g5868_))))))))
  (define gx#core-cons
    (lambda (_hd4149_ _tl4150_)
      (cons (gx#core-quote-syntax__0 _hd4149_) _tl4150_)))
  (define gx#core-list
    (lambda (_hd4146_ . _rest4147_)
      (cons (gx#core-quote-syntax__0 _hd4146_) _rest4147_)))
  (define gx#core-cons*
    (lambda (_hd4143_ . _rest4144_)
      (apply cons* (gx#core-quote-syntax__0 _hd4143_) _rest4144_)))
  (begin
    (define gx#core-resolve-path__opt-lambda4115
      (lambda (_stx-path4117_ _rel4118_)
        (let ((_path4130_ (gx#stx-e _stx-path4117_))
              (_reldir4131_
               (let _lp4120_ ((_relsrc4122_
                               (let ((_$e4127_ (gx#stx-source _stx-path4117_)))
                                 (if _$e4127_ _$e4127_ _rel4118_))))
                 (if (##structure-instance-of? _relsrc4122_ 'gerbil#AST::t)
                     (_lp4120_
                      (let ((_$e4124_ (gx#stx-source _relsrc4122_)))
                        (if _$e4124_ _$e4124_ (gx#stx-e _relsrc4122_))))
                     (if (source-location-path? _relsrc4122_)
                         (path-directory (source-location-path _relsrc4122_))
                         (if (string? _relsrc4122_)
                             (path-directory _relsrc4122_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4130_ (path-normalize _reldir4131_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4136_)
          (let ((_rel4138_ '#f))
            (gx#core-resolve-path__opt-lambda4115 _stx-path4136_ _rel4138_))))
      (define gx#core-resolve-path
        (lambda _g5870_
          (let ((_g5869_ (length _g5870_)))
            (cond ((fx= _g5869_ 1) (apply gx#core-resolve-path__0 _g5870_))
                  ((fx= _g5869_ 2)
                   (apply gx#core-resolve-path__opt-lambda4115 _g5870_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g5870_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4114_) (gx#stx-rewrap _stx4114_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4112_)
      (gx#stx-unwrap__opt-lambda3925 _stx4112_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4080_)
      (let* ((_g40814089_ (gx#current-expander-marks))
             (_E40844093_
              (lambda () (error '"No clause matching" _g40814089_)))
             (_else40834097_ (lambda () _stx4080_))
             (_K40854102_
              (lambda (_hd4100_) (gx#stx-apply-mark _stx4080_ _hd4100_))))
        (if (##pair? _g40814089_)
            (let ((_hd40864105_ (##car _g40814089_))
                  (_tl40874107_ (##cdr _g40814089_)))
              (let ((_hd4110_ _hd40864105_)) (_K40854102_ _hd4110_)))
            (_else40834097_)))))
  (begin
    (define gx#syntax-local-e__opt-lambda4063
      (lambda (_stx4065_ _E4066_)
        (let ((_bind4068_ (gx#resolve-identifier__0 _stx4065_)))
          (if (##structure-direct-instance-of?
               _bind4068_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4068_ '4 gx#syntax-binding::t '#f)
              (_E4066_ _stx4065_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4073_)
          (let ((_E4075_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda4063 _stx4073_ _E4075_))))
      (define gx#syntax-local-e
        (lambda _g5872_
          (let ((_g5871_ (length _g5872_)))
            (cond ((fx= _g5871_ 1) (apply gx#syntax-local-e__0 _g5872_))
                  ((fx= _g5871_ 2)
                   (apply gx#syntax-local-e__opt-lambda4063 _g5872_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g5872_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda4047
      (lambda (_stx4049_ _E4050_)
        (let ((_e4052_ (gx#syntax-local-e__opt-lambda4063 _stx4049_ _E4050_)))
          (if (##structure-instance-of? _e4052_ 'gx#expander::t)
              (##structure-ref _e4052_ '1 gx#expander::t '#f)
              _e4052_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4057_)
          (let ((_E4059_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda4047 _stx4057_ _E4059_))))
      (define gx#syntax-local-value
        (lambda _g5874_
          (let ((_g5873_ (length _g5874_)))
            (cond ((fx= _g5873_ 1) (apply gx#syntax-local-value__0 _g5874_))
                  ((fx= _g5873_ 2)
                   (apply gx#syntax-local-value__opt-lambda4047 _g5874_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g5874_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4046_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4046_))))
