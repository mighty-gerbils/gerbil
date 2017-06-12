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
    (lambda _$args5821_
      (apply make-struct-instance gx#expander-context::t _$args5821_)))
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
    (lambda _$args5818_
      (apply make-struct-instance gx#root-context::t _$args5818_)))
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
    (lambda _$args5815_
      (apply make-struct-instance gx#phi-context::t _$args5815_)))
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
    (lambda _$args5812_
      (apply make-struct-instance gx#top-context::t _$args5812_)))
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
    (lambda _$args5809_
      (apply make-struct-instance gx#module-context::t _$args5809_)))
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
    (lambda _$args5806_
      (apply make-struct-instance gx#prelude-context::t _$args5806_)))
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
    (lambda _$args5803_
      (apply make-struct-instance gx#local-context::t _$args5803_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5785
      (lambda (_self5787_ _id5788_ _super5789_)
        (struct-instance-init!
         _self5787_
         _id5788_
         (make-hash-table-eq)
         _super5789_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5794_ _id5795_)
          (let ((_super5797_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5785
             _self5794_
             _id5795_
             _super5797_))))
      (define gx#phi-context:::init!
        (lambda _g5825_
          (let ((_g5824_ (length _g5825_)))
            (cond ((fx= _g5824_ 2) (apply gx#phi-context:::init!__0 _g5825_))
                  ((fx= _g5824_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5785 _g5825_))
                  (else (error "No clause matching arguments" _g5825_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5771
      (lambda (_self5773_ _super5774_)
        (struct-instance-init!
         _self5773_
         (gensym 'L)
         (make-hash-table-eq)
         _super5774_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5779_)
          (let ((_super5781_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5771
             _self5779_
             _super5781_))))
      (define gx#local-context:::init!
        (lambda _g5827_
          (let ((_g5826_ (length _g5827_)))
            (cond ((fx= _g5826_ 1) (apply gx#local-context:::init!__0 _g5827_))
                  ((fx= _g5826_ 2)
                   (apply gx#local-context:::init!__opt-lambda5771 _g5827_))
                  (else (error "No clause matching arguments" _g5827_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5769_
      (apply make-struct-instance gx#binding::t _$args5769_)))
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
    (lambda _$args5766_
      (apply make-struct-instance gx#runtime-binding::t _$args5766_)))
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
    (lambda _$args5763_
      (apply make-struct-instance gx#local-binding::t _$args5763_)))
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
    (lambda _$args5760_
      (apply make-struct-instance gx#top-binding::t _$args5760_)))
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
    (lambda _$args5757_
      (apply make-struct-instance gx#module-binding::t _$args5757_)))
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
    (lambda _$args5754_
      (apply make-struct-instance gx#extern-binding::t _$args5754_)))
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
    (lambda _$args5751_
      (apply make-struct-instance gx#syntax-binding::t _$args5751_)))
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
    (lambda _$args5748_
      (apply make-struct-instance gx#import-binding::t _$args5748_)))
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
    (lambda _$args5745_
      (apply make-struct-instance gx#alias-binding::t _$args5745_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5742_
      (apply make-struct-instance gx#expander::t _$args5742_)))
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
    (lambda _$args5739_
      (apply make-struct-instance gx#core-expander::t _$args5739_)))
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
    (lambda _$args5736_
      (apply make-struct-instance gx#expression-form::t _$args5736_)))
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
    (lambda _$args5733_
      (apply make-struct-instance gx#special-form::t _$args5733_)))
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
    (lambda _$args5730_
      (apply make-struct-instance gx#definition-form::t _$args5730_)))
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
    (lambda _$args5727_
      (apply make-struct-instance gx#top-special-form::t _$args5727_)))
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
    (lambda _$args5724_
      (apply make-struct-instance gx#module-special-form::t _$args5724_)))
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
    (lambda _$args5721_
      (apply make-struct-instance gx#feature-expander::t _$args5721_)))
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
    (lambda _$args5718_
      (apply make-struct-instance gx#private-feature-expander::t _$args5718_)))
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
    (lambda _$args5715_
      (apply make-struct-instance gx#reserved-expander::t _$args5715_)))
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
    (lambda _$args5712_
      (apply make-struct-instance gx#macro-expander::t _$args5712_)))
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
    (lambda _$args5709_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5709_)))
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
    (lambda _$args5706_
      (apply make-struct-instance gx#user-expander::t _$args5706_)))
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
    (lambda _$args5703_
      (apply make-struct-instance gx#expander-mark::t _$args5703_)))
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
    (lambda _$args5700_
      (apply make-struct-instance gx#syntax-error::t _$args5700_)))
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
    (lambda (_where5695_ _message5696_ _stx5697_ . _details5698_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5696_
              (cons _stx5697_ _details5698_)
              _where5695_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5680
      (lambda (_stx5682_ _expression?5683_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5664 _stx5682_ _expression?5683_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5688_)
          (let ((_expression?5690_ '#f))
            (gx#eval-syntax__opt-lambda5680 _stx5688_ _expression?5690_))))
      (define gx#eval-syntax
        (lambda _g5829_
          (let ((_g5828_ (length _g5829_)))
            (cond ((fx= _g5828_ 1) (apply gx#eval-syntax__0 _g5829_))
                  ((fx= _g5828_ 2)
                   (apply gx#eval-syntax__opt-lambda5680 _g5829_))
                  (else (error "No clause matching arguments" _g5829_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5679_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5679_))))
  (begin
    (define gx#core-expand__opt-lambda5664
      (lambda (_stx5666_ _expression?5667_)
        (if _expression?5667_
            (gx#core-expand-expression _stx5666_)
            (gx#core-expand-top _stx5666_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5672_)
          (let ((_expression?5674_ '#f))
            (gx#core-expand__opt-lambda5664 _stx5672_ _expression?5674_))))
      (define gx#core-expand
        (lambda _g5831_
          (let ((_g5830_ (length _g5831_)))
            (cond ((fx= _g5830_ 1) (apply gx#core-expand__0 _g5831_))
                  ((fx= _g5830_ 2)
                   (apply gx#core-expand__opt-lambda5664 _g5831_))
                  (else (error "No clause matching arguments" _g5831_))))))))
  (define gx#core-expand-top
    (lambda (_stx5633_)
      (let ((_stx5635_ (gx#core-expand*__0 _stx5633_)))
        (let ((_e56365643_ _stx5635_))
          (let ((_E56385647_
                 (lambda () (gx#core-expand-expression _stx5635_))))
            (let ((_E56375661_
                   (lambda ()
                     (if (gx#stx-pair? _e56365643_)
                         (let ((_e56395651_ (gx#syntax-e _e56365643_)))
                           (let ((_hd56405654_ (##car _e56395651_))
                                 (_tl56415656_ (##cdr _e56395651_)))
                             (let ((_form5659_ _hd56405654_))
                               (if (gx#core-bound-identifier?__0 _form5659_)
                                   _stx5635_
                                   (_E56385647_)))))
                         (_E56385647_)))))
              (let () (_E56375661_))))))))
  (define gx#core-expand-expression
    (lambda (_stx5555_)
      (let ((_sealed-expression?5557_
             (lambda (_hd5603_)
               (if (gx#sealed-syntax? _hd5603_)
                   (let ((_e56045611_ _hd5603_))
                     (let ((_E56065615_ (lambda () '#f)))
                       (let ((_E56055629_
                              (lambda ()
                                (if (gx#stx-pair? _e56045611_)
                                    (let ((_e56075619_
                                           (gx#syntax-e _e56045611_)))
                                      (let ((_hd56085622_ (##car _e56075619_))
                                            (_tl56095624_ (##cdr _e56075619_)))
                                        (let ((_form5627_ _hd56085622_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4203
                                               _form5627_
                                               gx#expression-form-binding?)
                                              (_E56065615_)))))
                                    (_E56065615_)))))
                         (let () (_E56055629_)))))
                   '#f))))
        (let ((_illegal-expression5558_
               (lambda (_hd5601_ . _g5832_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx5555_
                  _hd5601_))))
          (let ((_expand-e5559_
                 (lambda (_form5596_ _hd5597_)
                   (let ((_bind5599_
                          (if (##structure-instance-of?
                               _form5596_
                               'gx#binding::t)
                              _form5596_
                              (gx#resolve-identifier__0 _form5596_))))
                     (if (gx#core-expander-binding? _bind5599_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5599_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd5597_
                           (gx#stx-source _stx5555_)))
                         (if (##structure-direct-instance-of?
                              _bind5599_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind5599_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd5597_
                                (gx#stx-source _stx5555_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx5555_
                              _form5596_)))))))
            (let ((_hd5561_ (gx#core-expand-head _stx5555_)))
              (if (_sealed-expression?5557_ _hd5561_)
                  _hd5561_
                  (if (gx#stx-pair? _hd5561_)
                      (let ((_e55625569_ _hd5561_))
                        (let ((_E55645573_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e55625569_))))
                          (let ((_E55635592_
                                 (lambda ()
                                   (if (gx#stx-pair? _e55625569_)
                                       (let ((_e55655577_
                                              (gx#syntax-e _e55625569_)))
                                         (let ((_hd55665580_
                                                (##car _e55655577_))
                                               (_tl55675582_
                                                (##cdr _e55655577_)))
                                           (let ((_form5585_ _hd55665580_))
                                             (if '#t
                                                 (let ((_bind5587_
                                                        (if (gx#identifier?
                                                             _form5585_)
                                                            (gx#resolve-identifier__0
                                                             _form5585_)
                                                            '#f)))
                                                   (if (let ((_$e5589_
                                                              (not _bind5587_)))
                                                         (if _$e5589_
                                                             _$e5589_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind5587_))))
               (_expand-e5559_ '%%app (cons '%%app _hd5561_))
               (if (eq? (##structure-ref _bind5587_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd5561_ _illegal-expression5558_)
                   (if (gx#expression-form-binding? _bind5587_)
                       (_expand-e5559_ _bind5587_ _hd5561_)
                       (if (gx#direct-special-form-binding? _bind5587_)
                           (gx#core-expand-expression
                            (_expand-e5559_ _bind5587_ _hd5561_))
                           (_illegal-expression5558_ _hd5561_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E55645573_)))))
                                       (_E55645573_)))))
                            (let () (_E55635592_)))))
                      (if (gx#core-bound-identifier?__0 _hd5561_)
                          (_illegal-expression5558_ _hd5561_)
                          (if (gx#identifier? _hd5561_)
                              (_expand-e5559_
                               '%%ref
                               (cons '%%ref (cons _hd5561_ '())))
                              (if (gx#stx-datum? _hd5561_)
                                  (_expand-e5559_
                                   '%#quote
                                   (cons '%#quote (cons _hd5561_ '())))
                                  (_illegal-expression5558_
                                   _hd5561_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5550_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5553_ (gx#core-expand-expression _stx5550_)))
           (values _stx5553_ (gx#eval-syntax* _stx5553_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5529
      (lambda (_stx5531_ _stop?5532_)
        ((letrec ((_lp5534_
                   (lambda (_stx5536_)
                     (if (_stop?5532_ _stx5536_)
                         _stx5536_
                         (let ((_rstx5538_ (gx#core-expand1 _stx5536_)))
                           (if (eq? _stx5536_ _rstx5538_)
                               _stx5536_
                               (_lp5534_ _rstx5538_)))))))
           _lp5534_)
         _stx5531_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5543_)
          (let ((_stop?5545_ false))
            (gx#core-expand*__opt-lambda5529 _stx5543_ _stop?5545_))))
      (define gx#core-expand*
        (lambda _g5834_
          (let ((_g5833_ (length _g5834_)))
            (cond ((fx= _g5833_ 1) (apply gx#core-expand*__0 _g5834_))
                  ((fx= _g5833_ 2)
                   (apply gx#core-expand*__opt-lambda5529 _g5834_))
                  (else (error "No clause matching arguments" _g5834_))))))))
  (define gx#core-expand1
    (lambda (_stx5487_)
      (let ((_step5489_
             (lambda (_hd5526_)
               (let ((_bind5528_ (gx#resolve-identifier__0 _hd5526_)))
                 (if (##structure-instance-of?
                      _bind5528_
                      'gx#runtime-binding::t)
                     _stx5487_
                     (if (##structure-direct-instance-of?
                          _bind5528_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5528_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx5487_)
                         (if (not _bind5528_)
                             _stx5487_
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx5487_))))))))
        (let ((_e54905498_ _stx5487_))
          (let ((_E54965502_ (lambda () _stx5487_)))
            (let ((_E54925508_
                   (lambda ()
                     (let ((_hd5506_ _e54905498_))
                       (if (gx#identifier? _hd5506_)
                           (_step5489_ _hd5506_)
                           (_E54965502_))))))
              (let ((_E54915522_
                     (lambda ()
                       (if (gx#stx-pair? _e54905498_)
                           (let ((_e54935512_ (gx#syntax-e _e54905498_)))
                             (let ((_hd54945515_ (##car _e54935512_))
                                   (_tl54955517_ (##cdr _e54935512_)))
                               (let ((_hd5520_ _hd54945515_))
                                 (if (gx#identifier? _hd5520_)
                                     (_step5489_ _hd5520_)
                                     (_E54925508_)))))
                           (_E54925508_)))))
                (let () (_E54915522_)))))))))
  (define gx#core-expand-head
    (lambda (_stx5453_)
      (let ((_stop?5455_
             (lambda (_stx5457_)
               (let ((_e54585465_ _stx5457_))
                 (let ((_E54605469_ (lambda () '#f)))
                   (let ((_E54595483_
                          (lambda ()
                            (if (gx#stx-pair? _e54585465_)
                                (let ((_e54615473_ (gx#syntax-e _e54585465_)))
                                  (let ((_hd54625476_ (##car _e54615473_))
                                        (_tl54635478_ (##cdr _e54615473_)))
                                    (let ((_hd5481_ _hd54625476_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5481_)
                                          (_E54605469_)))))
                                (_E54605469_)))))
                     (let () (_E54595483_))))))))
        (gx#core-expand*__opt-lambda5529 _stx5453_ _stop?5455_))))
  (begin
    (define gx#core-expand-block__opt-lambda5257
      (lambda (_stx5259_ _expand-special5260_ _begin-form5261_ _expand-e5262_)
        (letrec ((_expand-splice5264_
                  (lambda (_hd5427_ _body5428_ _rest5429_ _r5430_)
                    (if (gx#stx-list? _body5428_)
                        (_K5268_ (gx#stx-foldr cons _rest5429_ _body5428_)
                                 _r5430_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5259_
                         _hd5427_))))
                 (_expand-cond-expand5265_
                  (lambda (_hd5423_ _rest5424_ _r5425_)
                    (_K5268_ (cons (gx#core-expand-cond-expand% _hd5423_)
                                   _rest5424_)
                             _r5425_)))
                 (_expand-include5266_
                  (lambda (_hd5372_ _rest5373_ _r5374_)
                    (let ((_e53755385_ _hd5372_))
                      (let ((_E53775389_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e53755385_))))
                        (let ((_E53765419_
                               (lambda ()
                                 (if (gx#stx-pair? _e53755385_)
                                     (let ((_e53785393_
                                            (gx#syntax-e _e53755385_)))
                                       (let ((_hd53795396_ (##car _e53785393_))
                                             (_tl53805398_
                                              (##cdr _e53785393_)))
                                         (if (gx#stx-pair? _tl53805398_)
                                             (let ((_e53815401_
                                                    (gx#syntax-e
                                                     _tl53805398_)))
                                               (let ((_hd53825404_
                                                      (##car _e53815401_))
                                                     (_tl53835406_
                                                      (##cdr _e53815401_)))
                                                 (let ((_path5409_
                                                        _hd53825404_))
                                                   (if (gx#stx-null?
                                                        _tl53835406_)
                                                       (if (gx#stx-string?
                                                            _path5409_)
                                                           (let ((_rpath5411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda4113
                           _path5409_
                           (gx#stx-source _hd5372_))))
                     (let ((_block5413_
                            (gx#core-expand-include%__opt-lambda5006
                             _hd5372_
                             _rpath5411_)))
                       (let ((_rbody5416_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda5257
                                  _block5413_
                                  _expand-special5260_
                                  '#f
                                  _expand-e5262_))
                               gx#current-expander-path
                               (cons _rpath5411_ (gx#current-expander-path)))))
                         (let ()
                           (_K5268_ _rest5373_
                                    (foldr1 cons _r5374_ _rbody5416_))))))
                   (_E53775389_))
               (_E53775389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E53775389_))))
                                     (_E53775389_)))))
                          (let () (_E53765419_)))))))
                 (_expand-expression5267_
                  (lambda (_hd5368_ _rest5369_ _r5370_)
                    (_K5268_ _rest5369_
                             (cons (_expand-e5262_ _hd5368_) _r5370_))))
                 (_K5268_ (lambda (_rest5298_ _r5299_)
                            (let ((_e53005307_ _rest5298_))
                              (let ((_E53025311_
                                     (lambda ()
                                       (if _begin-form5261_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form5261_
                                             (reverse _r5299_))
                                            (gx#stx-source _stx5259_))
                                           _r5299_))))
                                (let ((_E53015364_
                                       (lambda ()
                                         (if (gx#stx-pair? _e53005307_)
                                             (let ((_e53035315_
                                                    (gx#syntax-e _e53005307_)))
                                               (let ((_hd53045318_
                                                      (##car _e53035315_))
                                                     (_tl53055320_
                                                      (##cdr _e53035315_)))
                                                 (let ((_hd5323_ _hd53045318_))
                                                   (let ((_rest5325_
                                                          _tl53055320_))
                                                     (if '#t
                                                         (let ((_hd5327_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd5323_)))
                   (let ((_e53285335_ _hd5327_))
                     (let ((_E53305339_
                            (lambda ()
                              (_expand-expression5267_
                               _hd5327_
                               _rest5325_
                               _r5299_))))
                       (let ((_E53295360_
                              (lambda ()
                                (if (gx#stx-pair? _e53285335_)
                                    (let ((_e53315343_
                                           (gx#syntax-e _e53285335_)))
                                      (let ((_hd53325346_ (##car _e53315343_))
                                            (_tl53335348_ (##cdr _e53315343_)))
                                        (let ((_form5351_ _hd53325346_))
                                          (let ((_body5353_ _tl53335348_))
                                            (if '#t
                                                (let ((_bind5355_
                                                       (if (gx#identifier?
                                                            _form5351_)
                                                           (gx#resolve-identifier__0
                                                            _form5351_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind5355_)
                                                      (let ((_$e5357_
                                                             (##structure-ref
                                                              _bind5355_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e5357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice5264_
                     _hd5327_
                     _body5353_
                     _rest5325_
                     _r5299_)
                    (if (eq? _$e5357_ '%#cond-expand)
                        (_expand-cond-expand5265_ _hd5327_ _rest5325_ _r5299_)
                        (if (eq? _$e5357_ '%#include)
                            (_expand-include5266_ _hd5327_ _rest5325_ _r5299_)
                            (_expand-special5260_
                             _hd5327_
                             _K5268_
                             _rest5325_
                             _r5299_)))))
              (_expand-expression5267_ _hd5327_ _rest5325_ _r5299_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E53305339_))))))
                                    (_E53305339_)))))
                         (let () (_E53295360_))))))
                 (_E53025311_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E53025311_)))))
                                  (let () (_E53015364_))))))))
          (let ((_e52695276_ _stx5259_))
            (let ((_E52715280_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e52695276_))))
              (let ((_E52705294_
                     (lambda ()
                       (if (gx#stx-pair? _e52695276_)
                           (let ((_e52725284_ (gx#syntax-e _e52695276_)))
                             (let ((_hd52735287_ (##car _e52725284_))
                                   (_tl52745289_ (##cdr _e52725284_)))
                               (let ((_body5292_ _tl52745289_))
                                 (if (gx#stx-list? _body5292_)
                                     (_K5268_ _body5292_ '())
                                     (_E52715280_)))))
                           (_E52715280_)))))
                (let () (_E52705294_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5435_ _expand-special5436_)
          (let ((_begin-form5438_ '%#begin))
            (let ((_expand-e5440_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda5257
               _stx5435_
               _expand-special5436_
               _begin-form5438_
               _expand-e5440_)))))
      (define gx#core-expand-block__1
        (lambda (_stx5442_ _expand-special5443_ _begin-form5444_)
          (let ((_expand-e5446_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5257
             _stx5442_
             _expand-special5443_
             _begin-form5444_
             _expand-e5446_))))
      (define gx#core-expand-block
        (lambda _g5836_
          (let ((_g5835_ (length _g5836_)))
            (cond ((fx= _g5835_ 2) (apply gx#core-expand-block__0 _g5836_))
                  ((fx= _g5835_ 3) (apply gx#core-expand-block__1 _g5836_))
                  ((fx= _g5835_ 4)
                   (apply gx#core-expand-block__opt-lambda5257 _g5836_))
                  (else (error "No clause matching arguments" _g5836_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5207_ _expand-special5208_)
      (let ((_g52095220_
             (gx#core-expand-block__1 _stx5207_ _expand-special5208_ '#f)))
        (let ((_E52135224_
               (lambda () (error '"No clause matching" _g52095220_))))
          (let ((_try-match52125235_
                 (lambda ()
                   (let ((_K52145230_
                          (lambda (_body5228_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body5228_))
                             (gx#stx-source _stx5207_)))))
                     (let ((_body5233_ _g52095220_))
                       (_K52145230_ _body5233_))))))
            (let ((_try-match52115251_
                   (lambda ()
                     (let ((_K52155241_ (lambda (_expr5239_) _expr5239_)))
                       (if (##pair? _g52095220_)
                           (let ((_hd52165244_ (##car _g52095220_))
                                 (_tl52175246_ (##cdr _g52095220_)))
                             (let ((_expr5249_ _hd52165244_))
                               (if (##null? _tl52175246_)
                                   (_K52155241_ _expr5249_)
                                   (_try-match52125235_))))
                           (_try-match52125235_))))))
              (let ((_K52185255_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx5207_))))
                (if (##null? _g52095220_)
                    (_K52185255_)
                    (_try-match52115251_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5065_)
      (letrec ((_satisfied?5067_
                (lambda (_condition5165_)
                  (let ((_e51665174_ _condition5165_))
                    (let ((_E51695178_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e51665174_))))
                      (let ((_E51685197_
                             (lambda ()
                               (if (gx#stx-pair? _e51665174_)
                                   (let ((_e51705182_
                                          (gx#syntax-e _e51665174_)))
                                     (let ((_hd51715185_ (##car _e51705182_))
                                           (_tl51725187_ (##cdr _e51705182_)))
                                       (let ((_combinator5190_ _hd51715185_))
                                         (let ((_body5192_ _tl51725187_))
                                           (if (gx#stx-list? _body5192_)
                                               (let ((_$e5194_
                                                      (gx#stx-e
                                                       _combinator5190_)))
                                                 (if (eq? _$e5194_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?5067_
                                                           _body5192_))
                                                     (if (eq? _$e5194_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?5067_
                                                          _body5192_)
                                                         (if (eq? _$e5194_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?5067_
                                                              _body5192_)
                                                             (if (eq? _$e5194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body5192_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx5065_
                          _combinator5190_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E51695178_))))))
                                   (_E51695178_)))))
                        (let ((_E51675203_
                               (lambda ()
                                 (let ((_id5201_ _e51665174_))
                                   (if (gx#identifier? _id5201_)
                                       (gx#core-bound-identifier?__opt-lambda4203
                                        _id5201_
                                        gx#feature-binding?)
                                       (_E51685197_))))))
                          (let () (_E51675203_))))))))
               (_loop5068_
                (lambda (_rest5098_)
                  (let ((_e50995107_ _rest5098_))
                    (let ((_E51055111_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e50995107_))))
                      (let ((_E51015115_
                             (lambda ()
                               (if (gx#stx-null? _e50995107_)
                                   (if '#t '() (_E51055111_))
                                   (_E51055111_)))))
                        (let ((_E51005161_
                               (lambda ()
                                 (if (gx#stx-pair? _e50995107_)
                                     (let ((_e51025119_
                                            (gx#syntax-e _e50995107_)))
                                       (let ((_hd51035122_ (##car _e51025119_))
                                             (_tl51045124_
                                              (##cdr _e51025119_)))
                                         (let ((_hd5127_ _hd51035122_))
                                           (let ((_rest5129_ _tl51045124_))
                                             (if '#t
                                                 (let ((_e51305137_ _hd5127_))
                                                   (let ((_E51325141_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e51305137_))))
                                                     (let ((_E51315157_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e51305137_)
                          (let ((_e51335145_ (gx#syntax-e _e51305137_)))
                            (let ((_hd51345148_ (##car _e51335145_))
                                  (_tl51355150_ (##cdr _e51335145_)))
                              (let ((_condition5153_ _hd51345148_))
                                (let ((_body5155_ _tl51355150_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition5153_ 'else)
                                          (if (gx#stx-null? _rest5129_)
                                              _body5155_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx5065_
                                               _hd5127_))
                                          (if (_satisfied?5067_
                                               _condition5153_)
                                              _body5155_
                                              (_loop5068_ _rest5129_)))
                                      (_E51325141_))))))
                          (_E51325141_)))))
               (let () (_E51315157_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E51015115_))))))
                                     (_E51015115_)))))
                          (let () (_E51005161_)))))))))
        (let ((_e50695076_ _stx5065_))
          (let ((_E50715080_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50695076_))))
            (let ((_E50705094_
                   (lambda ()
                     (if (gx#stx-pair? _e50695076_)
                         (let ((_e50725084_ (gx#syntax-e _e50695076_)))
                           (let ((_hd50735087_ (##car _e50725084_))
                                 (_tl50745089_ (##cdr _e50725084_)))
                             (let ((_clauses5092_ _tl50745089_))
                               (if (gx#stx-list? _clauses5092_)
                                   (gx#core-cons
                                    'begin
                                    (_loop5068_ _clauses5092_))
                                   (_E50715080_)))))
                         (_E50715080_)))))
              (let () (_E50705094_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda5006
      (lambda (_stx5008_ _rpath5009_)
        (let ((_e50105020_ _stx5008_))
          (let ((_E50125024_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50105020_))))
            (let ((_E50115051_
                   (lambda ()
                     (if (gx#stx-pair? _e50105020_)
                         (let ((_e50135028_ (gx#syntax-e _e50105020_)))
                           (let ((_hd50145031_ (##car _e50135028_))
                                 (_tl50155033_ (##cdr _e50135028_)))
                             (if (gx#stx-pair? _tl50155033_)
                                 (let ((_e50165036_
                                        (gx#syntax-e _tl50155033_)))
                                   (let ((_hd50175039_ (##car _e50165036_))
                                         (_tl50185041_ (##cdr _e50165036_)))
                                     (let ((_path5044_ _hd50175039_))
                                       (if (gx#stx-null? _tl50185041_)
                                           (if (gx#stx-string? _path5044_)
                                               (let ((_rpath5049_
                                                      (let ((_$e5046_
                                                             _rpath5009_))
                                                        (if _$e5046_
                                                            _$e5046_
                                                            (gx#core-resolve-path__opt-lambda4113
                                                             _path5044_
                                                             (gx#stx-source
                                                              _stx5008_))))))
                                                 (if (member _rpath5049_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx5008_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        'begin
                                                        (read-syntax-from-file
                                                         _rpath5049_))
                                                       (gx#stx-source
                                                        _stx5008_)))))
                                               (_E50125024_))
                                           (_E50125024_)))))
                                 (_E50125024_))))
                         (_E50125024_)))))
              (let () (_E50115051_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5058_)
          (let ((_rpath5060_ '#f))
            (gx#core-expand-include%__opt-lambda5006 _stx5058_ _rpath5060_))))
      (define gx#core-expand-include%
        (lambda _g5838_
          (let ((_g5837_ (length _g5838_)))
            (cond ((fx= _g5837_ 1) (apply gx#core-expand-include%__0 _g5838_))
                  ((fx= _g5837_ 2)
                   (apply gx#core-expand-include%__opt-lambda5006 _g5838_))
                  (else (error "No clause matching arguments" _g5838_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4975
      (lambda (_K4977_ _stx4978_ _method4979_)
        (if (procedure? _K4977_)
            (let ((_$e4981_ (gx#stx-source _stx4978_)))
              (if _$e4981_
                  ((lambda (_g49834985_)
                     (gx#stx-wrap-source (_K4977_ _stx4978_) _g49834985_))
                   _$e4981_)
                  (_K4977_ _stx4978_)))
            (let ((_$e4988_ (bound-method-ref _K4977_ _method4979_)))
              (if _$e4988_
                  ((lambda (_g49904992_)
                     (gx#core-apply-expander__opt-lambda4975
                      _g49904992_
                      _stx4978_
                      _method4979_))
                   _$e4988_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4978_
                   _method4979_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4998_ _stx4999_)
          (let ((_method5001_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4975
             _K4998_
             _stx4999_
             _method5001_))))
      (define gx#core-apply-expander
        (lambda _g5840_
          (let ((_g5839_ (length _g5840_)))
            (cond ((fx= _g5839_ 2) (apply gx#core-apply-expander__0 _g5840_))
                  ((fx= _g5839_ 3)
                   (apply gx#core-apply-expander__opt-lambda4975 _g5840_))
                  (else (error "No clause matching arguments" _g5840_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4973_ _stx4974_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4974_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4948_ _stx4949_)
      (let ((_self49504956_ _self4948_))
        (let ((_E49524960_
               (lambda () (error '"No clause matching" _self49504956_))))
          (let ((_K49534965_
                 (lambda (_K4963_)
                   (gx#core-apply-expander__0 _K4963_ _stx4949_))))
            (if (##structure-instance-of?
                 _self49504956_
                 (##type-id gx#macro-expander::t))
                (let ((_e49544968_ (##vector-ref _self49504956_ '1)))
                  (let ((_K4971_ _e49544968_)) (_K49534965_ _K4971_)))
                (_E49524960_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4923_ _stx4924_)
      (if (gx#sealed-syntax? _stx4924_)
          _stx4924_
          (let ((_self49254931_ _self4923_))
            (let ((_E49274935_
                   (lambda () (error '"No clause matching" _self49254931_))))
              (let ((_K49284940_
                     (lambda (_K4938_)
                       (gx#core-apply-expander__0 _K4938_ _stx4924_))))
                (if (##structure-instance-of?
                     _self49254931_
                     (##type-id gx#core-expander::t))
                    (let ((_e49294943_ (##vector-ref _self49254931_ '1)))
                      (let ((_K4946_ _e49294943_)) (_K49284940_ _K4946_)))
                    (_E49274935_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4905
      (lambda (_self4907_ _stx4908_ _top?4909_)
        (if (_top?4909_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4907_ _stx4908_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4908_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4914_ _stx4915_)
          (let ((_top?4917_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4905
             _self4914_
             _stx4915_
             _top?4917_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5842_
          (let ((_g5841_ (length _g5842_)))
            (cond ((fx= _g5841_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5842_))
                  ((fx= _g5841_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4905
                          _g5842_))
                  (else (error "No clause matching arguments" _g5842_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4903_ _stx4904_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4905
       _self4903_
       _stx4904_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4850_ _stx4851_)
      (let ((_self48524858_ _self4850_))
        (let ((_E48544862_
               (lambda () (error '"No clause matching" _self48524858_))))
          (let ((_K48554895_
                 (lambda (_id4865_)
                   (let ((_e48664873_ _stx4851_))
                     (let ((_E48684877_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e48664873_))))
                       (let ((_E48674891_
                              (lambda ()
                                (if (gx#stx-pair? _e48664873_)
                                    (let ((_e48694881_
                                           (gx#syntax-e _e48664873_)))
                                      (let ((_hd48704884_ (##car _e48694881_))
                                            (_tl48714886_ (##cdr _e48694881_)))
                                        (let ((_body4889_ _tl48714886_))
                                          (if '#t
                                              (gx#core-cons
                                               _id4865_
                                               _body4889_)
                                              (_E48684877_)))))
                                    (_E48684877_)))))
                         (let () (_E48674891_))))))))
            (if (##structure-instance-of?
                 _self48524858_
                 (##type-id gx#rename-macro-expander::t))
                (let ((_e48564898_ (##vector-ref _self48524858_ '1)))
                  (let ((_id4901_ _e48564898_)) (_K48554895_ _id4901_)))
                (_E48544862_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4796
      (lambda (_self4798_ _stx4799_ _method4800_)
        (let ((_self48014809_ _self4798_))
          (let ((_E48034813_
                 (lambda () (error '"No clause matching" _self48014809_))))
            (let ((_K48044820_
                   (lambda (_phi4816_ _ctx4817_ _K4818_)
                     (gx#core-apply-user-macro
                      _K4818_
                      _stx4799_
                      _ctx4817_
                      _phi4816_
                      _method4800_))))
              (if (##structure-instance-of?
                   _self48014809_
                   (##type-id gx#user-expander::t))
                  (let ((_e48054823_ (##vector-ref _self48014809_ '1)))
                    (let ((_K4826_ _e48054823_))
                      (let ((_e48064828_ (##vector-ref _self48014809_ '2)))
                        (let ((_ctx4831_ _e48064828_))
                          (let ((_e48074833_ (##vector-ref _self48014809_ '3)))
                            (let ((_phi4836_ _e48074833_))
                              (_K48044820_ _phi4836_ _ctx4831_ _K4826_)))))))
                  (_E48034813_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4841_ _stx4842_)
          (let ((_method4844_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4796
             _self4841_
             _stx4842_
             _method4844_))))
      (define gx#core-apply-user-expander
        (lambda _g5844_
          (let ((_g5843_ (length _g5844_)))
            (cond ((fx= _g5843_ 2)
                   (apply gx#core-apply-user-expander__0 _g5844_))
                  ((fx= _g5843_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4796 _g5844_))
                  (else (error "No clause matching arguments" _g5844_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4788_ _stx4789_ _ctx4790_ _phi4791_ _method4792_)
      (let ((_mark4794_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4790_
              _phi4791_
              _stx4789_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4975
             _K4788_
             (gx#stx-apply-mark _stx4789_ _mark4794_)
             _method4792_)
            _mark4794_))
         gx#current-expander-marks
         (cons _mark4794_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4760
      (lambda (_stx4762_ _phi4763_ _ctx4764_)
        ((letrec ((_lp4766_
                   (lambda (_bind4768_)
                     (if (##structure-direct-instance-of?
                          _bind4768_
                          'gx#import-binding::t)
                         (_lp4766_
                          (##structure-ref
                           _bind4768_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind4768_
                              'gx#alias-binding::t)
                             (_lp4766_
                              (gx#core-resolve-identifier__opt-lambda4690
                               (##structure-ref
                                _bind4768_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi4763_
                               _ctx4764_))
                             _bind4768_)))))
           _lp4766_)
         (gx#core-resolve-identifier__opt-lambda4690
          _stx4762_
          _phi4763_
          _ctx4764_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4773_)
          (let ((_phi4775_ (gx#current-expander-phi)))
            (let ((_ctx4777_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda4760
               _stx4773_
               _phi4775_
               _ctx4777_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx4779_ _phi4780_)
          (let ((_ctx4782_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4760
             _stx4779_
             _phi4780_
             _ctx4782_))))
      (define gx#resolve-identifier
        (lambda _g5846_
          (let ((_g5845_ (length _g5846_)))
            (cond ((fx= _g5845_ 1) (apply gx#resolve-identifier__0 _g5846_))
                  ((fx= _g5845_ 2) (apply gx#resolve-identifier__1 _g5846_))
                  ((fx= _g5845_ 3)
                   (apply gx#resolve-identifier__opt-lambda4760 _g5846_))
                  (else (error "No clause matching arguments" _g5846_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4718
      (lambda (_stx4720_ _val4721_ _rebind?4722_ _phi4723_ _ctx4724_)
        (let ((_rebind?4726_
               (if (not _rebind?4722_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4722_) _rebind?4722_ true))))
          (gx#core-bind!__opt-lambda4479
           (gx#core-identifier-key _stx4720_)
           _val4721_
           _rebind?4726_
           _phi4723_
           _ctx4724_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4731_ _val4732_)
          (let ((_rebind?4734_ '#f))
            (let ((_phi4736_ (gx#current-expander-phi)))
              (let ((_ctx4738_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda4718
                 _stx4731_
                 _val4732_
                 _rebind?4734_
                 _phi4736_
                 _ctx4738_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx4740_ _val4741_ _rebind?4742_)
          (let ((_phi4744_ (gx#current-expander-phi)))
            (let ((_ctx4746_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda4718
               _stx4740_
               _val4741_
               _rebind?4742_
               _phi4744_
               _ctx4746_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx4748_ _val4749_ _rebind?4750_ _phi4751_)
          (let ((_ctx4753_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4718
             _stx4748_
             _val4749_
             _rebind?4750_
             _phi4751_
             _ctx4753_))))
      (define gx#bind-identifier!
        (lambda _g5848_
          (let ((_g5847_ (length _g5848_)))
            (cond ((fx= _g5847_ 2) (apply gx#bind-identifier!__0 _g5848_))
                  ((fx= _g5847_ 3) (apply gx#bind-identifier!__1 _g5848_))
                  ((fx= _g5847_ 4) (apply gx#bind-identifier!__2 _g5848_))
                  ((fx= _g5847_ 5)
                   (apply gx#bind-identifier!__opt-lambda4718 _g5848_))
                  (else (error "No clause matching arguments" _g5848_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4690
      (lambda (_stx4692_ _phi4693_ _ctx4694_)
        ((letrec ((_lp4696_
                   (lambda (_e4698_ _marks4699_)
                     (if (symbol? _e4698_)
                         (gx#core-resolve-binding
                          _e4698_
                          _phi4693_
                          _phi4693_
                          _ctx4694_
                          (reverse _marks4699_))
                         (if (gx#identifier-quote? _e4698_)
                             (gx#core-resolve-binding
                              (##structure-ref _e4698_ '1 AST::t '#f)
                              _phi4693_
                              '0
                              (##structure-ref
                               _e4698_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e4698_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e4698_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e4698_ '1 AST::t '#f)
                                  _phi4693_
                                  _phi4693_
                                  _ctx4694_
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e4698_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks4699_))
                                 (if (##structure-direct-instance-of?
                                      _e4698_
                                      'gx#syntax-wrap::t)
                                     (_lp4696_
                                      (##structure-ref _e4698_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e4698_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks4699_))
                                     (if (##structure-instance-of?
                                          _e4698_
                                          'gerbil#AST::t)
                                         (_lp4696_
                                          (##structure-ref
                                           _e4698_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks4699_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx4692_)))))))))
           _lp4696_)
         _stx4692_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4704_)
          (let ((_phi4706_ (gx#current-expander-phi)))
            (let ((_ctx4708_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda4690
               _stx4704_
               _phi4706_
               _ctx4708_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4710_ _phi4711_)
          (let ((_ctx4713_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4690
             _stx4710_
             _phi4711_
             _ctx4713_))))
      (define gx#core-resolve-identifier
        (lambda _g5850_
          (let ((_g5849_ (length _g5850_)))
            (cond ((fx= _g5849_ 1)
                   (apply gx#core-resolve-identifier__0 _g5850_))
                  ((fx= _g5849_ 2)
                   (apply gx#core-resolve-identifier__1 _g5850_))
                  ((fx= _g5849_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4690 _g5850_))
                  (else (error "No clause matching arguments" _g5850_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4605_ _phi4606_ _src-phi4607_ _ctx4608_ _marks4609_)
      (let ((_resolve4611_
             (lambda (_ctx4679_ _src-phi4680_ _key4681_)
               ((letrec ((_lp4683_
                          (lambda (_ctx4685_ _dphi4686_)
                            (let ((_$e4688_
                                   (gx#core-context-resolve
                                    _ctx4685_
                                    _key4681_)))
                              (if _$e4688_
                                  (values _$e4688_)
                                  (if (fxzero? _dphi4686_)
                                      '#f
                                      (if (fxpositive? _dphi4686_)
                                          (_lp4683_
                                           (gx#core-context-shift
                                            _ctx4685_
                                            '-1)
                                           (fx- _dphi4686_ '1))
                                          (if (fxnegative? _dphi4686_)
                                              (_lp4683_
                                               (gx#core-context-shift
                                                _ctx4685_
                                                '1)
                                               (fx+ _dphi4686_ '1))
                                              '#!void))))))))
                  _lp4683_)
                (gx#core-context-shift _ctx4679_ _phi4606_)
                (fx- _phi4606_ _src-phi4680_)))))
        ((letrec ((_lp4613_
                   (lambda (_ctx4615_ _src-phi4616_ _rest4617_)
                     (let ((_rest46184626_ _rest4617_))
                       (let ((_E46214630_
                              (lambda ()
                                (error '"No clause matching" _rest46184626_))))
                         (let ((_else46204634_
                                (lambda ()
                                  (_resolve4611_
                                   _ctx4615_
                                   _src-phi4616_
                                   _id4605_))))
                           (let ((_K46224667_
                                  (lambda (_rest4637_ _hd4638_)
                                    (let ((_hd46394645_ _hd4638_))
                                      (let ((_E46414649_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd46394645_))))
                                        (let ((_K46424659_
                                               (lambda (_subst4652_)
                                                 (let ((_$e4656_
                                                        (let ((_key4654_
                                                               (if _subst4652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (table-ref _subst4652_ _id4605_ '#f)
                           '#f)))
                  (if _key4654_
                      (_resolve4611_ _ctx4615_ _src-phi4616_ _key4654_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e4656_
                                                       _$e4656_
                                                       (_lp4613_
                                                        (##structure-ref
                                                         _hd4638_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd4638_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest4637_))))))
                                          (if (##structure-instance-of?
                                               _hd46394645_
                                               (##type-id gx#expander-mark::t))
                                              (let ((_e46434662_
                                                     (##vector-ref
                                                      _hd46394645_
                                                      '1)))
                                                (let ((_subst4665_
                                                       _e46434662_))
                                                  (_K46424659_ _subst4665_)))
                                              (_E46414649_))))))))
                             (if (##pair? _rest46184626_)
                                 (let ((_hd46234670_ (##car _rest46184626_))
                                       (_tl46244672_ (##cdr _rest46184626_)))
                                   (let ((_hd4675_ _hd46234670_))
                                     (let ((_rest4677_ _tl46244672_))
                                       (_K46224667_ _rest4677_ _hd4675_))))
                                 (_else46204634_)))))))))
           _lp4613_)
         _ctx4608_
         _src-phi4607_
         _marks4609_))))
  (begin
    (define gx#core-bind!__opt-lambda4479
      (lambda (_key4481_ _val4482_ _rebind?4483_ _phi4484_ _ctx4485_)
        (let ((_update-binding4487_
               (lambda (_xval4558_)
                 (if (let ((_$e4560_
                            (_rebind?4483_ _ctx4485_ _xval4558_ _val4482_)))
                       (if _$e4560_
                           _$e4560_
                           (let ((_$e4566_
                                  (if (##structure-direct-instance-of?
                                       _xval4558_
                                       'gx#import-binding::t)
                                      (let ((_$e4563_
                                             (##structure-ref
                                              _xval4558_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e4563_
                                            _$e4563_
                                            (if (##structure-instance-of?
                                                 _val4482_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val4482_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e4566_
                                 _$e4566_
                                 (if (##structure-instance-of?
                                      _xval4558_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val4482_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val4482_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval4558_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val4482_
                     (if (if (##structure-direct-instance-of?
                              _val4482_
                              'gx#import-binding::t)
                             (let ((_$e4569_
                                    (##structure-ref
                                     _val4482_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e4569_
                                   _$e4569_
                                   (if (##structure-instance-of?
                                        _xval4558_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val4482_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval4558_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval4558_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key4481_
                          _xval4558_
                          _val4482_))))))
          (let ((_gensubst4488_
                 (lambda (_subst4553_ _id4554_)
                   (let ((_eid4556_
                          (gensym (if (uninterned-symbol? _id4554_)
                                      '%
                                      _id4554_))))
                     (begin
                       (table-set! _subst4553_ _id4554_ _eid4556_)
                       _eid4556_)))))
            (let ((_subst!4489_
                   (lambda (_key4491_)
                     (let ((_key44924500_ _key4491_))
                       (let ((_E44954504_
                              (lambda ()
                                (error '"No clause matching" _key44924500_))))
                         (let ((_else44944508_ (lambda () _key4491_)))
                           (let ((_K44964541_
                                  (lambda (_mark4511_ _id4512_)
                                    (let ((_mark45134519_ _mark4511_))
                                      (let ((_E45154523_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark45134519_))))
                                        (let ((_K45164533_
                                               (lambda (_subst4526_)
                                                 (if (not _subst4526_)
                                                     (let ((_subst4528_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark4511_
                                                          _subst4528_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst4488_
                                                          _subst4528_
                                                          _id4512_)))
                                                     (let ((_$e4530_
                                                            (table-ref
                                                             _subst4526_
                                                             _id4512_
                                                             '#f)))
                                                       (if _$e4530_
                                                           (values _$e4530_)
                                                           (_gensubst4488_
                                                            _subst4526_
                                                            _id4512_)))))))
                                          (if (##structure-instance-of?
                                               _mark45134519_
                                               (##type-id gx#expander-mark::t))
                                              (let ((_e45174536_
                                                     (##vector-ref
                                                      _mark45134519_
                                                      '1)))
                                                (let ((_subst4539_
                                                       _e45174536_))
                                                  (_K45164533_ _subst4539_)))
                                              (_E45154523_))))))))
                             (if (##pair? _key44924500_)
                                 (let ((_hd44974544_ (##car _key44924500_))
                                       (_tl44984546_ (##cdr _key44924500_)))
                                   (let ((_id4549_ _hd44974544_))
                                     (let ((_mark4551_ _tl44984546_))
                                       (_K44964541_ _mark4551_ _id4549_))))
                                 (_else44944508_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx4485_ _phi4484_)
               (_subst!4489_ _key4481_)
               _val4482_
               _update-binding4487_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4575_ _val4576_)
          (let ((_rebind?4578_ false))
            (let ((_phi4580_ (gx#current-expander-phi)))
              (let ((_ctx4582_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda4479
                 _key4575_
                 _val4576_
                 _rebind?4578_
                 _phi4580_
                 _ctx4582_))))))
      (define gx#core-bind!__1
        (lambda (_key4584_ _val4585_ _rebind?4586_)
          (let ((_phi4588_ (gx#current-expander-phi)))
            (let ((_ctx4590_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda4479
               _key4584_
               _val4585_
               _rebind?4586_
               _phi4588_
               _ctx4590_)))))
      (define gx#core-bind!__2
        (lambda (_key4592_ _val4593_ _rebind?4594_ _phi4595_)
          (let ((_ctx4597_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4479
             _key4592_
             _val4593_
             _rebind?4594_
             _phi4595_
             _ctx4597_))))
      (define gx#core-bind!
        (lambda _g5852_
          (let ((_g5851_ (length _g5852_)))
            (cond ((fx= _g5851_ 2) (apply gx#core-bind!__0 _g5852_))
                  ((fx= _g5851_ 3) (apply gx#core-bind!__1 _g5852_))
                  ((fx= _g5851_ 4) (apply gx#core-bind!__2 _g5852_))
                  ((fx= _g5851_ 5)
                   (apply gx#core-bind!__opt-lambda4479 _g5852_))
                  (else (error "No clause matching arguments" _g5852_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4411_)
      (if (symbol? _stx4411_)
          (let ((_g44124420_ (gx#current-expander-marks)))
            (let ((_E44154424_
                   (lambda () (error '"No clause matching" _g44124420_))))
              (let ((_else44144428_ (lambda () _stx4411_)))
                (let ((_K44164433_
                       (lambda (_hd4431_) (cons _stx4411_ _hd4431_))))
                  (if (##pair? _g44124420_)
                      (let ((_hd44174436_ (##car _g44124420_))
                            (_tl44184438_ (##cdr _g44124420_)))
                        (let ((_hd4441_ _hd44174436_)) (_K44164433_ _hd4441_)))
                      (_else44144428_))))))
          (if (gx#identifier? _stx4411_)
              (let ((_id4443_ (gx#syntax-local-unwrap _stx4411_)))
                (let ((_eid4445_ (gx#stx-e _id4443_)))
                  (let ((_marks4447_ (gx#stx-identifier-marks _id4443_)))
                    (let ()
                      (let ((_marks44494457_ _marks4447_))
                        (let ((_E44524461_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks44494457_))))
                          (let ((_else44514465_ (lambda () _eid4445_)))
                            (let ((_K44534470_
                                   (lambda (_hd4468_)
                                     (cons _eid4445_ _hd4468_))))
                              (if (##pair? _marks44494457_)
                                  (let ((_hd44544473_ (##car _marks44494457_))
                                        (_tl44554475_ (##cdr _marks44494457_)))
                                    (let ((_hd4478_ _hd44544473_))
                                      (_K44534470_ _hd4478_)))
                                  (_else44514465_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4411_)))))
  (define gx#core-context-shift
    (lambda (_ctx4356_ _phi4357_)
      (let ((_make-phi4359_
             (lambda (_super4409_)
               (let ((__obj5823 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda5785
                    __obj5823
                    (gensym 'phi)
                    _super4409_)
                   __obj5823)))))
        (let ((_make-phi/up4360_
               (lambda (_ctx4404_ _super4405_)
                 (let ((_ctx+14407_ (_make-phi4359_ _super4405_)))
                   (begin
                     (##structure-set!
                      _ctx4404_
                      _ctx+14407_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+14407_
                      _ctx4404_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+14407_)))))
          (let ((_make-phi/down4361_
                 (lambda (_ctx4399_ _super4400_)
                   (let ((_ctx-14402_ (_make-phi4359_ _super4400_)))
                     (begin
                       (##structure-set!
                        _ctx-14402_
                        _ctx4399_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx4399_
                        _ctx-14402_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-14402_)))))
            (let ((_shift4362_
                   (lambda (_ctx4383_
                            _delta4384_
                            _make-delta-context4385_
                            _phi4386_
                            _K4387_)
                     (let ((_$e4389_
                            (##structure-ref
                             _ctx4383_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e4389_
                           ((lambda (_super4392_)
                              (let ((_super4394_
                                     (_K4387_ _super4392_ _delta4384_)))
                                (let ((_ctx+d4396_
                                       (_make-delta-context4385_
                                        _ctx4383_
                                        _super4394_)))
                                  (let ()
                                    (_K4387_ _ctx+d4396_
                                             (fx- _phi4386_ _delta4384_))))))
                            _$e4389_)
                           (error '"Bad context" _ctx4383_))))))
              ((letrec ((_K4364_ (lambda (_ctx4366_ _phi4367_)
                                   (if (fxzero? _phi4367_)
                                       _ctx4366_
                                       (if (##structure-instance-of?
                                            _ctx4366_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi4367_)
                                               (let ((_$e4369_
                                                      (##structure-ref
                                                       _ctx4366_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4369_
                                                     ((lambda (_g43714373_)
                                                        (_K4364_ _g43714373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx- _phi4367_ '1)))
              _$e4369_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4362_
                                                      _ctx4366_
                                                      '1
                                                      _make-phi/up4360_
                                                      _phi4367_
                                                      _K4364_)))
                                               (let ((_$e4376_
                                                      (##structure-ref
                                                       _ctx4366_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4376_
                                                     ((lambda (_g43784380_)
                                                        (_K4364_ _g43784380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx+ _phi4367_ '1)))
              _$e4376_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4362_
                                                      _ctx4366_
                                                      '-1
                                                      _make-phi/down4361_
                                                      _phi4367_
                                                      _K4364_))))
                                           _ctx4366_)))))
                 _K4364_)
               _ctx4356_
               _phi4357_)))))))
  (define gx#core-context-get
    (lambda (_ctx4353_ _key4354_)
      (table-ref
       (##structure-ref _ctx4353_ '2 gx#expander-context::t '#f)
       _key4354_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4349_ _key4350_ _val4351_)
      (table-set!
       (##structure-ref _ctx4349_ '2 gx#expander-context::t '#f)
       _key4350_
       _val4351_)))
  (define gx#core-context-resolve
    (lambda (_ctx4336_ _key4337_)
      ((letrec ((_lp4339_
                 (lambda (_ctx4341_)
                   (let ((_$e4343_ (gx#core-context-get _ctx4341_ _key4337_)))
                     (if _$e4343_
                         (values _$e4343_)
                         (let ((_$e4346_
                                (if (##structure-instance-of?
                                     _ctx4341_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx4341_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e4346_ (_lp4339_ _$e4346_) '#f)))))))
         _lp4339_)
       _ctx4336_)))
  (define gx#core-context-bind!
    (lambda (_ctx4326_ _key4327_ _val4328_ _rebind4329_)
      (let ((_$e4331_ (gx#core-context-get _ctx4326_ _key4327_)))
        (if _$e4331_
            ((lambda (_xval4334_)
               (gx#core-context-put!
                _ctx4326_
                _key4327_
                (_rebind4329_ _xval4334_)))
             _$e4331_)
            (gx#core-context-put! _ctx4326_ _key4327_ _val4328_)))))
  (begin
    (define gx#core-context-top__opt-lambda4302
      (lambda (_ctx4304_ _stop?4305_)
        ((letrec ((_lp4307_
                   (lambda (_ctx4309_)
                     (if (_stop?4305_ _ctx4309_)
                         _ctx4309_
                         (if (##structure-instance-of?
                              _ctx4309_
                              'gx#context-phi::t)
                             (_lp4307_
                              (##structure-ref
                               _ctx4309_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp4307_)
         _ctx4304_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx4315_ (gx#current-expander-context)))
            (let ((_stop?4317_ gx#top-context?))
              (gx#core-context-top__opt-lambda4302 _ctx4315_ _stop?4317_)))))
      (define gx#core-context-top__1
        (lambda (_ctx4319_)
          (let ((_stop?4321_ gx#top-context?))
            (gx#core-context-top__opt-lambda4302 _ctx4319_ _stop?4321_))))
      (define gx#core-context-top
        (lambda _g5854_
          (let ((_g5853_ (length _g5854_)))
            (cond ((fx= _g5853_ 0) (apply gx#core-context-top__0 _g5854_))
                  ((fx= _g5853_ 1) (apply gx#core-context-top__1 _g5854_))
                  ((fx= _g5853_ 2)
                   (apply gx#core-context-top__opt-lambda4302 _g5854_))
                  (else (error "No clause matching arguments" _g5854_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4287
      (lambda (_ctx4289_)
        ((letrec ((_lp4291_
                   (lambda (_ctx4293_)
                     (if (##structure-instance-of?
                          _ctx4293_
                          'gx#context-phi::t)
                         (_lp4291_
                          (##structure-ref _ctx4293_ '3 gx#phi-context::t '#f))
                         _ctx4293_))))
           _lp4291_)
         _ctx4289_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4299_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4287 _ctx4299_))))
      (define gx#core-context-root
        (lambda _g5856_
          (let ((_g5855_ (length _g5856_)))
            (cond ((fx= _g5855_ 0) (apply gx#core-context-root__0 _g5856_))
                  ((fx= _g5855_ 1)
                   (apply gx#core-context-root__opt-lambda4287 _g5856_))
                  (else (error "No clause matching arguments" _g5856_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4271
      (lambda (_ctx4273_ . __42704274_)
        (if (##structure-instance-of? _ctx4273_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4273_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4273_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4281_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4271 _ctx4281_))))
      (define gx#core-context-rebind?
        (lambda _g5858_
          (let ((_g5857_ (length _g5858_)))
            (cond ((fx= _g5857_ 0) (apply gx#core-context-rebind?__0 _g5858_))
                  ((fx= _g5857_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4271 _g5858_))
                  ((fx>= _g5857_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4271 _g5858_))
                  (else (error "No clause matching arguments" _g5858_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4254
      (lambda (_ctx4256_)
        (let ((_$e4258_ (gx#core-context-top__1 _ctx4256_)))
          (if _$e4258_
              ((lambda (_ctx4261_)
                 (if (##structure-instance-of? _ctx4261_ 'gx#module-context::t)
                     (##structure-ref _ctx4261_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4258_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4267_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4254 _ctx4267_))))
      (define gx#core-context-namespace
        (lambda _g5860_
          (let ((_g5859_ (length _g5860_)))
            (cond ((fx= _g5859_ 0)
                   (apply gx#core-context-namespace__0 _g5860_))
                  ((fx= _g5859_ 1)
                   (apply gx#core-context-namespace__opt-lambda4254 _g5860_))
                  (else (error "No clause matching arguments" _g5860_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4240
      (lambda (_bind4242_ _is?4243_)
        (if (##structure-direct-instance-of? _bind4242_ 'gx#syntax-binding::t)
            (_is?4243_
             (##structure-ref _bind4242_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4248_)
          (let ((_is?4250_ gx#expander?))
            (gx#expander-binding?__opt-lambda4240 _bind4248_ _is?4250_))))
      (define gx#expander-binding?
        (lambda _g5862_
          (let ((_g5861_ (length _g5862_)))
            (cond ((fx= _g5861_ 1) (apply gx#expander-binding?__0 _g5862_))
                  ((fx= _g5861_ 2)
                   (apply gx#expander-binding?__opt-lambda4240 _g5862_))
                  (else (error "No clause matching arguments" _g5862_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4239_)
      (gx#expander-binding?__opt-lambda4240 _bind4239_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4237_)
      (gx#expander-binding?__opt-lambda4240 _bind4237_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4231_)
      (let ((_direct-special-form?4233_
             (lambda (_obj4235_)
               (##structure-direct-instance-of?
                _obj4235_
                (##type-id gx#special-form::t)))))
        (gx#expander-binding?__opt-lambda4240
         _bind4231_
         _direct-special-form?4233_))))
  (define gx#special-form-binding?
    (lambda (_bind4229_)
      (gx#expander-binding?__opt-lambda4240 _bind4229_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4220_)
      (let ((_feature?4222_
             (lambda (_e4224_)
               (let ((_$e4226_
                      (##structure-instance-of?
                       _e4224_
                       'gx#feature-expander::t)))
                 (if _$e4226_
                     _$e4226_
                     (##structure-instance-of?
                      _e4224_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4240 _bind4220_ _feature?4222_))))
  (define gx#private-feature-binding?
    (lambda (_bind4218_)
      (gx#expander-binding?__opt-lambda4240
       _bind4218_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4203
      (lambda (_id4205_ _bound?4206_)
        (if (gx#identifier? _id4205_)
            (_bound?4206_ (gx#resolve-identifier__0 _id4205_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4211_)
          (let ((_bound?4213_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4203
             _id4211_
             _bound?4213_))))
      (define gx#core-bound-identifier?
        (lambda _g5864_
          (let ((_g5863_ (length _g5864_)))
            (cond ((fx= _g5863_ 1)
                   (apply gx#core-bound-identifier?__0 _g5864_))
                  ((fx= _g5863_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4203 _g5864_))
                  (else (error "No clause matching arguments" _g5864_))))))))
  (define gx#core-identifier=?
    (lambda (_x4195_ _y4196_)
      (let ((_y=?4198_
             (lambda (_xid4202_)
               ((if (list? _y4196_) memq eq?) _xid4202_ _y4196_))))
        (let ((_bind4200_ (gx#resolve-identifier__0 _x4195_)))
          (if (##structure-instance-of? _bind4200_ 'gx#binding::t)
              (_y=?4198_ (##structure-ref _bind4200_ '1 gx#binding::t '#f))
              (_y=?4198_ (gx#stx-e _x4195_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4193_)
      (if (interned-symbol? _e4193_)
          (string-index (symbol->string _e4193_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda4149
      (lambda (_stx4151_ _src4152_ _ctx4153_ _marks4154_)
        (if (gx#sealed-syntax? _stx4151_)
            (gx#stx-unwrap__0 _stx4151_)
            (if (gx#identifier? _stx4151_)
                (let ((_id4156_ (gx#syntax-local-unwrap _stx4151_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4156_)
                   (let ((_$e4158_ (gx#stx-source _id4156_)))
                     (if _$e4158_ _$e4158_ _src4152_))
                   _ctx4153_
                   (##structure-ref _id4156_ '3 gx#identifier-wrap::t '#f)))
                (if (gx#stx-datum? _stx4151_)
                    (gx#stx-e _stx4151_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4151_
                     (let ((_$e4161_ (gx#stx-source _stx4151_)))
                       (if _$e4161_ _$e4161_ _src4152_))
                     _ctx4153_
                     (reverse _marks4154_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4167_)
          (let ((_src4169_ '#f))
            (let ((_ctx4171_ (gx#current-expander-context)))
              (let ((_marks4173_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda4149
                 _stx4167_
                 _src4169_
                 _ctx4171_
                 _marks4173_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4175_ _src4176_)
          (let ((_ctx4178_ (gx#current-expander-context)))
            (let ((_marks4180_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda4149
               _stx4175_
               _src4176_
               _ctx4178_
               _marks4180_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4182_ _src4183_ _ctx4184_)
          (let ((_marks4186_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4149
             _stx4182_
             _src4183_
             _ctx4184_
             _marks4186_))))
      (define gx#core-quote-syntax
        (lambda _g5866_
          (let ((_g5865_ (length _g5866_)))
            (cond ((fx= _g5865_ 1) (apply gx#core-quote-syntax__0 _g5866_))
                  ((fx= _g5865_ 2) (apply gx#core-quote-syntax__1 _g5866_))
                  ((fx= _g5865_ 3) (apply gx#core-quote-syntax__2 _g5866_))
                  ((fx= _g5865_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4149 _g5866_))
                  (else (error "No clause matching arguments" _g5866_))))))))
  (define gx#core-cons
    (lambda (_hd4147_ _tl4148_)
      (cons (gx#core-quote-syntax__0 _hd4147_) _tl4148_)))
  (define gx#core-list
    (lambda (_hd4144_ . _rest4145_)
      (cons (gx#core-quote-syntax__0 _hd4144_) _rest4145_)))
  (define gx#core-cons*
    (lambda (_hd4141_ . _rest4142_)
      (apply cons* (gx#core-quote-syntax__0 _hd4141_) _rest4142_)))
  (begin
    (define gx#core-resolve-path__opt-lambda4113
      (lambda (_stx-path4115_ _rel4116_)
        (let ((_path4128_ (gx#stx-e _stx-path4115_))
              (_reldir4129_
               ((letrec ((_lp4118_
                          (lambda (_relsrc4120_)
                            (if (##structure-instance-of?
                                 _relsrc4120_
                                 'gerbil#AST::t)
                                (_lp4118_
                                 (let ((_$e4122_ (gx#stx-source _relsrc4120_)))
                                   (if _$e4122_
                                       _$e4122_
                                       (gx#stx-e _relsrc4120_))))
                                (if (source-location-path? _relsrc4120_)
                                    (path-directory
                                     (source-location-path _relsrc4120_))
                                    (if (string? _relsrc4120_)
                                        (path-directory _relsrc4120_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp4118_)
                (let ((_$e4125_ (gx#stx-source _stx-path4115_)))
                  (if _$e4125_ _$e4125_ _rel4116_)))))
          (path-expand _path4128_ (path-normalize _reldir4129_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4134_)
          (let ((_rel4136_ '#f))
            (gx#core-resolve-path__opt-lambda4113 _stx-path4134_ _rel4136_))))
      (define gx#core-resolve-path
        (lambda _g5868_
          (let ((_g5867_ (length _g5868_)))
            (cond ((fx= _g5867_ 1) (apply gx#core-resolve-path__0 _g5868_))
                  ((fx= _g5867_ 2)
                   (apply gx#core-resolve-path__opt-lambda4113 _g5868_))
                  (else (error "No clause matching arguments" _g5868_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4112_) (gx#stx-rewrap _stx4112_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4110_)
      (gx#stx-unwrap__opt-lambda3923 _stx4110_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4078_)
      (let ((_g40794087_ (gx#current-expander-marks)))
        (let ((_E40824091_
               (lambda () (error '"No clause matching" _g40794087_))))
          (let ((_else40814095_ (lambda () _stx4078_)))
            (let ((_K40834100_
                   (lambda (_hd4098_) (gx#stx-apply-mark _stx4078_ _hd4098_))))
              (if (##pair? _g40794087_)
                  (let ((_hd40844103_ (##car _g40794087_))
                        (_tl40854105_ (##cdr _g40794087_)))
                    (let ((_hd4108_ _hd40844103_)) (_K40834100_ _hd4108_)))
                  (_else40814095_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda4061
      (lambda (_stx4063_ _E4064_)
        (let ((_bind4066_ (gx#resolve-identifier__0 _stx4063_)))
          (if (##structure-direct-instance-of?
               _bind4066_
               'gx#syntax-binding::t)
              (##structure-ref _bind4066_ '4 gx#syntax-binding::t '#f)
              (_E4064_ _stx4063_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4071_)
          (let ((_E4073_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda4061 _stx4071_ _E4073_))))
      (define gx#syntax-local-e
        (lambda _g5870_
          (let ((_g5869_ (length _g5870_)))
            (cond ((fx= _g5869_ 1) (apply gx#syntax-local-e__0 _g5870_))
                  ((fx= _g5869_ 2)
                   (apply gx#syntax-local-e__opt-lambda4061 _g5870_))
                  (else (error "No clause matching arguments" _g5870_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda4045
      (lambda (_stx4047_ _E4048_)
        (let ((_e4050_ (gx#syntax-local-e__opt-lambda4061 _stx4047_ _E4048_)))
          (if (##structure-instance-of? _e4050_ 'gx#expander::t)
              (##structure-ref _e4050_ '1 gx#expander::t '#f)
              _e4050_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4055_)
          (let ((_E4057_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda4045 _stx4055_ _E4057_))))
      (define gx#syntax-local-value
        (lambda _g5872_
          (let ((_g5871_ (length _g5872_)))
            (cond ((fx= _g5871_ 1) (apply gx#syntax-local-value__0 _g5872_))
                  ((fx= _g5871_ 2)
                   (apply gx#syntax-local-value__opt-lambda4045 _g5872_))
                  (else (error "No clause matching arguments" _g5872_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4044_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4044_))))
