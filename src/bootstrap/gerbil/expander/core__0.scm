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
    (lambda _$args5847_
      (apply make-struct-instance gx#expander-context::t _$args5847_)))
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
    (lambda _$args5844_
      (apply make-struct-instance gx#root-context::t _$args5844_)))
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
    (lambda _$args5841_
      (apply make-struct-instance gx#phi-context::t _$args5841_)))
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
    (lambda _$args5838_
      (apply make-struct-instance gx#top-context::t _$args5838_)))
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
    (lambda _$args5835_
      (apply make-struct-instance gx#module-context::t _$args5835_)))
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
    (lambda _$args5832_
      (apply make-struct-instance gx#prelude-context::t _$args5832_)))
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
    (lambda _$args5829_
      (apply make-struct-instance gx#local-context::t _$args5829_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5811
      (lambda (_self5813_ _id5814_ _super5815_)
        (struct-instance-init!
         _self5813_
         _id5814_
         (make-hash-table-eq)
         _super5815_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5820_ _id5821_)
          (let ((_super5823_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5811
             _self5820_
             _id5821_
             _super5823_))))
      (define gx#phi-context:::init!
        (lambda _g5851_
          (let ((_g5850_ (length _g5851_)))
            (cond ((fx= _g5850_ 2) (apply gx#phi-context:::init!__0 _g5851_))
                  ((fx= _g5850_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5811 _g5851_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g5851_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5797
      (lambda (_self5799_ _super5800_)
        (struct-instance-init!
         _self5799_
         (gensym 'L)
         (make-hash-table-eq)
         _super5800_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5805_)
          (let ((_super5807_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5797
             _self5805_
             _super5807_))))
      (define gx#local-context:::init!
        (lambda _g5853_
          (let ((_g5852_ (length _g5853_)))
            (cond ((fx= _g5852_ 1) (apply gx#local-context:::init!__0 _g5853_))
                  ((fx= _g5852_ 2)
                   (apply gx#local-context:::init!__opt-lambda5797 _g5853_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g5853_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5795_
      (apply make-struct-instance gx#binding::t _$args5795_)))
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
    (lambda _$args5792_
      (apply make-struct-instance gx#runtime-binding::t _$args5792_)))
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
    (lambda _$args5789_
      (apply make-struct-instance gx#local-binding::t _$args5789_)))
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
    (lambda _$args5786_
      (apply make-struct-instance gx#top-binding::t _$args5786_)))
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
    (lambda _$args5783_
      (apply make-struct-instance gx#module-binding::t _$args5783_)))
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
    (lambda _$args5780_
      (apply make-struct-instance gx#extern-binding::t _$args5780_)))
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
    (lambda _$args5777_
      (apply make-struct-instance gx#syntax-binding::t _$args5777_)))
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
    (lambda _$args5774_
      (apply make-struct-instance gx#import-binding::t _$args5774_)))
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
    (lambda _$args5771_
      (apply make-struct-instance gx#alias-binding::t _$args5771_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5768_
      (apply make-struct-instance gx#expander::t _$args5768_)))
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
    (lambda _$args5765_
      (apply make-struct-instance gx#core-expander::t _$args5765_)))
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
    (lambda _$args5762_
      (apply make-struct-instance gx#expression-form::t _$args5762_)))
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
    (lambda _$args5759_
      (apply make-struct-instance gx#special-form::t _$args5759_)))
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
    (lambda _$args5756_
      (apply make-struct-instance gx#definition-form::t _$args5756_)))
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
    (lambda _$args5753_
      (apply make-struct-instance gx#top-special-form::t _$args5753_)))
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
    (lambda _$args5750_
      (apply make-struct-instance gx#module-special-form::t _$args5750_)))
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
    (lambda _$args5747_
      (apply make-struct-instance gx#feature-expander::t _$args5747_)))
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
    (lambda _$args5744_
      (apply make-struct-instance gx#private-feature-expander::t _$args5744_)))
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
    (lambda _$args5741_
      (apply make-struct-instance gx#reserved-expander::t _$args5741_)))
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
    (lambda _$args5738_
      (apply make-struct-instance gx#macro-expander::t _$args5738_)))
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
    (lambda _$args5735_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5735_)))
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
    (lambda _$args5732_
      (apply make-struct-instance gx#user-expander::t _$args5732_)))
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
    (lambda _$args5729_
      (apply make-struct-instance gx#expander-mark::t _$args5729_)))
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
    (lambda _$args5726_
      (apply make-struct-instance gx#syntax-error::t _$args5726_)))
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
    (lambda (_where5721_ _message5722_ _stx5723_ . _details5724_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5722_
              (cons _stx5723_ _details5724_)
              _where5721_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5706
      (lambda (_stx5708_ _expression?5709_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5690 _stx5708_ _expression?5709_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5714_)
          (let ((_expression?5716_ '#f))
            (gx#eval-syntax__opt-lambda5706 _stx5714_ _expression?5716_))))
      (define gx#eval-syntax
        (lambda _g5855_
          (let ((_g5854_ (length _g5855_)))
            (cond ((fx= _g5854_ 1) (apply gx#eval-syntax__0 _g5855_))
                  ((fx= _g5854_ 2)
                   (apply gx#eval-syntax__opt-lambda5706 _g5855_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g5855_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5705_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5705_))))
  (begin
    (define gx#core-expand__opt-lambda5690
      (lambda (_stx5692_ _expression?5693_)
        (if _expression?5693_
            (gx#core-expand-expression _stx5692_)
            (gx#core-expand-top _stx5692_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5698_)
          (let ((_expression?5700_ '#f))
            (gx#core-expand__opt-lambda5690 _stx5698_ _expression?5700_))))
      (define gx#core-expand
        (lambda _g5857_
          (let ((_g5856_ (length _g5857_)))
            (cond ((fx= _g5856_ 1) (apply gx#core-expand__0 _g5857_))
                  ((fx= _g5856_ 2)
                   (apply gx#core-expand__opt-lambda5690 _g5857_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g5857_))))))))
  (define gx#core-expand-top
    (lambda (_stx5659_)
      (let* ((_stx5661_ (gx#core-expand*__0 _stx5659_))
             (_e56625669_ _stx5661_)
             (_E56645673_ (lambda () (gx#core-expand-expression _stx5661_)))
             (_E56635687_
              (lambda ()
                (if (gx#stx-pair? _e56625669_)
                    (let ((_e56655677_ (gx#syntax-e _e56625669_)))
                      (let ((_hd56665680_ (##car _e56655677_))
                            (_tl56675682_ (##cdr _e56655677_)))
                        (let ((_form5685_ _hd56665680_))
                          (if (gx#core-bound-identifier?__0 _form5685_)
                              _stx5661_
                              (_E56645673_)))))
                    (_E56645673_)))))
        (_E56635687_))))
  (define gx#core-expand-expression
    (lambda (_stx5581_)
      (letrec ((_sealed-expression?5583_
                (lambda (_hd5629_)
                  (if (gx#sealed-syntax? _hd5629_)
                      (let* ((_e56305637_ _hd5629_)
                             (_E56325641_ (lambda () '#f))
                             (_E56315655_
                              (lambda ()
                                (if (gx#stx-pair? _e56305637_)
                                    (let ((_e56335645_
                                           (gx#syntax-e _e56305637_)))
                                      (let ((_hd56345648_ (##car _e56335645_))
                                            (_tl56355650_ (##cdr _e56335645_)))
                                        (let ((_form5653_ _hd56345648_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4229
                                               _form5653_
                                               gx#expression-form-binding?)
                                              (_E56325641_)))))
                                    (_E56325641_)))))
                        (_E56315655_))
                      '#f)))
               (_illegal-expression5584_
                (lambda (_hd5627_ . _g5858_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx5581_
                   _hd5627_)))
               (_expand-e5585_
                (lambda (_form5622_ _hd5623_)
                  (let ((_bind5625_
                         (if (##structure-instance-of?
                              _form5622_
                              'gx#binding::t)
                             _form5622_
                             (gx#resolve-identifier__0 _form5622_))))
                    (if (gx#core-expander-binding? _bind5625_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind5625_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd5623_
                          (gx#stx-source _stx5581_)))
                        (if (##structure-direct-instance-of?
                             _bind5625_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind5625_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd5623_
                               (gx#stx-source _stx5581_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx5581_
                             _form5622_)))))))
        (let ((_hd5587_ (gx#core-expand-head _stx5581_)))
          (if (_sealed-expression?5583_ _hd5587_)
              _hd5587_
              (if (gx#stx-pair? _hd5587_)
                  (let* ((_e55885595_ _hd5587_)
                         (_E55905599_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e55885595_)))
                         (_E55895618_
                          (lambda ()
                            (if (gx#stx-pair? _e55885595_)
                                (let ((_e55915603_ (gx#syntax-e _e55885595_)))
                                  (let ((_hd55925606_ (##car _e55915603_))
                                        (_tl55935608_ (##cdr _e55915603_)))
                                    (let ((_form5611_ _hd55925606_))
                                      (if '#t
                                          (let ((_bind5613_
                                                 (if (gx#identifier?
                                                      _form5611_)
                                                     (gx#resolve-identifier__0
                                                      _form5611_)
                                                     '#f)))
                                            (if (let ((_$e5615_
                                                       (not _bind5613_)))
                                                  (if _$e5615_
                                                      _$e5615_
                                                      (not (gx#core-expander-binding?
                                                            _bind5613_))))
                                                (_expand-e5585_
                                                 '%%app
                                                 (cons '%%app _hd5587_))
                                                (if (eq? (##structure-ref
                                                          _bind5613_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd5587_
                                                     _illegal-expression5584_)
                                                    (if (gx#expression-form-binding?
                                                         _bind5613_)
                                                        (_expand-e5585_
                                                         _bind5613_
                                                         _hd5587_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind5613_)
                                                            (gx#core-expand-expression
                                                             (_expand-e5585_
                                                              _bind5613_
                                                              _hd5587_))
                                                            (_illegal-expression5584_
                                                             _hd5587_))))))
                                          (_E55905599_)))))
                                (_E55905599_)))))
                    (_E55895618_))
                  (if (gx#core-bound-identifier?__0 _hd5587_)
                      (_illegal-expression5584_ _hd5587_)
                      (if (gx#identifier? _hd5587_)
                          (_expand-e5585_
                           '%%ref
                           (cons '%%ref (cons _hd5587_ '())))
                          (if (gx#stx-datum? _hd5587_)
                              (_expand-e5585_
                               '%#quote
                               (cons '%#quote (cons _hd5587_ '())))
                              (_illegal-expression5584_ _hd5587_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5576_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5579_ (gx#core-expand-expression _stx5576_)))
           (values _stx5579_ (gx#eval-syntax* _stx5579_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5555
      (lambda (_stx5557_ _stop?5558_)
        (let _lp5560_ ((_stx5562_ _stx5557_))
          (if (_stop?5558_ _stx5562_)
              _stx5562_
              (let ((_rstx5564_ (gx#core-expand1 _stx5562_)))
                (if (eq? _stx5562_ _rstx5564_)
                    _stx5562_
                    (_lp5560_ _rstx5564_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5569_)
          (let ((_stop?5571_ false))
            (gx#core-expand*__opt-lambda5555 _stx5569_ _stop?5571_))))
      (define gx#core-expand*
        (lambda _g5860_
          (let ((_g5859_ (length _g5860_)))
            (cond ((fx= _g5859_ 1) (apply gx#core-expand*__0 _g5860_))
                  ((fx= _g5859_ 2)
                   (apply gx#core-expand*__opt-lambda5555 _g5860_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g5860_))))))))
  (define gx#core-expand1
    (lambda (_stx5513_)
      (letrec ((_step5515_
                (lambda (_hd5552_)
                  (let ((_bind5554_ (gx#resolve-identifier__0 _hd5552_)))
                    (if (##structure-instance-of?
                         _bind5554_
                         'gx#runtime-binding::t)
                        _stx5513_
                        (if (##structure-direct-instance-of?
                             _bind5554_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind5554_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx5513_)
                            (if (not _bind5554_)
                                _stx5513_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx5513_))))))))
        (let* ((_e55165524_ _stx5513_)
               (_E55225528_ (lambda () _stx5513_))
               (_E55185534_
                (lambda ()
                  (let ((_hd5532_ _e55165524_))
                    (if (gx#identifier? _hd5532_)
                        (_step5515_ _hd5532_)
                        (_E55225528_)))))
               (_E55175548_
                (lambda ()
                  (if (gx#stx-pair? _e55165524_)
                      (let ((_e55195538_ (gx#syntax-e _e55165524_)))
                        (let ((_hd55205541_ (##car _e55195538_))
                              (_tl55215543_ (##cdr _e55195538_)))
                          (let ((_hd5546_ _hd55205541_))
                            (if (gx#identifier? _hd5546_)
                                (_step5515_ _hd5546_)
                                (_E55185534_)))))
                      (_E55185534_)))))
          (_E55175548_)))))
  (define gx#core-expand-head
    (lambda (_stx5479_)
      (letrec ((_stop?5481_
                (lambda (_stx5483_)
                  (let* ((_e54845491_ _stx5483_)
                         (_E54865495_ (lambda () '#f))
                         (_E54855509_
                          (lambda ()
                            (if (gx#stx-pair? _e54845491_)
                                (let ((_e54875499_ (gx#syntax-e _e54845491_)))
                                  (let ((_hd54885502_ (##car _e54875499_))
                                        (_tl54895504_ (##cdr _e54875499_)))
                                    (let ((_hd5507_ _hd54885502_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5507_)
                                          (_E54865495_)))))
                                (_E54865495_)))))
                    (_E54855509_)))))
        (gx#core-expand*__opt-lambda5555 _stx5479_ _stop?5481_))))
  (begin
    (define gx#core-expand-block__opt-lambda5283
      (lambda (_stx5285_ _expand-special5286_ _begin-form5287_ _expand-e5288_)
        (letrec ((_expand-splice5290_
                  (lambda (_hd5453_ _body5454_ _rest5455_ _r5456_)
                    (if (gx#stx-list? _body5454_)
                        (_K5294_ (gx#stx-foldr cons _rest5455_ _body5454_)
                                 _r5456_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5285_
                         _hd5453_))))
                 (_expand-cond-expand5291_
                  (lambda (_hd5449_ _rest5450_ _r5451_)
                    (_K5294_ (cons (gx#core-expand-cond-expand% _hd5449_)
                                   _rest5450_)
                             _r5451_)))
                 (_expand-include5292_
                  (lambda (_hd5398_ _rest5399_ _r5400_)
                    (let* ((_e54015411_ _hd5398_)
                           (_E54035415_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e54015411_)))
                           (_E54025445_
                            (lambda ()
                              (if (gx#stx-pair? _e54015411_)
                                  (let ((_e54045419_
                                         (gx#syntax-e _e54015411_)))
                                    (let ((_hd54055422_ (##car _e54045419_))
                                          (_tl54065424_ (##cdr _e54045419_)))
                                      (if (gx#stx-pair? _tl54065424_)
                                          (let ((_e54075427_
                                                 (gx#syntax-e _tl54065424_)))
                                            (let ((_hd54085430_
                                                   (##car _e54075427_))
                                                  (_tl54095432_
                                                   (##cdr _e54075427_)))
                                              (let ((_path5435_ _hd54085430_))
                                                (if (gx#stx-null? _tl54095432_)
                                                    (if (gx#stx-string?
                                                         _path5435_)
                                                        (let* ((_rpath5437_
                                                                (gx#core-resolve-path__opt-lambda4139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path5435_
                         (gx#stx-source _hd5398_)))
                       (_block5439_
                        (gx#core-expand-include%__opt-lambda5032
                         _hd5398_
                         _rpath5437_))
                       (_rbody5442_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__opt-lambda5283
                            _block5439_
                            _expand-special5286_
                            '#f
                            _expand-e5288_))
                         gx#current-expander-path
                         (cons _rpath5437_ (gx#current-expander-path)))))
                  (_K5294_ _rest5399_ (foldr1 cons _r5400_ _rbody5442_)))
                (_E54035415_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E54035415_)))))
                                          (_E54035415_))))
                                  (_E54035415_)))))
                      (_E54025445_))))
                 (_expand-expression5293_
                  (lambda (_hd5394_ _rest5395_ _r5396_)
                    (_K5294_ _rest5395_
                             (cons (_expand-e5288_ _hd5394_) _r5396_))))
                 (_K5294_ (lambda (_rest5324_ _r5325_)
                            (let* ((_e53265333_ _rest5324_)
                                   (_E53285337_
                                    (lambda ()
                                      (if _begin-form5287_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form5287_
                                            (reverse _r5325_))
                                           (gx#stx-source _stx5285_))
                                          _r5325_)))
                                   (_E53275390_
                                    (lambda ()
                                      (if (gx#stx-pair? _e53265333_)
                                          (let ((_e53295341_
                                                 (gx#syntax-e _e53265333_)))
                                            (let ((_hd53305344_
                                                   (##car _e53295341_))
                                                  (_tl53315346_
                                                   (##cdr _e53295341_)))
                                              (let* ((_hd5349_ _hd53305344_)
                                                     (_rest5351_ _tl53315346_))
                                                (if '#t
                                                    (let* ((_hd5353_
                                                            (gx#core-expand-head
                                                             _hd5349_))
                                                           (_e53545361_
                                                            _hd5353_)
                                                           (_E53565365_
                                                            (lambda ()
                                                              (_expand-expression5293_
                                                               _hd5353_
                                                               _rest5351_
                                                               _r5325_)))
                                                           (_E53555386_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e53545361_)
                          (let ((_e53575369_ (gx#syntax-e _e53545361_)))
                            (let ((_hd53585372_ (##car _e53575369_))
                                  (_tl53595374_ (##cdr _e53575369_)))
                              (let* ((_form5377_ _hd53585372_)
                                     (_body5379_ _tl53595374_))
                                (if '#t
                                    (let ((_bind5381_
                                           (if (gx#identifier? _form5377_)
                                               (gx#resolve-identifier__0
                                                _form5377_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind5381_)
                                          (let ((_$e5383_
                                                 (##structure-ref
                                                  _bind5381_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? _$e5383_ '%#begin)
                                                (_expand-splice5290_
                                                 _hd5353_
                                                 _body5379_
                                                 _rest5351_
                                                 _r5325_)
                                                (if (eq? _$e5383_
                                                         '%#cond-expand)
                                                    (_expand-cond-expand5291_
                                                     _hd5353_
                                                     _rest5351_
                                                     _r5325_)
                                                    (if (eq? _$e5383_
                                                             '%#include)
                                                        (_expand-include5292_
                                                         _hd5353_
                                                         _rest5351_
                                                         _r5325_)
                                                        (_expand-special5286_
                                                         _hd5353_
                                                         _K5294_
                                                         _rest5351_
                                                         _r5325_)))))
                                          (_expand-expression5293_
                                           _hd5353_
                                           _rest5351_
                                           _r5325_)))
                                    (_E53565365_)))))
                          (_E53565365_)))))
              (_E53555386_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E53285337_)))))
                                          (_E53285337_)))))
                              (_E53275390_)))))
          (let* ((_e52955302_ _stx5285_)
                 (_E52975306_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e52955302_)))
                 (_E52965320_
                  (lambda ()
                    (if (gx#stx-pair? _e52955302_)
                        (let ((_e52985310_ (gx#syntax-e _e52955302_)))
                          (let ((_hd52995313_ (##car _e52985310_))
                                (_tl53005315_ (##cdr _e52985310_)))
                            (let ((_body5318_ _tl53005315_))
                              (if (gx#stx-list? _body5318_)
                                  (_K5294_ _body5318_ '())
                                  (_E52975306_)))))
                        (_E52975306_)))))
            (_E52965320_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5461_ _expand-special5462_)
          (let* ((_begin-form5464_ '%#begin)
                 (_expand-e5466_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5283
             _stx5461_
             _expand-special5462_
             _begin-form5464_
             _expand-e5466_))))
      (define gx#core-expand-block__1
        (lambda (_stx5468_ _expand-special5469_ _begin-form5470_)
          (let ((_expand-e5472_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5283
             _stx5468_
             _expand-special5469_
             _begin-form5470_
             _expand-e5472_))))
      (define gx#core-expand-block
        (lambda _g5862_
          (let ((_g5861_ (length _g5862_)))
            (cond ((fx= _g5861_ 2) (apply gx#core-expand-block__0 _g5862_))
                  ((fx= _g5861_ 3) (apply gx#core-expand-block__1 _g5862_))
                  ((fx= _g5861_ 4)
                   (apply gx#core-expand-block__opt-lambda5283 _g5862_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g5862_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5233_ _expand-special5234_)
      (let* ((_g52355246_
              (gx#core-expand-block__1 _stx5233_ _expand-special5234_ '#f))
             (_E52395250_
              (lambda () (error '"No clause matching" _g52355246_)))
             (_try-match52385261_
              (lambda ()
                (let* ((_K52405256_
                        (lambda (_body5254_)
                          (gx#core-quote-syntax__1
                           (gx#core-cons '%#begin (reverse _body5254_))
                           (gx#stx-source _stx5233_))))
                       (_body5259_ _g52355246_))
                  (_K52405256_ _body5259_))))
             (_try-match52375277_
              (lambda ()
                (let ((_K52415267_ (lambda (_expr5265_) _expr5265_)))
                  (if (##pair? _g52355246_)
                      (let ((_hd52425270_ (##car _g52355246_))
                            (_tl52435272_ (##cdr _g52355246_)))
                        (let ((_expr5275_ _hd52425270_))
                          (if (##null? _tl52435272_)
                              (_K52415267_ _expr5275_)
                              (_try-match52385261_))))
                      (_try-match52385261_)))))
             (_K52445281_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; empty block"
                 _stx5233_))))
        (if (##null? _g52355246_) (_K52445281_) (_try-match52375277_)))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5091_)
      (letrec ((_satisfied?5093_
                (lambda (_condition5191_)
                  (let* ((_e51925200_ _condition5191_)
                         (_E51955204_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e51925200_)))
                         (_E51945223_
                          (lambda ()
                            (if (gx#stx-pair? _e51925200_)
                                (let ((_e51965208_ (gx#syntax-e _e51925200_)))
                                  (let ((_hd51975211_ (##car _e51965208_))
                                        (_tl51985213_ (##cdr _e51965208_)))
                                    (let* ((_combinator5216_ _hd51975211_)
                                           (_body5218_ _tl51985213_))
                                      (if (gx#stx-list? _body5218_)
                                          (let ((_$e5220_
                                                 (gx#stx-e _combinator5216_)))
                                            (if (eq? _$e5220_ 'not)
                                                (not (gx#stx-ormap
                                                      _satisfied?5093_
                                                      _body5218_))
                                                (if (eq? _$e5220_ 'and)
                                                    (gx#stx-andmap
                                                     _satisfied?5093_
                                                     _body5218_)
                                                    (if (eq? _$e5220_ 'or)
                                                        (gx#stx-ormap
                                                         _satisfied?5093_
                                                         _body5218_)
                                                        (if (eq? _$e5220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'defined)
                    (gx#stx-andmap gx#core-resolve-identifier _body5218_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx5091_
                     _combinator5216_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E51955204_)))))
                                (_E51955204_))))
                         (_E51935229_
                          (lambda ()
                            (let ((_id5227_ _e51925200_))
                              (if (gx#identifier? _id5227_)
                                  (gx#core-bound-identifier?__opt-lambda4229
                                   _id5227_
                                   gx#feature-binding?)
                                  (_E51945223_))))))
                    (_E51935229_))))
               (_loop5094_
                (lambda (_rest5124_)
                  (let* ((_e51255133_ _rest5124_)
                         (_E51315137_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e51255133_)))
                         (_E51275141_
                          (lambda ()
                            (if (gx#stx-null? _e51255133_)
                                (if '#t '() (_E51315137_))
                                (_E51315137_))))
                         (_E51265187_
                          (lambda ()
                            (if (gx#stx-pair? _e51255133_)
                                (let ((_e51285145_ (gx#syntax-e _e51255133_)))
                                  (let ((_hd51295148_ (##car _e51285145_))
                                        (_tl51305150_ (##cdr _e51285145_)))
                                    (let* ((_hd5153_ _hd51295148_)
                                           (_rest5155_ _tl51305150_))
                                      (if '#t
                                          (let* ((_e51565163_ _hd5153_)
                                                 (_E51585167_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e51565163_)))
                                                 (_E51575183_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e51565163_)
                                                        (let ((_e51595171_
                                                               (gx#syntax-e
                                                                _e51565163_)))
                                                          (let ((_hd51605174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e51595171_))
                        (_tl51615176_ (##cdr _e51595171_)))
                    (let* ((_condition5179_ _hd51605174_)
                           (_body5181_ _tl51615176_))
                      (if '#t
                          (if (gx#stx-eq? _condition5179_ 'else)
                              (if (gx#stx-null? _rest5155_)
                                  _body5181_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx5091_
                                   _hd5153_))
                              (if (_satisfied?5093_ _condition5179_)
                                  _body5181_
                                  (_loop5094_ _rest5155_)))
                          (_E51585167_)))))
                (_E51585167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E51575183_))
                                          (_E51275141_)))))
                                (_E51275141_)))))
                    (_E51265187_)))))
        (let* ((_e50955102_ _stx5091_)
               (_E50975106_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e50955102_)))
               (_E50965120_
                (lambda ()
                  (if (gx#stx-pair? _e50955102_)
                      (let ((_e50985110_ (gx#syntax-e _e50955102_)))
                        (let ((_hd50995113_ (##car _e50985110_))
                              (_tl51005115_ (##cdr _e50985110_)))
                          (let ((_clauses5118_ _tl51005115_))
                            (if (gx#stx-list? _clauses5118_)
                                (gx#core-cons
                                 'begin
                                 (_loop5094_ _clauses5118_))
                                (_E50975106_)))))
                      (_E50975106_)))))
          (_E50965120_)))))
  (begin
    (define gx#core-expand-include%__opt-lambda5032
      (lambda (_stx5034_ _rpath5035_)
        (let* ((_e50365046_ _stx5034_)
               (_E50385050_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e50365046_)))
               (_E50375077_
                (lambda ()
                  (if (gx#stx-pair? _e50365046_)
                      (let ((_e50395054_ (gx#syntax-e _e50365046_)))
                        (let ((_hd50405057_ (##car _e50395054_))
                              (_tl50415059_ (##cdr _e50395054_)))
                          (if (gx#stx-pair? _tl50415059_)
                              (let ((_e50425062_ (gx#syntax-e _tl50415059_)))
                                (let ((_hd50435065_ (##car _e50425062_))
                                      (_tl50445067_ (##cdr _e50425062_)))
                                  (let ((_path5070_ _hd50435065_))
                                    (if (gx#stx-null? _tl50445067_)
                                        (if (gx#stx-string? _path5070_)
                                            (let ((_rpath5075_
                                                   (let ((_$e5072_
                                                          _rpath5035_))
                                                     (if _$e5072_
                                                         _$e5072_
                                                         (gx#core-resolve-path__opt-lambda4139
                                                          _path5070_
                                                          (gx#stx-source
                                                           _stx5034_))))))
                                              (if (member _rpath5075_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx5034_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath5075_))
                                                    (gx#stx-source
                                                     _stx5034_)))))
                                            (_E50385050_))
                                        (_E50385050_)))))
                              (_E50385050_))))
                      (_E50385050_)))))
          (_E50375077_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5084_)
          (let ((_rpath5086_ '#f))
            (gx#core-expand-include%__opt-lambda5032 _stx5084_ _rpath5086_))))
      (define gx#core-expand-include%
        (lambda _g5864_
          (let ((_g5863_ (length _g5864_)))
            (cond ((fx= _g5863_ 1) (apply gx#core-expand-include%__0 _g5864_))
                  ((fx= _g5863_ 2)
                   (apply gx#core-expand-include%__opt-lambda5032 _g5864_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g5864_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda5001
      (lambda (_K5003_ _stx5004_ _method5005_)
        (if (procedure? _K5003_)
            (let ((_$e5007_ (gx#stx-source _stx5004_)))
              (if _$e5007_
                  ((lambda (_g50095011_)
                     (gx#stx-wrap-source (_K5003_ _stx5004_) _g50095011_))
                   _$e5007_)
                  (_K5003_ _stx5004_)))
            (let ((_$e5014_ (bound-method-ref _K5003_ _method5005_)))
              (if _$e5014_
                  ((lambda (_g50165018_)
                     (gx#core-apply-expander__opt-lambda5001
                      _g50165018_
                      _stx5004_
                      _method5005_))
                   _$e5014_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx5004_
                   _method5005_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K5024_ _stx5025_)
          (let ((_method5027_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda5001
             _K5024_
             _stx5025_
             _method5027_))))
      (define gx#core-apply-expander
        (lambda _g5866_
          (let ((_g5865_ (length _g5866_)))
            (cond ((fx= _g5865_ 2) (apply gx#core-apply-expander__0 _g5866_))
                  ((fx= _g5865_ 3)
                   (apply gx#core-apply-expander__opt-lambda5001 _g5866_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g5866_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4999_ _stx5000_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx5000_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4974_ _stx4975_)
      (let* ((_self49764982_ _self4974_)
             (_E49784986_
              (lambda () (error '"No clause matching" _self49764982_)))
             (_K49794991_
              (lambda (_K4989_)
                (gx#core-apply-expander__0 _K4989_ _stx4975_))))
        (if (##structure-instance-of?
             _self49764982_
             (##type-id gx#macro-expander::t))
            (let* ((_e49804994_ (##vector-ref _self49764982_ '1))
                   (_K4997_ _e49804994_))
              (_K49794991_ _K4997_))
            (_E49784986_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4949_ _stx4950_)
      (if (gx#sealed-syntax? _stx4950_)
          _stx4950_
          (let* ((_self49514957_ _self4949_)
                 (_E49534961_
                  (lambda () (error '"No clause matching" _self49514957_)))
                 (_K49544966_
                  (lambda (_K4964_)
                    (gx#core-apply-expander__0 _K4964_ _stx4950_))))
            (if (##structure-instance-of?
                 _self49514957_
                 (##type-id gx#core-expander::t))
                (let* ((_e49554969_ (##vector-ref _self49514957_ '1))
                       (_K4972_ _e49554969_))
                  (_K49544966_ _K4972_))
                (_E49534961_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4931
      (lambda (_self4933_ _stx4934_ _top?4935_)
        (if (_top?4935_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4933_ _stx4934_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4934_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4940_ _stx4941_)
          (let ((_top?4943_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4931
             _self4940_
             _stx4941_
             _top?4943_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5868_
          (let ((_g5867_ (length _g5868_)))
            (cond ((fx= _g5867_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5868_))
                  ((fx= _g5867_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4931
                          _g5868_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g5868_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4929_ _stx4930_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4931
       _self4929_
       _stx4930_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4876_ _stx4877_)
      (let* ((_self48784884_ _self4876_)
             (_E48804888_
              (lambda () (error '"No clause matching" _self48784884_)))
             (_K48814921_
              (lambda (_id4891_)
                (let* ((_e48924899_ _stx4877_)
                       (_E48944903_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e48924899_)))
                       (_E48934917_
                        (lambda ()
                          (if (gx#stx-pair? _e48924899_)
                              (let ((_e48954907_ (gx#syntax-e _e48924899_)))
                                (let ((_hd48964910_ (##car _e48954907_))
                                      (_tl48974912_ (##cdr _e48954907_)))
                                  (let ((_body4915_ _tl48974912_))
                                    (if '#t
                                        (gx#core-cons _id4891_ _body4915_)
                                        (_E48944903_)))))
                              (_E48944903_)))))
                  (_E48934917_)))))
        (if (##structure-instance-of?
             _self48784884_
             (##type-id gx#rename-macro-expander::t))
            (let* ((_e48824924_ (##vector-ref _self48784884_ '1))
                   (_id4927_ _e48824924_))
              (_K48814921_ _id4927_))
            (_E48804888_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4822
      (lambda (_self4824_ _stx4825_ _method4826_)
        (let* ((_self48274835_ _self4824_)
               (_E48294839_
                (lambda () (error '"No clause matching" _self48274835_)))
               (_K48304846_
                (lambda (_phi4842_ _ctx4843_ _K4844_)
                  (gx#core-apply-user-macro
                   _K4844_
                   _stx4825_
                   _ctx4843_
                   _phi4842_
                   _method4826_))))
          (if (##structure-instance-of?
               _self48274835_
               (##type-id gx#user-expander::t))
              (let* ((_e48314849_ (##vector-ref _self48274835_ '1))
                     (_K4852_ _e48314849_)
                     (_e48324854_ (##vector-ref _self48274835_ '2))
                     (_ctx4857_ _e48324854_)
                     (_e48334859_ (##vector-ref _self48274835_ '3))
                     (_phi4862_ _e48334859_))
                (_K48304846_ _phi4862_ _ctx4857_ _K4852_))
              (_E48294839_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4867_ _stx4868_)
          (let ((_method4870_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4822
             _self4867_
             _stx4868_
             _method4870_))))
      (define gx#core-apply-user-expander
        (lambda _g5870_
          (let ((_g5869_ (length _g5870_)))
            (cond ((fx= _g5869_ 2)
                   (apply gx#core-apply-user-expander__0 _g5870_))
                  ((fx= _g5869_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4822 _g5870_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g5870_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4814_ _stx4815_ _ctx4816_ _phi4817_ _method4818_)
      (let ((_mark4820_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4816_
              _phi4817_
              _stx4815_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda5001
             _K4814_
             (gx#stx-apply-mark _stx4815_ _mark4820_)
             _method4818_)
            _mark4820_))
         gx#current-expander-marks
         (cons _mark4820_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4786
      (lambda (_stx4788_ _phi4789_ _ctx4790_)
        (let _lp4792_ ((_bind4794_
                        (gx#core-resolve-identifier__opt-lambda4716
                         _stx4788_
                         _phi4789_
                         _ctx4790_)))
          (if (##structure-direct-instance-of?
               _bind4794_
               'gx#import-binding::t)
              (_lp4792_
               (##direct-structure-ref _bind4794_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind4794_
                   'gx#alias-binding::t)
                  (_lp4792_
                   (gx#core-resolve-identifier__opt-lambda4716
                    (##direct-structure-ref
                     _bind4794_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi4789_
                    _ctx4790_))
                  _bind4794_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4799_)
          (let* ((_phi4801_ (gx#current-expander-phi))
                 (_ctx4803_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4786
             _stx4799_
             _phi4801_
             _ctx4803_))))
      (define gx#resolve-identifier__1
        (lambda (_stx4805_ _phi4806_)
          (let ((_ctx4808_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4786
             _stx4805_
             _phi4806_
             _ctx4808_))))
      (define gx#resolve-identifier
        (lambda _g5872_
          (let ((_g5871_ (length _g5872_)))
            (cond ((fx= _g5871_ 1) (apply gx#resolve-identifier__0 _g5872_))
                  ((fx= _g5871_ 2) (apply gx#resolve-identifier__1 _g5872_))
                  ((fx= _g5871_ 3)
                   (apply gx#resolve-identifier__opt-lambda4786 _g5872_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g5872_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4744
      (lambda (_stx4746_ _val4747_ _rebind?4748_ _phi4749_ _ctx4750_)
        (let ((_rebind?4752_
               (if (not _rebind?4748_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4748_) _rebind?4748_ true))))
          (gx#core-bind!__opt-lambda4505
           (gx#core-identifier-key _stx4746_)
           _val4747_
           _rebind?4752_
           _phi4749_
           _ctx4750_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4757_ _val4758_)
          (let* ((_rebind?4760_ '#f)
                 (_phi4762_ (gx#current-expander-phi))
                 (_ctx4764_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4744
             _stx4757_
             _val4758_
             _rebind?4760_
             _phi4762_
             _ctx4764_))))
      (define gx#bind-identifier!__1
        (lambda (_stx4766_ _val4767_ _rebind?4768_)
          (let* ((_phi4770_ (gx#current-expander-phi))
                 (_ctx4772_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4744
             _stx4766_
             _val4767_
             _rebind?4768_
             _phi4770_
             _ctx4772_))))
      (define gx#bind-identifier!__2
        (lambda (_stx4774_ _val4775_ _rebind?4776_ _phi4777_)
          (let ((_ctx4779_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4744
             _stx4774_
             _val4775_
             _rebind?4776_
             _phi4777_
             _ctx4779_))))
      (define gx#bind-identifier!
        (lambda _g5874_
          (let ((_g5873_ (length _g5874_)))
            (cond ((fx= _g5873_ 2) (apply gx#bind-identifier!__0 _g5874_))
                  ((fx= _g5873_ 3) (apply gx#bind-identifier!__1 _g5874_))
                  ((fx= _g5873_ 4) (apply gx#bind-identifier!__2 _g5874_))
                  ((fx= _g5873_ 5)
                   (apply gx#bind-identifier!__opt-lambda4744 _g5874_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g5874_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4716
      (lambda (_stx4718_ _phi4719_ _ctx4720_)
        (let _lp4722_ ((_e4724_ _stx4718_)
                       (_marks4725_ (gx#current-expander-marks)))
          (if (symbol? _e4724_)
              (gx#core-resolve-binding
               _e4724_
               _phi4719_
               _phi4719_
               _ctx4720_
               (reverse _marks4725_))
              (if (gx#identifier-quote? _e4724_)
                  (gx#core-resolve-binding
                   (##structure-ref _e4724_ '1 AST::t '#f)
                   _phi4719_
                   '0
                   (##direct-structure-ref _e4724_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e4724_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e4724_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e4724_ '1 AST::t '#f)
                       _phi4719_
                       _phi4719_
                       _ctx4720_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e4724_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks4725_))
                      (if (##structure-direct-instance-of?
                           _e4724_
                           'gx#syntax-wrap::t)
                          (_lp4722_
                           (##structure-ref _e4724_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e4724_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks4725_))
                          (if (##structure-instance-of? _e4724_ 'gerbil#AST::t)
                              (_lp4722_
                               (##structure-ref _e4724_ '1 AST::t '#f)
                               _marks4725_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx4718_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4730_)
          (let* ((_phi4732_ (gx#current-expander-phi))
                 (_ctx4734_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4716
             _stx4730_
             _phi4732_
             _ctx4734_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4736_ _phi4737_)
          (let ((_ctx4739_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4716
             _stx4736_
             _phi4737_
             _ctx4739_))))
      (define gx#core-resolve-identifier
        (lambda _g5876_
          (let ((_g5875_ (length _g5876_)))
            (cond ((fx= _g5875_ 1)
                   (apply gx#core-resolve-identifier__0 _g5876_))
                  ((fx= _g5875_ 2)
                   (apply gx#core-resolve-identifier__1 _g5876_))
                  ((fx= _g5875_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4716 _g5876_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g5876_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4631_ _phi4632_ _src-phi4633_ _ctx4634_ _marks4635_)
      (letrec ((_resolve4637_
                (lambda (_ctx4705_ _src-phi4706_ _key4707_)
                  (let _lp4709_ ((_ctx4711_
                                  (gx#core-context-shift _ctx4705_ _phi4632_))
                                 (_dphi4712_ (fx- _phi4632_ _src-phi4706_)))
                    (let ((_$e4714_
                           (gx#core-context-resolve _ctx4711_ _key4707_)))
                      (if _$e4714_
                          (values _$e4714_)
                          (if (fxzero? _dphi4712_)
                              '#f
                              (if (fxpositive? _dphi4712_)
                                  (_lp4709_
                                   (gx#core-context-shift _ctx4711_ '-1)
                                   (fx- _dphi4712_ '1))
                                  (if (fxnegative? _dphi4712_)
                                      (_lp4709_
                                       (gx#core-context-shift _ctx4711_ '1)
                                       (fx+ _dphi4712_ '1))
                                      '#!void)))))))))
        (let _lp4639_ ((_ctx4641_ _ctx4634_)
                       (_src-phi4642_ _src-phi4633_)
                       (_rest4643_ _marks4635_))
          (let* ((_rest46444652_ _rest4643_)
                 (_E46474656_
                  (lambda () (error '"No clause matching" _rest46444652_)))
                 (_else46464660_
                  (lambda () (_resolve4637_ _ctx4641_ _src-phi4642_ _id4631_)))
                 (_K46484693_
                  (lambda (_rest4663_ _hd4664_)
                    (let* ((_hd46654671_ _hd4664_)
                           (_E46674675_
                            (lambda ()
                              (error '"No clause matching" _hd46654671_)))
                           (_K46684685_
                            (lambda (_subst4678_)
                              (let ((_$e4682_
                                     (let ((_key4680_
                                            (if _subst4678_
                                                (table-ref
                                                 _subst4678_
                                                 _id4631_
                                                 '#f)
                                                '#f)))
                                       (if _key4680_
                                           (_resolve4637_
                                            _ctx4641_
                                            _src-phi4642_
                                            _key4680_)
                                           '#f))))
                                (if _$e4682_
                                    _$e4682_
                                    (_lp4639_
                                     (##structure-ref
                                      _hd4664_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd4664_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest4663_))))))
                      (if (##structure-instance-of?
                           _hd46654671_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e46694688_ (##vector-ref _hd46654671_ '1))
                                 (_subst4691_ _e46694688_))
                            (_K46684685_ _subst4691_))
                          (_E46674675_))))))
            (if (##pair? _rest46444652_)
                (let ((_hd46494696_ (##car _rest46444652_))
                      (_tl46504698_ (##cdr _rest46444652_)))
                  (let* ((_hd4701_ _hd46494696_) (_rest4703_ _tl46504698_))
                    (_K46484693_ _rest4703_ _hd4701_)))
                (_else46464660_)))))))
  (begin
    (define gx#core-bind!__opt-lambda4505
      (lambda (_key4507_ _val4508_ _rebind?4509_ _phi4510_ _ctx4511_)
        (letrec ((_update-binding4513_
                  (lambda (_xval4584_)
                    (if (let ((_$e4586_
                               (_rebind?4509_ _ctx4511_ _xval4584_ _val4508_)))
                          (if _$e4586_
                              _$e4586_
                              (let ((_$e4592_
                                     (if (##structure-direct-instance-of?
                                          _xval4584_
                                          'gx#import-binding::t)
                                         (let ((_$e4589_
                                                (##direct-structure-ref
                                                 _xval4584_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e4589_
                                               _$e4589_
                                               (if (##structure-instance-of?
                                                    _val4508_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val4508_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e4592_
                                    _$e4592_
                                    (if (##structure-instance-of?
                                         _xval4584_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val4508_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val4508_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval4584_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val4508_
                        (if (if (##structure-direct-instance-of?
                                 _val4508_
                                 'gx#import-binding::t)
                                (let ((_$e4595_
                                       (##direct-structure-ref
                                        _val4508_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e4595_
                                      _$e4595_
                                      (if (##structure-instance-of?
                                           _xval4584_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val4508_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval4584_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval4584_
                            (if (if (##structure-direct-instance-of?
                                     _val4508_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval4584_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key4507_
                                 (cons (##structure-ref
                                        _val4508_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val4508_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval4584_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval4584_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval4584_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval4584_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key4507_
                                 _val4508_
                                 _xval4584_))))))
                 (_gensubst4514_
                  (lambda (_subst4579_ _id4580_)
                    (let ((_eid4582_
                           (gensym (if (uninterned-symbol? _id4580_)
                                       '%
                                       _id4580_))))
                      (begin
                        (table-set! _subst4579_ _id4580_ _eid4582_)
                        _eid4582_))))
                 (_subst!4515_
                  (lambda (_key4517_)
                    (let* ((_key45184526_ _key4517_)
                           (_E45214530_
                            (lambda ()
                              (error '"No clause matching" _key45184526_)))
                           (_else45204534_ (lambda () _key4517_))
                           (_K45224567_
                            (lambda (_mark4537_ _id4538_)
                              (let* ((_mark45394545_ _mark4537_)
                                     (_E45414549_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark45394545_)))
                                     (_K45424559_
                                      (lambda (_subst4552_)
                                        (if (not _subst4552_)
                                            (let ((_subst4554_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark4537_
                                                 _subst4554_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst4514_
                                                 _subst4554_
                                                 _id4538_)))
                                            (let ((_$e4556_
                                                   (table-ref
                                                    _subst4552_
                                                    _id4538_
                                                    '#f)))
                                              (if _$e4556_
                                                  (values _$e4556_)
                                                  (_gensubst4514_
                                                   _subst4552_
                                                   _id4538_)))))))
                                (if (##structure-instance-of?
                                     _mark45394545_
                                     (##type-id gx#expander-mark::t))
                                    (let* ((_e45434562_
                                            (##vector-ref _mark45394545_ '1))
                                           (_subst4565_ _e45434562_))
                                      (_K45424559_ _subst4565_))
                                    (_E45414549_))))))
                      (if (##pair? _key45184526_)
                          (let ((_hd45234570_ (##car _key45184526_))
                                (_tl45244572_ (##cdr _key45184526_)))
                            (let* ((_id4575_ _hd45234570_)
                                   (_mark4577_ _tl45244572_))
                              (_K45224567_ _mark4577_ _id4575_)))
                          (_else45204534_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx4511_ _phi4510_)
           (_subst!4515_ _key4507_)
           _val4508_
           _update-binding4513_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4601_ _val4602_)
          (let* ((_rebind?4604_ false)
                 (_phi4606_ (gx#current-expander-phi))
                 (_ctx4608_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4505
             _key4601_
             _val4602_
             _rebind?4604_
             _phi4606_
             _ctx4608_))))
      (define gx#core-bind!__1
        (lambda (_key4610_ _val4611_ _rebind?4612_)
          (let* ((_phi4614_ (gx#current-expander-phi))
                 (_ctx4616_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4505
             _key4610_
             _val4611_
             _rebind?4612_
             _phi4614_
             _ctx4616_))))
      (define gx#core-bind!__2
        (lambda (_key4618_ _val4619_ _rebind?4620_ _phi4621_)
          (let ((_ctx4623_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4505
             _key4618_
             _val4619_
             _rebind?4620_
             _phi4621_
             _ctx4623_))))
      (define gx#core-bind!
        (lambda _g5878_
          (let ((_g5877_ (length _g5878_)))
            (cond ((fx= _g5877_ 2) (apply gx#core-bind!__0 _g5878_))
                  ((fx= _g5877_ 3) (apply gx#core-bind!__1 _g5878_))
                  ((fx= _g5877_ 4) (apply gx#core-bind!__2 _g5878_))
                  ((fx= _g5877_ 5)
                   (apply gx#core-bind!__opt-lambda4505 _g5878_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g5878_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4437_)
      (if (symbol? _stx4437_)
          (let* ((_g44384446_ (gx#current-expander-marks))
                 (_E44414450_
                  (lambda () (error '"No clause matching" _g44384446_)))
                 (_else44404454_ (lambda () _stx4437_))
                 (_K44424459_ (lambda (_hd4457_) (cons _stx4437_ _hd4457_))))
            (if (##pair? _g44384446_)
                (let ((_hd44434462_ (##car _g44384446_))
                      (_tl44444464_ (##cdr _g44384446_)))
                  (let ((_hd4467_ _hd44434462_)) (_K44424459_ _hd4467_)))
                (_else44404454_)))
          (if (gx#identifier? _stx4437_)
              (let* ((_id4469_ (gx#syntax-local-unwrap _stx4437_))
                     (_eid4471_ (gx#stx-e _id4469_))
                     (_marks4473_ (gx#stx-identifier-marks _id4469_)))
                (let* ((_marks44754483_ _marks4473_)
                       (_E44784487_
                        (lambda ()
                          (error '"No clause matching" _marks44754483_)))
                       (_else44774491_ (lambda () _eid4471_))
                       (_K44794496_
                        (lambda (_hd4494_) (cons _eid4471_ _hd4494_))))
                  (if (##pair? _marks44754483_)
                      (let ((_hd44804499_ (##car _marks44754483_))
                            (_tl44814501_ (##cdr _marks44754483_)))
                        (let ((_hd4504_ _hd44804499_)) (_K44794496_ _hd4504_)))
                      (_else44774491_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4437_)))))
  (define gx#core-context-shift
    (lambda (_ctx4382_ _phi4383_)
      (letrec ((_make-phi4385_
                (lambda (_super4435_)
                  (let ((__obj5849 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__opt-lambda5811
                       __obj5849
                       (gensym 'phi)
                       _super4435_)
                      __obj5849))))
               (_make-phi/up4386_
                (lambda (_ctx4430_ _super4431_)
                  (let ((_ctx+14433_ (_make-phi4385_ _super4431_)))
                    (begin
                      (##structure-set!
                       _ctx4430_
                       _ctx+14433_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+14433_
                       _ctx4430_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+14433_))))
               (_make-phi/down4387_
                (lambda (_ctx4425_ _super4426_)
                  (let ((_ctx-14428_ (_make-phi4385_ _super4426_)))
                    (begin
                      (##structure-set!
                       _ctx-14428_
                       _ctx4425_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx4425_
                       _ctx-14428_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-14428_))))
               (_shift4388_
                (lambda (_ctx4409_
                         _delta4410_
                         _make-delta-context4411_
                         _phi4412_
                         _K4413_)
                  (let ((_$e4415_
                         (##structure-ref _ctx4409_ '3 gx#phi-context::t '#f)))
                    (if _$e4415_
                        ((lambda (_super4418_)
                           (let* ((_super4420_
                                   (_K4413_ _super4418_ _delta4410_))
                                  (_ctx+d4422_
                                   (_make-delta-context4411_
                                    _ctx4409_
                                    _super4420_)))
                             (_K4413_ _ctx+d4422_
                                      (fx- _phi4412_ _delta4410_))))
                         _$e4415_)
                        (error '"Bad context" _ctx4409_))))))
        (let _K4390_ ((_ctx4392_ _ctx4382_) (_phi4393_ _phi4383_))
          (if (fxzero? _phi4393_)
              _ctx4392_
              (if (##structure-instance-of? _ctx4392_ 'gx#context-phi::t)
                  (if (fxpositive? _phi4393_)
                      (let ((_$e4395_
                             (##structure-ref
                              _ctx4392_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e4395_
                            ((lambda (_g43974399_)
                               (_K4390_ _g43974399_ (fx- _phi4393_ '1)))
                             _$e4395_)
                            (_shift4388_
                             _ctx4392_
                             '1
                             _make-phi/up4386_
                             _phi4393_
                             _K4390_)))
                      (let ((_$e4402_
                             (##structure-ref
                              _ctx4392_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e4402_
                            ((lambda (_g44044406_)
                               (_K4390_ _g44044406_ (fx+ _phi4393_ '1)))
                             _$e4402_)
                            (_shift4388_
                             _ctx4392_
                             '-1
                             _make-phi/down4387_
                             _phi4393_
                             _K4390_))))
                  _ctx4392_))))))
  (define gx#core-context-get
    (lambda (_ctx4379_ _key4380_)
      (table-ref
       (##structure-ref _ctx4379_ '2 gx#expander-context::t '#f)
       _key4380_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4375_ _key4376_ _val4377_)
      (table-set!
       (##structure-ref _ctx4375_ '2 gx#expander-context::t '#f)
       _key4376_
       _val4377_)))
  (define gx#core-context-resolve
    (lambda (_ctx4362_ _key4363_)
      (let _lp4365_ ((_ctx4367_ _ctx4362_))
        (let ((_$e4369_ (gx#core-context-get _ctx4367_ _key4363_)))
          (if _$e4369_
              (values _$e4369_)
              (let ((_$e4372_
                     (if (##structure-instance-of?
                          _ctx4367_
                          'gx#context-phi::t)
                         (##structure-ref _ctx4367_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e4372_ (_lp4365_ _$e4372_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx4352_ _key4353_ _val4354_ _rebind4355_)
      (let ((_$e4357_ (gx#core-context-get _ctx4352_ _key4353_)))
        (if _$e4357_
            ((lambda (_xval4360_)
               (gx#core-context-put!
                _ctx4352_
                _key4353_
                (_rebind4355_ _xval4360_)))
             _$e4357_)
            (gx#core-context-put! _ctx4352_ _key4353_ _val4354_)))))
  (begin
    (define gx#core-context-top__opt-lambda4328
      (lambda (_ctx4330_ _stop?4331_)
        (let _lp4333_ ((_ctx4335_ _ctx4330_))
          (if (_stop?4331_ _ctx4335_)
              _ctx4335_
              (if (##structure-instance-of? _ctx4335_ 'gx#context-phi::t)
                  (_lp4333_
                   (##structure-ref _ctx4335_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx4341_ (gx#current-expander-context))
                 (_stop?4343_ gx#top-context?))
            (gx#core-context-top__opt-lambda4328 _ctx4341_ _stop?4343_))))
      (define gx#core-context-top__1
        (lambda (_ctx4345_)
          (let ((_stop?4347_ gx#top-context?))
            (gx#core-context-top__opt-lambda4328 _ctx4345_ _stop?4347_))))
      (define gx#core-context-top
        (lambda _g5880_
          (let ((_g5879_ (length _g5880_)))
            (cond ((fx= _g5879_ 0) (apply gx#core-context-top__0 _g5880_))
                  ((fx= _g5879_ 1) (apply gx#core-context-top__1 _g5880_))
                  ((fx= _g5879_ 2)
                   (apply gx#core-context-top__opt-lambda4328 _g5880_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g5880_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4313
      (lambda (_ctx4315_)
        (let _lp4317_ ((_ctx4319_ _ctx4315_))
          (if (##structure-instance-of? _ctx4319_ 'gx#context-phi::t)
              (_lp4317_ (##structure-ref _ctx4319_ '3 gx#phi-context::t '#f))
              _ctx4319_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4325_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4313 _ctx4325_))))
      (define gx#core-context-root
        (lambda _g5882_
          (let ((_g5881_ (length _g5882_)))
            (cond ((fx= _g5881_ 0) (apply gx#core-context-root__0 _g5882_))
                  ((fx= _g5881_ 1)
                   (apply gx#core-context-root__opt-lambda4313 _g5882_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g5882_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4297
      (lambda (_ctx4299_ . __42964300_)
        (if (##structure-instance-of? _ctx4299_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4299_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4299_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4307_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4297 _ctx4307_))))
      (define gx#core-context-rebind?
        (lambda _g5884_
          (let ((_g5883_ (length _g5884_)))
            (cond ((fx= _g5883_ 0) (apply gx#core-context-rebind?__0 _g5884_))
                  ((fx= _g5883_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4297 _g5884_))
                  ((fx>= _g5883_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4297 _g5884_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g5884_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4280
      (lambda (_ctx4282_)
        (let ((_$e4284_ (gx#core-context-top__1 _ctx4282_)))
          (if _$e4284_
              ((lambda (_ctx4287_)
                 (if (##structure-instance-of? _ctx4287_ 'gx#module-context::t)
                     (##structure-ref _ctx4287_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4284_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4293_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4280 _ctx4293_))))
      (define gx#core-context-namespace
        (lambda _g5886_
          (let ((_g5885_ (length _g5886_)))
            (cond ((fx= _g5885_ 0)
                   (apply gx#core-context-namespace__0 _g5886_))
                  ((fx= _g5885_ 1)
                   (apply gx#core-context-namespace__opt-lambda4280 _g5886_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g5886_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4266
      (lambda (_bind4268_ _is?4269_)
        (if (##structure-direct-instance-of? _bind4268_ 'gx#syntax-binding::t)
            (_is?4269_
             (##direct-structure-ref _bind4268_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4274_)
          (let ((_is?4276_ gx#expander?))
            (gx#expander-binding?__opt-lambda4266 _bind4274_ _is?4276_))))
      (define gx#expander-binding?
        (lambda _g5888_
          (let ((_g5887_ (length _g5888_)))
            (cond ((fx= _g5887_ 1) (apply gx#expander-binding?__0 _g5888_))
                  ((fx= _g5887_ 2)
                   (apply gx#expander-binding?__opt-lambda4266 _g5888_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g5888_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4265_)
      (gx#expander-binding?__opt-lambda4266 _bind4265_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4263_)
      (gx#expander-binding?__opt-lambda4266 _bind4263_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4257_)
      (letrec ((_direct-special-form?4259_
                (lambda (_obj4261_)
                  (##structure-direct-instance-of?
                   _obj4261_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__opt-lambda4266
         _bind4257_
         _direct-special-form?4259_))))
  (define gx#special-form-binding?
    (lambda (_bind4255_)
      (gx#expander-binding?__opt-lambda4266 _bind4255_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4246_)
      (letrec ((_feature?4248_
                (lambda (_e4250_)
                  (let ((_$e4252_
                         (##structure-instance-of?
                          _e4250_
                          'gx#feature-expander::t)))
                    (if _$e4252_
                        _$e4252_
                        (##structure-instance-of?
                         _e4250_
                         'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4266 _bind4246_ _feature?4248_))))
  (define gx#private-feature-binding?
    (lambda (_bind4244_)
      (gx#expander-binding?__opt-lambda4266
       _bind4244_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4229
      (lambda (_id4231_ _bound?4232_)
        (if (gx#identifier? _id4231_)
            (_bound?4232_ (gx#resolve-identifier__0 _id4231_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4237_)
          (let ((_bound?4239_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4229
             _id4237_
             _bound?4239_))))
      (define gx#core-bound-identifier?
        (lambda _g5890_
          (let ((_g5889_ (length _g5890_)))
            (cond ((fx= _g5889_ 1)
                   (apply gx#core-bound-identifier?__0 _g5890_))
                  ((fx= _g5889_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4229 _g5890_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g5890_))))))))
  (define gx#core-identifier=?
    (lambda (_x4221_ _y4222_)
      (letrec ((_y=?4224_
                (lambda (_xid4228_)
                  ((if (list? _y4222_) memq eq?) _xid4228_ _y4222_))))
        (let ((_bind4226_ (gx#resolve-identifier__0 _x4221_)))
          (if (##structure-instance-of? _bind4226_ 'gx#binding::t)
              (_y=?4224_ (##structure-ref _bind4226_ '1 gx#binding::t '#f))
              (_y=?4224_ (gx#stx-e _x4221_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4219_)
      (if (interned-symbol? _e4219_)
          (string-index (symbol->string _e4219_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda4175
      (lambda (_stx4177_ _src4178_ _ctx4179_ _marks4180_)
        (if (gx#sealed-syntax? _stx4177_)
            (gx#stx-unwrap__0 _stx4177_)
            (if (gx#identifier? _stx4177_)
                (let ((_id4182_ (gx#syntax-local-unwrap _stx4177_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4182_)
                   (let ((_$e4184_ (gx#stx-source _id4182_)))
                     (if _$e4184_ _$e4184_ _src4178_))
                   _ctx4179_
                   (##direct-structure-ref
                    _id4182_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4177_)
                    (gx#stx-e _stx4177_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4177_
                     (let ((_$e4187_ (gx#stx-source _stx4177_)))
                       (if _$e4187_ _$e4187_ _src4178_))
                     _ctx4179_
                     (reverse _marks4180_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4193_)
          (let* ((_src4195_ '#f)
                 (_ctx4197_ (gx#current-expander-context))
                 (_marks4199_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4175
             _stx4193_
             _src4195_
             _ctx4197_
             _marks4199_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4201_ _src4202_)
          (let* ((_ctx4204_ (gx#current-expander-context))
                 (_marks4206_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4175
             _stx4201_
             _src4202_
             _ctx4204_
             _marks4206_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4208_ _src4209_ _ctx4210_)
          (let ((_marks4212_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4175
             _stx4208_
             _src4209_
             _ctx4210_
             _marks4212_))))
      (define gx#core-quote-syntax
        (lambda _g5892_
          (let ((_g5891_ (length _g5892_)))
            (cond ((fx= _g5891_ 1) (apply gx#core-quote-syntax__0 _g5892_))
                  ((fx= _g5891_ 2) (apply gx#core-quote-syntax__1 _g5892_))
                  ((fx= _g5891_ 3) (apply gx#core-quote-syntax__2 _g5892_))
                  ((fx= _g5891_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4175 _g5892_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g5892_))))))))
  (define gx#core-cons
    (lambda (_hd4173_ _tl4174_)
      (cons (gx#core-quote-syntax__0 _hd4173_) _tl4174_)))
  (define gx#core-list
    (lambda (_hd4170_ . _rest4171_)
      (cons (gx#core-quote-syntax__0 _hd4170_) _rest4171_)))
  (define gx#core-cons*
    (lambda (_hd4167_ . _rest4168_)
      (apply cons* (gx#core-quote-syntax__0 _hd4167_) _rest4168_)))
  (begin
    (define gx#core-resolve-path__opt-lambda4139
      (lambda (_stx-path4141_ _rel4142_)
        (let ((_path4154_ (gx#stx-e _stx-path4141_))
              (_reldir4155_
               (let _lp4144_ ((_relsrc4146_
                               (let ((_$e4151_ (gx#stx-source _stx-path4141_)))
                                 (if _$e4151_ _$e4151_ _rel4142_))))
                 (if (##structure-instance-of? _relsrc4146_ 'gerbil#AST::t)
                     (_lp4144_
                      (let ((_$e4148_ (gx#stx-source _relsrc4146_)))
                        (if _$e4148_ _$e4148_ (gx#stx-e _relsrc4146_))))
                     (if (source-location-path? _relsrc4146_)
                         (path-directory (source-location-path _relsrc4146_))
                         (if (string? _relsrc4146_)
                             (path-directory _relsrc4146_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4154_ (path-normalize _reldir4155_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4160_)
          (let ((_rel4162_ '#f))
            (gx#core-resolve-path__opt-lambda4139 _stx-path4160_ _rel4162_))))
      (define gx#core-resolve-path
        (lambda _g5894_
          (let ((_g5893_ (length _g5894_)))
            (cond ((fx= _g5893_ 1) (apply gx#core-resolve-path__0 _g5894_))
                  ((fx= _g5893_ 2)
                   (apply gx#core-resolve-path__opt-lambda4139 _g5894_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g5894_))))))))
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
        (lambda _g5896_
          (let ((_g5895_ (length _g5896_)))
            (cond ((fx= _g5895_ 1) (apply gx#syntax-local-e__0 _g5896_))
                  ((fx= _g5895_ 2)
                   (apply gx#syntax-local-e__opt-lambda4087 _g5896_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g5896_))))))))
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
        (lambda _g5898_
          (let ((_g5897_ (length _g5898_)))
            (cond ((fx= _g5897_ 1) (apply gx#syntax-local-value__0 _g5898_))
                  ((fx= _g5897_ 2)
                   (apply gx#syntax-local-value__opt-lambda4071 _g5898_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g5898_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4070_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4070_))))
