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
    (lambda _$args5811_
      (apply make-struct-instance gx#expander-context::t _$args5811_)))
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
    (lambda _$args5808_
      (apply make-struct-instance gx#root-context::t _$args5808_)))
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
    (lambda _$args5805_
      (apply make-struct-instance gx#phi-context::t _$args5805_)))
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
    (lambda _$args5802_
      (apply make-struct-instance gx#top-context::t _$args5802_)))
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
    (lambda _$args5799_
      (apply make-struct-instance gx#module-context::t _$args5799_)))
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
    (lambda _$args5796_
      (apply make-struct-instance gx#prelude-context::t _$args5796_)))
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
    (lambda _$args5793_
      (apply make-struct-instance gx#local-context::t _$args5793_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5775
      (lambda (_self5777_ _id5778_ _super5779_)
        (direct-struct-instance-init!
         _self5777_
         _id5778_
         (make-hash-table-eq)
         _super5779_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5784_ _id5785_)
          (let ((_super5787_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5775
             _self5784_
             _id5785_
             _super5787_))))
      (define gx#phi-context:::init!
        (lambda _g5815_
          (let ((_g5814_ (length _g5815_)))
            (cond ((fx= _g5814_ 2) (apply gx#phi-context:::init!__0 _g5815_))
                  ((fx= _g5814_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5775 _g5815_))
                  (else (error "No clause matching arguments" _g5815_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5761
      (lambda (_self5763_ _super5764_)
        (direct-struct-instance-init!
         _self5763_
         (gensym 'L)
         (make-hash-table-eq)
         _super5764_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5769_)
          (let ((_super5771_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5761
             _self5769_
             _super5771_))))
      (define gx#local-context:::init!
        (lambda _g5817_
          (let ((_g5816_ (length _g5817_)))
            (cond ((fx= _g5816_ 1) (apply gx#local-context:::init!__0 _g5817_))
                  ((fx= _g5816_ 2)
                   (apply gx#local-context:::init!__opt-lambda5761 _g5817_))
                  (else (error "No clause matching arguments" _g5817_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5759_
      (apply make-struct-instance gx#binding::t _$args5759_)))
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
    (lambda _$args5756_
      (apply make-struct-instance gx#runtime-binding::t _$args5756_)))
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
    (lambda _$args5753_
      (apply make-struct-instance gx#local-binding::t _$args5753_)))
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
    (lambda _$args5750_
      (apply make-struct-instance gx#top-binding::t _$args5750_)))
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
    (lambda _$args5747_
      (apply make-struct-instance gx#module-binding::t _$args5747_)))
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
    (lambda _$args5744_
      (apply make-struct-instance gx#extern-binding::t _$args5744_)))
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
    (lambda _$args5741_
      (apply make-struct-instance gx#syntax-binding::t _$args5741_)))
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
    (lambda _$args5738_
      (apply make-struct-instance gx#import-binding::t _$args5738_)))
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
    (lambda _$args5735_
      (apply make-struct-instance gx#alias-binding::t _$args5735_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5732_
      (apply make-struct-instance gx#expander::t _$args5732_)))
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
    (lambda _$args5729_
      (apply make-struct-instance gx#core-expander::t _$args5729_)))
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
    (lambda _$args5726_
      (apply make-struct-instance gx#expression-form::t _$args5726_)))
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
    (lambda _$args5723_
      (apply make-struct-instance gx#special-form::t _$args5723_)))
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
    (lambda _$args5720_
      (apply make-struct-instance gx#definition-form::t _$args5720_)))
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
    (lambda _$args5717_
      (apply make-struct-instance gx#top-special-form::t _$args5717_)))
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
    (lambda _$args5714_
      (apply make-struct-instance gx#module-special-form::t _$args5714_)))
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
    (lambda _$args5711_
      (apply make-struct-instance gx#feature-expander::t _$args5711_)))
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
    (lambda _$args5708_
      (apply make-struct-instance gx#private-feature-expander::t _$args5708_)))
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
    (lambda _$args5705_
      (apply make-struct-instance gx#reserved-expander::t _$args5705_)))
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
    (lambda _$args5702_
      (apply make-struct-instance gx#macro-expander::t _$args5702_)))
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
    (lambda _$args5699_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5699_)))
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
    (lambda _$args5696_
      (apply make-struct-instance gx#user-expander::t _$args5696_)))
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
    (lambda _$args5693_
      (apply make-struct-instance gx#expander-mark::t _$args5693_)))
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
    (lambda _$args5690_
      (apply make-struct-instance gx#syntax-error::t _$args5690_)))
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
    (lambda (_where5685_ _message5686_ _stx5687_ . _details5688_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5686_
              (cons _stx5687_ _details5688_)
              _where5685_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5670
      (lambda (_stx5672_ _expression?5673_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5654 _stx5672_ _expression?5673_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5678_)
          (let ((_expression?5680_ '#f))
            (gx#eval-syntax__opt-lambda5670 _stx5678_ _expression?5680_))))
      (define gx#eval-syntax
        (lambda _g5819_
          (let ((_g5818_ (length _g5819_)))
            (cond ((fx= _g5818_ 1) (apply gx#eval-syntax__0 _g5819_))
                  ((fx= _g5818_ 2)
                   (apply gx#eval-syntax__opt-lambda5670 _g5819_))
                  (else (error "No clause matching arguments" _g5819_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5669_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5669_))))
  (begin
    (define gx#core-expand__opt-lambda5654
      (lambda (_stx5656_ _expression?5657_)
        (if _expression?5657_
            (gx#core-expand-expression _stx5656_)
            (gx#core-expand-top _stx5656_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5662_)
          (let ((_expression?5664_ '#f))
            (gx#core-expand__opt-lambda5654 _stx5662_ _expression?5664_))))
      (define gx#core-expand
        (lambda _g5821_
          (let ((_g5820_ (length _g5821_)))
            (cond ((fx= _g5820_ 1) (apply gx#core-expand__0 _g5821_))
                  ((fx= _g5820_ 2)
                   (apply gx#core-expand__opt-lambda5654 _g5821_))
                  (else (error "No clause matching arguments" _g5821_))))))))
  (define gx#core-expand-top
    (lambda (_stx5623_)
      (let ((_stx5625_ (gx#core-expand*__0 _stx5623_)))
        (let ((_e56265633_ _stx5625_))
          (let ((_E56285637_
                 (lambda () (gx#core-expand-expression _stx5625_))))
            (let ((_E56275651_
                   (lambda ()
                     (if (gx#stx-pair? _e56265633_)
                         (let ((_e56295641_ (gx#syntax-e _e56265633_)))
                           (let ((_hd56305644_ (##car _e56295641_))
                                 (_tl56315646_ (##cdr _e56295641_)))
                             (let ((_form5649_ _hd56305644_))
                               (if (gx#core-bound-identifier?__0 _form5649_)
                                   _stx5625_
                                   (_E56285637_)))))
                         (_E56285637_)))))
              (let () (_E56275651_))))))))
  (define gx#core-expand-expression
    (lambda (_stx5545_)
      (let ((_sealed-expression?5547_
             (lambda (_hd5593_)
               (if (gx#sealed-syntax? _hd5593_)
                   (let ((_e55945601_ _hd5593_))
                     (let ((_E55965605_ (lambda () '#f)))
                       (let ((_E55955619_
                              (lambda ()
                                (if (gx#stx-pair? _e55945601_)
                                    (let ((_e55975609_
                                           (gx#syntax-e _e55945601_)))
                                      (let ((_hd55985612_ (##car _e55975609_))
                                            (_tl55995614_ (##cdr _e55975609_)))
                                        (let ((_form5617_ _hd55985612_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4199
                                               _form5617_
                                               gx#expression-form-binding?)
                                              (_E55965605_)))))
                                    (_E55965605_)))))
                         (let () (_E55955619_)))))
                   '#f))))
        (let ((_illegal-expression5548_
               (lambda (_hd5591_ . _g5822_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx5545_
                  _hd5591_))))
          (let ((_expand-e5549_
                 (lambda (_form5586_ _hd5587_)
                   (let ((_bind5589_
                          (if (##structure-instance-of?
                               _form5586_
                               'gx#binding::t)
                              _form5586_
                              (gx#resolve-identifier__0 _form5586_))))
                     (if (gx#core-expander-binding? _bind5589_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5589_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd5587_
                           (gx#stx-source _stx5545_)))
                         (if (##structure-direct-instance-of?
                              _bind5589_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind5589_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd5587_
                                (gx#stx-source _stx5545_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx5545_
                              _form5586_)))))))
            (let ((_hd5551_ (gx#core-expand-head _stx5545_)))
              (if (_sealed-expression?5547_ _hd5551_)
                  _hd5551_
                  (if (gx#stx-pair? _hd5551_)
                      (let ((_e55525559_ _hd5551_))
                        (let ((_E55545563_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e55525559_))))
                          (let ((_E55535582_
                                 (lambda ()
                                   (if (gx#stx-pair? _e55525559_)
                                       (let ((_e55555567_
                                              (gx#syntax-e _e55525559_)))
                                         (let ((_hd55565570_
                                                (##car _e55555567_))
                                               (_tl55575572_
                                                (##cdr _e55555567_)))
                                           (let ((_form5575_ _hd55565570_))
                                             (if '#t
                                                 (let ((_bind5577_
                                                        (if (gx#identifier?
                                                             _form5575_)
                                                            (gx#resolve-identifier__0
                                                             _form5575_)
                                                            '#f)))
                                                   (if (let ((_$e5579_
                                                              (not _bind5577_)))
                                                         (if _$e5579_
                                                             _$e5579_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind5577_))))
               (_expand-e5549_ '%%app (cons '%%app _hd5551_))
               (if (eq? (##structure-ref _bind5577_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd5551_ _illegal-expression5548_)
                   (if (gx#expression-form-binding? _bind5577_)
                       (_expand-e5549_ _bind5577_ _hd5551_)
                       (_illegal-expression5548_ _hd5551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E55545563_)))))
                                       (_E55545563_)))))
                            (let () (_E55535582_)))))
                      (if (gx#core-bound-identifier?__0 _hd5551_)
                          (_illegal-expression5548_ _hd5551_)
                          (if (gx#identifier? _hd5551_)
                              (_expand-e5549_
                               '%%ref
                               (cons '%%ref (cons _hd5551_ '())))
                              (if (gx#stx-datum? _hd5551_)
                                  (_expand-e5549_
                                   '%#quote
                                   (cons '%#quote (cons _hd5551_ '())))
                                  (_illegal-expression5548_
                                   _hd5551_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5540_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5543_ (gx#core-expand-expression _stx5540_)))
           (values _stx5543_ (gx#eval-syntax* _stx5543_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5519
      (lambda (_stx5521_ _stop?5522_)
        ((letrec ((_lp5524_
                   (lambda (_stx5526_)
                     (if (_stop?5522_ _stx5526_)
                         _stx5526_
                         (let ((_rstx5528_ (gx#core-expand1 _stx5526_)))
                           (if (eq? _stx5526_ _rstx5528_)
                               _stx5526_
                               (_lp5524_ _rstx5528_)))))))
           _lp5524_)
         _stx5521_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5533_)
          (let ((_stop?5535_ false))
            (gx#core-expand*__opt-lambda5519 _stx5533_ _stop?5535_))))
      (define gx#core-expand*
        (lambda _g5824_
          (let ((_g5823_ (length _g5824_)))
            (cond ((fx= _g5823_ 1) (apply gx#core-expand*__0 _g5824_))
                  ((fx= _g5823_ 2)
                   (apply gx#core-expand*__opt-lambda5519 _g5824_))
                  (else (error "No clause matching arguments" _g5824_))))))))
  (define gx#core-expand1
    (lambda (_stx5477_)
      (let ((_step5479_
             (lambda (_hd5516_)
               (let ((_bind5518_ (gx#resolve-identifier__0 _hd5516_)))
                 (if (##structure-instance-of?
                      _bind5518_
                      'gx#runtime-binding::t)
                     _stx5477_
                     (if (##structure-direct-instance-of?
                          _bind5518_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5518_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx5477_)
                         (if (not _bind5518_)
                             _stx5477_
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx5477_))))))))
        (let ((_e54805488_ _stx5477_))
          (let ((_E54865492_ (lambda () _stx5477_)))
            (let ((_E54825498_
                   (lambda ()
                     (let ((_hd5496_ _e54805488_))
                       (if (gx#identifier? _hd5496_)
                           (_step5479_ _hd5496_)
                           (_E54865492_))))))
              (let ((_E54815512_
                     (lambda ()
                       (if (gx#stx-pair? _e54805488_)
                           (let ((_e54835502_ (gx#syntax-e _e54805488_)))
                             (let ((_hd54845505_ (##car _e54835502_))
                                   (_tl54855507_ (##cdr _e54835502_)))
                               (let ((_hd5510_ _hd54845505_))
                                 (if (gx#identifier? _hd5510_)
                                     (_step5479_ _hd5510_)
                                     (_E54825498_)))))
                           (_E54825498_)))))
                (let () (_E54815512_)))))))))
  (define gx#core-expand-head
    (lambda (_stx5443_)
      (let ((_stop?5445_
             (lambda (_stx5447_)
               (let ((_e54485455_ _stx5447_))
                 (let ((_E54505459_ (lambda () '#f)))
                   (let ((_E54495473_
                          (lambda ()
                            (if (gx#stx-pair? _e54485455_)
                                (let ((_e54515463_ (gx#syntax-e _e54485455_)))
                                  (let ((_hd54525466_ (##car _e54515463_))
                                        (_tl54535468_ (##cdr _e54515463_)))
                                    (let ((_hd5471_ _hd54525466_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5471_)
                                          (_E54505459_)))))
                                (_E54505459_)))))
                     (let () (_E54495473_))))))))
        (gx#core-expand*__opt-lambda5519 _stx5443_ _stop?5445_))))
  (begin
    (define gx#core-expand-block__opt-lambda5247
      (lambda (_stx5249_ _expand-special5250_ _begin-form5251_ _expand-e5252_)
        (letrec ((_expand-splice5254_
                  (lambda (_hd5417_ _body5418_ _rest5419_ _r5420_)
                    (if (gx#stx-list? _body5418_)
                        (_K5258_ (gx#stx-foldr cons _rest5419_ _body5418_)
                                 _r5420_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5249_
                         _hd5417_))))
                 (_expand-cond-expand5255_
                  (lambda (_hd5413_ _rest5414_ _r5415_)
                    (_K5258_ (cons (gx#core-expand-cond-expand% _hd5413_)
                                   _rest5414_)
                             _r5415_)))
                 (_expand-include5256_
                  (lambda (_hd5362_ _rest5363_ _r5364_)
                    (let ((_e53655375_ _hd5362_))
                      (let ((_E53675379_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e53655375_))))
                        (let ((_E53665409_
                               (lambda ()
                                 (if (gx#stx-pair? _e53655375_)
                                     (let ((_e53685383_
                                            (gx#syntax-e _e53655375_)))
                                       (let ((_hd53695386_ (##car _e53685383_))
                                             (_tl53705388_
                                              (##cdr _e53685383_)))
                                         (if (gx#stx-pair? _tl53705388_)
                                             (let ((_e53715391_
                                                    (gx#syntax-e
                                                     _tl53705388_)))
                                               (let ((_hd53725394_
                                                      (##car _e53715391_))
                                                     (_tl53735396_
                                                      (##cdr _e53715391_)))
                                                 (let ((_path5399_
                                                        _hd53725394_))
                                                   (if (gx#stx-null?
                                                        _tl53735396_)
                                                       (if (gx#stx-string?
                                                            _path5399_)
                                                           (let ((_rpath5401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda4109
                           _path5399_
                           (gx#stx-source _hd5362_))))
                     (let ((_block5403_
                            (gx#core-expand-include%__opt-lambda4996
                             _hd5362_
                             _rpath5401_)))
                       (let ((_rbody5406_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda5247
                                  _block5403_
                                  _expand-special5250_
                                  '#f
                                  _expand-e5252_))
                               gx#current-expander-path
                               (cons _rpath5401_ (gx#current-expander-path)))))
                         (let ()
                           (_K5258_ _rest5363_
                                    (foldr1 cons _r5364_ _rbody5406_))))))
                   (_E53675379_))
               (_E53675379_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E53675379_))))
                                     (_E53675379_)))))
                          (let () (_E53665409_)))))))
                 (_expand-expression5257_
                  (lambda (_hd5358_ _rest5359_ _r5360_)
                    (_K5258_ _rest5359_
                             (cons (_expand-e5252_ _hd5358_) _r5360_))))
                 (_K5258_ (lambda (_rest5288_ _r5289_)
                            (let ((_e52905297_ _rest5288_))
                              (let ((_E52925301_
                                     (lambda ()
                                       (if _begin-form5251_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form5251_
                                             (reverse _r5289_))
                                            (gx#stx-source _stx5249_))
                                           _r5289_))))
                                (let ((_E52915354_
                                       (lambda ()
                                         (if (gx#stx-pair? _e52905297_)
                                             (let ((_e52935305_
                                                    (gx#syntax-e _e52905297_)))
                                               (let ((_hd52945308_
                                                      (##car _e52935305_))
                                                     (_tl52955310_
                                                      (##cdr _e52935305_)))
                                                 (let ((_hd5313_ _hd52945308_))
                                                   (let ((_rest5315_
                                                          _tl52955310_))
                                                     (if '#t
                                                         (let ((_hd5317_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd5313_)))
                   (let ((_e53185325_ _hd5317_))
                     (let ((_E53205329_
                            (lambda ()
                              (_expand-expression5257_
                               _hd5317_
                               _rest5315_
                               _r5289_))))
                       (let ((_E53195350_
                              (lambda ()
                                (if (gx#stx-pair? _e53185325_)
                                    (let ((_e53215333_
                                           (gx#syntax-e _e53185325_)))
                                      (let ((_hd53225336_ (##car _e53215333_))
                                            (_tl53235338_ (##cdr _e53215333_)))
                                        (let ((_form5341_ _hd53225336_))
                                          (let ((_body5343_ _tl53235338_))
                                            (if '#t
                                                (let ((_bind5345_
                                                       (if (gx#identifier?
                                                            _form5341_)
                                                           (gx#resolve-identifier__0
                                                            _form5341_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind5345_)
                                                      (let ((_$e5347_
                                                             (##structure-ref
                                                              _bind5345_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e5347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice5254_
                     _hd5317_
                     _body5343_
                     _rest5315_
                     _r5289_)
                    (if (eq? _$e5347_ '%#cond-expand)
                        (_expand-cond-expand5255_ _hd5317_ _rest5315_ _r5289_)
                        (if (eq? _$e5347_ '%#include)
                            (_expand-include5256_ _hd5317_ _rest5315_ _r5289_)
                            (_expand-special5250_
                             _hd5317_
                             _K5258_
                             _rest5315_
                             _r5289_)))))
              (_expand-expression5257_ _hd5317_ _rest5315_ _r5289_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E53205329_))))))
                                    (_E53205329_)))))
                         (let () (_E53195350_))))))
                 (_E52925301_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E52925301_)))))
                                  (let () (_E52915354_))))))))
          (let ((_e52595266_ _stx5249_))
            (let ((_E52615270_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e52595266_))))
              (let ((_E52605284_
                     (lambda ()
                       (if (gx#stx-pair? _e52595266_)
                           (let ((_e52625274_ (gx#syntax-e _e52595266_)))
                             (let ((_hd52635277_ (##car _e52625274_))
                                   (_tl52645279_ (##cdr _e52625274_)))
                               (let ((_body5282_ _tl52645279_))
                                 (if (gx#stx-list? _body5282_)
                                     (_K5258_ _body5282_ '())
                                     (_E52615270_)))))
                           (_E52615270_)))))
                (let () (_E52605284_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5425_ _expand-special5426_)
          (let ((_begin-form5428_ '%#begin))
            (let ((_expand-e5430_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda5247
               _stx5425_
               _expand-special5426_
               _begin-form5428_
               _expand-e5430_)))))
      (define gx#core-expand-block__1
        (lambda (_stx5432_ _expand-special5433_ _begin-form5434_)
          (let ((_expand-e5436_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5247
             _stx5432_
             _expand-special5433_
             _begin-form5434_
             _expand-e5436_))))
      (define gx#core-expand-block
        (lambda _g5826_
          (let ((_g5825_ (length _g5826_)))
            (cond ((fx= _g5825_ 2) (apply gx#core-expand-block__0 _g5826_))
                  ((fx= _g5825_ 3) (apply gx#core-expand-block__1 _g5826_))
                  ((fx= _g5825_ 4)
                   (apply gx#core-expand-block__opt-lambda5247 _g5826_))
                  (else (error "No clause matching arguments" _g5826_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5197_ _expand-special5198_)
      (let ((_g51995210_
             (gx#core-expand-block__1 _stx5197_ _expand-special5198_ '#f)))
        (let ((_E52035214_
               (lambda () (error '"No clause matching" _g51995210_))))
          (let ((_try-match52025225_
                 (lambda ()
                   (let ((_K52045220_
                          (lambda (_body5218_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body5218_))
                             (gx#stx-source _stx5197_)))))
                     (let ((_body5223_ _g51995210_))
                       (_K52045220_ _body5223_))))))
            (let ((_try-match52015241_
                   (lambda ()
                     (let ((_K52055231_ (lambda (_expr5229_) _expr5229_)))
                       (if (##pair? _g51995210_)
                           (let ((_hd52065234_ (##car _g51995210_))
                                 (_tl52075236_ (##cdr _g51995210_)))
                             (let ((_expr5239_ _hd52065234_))
                               (if (##null? _tl52075236_)
                                   (_K52055231_ _expr5239_)
                                   (_try-match52025225_))))
                           (_try-match52025225_))))))
              (let ((_K52085245_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx5197_))))
                (if (##null? _g51995210_)
                    (_K52085245_)
                    (_try-match52015241_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5055_)
      (letrec ((_satisfied?5057_
                (lambda (_condition5155_)
                  (let ((_e51565164_ _condition5155_))
                    (let ((_E51595168_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e51565164_))))
                      (let ((_E51585187_
                             (lambda ()
                               (if (gx#stx-pair? _e51565164_)
                                   (let ((_e51605172_
                                          (gx#syntax-e _e51565164_)))
                                     (let ((_hd51615175_ (##car _e51605172_))
                                           (_tl51625177_ (##cdr _e51605172_)))
                                       (let ((_combinator5180_ _hd51615175_))
                                         (let ((_body5182_ _tl51625177_))
                                           (if (gx#stx-list? _body5182_)
                                               (let ((_$e5184_
                                                      (gx#stx-e
                                                       _combinator5180_)))
                                                 (if (eq? _$e5184_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?5057_
                                                           _body5182_))
                                                     (if (eq? _$e5184_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?5057_
                                                          _body5182_)
                                                         (if (eq? _$e5184_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?5057_
                                                              _body5182_)
                                                             (if (eq? _$e5184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body5182_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx5055_
                          _combinator5180_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E51595168_))))))
                                   (_E51595168_)))))
                        (let ((_E51575193_
                               (lambda ()
                                 (let ((_id5191_ _e51565164_))
                                   (if (gx#identifier? _id5191_)
                                       (gx#core-bound-identifier?__opt-lambda4199
                                        _id5191_
                                        gx#feature-binding?)
                                       (_E51585187_))))))
                          (let () (_E51575193_))))))))
               (_loop5058_
                (lambda (_rest5088_)
                  (let ((_e50895097_ _rest5088_))
                    (let ((_E50955101_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e50895097_))))
                      (let ((_E50915105_
                             (lambda ()
                               (if (gx#stx-null? _e50895097_)
                                   (if '#t '() (_E50955101_))
                                   (_E50955101_)))))
                        (let ((_E50905151_
                               (lambda ()
                                 (if (gx#stx-pair? _e50895097_)
                                     (let ((_e50925109_
                                            (gx#syntax-e _e50895097_)))
                                       (let ((_hd50935112_ (##car _e50925109_))
                                             (_tl50945114_
                                              (##cdr _e50925109_)))
                                         (let ((_hd5117_ _hd50935112_))
                                           (let ((_rest5119_ _tl50945114_))
                                             (if '#t
                                                 (let ((_e51205127_ _hd5117_))
                                                   (let ((_E51225131_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e51205127_))))
                                                     (let ((_E51215147_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e51205127_)
                          (let ((_e51235135_ (gx#syntax-e _e51205127_)))
                            (let ((_hd51245138_ (##car _e51235135_))
                                  (_tl51255140_ (##cdr _e51235135_)))
                              (let ((_condition5143_ _hd51245138_))
                                (let ((_body5145_ _tl51255140_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition5143_ 'else)
                                          (if (gx#stx-null? _rest5119_)
                                              _body5145_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx5055_
                                               _hd5117_))
                                          (if (_satisfied?5057_
                                               _condition5143_)
                                              _body5145_
                                              (_loop5058_ _rest5119_)))
                                      (_E51225131_))))))
                          (_E51225131_)))))
               (let () (_E51215147_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E50915105_))))))
                                     (_E50915105_)))))
                          (let () (_E50905151_)))))))))
        (let ((_e50595066_ _stx5055_))
          (let ((_E50615070_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50595066_))))
            (let ((_E50605084_
                   (lambda ()
                     (if (gx#stx-pair? _e50595066_)
                         (let ((_e50625074_ (gx#syntax-e _e50595066_)))
                           (let ((_hd50635077_ (##car _e50625074_))
                                 (_tl50645079_ (##cdr _e50625074_)))
                             (let ((_clauses5082_ _tl50645079_))
                               (if (gx#stx-list? _clauses5082_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop5058_ _clauses5082_))
                                   (_E50615070_)))))
                         (_E50615070_)))))
              (let () (_E50605084_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda4996
      (lambda (_stx4998_ _rpath4999_)
        (let ((_e50005010_ _stx4998_))
          (let ((_E50025014_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50005010_))))
            (let ((_E50015041_
                   (lambda ()
                     (if (gx#stx-pair? _e50005010_)
                         (let ((_e50035018_ (gx#syntax-e _e50005010_)))
                           (let ((_hd50045021_ (##car _e50035018_))
                                 (_tl50055023_ (##cdr _e50035018_)))
                             (if (gx#stx-pair? _tl50055023_)
                                 (let ((_e50065026_
                                        (gx#syntax-e _tl50055023_)))
                                   (let ((_hd50075029_ (##car _e50065026_))
                                         (_tl50085031_ (##cdr _e50065026_)))
                                     (let ((_path5034_ _hd50075029_))
                                       (if (gx#stx-null? _tl50085031_)
                                           (if (gx#stx-string? _path5034_)
                                               (let ((_rpath5039_
                                                      (let ((_$e5036_
                                                             _rpath4999_))
                                                        (if _$e5036_
                                                            _$e5036_
                                                            (gx#core-resolve-path__opt-lambda4109
                                                             _path5034_
                                                             (gx#stx-source
                                                              _stx4998_))))))
                                                 (if (member _rpath5039_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx4998_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath5039_))
                                                       (gx#stx-source
                                                        _stx4998_)))))
                                               (_E50025014_))
                                           (_E50025014_)))))
                                 (_E50025014_))))
                         (_E50025014_)))))
              (let () (_E50015041_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5048_)
          (let ((_rpath5050_ '#f))
            (gx#core-expand-include%__opt-lambda4996 _stx5048_ _rpath5050_))))
      (define gx#core-expand-include%
        (lambda _g5828_
          (let ((_g5827_ (length _g5828_)))
            (cond ((fx= _g5827_ 1) (apply gx#core-expand-include%__0 _g5828_))
                  ((fx= _g5827_ 2)
                   (apply gx#core-expand-include%__opt-lambda4996 _g5828_))
                  (else (error "No clause matching arguments" _g5828_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4965
      (lambda (_K4967_ _stx4968_ _method4969_)
        (if (procedure? _K4967_)
            (let ((_$e4971_ (gx#stx-source _stx4968_)))
              (if _$e4971_
                  ((lambda (_g49734975_)
                     (gx#stx-wrap-source (_K4967_ _stx4968_) _g49734975_))
                   _$e4971_)
                  (_K4967_ _stx4968_)))
            (let ((_$e4978_ (bound-method-ref _K4967_ _method4969_)))
              (if _$e4978_
                  ((lambda (_g49804982_)
                     (gx#core-apply-expander__opt-lambda4965
                      _g49804982_
                      _stx4968_
                      _method4969_))
                   _$e4978_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4968_
                   _method4969_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4988_ _stx4989_)
          (let ((_method4991_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4965
             _K4988_
             _stx4989_
             _method4991_))))
      (define gx#core-apply-expander
        (lambda _g5830_
          (let ((_g5829_ (length _g5830_)))
            (cond ((fx= _g5829_ 2) (apply gx#core-apply-expander__0 _g5830_))
                  ((fx= _g5829_ 3)
                   (apply gx#core-apply-expander__opt-lambda4965 _g5830_))
                  (else (error "No clause matching arguments" _g5830_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4963_ _stx4964_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4964_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4938_ _stx4939_)
      (let ((_self49404946_ _self4938_))
        (let ((_E49424950_
               (lambda () (error '"No clause matching" _self49404946_))))
          (let ((_K49434955_
                 (lambda (_K4953_)
                   (gx#core-apply-expander__0 _K4953_ _stx4939_))))
            (if (##structure-instance-of?
                 _self49404946_
                 (##type-id gx#macro-expander::t))
                (let ((_e49444958_ (##vector-ref _self49404946_ '1)))
                  (let ((_K4961_ _e49444958_)) (_K49434955_ _K4961_)))
                (_E49424950_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4913_ _stx4914_)
      (if (gx#sealed-syntax? _stx4914_)
          _stx4914_
          (let ((_self49154921_ _self4913_))
            (let ((_E49174925_
                   (lambda () (error '"No clause matching" _self49154921_))))
              (let ((_K49184930_
                     (lambda (_K4928_)
                       (gx#core-apply-expander__0 _K4928_ _stx4914_))))
                (if (##structure-instance-of?
                     _self49154921_
                     (##type-id gx#core-expander::t))
                    (let ((_e49194933_ (##vector-ref _self49154921_ '1)))
                      (let ((_K4936_ _e49194933_)) (_K49184930_ _K4936_)))
                    (_E49174925_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4895
      (lambda (_self4897_ _stx4898_ _top?4899_)
        (if (_top?4899_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4897_ _stx4898_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4898_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4904_ _stx4905_)
          (let ((_top?4907_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4895
             _self4904_
             _stx4905_
             _top?4907_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5832_
          (let ((_g5831_ (length _g5832_)))
            (cond ((fx= _g5831_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5832_))
                  ((fx= _g5831_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4895
                          _g5832_))
                  (else (error "No clause matching arguments" _g5832_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4893_ _stx4894_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4895
       _self4893_
       _stx4894_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4840_ _stx4841_)
      (let ((_self48424848_ _self4840_))
        (let ((_E48444852_
               (lambda () (error '"No clause matching" _self48424848_))))
          (let ((_K48454885_
                 (lambda (_id4855_)
                   (let ((_e48564863_ _stx4841_))
                     (let ((_E48584867_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e48564863_))))
                       (let ((_E48574881_
                              (lambda ()
                                (if (gx#stx-pair? _e48564863_)
                                    (let ((_e48594871_
                                           (gx#syntax-e _e48564863_)))
                                      (let ((_hd48604874_ (##car _e48594871_))
                                            (_tl48614876_ (##cdr _e48594871_)))
                                        (let ((_body4879_ _tl48614876_))
                                          (if '#t
                                              (gx#core-cons
                                               _id4855_
                                               _body4879_)
                                              (_E48584867_)))))
                                    (_E48584867_)))))
                         (let () (_E48574881_))))))))
            (if (##structure-instance-of?
                 _self48424848_
                 (##type-id gx#rename-macro-expander::t))
                (let ((_e48464888_ (##vector-ref _self48424848_ '1)))
                  (let ((_id4891_ _e48464888_)) (_K48454885_ _id4891_)))
                (_E48444852_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4786
      (lambda (_self4788_ _stx4789_ _method4790_)
        (let ((_self47914799_ _self4788_))
          (let ((_E47934803_
                 (lambda () (error '"No clause matching" _self47914799_))))
            (let ((_K47944810_
                   (lambda (_phi4806_ _ctx4807_ _K4808_)
                     (gx#core-apply-user-macro
                      _K4808_
                      _stx4789_
                      _ctx4807_
                      _phi4806_
                      _method4790_))))
              (if (##structure-instance-of?
                   _self47914799_
                   (##type-id gx#user-expander::t))
                  (let ((_e47954813_ (##vector-ref _self47914799_ '1)))
                    (let ((_K4816_ _e47954813_))
                      (let ((_e47964818_ (##vector-ref _self47914799_ '2)))
                        (let ((_ctx4821_ _e47964818_))
                          (let ((_e47974823_ (##vector-ref _self47914799_ '3)))
                            (let ((_phi4826_ _e47974823_))
                              (_K47944810_ _phi4826_ _ctx4821_ _K4816_)))))))
                  (_E47934803_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4831_ _stx4832_)
          (let ((_method4834_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4786
             _self4831_
             _stx4832_
             _method4834_))))
      (define gx#core-apply-user-expander
        (lambda _g5834_
          (let ((_g5833_ (length _g5834_)))
            (cond ((fx= _g5833_ 2)
                   (apply gx#core-apply-user-expander__0 _g5834_))
                  ((fx= _g5833_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4786 _g5834_))
                  (else (error "No clause matching arguments" _g5834_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4778_ _stx4779_ _ctx4780_ _phi4781_ _method4782_)
      (let ((_mark4784_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4780_
              _phi4781_
              _stx4779_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4965
             _K4778_
             (gx#stx-apply-mark _stx4779_ _mark4784_)
             _method4782_)
            _mark4784_))
         gx#current-expander-marks
         (cons _mark4784_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4750
      (lambda (_stx4752_ _phi4753_ _ctx4754_)
        ((letrec ((_lp4756_
                   (lambda (_bind4758_)
                     (if (##structure-direct-instance-of?
                          _bind4758_
                          'gx#import-binding::t)
                         (_lp4756_
                          (##structure-ref
                           _bind4758_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind4758_
                              'gx#alias-binding::t)
                             (_lp4756_
                              (gx#core-resolve-identifier__opt-lambda4680
                               (##structure-ref
                                _bind4758_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi4753_
                               _ctx4754_))
                             _bind4758_)))))
           _lp4756_)
         (gx#core-resolve-identifier__opt-lambda4680
          _stx4752_
          _phi4753_
          _ctx4754_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4763_)
          (let ((_phi4765_ (gx#current-expander-phi)))
            (let ((_ctx4767_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda4750
               _stx4763_
               _phi4765_
               _ctx4767_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx4769_ _phi4770_)
          (let ((_ctx4772_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4750
             _stx4769_
             _phi4770_
             _ctx4772_))))
      (define gx#resolve-identifier
        (lambda _g5836_
          (let ((_g5835_ (length _g5836_)))
            (cond ((fx= _g5835_ 1) (apply gx#resolve-identifier__0 _g5836_))
                  ((fx= _g5835_ 2) (apply gx#resolve-identifier__1 _g5836_))
                  ((fx= _g5835_ 3)
                   (apply gx#resolve-identifier__opt-lambda4750 _g5836_))
                  (else (error "No clause matching arguments" _g5836_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4708
      (lambda (_stx4710_ _val4711_ _rebind?4712_ _phi4713_ _ctx4714_)
        (let ((_rebind?4716_
               (if (not _rebind?4712_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4712_) _rebind?4712_ true))))
          (gx#core-bind!__opt-lambda4469
           (gx#core-identifier-key _stx4710_)
           _val4711_
           _rebind?4716_
           _phi4713_
           _ctx4714_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4721_ _val4722_)
          (let ((_rebind?4724_ '#f))
            (let ((_phi4726_ (gx#current-expander-phi)))
              (let ((_ctx4728_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda4708
                 _stx4721_
                 _val4722_
                 _rebind?4724_
                 _phi4726_
                 _ctx4728_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx4730_ _val4731_ _rebind?4732_)
          (let ((_phi4734_ (gx#current-expander-phi)))
            (let ((_ctx4736_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda4708
               _stx4730_
               _val4731_
               _rebind?4732_
               _phi4734_
               _ctx4736_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx4738_ _val4739_ _rebind?4740_ _phi4741_)
          (let ((_ctx4743_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4708
             _stx4738_
             _val4739_
             _rebind?4740_
             _phi4741_
             _ctx4743_))))
      (define gx#bind-identifier!
        (lambda _g5838_
          (let ((_g5837_ (length _g5838_)))
            (cond ((fx= _g5837_ 2) (apply gx#bind-identifier!__0 _g5838_))
                  ((fx= _g5837_ 3) (apply gx#bind-identifier!__1 _g5838_))
                  ((fx= _g5837_ 4) (apply gx#bind-identifier!__2 _g5838_))
                  ((fx= _g5837_ 5)
                   (apply gx#bind-identifier!__opt-lambda4708 _g5838_))
                  (else (error "No clause matching arguments" _g5838_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4680
      (lambda (_stx4682_ _phi4683_ _ctx4684_)
        ((letrec ((_lp4686_
                   (lambda (_e4688_ _marks4689_)
                     (if (symbol? _e4688_)
                         (gx#core-resolve-binding
                          _e4688_
                          _phi4683_
                          _phi4683_
                          _ctx4684_
                          (reverse _marks4689_))
                         (if (gx#identifier-quote? _e4688_)
                             (gx#core-resolve-binding
                              (##structure-ref _e4688_ '1 AST::t '#f)
                              _phi4683_
                              '0
                              (##structure-ref
                               _e4688_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e4688_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e4688_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e4688_ '1 AST::t '#f)
                                  _phi4683_
                                  _phi4683_
                                  _ctx4684_
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e4688_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks4689_))
                                 (if (##structure-direct-instance-of?
                                      _e4688_
                                      'gx#syntax-wrap::t)
                                     (_lp4686_
                                      (##structure-ref _e4688_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e4688_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks4689_))
                                     (if (##structure-instance-of?
                                          _e4688_
                                          'gerbil#AST::t)
                                         (_lp4686_
                                          (##structure-ref
                                           _e4688_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks4689_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx4682_)))))))))
           _lp4686_)
         _stx4682_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4694_)
          (let ((_phi4696_ (gx#current-expander-phi)))
            (let ((_ctx4698_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda4680
               _stx4694_
               _phi4696_
               _ctx4698_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4700_ _phi4701_)
          (let ((_ctx4703_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4680
             _stx4700_
             _phi4701_
             _ctx4703_))))
      (define gx#core-resolve-identifier
        (lambda _g5840_
          (let ((_g5839_ (length _g5840_)))
            (cond ((fx= _g5839_ 1)
                   (apply gx#core-resolve-identifier__0 _g5840_))
                  ((fx= _g5839_ 2)
                   (apply gx#core-resolve-identifier__1 _g5840_))
                  ((fx= _g5839_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4680 _g5840_))
                  (else (error "No clause matching arguments" _g5840_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4595_ _phi4596_ _src-phi4597_ _ctx4598_ _marks4599_)
      (let ((_resolve4601_
             (lambda (_ctx4669_ _src-phi4670_ _key4671_)
               ((letrec ((_lp4673_
                          (lambda (_ctx4675_ _dphi4676_)
                            (let ((_$e4678_
                                   (gx#core-context-resolve
                                    _ctx4675_
                                    _key4671_)))
                              (if _$e4678_
                                  (values _$e4678_)
                                  (if (fxzero? _dphi4676_)
                                      '#f
                                      (if (fxpositive? _dphi4676_)
                                          (_lp4673_
                                           (gx#core-context-shift
                                            _ctx4675_
                                            '-1)
                                           (fx- _dphi4676_ '1))
                                          (if (fxnegative? _dphi4676_)
                                              (_lp4673_
                                               (gx#core-context-shift
                                                _ctx4675_
                                                '1)
                                               (fx+ _dphi4676_ '1))
                                              '#!void))))))))
                  _lp4673_)
                (gx#core-context-shift _ctx4669_ _phi4596_)
                (fx- _phi4596_ _src-phi4670_)))))
        ((letrec ((_lp4603_
                   (lambda (_ctx4605_ _src-phi4606_ _rest4607_)
                     (let ((_rest46084616_ _rest4607_))
                       (let ((_E46114620_
                              (lambda ()
                                (error '"No clause matching" _rest46084616_))))
                         (let ((_else46104624_
                                (lambda ()
                                  (_resolve4601_
                                   _ctx4605_
                                   _src-phi4606_
                                   _id4595_))))
                           (let ((_K46124657_
                                  (lambda (_rest4627_ _hd4628_)
                                    (let ((_hd46294635_ _hd4628_))
                                      (let ((_E46314639_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd46294635_))))
                                        (let ((_K46324649_
                                               (lambda (_subst4642_)
                                                 (let ((_$e4646_
                                                        (let ((_key4644_
                                                               (if _subst4642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (table-ref _subst4642_ _id4595_ '#f)
                           '#f)))
                  (if _key4644_
                      (_resolve4601_ _ctx4605_ _src-phi4606_ _key4644_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e4646_
                                                       _$e4646_
                                                       (_lp4603_
                                                        (##structure-ref
                                                         _hd4628_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd4628_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest4627_))))))
                                          (if (##structure-instance-of?
                                               _hd46294635_
                                               (##type-id gx#expander-mark::t))
                                              (let ((_e46334652_
                                                     (##vector-ref
                                                      _hd46294635_
                                                      '1)))
                                                (let ((_subst4655_
                                                       _e46334652_))
                                                  (_K46324649_ _subst4655_)))
                                              (_E46314639_))))))))
                             (if (##pair? _rest46084616_)
                                 (let ((_hd46134660_ (##car _rest46084616_))
                                       (_tl46144662_ (##cdr _rest46084616_)))
                                   (let ((_hd4665_ _hd46134660_))
                                     (let ((_rest4667_ _tl46144662_))
                                       (_K46124657_ _rest4667_ _hd4665_))))
                                 (_else46104624_)))))))))
           _lp4603_)
         _ctx4598_
         _src-phi4597_
         _marks4599_))))
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
        (lambda _g5842_
          (let ((_g5841_ (length _g5842_)))
            (cond ((fx= _g5841_ 2) (apply gx#core-bind!__0 _g5842_))
                  ((fx= _g5841_ 3) (apply gx#core-bind!__1 _g5842_))
                  ((fx= _g5841_ 4) (apply gx#core-bind!__2 _g5842_))
                  ((fx= _g5841_ 5)
                   (apply gx#core-bind!__opt-lambda4469 _g5842_))
                  (else (error "No clause matching arguments" _g5842_))))))))
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
               (let ((__obj5813 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda5775
                    __obj5813
                    (gensym 'phi)
                    _super4399_)
                   __obj5813)))))
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
        (lambda _g5844_
          (let ((_g5843_ (length _g5844_)))
            (cond ((fx= _g5843_ 0) (apply gx#core-context-top__0 _g5844_))
                  ((fx= _g5843_ 1) (apply gx#core-context-top__1 _g5844_))
                  ((fx= _g5843_ 2)
                   (apply gx#core-context-top__opt-lambda4292 _g5844_))
                  (else (error "No clause matching arguments" _g5844_))))))))
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
        (lambda _g5846_
          (let ((_g5845_ (length _g5846_)))
            (cond ((fx= _g5845_ 0) (apply gx#core-context-root__0 _g5846_))
                  ((fx= _g5845_ 1)
                   (apply gx#core-context-root__opt-lambda4277 _g5846_))
                  (else (error "No clause matching arguments" _g5846_))))))))
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
        (lambda _g5848_
          (let ((_g5847_ (length _g5848_)))
            (cond ((fx= _g5847_ 0) (apply gx#core-context-rebind?__0 _g5848_))
                  ((fx= _g5847_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4261 _g5848_))
                  ((fx>= _g5847_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4261 _g5848_))
                  (else (error "No clause matching arguments" _g5848_))))))))
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
        (lambda _g5850_
          (let ((_g5849_ (length _g5850_)))
            (cond ((fx= _g5849_ 0)
                   (apply gx#core-context-namespace__0 _g5850_))
                  ((fx= _g5849_ 1)
                   (apply gx#core-context-namespace__opt-lambda4244 _g5850_))
                  (else (error "No clause matching arguments" _g5850_))))))))
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
        (lambda _g5852_
          (let ((_g5851_ (length _g5852_)))
            (cond ((fx= _g5851_ 1) (apply gx#expander-binding?__0 _g5852_))
                  ((fx= _g5851_ 2)
                   (apply gx#expander-binding?__opt-lambda4230 _g5852_))
                  (else (error "No clause matching arguments" _g5852_))))))))
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
        (lambda _g5854_
          (let ((_g5853_ (length _g5854_)))
            (cond ((fx= _g5853_ 1)
                   (apply gx#core-bound-identifier?__0 _g5854_))
                  ((fx= _g5853_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4199 _g5854_))
                  (else (error "No clause matching arguments" _g5854_))))))))
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
        (lambda _g5856_
          (let ((_g5855_ (length _g5856_)))
            (cond ((fx= _g5855_ 1) (apply gx#core-quote-syntax__0 _g5856_))
                  ((fx= _g5855_ 2) (apply gx#core-quote-syntax__1 _g5856_))
                  ((fx= _g5855_ 3) (apply gx#core-quote-syntax__2 _g5856_))
                  ((fx= _g5855_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4145 _g5856_))
                  (else (error "No clause matching arguments" _g5856_))))))))
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
        (lambda _g5858_
          (let ((_g5857_ (length _g5858_)))
            (cond ((fx= _g5857_ 1) (apply gx#core-resolve-path__0 _g5858_))
                  ((fx= _g5857_ 2)
                   (apply gx#core-resolve-path__opt-lambda4109 _g5858_))
                  (else (error "No clause matching arguments" _g5858_))))))))
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
        (lambda _g5860_
          (let ((_g5859_ (length _g5860_)))
            (cond ((fx= _g5859_ 1) (apply gx#syntax-local-e__0 _g5860_))
                  ((fx= _g5859_ 2)
                   (apply gx#syntax-local-e__opt-lambda4057 _g5860_))
                  (else (error "No clause matching arguments" _g5860_))))))))
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
        (lambda _g5862_
          (let ((_g5861_ (length _g5862_)))
            (cond ((fx= _g5861_ 1) (apply gx#syntax-local-value__0 _g5862_))
                  ((fx= _g5861_ 2)
                   (apply gx#syntax-local-value__opt-lambda4041 _g5862_))
                  (else (error "No clause matching arguments" _g5862_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4040_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4040_))))
