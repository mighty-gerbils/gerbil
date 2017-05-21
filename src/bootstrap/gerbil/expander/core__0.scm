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
    (lambda _$args5810_
      (apply make-struct-instance gx#expander-context::t _$args5810_)))
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
    (lambda _$args5807_
      (apply make-struct-instance gx#root-context::t _$args5807_)))
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
    (lambda _$args5804_
      (apply make-struct-instance gx#phi-context::t _$args5804_)))
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
    (lambda _$args5801_
      (apply make-struct-instance gx#top-context::t _$args5801_)))
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
    (lambda _$args5798_
      (apply make-struct-instance gx#module-context::t _$args5798_)))
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
    (lambda _$args5795_
      (apply make-struct-instance gx#prelude-context::t _$args5795_)))
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
    (lambda _$args5792_
      (apply make-struct-instance gx#local-context::t _$args5792_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5774
      (lambda (_self5776_ _id5777_ _super5778_)
        (direct-struct-instance-init!
         _self5776_
         _id5777_
         (make-hash-table-eq)
         _super5778_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5783_ _id5784_)
          (let ((_super5786_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5774
             _self5783_
             _id5784_
             _super5786_))))
      (define gx#phi-context:::init!
        (lambda _g5814_
          (let ((_g5813_ (length _g5814_)))
            (cond ((fx= _g5813_ 2) (apply gx#phi-context:::init!__0 _g5814_))
                  ((fx= _g5813_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5774 _g5814_))
                  (else (error "No clause matching arguments" _g5814_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5760
      (lambda (_self5762_ _super5763_)
        (direct-struct-instance-init!
         _self5762_
         (gensym 'L)
         (make-hash-table-eq)
         _super5763_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5768_)
          (let ((_super5770_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5760
             _self5768_
             _super5770_))))
      (define gx#local-context:::init!
        (lambda _g5816_
          (let ((_g5815_ (length _g5816_)))
            (cond ((fx= _g5815_ 1) (apply gx#local-context:::init!__0 _g5816_))
                  ((fx= _g5815_ 2)
                   (apply gx#local-context:::init!__opt-lambda5760 _g5816_))
                  (else (error "No clause matching arguments" _g5816_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5758_
      (apply make-struct-instance gx#binding::t _$args5758_)))
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
    (lambda _$args5755_
      (apply make-struct-instance gx#runtime-binding::t _$args5755_)))
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
    (lambda _$args5752_
      (apply make-struct-instance gx#local-binding::t _$args5752_)))
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
    (lambda _$args5749_
      (apply make-struct-instance gx#top-binding::t _$args5749_)))
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
    (lambda _$args5746_
      (apply make-struct-instance gx#module-binding::t _$args5746_)))
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
    (lambda _$args5743_
      (apply make-struct-instance gx#extern-binding::t _$args5743_)))
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
    (lambda _$args5740_
      (apply make-struct-instance gx#syntax-binding::t _$args5740_)))
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
    (lambda _$args5737_
      (apply make-struct-instance gx#import-binding::t _$args5737_)))
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
    (lambda _$args5734_
      (apply make-struct-instance gx#alias-binding::t _$args5734_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5731_
      (apply make-struct-instance gx#expander::t _$args5731_)))
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
    (lambda _$args5728_
      (apply make-struct-instance gx#core-expander::t _$args5728_)))
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
    (lambda _$args5725_
      (apply make-struct-instance gx#expression-form::t _$args5725_)))
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
    (lambda _$args5722_
      (apply make-struct-instance gx#special-form::t _$args5722_)))
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
    (lambda _$args5719_
      (apply make-struct-instance gx#definition-form::t _$args5719_)))
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
    (lambda _$args5716_
      (apply make-struct-instance gx#top-special-form::t _$args5716_)))
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
    (lambda _$args5713_
      (apply make-struct-instance gx#module-special-form::t _$args5713_)))
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
    (lambda _$args5710_
      (apply make-struct-instance gx#feature-expander::t _$args5710_)))
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
    (lambda _$args5707_
      (apply make-struct-instance gx#private-feature-expander::t _$args5707_)))
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
    (lambda _$args5704_
      (apply make-struct-instance gx#reserved-expander::t _$args5704_)))
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
    (lambda _$args5701_
      (apply make-struct-instance gx#macro-expander::t _$args5701_)))
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
    (lambda _$args5698_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5698_)))
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
    (lambda _$args5695_
      (apply make-struct-instance gx#user-expander::t _$args5695_)))
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
    (lambda _$args5692_
      (apply make-struct-instance gx#expander-mark::t _$args5692_)))
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
    (lambda _$args5689_
      (apply make-struct-instance gx#syntax-error::t _$args5689_)))
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
    (lambda (_where5684_ _message5685_ _stx5686_ . _details5687_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5685_
              (cons _stx5686_ _details5687_)
              _where5684_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5669
      (lambda (_stx5671_ _expression?5672_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5653 _stx5671_ _expression?5672_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5677_)
          (let ((_expression?5679_ '#f))
            (gx#eval-syntax__opt-lambda5669 _stx5677_ _expression?5679_))))
      (define gx#eval-syntax
        (lambda _g5818_
          (let ((_g5817_ (length _g5818_)))
            (cond ((fx= _g5817_ 1) (apply gx#eval-syntax__0 _g5818_))
                  ((fx= _g5817_ 2)
                   (apply gx#eval-syntax__opt-lambda5669 _g5818_))
                  (else (error "No clause matching arguments" _g5818_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5668_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5668_))))
  (begin
    (define gx#core-expand__opt-lambda5653
      (lambda (_stx5655_ _expression?5656_)
        (if _expression?5656_
            (gx#core-expand-expression _stx5655_)
            (gx#core-expand-top _stx5655_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5661_)
          (let ((_expression?5663_ '#f))
            (gx#core-expand__opt-lambda5653 _stx5661_ _expression?5663_))))
      (define gx#core-expand
        (lambda _g5820_
          (let ((_g5819_ (length _g5820_)))
            (cond ((fx= _g5819_ 1) (apply gx#core-expand__0 _g5820_))
                  ((fx= _g5819_ 2)
                   (apply gx#core-expand__opt-lambda5653 _g5820_))
                  (else (error "No clause matching arguments" _g5820_))))))))
  (define gx#core-expand-top
    (lambda (_stx5622_)
      (let ((_stx5624_ (gx#core-expand*__0 _stx5622_)))
        (let ((_e56255632_ _stx5624_))
          (let ((_E56275636_
                 (lambda () (gx#core-expand-expression _stx5624_))))
            (let ((_E56265650_
                   (lambda ()
                     (if (gx#stx-pair? _e56255632_)
                         (let ((_e56285640_ (gx#syntax-e _e56255632_)))
                           (let ((_hd56295643_ (##car _e56285640_))
                                 (_tl56305645_ (##cdr _e56285640_)))
                             (let ((_form5648_ _hd56295643_))
                               (if (gx#core-bound-identifier?__0 _form5648_)
                                   _stx5624_
                                   (_E56275636_)))))
                         (_E56275636_)))))
              (let () (_E56265650_))))))))
  (define gx#core-expand-expression
    (lambda (_stx5544_)
      (let ((_sealed-expression?5546_
             (lambda (_hd5592_)
               (if (gx#sealed-syntax? _hd5592_)
                   (let ((_e55935600_ _hd5592_))
                     (let ((_E55955604_ (lambda () '#f)))
                       (let ((_E55945618_
                              (lambda ()
                                (if (gx#stx-pair? _e55935600_)
                                    (let ((_e55965608_
                                           (gx#syntax-e _e55935600_)))
                                      (let ((_hd55975611_ (##car _e55965608_))
                                            (_tl55985613_ (##cdr _e55965608_)))
                                        (let ((_form5616_ _hd55975611_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4199
                                               _form5616_
                                               gx#expression-form-binding?)
                                              (_E55955604_)))))
                                    (_E55955604_)))))
                         (let () (_E55945618_)))))
                   '#f))))
        (let ((_illegal-expression5547_
               (lambda (_hd5590_ . _g5821_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx5544_
                  _hd5590_))))
          (let ((_expand-e5548_
                 (lambda (_form5585_ _hd5586_)
                   (let ((_bind5588_
                          (if (##structure-instance-of?
                               _form5585_
                               'gx#binding::t)
                              _form5585_
                              (gx#resolve-identifier__0 _form5585_))))
                     (if (gx#core-expander-binding? _bind5588_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5588_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd5586_
                           (gx#stx-source _stx5544_)))
                         (if (##structure-direct-instance-of?
                              _bind5588_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind5588_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd5586_
                                (gx#stx-source _stx5544_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx5544_
                              _form5585_)))))))
            (let ((_hd5550_ (gx#core-expand-head _stx5544_)))
              (if (_sealed-expression?5546_ _hd5550_)
                  _hd5550_
                  (if (gx#stx-pair? _hd5550_)
                      (let ((_e55515558_ _hd5550_))
                        (let ((_E55535562_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e55515558_))))
                          (let ((_E55525581_
                                 (lambda ()
                                   (if (gx#stx-pair? _e55515558_)
                                       (let ((_e55545566_
                                              (gx#syntax-e _e55515558_)))
                                         (let ((_hd55555569_
                                                (##car _e55545566_))
                                               (_tl55565571_
                                                (##cdr _e55545566_)))
                                           (let ((_form5574_ _hd55555569_))
                                             (if '#t
                                                 (let ((_bind5576_
                                                        (if (gx#identifier?
                                                             _form5574_)
                                                            (gx#resolve-identifier__0
                                                             _form5574_)
                                                            '#f)))
                                                   (if (let ((_$e5578_
                                                              (not _bind5576_)))
                                                         (if _$e5578_
                                                             _$e5578_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind5576_))))
               (_expand-e5548_ '%%app (cons '%%app _hd5550_))
               (if (eq? (##structure-ref _bind5576_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd5550_ _illegal-expression5547_)
                   (if (gx#expression-form-binding? _bind5576_)
                       (_expand-e5548_ _bind5576_ _hd5550_)
                       (_illegal-expression5547_ _hd5550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E55535562_)))))
                                       (_E55535562_)))))
                            (let () (_E55525581_)))))
                      (if (gx#core-bound-identifier?__0 _hd5550_)
                          (_illegal-expression5547_ _hd5550_)
                          (if (gx#identifier? _hd5550_)
                              (_expand-e5548_
                               '%%ref
                               (cons '%%ref (cons _hd5550_ '())))
                              (if (gx#stx-datum? _hd5550_)
                                  (_expand-e5548_
                                   '%#quote
                                   (cons '%#quote (cons _hd5550_ '())))
                                  (_illegal-expression5547_
                                   _hd5550_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5539_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5542_ (gx#core-expand-expression _stx5539_)))
           (values _stx5542_ (gx#eval-syntax* _stx5542_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5518
      (lambda (_stx5520_ _stop?5521_)
        ((letrec ((_lp5523_
                   (lambda (_stx5525_)
                     (if (_stop?5521_ _stx5525_)
                         _stx5525_
                         (let ((_rstx5527_ (gx#core-expand1 _stx5525_)))
                           (if (eq? _stx5525_ _rstx5527_)
                               _stx5525_
                               (_lp5523_ _rstx5527_)))))))
           _lp5523_)
         _stx5520_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5532_)
          (let ((_stop?5534_ false))
            (gx#core-expand*__opt-lambda5518 _stx5532_ _stop?5534_))))
      (define gx#core-expand*
        (lambda _g5823_
          (let ((_g5822_ (length _g5823_)))
            (cond ((fx= _g5822_ 1) (apply gx#core-expand*__0 _g5823_))
                  ((fx= _g5822_ 2)
                   (apply gx#core-expand*__opt-lambda5518 _g5823_))
                  (else (error "No clause matching arguments" _g5823_))))))))
  (define gx#core-expand1
    (lambda (_stx5476_)
      (let ((_step5478_
             (lambda (_hd5515_)
               (let ((_bind5517_ (gx#resolve-identifier__0 _hd5515_)))
                 (if (##structure-instance-of?
                      _bind5517_
                      'gx#runtime-binding::t)
                     _stx5476_
                     (if (##structure-direct-instance-of?
                          _bind5517_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5517_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx5476_)
                         (if (not _bind5517_)
                             _stx5476_
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx5476_))))))))
        (let ((_e54795487_ _stx5476_))
          (let ((_E54855491_ (lambda () _stx5476_)))
            (let ((_E54815497_
                   (lambda ()
                     (let ((_hd5495_ _e54795487_))
                       (if (gx#identifier? _hd5495_)
                           (_step5478_ _hd5495_)
                           (_E54855491_))))))
              (let ((_E54805511_
                     (lambda ()
                       (if (gx#stx-pair? _e54795487_)
                           (let ((_e54825501_ (gx#syntax-e _e54795487_)))
                             (let ((_hd54835504_ (##car _e54825501_))
                                   (_tl54845506_ (##cdr _e54825501_)))
                               (let ((_hd5509_ _hd54835504_))
                                 (if (gx#identifier? _hd5509_)
                                     (_step5478_ _hd5509_)
                                     (_E54815497_)))))
                           (_E54815497_)))))
                (let () (_E54805511_)))))))))
  (define gx#core-expand-head
    (lambda (_stx5442_)
      (let ((_stop?5444_
             (lambda (_stx5446_)
               (let ((_e54475454_ _stx5446_))
                 (let ((_E54495458_ (lambda () '#f)))
                   (let ((_E54485472_
                          (lambda ()
                            (if (gx#stx-pair? _e54475454_)
                                (let ((_e54505462_ (gx#syntax-e _e54475454_)))
                                  (let ((_hd54515465_ (##car _e54505462_))
                                        (_tl54525467_ (##cdr _e54505462_)))
                                    (let ((_hd5470_ _hd54515465_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5470_)
                                          (_E54495458_)))))
                                (_E54495458_)))))
                     (let () (_E54485472_))))))))
        (gx#core-expand*__opt-lambda5518 _stx5442_ _stop?5444_))))
  (begin
    (define gx#core-expand-block__opt-lambda5246
      (lambda (_stx5248_ _expand-special5249_ _begin-form5250_ _expand-e5251_)
        (letrec ((_expand-splice5253_
                  (lambda (_hd5416_ _body5417_ _rest5418_ _r5419_)
                    (if (gx#stx-list? _body5417_)
                        (_K5257_ (gx#stx-foldr cons _rest5418_ _body5417_)
                                 _r5419_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5248_
                         _hd5416_))))
                 (_expand-cond-expand5254_
                  (lambda (_hd5412_ _rest5413_ _r5414_)
                    (_K5257_ (cons (gx#core-expand-cond-expand% _hd5412_)
                                   _rest5413_)
                             _r5414_)))
                 (_expand-include5255_
                  (lambda (_hd5361_ _rest5362_ _r5363_)
                    (let ((_e53645374_ _hd5361_))
                      (let ((_E53665378_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e53645374_))))
                        (let ((_E53655408_
                               (lambda ()
                                 (if (gx#stx-pair? _e53645374_)
                                     (let ((_e53675382_
                                            (gx#syntax-e _e53645374_)))
                                       (let ((_hd53685385_ (##car _e53675382_))
                                             (_tl53695387_
                                              (##cdr _e53675382_)))
                                         (if (gx#stx-pair? _tl53695387_)
                                             (let ((_e53705390_
                                                    (gx#syntax-e
                                                     _tl53695387_)))
                                               (let ((_hd53715393_
                                                      (##car _e53705390_))
                                                     (_tl53725395_
                                                      (##cdr _e53705390_)))
                                                 (let ((_path5398_
                                                        _hd53715393_))
                                                   (if (gx#stx-null?
                                                        _tl53725395_)
                                                       (if (gx#stx-string?
                                                            _path5398_)
                                                           (let ((_rpath5400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda4109
                           _path5398_
                           (gx#stx-source _hd5361_))))
                     (let ((_block5402_
                            (gx#core-expand-include%__opt-lambda4995
                             _hd5361_
                             _rpath5400_)))
                       (let ((_rbody5405_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda5246
                                  _block5402_
                                  _expand-special5249_
                                  '#f
                                  _expand-e5251_))
                               gx#current-expander-path
                               (cons _rpath5400_ (gx#current-expander-path)))))
                         (let ()
                           (_K5257_ _rest5362_
                                    (foldr1 cons _r5363_ _rbody5405_))))))
                   (_E53665378_))
               (_E53665378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E53665378_))))
                                     (_E53665378_)))))
                          (let () (_E53655408_)))))))
                 (_expand-expression5256_
                  (lambda (_hd5357_ _rest5358_ _r5359_)
                    (_K5257_ _rest5358_
                             (cons (_expand-e5251_ _hd5357_) _r5359_))))
                 (_K5257_ (lambda (_rest5287_ _r5288_)
                            (let ((_e52895296_ _rest5287_))
                              (let ((_E52915300_
                                     (lambda ()
                                       (if _begin-form5250_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form5250_
                                             (reverse _r5288_))
                                            (gx#stx-source _stx5248_))
                                           _r5288_))))
                                (let ((_E52905353_
                                       (lambda ()
                                         (if (gx#stx-pair? _e52895296_)
                                             (let ((_e52925304_
                                                    (gx#syntax-e _e52895296_)))
                                               (let ((_hd52935307_
                                                      (##car _e52925304_))
                                                     (_tl52945309_
                                                      (##cdr _e52925304_)))
                                                 (let ((_hd5312_ _hd52935307_))
                                                   (let ((_rest5314_
                                                          _tl52945309_))
                                                     (if '#t
                                                         (let ((_hd5316_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd5312_)))
                   (let ((_e53175324_ _hd5316_))
                     (let ((_E53195328_
                            (lambda ()
                              (_expand-expression5256_
                               _hd5316_
                               _rest5314_
                               _r5288_))))
                       (let ((_E53185349_
                              (lambda ()
                                (if (gx#stx-pair? _e53175324_)
                                    (let ((_e53205332_
                                           (gx#syntax-e _e53175324_)))
                                      (let ((_hd53215335_ (##car _e53205332_))
                                            (_tl53225337_ (##cdr _e53205332_)))
                                        (let ((_form5340_ _hd53215335_))
                                          (let ((_body5342_ _tl53225337_))
                                            (if '#t
                                                (let ((_bind5344_
                                                       (if (gx#identifier?
                                                            _form5340_)
                                                           (gx#resolve-identifier__0
                                                            _form5340_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind5344_)
                                                      (let ((_$e5346_
                                                             (##structure-ref
                                                              _bind5344_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e5346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice5253_
                     _hd5316_
                     _body5342_
                     _rest5314_
                     _r5288_)
                    (if (eq? _$e5346_ '%#cond-expand)
                        (_expand-cond-expand5254_ _hd5316_ _rest5314_ _r5288_)
                        (if (eq? _$e5346_ '%#include)
                            (_expand-include5255_ _hd5316_ _rest5314_ _r5288_)
                            (_expand-special5249_
                             _hd5316_
                             _K5257_
                             _rest5314_
                             _r5288_)))))
              (_expand-expression5256_ _hd5316_ _rest5314_ _r5288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E53195328_))))))
                                    (_E53195328_)))))
                         (let () (_E53185349_))))))
                 (_E52915300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E52915300_)))))
                                  (let () (_E52905353_))))))))
          (let ((_e52585265_ _stx5248_))
            (let ((_E52605269_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e52585265_))))
              (let ((_E52595283_
                     (lambda ()
                       (if (gx#stx-pair? _e52585265_)
                           (let ((_e52615273_ (gx#syntax-e _e52585265_)))
                             (let ((_hd52625276_ (##car _e52615273_))
                                   (_tl52635278_ (##cdr _e52615273_)))
                               (let ((_body5281_ _tl52635278_))
                                 (if (gx#stx-list? _body5281_)
                                     (_K5257_ _body5281_ '())
                                     (_E52605269_)))))
                           (_E52605269_)))))
                (let () (_E52595283_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5424_ _expand-special5425_)
          (let ((_begin-form5427_ '%#begin))
            (let ((_expand-e5429_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda5246
               _stx5424_
               _expand-special5425_
               _begin-form5427_
               _expand-e5429_)))))
      (define gx#core-expand-block__1
        (lambda (_stx5431_ _expand-special5432_ _begin-form5433_)
          (let ((_expand-e5435_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5246
             _stx5431_
             _expand-special5432_
             _begin-form5433_
             _expand-e5435_))))
      (define gx#core-expand-block
        (lambda _g5825_
          (let ((_g5824_ (length _g5825_)))
            (cond ((fx= _g5824_ 2) (apply gx#core-expand-block__0 _g5825_))
                  ((fx= _g5824_ 3) (apply gx#core-expand-block__1 _g5825_))
                  ((fx= _g5824_ 4)
                   (apply gx#core-expand-block__opt-lambda5246 _g5825_))
                  (else (error "No clause matching arguments" _g5825_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5196_ _expand-special5197_)
      (let ((_g51985209_
             (gx#core-expand-block__1 _stx5196_ _expand-special5197_ '#f)))
        (let ((_E52025213_
               (lambda () (error '"No clause matching" _g51985209_))))
          (let ((_try-match52015224_
                 (lambda ()
                   (let ((_K52035219_
                          (lambda (_body5217_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body5217_))
                             (gx#stx-source _stx5196_)))))
                     (let ((_body5222_ _g51985209_))
                       (_K52035219_ _body5222_))))))
            (let ((_try-match52005240_
                   (lambda ()
                     (let ((_K52045230_ (lambda (_expr5228_) _expr5228_)))
                       (if (##pair? _g51985209_)
                           (let ((_hd52055233_ (##car _g51985209_))
                                 (_tl52065235_ (##cdr _g51985209_)))
                             (let ((_expr5238_ _hd52055233_))
                               (if (##null? _tl52065235_)
                                   (_K52045230_ _expr5238_)
                                   (_try-match52015224_))))
                           (_try-match52015224_))))))
              (let ((_K52075244_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx5196_))))
                (if (##null? _g51985209_)
                    (_K52075244_)
                    (_try-match52005240_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5054_)
      (letrec ((_satisfied?5056_
                (lambda (_condition5154_)
                  (let ((_e51555163_ _condition5154_))
                    (let ((_E51585167_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e51555163_))))
                      (let ((_E51575186_
                             (lambda ()
                               (if (gx#stx-pair? _e51555163_)
                                   (let ((_e51595171_
                                          (gx#syntax-e _e51555163_)))
                                     (let ((_hd51605174_ (##car _e51595171_))
                                           (_tl51615176_ (##cdr _e51595171_)))
                                       (let ((_combinator5179_ _hd51605174_))
                                         (let ((_body5181_ _tl51615176_))
                                           (if (gx#stx-list? _body5181_)
                                               (let ((_$e5183_
                                                      (gx#stx-e
                                                       _combinator5179_)))
                                                 (if (eq? _$e5183_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?5056_
                                                           _body5181_))
                                                     (if (eq? _$e5183_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?5056_
                                                          _body5181_)
                                                         (if (eq? _$e5183_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?5056_
                                                              _body5181_)
                                                             (if (eq? _$e5183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body5181_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx5054_
                          _combinator5179_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E51585167_))))))
                                   (_E51585167_)))))
                        (let ((_E51565192_
                               (lambda ()
                                 (let ((_id5190_ _e51555163_))
                                   (if (gx#identifier? _id5190_)
                                       (gx#core-bound-identifier?__opt-lambda4199
                                        _id5190_
                                        gx#feature-binding?)
                                       (_E51575186_))))))
                          (let () (_E51565192_))))))))
               (_loop5057_
                (lambda (_rest5087_)
                  (let ((_e50885096_ _rest5087_))
                    (let ((_E50945100_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e50885096_))))
                      (let ((_E50905104_
                             (lambda ()
                               (if (gx#stx-null? _e50885096_)
                                   (if '#t '() (_E50945100_))
                                   (_E50945100_)))))
                        (let ((_E50895150_
                               (lambda ()
                                 (if (gx#stx-pair? _e50885096_)
                                     (let ((_e50915108_
                                            (gx#syntax-e _e50885096_)))
                                       (let ((_hd50925111_ (##car _e50915108_))
                                             (_tl50935113_
                                              (##cdr _e50915108_)))
                                         (let ((_hd5116_ _hd50925111_))
                                           (let ((_rest5118_ _tl50935113_))
                                             (if '#t
                                                 (let ((_e51195126_ _hd5116_))
                                                   (let ((_E51215130_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e51195126_))))
                                                     (let ((_E51205146_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e51195126_)
                          (let ((_e51225134_ (gx#syntax-e _e51195126_)))
                            (let ((_hd51235137_ (##car _e51225134_))
                                  (_tl51245139_ (##cdr _e51225134_)))
                              (let ((_condition5142_ _hd51235137_))
                                (let ((_body5144_ _tl51245139_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition5142_ 'else)
                                          (if (gx#stx-null? _rest5118_)
                                              _body5144_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx5054_
                                               _hd5116_))
                                          (if (_satisfied?5056_
                                               _condition5142_)
                                              _body5144_
                                              (_loop5057_ _rest5118_)))
                                      (_E51215130_))))))
                          (_E51215130_)))))
               (let () (_E51205146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E50905104_))))))
                                     (_E50905104_)))))
                          (let () (_E50895150_)))))))))
        (let ((_e50585065_ _stx5054_))
          (let ((_E50605069_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50585065_))))
            (let ((_E50595083_
                   (lambda ()
                     (if (gx#stx-pair? _e50585065_)
                         (let ((_e50615073_ (gx#syntax-e _e50585065_)))
                           (let ((_hd50625076_ (##car _e50615073_))
                                 (_tl50635078_ (##cdr _e50615073_)))
                             (let ((_clauses5081_ _tl50635078_))
                               (if (gx#stx-list? _clauses5081_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop5057_ _clauses5081_))
                                   (_E50605069_)))))
                         (_E50605069_)))))
              (let () (_E50595083_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda4995
      (lambda (_stx4997_ _rpath4998_)
        (let ((_e49995009_ _stx4997_))
          (let ((_E50015013_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e49995009_))))
            (let ((_E50005040_
                   (lambda ()
                     (if (gx#stx-pair? _e49995009_)
                         (let ((_e50025017_ (gx#syntax-e _e49995009_)))
                           (let ((_hd50035020_ (##car _e50025017_))
                                 (_tl50045022_ (##cdr _e50025017_)))
                             (if (gx#stx-pair? _tl50045022_)
                                 (let ((_e50055025_
                                        (gx#syntax-e _tl50045022_)))
                                   (let ((_hd50065028_ (##car _e50055025_))
                                         (_tl50075030_ (##cdr _e50055025_)))
                                     (let ((_path5033_ _hd50065028_))
                                       (if (gx#stx-null? _tl50075030_)
                                           (if (gx#stx-string? _path5033_)
                                               (let ((_rpath5038_
                                                      (let ((_$e5035_
                                                             _rpath4998_))
                                                        (if _$e5035_
                                                            _$e5035_
                                                            (gx#core-resolve-path__opt-lambda4109
                                                             _path5033_
                                                             (gx#stx-source
                                                              _stx4997_))))))
                                                 (if (member _rpath5038_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx4997_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath5038_))
                                                       (gx#stx-source
                                                        _stx4997_)))))
                                               (_E50015013_))
                                           (_E50015013_)))))
                                 (_E50015013_))))
                         (_E50015013_)))))
              (let () (_E50005040_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5047_)
          (let ((_rpath5049_ '#f))
            (gx#core-expand-include%__opt-lambda4995 _stx5047_ _rpath5049_))))
      (define gx#core-expand-include%
        (lambda _g5827_
          (let ((_g5826_ (length _g5827_)))
            (cond ((fx= _g5826_ 1) (apply gx#core-expand-include%__0 _g5827_))
                  ((fx= _g5826_ 2)
                   (apply gx#core-expand-include%__opt-lambda4995 _g5827_))
                  (else (error "No clause matching arguments" _g5827_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4964
      (lambda (_K4966_ _stx4967_ _method4968_)
        (if (procedure? _K4966_)
            (let ((_$e4970_ (gx#stx-source _stx4967_)))
              (if _$e4970_
                  ((lambda (_g49724974_)
                     (gx#stx-wrap-source (_K4966_ _stx4967_) _g49724974_))
                   _$e4970_)
                  (_K4966_ _stx4967_)))
            (let ((_$e4977_ (bound-method-ref _K4966_ _method4968_)))
              (if _$e4977_
                  ((lambda (_g49794981_)
                     (gx#core-apply-expander__opt-lambda4964
                      _g49794981_
                      _stx4967_
                      _method4968_))
                   _$e4977_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4967_
                   _method4968_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4987_ _stx4988_)
          (let ((_method4990_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4964
             _K4987_
             _stx4988_
             _method4990_))))
      (define gx#core-apply-expander
        (lambda _g5829_
          (let ((_g5828_ (length _g5829_)))
            (cond ((fx= _g5828_ 2) (apply gx#core-apply-expander__0 _g5829_))
                  ((fx= _g5828_ 3)
                   (apply gx#core-apply-expander__opt-lambda4964 _g5829_))
                  (else (error "No clause matching arguments" _g5829_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4962_ _stx4963_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4963_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4937_ _stx4938_)
      (let ((_self49394945_ _self4937_))
        (let ((_E49414949_
               (lambda () (error '"No clause matching" _self49394945_))))
          (let ((_K49424954_
                 (lambda (_K4952_)
                   (gx#core-apply-expander__0 _K4952_ _stx4938_))))
            (if (##structure-instance-of?
                 _self49394945_
                 (##type-id gx#macro-expander::t))
                (let ((_e49434957_ (##vector-ref _self49394945_ '1)))
                  (let ((_K4960_ _e49434957_)) (_K49424954_ _K4960_)))
                (_E49414949_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4912_ _stx4913_)
      (if (gx#sealed-syntax? _stx4913_)
          _stx4913_
          (let ((_self49144920_ _self4912_))
            (let ((_E49164924_
                   (lambda () (error '"No clause matching" _self49144920_))))
              (let ((_K49174929_
                     (lambda (_K4927_)
                       (gx#core-apply-expander__0 _K4927_ _stx4913_))))
                (if (##structure-instance-of?
                     _self49144920_
                     (##type-id gx#core-expander::t))
                    (let ((_e49184932_ (##vector-ref _self49144920_ '1)))
                      (let ((_K4935_ _e49184932_)) (_K49174929_ _K4935_)))
                    (_E49164924_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4894
      (lambda (_self4896_ _stx4897_ _top?4898_)
        (if (_top?4898_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4896_ _stx4897_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4897_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4903_ _stx4904_)
          (let ((_top?4906_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4894
             _self4903_
             _stx4904_
             _top?4906_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5831_
          (let ((_g5830_ (length _g5831_)))
            (cond ((fx= _g5830_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5831_))
                  ((fx= _g5830_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4894
                          _g5831_))
                  (else (error "No clause matching arguments" _g5831_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4892_ _stx4893_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4894
       _self4892_
       _stx4893_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4839_ _stx4840_)
      (let ((_self48414847_ _self4839_))
        (let ((_E48434851_
               (lambda () (error '"No clause matching" _self48414847_))))
          (let ((_K48444884_
                 (lambda (_id4854_)
                   (let ((_e48554862_ _stx4840_))
                     (let ((_E48574866_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e48554862_))))
                       (let ((_E48564880_
                              (lambda ()
                                (if (gx#stx-pair? _e48554862_)
                                    (let ((_e48584870_
                                           (gx#syntax-e _e48554862_)))
                                      (let ((_hd48594873_ (##car _e48584870_))
                                            (_tl48604875_ (##cdr _e48584870_)))
                                        (let ((_body4878_ _tl48604875_))
                                          (if '#t
                                              (gx#core-cons
                                               _id4854_
                                               _body4878_)
                                              (_E48574866_)))))
                                    (_E48574866_)))))
                         (let () (_E48564880_))))))))
            (if (##structure-instance-of?
                 _self48414847_
                 (##type-id gx#rename-macro-expander::t))
                (let ((_e48454887_ (##vector-ref _self48414847_ '1)))
                  (let ((_id4890_ _e48454887_)) (_K48444884_ _id4890_)))
                (_E48434851_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4785
      (lambda (_self4787_ _stx4788_ _method4789_)
        (let ((_self47904798_ _self4787_))
          (let ((_E47924802_
                 (lambda () (error '"No clause matching" _self47904798_))))
            (let ((_K47934809_
                   (lambda (_phi4805_ _ctx4806_ _K4807_)
                     (gx#core-apply-user-macro
                      _K4807_
                      _stx4788_
                      _ctx4806_
                      _phi4805_
                      _method4789_))))
              (if (##structure-instance-of?
                   _self47904798_
                   (##type-id gx#user-expander::t))
                  (let ((_e47944812_ (##vector-ref _self47904798_ '1)))
                    (let ((_K4815_ _e47944812_))
                      (let ((_e47954817_ (##vector-ref _self47904798_ '2)))
                        (let ((_ctx4820_ _e47954817_))
                          (let ((_e47964822_ (##vector-ref _self47904798_ '3)))
                            (let ((_phi4825_ _e47964822_))
                              (_K47934809_ _phi4825_ _ctx4820_ _K4815_)))))))
                  (_E47924802_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4830_ _stx4831_)
          (let ((_method4833_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4785
             _self4830_
             _stx4831_
             _method4833_))))
      (define gx#core-apply-user-expander
        (lambda _g5833_
          (let ((_g5832_ (length _g5833_)))
            (cond ((fx= _g5832_ 2)
                   (apply gx#core-apply-user-expander__0 _g5833_))
                  ((fx= _g5832_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4785 _g5833_))
                  (else (error "No clause matching arguments" _g5833_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4777_ _stx4778_ _ctx4779_ _phi4780_ _method4781_)
      (let ((_mark4783_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4779_
              _phi4780_
              _stx4778_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4964
             _K4777_
             (gx#stx-apply-mark _stx4778_ _mark4783_)
             _method4781_)
            _mark4783_))
         gx#current-expander-marks
         (cons _mark4783_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4749
      (lambda (_stx4751_ _phi4752_ _ctx4753_)
        ((letrec ((_lp4755_
                   (lambda (_bind4757_)
                     (if (##structure-direct-instance-of?
                          _bind4757_
                          'gx#import-binding::t)
                         (_lp4755_
                          (##structure-ref
                           _bind4757_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind4757_
                              'gx#alias-binding::t)
                             (_lp4755_
                              (gx#core-resolve-identifier__opt-lambda4679
                               (##structure-ref
                                _bind4757_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi4752_
                               _ctx4753_))
                             _bind4757_)))))
           _lp4755_)
         (gx#core-resolve-identifier__opt-lambda4679
          _stx4751_
          _phi4752_
          _ctx4753_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4762_)
          (let ((_phi4764_ (gx#current-expander-phi)))
            (let ((_ctx4766_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda4749
               _stx4762_
               _phi4764_
               _ctx4766_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx4768_ _phi4769_)
          (let ((_ctx4771_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4749
             _stx4768_
             _phi4769_
             _ctx4771_))))
      (define gx#resolve-identifier
        (lambda _g5835_
          (let ((_g5834_ (length _g5835_)))
            (cond ((fx= _g5834_ 1) (apply gx#resolve-identifier__0 _g5835_))
                  ((fx= _g5834_ 2) (apply gx#resolve-identifier__1 _g5835_))
                  ((fx= _g5834_ 3)
                   (apply gx#resolve-identifier__opt-lambda4749 _g5835_))
                  (else (error "No clause matching arguments" _g5835_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4707
      (lambda (_stx4709_ _val4710_ _rebind?4711_ _phi4712_ _ctx4713_)
        (let ((_rebind?4715_
               (if (not _rebind?4711_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4711_) _rebind?4711_ true))))
          (gx#core-bind!__opt-lambda4469
           (gx#core-identifier-key _stx4709_)
           _val4710_
           _rebind?4715_
           _phi4712_
           _ctx4713_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4720_ _val4721_)
          (let ((_rebind?4723_ '#f))
            (let ((_phi4725_ (gx#current-expander-phi)))
              (let ((_ctx4727_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda4707
                 _stx4720_
                 _val4721_
                 _rebind?4723_
                 _phi4725_
                 _ctx4727_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx4729_ _val4730_ _rebind?4731_)
          (let ((_phi4733_ (gx#current-expander-phi)))
            (let ((_ctx4735_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda4707
               _stx4729_
               _val4730_
               _rebind?4731_
               _phi4733_
               _ctx4735_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx4737_ _val4738_ _rebind?4739_ _phi4740_)
          (let ((_ctx4742_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4707
             _stx4737_
             _val4738_
             _rebind?4739_
             _phi4740_
             _ctx4742_))))
      (define gx#bind-identifier!
        (lambda _g5837_
          (let ((_g5836_ (length _g5837_)))
            (cond ((fx= _g5836_ 2) (apply gx#bind-identifier!__0 _g5837_))
                  ((fx= _g5836_ 3) (apply gx#bind-identifier!__1 _g5837_))
                  ((fx= _g5836_ 4) (apply gx#bind-identifier!__2 _g5837_))
                  ((fx= _g5836_ 5)
                   (apply gx#bind-identifier!__opt-lambda4707 _g5837_))
                  (else (error "No clause matching arguments" _g5837_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4679
      (lambda (_stx4681_ _phi4682_ _ctx4683_)
        ((letrec ((_lp4685_
                   (lambda (_e4687_ _marks4688_)
                     (if (symbol? _e4687_)
                         (gx#core-resolve-binding
                          _e4687_
                          _phi4682_
                          _ctx4683_
                          (reverse _marks4688_))
                         (if (gx#identifier-quote? _e4687_)
                             (gx#core-resolve-binding
                              (##structure-ref _e4687_ '1 AST::t '#f)
                              _phi4682_
                              (##structure-ref
                               _e4687_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e4687_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e4687_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e4687_ '1 AST::t '#f)
                                  _phi4682_
                                  _ctx4683_
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e4687_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks4688_))
                                 (if (##structure-direct-instance-of?
                                      _e4687_
                                      'gx#syntax-wrap::t)
                                     (_lp4685_
                                      (##structure-ref _e4687_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e4687_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks4688_))
                                     (if (##structure-instance-of?
                                          _e4687_
                                          'gerbil#AST::t)
                                         (_lp4685_
                                          (##structure-ref
                                           _e4687_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks4688_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx4681_)))))))))
           _lp4685_)
         _stx4681_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4693_)
          (let ((_phi4695_ (gx#current-expander-phi)))
            (let ((_ctx4697_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda4679
               _stx4693_
               _phi4695_
               _ctx4697_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4699_ _phi4700_)
          (let ((_ctx4702_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4679
             _stx4699_
             _phi4700_
             _ctx4702_))))
      (define gx#core-resolve-identifier
        (lambda _g5839_
          (let ((_g5838_ (length _g5839_)))
            (cond ((fx= _g5838_ 1)
                   (apply gx#core-resolve-identifier__0 _g5839_))
                  ((fx= _g5838_ 2)
                   (apply gx#core-resolve-identifier__1 _g5839_))
                  ((fx= _g5838_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4679 _g5839_))
                  (else (error "No clause matching arguments" _g5839_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4595_ _phi4596_ _ctx4597_ _marks4598_)
      (let ((_resolve4600_
             (lambda (_ctx4668_ _src-phi4669_ _key4670_)
               ((letrec ((_lp4672_
                          (lambda (_ctx4674_ _dphi4675_)
                            (let ((_$e4677_
                                   (gx#core-context-resolve
                                    _ctx4674_
                                    _key4670_)))
                              (if _$e4677_
                                  (values _$e4677_)
                                  (if (fxzero? _dphi4675_)
                                      '#f
                                      (if (fxpositive? _dphi4675_)
                                          (_lp4672_
                                           (gx#core-context-shift
                                            _ctx4674_
                                            '-1)
                                           (fx- _dphi4675_ '1))
                                          (if (fxnegative? _dphi4675_)
                                              (_lp4672_
                                               (gx#core-context-shift
                                                _ctx4674_
                                                '1)
                                               (fx+ _dphi4675_ '1))
                                              '#!void))))))))
                  _lp4672_)
                (gx#core-context-shift _ctx4668_ _phi4596_)
                (fx- _phi4596_ _src-phi4669_)))))
        ((letrec ((_lp4602_
                   (lambda (_ctx4604_ _src-phi4605_ _rest4606_)
                     (let ((_rest46074615_ _rest4606_))
                       (let ((_E46104619_
                              (lambda ()
                                (error '"No clause matching" _rest46074615_))))
                         (let ((_else46094623_
                                (lambda ()
                                  (_resolve4600_
                                   _ctx4604_
                                   _src-phi4605_
                                   _id4595_))))
                           (let ((_K46114656_
                                  (lambda (_rest4626_ _hd4627_)
                                    (let ((_hd46284634_ _hd4627_))
                                      (let ((_E46304638_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd46284634_))))
                                        (let ((_K46314648_
                                               (lambda (_subst4641_)
                                                 (let ((_$e4645_
                                                        (let ((_key4643_
                                                               (if _subst4641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (table-ref _subst4641_ _id4595_ '#f)
                           '#f)))
                  (if _key4643_
                      (_resolve4600_ _ctx4604_ _src-phi4605_ _key4643_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e4645_
                                                       _$e4645_
                                                       (_lp4602_
                                                        (##structure-ref
                                                         _hd4627_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd4627_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest4626_))))))
                                          (if (##structure-instance-of?
                                               _hd46284634_
                                               (##type-id gx#expander-mark::t))
                                              (let ((_e46324651_
                                                     (##vector-ref
                                                      _hd46284634_
                                                      '1)))
                                                (let ((_subst4654_
                                                       _e46324651_))
                                                  (_K46314648_ _subst4654_)))
                                              (_E46304638_))))))))
                             (if (##pair? _rest46074615_)
                                 (let ((_hd46124659_ (##car _rest46074615_))
                                       (_tl46134661_ (##cdr _rest46074615_)))
                                   (let ((_hd4664_ _hd46124659_))
                                     (let ((_rest4666_ _tl46134661_))
                                       (_K46114656_ _rest4666_ _hd4664_))))
                                 (_else46094623_)))))))))
           _lp4602_)
         _ctx4597_
         _phi4596_
         _marks4598_))))
  (begin
    (define gx#core-bind!__opt-lambda4469
      (lambda (_key4471_ _val4472_ _rebind?4473_ _phi4474_ _ctx4475_)
        (let ((_update-binding4477_
               (lambda (_xval4548_)
                 (if (let ((_$e4550_
                            (_rebind?4473_ _ctx4475_ _xval4548_ _val4472_)))
                       (if _$e4550_
                           _$e4550_
                           (let ((_$e4556_
                                  (if (##structure-direct-instance-of?
                                       _xval4548_
                                       'gx#import-binding::t)
                                      (let ((_$e4553_
                                             (##structure-ref
                                              _xval4548_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e4553_
                                            _$e4553_
                                            (if (##structure-instance-of?
                                                 _val4472_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val4472_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e4556_
                                 _$e4556_
                                 (if (##structure-instance-of?
                                      _xval4548_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val4472_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val4472_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval4548_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val4472_
                     (if (if (##structure-direct-instance-of?
                              _val4472_
                              'gx#import-binding::t)
                             (let ((_$e4559_
                                    (##structure-ref
                                     _val4472_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e4559_
                                   _$e4559_
                                   (if (##structure-instance-of?
                                        _xval4548_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val4472_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval4548_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval4548_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key4471_
                          _xval4548_
                          _val4472_))))))
          (let ((_gensubst4478_
                 (lambda (_subst4543_ _id4544_)
                   (let ((_eid4546_
                          (gensym (if (uninterned-symbol? _id4544_)
                                      '%
                                      _id4544_))))
                     (begin
                       (table-set! _subst4543_ _id4544_ _eid4546_)
                       _eid4546_)))))
            (let ((_subst!4479_
                   (lambda (_key4481_)
                     (let ((_key44824490_ _key4481_))
                       (let ((_E44854494_
                              (lambda ()
                                (error '"No clause matching" _key44824490_))))
                         (let ((_else44844498_ (lambda () _key4481_)))
                           (let ((_K44864531_
                                  (lambda (_mark4501_ _id4502_)
                                    (let ((_mark45034509_ _mark4501_))
                                      (let ((_E45054513_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark45034509_))))
                                        (let ((_K45064523_
                                               (lambda (_subst4516_)
                                                 (if (not _subst4516_)
                                                     (let ((_subst4518_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark4501_
                                                          _subst4518_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst4478_
                                                          _subst4518_
                                                          _id4502_)))
                                                     (let ((_$e4520_
                                                            (table-ref
                                                             _subst4516_
                                                             _id4502_
                                                             '#f)))
                                                       (if _$e4520_
                                                           (values _$e4520_)
                                                           (_gensubst4478_
                                                            _subst4516_
                                                            _id4502_)))))))
                                          (if (##structure-instance-of?
                                               _mark45034509_
                                               (##type-id gx#expander-mark::t))
                                              (let ((_e45074526_
                                                     (##vector-ref
                                                      _mark45034509_
                                                      '1)))
                                                (let ((_subst4529_
                                                       _e45074526_))
                                                  (_K45064523_ _subst4529_)))
                                              (_E45054513_))))))))
                             (if (##pair? _key44824490_)
                                 (let ((_hd44874534_ (##car _key44824490_))
                                       (_tl44884536_ (##cdr _key44824490_)))
                                   (let ((_id4539_ _hd44874534_))
                                     (let ((_mark4541_ _tl44884536_))
                                       (_K44864531_ _mark4541_ _id4539_))))
                                 (_else44844498_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx4475_ _phi4474_)
               (_subst!4479_ _key4471_)
               _val4472_
               _update-binding4477_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4565_ _val4566_)
          (let ((_rebind?4568_ false))
            (let ((_phi4570_ (gx#current-expander-phi)))
              (let ((_ctx4572_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda4469
                 _key4565_
                 _val4566_
                 _rebind?4568_
                 _phi4570_
                 _ctx4572_))))))
      (define gx#core-bind!__1
        (lambda (_key4574_ _val4575_ _rebind?4576_)
          (let ((_phi4578_ (gx#current-expander-phi)))
            (let ((_ctx4580_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda4469
               _key4574_
               _val4575_
               _rebind?4576_
               _phi4578_
               _ctx4580_)))))
      (define gx#core-bind!__2
        (lambda (_key4582_ _val4583_ _rebind?4584_ _phi4585_)
          (let ((_ctx4587_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4469
             _key4582_
             _val4583_
             _rebind?4584_
             _phi4585_
             _ctx4587_))))
      (define gx#core-bind!
        (lambda _g5841_
          (let ((_g5840_ (length _g5841_)))
            (cond ((fx= _g5840_ 2) (apply gx#core-bind!__0 _g5841_))
                  ((fx= _g5840_ 3) (apply gx#core-bind!__1 _g5841_))
                  ((fx= _g5840_ 4) (apply gx#core-bind!__2 _g5841_))
                  ((fx= _g5840_ 5)
                   (apply gx#core-bind!__opt-lambda4469 _g5841_))
                  (else (error "No clause matching arguments" _g5841_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4401_)
      (if (symbol? _stx4401_)
          (let ((_g44024410_ (gx#current-expander-marks)))
            (let ((_E44054414_
                   (lambda () (error '"No clause matching" _g44024410_))))
              (let ((_else44044418_ (lambda () _stx4401_)))
                (let ((_K44064423_
                       (lambda (_hd4421_) (cons _stx4401_ _hd4421_))))
                  (if (##pair? _g44024410_)
                      (let ((_hd44074426_ (##car _g44024410_))
                            (_tl44084428_ (##cdr _g44024410_)))
                        (let ((_hd4431_ _hd44074426_)) (_K44064423_ _hd4431_)))
                      (_else44044418_))))))
          (if (gx#identifier? _stx4401_)
              (let ((_id4433_ (gx#syntax-local-unwrap _stx4401_)))
                (let ((_eid4435_ (gx#stx-e _id4433_)))
                  (let ((_marks4437_ (gx#stx-identifier-marks _id4433_)))
                    (let ()
                      (let ((_marks44394447_ _marks4437_))
                        (let ((_E44424451_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks44394447_))))
                          (let ((_else44414455_ (lambda () _eid4435_)))
                            (let ((_K44434460_
                                   (lambda (_hd4458_)
                                     (cons _eid4435_ _hd4458_))))
                              (if (##pair? _marks44394447_)
                                  (let ((_hd44444463_ (##car _marks44394447_))
                                        (_tl44454465_ (##cdr _marks44394447_)))
                                    (let ((_hd4468_ _hd44444463_))
                                      (_K44434460_ _hd4468_)))
                                  (_else44414455_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4401_)))))
  (define gx#core-context-shift
    (lambda (_ctx4346_ _phi4347_)
      (let ((_make-phi4349_
             (lambda (_super4399_)
               (let ((__obj5812 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda5774
                    __obj5812
                    (gensym 'phi)
                    _super4399_)
                   __obj5812)))))
        (let ((_make-phi/up4350_
               (lambda (_ctx4394_ _super4395_)
                 (let ((_ctx+14397_ (_make-phi4349_ _super4395_)))
                   (begin
                     (##structure-set!
                      _ctx4394_
                      _ctx+14397_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+14397_
                      _ctx4394_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+14397_)))))
          (let ((_make-phi/down4351_
                 (lambda (_ctx4389_ _super4390_)
                   (let ((_ctx-14392_ (_make-phi4349_ _super4390_)))
                     (begin
                       (##structure-set!
                        _ctx-14392_
                        _ctx4389_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx4389_
                        _ctx-14392_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-14392_)))))
            (let ((_shift4352_
                   (lambda (_ctx4373_
                            _delta4374_
                            _make-delta-context4375_
                            _phi4376_
                            _K4377_)
                     (let ((_$e4379_
                            (##structure-ref
                             _ctx4373_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e4379_
                           ((lambda (_super4382_)
                              (let ((_super4384_
                                     (_K4377_ _super4382_ _delta4374_)))
                                (let ((_ctx+d4386_
                                       (_make-delta-context4375_
                                        _ctx4373_
                                        _super4384_)))
                                  (let ()
                                    (_K4377_ _ctx+d4386_
                                             (fx- _phi4376_ _delta4374_))))))
                            _$e4379_)
                           (error '"Bad context" _ctx4373_))))))
              ((letrec ((_K4354_ (lambda (_ctx4356_ _phi4357_)
                                   (if (fxzero? _phi4357_)
                                       _ctx4356_
                                       (if (##structure-instance-of?
                                            _ctx4356_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi4357_)
                                               (let ((_$e4359_
                                                      (##structure-ref
                                                       _ctx4356_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4359_
                                                     ((lambda (_g43614363_)
                                                        (_K4354_ _g43614363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx- _phi4357_ '1)))
              _$e4359_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4352_
                                                      _ctx4356_
                                                      '1
                                                      _make-phi/up4350_
                                                      _phi4357_
                                                      _K4354_)))
                                               (let ((_$e4366_
                                                      (##structure-ref
                                                       _ctx4356_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4366_
                                                     ((lambda (_g43684370_)
                                                        (_K4354_ _g43684370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx+ _phi4357_ '1)))
              _$e4366_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4352_
                                                      _ctx4356_
                                                      '-1
                                                      _make-phi/down4351_
                                                      _phi4357_
                                                      _K4354_))))
                                           _ctx4356_)))))
                 _K4354_)
               _ctx4346_
               _phi4347_)))))))
  (define gx#core-context-get
    (lambda (_ctx4343_ _key4344_)
      (table-ref
       (##structure-ref _ctx4343_ '2 gx#expander-context::t '#f)
       _key4344_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4339_ _key4340_ _val4341_)
      (table-set!
       (##structure-ref _ctx4339_ '2 gx#expander-context::t '#f)
       _key4340_
       _val4341_)))
  (define gx#core-context-resolve
    (lambda (_ctx4326_ _key4327_)
      ((letrec ((_lp4329_
                 (lambda (_ctx4331_)
                   (let ((_$e4333_ (gx#core-context-get _ctx4331_ _key4327_)))
                     (if _$e4333_
                         (values _$e4333_)
                         (let ((_$e4336_
                                (if (##structure-instance-of?
                                     _ctx4331_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx4331_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e4336_ (_lp4329_ _$e4336_) '#f)))))))
         _lp4329_)
       _ctx4326_)))
  (define gx#core-context-bind!
    (lambda (_ctx4316_ _key4317_ _val4318_ _rebind4319_)
      (let ((_$e4321_ (gx#core-context-get _ctx4316_ _key4317_)))
        (if _$e4321_
            ((lambda (_xval4324_)
               (gx#core-context-put!
                _ctx4316_
                _key4317_
                (_rebind4319_ _xval4324_)))
             _$e4321_)
            (gx#core-context-put! _ctx4316_ _key4317_ _val4318_)))))
  (begin
    (define gx#core-context-top__opt-lambda4292
      (lambda (_ctx4294_ _stop?4295_)
        ((letrec ((_lp4297_
                   (lambda (_ctx4299_)
                     (if (_stop?4295_ _ctx4299_)
                         _ctx4299_
                         (if (##structure-instance-of?
                              _ctx4299_
                              'gx#context-phi::t)
                             (_lp4297_
                              (##structure-ref
                               _ctx4299_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp4297_)
         _ctx4294_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx4305_ (gx#current-expander-context)))
            (let ((_stop?4307_ gx#top-context?))
              (gx#core-context-top__opt-lambda4292 _ctx4305_ _stop?4307_)))))
      (define gx#core-context-top__1
        (lambda (_ctx4309_)
          (let ((_stop?4311_ gx#top-context?))
            (gx#core-context-top__opt-lambda4292 _ctx4309_ _stop?4311_))))
      (define gx#core-context-top
        (lambda _g5843_
          (let ((_g5842_ (length _g5843_)))
            (cond ((fx= _g5842_ 0) (apply gx#core-context-top__0 _g5843_))
                  ((fx= _g5842_ 1) (apply gx#core-context-top__1 _g5843_))
                  ((fx= _g5842_ 2)
                   (apply gx#core-context-top__opt-lambda4292 _g5843_))
                  (else (error "No clause matching arguments" _g5843_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4277
      (lambda (_ctx4279_)
        ((letrec ((_lp4281_
                   (lambda (_ctx4283_)
                     (if (##structure-instance-of?
                          _ctx4283_
                          'gx#context-phi::t)
                         (_lp4281_
                          (##structure-ref _ctx4283_ '3 gx#phi-context::t '#f))
                         _ctx4283_))))
           _lp4281_)
         _ctx4279_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4289_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4277 _ctx4289_))))
      (define gx#core-context-root
        (lambda _g5845_
          (let ((_g5844_ (length _g5845_)))
            (cond ((fx= _g5844_ 0) (apply gx#core-context-root__0 _g5845_))
                  ((fx= _g5844_ 1)
                   (apply gx#core-context-root__opt-lambda4277 _g5845_))
                  (else (error "No clause matching arguments" _g5845_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4261
      (lambda (_ctx4263_ . __42604264_)
        (if (##structure-instance-of? _ctx4263_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4263_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4263_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4271_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4261 _ctx4271_))))
      (define gx#core-context-rebind?
        (lambda _g5847_
          (let ((_g5846_ (length _g5847_)))
            (cond ((fx= _g5846_ 0) (apply gx#core-context-rebind?__0 _g5847_))
                  ((fx= _g5846_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4261 _g5847_))
                  ((fx>= _g5846_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4261 _g5847_))
                  (else (error "No clause matching arguments" _g5847_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4244
      (lambda (_ctx4246_)
        (let ((_$e4248_ (gx#core-context-top__1 _ctx4246_)))
          (if _$e4248_
              ((lambda (_ctx4251_)
                 (if (##structure-instance-of? _ctx4251_ 'gx#module-context::t)
                     (##structure-ref _ctx4251_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4248_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4257_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4244 _ctx4257_))))
      (define gx#core-context-namespace
        (lambda _g5849_
          (let ((_g5848_ (length _g5849_)))
            (cond ((fx= _g5848_ 0)
                   (apply gx#core-context-namespace__0 _g5849_))
                  ((fx= _g5848_ 1)
                   (apply gx#core-context-namespace__opt-lambda4244 _g5849_))
                  (else (error "No clause matching arguments" _g5849_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4230
      (lambda (_bind4232_ _is?4233_)
        (if (##structure-direct-instance-of? _bind4232_ 'gx#syntax-binding::t)
            (_is?4233_
             (##structure-ref _bind4232_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4238_)
          (let ((_is?4240_ gx#expander?))
            (gx#expander-binding?__opt-lambda4230 _bind4238_ _is?4240_))))
      (define gx#expander-binding?
        (lambda _g5851_
          (let ((_g5850_ (length _g5851_)))
            (cond ((fx= _g5850_ 1) (apply gx#expander-binding?__0 _g5851_))
                  ((fx= _g5850_ 2)
                   (apply gx#expander-binding?__opt-lambda4230 _g5851_))
                  (else (error "No clause matching arguments" _g5851_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4229_)
      (gx#expander-binding?__opt-lambda4230 _bind4229_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4227_)
      (gx#expander-binding?__opt-lambda4230 _bind4227_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind4225_)
      (gx#expander-binding?__opt-lambda4230 _bind4225_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4216_)
      (let ((_feature?4218_
             (lambda (_e4220_)
               (let ((_$e4222_
                      (##structure-instance-of?
                       _e4220_
                       'gx#feature-expander::t)))
                 (if _$e4222_
                     _$e4222_
                     (##structure-instance-of?
                      _e4220_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4230 _bind4216_ _feature?4218_))))
  (define gx#private-feature-binding?
    (lambda (_bind4214_)
      (gx#expander-binding?__opt-lambda4230
       _bind4214_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4199
      (lambda (_id4201_ _bound?4202_)
        (if (gx#identifier? _id4201_)
            (_bound?4202_ (gx#resolve-identifier__0 _id4201_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4207_)
          (let ((_bound?4209_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4199
             _id4207_
             _bound?4209_))))
      (define gx#core-bound-identifier?
        (lambda _g5853_
          (let ((_g5852_ (length _g5853_)))
            (cond ((fx= _g5852_ 1)
                   (apply gx#core-bound-identifier?__0 _g5853_))
                  ((fx= _g5852_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4199 _g5853_))
                  (else (error "No clause matching arguments" _g5853_))))))))
  (define gx#core-identifier=?
    (lambda (_x4191_ _y4192_)
      (let ((_y=?4194_
             (lambda (_xid4198_)
               ((if (list? _y4192_) memq eq?) _xid4198_ _y4192_))))
        (let ((_bind4196_ (gx#resolve-identifier__0 _x4191_)))
          (if (##structure-instance-of? _bind4196_ 'gx#binding::t)
              (_y=?4194_ (##structure-ref _bind4196_ '1 gx#binding::t '#f))
              (_y=?4194_ (gx#stx-e _x4191_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4189_)
      (if (interned-symbol? _e4189_)
          (string-index (symbol->string _e4189_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda4145
      (lambda (_stx4147_ _src4148_ _ctx4149_ _marks4150_)
        (if (gx#sealed-syntax? _stx4147_)
            (gx#stx-unwrap__0 _stx4147_)
            (if (gx#identifier? _stx4147_)
                (let ((_id4152_ (gx#syntax-local-unwrap _stx4147_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4152_)
                   (let ((_$e4154_ (gx#stx-source _id4152_)))
                     (if _$e4154_ _$e4154_ _src4148_))
                   _ctx4149_
                   (##structure-ref _id4152_ '3 gx#identifier-wrap::t '#f)))
                (if (gx#stx-datum? _stx4147_)
                    (gx#stx-e _stx4147_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4147_
                     (let ((_$e4157_ (gx#stx-source _stx4147_)))
                       (if _$e4157_ _$e4157_ _src4148_))
                     _ctx4149_
                     (reverse _marks4150_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4163_)
          (let ((_src4165_ '#f))
            (let ((_ctx4167_ (gx#current-expander-context)))
              (let ((_marks4169_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda4145
                 _stx4163_
                 _src4165_
                 _ctx4167_
                 _marks4169_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4171_ _src4172_)
          (let ((_ctx4174_ (gx#current-expander-context)))
            (let ((_marks4176_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda4145
               _stx4171_
               _src4172_
               _ctx4174_
               _marks4176_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4178_ _src4179_ _ctx4180_)
          (let ((_marks4182_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4145
             _stx4178_
             _src4179_
             _ctx4180_
             _marks4182_))))
      (define gx#core-quote-syntax
        (lambda _g5855_
          (let ((_g5854_ (length _g5855_)))
            (cond ((fx= _g5854_ 1) (apply gx#core-quote-syntax__0 _g5855_))
                  ((fx= _g5854_ 2) (apply gx#core-quote-syntax__1 _g5855_))
                  ((fx= _g5854_ 3) (apply gx#core-quote-syntax__2 _g5855_))
                  ((fx= _g5854_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4145 _g5855_))
                  (else (error "No clause matching arguments" _g5855_))))))))
  (define gx#core-cons
    (lambda (_hd4143_ _tl4144_)
      (cons (gx#core-quote-syntax__0 _hd4143_) _tl4144_)))
  (define gx#core-list
    (lambda (_hd4140_ . _rest4141_)
      (cons (gx#core-quote-syntax__0 _hd4140_) _rest4141_)))
  (define gx#core-cons*
    (lambda (_hd4137_ . _rest4138_)
      (apply cons* (gx#core-quote-syntax__0 _hd4137_) _rest4138_)))
  (begin
    (define gx#core-resolve-path__opt-lambda4109
      (lambda (_stx-path4111_ _rel4112_)
        (let ((_path4124_ (gx#stx-e _stx-path4111_))
              (_reldir4125_
               ((letrec ((_lp4114_
                          (lambda (_relsrc4116_)
                            (if (##structure-instance-of?
                                 _relsrc4116_
                                 'gerbil#AST::t)
                                (_lp4114_
                                 (let ((_$e4118_ (gx#stx-source _relsrc4116_)))
                                   (if _$e4118_
                                       _$e4118_
                                       (gx#stx-e _relsrc4116_))))
                                (if (source-location-path? _relsrc4116_)
                                    (path-directory
                                     (source-location-path _relsrc4116_))
                                    (if (string? _relsrc4116_)
                                        (path-directory _relsrc4116_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp4114_)
                (let ((_$e4121_ (gx#stx-source _stx-path4111_)))
                  (if _$e4121_ _$e4121_ _rel4112_)))))
          (path-expand _path4124_ (path-normalize _reldir4125_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4130_)
          (let ((_rel4132_ '#f))
            (gx#core-resolve-path__opt-lambda4109 _stx-path4130_ _rel4132_))))
      (define gx#core-resolve-path
        (lambda _g5857_
          (let ((_g5856_ (length _g5857_)))
            (cond ((fx= _g5856_ 1) (apply gx#core-resolve-path__0 _g5857_))
                  ((fx= _g5856_ 2)
                   (apply gx#core-resolve-path__opt-lambda4109 _g5857_))
                  (else (error "No clause matching arguments" _g5857_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4108_) (gx#stx-rewrap _stx4108_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4106_)
      (gx#stx-unwrap__opt-lambda3919 _stx4106_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4074_)
      (let ((_g40754083_ (gx#current-expander-marks)))
        (let ((_E40784087_
               (lambda () (error '"No clause matching" _g40754083_))))
          (let ((_else40774091_ (lambda () _stx4074_)))
            (let ((_K40794096_
                   (lambda (_hd4094_) (gx#stx-apply-mark _stx4074_ _hd4094_))))
              (if (##pair? _g40754083_)
                  (let ((_hd40804099_ (##car _g40754083_))
                        (_tl40814101_ (##cdr _g40754083_)))
                    (let ((_hd4104_ _hd40804099_)) (_K40794096_ _hd4104_)))
                  (_else40774091_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda4057
      (lambda (_stx4059_ _E4060_)
        (let ((_bind4062_ (gx#resolve-identifier__0 _stx4059_)))
          (if (##structure-direct-instance-of?
               _bind4062_
               'gx#syntax-binding::t)
              (##structure-ref _bind4062_ '4 gx#syntax-binding::t '#f)
              (_E4060_ _stx4059_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4067_)
          (let ((_E4069_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda4057 _stx4067_ _E4069_))))
      (define gx#syntax-local-e
        (lambda _g5859_
          (let ((_g5858_ (length _g5859_)))
            (cond ((fx= _g5858_ 1) (apply gx#syntax-local-e__0 _g5859_))
                  ((fx= _g5858_ 2)
                   (apply gx#syntax-local-e__opt-lambda4057 _g5859_))
                  (else (error "No clause matching arguments" _g5859_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda4041
      (lambda (_stx4043_ _E4044_)
        (let ((_e4046_ (gx#syntax-local-e__opt-lambda4057 _stx4043_ _E4044_)))
          (if (##structure-instance-of? _e4046_ 'gx#expander::t)
              (##structure-ref _e4046_ '1 gx#expander::t '#f)
              _e4046_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4051_)
          (let ((_E4053_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda4041 _stx4051_ _E4053_))))
      (define gx#syntax-local-value
        (lambda _g5861_
          (let ((_g5860_ (length _g5861_)))
            (cond ((fx= _g5860_ 1) (apply gx#syntax-local-value__0 _g5861_))
                  ((fx= _g5860_ 2)
                   (apply gx#syntax-local-value__opt-lambda4041 _g5861_))
                  (else (error "No clause matching arguments" _g5861_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4040_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4040_))))
