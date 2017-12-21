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
    (lambda _$args5891_
      (apply make-struct-instance gx#expander-context::t _$args5891_)))
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
    (lambda _$args5888_
      (apply make-struct-instance gx#root-context::t _$args5888_)))
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
    (lambda _$args5885_
      (apply make-struct-instance gx#phi-context::t _$args5885_)))
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
    (lambda _$args5882_
      (apply make-struct-instance gx#top-context::t _$args5882_)))
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
    (lambda _$args5879_
      (apply make-struct-instance gx#module-context::t _$args5879_)))
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
    (lambda _$args5876_
      (apply make-struct-instance gx#prelude-context::t _$args5876_)))
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
    (lambda _$args5873_
      (apply make-struct-instance gx#local-context::t _$args5873_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5855
      (lambda (_self5857_ _id5858_ _super5859_)
        (struct-instance-init!
         _self5857_
         _id5858_
         (make-hash-table-eq)
         _super5859_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5864_ _id5865_)
          (let ((_super5867_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5855
             _self5864_
             _id5865_
             _super5867_))))
      (define gx#phi-context:::init!
        (lambda _g5895_
          (let ((_g5894_ (length _g5895_)))
            (cond ((fx= _g5894_ 2) (apply gx#phi-context:::init!__0 _g5895_))
                  ((fx= _g5894_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5855 _g5895_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g5895_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5841
      (lambda (_self5843_ _super5844_)
        (struct-instance-init!
         _self5843_
         (gensym 'L)
         (make-hash-table-eq)
         _super5844_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5849_)
          (let ((_super5851_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5841
             _self5849_
             _super5851_))))
      (define gx#local-context:::init!
        (lambda _g5897_
          (let ((_g5896_ (length _g5897_)))
            (cond ((fx= _g5896_ 1) (apply gx#local-context:::init!__0 _g5897_))
                  ((fx= _g5896_ 2)
                   (apply gx#local-context:::init!__opt-lambda5841 _g5897_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g5897_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5839_
      (apply make-struct-instance gx#binding::t _$args5839_)))
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
    (lambda _$args5836_
      (apply make-struct-instance gx#runtime-binding::t _$args5836_)))
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
    (lambda _$args5833_
      (apply make-struct-instance gx#local-binding::t _$args5833_)))
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
    (lambda _$args5830_
      (apply make-struct-instance gx#top-binding::t _$args5830_)))
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
    (lambda _$args5827_
      (apply make-struct-instance gx#module-binding::t _$args5827_)))
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
    (lambda _$args5824_
      (apply make-struct-instance gx#extern-binding::t _$args5824_)))
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
    (lambda _$args5821_
      (apply make-struct-instance gx#syntax-binding::t _$args5821_)))
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
    (lambda _$args5818_
      (apply make-struct-instance gx#import-binding::t _$args5818_)))
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
    (lambda _$args5815_
      (apply make-struct-instance gx#alias-binding::t _$args5815_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5812_
      (apply make-struct-instance gx#expander::t _$args5812_)))
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
    (lambda _$args5809_
      (apply make-struct-instance gx#core-expander::t _$args5809_)))
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
    (lambda _$args5806_
      (apply make-struct-instance gx#expression-form::t _$args5806_)))
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
    (lambda _$args5803_
      (apply make-struct-instance gx#special-form::t _$args5803_)))
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
    (lambda _$args5800_
      (apply make-struct-instance gx#definition-form::t _$args5800_)))
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
    (lambda _$args5797_
      (apply make-struct-instance gx#top-special-form::t _$args5797_)))
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
    (lambda _$args5794_
      (apply make-struct-instance gx#module-special-form::t _$args5794_)))
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
    (lambda _$args5791_
      (apply make-struct-instance gx#feature-expander::t _$args5791_)))
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
    (lambda _$args5788_
      (apply make-struct-instance gx#private-feature-expander::t _$args5788_)))
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
    (lambda _$args5785_
      (apply make-struct-instance gx#reserved-expander::t _$args5785_)))
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
    (lambda _$args5782_
      (apply make-struct-instance gx#macro-expander::t _$args5782_)))
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
    (lambda _$args5779_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5779_)))
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
    (lambda _$args5776_
      (apply make-struct-instance gx#user-expander::t _$args5776_)))
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
    (lambda _$args5773_
      (apply make-struct-instance gx#expander-mark::t _$args5773_)))
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
    (lambda _$args5770_
      (apply make-struct-instance gx#syntax-error::t _$args5770_)))
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
    (lambda (_where5765_ _message5766_ _stx5767_ . _details5768_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5766_
              (cons _stx5767_ _details5768_)
              _where5765_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5750
      (lambda (_stx5752_ _expression?5753_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5734 _stx5752_ _expression?5753_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5758_)
          (let ((_expression?5760_ '#f))
            (gx#eval-syntax__opt-lambda5750 _stx5758_ _expression?5760_))))
      (define gx#eval-syntax
        (lambda _g5899_
          (let ((_g5898_ (length _g5899_)))
            (cond ((fx= _g5898_ 1) (apply gx#eval-syntax__0 _g5899_))
                  ((fx= _g5898_ 2)
                   (apply gx#eval-syntax__opt-lambda5750 _g5899_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g5899_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5749_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5749_))))
  (begin
    (define gx#core-expand__opt-lambda5734
      (lambda (_stx5736_ _expression?5737_)
        (if _expression?5737_
            (gx#core-expand-expression _stx5736_)
            (gx#core-expand-top _stx5736_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5742_)
          (let ((_expression?5744_ '#f))
            (gx#core-expand__opt-lambda5734 _stx5742_ _expression?5744_))))
      (define gx#core-expand
        (lambda _g5901_
          (let ((_g5900_ (length _g5901_)))
            (cond ((fx= _g5900_ 1) (apply gx#core-expand__0 _g5901_))
                  ((fx= _g5900_ 2)
                   (apply gx#core-expand__opt-lambda5734 _g5901_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g5901_))))))))
  (define gx#core-expand-top
    (lambda (_stx5703_)
      (let* ((_stx5705_ (gx#core-expand*__0 _stx5703_))
             (_e57065713_ _stx5705_)
             (_E57085717_ (lambda () (gx#core-expand-expression _stx5705_)))
             (_E57075731_
              (lambda ()
                (if (gx#stx-pair? _e57065713_)
                    (let ((_e57095721_ (gx#syntax-e _e57065713_)))
                      (let ((_hd57105724_ (##car _e57095721_))
                            (_tl57115726_ (##cdr _e57095721_)))
                        (let ((_form5729_ _hd57105724_))
                          (if (gx#core-bound-identifier?__0 _form5729_)
                              _stx5705_
                              (_E57085717_)))))
                    (_E57085717_)))))
        (_E57075731_))))
  (define gx#core-expand-expression
    (lambda (_stx5625_)
      (letrec ((_sealed-expression?5627_
                (lambda (_hd5673_)
                  (if (gx#sealed-syntax? _hd5673_)
                      (let* ((_e56745681_ _hd5673_)
                             (_E56765685_ (lambda () '#f))
                             (_E56755699_
                              (lambda ()
                                (if (gx#stx-pair? _e56745681_)
                                    (let ((_e56775689_
                                           (gx#syntax-e _e56745681_)))
                                      (let ((_hd56785692_ (##car _e56775689_))
                                            (_tl56795694_ (##cdr _e56775689_)))
                                        (let ((_form5697_ _hd56785692_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4273
                                               _form5697_
                                               gx#expression-form-binding?)
                                              (_E56765685_)))))
                                    (_E56765685_)))))
                        (_E56755699_))
                      '#f)))
               (_illegal-expression5628_
                (lambda (_hd5671_ . _g5902_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx5625_
                   _hd5671_)))
               (_expand-e5629_
                (lambda (_form5666_ _hd5667_)
                  (let ((_bind5669_
                         (if (##structure-instance-of?
                              _form5666_
                              'gx#binding::t)
                             _form5666_
                             (gx#resolve-identifier__0 _form5666_))))
                    (if (gx#core-expander-binding? _bind5669_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind5669_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd5667_
                          (gx#stx-source _stx5625_)))
                        (if (##structure-direct-instance-of?
                             _bind5669_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind5669_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd5667_
                               (gx#stx-source _stx5625_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx5625_
                             _form5666_)))))))
        (let ((_hd5631_ (gx#core-expand-head _stx5625_)))
          (if (_sealed-expression?5627_ _hd5631_)
              _hd5631_
              (if (gx#stx-pair? _hd5631_)
                  (let* ((_e56325639_ _hd5631_)
                         (_E56345643_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e56325639_)))
                         (_E56335662_
                          (lambda ()
                            (if (gx#stx-pair? _e56325639_)
                                (let ((_e56355647_ (gx#syntax-e _e56325639_)))
                                  (let ((_hd56365650_ (##car _e56355647_))
                                        (_tl56375652_ (##cdr _e56355647_)))
                                    (let ((_form5655_ _hd56365650_))
                                      (if '#t
                                          (let ((_bind5657_
                                                 (if (gx#identifier?
                                                      _form5655_)
                                                     (gx#resolve-identifier__0
                                                      _form5655_)
                                                     '#f)))
                                            (if (let ((_$e5659_
                                                       (not _bind5657_)))
                                                  (if _$e5659_
                                                      _$e5659_
                                                      (not (gx#core-expander-binding?
                                                            _bind5657_))))
                                                (_expand-e5629_
                                                 '%%app
                                                 (cons '%%app _hd5631_))
                                                (if (eq? (##structure-ref
                                                          _bind5657_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd5631_
                                                     _illegal-expression5628_)
                                                    (if (gx#expression-form-binding?
                                                         _bind5657_)
                                                        (_expand-e5629_
                                                         _bind5657_
                                                         _hd5631_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind5657_)
                                                            (gx#core-expand-expression
                                                             (_expand-e5629_
                                                              _bind5657_
                                                              _hd5631_))
                                                            (_illegal-expression5628_
                                                             _hd5631_))))))
                                          (_E56345643_)))))
                                (_E56345643_)))))
                    (_E56335662_))
                  (if (gx#core-bound-identifier?__0 _hd5631_)
                      (_illegal-expression5628_ _hd5631_)
                      (if (gx#identifier? _hd5631_)
                          (_expand-e5629_
                           '%%ref
                           (cons '%%ref (cons _hd5631_ '())))
                          (if (gx#stx-datum? _hd5631_)
                              (_expand-e5629_
                               '%#quote
                               (cons '%#quote (cons _hd5631_ '())))
                              (_illegal-expression5628_ _hd5631_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5620_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5623_ (gx#core-expand-expression _stx5620_)))
           (values _stx5623_ (gx#eval-syntax* _stx5623_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5599
      (lambda (_stx5601_ _stop?5602_)
        (let _lp5604_ ((_stx5606_ _stx5601_))
          (if (_stop?5602_ _stx5606_)
              _stx5606_
              (let ((_rstx5608_ (gx#core-expand1 _stx5606_)))
                (if (eq? _stx5606_ _rstx5608_)
                    _stx5606_
                    (_lp5604_ _rstx5608_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5613_)
          (let ((_stop?5615_ false))
            (gx#core-expand*__opt-lambda5599 _stx5613_ _stop?5615_))))
      (define gx#core-expand*
        (lambda _g5904_
          (let ((_g5903_ (length _g5904_)))
            (cond ((fx= _g5903_ 1) (apply gx#core-expand*__0 _g5904_))
                  ((fx= _g5903_ 2)
                   (apply gx#core-expand*__opt-lambda5599 _g5904_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g5904_))))))))
  (define gx#core-expand1
    (lambda (_stx5557_)
      (letrec ((_step5559_
                (lambda (_hd5596_)
                  (let ((_bind5598_ (gx#resolve-identifier__0 _hd5596_)))
                    (if (##structure-instance-of?
                         _bind5598_
                         'gx#runtime-binding::t)
                        _stx5557_
                        (if (##structure-direct-instance-of?
                             _bind5598_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind5598_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx5557_)
                            (if (not _bind5598_)
                                _stx5557_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx5557_))))))))
        (let* ((_e55605568_ _stx5557_)
               (_E55665572_ (lambda () _stx5557_))
               (_E55625578_
                (lambda ()
                  (let ((_hd5576_ _e55605568_))
                    (if (gx#identifier? _hd5576_)
                        (_step5559_ _hd5576_)
                        (_E55665572_)))))
               (_E55615592_
                (lambda ()
                  (if (gx#stx-pair? _e55605568_)
                      (let ((_e55635582_ (gx#syntax-e _e55605568_)))
                        (let ((_hd55645585_ (##car _e55635582_))
                              (_tl55655587_ (##cdr _e55635582_)))
                          (let ((_hd5590_ _hd55645585_))
                            (if (gx#identifier? _hd5590_)
                                (_step5559_ _hd5590_)
                                (_E55625578_)))))
                      (_E55625578_)))))
          (_E55615592_)))))
  (define gx#core-expand-head
    (lambda (_stx5523_)
      (letrec ((_stop?5525_
                (lambda (_stx5527_)
                  (let* ((_e55285535_ _stx5527_)
                         (_E55305539_ (lambda () '#f))
                         (_E55295553_
                          (lambda ()
                            (if (gx#stx-pair? _e55285535_)
                                (let ((_e55315543_ (gx#syntax-e _e55285535_)))
                                  (let ((_hd55325546_ (##car _e55315543_))
                                        (_tl55335548_ (##cdr _e55315543_)))
                                    (let ((_hd5551_ _hd55325546_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5551_)
                                          (_E55305539_)))))
                                (_E55305539_)))))
                    (_E55295553_)))))
        (gx#core-expand*__opt-lambda5599 _stx5523_ _stop?5525_))))
  (begin
    (define gx#core-expand-block__opt-lambda5327
      (lambda (_stx5329_ _expand-special5330_ _begin-form5331_ _expand-e5332_)
        (letrec ((_expand-splice5334_
                  (lambda (_hd5497_ _body5498_ _rest5499_ _r5500_)
                    (if (gx#stx-list? _body5498_)
                        (_K5338_ (gx#stx-foldr cons _rest5499_ _body5498_)
                                 _r5500_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5329_
                         _hd5497_))))
                 (_expand-cond-expand5335_
                  (lambda (_hd5493_ _rest5494_ _r5495_)
                    (_K5338_ (cons (gx#core-expand-cond-expand% _hd5493_)
                                   _rest5494_)
                             _r5495_)))
                 (_expand-include5336_
                  (lambda (_hd5442_ _rest5443_ _r5444_)
                    (let* ((_e54455455_ _hd5442_)
                           (_E54475459_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e54455455_)))
                           (_E54465489_
                            (lambda ()
                              (if (gx#stx-pair? _e54455455_)
                                  (let ((_e54485463_
                                         (gx#syntax-e _e54455455_)))
                                    (let ((_hd54495466_ (##car _e54485463_))
                                          (_tl54505468_ (##cdr _e54485463_)))
                                      (if (gx#stx-pair? _tl54505468_)
                                          (let ((_e54515471_
                                                 (gx#syntax-e _tl54505468_)))
                                            (let ((_hd54525474_
                                                   (##car _e54515471_))
                                                  (_tl54535476_
                                                   (##cdr _e54515471_)))
                                              (let ((_path5479_ _hd54525474_))
                                                (if (gx#stx-null? _tl54535476_)
                                                    (if (gx#stx-string?
                                                         _path5479_)
                                                        (let* ((_rpath5481_
                                                                (gx#core-resolve-path__opt-lambda4183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path5479_
                         (gx#stx-source _hd5442_)))
                       (_block5483_
                        (gx#core-expand-include%__opt-lambda5076
                         _hd5442_
                         _rpath5481_))
                       (_rbody5486_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__opt-lambda5327
                            _block5483_
                            _expand-special5330_
                            '#f
                            _expand-e5332_))
                         gx#current-expander-path
                         (cons _rpath5481_ (gx#current-expander-path)))))
                  (_K5338_ _rest5443_ (foldr1 cons _r5444_ _rbody5486_)))
                (_E54475459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E54475459_)))))
                                          (_E54475459_))))
                                  (_E54475459_)))))
                      (_E54465489_))))
                 (_expand-expression5337_
                  (lambda (_hd5438_ _rest5439_ _r5440_)
                    (_K5338_ _rest5439_
                             (cons (_expand-e5332_ _hd5438_) _r5440_))))
                 (_K5338_ (lambda (_rest5368_ _r5369_)
                            (let* ((_e53705377_ _rest5368_)
                                   (_E53725381_
                                    (lambda ()
                                      (if _begin-form5331_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form5331_
                                            (reverse _r5369_))
                                           (gx#stx-source _stx5329_))
                                          _r5369_)))
                                   (_E53715434_
                                    (lambda ()
                                      (if (gx#stx-pair? _e53705377_)
                                          (let ((_e53735385_
                                                 (gx#syntax-e _e53705377_)))
                                            (let ((_hd53745388_
                                                   (##car _e53735385_))
                                                  (_tl53755390_
                                                   (##cdr _e53735385_)))
                                              (let* ((_hd5393_ _hd53745388_)
                                                     (_rest5395_ _tl53755390_))
                                                (if '#t
                                                    (let* ((_hd5397_
                                                            (gx#core-expand-head
                                                             _hd5393_))
                                                           (_e53985405_
                                                            _hd5397_)
                                                           (_E54005409_
                                                            (lambda ()
                                                              (_expand-expression5337_
                                                               _hd5397_
                                                               _rest5395_
                                                               _r5369_)))
                                                           (_E53995430_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e53985405_)
                          (let ((_e54015413_ (gx#syntax-e _e53985405_)))
                            (let ((_hd54025416_ (##car _e54015413_))
                                  (_tl54035418_ (##cdr _e54015413_)))
                              (let* ((_form5421_ _hd54025416_)
                                     (_body5423_ _tl54035418_))
                                (if '#t
                                    (let ((_bind5425_
                                           (if (gx#identifier? _form5421_)
                                               (gx#resolve-identifier__0
                                                _form5421_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind5425_)
                                          (let ((_$e5427_
                                                 (##structure-ref
                                                  _bind5425_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? _$e5427_ '%#begin)
                                                (_expand-splice5334_
                                                 _hd5397_
                                                 _body5423_
                                                 _rest5395_
                                                 _r5369_)
                                                (if (eq? _$e5427_
                                                         '%#cond-expand)
                                                    (_expand-cond-expand5335_
                                                     _hd5397_
                                                     _rest5395_
                                                     _r5369_)
                                                    (if (eq? _$e5427_
                                                             '%#include)
                                                        (_expand-include5336_
                                                         _hd5397_
                                                         _rest5395_
                                                         _r5369_)
                                                        (_expand-special5330_
                                                         _hd5397_
                                                         _K5338_
                                                         _rest5395_
                                                         _r5369_)))))
                                          (_expand-expression5337_
                                           _hd5397_
                                           _rest5395_
                                           _r5369_)))
                                    (_E54005409_)))))
                          (_E54005409_)))))
              (_E53995430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E53725381_)))))
                                          (_E53725381_)))))
                              (_E53715434_)))))
          (let* ((_e53395346_ _stx5329_)
                 (_E53415350_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e53395346_)))
                 (_E53405364_
                  (lambda ()
                    (if (gx#stx-pair? _e53395346_)
                        (let ((_e53425354_ (gx#syntax-e _e53395346_)))
                          (let ((_hd53435357_ (##car _e53425354_))
                                (_tl53445359_ (##cdr _e53425354_)))
                            (let ((_body5362_ _tl53445359_))
                              (if (gx#stx-list? _body5362_)
                                  (_K5338_ _body5362_ '())
                                  (_E53415350_)))))
                        (_E53415350_)))))
            (_E53405364_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5505_ _expand-special5506_)
          (let* ((_begin-form5508_ '%#begin)
                 (_expand-e5510_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5327
             _stx5505_
             _expand-special5506_
             _begin-form5508_
             _expand-e5510_))))
      (define gx#core-expand-block__1
        (lambda (_stx5512_ _expand-special5513_ _begin-form5514_)
          (let ((_expand-e5516_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5327
             _stx5512_
             _expand-special5513_
             _begin-form5514_
             _expand-e5516_))))
      (define gx#core-expand-block
        (lambda _g5906_
          (let ((_g5905_ (length _g5906_)))
            (cond ((fx= _g5905_ 2) (apply gx#core-expand-block__0 _g5906_))
                  ((fx= _g5905_ 3) (apply gx#core-expand-block__1 _g5906_))
                  ((fx= _g5905_ 4)
                   (apply gx#core-expand-block__opt-lambda5327 _g5906_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g5906_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5277_ _expand-special5278_)
      (let* ((_g52795290_
              (gx#core-expand-block__1 _stx5277_ _expand-special5278_ '#f))
             (_E52835294_
              (lambda () (error '"No clause matching" _g52795290_)))
             (_try-match52825305_
              (lambda ()
                (let* ((_K52845300_
                        (lambda (_body5298_)
                          (gx#core-quote-syntax__1
                           (gx#core-cons '%#begin (reverse _body5298_))
                           (gx#stx-source _stx5277_))))
                       (_body5303_ _g52795290_))
                  (_K52845300_ _body5303_))))
             (_try-match52815321_
              (lambda ()
                (let ((_K52855311_ (lambda (_expr5309_) _expr5309_)))
                  (if (##pair? _g52795290_)
                      (let ((_hd52865314_ (##car _g52795290_))
                            (_tl52875316_ (##cdr _g52795290_)))
                        (let ((_expr5319_ _hd52865314_))
                          (if (##null? _tl52875316_)
                              (_K52855311_ _expr5319_)
                              (_try-match52825305_))))
                      (_try-match52825305_)))))
             (_K52885325_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; empty block"
                 _stx5277_))))
        (if (##null? _g52795290_) (_K52885325_) (_try-match52815321_)))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5135_)
      (letrec ((_satisfied?5137_
                (lambda (_condition5235_)
                  (let* ((_e52365244_ _condition5235_)
                         (_E52395248_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e52365244_)))
                         (_E52385267_
                          (lambda ()
                            (if (gx#stx-pair? _e52365244_)
                                (let ((_e52405252_ (gx#syntax-e _e52365244_)))
                                  (let ((_hd52415255_ (##car _e52405252_))
                                        (_tl52425257_ (##cdr _e52405252_)))
                                    (let* ((_combinator5260_ _hd52415255_)
                                           (_body5262_ _tl52425257_))
                                      (if (gx#stx-list? _body5262_)
                                          (let ((_$e5264_
                                                 (gx#stx-e _combinator5260_)))
                                            (if (eq? _$e5264_ 'not)
                                                (not (gx#stx-ormap
                                                      _satisfied?5137_
                                                      _body5262_))
                                                (if (eq? _$e5264_ 'and)
                                                    (gx#stx-andmap
                                                     _satisfied?5137_
                                                     _body5262_)
                                                    (if (eq? _$e5264_ 'or)
                                                        (gx#stx-ormap
                                                         _satisfied?5137_
                                                         _body5262_)
                                                        (if (eq? _$e5264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'defined)
                    (gx#stx-andmap gx#core-resolve-identifier _body5262_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx5135_
                     _combinator5260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E52395248_)))))
                                (_E52395248_))))
                         (_E52375273_
                          (lambda ()
                            (let ((_id5271_ _e52365244_))
                              (if (gx#identifier? _id5271_)
                                  (gx#core-bound-identifier?__opt-lambda4273
                                   _id5271_
                                   gx#feature-binding?)
                                  (_E52385267_))))))
                    (_E52375273_))))
               (_loop5138_
                (lambda (_rest5168_)
                  (let* ((_e51695177_ _rest5168_)
                         (_E51755181_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e51695177_)))
                         (_E51715185_
                          (lambda ()
                            (if (gx#stx-null? _e51695177_)
                                (if '#t '() (_E51755181_))
                                (_E51755181_))))
                         (_E51705231_
                          (lambda ()
                            (if (gx#stx-pair? _e51695177_)
                                (let ((_e51725189_ (gx#syntax-e _e51695177_)))
                                  (let ((_hd51735192_ (##car _e51725189_))
                                        (_tl51745194_ (##cdr _e51725189_)))
                                    (let* ((_hd5197_ _hd51735192_)
                                           (_rest5199_ _tl51745194_))
                                      (if '#t
                                          (let* ((_e52005207_ _hd5197_)
                                                 (_E52025211_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e52005207_)))
                                                 (_E52015227_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e52005207_)
                                                        (let ((_e52035215_
                                                               (gx#syntax-e
                                                                _e52005207_)))
                                                          (let ((_hd52045218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e52035215_))
                        (_tl52055220_ (##cdr _e52035215_)))
                    (let* ((_condition5223_ _hd52045218_)
                           (_body5225_ _tl52055220_))
                      (if '#t
                          (if (gx#stx-eq? _condition5223_ 'else)
                              (if (gx#stx-null? _rest5199_)
                                  _body5225_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx5135_
                                   _hd5197_))
                              (if (_satisfied?5137_ _condition5223_)
                                  _body5225_
                                  (_loop5138_ _rest5199_)))
                          (_E52025211_)))))
                (_E52025211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E52015227_))
                                          (_E51715185_)))))
                                (_E51715185_)))))
                    (_E51705231_)))))
        (let* ((_e51395146_ _stx5135_)
               (_E51415150_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e51395146_)))
               (_E51405164_
                (lambda ()
                  (if (gx#stx-pair? _e51395146_)
                      (let ((_e51425154_ (gx#syntax-e _e51395146_)))
                        (let ((_hd51435157_ (##car _e51425154_))
                              (_tl51445159_ (##cdr _e51425154_)))
                          (let ((_clauses5162_ _tl51445159_))
                            (if (gx#stx-list? _clauses5162_)
                                (gx#core-cons
                                 'begin
                                 (_loop5138_ _clauses5162_))
                                (_E51415150_)))))
                      (_E51415150_)))))
          (_E51405164_)))))
  (begin
    (define gx#core-expand-include%__opt-lambda5076
      (lambda (_stx5078_ _rpath5079_)
        (let* ((_e50805090_ _stx5078_)
               (_E50825094_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e50805090_)))
               (_E50815121_
                (lambda ()
                  (if (gx#stx-pair? _e50805090_)
                      (let ((_e50835098_ (gx#syntax-e _e50805090_)))
                        (let ((_hd50845101_ (##car _e50835098_))
                              (_tl50855103_ (##cdr _e50835098_)))
                          (if (gx#stx-pair? _tl50855103_)
                              (let ((_e50865106_ (gx#syntax-e _tl50855103_)))
                                (let ((_hd50875109_ (##car _e50865106_))
                                      (_tl50885111_ (##cdr _e50865106_)))
                                  (let ((_path5114_ _hd50875109_))
                                    (if (gx#stx-null? _tl50885111_)
                                        (if (gx#stx-string? _path5114_)
                                            (let ((_rpath5119_
                                                   (let ((_$e5116_
                                                          _rpath5079_))
                                                     (if _$e5116_
                                                         _$e5116_
                                                         (gx#core-resolve-path__opt-lambda4183
                                                          _path5114_
                                                          (gx#stx-source
                                                           _stx5078_))))))
                                              (if (member _rpath5119_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx5078_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath5119_))
                                                    (gx#stx-source
                                                     _stx5078_)))))
                                            (_E50825094_))
                                        (_E50825094_)))))
                              (_E50825094_))))
                      (_E50825094_)))))
          (_E50815121_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5128_)
          (let ((_rpath5130_ '#f))
            (gx#core-expand-include%__opt-lambda5076 _stx5128_ _rpath5130_))))
      (define gx#core-expand-include%
        (lambda _g5908_
          (let ((_g5907_ (length _g5908_)))
            (cond ((fx= _g5907_ 1) (apply gx#core-expand-include%__0 _g5908_))
                  ((fx= _g5907_ 2)
                   (apply gx#core-expand-include%__opt-lambda5076 _g5908_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g5908_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda5045
      (lambda (_K5047_ _stx5048_ _method5049_)
        (if (procedure? _K5047_)
            (let ((_$e5051_ (gx#stx-source _stx5048_)))
              (if _$e5051_
                  ((lambda (_g50535055_)
                     (gx#stx-wrap-source (_K5047_ _stx5048_) _g50535055_))
                   _$e5051_)
                  (_K5047_ _stx5048_)))
            (let ((_$e5058_ (bound-method-ref _K5047_ _method5049_)))
              (if _$e5058_
                  ((lambda (_g50605062_)
                     (gx#core-apply-expander__opt-lambda5045
                      _g50605062_
                      _stx5048_
                      _method5049_))
                   _$e5058_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx5048_
                   _method5049_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K5068_ _stx5069_)
          (let ((_method5071_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda5045
             _K5068_
             _stx5069_
             _method5071_))))
      (define gx#core-apply-expander
        (lambda _g5910_
          (let ((_g5909_ (length _g5910_)))
            (cond ((fx= _g5909_ 2) (apply gx#core-apply-expander__0 _g5910_))
                  ((fx= _g5909_ 3)
                   (apply gx#core-apply-expander__opt-lambda5045 _g5910_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g5910_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self5043_ _stx5044_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx5044_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self5018_ _stx5019_)
      (let* ((_self50205026_ _self5018_)
             (_E50225030_
              (lambda () (error '"No clause matching" _self50205026_)))
             (_K50235035_
              (lambda (_K5033_)
                (gx#core-apply-expander__0 _K5033_ _stx5019_))))
        (if (##structure-instance-of?
             _self50205026_
             (##type-id gx#macro-expander::t))
            (let* ((_e50245038_ (##vector-ref _self50205026_ '1))
                   (_K5041_ _e50245038_))
              (_K50235035_ _K5041_))
            (_E50225030_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4993_ _stx4994_)
      (if (gx#sealed-syntax? _stx4994_)
          _stx4994_
          (let* ((_self49955001_ _self4993_)
                 (_E49975005_
                  (lambda () (error '"No clause matching" _self49955001_)))
                 (_K49985010_
                  (lambda (_K5008_)
                    (gx#core-apply-expander__0 _K5008_ _stx4994_))))
            (if (##structure-instance-of?
                 _self49955001_
                 (##type-id gx#core-expander::t))
                (let* ((_e49995013_ (##vector-ref _self49955001_ '1))
                       (_K5016_ _e49995013_))
                  (_K49985010_ _K5016_))
                (_E49975005_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4975
      (lambda (_self4977_ _stx4978_ _top?4979_)
        (if (_top?4979_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4977_ _stx4978_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4978_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4984_ _stx4985_)
          (let ((_top?4987_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4975
             _self4984_
             _stx4985_
             _top?4987_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5912_
          (let ((_g5911_ (length _g5912_)))
            (cond ((fx= _g5911_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5912_))
                  ((fx= _g5911_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4975
                          _g5912_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g5912_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4973_ _stx4974_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4975
       _self4973_
       _stx4974_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4920_ _stx4921_)
      (let* ((_self49224928_ _self4920_)
             (_E49244932_
              (lambda () (error '"No clause matching" _self49224928_)))
             (_K49254965_
              (lambda (_id4935_)
                (let* ((_e49364943_ _stx4921_)
                       (_E49384947_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e49364943_)))
                       (_E49374961_
                        (lambda ()
                          (if (gx#stx-pair? _e49364943_)
                              (let ((_e49394951_ (gx#syntax-e _e49364943_)))
                                (let ((_hd49404954_ (##car _e49394951_))
                                      (_tl49414956_ (##cdr _e49394951_)))
                                  (let ((_body4959_ _tl49414956_))
                                    (if '#t
                                        (gx#core-cons _id4935_ _body4959_)
                                        (_E49384947_)))))
                              (_E49384947_)))))
                  (_E49374961_)))))
        (if (##structure-instance-of?
             _self49224928_
             (##type-id gx#rename-macro-expander::t))
            (let* ((_e49264968_ (##vector-ref _self49224928_ '1))
                   (_id4971_ _e49264968_))
              (_K49254965_ _id4971_))
            (_E49244932_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4866
      (lambda (_self4868_ _stx4869_ _method4870_)
        (let* ((_self48714879_ _self4868_)
               (_E48734883_
                (lambda () (error '"No clause matching" _self48714879_)))
               (_K48744890_
                (lambda (_phi4886_ _ctx4887_ _K4888_)
                  (gx#core-apply-user-macro
                   _K4888_
                   _stx4869_
                   _ctx4887_
                   _phi4886_
                   _method4870_))))
          (if (##structure-instance-of?
               _self48714879_
               (##type-id gx#user-expander::t))
              (let* ((_e48754893_ (##vector-ref _self48714879_ '1))
                     (_K4896_ _e48754893_)
                     (_e48764898_ (##vector-ref _self48714879_ '2))
                     (_ctx4901_ _e48764898_)
                     (_e48774903_ (##vector-ref _self48714879_ '3))
                     (_phi4906_ _e48774903_))
                (_K48744890_ _phi4906_ _ctx4901_ _K4896_))
              (_E48734883_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4911_ _stx4912_)
          (let ((_method4914_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4866
             _self4911_
             _stx4912_
             _method4914_))))
      (define gx#core-apply-user-expander
        (lambda _g5914_
          (let ((_g5913_ (length _g5914_)))
            (cond ((fx= _g5913_ 2)
                   (apply gx#core-apply-user-expander__0 _g5914_))
                  ((fx= _g5913_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4866 _g5914_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g5914_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4858_ _stx4859_ _ctx4860_ _phi4861_ _method4862_)
      (let ((_mark4864_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4860_
              _phi4861_
              _stx4859_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda5045
             _K4858_
             (gx#stx-apply-mark _stx4859_ _mark4864_)
             _method4862_)
            _mark4864_))
         gx#current-expander-marks
         (cons _mark4864_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4830
      (lambda (_stx4832_ _phi4833_ _ctx4834_)
        (let _lp4836_ ((_bind4838_
                        (gx#core-resolve-identifier__opt-lambda4760
                         _stx4832_
                         _phi4833_
                         _ctx4834_)))
          (if (##structure-direct-instance-of?
               _bind4838_
               'gx#import-binding::t)
              (_lp4836_
               (##direct-structure-ref _bind4838_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind4838_
                   'gx#alias-binding::t)
                  (_lp4836_
                   (gx#core-resolve-identifier__opt-lambda4760
                    (##direct-structure-ref
                     _bind4838_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi4833_
                    _ctx4834_))
                  _bind4838_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4843_)
          (let* ((_phi4845_ (gx#current-expander-phi))
                 (_ctx4847_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4830
             _stx4843_
             _phi4845_
             _ctx4847_))))
      (define gx#resolve-identifier__1
        (lambda (_stx4849_ _phi4850_)
          (let ((_ctx4852_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4830
             _stx4849_
             _phi4850_
             _ctx4852_))))
      (define gx#resolve-identifier
        (lambda _g5916_
          (let ((_g5915_ (length _g5916_)))
            (cond ((fx= _g5915_ 1) (apply gx#resolve-identifier__0 _g5916_))
                  ((fx= _g5915_ 2) (apply gx#resolve-identifier__1 _g5916_))
                  ((fx= _g5915_ 3)
                   (apply gx#resolve-identifier__opt-lambda4830 _g5916_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g5916_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4788
      (lambda (_stx4790_ _val4791_ _rebind?4792_ _phi4793_ _ctx4794_)
        (let ((_rebind?4796_
               (if (not _rebind?4792_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4792_) _rebind?4792_ true))))
          (gx#core-bind!__opt-lambda4549
           (gx#core-identifier-key _stx4790_)
           _val4791_
           _rebind?4796_
           _phi4793_
           _ctx4794_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4801_ _val4802_)
          (let* ((_rebind?4804_ '#f)
                 (_phi4806_ (gx#current-expander-phi))
                 (_ctx4808_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4788
             _stx4801_
             _val4802_
             _rebind?4804_
             _phi4806_
             _ctx4808_))))
      (define gx#bind-identifier!__1
        (lambda (_stx4810_ _val4811_ _rebind?4812_)
          (let* ((_phi4814_ (gx#current-expander-phi))
                 (_ctx4816_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4788
             _stx4810_
             _val4811_
             _rebind?4812_
             _phi4814_
             _ctx4816_))))
      (define gx#bind-identifier!__2
        (lambda (_stx4818_ _val4819_ _rebind?4820_ _phi4821_)
          (let ((_ctx4823_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4788
             _stx4818_
             _val4819_
             _rebind?4820_
             _phi4821_
             _ctx4823_))))
      (define gx#bind-identifier!
        (lambda _g5918_
          (let ((_g5917_ (length _g5918_)))
            (cond ((fx= _g5917_ 2) (apply gx#bind-identifier!__0 _g5918_))
                  ((fx= _g5917_ 3) (apply gx#bind-identifier!__1 _g5918_))
                  ((fx= _g5917_ 4) (apply gx#bind-identifier!__2 _g5918_))
                  ((fx= _g5917_ 5)
                   (apply gx#bind-identifier!__opt-lambda4788 _g5918_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g5918_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4760
      (lambda (_stx4762_ _phi4763_ _ctx4764_)
        (let _lp4766_ ((_e4768_ _stx4762_)
                       (_marks4769_ (gx#current-expander-marks)))
          (if (symbol? _e4768_)
              (gx#core-resolve-binding
               _e4768_
               _phi4763_
               _phi4763_
               _ctx4764_
               (reverse _marks4769_))
              (if (gx#identifier-quote? _e4768_)
                  (gx#core-resolve-binding
                   (##structure-ref _e4768_ '1 AST::t '#f)
                   _phi4763_
                   '0
                   (##direct-structure-ref _e4768_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e4768_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e4768_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e4768_ '1 AST::t '#f)
                       _phi4763_
                       _phi4763_
                       _ctx4764_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4768_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4769_))
                      (if (##structure-direct-instance-of?
                           _e4768_
                           'gx#syntax-wrap::t)
                          (_lp4766_
                           (##structure-ref _e4768_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e4768_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks4769_))
                          (if (##structure-instance-of? _e4768_ 'gerbil#AST::t)
                              (_lp4766_
                               (##structure-ref _e4768_ '1 AST::t '#f)
                               _marks4769_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx4762_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4774_)
          (let* ((_phi4776_ (gx#current-expander-phi))
                 (_ctx4778_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4760
             _stx4774_
             _phi4776_
             _ctx4778_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4780_ _phi4781_)
          (let ((_ctx4783_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4760
             _stx4780_
             _phi4781_
             _ctx4783_))))
      (define gx#core-resolve-identifier
        (lambda _g5920_
          (let ((_g5919_ (length _g5920_)))
            (cond ((fx= _g5919_ 1)
                   (apply gx#core-resolve-identifier__0 _g5920_))
                  ((fx= _g5919_ 2)
                   (apply gx#core-resolve-identifier__1 _g5920_))
                  ((fx= _g5919_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4760 _g5920_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g5920_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4675_ _phi4676_ _src-phi4677_ _ctx4678_ _marks4679_)
      (letrec ((_resolve4681_
                (lambda (_ctx4749_ _src-phi4750_ _key4751_)
                  (let _lp4753_ ((_ctx4755_
                                  (gx#core-context-shift _ctx4749_ _phi4676_))
                                 (_dphi4756_ (fx- _phi4676_ _src-phi4750_)))
                    (let ((_$e4758_
                           (gx#core-context-resolve _ctx4755_ _key4751_)))
                      (if _$e4758_
                          (values _$e4758_)
                          (if (fxzero? _dphi4756_)
                              '#f
                              (if (fxpositive? _dphi4756_)
                                  (_lp4753_
                                   (gx#core-context-shift _ctx4755_ '-1)
                                   (fx- _dphi4756_ '1))
                                  (if (fxnegative? _dphi4756_)
                                      (_lp4753_
                                       (gx#core-context-shift _ctx4755_ '1)
                                       (fx+ _dphi4756_ '1))
                                      '#!void)))))))))
        (let _lp4683_ ((_ctx4685_ _ctx4678_)
                       (_src-phi4686_ _src-phi4677_)
                       (_rest4687_ _marks4679_))
          (let* ((_rest46884696_ _rest4687_)
                 (_E46914700_
                  (lambda () (error '"No clause matching" _rest46884696_)))
                 (_else46904704_
                  (lambda () (_resolve4681_ _ctx4685_ _src-phi4686_ _id4675_)))
                 (_K46924737_
                  (lambda (_rest4707_ _hd4708_)
                    (let* ((_hd47094715_ _hd4708_)
                           (_E47114719_
                            (lambda ()
                              (error '"No clause matching" _hd47094715_)))
                           (_K47124729_
                            (lambda (_subst4722_)
                              (let ((_$e4726_
                                     (let ((_key4724_
                                            (if _subst4722_
                                                (table-ref
                                                 _subst4722_
                                                 _id4675_
                                                 '#f)
                                                '#f)))
                                       (if _key4724_
                                           (_resolve4681_
                                            _ctx4685_
                                            _src-phi4686_
                                            _key4724_)
                                           '#f))))
                                (if _$e4726_
                                    _$e4726_
                                    (_lp4683_
                                     (##structure-ref
                                      _hd4708_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd4708_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest4707_))))))
                      (if (##structure-instance-of?
                           _hd47094715_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e47134732_ (##vector-ref _hd47094715_ '1))
                                 (_subst4735_ _e47134732_))
                            (_K47124729_ _subst4735_))
                          (_E47114719_))))))
            (if (##pair? _rest46884696_)
                (let ((_hd46934740_ (##car _rest46884696_))
                      (_tl46944742_ (##cdr _rest46884696_)))
                  (let* ((_hd4745_ _hd46934740_) (_rest4747_ _tl46944742_))
                    (_K46924737_ _rest4747_ _hd4745_)))
                (_else46904704_)))))))
  (begin
    (define gx#core-bind!__opt-lambda4549
      (lambda (_key4551_ _val4552_ _rebind?4553_ _phi4554_ _ctx4555_)
        (letrec ((_update-binding4557_
                  (lambda (_xval4628_)
                    (if (let ((_$e4630_
                               (_rebind?4553_ _ctx4555_ _xval4628_ _val4552_)))
                          (if _$e4630_
                              _$e4630_
                              (let ((_$e4636_
                                     (if (##structure-direct-instance-of?
                                          _xval4628_
                                          'gx#import-binding::t)
                                         (let ((_$e4633_
                                                (##direct-structure-ref
                                                 _xval4628_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e4633_
                                               _$e4633_
                                               (if (##structure-instance-of?
                                                    _val4552_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val4552_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e4636_
                                    _$e4636_
                                    (if (##structure-instance-of?
                                         _xval4628_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val4552_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val4552_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval4628_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val4552_
                        (if (if (##structure-direct-instance-of?
                                 _val4552_
                                 'gx#import-binding::t)
                                (let ((_$e4639_
                                       (##direct-structure-ref
                                        _val4552_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e4639_
                                      _$e4639_
                                      (if (##structure-instance-of?
                                           _xval4628_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val4552_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval4628_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval4628_
                            (if (if (##structure-direct-instance-of?
                                     _val4552_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval4628_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key4551_
                                 (cons (##structure-ref
                                        _val4552_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val4552_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval4628_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval4628_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval4628_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval4628_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key4551_
                                 _val4552_
                                 _xval4628_))))))
                 (_gensubst4558_
                  (lambda (_subst4623_ _id4624_)
                    (let ((_eid4626_
                           (gensym (if (uninterned-symbol? _id4624_)
                                       '%
                                       _id4624_))))
                      (begin
                        (table-set! _subst4623_ _id4624_ _eid4626_)
                        _eid4626_))))
                 (_subst!4559_
                  (lambda (_key4561_)
                    (let* ((_key45624570_ _key4561_)
                           (_E45654574_
                            (lambda ()
                              (error '"No clause matching" _key45624570_)))
                           (_else45644578_ (lambda () _key4561_))
                           (_K45664611_
                            (lambda (_mark4581_ _id4582_)
                              (let* ((_mark45834589_ _mark4581_)
                                     (_E45854593_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark45834589_)))
                                     (_K45864603_
                                      (lambda (_subst4596_)
                                        (if (not _subst4596_)
                                            (let ((_subst4598_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark4581_
                                                 _subst4598_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst4558_
                                                 _subst4598_
                                                 _id4582_)))
                                            (let ((_$e4600_
                                                   (table-ref
                                                    _subst4596_
                                                    _id4582_
                                                    '#f)))
                                              (if _$e4600_
                                                  (values _$e4600_)
                                                  (_gensubst4558_
                                                   _subst4596_
                                                   _id4582_)))))))
                                (if (##structure-instance-of?
                                     _mark45834589_
                                     (##type-id gx#expander-mark::t))
                                    (let* ((_e45874606_
                                            (##vector-ref _mark45834589_ '1))
                                           (_subst4609_ _e45874606_))
                                      (_K45864603_ _subst4609_))
                                    (_E45854593_))))))
                      (if (##pair? _key45624570_)
                          (let ((_hd45674614_ (##car _key45624570_))
                                (_tl45684616_ (##cdr _key45624570_)))
                            (let* ((_id4619_ _hd45674614_)
                                   (_mark4621_ _tl45684616_))
                              (_K45664611_ _mark4621_ _id4619_)))
                          (_else45644578_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx4555_ _phi4554_)
           (_subst!4559_ _key4551_)
           _val4552_
           _update-binding4557_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4645_ _val4646_)
          (let* ((_rebind?4648_ false)
                 (_phi4650_ (gx#current-expander-phi))
                 (_ctx4652_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4549
             _key4645_
             _val4646_
             _rebind?4648_
             _phi4650_
             _ctx4652_))))
      (define gx#core-bind!__1
        (lambda (_key4654_ _val4655_ _rebind?4656_)
          (let* ((_phi4658_ (gx#current-expander-phi))
                 (_ctx4660_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4549
             _key4654_
             _val4655_
             _rebind?4656_
             _phi4658_
             _ctx4660_))))
      (define gx#core-bind!__2
        (lambda (_key4662_ _val4663_ _rebind?4664_ _phi4665_)
          (let ((_ctx4667_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4549
             _key4662_
             _val4663_
             _rebind?4664_
             _phi4665_
             _ctx4667_))))
      (define gx#core-bind!
        (lambda _g5922_
          (let ((_g5921_ (length _g5922_)))
            (cond ((fx= _g5921_ 2) (apply gx#core-bind!__0 _g5922_))
                  ((fx= _g5921_ 3) (apply gx#core-bind!__1 _g5922_))
                  ((fx= _g5921_ 4) (apply gx#core-bind!__2 _g5922_))
                  ((fx= _g5921_ 5)
                   (apply gx#core-bind!__opt-lambda4549 _g5922_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g5922_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4481_)
      (if (symbol? _stx4481_)
          (let* ((_g44824490_ (gx#current-expander-marks))
                 (_E44854494_
                  (lambda () (error '"No clause matching" _g44824490_)))
                 (_else44844498_ (lambda () _stx4481_))
                 (_K44864503_ (lambda (_hd4501_) (cons _stx4481_ _hd4501_))))
            (if (##pair? _g44824490_)
                (let ((_hd44874506_ (##car _g44824490_))
                      (_tl44884508_ (##cdr _g44824490_)))
                  (let ((_hd4511_ _hd44874506_)) (_K44864503_ _hd4511_)))
                (_else44844498_)))
          (if (gx#identifier? _stx4481_)
              (let* ((_id4513_ (gx#syntax-local-unwrap _stx4481_))
                     (_eid4515_ (gx#stx-e _id4513_))
                     (_marks4517_ (gx#stx-identifier-marks _id4513_)))
                (let* ((_marks45194527_ _marks4517_)
                       (_E45224531_
                        (lambda ()
                          (error '"No clause matching" _marks45194527_)))
                       (_else45214535_ (lambda () _eid4515_))
                       (_K45234540_
                        (lambda (_hd4538_) (cons _eid4515_ _hd4538_))))
                  (if (##pair? _marks45194527_)
                      (let ((_hd45244543_ (##car _marks45194527_))
                            (_tl45254545_ (##cdr _marks45194527_)))
                        (let ((_hd4548_ _hd45244543_)) (_K45234540_ _hd4548_)))
                      (_else45214535_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4481_)))))
  (define gx#core-context-shift
    (lambda (_ctx4426_ _phi4427_)
      (letrec ((_make-phi4429_
                (lambda (_super4479_)
                  (let ((__obj5893 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__opt-lambda5855
                       __obj5893
                       (gensym 'phi)
                       _super4479_)
                      __obj5893))))
               (_make-phi/up4430_
                (lambda (_ctx4474_ _super4475_)
                  (let ((_ctx+14477_ (_make-phi4429_ _super4475_)))
                    (begin
                      (##structure-set!
                       _ctx4474_
                       _ctx+14477_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+14477_
                       _ctx4474_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+14477_))))
               (_make-phi/down4431_
                (lambda (_ctx4469_ _super4470_)
                  (let ((_ctx-14472_ (_make-phi4429_ _super4470_)))
                    (begin
                      (##structure-set!
                       _ctx-14472_
                       _ctx4469_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx4469_
                       _ctx-14472_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-14472_))))
               (_shift4432_
                (lambda (_ctx4453_
                         _delta4454_
                         _make-delta-context4455_
                         _phi4456_
                         _K4457_)
                  (let ((_$e4459_
                         (##structure-ref _ctx4453_ '3 gx#phi-context::t '#f)))
                    (if _$e4459_
                        ((lambda (_super4462_)
                           (let* ((_super4464_
                                   (_K4457_ _super4462_ _delta4454_))
                                  (_ctx+d4466_
                                   (_make-delta-context4455_
                                    _ctx4453_
                                    _super4464_)))
                             (_K4457_ _ctx+d4466_
                                      (fx- _phi4456_ _delta4454_))))
                         _$e4459_)
                        (error '"Bad context" _ctx4453_))))))
        (let _K4434_ ((_ctx4436_ _ctx4426_) (_phi4437_ _phi4427_))
          (if (fxzero? _phi4437_)
              _ctx4436_
              (if (##structure-instance-of? _ctx4436_ 'gx#context-phi::t)
                  (if (fxpositive? _phi4437_)
                      (let ((_$e4439_
                             (##structure-ref
                              _ctx4436_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e4439_
                            ((lambda (_g44414443_)
                               (_K4434_ _g44414443_ (fx- _phi4437_ '1)))
                             _$e4439_)
                            (_shift4432_
                             _ctx4436_
                             '1
                             _make-phi/up4430_
                             _phi4437_
                             _K4434_)))
                      (let ((_$e4446_
                             (##structure-ref
                              _ctx4436_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e4446_
                            ((lambda (_g44484450_)
                               (_K4434_ _g44484450_ (fx+ _phi4437_ '1)))
                             _$e4446_)
                            (_shift4432_
                             _ctx4436_
                             '-1
                             _make-phi/down4431_
                             _phi4437_
                             _K4434_))))
                  _ctx4436_))))))
  (define gx#core-context-get
    (lambda (_ctx4423_ _key4424_)
      (table-ref
       (##structure-ref _ctx4423_ '2 gx#expander-context::t '#f)
       _key4424_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4419_ _key4420_ _val4421_)
      (table-set!
       (##structure-ref _ctx4419_ '2 gx#expander-context::t '#f)
       _key4420_
       _val4421_)))
  (define gx#core-context-resolve
    (lambda (_ctx4406_ _key4407_)
      (let _lp4409_ ((_ctx4411_ _ctx4406_))
        (let ((_$e4413_ (gx#core-context-get _ctx4411_ _key4407_)))
          (if _$e4413_
              (values _$e4413_)
              (let ((_$e4416_
                     (if (##structure-instance-of?
                          _ctx4411_
                          'gx#context-phi::t)
                         (##structure-ref _ctx4411_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e4416_ (_lp4409_ _$e4416_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx4396_ _key4397_ _val4398_ _rebind4399_)
      (let ((_$e4401_ (gx#core-context-get _ctx4396_ _key4397_)))
        (if _$e4401_
            ((lambda (_xval4404_)
               (gx#core-context-put!
                _ctx4396_
                _key4397_
                (_rebind4399_ _xval4404_)))
             _$e4401_)
            (gx#core-context-put! _ctx4396_ _key4397_ _val4398_)))))
  (begin
    (define gx#core-context-top__opt-lambda4372
      (lambda (_ctx4374_ _stop?4375_)
        (let _lp4377_ ((_ctx4379_ _ctx4374_))
          (if (_stop?4375_ _ctx4379_)
              _ctx4379_
              (if (##structure-instance-of? _ctx4379_ 'gx#context-phi::t)
                  (_lp4377_
                   (##structure-ref _ctx4379_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx4385_ (gx#current-expander-context))
                 (_stop?4387_ gx#top-context?))
            (gx#core-context-top__opt-lambda4372 _ctx4385_ _stop?4387_))))
      (define gx#core-context-top__1
        (lambda (_ctx4389_)
          (let ((_stop?4391_ gx#top-context?))
            (gx#core-context-top__opt-lambda4372 _ctx4389_ _stop?4391_))))
      (define gx#core-context-top
        (lambda _g5924_
          (let ((_g5923_ (length _g5924_)))
            (cond ((fx= _g5923_ 0) (apply gx#core-context-top__0 _g5924_))
                  ((fx= _g5923_ 1) (apply gx#core-context-top__1 _g5924_))
                  ((fx= _g5923_ 2)
                   (apply gx#core-context-top__opt-lambda4372 _g5924_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g5924_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4357
      (lambda (_ctx4359_)
        (let _lp4361_ ((_ctx4363_ _ctx4359_))
          (if (##structure-instance-of? _ctx4363_ 'gx#context-phi::t)
              (_lp4361_ (##structure-ref _ctx4363_ '3 gx#phi-context::t '#f))
              _ctx4363_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4369_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4357 _ctx4369_))))
      (define gx#core-context-root
        (lambda _g5926_
          (let ((_g5925_ (length _g5926_)))
            (cond ((fx= _g5925_ 0) (apply gx#core-context-root__0 _g5926_))
                  ((fx= _g5925_ 1)
                   (apply gx#core-context-root__opt-lambda4357 _g5926_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g5926_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4341
      (lambda (_ctx4343_ . __43404344_)
        (if (##structure-instance-of? _ctx4343_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4343_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4343_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4351_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4341 _ctx4351_))))
      (define gx#core-context-rebind?
        (lambda _g5928_
          (let ((_g5927_ (length _g5928_)))
            (cond ((fx= _g5927_ 0) (apply gx#core-context-rebind?__0 _g5928_))
                  ((fx= _g5927_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4341 _g5928_))
                  ((fx>= _g5927_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4341 _g5928_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g5928_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4324
      (lambda (_ctx4326_)
        (let ((_$e4328_ (gx#core-context-top__1 _ctx4326_)))
          (if _$e4328_
              ((lambda (_ctx4331_)
                 (if (##structure-instance-of? _ctx4331_ 'gx#module-context::t)
                     (##structure-ref _ctx4331_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4328_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4337_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4324 _ctx4337_))))
      (define gx#core-context-namespace
        (lambda _g5930_
          (let ((_g5929_ (length _g5930_)))
            (cond ((fx= _g5929_ 0)
                   (apply gx#core-context-namespace__0 _g5930_))
                  ((fx= _g5929_ 1)
                   (apply gx#core-context-namespace__opt-lambda4324 _g5930_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g5930_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4310
      (lambda (_bind4312_ _is?4313_)
        (if (##structure-direct-instance-of? _bind4312_ 'gx#syntax-binding::t)
            (_is?4313_
             (##direct-structure-ref _bind4312_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4318_)
          (let ((_is?4320_ gx#expander?))
            (gx#expander-binding?__opt-lambda4310 _bind4318_ _is?4320_))))
      (define gx#expander-binding?
        (lambda _g5932_
          (let ((_g5931_ (length _g5932_)))
            (cond ((fx= _g5931_ 1) (apply gx#expander-binding?__0 _g5932_))
                  ((fx= _g5931_ 2)
                   (apply gx#expander-binding?__opt-lambda4310 _g5932_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g5932_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4309_)
      (gx#expander-binding?__opt-lambda4310 _bind4309_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4307_)
      (gx#expander-binding?__opt-lambda4310 _bind4307_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4301_)
      (letrec ((_direct-special-form?4303_
                (lambda (_obj4305_)
                  (##structure-direct-instance-of?
                   _obj4305_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__opt-lambda4310
         _bind4301_
         _direct-special-form?4303_))))
  (define gx#special-form-binding?
    (lambda (_bind4299_)
      (gx#expander-binding?__opt-lambda4310 _bind4299_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4290_)
      (letrec ((_feature?4292_
                (lambda (_e4294_)
                  (let ((_$e4296_
                         (##structure-instance-of?
                          _e4294_
                          'gx#feature-expander::t)))
                    (if _$e4296_
                        _$e4296_
                        (##structure-instance-of?
                         _e4294_
                         'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4310 _bind4290_ _feature?4292_))))
  (define gx#private-feature-binding?
    (lambda (_bind4288_)
      (gx#expander-binding?__opt-lambda4310
       _bind4288_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4273
      (lambda (_id4275_ _bound?4276_)
        (if (gx#identifier? _id4275_)
            (_bound?4276_ (gx#resolve-identifier__0 _id4275_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4281_)
          (let ((_bound?4283_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4273
             _id4281_
             _bound?4283_))))
      (define gx#core-bound-identifier?
        (lambda _g5934_
          (let ((_g5933_ (length _g5934_)))
            (cond ((fx= _g5933_ 1)
                   (apply gx#core-bound-identifier?__0 _g5934_))
                  ((fx= _g5933_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4273 _g5934_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g5934_))))))))
  (define gx#core-identifier=?
    (lambda (_x4265_ _y4266_)
      (letrec ((_y=?4268_
                (lambda (_xid4272_)
                  ((if (list? _y4266_) memq eq?) _xid4272_ _y4266_))))
        (let ((_bind4270_ (gx#resolve-identifier__0 _x4265_)))
          (if (##structure-instance-of? _bind4270_ 'gx#binding::t)
              (_y=?4268_ (##structure-ref _bind4270_ '1 gx#binding::t '#f))
              (_y=?4268_ (gx#stx-e _x4265_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4263_)
      (if (interned-symbol? _e4263_)
          (string-index (symbol->string _e4263_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda4219
      (lambda (_stx4221_ _src4222_ _ctx4223_ _marks4224_)
        (if (gx#sealed-syntax? _stx4221_)
            (gx#stx-unwrap__0 _stx4221_)
            (if (gx#identifier? _stx4221_)
                (let ((_id4226_ (gx#syntax-local-unwrap _stx4221_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4226_)
                   (let ((_$e4228_ (gx#stx-source _id4226_)))
                     (if _$e4228_ _$e4228_ _src4222_))
                   _ctx4223_
                   (##direct-structure-ref
                    _id4226_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4221_)
                    (gx#stx-e _stx4221_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4221_
                     (let ((_$e4231_ (gx#stx-source _stx4221_)))
                       (if _$e4231_ _$e4231_ _src4222_))
                     _ctx4223_
                     (reverse _marks4224_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4237_)
          (let* ((_src4239_ '#f)
                 (_ctx4241_ (gx#current-expander-context))
                 (_marks4243_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4219
             _stx4237_
             _src4239_
             _ctx4241_
             _marks4243_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4245_ _src4246_)
          (let* ((_ctx4248_ (gx#current-expander-context))
                 (_marks4250_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4219
             _stx4245_
             _src4246_
             _ctx4248_
             _marks4250_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4252_ _src4253_ _ctx4254_)
          (let ((_marks4256_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4219
             _stx4252_
             _src4253_
             _ctx4254_
             _marks4256_))))
      (define gx#core-quote-syntax
        (lambda _g5936_
          (let ((_g5935_ (length _g5936_)))
            (cond ((fx= _g5935_ 1) (apply gx#core-quote-syntax__0 _g5936_))
                  ((fx= _g5935_ 2) (apply gx#core-quote-syntax__1 _g5936_))
                  ((fx= _g5935_ 3) (apply gx#core-quote-syntax__2 _g5936_))
                  ((fx= _g5935_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4219 _g5936_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g5936_))))))))
  (define gx#core-cons
    (lambda (_hd4217_ _tl4218_)
      (cons (gx#core-quote-syntax__0 _hd4217_) _tl4218_)))
  (define gx#core-list
    (lambda (_hd4214_ . _rest4215_)
      (cons (gx#core-quote-syntax__0 _hd4214_) _rest4215_)))
  (define gx#core-cons*
    (lambda (_hd4211_ . _rest4212_)
      (apply cons* (gx#core-quote-syntax__0 _hd4211_) _rest4212_)))
  (begin
    (define gx#core-resolve-path__opt-lambda4183
      (lambda (_stx-path4185_ _rel4186_)
        (let ((_path4198_ (gx#stx-e _stx-path4185_))
              (_reldir4199_
               (let _lp4188_ ((_relsrc4190_
                               (let ((_$e4195_ (gx#stx-source _stx-path4185_)))
                                 (if _$e4195_ _$e4195_ _rel4186_))))
                 (if (##structure-instance-of? _relsrc4190_ 'gerbil#AST::t)
                     (_lp4188_
                      (let ((_$e4192_ (gx#stx-source _relsrc4190_)))
                        (if _$e4192_ _$e4192_ (gx#stx-e _relsrc4190_))))
                     (if (source-location-path? _relsrc4190_)
                         (path-directory (source-location-path _relsrc4190_))
                         (if (string? _relsrc4190_)
                             (path-directory _relsrc4190_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4198_ (path-normalize _reldir4199_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4204_)
          (let ((_rel4206_ '#f))
            (gx#core-resolve-path__opt-lambda4183 _stx-path4204_ _rel4206_))))
      (define gx#core-resolve-path
        (lambda _g5938_
          (let ((_g5937_ (length _g5938_)))
            (cond ((fx= _g5937_ 1) (apply gx#core-resolve-path__0 _g5938_))
                  ((fx= _g5937_ 2)
                   (apply gx#core-resolve-path__opt-lambda4183 _g5938_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g5938_))))))))
  (begin
    (define gx#core-deserialize-mark__opt-lambda4139
      (lambda (_repr4141_ _ctx4142_)
        (let* ((_repr41434150_ _repr4141_)
               (_E41454154_
                (lambda () (error '"No clause matching" _repr41434150_)))
               (_K41464162_
                (lambda (_subs4157_ _phi4158_)
                  (let ((_subst4160_
                         (if (not (null? _subs4157_))
                             (list->hash-table-eq _subs4157_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst4160_
                     _ctx4142_
                     _phi4158_
                     '#f)))))
          (if (##pair? _repr41434150_)
              (let ((_hd41474165_ (##car _repr41434150_))
                    (_tl41484167_ (##cdr _repr41434150_)))
                (let* ((_phi4170_ _hd41474165_) (_subs4172_ _tl41484167_))
                  (_K41464162_ _subs4172_ _phi4170_)))
              (_E41454154_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr4177_)
          (let ((_ctx4179_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__opt-lambda4139 _repr4177_ _ctx4179_))))
      (define gx#core-deserialize-mark
        (lambda _g5940_
          (let ((_g5939_ (length _g5940_)))
            (cond ((fx= _g5939_ 1) (apply gx#core-deserialize-mark__0 _g5940_))
                  ((fx= _g5939_ 2)
                   (apply gx#core-deserialize-mark__opt-lambda4139 _g5940_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g5940_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4138_) (gx#stx-rewrap _stx4138_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4136_)
      (gx#stx-unwrap__opt-lambda3922 _stx4136_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4104_)
      (let* ((_g41054113_ (gx#current-expander-marks))
             (_E41084117_
              (lambda () (error '"No clause matching" _g41054113_)))
             (_else41074121_ (lambda () _stx4104_))
             (_K41094126_
              (lambda (_hd4124_) (gx#stx-apply-mark _stx4104_ _hd4124_))))
        (if (##pair? _g41054113_)
            (let ((_hd41104129_ (##car _g41054113_))
                  (_tl41114131_ (##cdr _g41054113_)))
              (let ((_hd4134_ _hd41104129_)) (_K41094126_ _hd4134_)))
            (_else41074121_)))))
  (begin
    (define gx#syntax-local-e__opt-lambda4087
      (lambda (_stx4089_ _E4090_)
        (let ((_bind4092_ (gx#resolve-identifier__0 _stx4089_)))
          (if (##structure-direct-instance-of?
               _bind4092_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4092_ '4 gx#syntax-binding::t '#f)
              (_E4090_ _stx4089_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4097_)
          (let ((_E4099_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda4087 _stx4097_ _E4099_))))
      (define gx#syntax-local-e
        (lambda _g5942_
          (let ((_g5941_ (length _g5942_)))
            (cond ((fx= _g5941_ 1) (apply gx#syntax-local-e__0 _g5942_))
                  ((fx= _g5941_ 2)
                   (apply gx#syntax-local-e__opt-lambda4087 _g5942_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g5942_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda4071
      (lambda (_stx4073_ _E4074_)
        (let ((_e4076_ (gx#syntax-local-e__opt-lambda4087 _stx4073_ _E4074_)))
          (if (##structure-instance-of? _e4076_ 'gx#expander::t)
              (##structure-ref _e4076_ '1 gx#expander::t '#f)
              _e4076_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4081_)
          (let ((_E4083_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda4071 _stx4081_ _E4083_))))
      (define gx#syntax-local-value
        (lambda _g5944_
          (let ((_g5943_ (length _g5944_)))
            (cond ((fx= _g5943_ 1) (apply gx#syntax-local-value__0 _g5944_))
                  ((fx= _g5943_ 2)
                   (apply gx#syntax-local-value__opt-lambda4071 _g5944_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g5944_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4070_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4070_))))
