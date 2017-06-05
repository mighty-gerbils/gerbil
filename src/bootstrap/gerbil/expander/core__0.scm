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
    (lambda _$args5815_
      (apply make-struct-instance gx#expander-context::t _$args5815_)))
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
    (lambda _$args5812_
      (apply make-struct-instance gx#root-context::t _$args5812_)))
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
    (lambda _$args5809_
      (apply make-struct-instance gx#phi-context::t _$args5809_)))
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
    (lambda _$args5806_
      (apply make-struct-instance gx#top-context::t _$args5806_)))
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
    (lambda _$args5803_
      (apply make-struct-instance gx#module-context::t _$args5803_)))
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
    (lambda _$args5800_
      (apply make-struct-instance gx#prelude-context::t _$args5800_)))
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
    (lambda _$args5797_
      (apply make-struct-instance gx#local-context::t _$args5797_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5779
      (lambda (_self5781_ _id5782_ _super5783_)
        (struct-instance-init!
         _self5781_
         _id5782_
         (make-hash-table-eq)
         _super5783_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5788_ _id5789_)
          (let ((_super5791_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5779
             _self5788_
             _id5789_
             _super5791_))))
      (define gx#phi-context:::init!
        (lambda _g5819_
          (let ((_g5818_ (length _g5819_)))
            (cond ((fx= _g5818_ 2) (apply gx#phi-context:::init!__0 _g5819_))
                  ((fx= _g5818_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5779 _g5819_))
                  (else (error "No clause matching arguments" _g5819_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5765
      (lambda (_self5767_ _super5768_)
        (struct-instance-init!
         _self5767_
         (gensym 'L)
         (make-hash-table-eq)
         _super5768_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5773_)
          (let ((_super5775_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5765
             _self5773_
             _super5775_))))
      (define gx#local-context:::init!
        (lambda _g5821_
          (let ((_g5820_ (length _g5821_)))
            (cond ((fx= _g5820_ 1) (apply gx#local-context:::init!__0 _g5821_))
                  ((fx= _g5820_ 2)
                   (apply gx#local-context:::init!__opt-lambda5765 _g5821_))
                  (else (error "No clause matching arguments" _g5821_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5763_
      (apply make-struct-instance gx#binding::t _$args5763_)))
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
    (lambda _$args5760_
      (apply make-struct-instance gx#runtime-binding::t _$args5760_)))
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
    (lambda _$args5757_
      (apply make-struct-instance gx#local-binding::t _$args5757_)))
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
    (lambda _$args5754_
      (apply make-struct-instance gx#top-binding::t _$args5754_)))
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
    (lambda _$args5751_
      (apply make-struct-instance gx#module-binding::t _$args5751_)))
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
    (lambda _$args5748_
      (apply make-struct-instance gx#extern-binding::t _$args5748_)))
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
    (lambda _$args5745_
      (apply make-struct-instance gx#syntax-binding::t _$args5745_)))
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
    (lambda _$args5742_
      (apply make-struct-instance gx#import-binding::t _$args5742_)))
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
    (lambda _$args5739_
      (apply make-struct-instance gx#alias-binding::t _$args5739_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5736_
      (apply make-struct-instance gx#expander::t _$args5736_)))
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
    (lambda _$args5733_
      (apply make-struct-instance gx#core-expander::t _$args5733_)))
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
    (lambda _$args5730_
      (apply make-struct-instance gx#expression-form::t _$args5730_)))
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
    (lambda _$args5727_
      (apply make-struct-instance gx#special-form::t _$args5727_)))
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
    (lambda _$args5724_
      (apply make-struct-instance gx#definition-form::t _$args5724_)))
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
    (lambda _$args5721_
      (apply make-struct-instance gx#top-special-form::t _$args5721_)))
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
    (lambda _$args5718_
      (apply make-struct-instance gx#module-special-form::t _$args5718_)))
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
    (lambda _$args5715_
      (apply make-struct-instance gx#feature-expander::t _$args5715_)))
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
    (lambda _$args5712_
      (apply make-struct-instance gx#private-feature-expander::t _$args5712_)))
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
    (lambda _$args5709_
      (apply make-struct-instance gx#reserved-expander::t _$args5709_)))
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
    (lambda _$args5706_
      (apply make-struct-instance gx#macro-expander::t _$args5706_)))
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
    (lambda _$args5703_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5703_)))
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
    (lambda _$args5700_
      (apply make-struct-instance gx#user-expander::t _$args5700_)))
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
    (lambda _$args5697_
      (apply make-struct-instance gx#expander-mark::t _$args5697_)))
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
    (lambda _$args5694_
      (apply make-struct-instance gx#syntax-error::t _$args5694_)))
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
    (lambda (_where5689_ _message5690_ _stx5691_ . _details5692_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5690_
              (cons _stx5691_ _details5692_)
              _where5689_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5674
      (lambda (_stx5676_ _expression?5677_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5658 _stx5676_ _expression?5677_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5682_)
          (let ((_expression?5684_ '#f))
            (gx#eval-syntax__opt-lambda5674 _stx5682_ _expression?5684_))))
      (define gx#eval-syntax
        (lambda _g5823_
          (let ((_g5822_ (length _g5823_)))
            (cond ((fx= _g5822_ 1) (apply gx#eval-syntax__0 _g5823_))
                  ((fx= _g5822_ 2)
                   (apply gx#eval-syntax__opt-lambda5674 _g5823_))
                  (else (error "No clause matching arguments" _g5823_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5673_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5673_))))
  (begin
    (define gx#core-expand__opt-lambda5658
      (lambda (_stx5660_ _expression?5661_)
        (if _expression?5661_
            (gx#core-expand-expression _stx5660_)
            (gx#core-expand-top _stx5660_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5666_)
          (let ((_expression?5668_ '#f))
            (gx#core-expand__opt-lambda5658 _stx5666_ _expression?5668_))))
      (define gx#core-expand
        (lambda _g5825_
          (let ((_g5824_ (length _g5825_)))
            (cond ((fx= _g5824_ 1) (apply gx#core-expand__0 _g5825_))
                  ((fx= _g5824_ 2)
                   (apply gx#core-expand__opt-lambda5658 _g5825_))
                  (else (error "No clause matching arguments" _g5825_))))))))
  (define gx#core-expand-top
    (lambda (_stx5627_)
      (let ((_stx5629_ (gx#core-expand*__0 _stx5627_)))
        (let ((_e56305637_ _stx5629_))
          (let ((_E56325641_
                 (lambda () (gx#core-expand-expression _stx5629_))))
            (let ((_E56315655_
                   (lambda ()
                     (if (gx#stx-pair? _e56305637_)
                         (let ((_e56335645_ (gx#syntax-e _e56305637_)))
                           (let ((_hd56345648_ (##car _e56335645_))
                                 (_tl56355650_ (##cdr _e56335645_)))
                             (let ((_form5653_ _hd56345648_))
                               (if (gx#core-bound-identifier?__0 _form5653_)
                                   _stx5629_
                                   (_E56325641_)))))
                         (_E56325641_)))))
              (let () (_E56315655_))))))))
  (define gx#core-expand-expression
    (lambda (_stx5549_)
      (let ((_sealed-expression?5551_
             (lambda (_hd5597_)
               (if (gx#sealed-syntax? _hd5597_)
                   (let ((_e55985605_ _hd5597_))
                     (let ((_E56005609_ (lambda () '#f)))
                       (let ((_E55995623_
                              (lambda ()
                                (if (gx#stx-pair? _e55985605_)
                                    (let ((_e56015613_
                                           (gx#syntax-e _e55985605_)))
                                      (let ((_hd56025616_ (##car _e56015613_))
                                            (_tl56035618_ (##cdr _e56015613_)))
                                        (let ((_form5621_ _hd56025616_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4203
                                               _form5621_
                                               gx#expression-form-binding?)
                                              (_E56005609_)))))
                                    (_E56005609_)))))
                         (let () (_E55995623_)))))
                   '#f))))
        (let ((_illegal-expression5552_
               (lambda (_hd5595_ . _g5826_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx5549_
                  _hd5595_))))
          (let ((_expand-e5553_
                 (lambda (_form5590_ _hd5591_)
                   (let ((_bind5593_
                          (if (##structure-instance-of?
                               _form5590_
                               'gx#binding::t)
                              _form5590_
                              (gx#resolve-identifier__0 _form5590_))))
                     (if (gx#core-expander-binding? _bind5593_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5593_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd5591_
                           (gx#stx-source _stx5549_)))
                         (if (##structure-direct-instance-of?
                              _bind5593_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind5593_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd5591_
                                (gx#stx-source _stx5549_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx5549_
                              _form5590_)))))))
            (let ((_hd5555_ (gx#core-expand-head _stx5549_)))
              (if (_sealed-expression?5551_ _hd5555_)
                  _hd5555_
                  (if (gx#stx-pair? _hd5555_)
                      (let ((_e55565563_ _hd5555_))
                        (let ((_E55585567_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e55565563_))))
                          (let ((_E55575586_
                                 (lambda ()
                                   (if (gx#stx-pair? _e55565563_)
                                       (let ((_e55595571_
                                              (gx#syntax-e _e55565563_)))
                                         (let ((_hd55605574_
                                                (##car _e55595571_))
                                               (_tl55615576_
                                                (##cdr _e55595571_)))
                                           (let ((_form5579_ _hd55605574_))
                                             (if '#t
                                                 (let ((_bind5581_
                                                        (if (gx#identifier?
                                                             _form5579_)
                                                            (gx#resolve-identifier__0
                                                             _form5579_)
                                                            '#f)))
                                                   (if (let ((_$e5583_
                                                              (not _bind5581_)))
                                                         (if _$e5583_
                                                             _$e5583_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind5581_))))
               (_expand-e5553_ '%%app (cons '%%app _hd5555_))
               (if (eq? (##structure-ref _bind5581_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd5555_ _illegal-expression5552_)
                   (if (gx#expression-form-binding? _bind5581_)
                       (_expand-e5553_ _bind5581_ _hd5555_)
                       (_illegal-expression5552_ _hd5555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E55585567_)))))
                                       (_E55585567_)))))
                            (let () (_E55575586_)))))
                      (if (gx#core-bound-identifier?__0 _hd5555_)
                          (_illegal-expression5552_ _hd5555_)
                          (if (gx#identifier? _hd5555_)
                              (_expand-e5553_
                               '%%ref
                               (cons '%%ref (cons _hd5555_ '())))
                              (if (gx#stx-datum? _hd5555_)
                                  (_expand-e5553_
                                   '%#quote
                                   (cons '%#quote (cons _hd5555_ '())))
                                  (_illegal-expression5552_
                                   _hd5555_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5544_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5547_ (gx#core-expand-expression _stx5544_)))
           (values _stx5547_ (gx#eval-syntax* _stx5547_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5523
      (lambda (_stx5525_ _stop?5526_)
        ((letrec ((_lp5528_
                   (lambda (_stx5530_)
                     (if (_stop?5526_ _stx5530_)
                         _stx5530_
                         (let ((_rstx5532_ (gx#core-expand1 _stx5530_)))
                           (if (eq? _stx5530_ _rstx5532_)
                               _stx5530_
                               (_lp5528_ _rstx5532_)))))))
           _lp5528_)
         _stx5525_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5537_)
          (let ((_stop?5539_ false))
            (gx#core-expand*__opt-lambda5523 _stx5537_ _stop?5539_))))
      (define gx#core-expand*
        (lambda _g5828_
          (let ((_g5827_ (length _g5828_)))
            (cond ((fx= _g5827_ 1) (apply gx#core-expand*__0 _g5828_))
                  ((fx= _g5827_ 2)
                   (apply gx#core-expand*__opt-lambda5523 _g5828_))
                  (else (error "No clause matching arguments" _g5828_))))))))
  (define gx#core-expand1
    (lambda (_stx5481_)
      (let ((_step5483_
             (lambda (_hd5520_)
               (let ((_bind5522_ (gx#resolve-identifier__0 _hd5520_)))
                 (if (##structure-instance-of?
                      _bind5522_
                      'gx#runtime-binding::t)
                     _stx5481_
                     (if (##structure-direct-instance-of?
                          _bind5522_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5522_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx5481_)
                         (if (not _bind5522_)
                             _stx5481_
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx5481_))))))))
        (let ((_e54845492_ _stx5481_))
          (let ((_E54905496_ (lambda () _stx5481_)))
            (let ((_E54865502_
                   (lambda ()
                     (let ((_hd5500_ _e54845492_))
                       (if (gx#identifier? _hd5500_)
                           (_step5483_ _hd5500_)
                           (_E54905496_))))))
              (let ((_E54855516_
                     (lambda ()
                       (if (gx#stx-pair? _e54845492_)
                           (let ((_e54875506_ (gx#syntax-e _e54845492_)))
                             (let ((_hd54885509_ (##car _e54875506_))
                                   (_tl54895511_ (##cdr _e54875506_)))
                               (let ((_hd5514_ _hd54885509_))
                                 (if (gx#identifier? _hd5514_)
                                     (_step5483_ _hd5514_)
                                     (_E54865502_)))))
                           (_E54865502_)))))
                (let () (_E54855516_)))))))))
  (define gx#core-expand-head
    (lambda (_stx5447_)
      (let ((_stop?5449_
             (lambda (_stx5451_)
               (let ((_e54525459_ _stx5451_))
                 (let ((_E54545463_ (lambda () '#f)))
                   (let ((_E54535477_
                          (lambda ()
                            (if (gx#stx-pair? _e54525459_)
                                (let ((_e54555467_ (gx#syntax-e _e54525459_)))
                                  (let ((_hd54565470_ (##car _e54555467_))
                                        (_tl54575472_ (##cdr _e54555467_)))
                                    (let ((_hd5475_ _hd54565470_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5475_)
                                          (_E54545463_)))))
                                (_E54545463_)))))
                     (let () (_E54535477_))))))))
        (gx#core-expand*__opt-lambda5523 _stx5447_ _stop?5449_))))
  (begin
    (define gx#core-expand-block__opt-lambda5251
      (lambda (_stx5253_ _expand-special5254_ _begin-form5255_ _expand-e5256_)
        (letrec ((_expand-splice5258_
                  (lambda (_hd5421_ _body5422_ _rest5423_ _r5424_)
                    (if (gx#stx-list? _body5422_)
                        (_K5262_ (gx#stx-foldr cons _rest5423_ _body5422_)
                                 _r5424_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5253_
                         _hd5421_))))
                 (_expand-cond-expand5259_
                  (lambda (_hd5417_ _rest5418_ _r5419_)
                    (_K5262_ (cons (gx#core-expand-cond-expand% _hd5417_)
                                   _rest5418_)
                             _r5419_)))
                 (_expand-include5260_
                  (lambda (_hd5366_ _rest5367_ _r5368_)
                    (let ((_e53695379_ _hd5366_))
                      (let ((_E53715383_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e53695379_))))
                        (let ((_E53705413_
                               (lambda ()
                                 (if (gx#stx-pair? _e53695379_)
                                     (let ((_e53725387_
                                            (gx#syntax-e _e53695379_)))
                                       (let ((_hd53735390_ (##car _e53725387_))
                                             (_tl53745392_
                                              (##cdr _e53725387_)))
                                         (if (gx#stx-pair? _tl53745392_)
                                             (let ((_e53755395_
                                                    (gx#syntax-e
                                                     _tl53745392_)))
                                               (let ((_hd53765398_
                                                      (##car _e53755395_))
                                                     (_tl53775400_
                                                      (##cdr _e53755395_)))
                                                 (let ((_path5403_
                                                        _hd53765398_))
                                                   (if (gx#stx-null?
                                                        _tl53775400_)
                                                       (if (gx#stx-string?
                                                            _path5403_)
                                                           (let ((_rpath5405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda4113
                           _path5403_
                           (gx#stx-source _hd5366_))))
                     (let ((_block5407_
                            (gx#core-expand-include%__opt-lambda5000
                             _hd5366_
                             _rpath5405_)))
                       (let ((_rbody5410_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda5251
                                  _block5407_
                                  _expand-special5254_
                                  '#f
                                  _expand-e5256_))
                               gx#current-expander-path
                               (cons _rpath5405_ (gx#current-expander-path)))))
                         (let ()
                           (_K5262_ _rest5367_
                                    (foldr1 cons _r5368_ _rbody5410_))))))
                   (_E53715383_))
               (_E53715383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E53715383_))))
                                     (_E53715383_)))))
                          (let () (_E53705413_)))))))
                 (_expand-expression5261_
                  (lambda (_hd5362_ _rest5363_ _r5364_)
                    (_K5262_ _rest5363_
                             (cons (_expand-e5256_ _hd5362_) _r5364_))))
                 (_K5262_ (lambda (_rest5292_ _r5293_)
                            (let ((_e52945301_ _rest5292_))
                              (let ((_E52965305_
                                     (lambda ()
                                       (if _begin-form5255_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form5255_
                                             (reverse _r5293_))
                                            (gx#stx-source _stx5253_))
                                           _r5293_))))
                                (let ((_E52955358_
                                       (lambda ()
                                         (if (gx#stx-pair? _e52945301_)
                                             (let ((_e52975309_
                                                    (gx#syntax-e _e52945301_)))
                                               (let ((_hd52985312_
                                                      (##car _e52975309_))
                                                     (_tl52995314_
                                                      (##cdr _e52975309_)))
                                                 (let ((_hd5317_ _hd52985312_))
                                                   (let ((_rest5319_
                                                          _tl52995314_))
                                                     (if '#t
                                                         (let ((_hd5321_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd5317_)))
                   (let ((_e53225329_ _hd5321_))
                     (let ((_E53245333_
                            (lambda ()
                              (_expand-expression5261_
                               _hd5321_
                               _rest5319_
                               _r5293_))))
                       (let ((_E53235354_
                              (lambda ()
                                (if (gx#stx-pair? _e53225329_)
                                    (let ((_e53255337_
                                           (gx#syntax-e _e53225329_)))
                                      (let ((_hd53265340_ (##car _e53255337_))
                                            (_tl53275342_ (##cdr _e53255337_)))
                                        (let ((_form5345_ _hd53265340_))
                                          (let ((_body5347_ _tl53275342_))
                                            (if '#t
                                                (let ((_bind5349_
                                                       (if (gx#identifier?
                                                            _form5345_)
                                                           (gx#resolve-identifier__0
                                                            _form5345_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind5349_)
                                                      (let ((_$e5351_
                                                             (##structure-ref
                                                              _bind5349_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e5351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice5258_
                     _hd5321_
                     _body5347_
                     _rest5319_
                     _r5293_)
                    (if (eq? _$e5351_ '%#cond-expand)
                        (_expand-cond-expand5259_ _hd5321_ _rest5319_ _r5293_)
                        (if (eq? _$e5351_ '%#include)
                            (_expand-include5260_ _hd5321_ _rest5319_ _r5293_)
                            (_expand-special5254_
                             _hd5321_
                             _K5262_
                             _rest5319_
                             _r5293_)))))
              (_expand-expression5261_ _hd5321_ _rest5319_ _r5293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E53245333_))))))
                                    (_E53245333_)))))
                         (let () (_E53235354_))))))
                 (_E52965305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E52965305_)))))
                                  (let () (_E52955358_))))))))
          (let ((_e52635270_ _stx5253_))
            (let ((_E52655274_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e52635270_))))
              (let ((_E52645288_
                     (lambda ()
                       (if (gx#stx-pair? _e52635270_)
                           (let ((_e52665278_ (gx#syntax-e _e52635270_)))
                             (let ((_hd52675281_ (##car _e52665278_))
                                   (_tl52685283_ (##cdr _e52665278_)))
                               (let ((_body5286_ _tl52685283_))
                                 (if (gx#stx-list? _body5286_)
                                     (_K5262_ _body5286_ '())
                                     (_E52655274_)))))
                           (_E52655274_)))))
                (let () (_E52645288_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5429_ _expand-special5430_)
          (let ((_begin-form5432_ '%#begin))
            (let ((_expand-e5434_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda5251
               _stx5429_
               _expand-special5430_
               _begin-form5432_
               _expand-e5434_)))))
      (define gx#core-expand-block__1
        (lambda (_stx5436_ _expand-special5437_ _begin-form5438_)
          (let ((_expand-e5440_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5251
             _stx5436_
             _expand-special5437_
             _begin-form5438_
             _expand-e5440_))))
      (define gx#core-expand-block
        (lambda _g5830_
          (let ((_g5829_ (length _g5830_)))
            (cond ((fx= _g5829_ 2) (apply gx#core-expand-block__0 _g5830_))
                  ((fx= _g5829_ 3) (apply gx#core-expand-block__1 _g5830_))
                  ((fx= _g5829_ 4)
                   (apply gx#core-expand-block__opt-lambda5251 _g5830_))
                  (else (error "No clause matching arguments" _g5830_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5201_ _expand-special5202_)
      (let ((_g52035214_
             (gx#core-expand-block__1 _stx5201_ _expand-special5202_ '#f)))
        (let ((_E52075218_
               (lambda () (error '"No clause matching" _g52035214_))))
          (let ((_try-match52065229_
                 (lambda ()
                   (let ((_K52085224_
                          (lambda (_body5222_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body5222_))
                             (gx#stx-source _stx5201_)))))
                     (let ((_body5227_ _g52035214_))
                       (_K52085224_ _body5227_))))))
            (let ((_try-match52055245_
                   (lambda ()
                     (let ((_K52095235_ (lambda (_expr5233_) _expr5233_)))
                       (if (##pair? _g52035214_)
                           (let ((_hd52105238_ (##car _g52035214_))
                                 (_tl52115240_ (##cdr _g52035214_)))
                             (let ((_expr5243_ _hd52105238_))
                               (if (##null? _tl52115240_)
                                   (_K52095235_ _expr5243_)
                                   (_try-match52065229_))))
                           (_try-match52065229_))))))
              (let ((_K52125249_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx5201_))))
                (if (##null? _g52035214_)
                    (_K52125249_)
                    (_try-match52055245_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5059_)
      (letrec ((_satisfied?5061_
                (lambda (_condition5159_)
                  (let ((_e51605168_ _condition5159_))
                    (let ((_E51635172_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e51605168_))))
                      (let ((_E51625191_
                             (lambda ()
                               (if (gx#stx-pair? _e51605168_)
                                   (let ((_e51645176_
                                          (gx#syntax-e _e51605168_)))
                                     (let ((_hd51655179_ (##car _e51645176_))
                                           (_tl51665181_ (##cdr _e51645176_)))
                                       (let ((_combinator5184_ _hd51655179_))
                                         (let ((_body5186_ _tl51665181_))
                                           (if (gx#stx-list? _body5186_)
                                               (let ((_$e5188_
                                                      (gx#stx-e
                                                       _combinator5184_)))
                                                 (if (eq? _$e5188_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?5061_
                                                           _body5186_))
                                                     (if (eq? _$e5188_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?5061_
                                                          _body5186_)
                                                         (if (eq? _$e5188_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?5061_
                                                              _body5186_)
                                                             (if (eq? _$e5188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body5186_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx5059_
                          _combinator5184_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E51635172_))))))
                                   (_E51635172_)))))
                        (let ((_E51615197_
                               (lambda ()
                                 (let ((_id5195_ _e51605168_))
                                   (if (gx#identifier? _id5195_)
                                       (gx#core-bound-identifier?__opt-lambda4203
                                        _id5195_
                                        gx#feature-binding?)
                                       (_E51625191_))))))
                          (let () (_E51615197_))))))))
               (_loop5062_
                (lambda (_rest5092_)
                  (let ((_e50935101_ _rest5092_))
                    (let ((_E50995105_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e50935101_))))
                      (let ((_E50955109_
                             (lambda ()
                               (if (gx#stx-null? _e50935101_)
                                   (if '#t '() (_E50995105_))
                                   (_E50995105_)))))
                        (let ((_E50945155_
                               (lambda ()
                                 (if (gx#stx-pair? _e50935101_)
                                     (let ((_e50965113_
                                            (gx#syntax-e _e50935101_)))
                                       (let ((_hd50975116_ (##car _e50965113_))
                                             (_tl50985118_
                                              (##cdr _e50965113_)))
                                         (let ((_hd5121_ _hd50975116_))
                                           (let ((_rest5123_ _tl50985118_))
                                             (if '#t
                                                 (let ((_e51245131_ _hd5121_))
                                                   (let ((_E51265135_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e51245131_))))
                                                     (let ((_E51255151_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e51245131_)
                          (let ((_e51275139_ (gx#syntax-e _e51245131_)))
                            (let ((_hd51285142_ (##car _e51275139_))
                                  (_tl51295144_ (##cdr _e51275139_)))
                              (let ((_condition5147_ _hd51285142_))
                                (let ((_body5149_ _tl51295144_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition5147_ 'else)
                                          (if (gx#stx-null? _rest5123_)
                                              _body5149_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx5059_
                                               _hd5121_))
                                          (if (_satisfied?5061_
                                               _condition5147_)
                                              _body5149_
                                              (_loop5062_ _rest5123_)))
                                      (_E51265135_))))))
                          (_E51265135_)))))
               (let () (_E51255151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E50955109_))))))
                                     (_E50955109_)))))
                          (let () (_E50945155_)))))))))
        (let ((_e50635070_ _stx5059_))
          (let ((_E50655074_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50635070_))))
            (let ((_E50645088_
                   (lambda ()
                     (if (gx#stx-pair? _e50635070_)
                         (let ((_e50665078_ (gx#syntax-e _e50635070_)))
                           (let ((_hd50675081_ (##car _e50665078_))
                                 (_tl50685083_ (##cdr _e50665078_)))
                             (let ((_clauses5086_ _tl50685083_))
                               (if (gx#stx-list? _clauses5086_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop5062_ _clauses5086_))
                                   (_E50655074_)))))
                         (_E50655074_)))))
              (let () (_E50645088_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda5000
      (lambda (_stx5002_ _rpath5003_)
        (let ((_e50045014_ _stx5002_))
          (let ((_E50065018_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50045014_))))
            (let ((_E50055045_
                   (lambda ()
                     (if (gx#stx-pair? _e50045014_)
                         (let ((_e50075022_ (gx#syntax-e _e50045014_)))
                           (let ((_hd50085025_ (##car _e50075022_))
                                 (_tl50095027_ (##cdr _e50075022_)))
                             (if (gx#stx-pair? _tl50095027_)
                                 (let ((_e50105030_
                                        (gx#syntax-e _tl50095027_)))
                                   (let ((_hd50115033_ (##car _e50105030_))
                                         (_tl50125035_ (##cdr _e50105030_)))
                                     (let ((_path5038_ _hd50115033_))
                                       (if (gx#stx-null? _tl50125035_)
                                           (if (gx#stx-string? _path5038_)
                                               (let ((_rpath5043_
                                                      (let ((_$e5040_
                                                             _rpath5003_))
                                                        (if _$e5040_
                                                            _$e5040_
                                                            (gx#core-resolve-path__opt-lambda4113
                                                             _path5038_
                                                             (gx#stx-source
                                                              _stx5002_))))))
                                                 (if (member _rpath5043_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx5002_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath5043_))
                                                       (gx#stx-source
                                                        _stx5002_)))))
                                               (_E50065018_))
                                           (_E50065018_)))))
                                 (_E50065018_))))
                         (_E50065018_)))))
              (let () (_E50055045_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5052_)
          (let ((_rpath5054_ '#f))
            (gx#core-expand-include%__opt-lambda5000 _stx5052_ _rpath5054_))))
      (define gx#core-expand-include%
        (lambda _g5832_
          (let ((_g5831_ (length _g5832_)))
            (cond ((fx= _g5831_ 1) (apply gx#core-expand-include%__0 _g5832_))
                  ((fx= _g5831_ 2)
                   (apply gx#core-expand-include%__opt-lambda5000 _g5832_))
                  (else (error "No clause matching arguments" _g5832_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4969
      (lambda (_K4971_ _stx4972_ _method4973_)
        (if (procedure? _K4971_)
            (let ((_$e4975_ (gx#stx-source _stx4972_)))
              (if _$e4975_
                  ((lambda (_g49774979_)
                     (gx#stx-wrap-source (_K4971_ _stx4972_) _g49774979_))
                   _$e4975_)
                  (_K4971_ _stx4972_)))
            (let ((_$e4982_ (bound-method-ref _K4971_ _method4973_)))
              (if _$e4982_
                  ((lambda (_g49844986_)
                     (gx#core-apply-expander__opt-lambda4969
                      _g49844986_
                      _stx4972_
                      _method4973_))
                   _$e4982_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4972_
                   _method4973_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4992_ _stx4993_)
          (let ((_method4995_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4969
             _K4992_
             _stx4993_
             _method4995_))))
      (define gx#core-apply-expander
        (lambda _g5834_
          (let ((_g5833_ (length _g5834_)))
            (cond ((fx= _g5833_ 2) (apply gx#core-apply-expander__0 _g5834_))
                  ((fx= _g5833_ 3)
                   (apply gx#core-apply-expander__opt-lambda4969 _g5834_))
                  (else (error "No clause matching arguments" _g5834_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4967_ _stx4968_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4968_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4942_ _stx4943_)
      (let ((_self49444950_ _self4942_))
        (let ((_E49464954_
               (lambda () (error '"No clause matching" _self49444950_))))
          (let ((_K49474959_
                 (lambda (_K4957_)
                   (gx#core-apply-expander__0 _K4957_ _stx4943_))))
            (if (##structure-instance-of?
                 _self49444950_
                 (##type-id gx#macro-expander::t))
                (let ((_e49484962_ (##vector-ref _self49444950_ '1)))
                  (let ((_K4965_ _e49484962_)) (_K49474959_ _K4965_)))
                (_E49464954_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4917_ _stx4918_)
      (if (gx#sealed-syntax? _stx4918_)
          _stx4918_
          (let ((_self49194925_ _self4917_))
            (let ((_E49214929_
                   (lambda () (error '"No clause matching" _self49194925_))))
              (let ((_K49224934_
                     (lambda (_K4932_)
                       (gx#core-apply-expander__0 _K4932_ _stx4918_))))
                (if (##structure-instance-of?
                     _self49194925_
                     (##type-id gx#core-expander::t))
                    (let ((_e49234937_ (##vector-ref _self49194925_ '1)))
                      (let ((_K4940_ _e49234937_)) (_K49224934_ _K4940_)))
                    (_E49214929_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4899
      (lambda (_self4901_ _stx4902_ _top?4903_)
        (if (_top?4903_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4901_ _stx4902_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4902_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4908_ _stx4909_)
          (let ((_top?4911_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4899
             _self4908_
             _stx4909_
             _top?4911_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5836_
          (let ((_g5835_ (length _g5836_)))
            (cond ((fx= _g5835_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5836_))
                  ((fx= _g5835_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4899
                          _g5836_))
                  (else (error "No clause matching arguments" _g5836_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4897_ _stx4898_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4899
       _self4897_
       _stx4898_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4844_ _stx4845_)
      (let ((_self48464852_ _self4844_))
        (let ((_E48484856_
               (lambda () (error '"No clause matching" _self48464852_))))
          (let ((_K48494889_
                 (lambda (_id4859_)
                   (let ((_e48604867_ _stx4845_))
                     (let ((_E48624871_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e48604867_))))
                       (let ((_E48614885_
                              (lambda ()
                                (if (gx#stx-pair? _e48604867_)
                                    (let ((_e48634875_
                                           (gx#syntax-e _e48604867_)))
                                      (let ((_hd48644878_ (##car _e48634875_))
                                            (_tl48654880_ (##cdr _e48634875_)))
                                        (let ((_body4883_ _tl48654880_))
                                          (if '#t
                                              (gx#core-cons
                                               _id4859_
                                               _body4883_)
                                              (_E48624871_)))))
                                    (_E48624871_)))))
                         (let () (_E48614885_))))))))
            (if (##structure-instance-of?
                 _self48464852_
                 (##type-id gx#rename-macro-expander::t))
                (let ((_e48504892_ (##vector-ref _self48464852_ '1)))
                  (let ((_id4895_ _e48504892_)) (_K48494889_ _id4895_)))
                (_E48484856_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4790
      (lambda (_self4792_ _stx4793_ _method4794_)
        (let ((_self47954803_ _self4792_))
          (let ((_E47974807_
                 (lambda () (error '"No clause matching" _self47954803_))))
            (let ((_K47984814_
                   (lambda (_phi4810_ _ctx4811_ _K4812_)
                     (gx#core-apply-user-macro
                      _K4812_
                      _stx4793_
                      _ctx4811_
                      _phi4810_
                      _method4794_))))
              (if (##structure-instance-of?
                   _self47954803_
                   (##type-id gx#user-expander::t))
                  (let ((_e47994817_ (##vector-ref _self47954803_ '1)))
                    (let ((_K4820_ _e47994817_))
                      (let ((_e48004822_ (##vector-ref _self47954803_ '2)))
                        (let ((_ctx4825_ _e48004822_))
                          (let ((_e48014827_ (##vector-ref _self47954803_ '3)))
                            (let ((_phi4830_ _e48014827_))
                              (_K47984814_ _phi4830_ _ctx4825_ _K4820_)))))))
                  (_E47974807_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4835_ _stx4836_)
          (let ((_method4838_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4790
             _self4835_
             _stx4836_
             _method4838_))))
      (define gx#core-apply-user-expander
        (lambda _g5838_
          (let ((_g5837_ (length _g5838_)))
            (cond ((fx= _g5837_ 2)
                   (apply gx#core-apply-user-expander__0 _g5838_))
                  ((fx= _g5837_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4790 _g5838_))
                  (else (error "No clause matching arguments" _g5838_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4782_ _stx4783_ _ctx4784_ _phi4785_ _method4786_)
      (let ((_mark4788_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4784_
              _phi4785_
              _stx4783_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4969
             _K4782_
             (gx#stx-apply-mark _stx4783_ _mark4788_)
             _method4786_)
            _mark4788_))
         gx#current-expander-marks
         (cons _mark4788_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4754
      (lambda (_stx4756_ _phi4757_ _ctx4758_)
        ((letrec ((_lp4760_
                   (lambda (_bind4762_)
                     (if (##structure-direct-instance-of?
                          _bind4762_
                          'gx#import-binding::t)
                         (_lp4760_
                          (##structure-ref
                           _bind4762_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind4762_
                              'gx#alias-binding::t)
                             (_lp4760_
                              (gx#core-resolve-identifier__opt-lambda4684
                               (##structure-ref
                                _bind4762_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi4757_
                               _ctx4758_))
                             _bind4762_)))))
           _lp4760_)
         (gx#core-resolve-identifier__opt-lambda4684
          _stx4756_
          _phi4757_
          _ctx4758_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4767_)
          (let ((_phi4769_ (gx#current-expander-phi)))
            (let ((_ctx4771_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda4754
               _stx4767_
               _phi4769_
               _ctx4771_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx4773_ _phi4774_)
          (let ((_ctx4776_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4754
             _stx4773_
             _phi4774_
             _ctx4776_))))
      (define gx#resolve-identifier
        (lambda _g5840_
          (let ((_g5839_ (length _g5840_)))
            (cond ((fx= _g5839_ 1) (apply gx#resolve-identifier__0 _g5840_))
                  ((fx= _g5839_ 2) (apply gx#resolve-identifier__1 _g5840_))
                  ((fx= _g5839_ 3)
                   (apply gx#resolve-identifier__opt-lambda4754 _g5840_))
                  (else (error "No clause matching arguments" _g5840_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4712
      (lambda (_stx4714_ _val4715_ _rebind?4716_ _phi4717_ _ctx4718_)
        (let ((_rebind?4720_
               (if (not _rebind?4716_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4716_) _rebind?4716_ true))))
          (gx#core-bind!__opt-lambda4473
           (gx#core-identifier-key _stx4714_)
           _val4715_
           _rebind?4720_
           _phi4717_
           _ctx4718_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4725_ _val4726_)
          (let ((_rebind?4728_ '#f))
            (let ((_phi4730_ (gx#current-expander-phi)))
              (let ((_ctx4732_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda4712
                 _stx4725_
                 _val4726_
                 _rebind?4728_
                 _phi4730_
                 _ctx4732_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx4734_ _val4735_ _rebind?4736_)
          (let ((_phi4738_ (gx#current-expander-phi)))
            (let ((_ctx4740_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda4712
               _stx4734_
               _val4735_
               _rebind?4736_
               _phi4738_
               _ctx4740_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx4742_ _val4743_ _rebind?4744_ _phi4745_)
          (let ((_ctx4747_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4712
             _stx4742_
             _val4743_
             _rebind?4744_
             _phi4745_
             _ctx4747_))))
      (define gx#bind-identifier!
        (lambda _g5842_
          (let ((_g5841_ (length _g5842_)))
            (cond ((fx= _g5841_ 2) (apply gx#bind-identifier!__0 _g5842_))
                  ((fx= _g5841_ 3) (apply gx#bind-identifier!__1 _g5842_))
                  ((fx= _g5841_ 4) (apply gx#bind-identifier!__2 _g5842_))
                  ((fx= _g5841_ 5)
                   (apply gx#bind-identifier!__opt-lambda4712 _g5842_))
                  (else (error "No clause matching arguments" _g5842_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4684
      (lambda (_stx4686_ _phi4687_ _ctx4688_)
        ((letrec ((_lp4690_
                   (lambda (_e4692_ _marks4693_)
                     (if (symbol? _e4692_)
                         (gx#core-resolve-binding
                          _e4692_
                          _phi4687_
                          _phi4687_
                          _ctx4688_
                          (reverse _marks4693_))
                         (if (gx#identifier-quote? _e4692_)
                             (gx#core-resolve-binding
                              (##structure-ref _e4692_ '1 AST::t '#f)
                              _phi4687_
                              '0
                              (##structure-ref
                               _e4692_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e4692_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e4692_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e4692_ '1 AST::t '#f)
                                  _phi4687_
                                  _phi4687_
                                  _ctx4688_
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e4692_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks4693_))
                                 (if (##structure-direct-instance-of?
                                      _e4692_
                                      'gx#syntax-wrap::t)
                                     (_lp4690_
                                      (##structure-ref _e4692_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e4692_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks4693_))
                                     (if (##structure-instance-of?
                                          _e4692_
                                          'gerbil#AST::t)
                                         (_lp4690_
                                          (##structure-ref
                                           _e4692_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks4693_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx4686_)))))))))
           _lp4690_)
         _stx4686_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4698_)
          (let ((_phi4700_ (gx#current-expander-phi)))
            (let ((_ctx4702_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda4684
               _stx4698_
               _phi4700_
               _ctx4702_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4704_ _phi4705_)
          (let ((_ctx4707_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4684
             _stx4704_
             _phi4705_
             _ctx4707_))))
      (define gx#core-resolve-identifier
        (lambda _g5844_
          (let ((_g5843_ (length _g5844_)))
            (cond ((fx= _g5843_ 1)
                   (apply gx#core-resolve-identifier__0 _g5844_))
                  ((fx= _g5843_ 2)
                   (apply gx#core-resolve-identifier__1 _g5844_))
                  ((fx= _g5843_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4684 _g5844_))
                  (else (error "No clause matching arguments" _g5844_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4599_ _phi4600_ _src-phi4601_ _ctx4602_ _marks4603_)
      (let ((_resolve4605_
             (lambda (_ctx4673_ _src-phi4674_ _key4675_)
               ((letrec ((_lp4677_
                          (lambda (_ctx4679_ _dphi4680_)
                            (let ((_$e4682_
                                   (gx#core-context-resolve
                                    _ctx4679_
                                    _key4675_)))
                              (if _$e4682_
                                  (values _$e4682_)
                                  (if (fxzero? _dphi4680_)
                                      '#f
                                      (if (fxpositive? _dphi4680_)
                                          (_lp4677_
                                           (gx#core-context-shift
                                            _ctx4679_
                                            '-1)
                                           (fx- _dphi4680_ '1))
                                          (if (fxnegative? _dphi4680_)
                                              (_lp4677_
                                               (gx#core-context-shift
                                                _ctx4679_
                                                '1)
                                               (fx+ _dphi4680_ '1))
                                              '#!void))))))))
                  _lp4677_)
                (gx#core-context-shift _ctx4673_ _phi4600_)
                (fx- _phi4600_ _src-phi4674_)))))
        ((letrec ((_lp4607_
                   (lambda (_ctx4609_ _src-phi4610_ _rest4611_)
                     (let ((_rest46124620_ _rest4611_))
                       (let ((_E46154624_
                              (lambda ()
                                (error '"No clause matching" _rest46124620_))))
                         (let ((_else46144628_
                                (lambda ()
                                  (_resolve4605_
                                   _ctx4609_
                                   _src-phi4610_
                                   _id4599_))))
                           (let ((_K46164661_
                                  (lambda (_rest4631_ _hd4632_)
                                    (let ((_hd46334639_ _hd4632_))
                                      (let ((_E46354643_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd46334639_))))
                                        (let ((_K46364653_
                                               (lambda (_subst4646_)
                                                 (let ((_$e4650_
                                                        (let ((_key4648_
                                                               (if _subst4646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (table-ref _subst4646_ _id4599_ '#f)
                           '#f)))
                  (if _key4648_
                      (_resolve4605_ _ctx4609_ _src-phi4610_ _key4648_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e4650_
                                                       _$e4650_
                                                       (_lp4607_
                                                        (##structure-ref
                                                         _hd4632_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd4632_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest4631_))))))
                                          (if (##structure-instance-of?
                                               _hd46334639_
                                               (##type-id gx#expander-mark::t))
                                              (let ((_e46374656_
                                                     (##vector-ref
                                                      _hd46334639_
                                                      '1)))
                                                (let ((_subst4659_
                                                       _e46374656_))
                                                  (_K46364653_ _subst4659_)))
                                              (_E46354643_))))))))
                             (if (##pair? _rest46124620_)
                                 (let ((_hd46174664_ (##car _rest46124620_))
                                       (_tl46184666_ (##cdr _rest46124620_)))
                                   (let ((_hd4669_ _hd46174664_))
                                     (let ((_rest4671_ _tl46184666_))
                                       (_K46164661_ _rest4671_ _hd4669_))))
                                 (_else46144628_)))))))))
           _lp4607_)
         _ctx4602_
         _src-phi4601_
         _marks4603_))))
  (begin
    (define gx#core-bind!__opt-lambda4473
      (lambda (_key4475_ _val4476_ _rebind?4477_ _phi4478_ _ctx4479_)
        (let ((_update-binding4481_
               (lambda (_xval4552_)
                 (if (let ((_$e4554_
                            (_rebind?4477_ _ctx4479_ _xval4552_ _val4476_)))
                       (if _$e4554_
                           _$e4554_
                           (let ((_$e4560_
                                  (if (##structure-direct-instance-of?
                                       _xval4552_
                                       'gx#import-binding::t)
                                      (let ((_$e4557_
                                             (##structure-ref
                                              _xval4552_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e4557_
                                            _$e4557_
                                            (if (##structure-instance-of?
                                                 _val4476_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val4476_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e4560_
                                 _$e4560_
                                 (if (##structure-instance-of?
                                      _xval4552_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val4476_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val4476_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval4552_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val4476_
                     (if (if (##structure-direct-instance-of?
                              _val4476_
                              'gx#import-binding::t)
                             (let ((_$e4563_
                                    (##structure-ref
                                     _val4476_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e4563_
                                   _$e4563_
                                   (if (##structure-instance-of?
                                        _xval4552_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val4476_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval4552_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval4552_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key4475_
                          _xval4552_
                          _val4476_))))))
          (let ((_gensubst4482_
                 (lambda (_subst4547_ _id4548_)
                   (let ((_eid4550_
                          (gensym (if (uninterned-symbol? _id4548_)
                                      '%
                                      _id4548_))))
                     (begin
                       (table-set! _subst4547_ _id4548_ _eid4550_)
                       _eid4550_)))))
            (let ((_subst!4483_
                   (lambda (_key4485_)
                     (let ((_key44864494_ _key4485_))
                       (let ((_E44894498_
                              (lambda ()
                                (error '"No clause matching" _key44864494_))))
                         (let ((_else44884502_ (lambda () _key4485_)))
                           (let ((_K44904535_
                                  (lambda (_mark4505_ _id4506_)
                                    (let ((_mark45074513_ _mark4505_))
                                      (let ((_E45094517_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark45074513_))))
                                        (let ((_K45104527_
                                               (lambda (_subst4520_)
                                                 (if (not _subst4520_)
                                                     (let ((_subst4522_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark4505_
                                                          _subst4522_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst4482_
                                                          _subst4522_
                                                          _id4506_)))
                                                     (let ((_$e4524_
                                                            (table-ref
                                                             _subst4520_
                                                             _id4506_
                                                             '#f)))
                                                       (if _$e4524_
                                                           (values _$e4524_)
                                                           (_gensubst4482_
                                                            _subst4520_
                                                            _id4506_)))))))
                                          (if (##structure-instance-of?
                                               _mark45074513_
                                               (##type-id gx#expander-mark::t))
                                              (let ((_e45114530_
                                                     (##vector-ref
                                                      _mark45074513_
                                                      '1)))
                                                (let ((_subst4533_
                                                       _e45114530_))
                                                  (_K45104527_ _subst4533_)))
                                              (_E45094517_))))))))
                             (if (##pair? _key44864494_)
                                 (let ((_hd44914538_ (##car _key44864494_))
                                       (_tl44924540_ (##cdr _key44864494_)))
                                   (let ((_id4543_ _hd44914538_))
                                     (let ((_mark4545_ _tl44924540_))
                                       (_K44904535_ _mark4545_ _id4543_))))
                                 (_else44884502_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx4479_ _phi4478_)
               (_subst!4483_ _key4475_)
               _val4476_
               _update-binding4481_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4569_ _val4570_)
          (let ((_rebind?4572_ false))
            (let ((_phi4574_ (gx#current-expander-phi)))
              (let ((_ctx4576_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda4473
                 _key4569_
                 _val4570_
                 _rebind?4572_
                 _phi4574_
                 _ctx4576_))))))
      (define gx#core-bind!__1
        (lambda (_key4578_ _val4579_ _rebind?4580_)
          (let ((_phi4582_ (gx#current-expander-phi)))
            (let ((_ctx4584_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda4473
               _key4578_
               _val4579_
               _rebind?4580_
               _phi4582_
               _ctx4584_)))))
      (define gx#core-bind!__2
        (lambda (_key4586_ _val4587_ _rebind?4588_ _phi4589_)
          (let ((_ctx4591_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4473
             _key4586_
             _val4587_
             _rebind?4588_
             _phi4589_
             _ctx4591_))))
      (define gx#core-bind!
        (lambda _g5846_
          (let ((_g5845_ (length _g5846_)))
            (cond ((fx= _g5845_ 2) (apply gx#core-bind!__0 _g5846_))
                  ((fx= _g5845_ 3) (apply gx#core-bind!__1 _g5846_))
                  ((fx= _g5845_ 4) (apply gx#core-bind!__2 _g5846_))
                  ((fx= _g5845_ 5)
                   (apply gx#core-bind!__opt-lambda4473 _g5846_))
                  (else (error "No clause matching arguments" _g5846_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4405_)
      (if (symbol? _stx4405_)
          (let ((_g44064414_ (gx#current-expander-marks)))
            (let ((_E44094418_
                   (lambda () (error '"No clause matching" _g44064414_))))
              (let ((_else44084422_ (lambda () _stx4405_)))
                (let ((_K44104427_
                       (lambda (_hd4425_) (cons _stx4405_ _hd4425_))))
                  (if (##pair? _g44064414_)
                      (let ((_hd44114430_ (##car _g44064414_))
                            (_tl44124432_ (##cdr _g44064414_)))
                        (let ((_hd4435_ _hd44114430_)) (_K44104427_ _hd4435_)))
                      (_else44084422_))))))
          (if (gx#identifier? _stx4405_)
              (let ((_id4437_ (gx#syntax-local-unwrap _stx4405_)))
                (let ((_eid4439_ (gx#stx-e _id4437_)))
                  (let ((_marks4441_ (gx#stx-identifier-marks _id4437_)))
                    (let ()
                      (let ((_marks44434451_ _marks4441_))
                        (let ((_E44464455_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks44434451_))))
                          (let ((_else44454459_ (lambda () _eid4439_)))
                            (let ((_K44474464_
                                   (lambda (_hd4462_)
                                     (cons _eid4439_ _hd4462_))))
                              (if (##pair? _marks44434451_)
                                  (let ((_hd44484467_ (##car _marks44434451_))
                                        (_tl44494469_ (##cdr _marks44434451_)))
                                    (let ((_hd4472_ _hd44484467_))
                                      (_K44474464_ _hd4472_)))
                                  (_else44454459_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4405_)))))
  (define gx#core-context-shift
    (lambda (_ctx4350_ _phi4351_)
      (let ((_make-phi4353_
             (lambda (_super4403_)
               (let ((__obj5817 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda5779
                    __obj5817
                    (gensym 'phi)
                    _super4403_)
                   __obj5817)))))
        (let ((_make-phi/up4354_
               (lambda (_ctx4398_ _super4399_)
                 (let ((_ctx+14401_ (_make-phi4353_ _super4399_)))
                   (begin
                     (##structure-set!
                      _ctx4398_
                      _ctx+14401_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+14401_
                      _ctx4398_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+14401_)))))
          (let ((_make-phi/down4355_
                 (lambda (_ctx4393_ _super4394_)
                   (let ((_ctx-14396_ (_make-phi4353_ _super4394_)))
                     (begin
                       (##structure-set!
                        _ctx-14396_
                        _ctx4393_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx4393_
                        _ctx-14396_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-14396_)))))
            (let ((_shift4356_
                   (lambda (_ctx4377_
                            _delta4378_
                            _make-delta-context4379_
                            _phi4380_
                            _K4381_)
                     (let ((_$e4383_
                            (##structure-ref
                             _ctx4377_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e4383_
                           ((lambda (_super4386_)
                              (let ((_super4388_
                                     (_K4381_ _super4386_ _delta4378_)))
                                (let ((_ctx+d4390_
                                       (_make-delta-context4379_
                                        _ctx4377_
                                        _super4388_)))
                                  (let ()
                                    (_K4381_ _ctx+d4390_
                                             (fx- _phi4380_ _delta4378_))))))
                            _$e4383_)
                           (error '"Bad context" _ctx4377_))))))
              ((letrec ((_K4358_ (lambda (_ctx4360_ _phi4361_)
                                   (if (fxzero? _phi4361_)
                                       _ctx4360_
                                       (if (##structure-instance-of?
                                            _ctx4360_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi4361_)
                                               (let ((_$e4363_
                                                      (##structure-ref
                                                       _ctx4360_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4363_
                                                     ((lambda (_g43654367_)
                                                        (_K4358_ _g43654367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx- _phi4361_ '1)))
              _$e4363_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4356_
                                                      _ctx4360_
                                                      '1
                                                      _make-phi/up4354_
                                                      _phi4361_
                                                      _K4358_)))
                                               (let ((_$e4370_
                                                      (##structure-ref
                                                       _ctx4360_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4370_
                                                     ((lambda (_g43724374_)
                                                        (_K4358_ _g43724374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx+ _phi4361_ '1)))
              _$e4370_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4356_
                                                      _ctx4360_
                                                      '-1
                                                      _make-phi/down4355_
                                                      _phi4361_
                                                      _K4358_))))
                                           _ctx4360_)))))
                 _K4358_)
               _ctx4350_
               _phi4351_)))))))
  (define gx#core-context-get
    (lambda (_ctx4347_ _key4348_)
      (table-ref
       (##structure-ref _ctx4347_ '2 gx#expander-context::t '#f)
       _key4348_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4343_ _key4344_ _val4345_)
      (table-set!
       (##structure-ref _ctx4343_ '2 gx#expander-context::t '#f)
       _key4344_
       _val4345_)))
  (define gx#core-context-resolve
    (lambda (_ctx4330_ _key4331_)
      ((letrec ((_lp4333_
                 (lambda (_ctx4335_)
                   (let ((_$e4337_ (gx#core-context-get _ctx4335_ _key4331_)))
                     (if _$e4337_
                         (values _$e4337_)
                         (let ((_$e4340_
                                (if (##structure-instance-of?
                                     _ctx4335_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx4335_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e4340_ (_lp4333_ _$e4340_) '#f)))))))
         _lp4333_)
       _ctx4330_)))
  (define gx#core-context-bind!
    (lambda (_ctx4320_ _key4321_ _val4322_ _rebind4323_)
      (let ((_$e4325_ (gx#core-context-get _ctx4320_ _key4321_)))
        (if _$e4325_
            ((lambda (_xval4328_)
               (gx#core-context-put!
                _ctx4320_
                _key4321_
                (_rebind4323_ _xval4328_)))
             _$e4325_)
            (gx#core-context-put! _ctx4320_ _key4321_ _val4322_)))))
  (begin
    (define gx#core-context-top__opt-lambda4296
      (lambda (_ctx4298_ _stop?4299_)
        ((letrec ((_lp4301_
                   (lambda (_ctx4303_)
                     (if (_stop?4299_ _ctx4303_)
                         _ctx4303_
                         (if (##structure-instance-of?
                              _ctx4303_
                              'gx#context-phi::t)
                             (_lp4301_
                              (##structure-ref
                               _ctx4303_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp4301_)
         _ctx4298_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx4309_ (gx#current-expander-context)))
            (let ((_stop?4311_ gx#top-context?))
              (gx#core-context-top__opt-lambda4296 _ctx4309_ _stop?4311_)))))
      (define gx#core-context-top__1
        (lambda (_ctx4313_)
          (let ((_stop?4315_ gx#top-context?))
            (gx#core-context-top__opt-lambda4296 _ctx4313_ _stop?4315_))))
      (define gx#core-context-top
        (lambda _g5848_
          (let ((_g5847_ (length _g5848_)))
            (cond ((fx= _g5847_ 0) (apply gx#core-context-top__0 _g5848_))
                  ((fx= _g5847_ 1) (apply gx#core-context-top__1 _g5848_))
                  ((fx= _g5847_ 2)
                   (apply gx#core-context-top__opt-lambda4296 _g5848_))
                  (else (error "No clause matching arguments" _g5848_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4281
      (lambda (_ctx4283_)
        ((letrec ((_lp4285_
                   (lambda (_ctx4287_)
                     (if (##structure-instance-of?
                          _ctx4287_
                          'gx#context-phi::t)
                         (_lp4285_
                          (##structure-ref _ctx4287_ '3 gx#phi-context::t '#f))
                         _ctx4287_))))
           _lp4285_)
         _ctx4283_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4293_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4281 _ctx4293_))))
      (define gx#core-context-root
        (lambda _g5850_
          (let ((_g5849_ (length _g5850_)))
            (cond ((fx= _g5849_ 0) (apply gx#core-context-root__0 _g5850_))
                  ((fx= _g5849_ 1)
                   (apply gx#core-context-root__opt-lambda4281 _g5850_))
                  (else (error "No clause matching arguments" _g5850_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4265
      (lambda (_ctx4267_ . __42644268_)
        (if (##structure-instance-of? _ctx4267_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4267_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4267_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4275_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4265 _ctx4275_))))
      (define gx#core-context-rebind?
        (lambda _g5852_
          (let ((_g5851_ (length _g5852_)))
            (cond ((fx= _g5851_ 0) (apply gx#core-context-rebind?__0 _g5852_))
                  ((fx= _g5851_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4265 _g5852_))
                  ((fx>= _g5851_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4265 _g5852_))
                  (else (error "No clause matching arguments" _g5852_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4248
      (lambda (_ctx4250_)
        (let ((_$e4252_ (gx#core-context-top__1 _ctx4250_)))
          (if _$e4252_
              ((lambda (_ctx4255_)
                 (if (##structure-instance-of? _ctx4255_ 'gx#module-context::t)
                     (##structure-ref _ctx4255_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4252_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4261_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4248 _ctx4261_))))
      (define gx#core-context-namespace
        (lambda _g5854_
          (let ((_g5853_ (length _g5854_)))
            (cond ((fx= _g5853_ 0)
                   (apply gx#core-context-namespace__0 _g5854_))
                  ((fx= _g5853_ 1)
                   (apply gx#core-context-namespace__opt-lambda4248 _g5854_))
                  (else (error "No clause matching arguments" _g5854_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4234
      (lambda (_bind4236_ _is?4237_)
        (if (##structure-direct-instance-of? _bind4236_ 'gx#syntax-binding::t)
            (_is?4237_
             (##structure-ref _bind4236_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4242_)
          (let ((_is?4244_ gx#expander?))
            (gx#expander-binding?__opt-lambda4234 _bind4242_ _is?4244_))))
      (define gx#expander-binding?
        (lambda _g5856_
          (let ((_g5855_ (length _g5856_)))
            (cond ((fx= _g5855_ 1) (apply gx#expander-binding?__0 _g5856_))
                  ((fx= _g5855_ 2)
                   (apply gx#expander-binding?__opt-lambda4234 _g5856_))
                  (else (error "No clause matching arguments" _g5856_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4233_)
      (gx#expander-binding?__opt-lambda4234 _bind4233_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4231_)
      (gx#expander-binding?__opt-lambda4234 _bind4231_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind4229_)
      (gx#expander-binding?__opt-lambda4234 _bind4229_ gx#special-form?)))
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
        (gx#expander-binding?__opt-lambda4234 _bind4220_ _feature?4222_))))
  (define gx#private-feature-binding?
    (lambda (_bind4218_)
      (gx#expander-binding?__opt-lambda4234
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
        (lambda _g5858_
          (let ((_g5857_ (length _g5858_)))
            (cond ((fx= _g5857_ 1)
                   (apply gx#core-bound-identifier?__0 _g5858_))
                  ((fx= _g5857_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4203 _g5858_))
                  (else (error "No clause matching arguments" _g5858_))))))))
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
        (lambda _g5860_
          (let ((_g5859_ (length _g5860_)))
            (cond ((fx= _g5859_ 1) (apply gx#core-quote-syntax__0 _g5860_))
                  ((fx= _g5859_ 2) (apply gx#core-quote-syntax__1 _g5860_))
                  ((fx= _g5859_ 3) (apply gx#core-quote-syntax__2 _g5860_))
                  ((fx= _g5859_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4149 _g5860_))
                  (else (error "No clause matching arguments" _g5860_))))))))
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
        (lambda _g5862_
          (let ((_g5861_ (length _g5862_)))
            (cond ((fx= _g5861_ 1) (apply gx#core-resolve-path__0 _g5862_))
                  ((fx= _g5861_ 2)
                   (apply gx#core-resolve-path__opt-lambda4113 _g5862_))
                  (else (error "No clause matching arguments" _g5862_))))))))
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
        (lambda _g5864_
          (let ((_g5863_ (length _g5864_)))
            (cond ((fx= _g5863_ 1) (apply gx#syntax-local-e__0 _g5864_))
                  ((fx= _g5863_ 2)
                   (apply gx#syntax-local-e__opt-lambda4061 _g5864_))
                  (else (error "No clause matching arguments" _g5864_))))))))
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
        (lambda _g5866_
          (let ((_g5865_ (length _g5866_)))
            (cond ((fx= _g5865_ 1) (apply gx#syntax-local-value__0 _g5866_))
                  ((fx= _g5865_ 2)
                   (apply gx#syntax-local-value__opt-lambda4045 _g5866_))
                  (else (error "No clause matching arguments" _g5866_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4044_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4044_))))
