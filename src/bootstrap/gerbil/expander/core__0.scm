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
    (lambda _$args5822_
      (apply make-struct-instance gx#expander-context::t _$args5822_)))
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
    (lambda _$args5819_
      (apply make-struct-instance gx#root-context::t _$args5819_)))
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
    (lambda _$args5816_
      (apply make-struct-instance gx#phi-context::t _$args5816_)))
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
    (lambda _$args5813_
      (apply make-struct-instance gx#top-context::t _$args5813_)))
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
    (lambda _$args5810_
      (apply make-struct-instance gx#module-context::t _$args5810_)))
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
    (lambda _$args5807_
      (apply make-struct-instance gx#prelude-context::t _$args5807_)))
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
    (lambda _$args5804_
      (apply make-struct-instance gx#local-context::t _$args5804_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5786
      (lambda (_self5788_ _id5789_ _super5790_)
        (struct-instance-init!
         _self5788_
         _id5789_
         (make-hash-table-eq)
         _super5790_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5795_ _id5796_)
          (let ((_super5798_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5786
             _self5795_
             _id5796_
             _super5798_))))
      (define gx#phi-context:::init!
        (lambda _g5826_
          (let ((_g5825_ (length _g5826_)))
            (cond ((fx= _g5825_ 2) (apply gx#phi-context:::init!__0 _g5826_))
                  ((fx= _g5825_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5786 _g5826_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g5826_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5772
      (lambda (_self5774_ _super5775_)
        (struct-instance-init!
         _self5774_
         (gensym 'L)
         (make-hash-table-eq)
         _super5775_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5780_)
          (let ((_super5782_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5772
             _self5780_
             _super5782_))))
      (define gx#local-context:::init!
        (lambda _g5828_
          (let ((_g5827_ (length _g5828_)))
            (cond ((fx= _g5827_ 1) (apply gx#local-context:::init!__0 _g5828_))
                  ((fx= _g5827_ 2)
                   (apply gx#local-context:::init!__opt-lambda5772 _g5828_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g5828_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5770_
      (apply make-struct-instance gx#binding::t _$args5770_)))
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
    (lambda _$args5767_
      (apply make-struct-instance gx#runtime-binding::t _$args5767_)))
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
    (lambda _$args5764_
      (apply make-struct-instance gx#local-binding::t _$args5764_)))
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
    (lambda _$args5761_
      (apply make-struct-instance gx#top-binding::t _$args5761_)))
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
    (lambda _$args5758_
      (apply make-struct-instance gx#module-binding::t _$args5758_)))
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
    (lambda _$args5755_
      (apply make-struct-instance gx#extern-binding::t _$args5755_)))
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
    (lambda _$args5752_
      (apply make-struct-instance gx#syntax-binding::t _$args5752_)))
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
    (lambda _$args5749_
      (apply make-struct-instance gx#import-binding::t _$args5749_)))
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
    (lambda _$args5746_
      (apply make-struct-instance gx#alias-binding::t _$args5746_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5743_
      (apply make-struct-instance gx#expander::t _$args5743_)))
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
    (lambda _$args5740_
      (apply make-struct-instance gx#core-expander::t _$args5740_)))
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
    (lambda _$args5737_
      (apply make-struct-instance gx#expression-form::t _$args5737_)))
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
    (lambda _$args5734_
      (apply make-struct-instance gx#special-form::t _$args5734_)))
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
    (lambda _$args5731_
      (apply make-struct-instance gx#definition-form::t _$args5731_)))
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
    (lambda _$args5728_
      (apply make-struct-instance gx#top-special-form::t _$args5728_)))
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
    (lambda _$args5725_
      (apply make-struct-instance gx#module-special-form::t _$args5725_)))
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
    (lambda _$args5722_
      (apply make-struct-instance gx#feature-expander::t _$args5722_)))
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
    (lambda _$args5719_
      (apply make-struct-instance gx#private-feature-expander::t _$args5719_)))
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
    (lambda _$args5716_
      (apply make-struct-instance gx#reserved-expander::t _$args5716_)))
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
    (lambda _$args5713_
      (apply make-struct-instance gx#macro-expander::t _$args5713_)))
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
    (lambda _$args5710_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5710_)))
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
    (lambda _$args5707_
      (apply make-struct-instance gx#user-expander::t _$args5707_)))
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
    (lambda _$args5704_
      (apply make-struct-instance gx#expander-mark::t _$args5704_)))
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
    (lambda _$args5701_
      (apply make-struct-instance gx#syntax-error::t _$args5701_)))
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
    (lambda (_where5696_ _message5697_ _stx5698_ . _details5699_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5697_
              (cons _stx5698_ _details5699_)
              _where5696_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5681
      (lambda (_stx5683_ _expression?5684_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5665 _stx5683_ _expression?5684_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5689_)
          (let ((_expression?5691_ '#f))
            (gx#eval-syntax__opt-lambda5681 _stx5689_ _expression?5691_))))
      (define gx#eval-syntax
        (lambda _g5830_
          (let ((_g5829_ (length _g5830_)))
            (cond ((fx= _g5829_ 1) (apply gx#eval-syntax__0 _g5830_))
                  ((fx= _g5829_ 2)
                   (apply gx#eval-syntax__opt-lambda5681 _g5830_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g5830_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5680_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5680_))))
  (begin
    (define gx#core-expand__opt-lambda5665
      (lambda (_stx5667_ _expression?5668_)
        (if _expression?5668_
            (gx#core-expand-expression _stx5667_)
            (gx#core-expand-top _stx5667_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5673_)
          (let ((_expression?5675_ '#f))
            (gx#core-expand__opt-lambda5665 _stx5673_ _expression?5675_))))
      (define gx#core-expand
        (lambda _g5832_
          (let ((_g5831_ (length _g5832_)))
            (cond ((fx= _g5831_ 1) (apply gx#core-expand__0 _g5832_))
                  ((fx= _g5831_ 2)
                   (apply gx#core-expand__opt-lambda5665 _g5832_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g5832_))))))))
  (define gx#core-expand-top
    (lambda (_stx5634_)
      (let ((_stx5636_ (gx#core-expand*__0 _stx5634_)))
        (let ((_e56375644_ _stx5636_))
          (let ((_E56395648_
                 (lambda () (gx#core-expand-expression _stx5636_))))
            (let ((_E56385662_
                   (lambda ()
                     (if (gx#stx-pair? _e56375644_)
                         (let ((_e56405652_ (gx#syntax-e _e56375644_)))
                           (let ((_hd56415655_ (##car _e56405652_))
                                 (_tl56425657_ (##cdr _e56405652_)))
                             (let ((_form5660_ _hd56415655_))
                               (if (gx#core-bound-identifier?__0 _form5660_)
                                   _stx5636_
                                   (_E56395648_)))))
                         (_E56395648_)))))
              (let () (_E56385662_))))))))
  (define gx#core-expand-expression
    (lambda (_stx5556_)
      (let ((_sealed-expression?5558_
             (lambda (_hd5604_)
               (if (gx#sealed-syntax? _hd5604_)
                   (let ((_e56055612_ _hd5604_))
                     (let ((_E56075616_ (lambda () '#f)))
                       (let ((_E56065630_
                              (lambda ()
                                (if (gx#stx-pair? _e56055612_)
                                    (let ((_e56085620_
                                           (gx#syntax-e _e56055612_)))
                                      (let ((_hd56095623_ (##car _e56085620_))
                                            (_tl56105625_ (##cdr _e56085620_)))
                                        (let ((_form5628_ _hd56095623_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4204
                                               _form5628_
                                               gx#expression-form-binding?)
                                              (_E56075616_)))))
                                    (_E56075616_)))))
                         (let () (_E56065630_)))))
                   '#f))))
        (let ((_illegal-expression5559_
               (lambda (_hd5602_ . _g5833_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx5556_
                  _hd5602_))))
          (let ((_expand-e5560_
                 (lambda (_form5597_ _hd5598_)
                   (let ((_bind5600_
                          (if (##structure-instance-of?
                               _form5597_
                               'gx#binding::t)
                              _form5597_
                              (gx#resolve-identifier__0 _form5597_))))
                     (if (gx#core-expander-binding? _bind5600_)
                         (gx#core-apply-expander__0
                          (##direct-structure-ref
                           _bind5600_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd5598_
                           (gx#stx-source _stx5556_)))
                         (if (##structure-direct-instance-of?
                              _bind5600_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##direct-structure-ref
                                _bind5600_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd5598_
                                (gx#stx-source _stx5556_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx5556_
                              _form5597_)))))))
            (let ((_hd5562_ (gx#core-expand-head _stx5556_)))
              (if (_sealed-expression?5558_ _hd5562_)
                  _hd5562_
                  (if (gx#stx-pair? _hd5562_)
                      (let ((_e55635570_ _hd5562_))
                        (let ((_E55655574_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e55635570_))))
                          (let ((_E55645593_
                                 (lambda ()
                                   (if (gx#stx-pair? _e55635570_)
                                       (let ((_e55665578_
                                              (gx#syntax-e _e55635570_)))
                                         (let ((_hd55675581_
                                                (##car _e55665578_))
                                               (_tl55685583_
                                                (##cdr _e55665578_)))
                                           (let ((_form5586_ _hd55675581_))
                                             (if '#t
                                                 (let ((_bind5588_
                                                        (if (gx#identifier?
                                                             _form5586_)
                                                            (gx#resolve-identifier__0
                                                             _form5586_)
                                                            '#f)))
                                                   (if (let ((_$e5590_
                                                              (not _bind5588_)))
                                                         (if _$e5590_
                                                             _$e5590_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind5588_))))
               (_expand-e5560_ '%%app (cons '%%app _hd5562_))
               (if (eq? (##structure-ref _bind5588_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd5562_ _illegal-expression5559_)
                   (if (gx#expression-form-binding? _bind5588_)
                       (_expand-e5560_ _bind5588_ _hd5562_)
                       (if (gx#direct-special-form-binding? _bind5588_)
                           (gx#core-expand-expression
                            (_expand-e5560_ _bind5588_ _hd5562_))
                           (_illegal-expression5559_ _hd5562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E55655574_)))))
                                       (_E55655574_)))))
                            (let () (_E55645593_)))))
                      (if (gx#core-bound-identifier?__0 _hd5562_)
                          (_illegal-expression5559_ _hd5562_)
                          (if (gx#identifier? _hd5562_)
                              (_expand-e5560_
                               '%%ref
                               (cons '%%ref (cons _hd5562_ '())))
                              (if (gx#stx-datum? _hd5562_)
                                  (_expand-e5560_
                                   '%#quote
                                   (cons '%#quote (cons _hd5562_ '())))
                                  (_illegal-expression5559_
                                   _hd5562_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5551_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5554_ (gx#core-expand-expression _stx5551_)))
           (values _stx5554_ (gx#eval-syntax* _stx5554_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5530
      (lambda (_stx5532_ _stop?5533_)
        ((letrec ((_lp5535_
                   (lambda (_stx5537_)
                     (if (_stop?5533_ _stx5537_)
                         _stx5537_
                         (let ((_rstx5539_ (gx#core-expand1 _stx5537_)))
                           (if (eq? _stx5537_ _rstx5539_)
                               _stx5537_
                               (_lp5535_ _rstx5539_)))))))
           _lp5535_)
         _stx5532_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5544_)
          (let ((_stop?5546_ false))
            (gx#core-expand*__opt-lambda5530 _stx5544_ _stop?5546_))))
      (define gx#core-expand*
        (lambda _g5835_
          (let ((_g5834_ (length _g5835_)))
            (cond ((fx= _g5834_ 1) (apply gx#core-expand*__0 _g5835_))
                  ((fx= _g5834_ 2)
                   (apply gx#core-expand*__opt-lambda5530 _g5835_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g5835_))))))))
  (define gx#core-expand1
    (lambda (_stx5488_)
      (let ((_step5490_
             (lambda (_hd5527_)
               (let ((_bind5529_ (gx#resolve-identifier__0 _hd5527_)))
                 (if (##structure-instance-of?
                      _bind5529_
                      'gx#runtime-binding::t)
                     _stx5488_
                     (if (##structure-direct-instance-of?
                          _bind5529_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##direct-structure-ref
                           _bind5529_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx5488_)
                         (if (not _bind5529_)
                             _stx5488_
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx5488_))))))))
        (let ((_e54915499_ _stx5488_))
          (let ((_E54975503_ (lambda () _stx5488_)))
            (let ((_E54935509_
                   (lambda ()
                     (let ((_hd5507_ _e54915499_))
                       (if (gx#identifier? _hd5507_)
                           (_step5490_ _hd5507_)
                           (_E54975503_))))))
              (let ((_E54925523_
                     (lambda ()
                       (if (gx#stx-pair? _e54915499_)
                           (let ((_e54945513_ (gx#syntax-e _e54915499_)))
                             (let ((_hd54955516_ (##car _e54945513_))
                                   (_tl54965518_ (##cdr _e54945513_)))
                               (let ((_hd5521_ _hd54955516_))
                                 (if (gx#identifier? _hd5521_)
                                     (_step5490_ _hd5521_)
                                     (_E54935509_)))))
                           (_E54935509_)))))
                (let () (_E54925523_)))))))))
  (define gx#core-expand-head
    (lambda (_stx5454_)
      (let ((_stop?5456_
             (lambda (_stx5458_)
               (let ((_e54595466_ _stx5458_))
                 (let ((_E54615470_ (lambda () '#f)))
                   (let ((_E54605484_
                          (lambda ()
                            (if (gx#stx-pair? _e54595466_)
                                (let ((_e54625474_ (gx#syntax-e _e54595466_)))
                                  (let ((_hd54635477_ (##car _e54625474_))
                                        (_tl54645479_ (##cdr _e54625474_)))
                                    (let ((_hd5482_ _hd54635477_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5482_)
                                          (_E54615470_)))))
                                (_E54615470_)))))
                     (let () (_E54605484_))))))))
        (gx#core-expand*__opt-lambda5530 _stx5454_ _stop?5456_))))
  (begin
    (define gx#core-expand-block__opt-lambda5258
      (lambda (_stx5260_ _expand-special5261_ _begin-form5262_ _expand-e5263_)
        (letrec ((_expand-splice5265_
                  (lambda (_hd5428_ _body5429_ _rest5430_ _r5431_)
                    (if (gx#stx-list? _body5429_)
                        (_K5269_ (gx#stx-foldr cons _rest5430_ _body5429_)
                                 _r5431_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5260_
                         _hd5428_))))
                 (_expand-cond-expand5266_
                  (lambda (_hd5424_ _rest5425_ _r5426_)
                    (_K5269_ (cons (gx#core-expand-cond-expand% _hd5424_)
                                   _rest5425_)
                             _r5426_)))
                 (_expand-include5267_
                  (lambda (_hd5373_ _rest5374_ _r5375_)
                    (let ((_e53765386_ _hd5373_))
                      (let ((_E53785390_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e53765386_))))
                        (let ((_E53775420_
                               (lambda ()
                                 (if (gx#stx-pair? _e53765386_)
                                     (let ((_e53795394_
                                            (gx#syntax-e _e53765386_)))
                                       (let ((_hd53805397_ (##car _e53795394_))
                                             (_tl53815399_
                                              (##cdr _e53795394_)))
                                         (if (gx#stx-pair? _tl53815399_)
                                             (let ((_e53825402_
                                                    (gx#syntax-e
                                                     _tl53815399_)))
                                               (let ((_hd53835405_
                                                      (##car _e53825402_))
                                                     (_tl53845407_
                                                      (##cdr _e53825402_)))
                                                 (let ((_path5410_
                                                        _hd53835405_))
                                                   (if (gx#stx-null?
                                                        _tl53845407_)
                                                       (if (gx#stx-string?
                                                            _path5410_)
                                                           (let ((_rpath5412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda4114
                           _path5410_
                           (gx#stx-source _hd5373_))))
                     (let ((_block5414_
                            (gx#core-expand-include%__opt-lambda5007
                             _hd5373_
                             _rpath5412_)))
                       (let ((_rbody5417_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda5258
                                  _block5414_
                                  _expand-special5261_
                                  '#f
                                  _expand-e5263_))
                               gx#current-expander-path
                               (cons _rpath5412_ (gx#current-expander-path)))))
                         (let ()
                           (_K5269_ _rest5374_
                                    (foldr1 cons _r5375_ _rbody5417_))))))
                   (_E53785390_))
               (_E53785390_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E53785390_))))
                                     (_E53785390_)))))
                          (let () (_E53775420_)))))))
                 (_expand-expression5268_
                  (lambda (_hd5369_ _rest5370_ _r5371_)
                    (_K5269_ _rest5370_
                             (cons (_expand-e5263_ _hd5369_) _r5371_))))
                 (_K5269_ (lambda (_rest5299_ _r5300_)
                            (let ((_e53015308_ _rest5299_))
                              (let ((_E53035312_
                                     (lambda ()
                                       (if _begin-form5262_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form5262_
                                             (reverse _r5300_))
                                            (gx#stx-source _stx5260_))
                                           _r5300_))))
                                (let ((_E53025365_
                                       (lambda ()
                                         (if (gx#stx-pair? _e53015308_)
                                             (let ((_e53045316_
                                                    (gx#syntax-e _e53015308_)))
                                               (let ((_hd53055319_
                                                      (##car _e53045316_))
                                                     (_tl53065321_
                                                      (##cdr _e53045316_)))
                                                 (let ((_hd5324_ _hd53055319_))
                                                   (let ((_rest5326_
                                                          _tl53065321_))
                                                     (if '#t
                                                         (let ((_hd5328_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd5324_)))
                   (let ((_e53295336_ _hd5328_))
                     (let ((_E53315340_
                            (lambda ()
                              (_expand-expression5268_
                               _hd5328_
                               _rest5326_
                               _r5300_))))
                       (let ((_E53305361_
                              (lambda ()
                                (if (gx#stx-pair? _e53295336_)
                                    (let ((_e53325344_
                                           (gx#syntax-e _e53295336_)))
                                      (let ((_hd53335347_ (##car _e53325344_))
                                            (_tl53345349_ (##cdr _e53325344_)))
                                        (let ((_form5352_ _hd53335347_))
                                          (let ((_body5354_ _tl53345349_))
                                            (if '#t
                                                (let ((_bind5356_
                                                       (if (gx#identifier?
                                                            _form5352_)
                                                           (gx#resolve-identifier__0
                                                            _form5352_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind5356_)
                                                      (let ((_$e5358_
                                                             (##structure-ref
                                                              _bind5356_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e5358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice5265_
                     _hd5328_
                     _body5354_
                     _rest5326_
                     _r5300_)
                    (if (eq? _$e5358_ '%#cond-expand)
                        (_expand-cond-expand5266_ _hd5328_ _rest5326_ _r5300_)
                        (if (eq? _$e5358_ '%#include)
                            (_expand-include5267_ _hd5328_ _rest5326_ _r5300_)
                            (_expand-special5261_
                             _hd5328_
                             _K5269_
                             _rest5326_
                             _r5300_)))))
              (_expand-expression5268_ _hd5328_ _rest5326_ _r5300_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E53315340_))))))
                                    (_E53315340_)))))
                         (let () (_E53305361_))))))
                 (_E53035312_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E53035312_)))))
                                  (let () (_E53025365_))))))))
          (let ((_e52705277_ _stx5260_))
            (let ((_E52725281_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e52705277_))))
              (let ((_E52715295_
                     (lambda ()
                       (if (gx#stx-pair? _e52705277_)
                           (let ((_e52735285_ (gx#syntax-e _e52705277_)))
                             (let ((_hd52745288_ (##car _e52735285_))
                                   (_tl52755290_ (##cdr _e52735285_)))
                               (let ((_body5293_ _tl52755290_))
                                 (if (gx#stx-list? _body5293_)
                                     (_K5269_ _body5293_ '())
                                     (_E52725281_)))))
                           (_E52725281_)))))
                (let () (_E52715295_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5436_ _expand-special5437_)
          (let ((_begin-form5439_ '%#begin))
            (let ((_expand-e5441_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda5258
               _stx5436_
               _expand-special5437_
               _begin-form5439_
               _expand-e5441_)))))
      (define gx#core-expand-block__1
        (lambda (_stx5443_ _expand-special5444_ _begin-form5445_)
          (let ((_expand-e5447_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5258
             _stx5443_
             _expand-special5444_
             _begin-form5445_
             _expand-e5447_))))
      (define gx#core-expand-block
        (lambda _g5837_
          (let ((_g5836_ (length _g5837_)))
            (cond ((fx= _g5836_ 2) (apply gx#core-expand-block__0 _g5837_))
                  ((fx= _g5836_ 3) (apply gx#core-expand-block__1 _g5837_))
                  ((fx= _g5836_ 4)
                   (apply gx#core-expand-block__opt-lambda5258 _g5837_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g5837_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5208_ _expand-special5209_)
      (let ((_g52105221_
             (gx#core-expand-block__1 _stx5208_ _expand-special5209_ '#f)))
        (let ((_E52145225_
               (lambda () (error '"No clause matching" _g52105221_))))
          (let ((_try-match52135236_
                 (lambda ()
                   (let ((_K52155231_
                          (lambda (_body5229_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body5229_))
                             (gx#stx-source _stx5208_)))))
                     (let ((_body5234_ _g52105221_))
                       (_K52155231_ _body5234_))))))
            (let ((_try-match52125252_
                   (lambda ()
                     (let ((_K52165242_ (lambda (_expr5240_) _expr5240_)))
                       (if (##pair? _g52105221_)
                           (let ((_hd52175245_ (##car _g52105221_))
                                 (_tl52185247_ (##cdr _g52105221_)))
                             (let ((_expr5250_ _hd52175245_))
                               (if (##null? _tl52185247_)
                                   (_K52165242_ _expr5250_)
                                   (_try-match52135236_))))
                           (_try-match52135236_))))))
              (let ((_K52195256_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx5208_))))
                (if (##null? _g52105221_)
                    (_K52195256_)
                    (_try-match52125252_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5066_)
      (letrec ((_satisfied?5068_
                (lambda (_condition5166_)
                  (let ((_e51675175_ _condition5166_))
                    (let ((_E51705179_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e51675175_))))
                      (let ((_E51695198_
                             (lambda ()
                               (if (gx#stx-pair? _e51675175_)
                                   (let ((_e51715183_
                                          (gx#syntax-e _e51675175_)))
                                     (let ((_hd51725186_ (##car _e51715183_))
                                           (_tl51735188_ (##cdr _e51715183_)))
                                       (let ((_combinator5191_ _hd51725186_))
                                         (let ((_body5193_ _tl51735188_))
                                           (if (gx#stx-list? _body5193_)
                                               (let ((_$e5195_
                                                      (gx#stx-e
                                                       _combinator5191_)))
                                                 (if (eq? _$e5195_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?5068_
                                                           _body5193_))
                                                     (if (eq? _$e5195_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?5068_
                                                          _body5193_)
                                                         (if (eq? _$e5195_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?5068_
                                                              _body5193_)
                                                             (if (eq? _$e5195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body5193_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx5066_
                          _combinator5191_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E51705179_))))))
                                   (_E51705179_)))))
                        (let ((_E51685204_
                               (lambda ()
                                 (let ((_id5202_ _e51675175_))
                                   (if (gx#identifier? _id5202_)
                                       (gx#core-bound-identifier?__opt-lambda4204
                                        _id5202_
                                        gx#feature-binding?)
                                       (_E51695198_))))))
                          (let () (_E51685204_))))))))
               (_loop5069_
                (lambda (_rest5099_)
                  (let ((_e51005108_ _rest5099_))
                    (let ((_E51065112_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e51005108_))))
                      (let ((_E51025116_
                             (lambda ()
                               (if (gx#stx-null? _e51005108_)
                                   (if '#t '() (_E51065112_))
                                   (_E51065112_)))))
                        (let ((_E51015162_
                               (lambda ()
                                 (if (gx#stx-pair? _e51005108_)
                                     (let ((_e51035120_
                                            (gx#syntax-e _e51005108_)))
                                       (let ((_hd51045123_ (##car _e51035120_))
                                             (_tl51055125_
                                              (##cdr _e51035120_)))
                                         (let ((_hd5128_ _hd51045123_))
                                           (let ((_rest5130_ _tl51055125_))
                                             (if '#t
                                                 (let ((_e51315138_ _hd5128_))
                                                   (let ((_E51335142_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e51315138_))))
                                                     (let ((_E51325158_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e51315138_)
                          (let ((_e51345146_ (gx#syntax-e _e51315138_)))
                            (let ((_hd51355149_ (##car _e51345146_))
                                  (_tl51365151_ (##cdr _e51345146_)))
                              (let ((_condition5154_ _hd51355149_))
                                (let ((_body5156_ _tl51365151_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition5154_ 'else)
                                          (if (gx#stx-null? _rest5130_)
                                              _body5156_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx5066_
                                               _hd5128_))
                                          (if (_satisfied?5068_
                                               _condition5154_)
                                              _body5156_
                                              (_loop5069_ _rest5130_)))
                                      (_E51335142_))))))
                          (_E51335142_)))))
               (let () (_E51325158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E51025116_))))))
                                     (_E51025116_)))))
                          (let () (_E51015162_)))))))))
        (let ((_e50705077_ _stx5066_))
          (let ((_E50725081_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50705077_))))
            (let ((_E50715095_
                   (lambda ()
                     (if (gx#stx-pair? _e50705077_)
                         (let ((_e50735085_ (gx#syntax-e _e50705077_)))
                           (let ((_hd50745088_ (##car _e50735085_))
                                 (_tl50755090_ (##cdr _e50735085_)))
                             (let ((_clauses5093_ _tl50755090_))
                               (if (gx#stx-list? _clauses5093_)
                                   (gx#core-cons
                                    'begin
                                    (_loop5069_ _clauses5093_))
                                   (_E50725081_)))))
                         (_E50725081_)))))
              (let () (_E50715095_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda5007
      (lambda (_stx5009_ _rpath5010_)
        (let ((_e50115021_ _stx5009_))
          (let ((_E50135025_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e50115021_))))
            (let ((_E50125052_
                   (lambda ()
                     (if (gx#stx-pair? _e50115021_)
                         (let ((_e50145029_ (gx#syntax-e _e50115021_)))
                           (let ((_hd50155032_ (##car _e50145029_))
                                 (_tl50165034_ (##cdr _e50145029_)))
                             (if (gx#stx-pair? _tl50165034_)
                                 (let ((_e50175037_
                                        (gx#syntax-e _tl50165034_)))
                                   (let ((_hd50185040_ (##car _e50175037_))
                                         (_tl50195042_ (##cdr _e50175037_)))
                                     (let ((_path5045_ _hd50185040_))
                                       (if (gx#stx-null? _tl50195042_)
                                           (if (gx#stx-string? _path5045_)
                                               (let ((_rpath5050_
                                                      (let ((_$e5047_
                                                             _rpath5010_))
                                                        (if _$e5047_
                                                            _$e5047_
                                                            (gx#core-resolve-path__opt-lambda4114
                                                             _path5045_
                                                             (gx#stx-source
                                                              _stx5009_))))))
                                                 (if (member _rpath5050_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx5009_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        'begin
                                                        (read-syntax-from-file
                                                         _rpath5050_))
                                                       (gx#stx-source
                                                        _stx5009_)))))
                                               (_E50135025_))
                                           (_E50135025_)))))
                                 (_E50135025_))))
                         (_E50135025_)))))
              (let () (_E50125052_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5059_)
          (let ((_rpath5061_ '#f))
            (gx#core-expand-include%__opt-lambda5007 _stx5059_ _rpath5061_))))
      (define gx#core-expand-include%
        (lambda _g5839_
          (let ((_g5838_ (length _g5839_)))
            (cond ((fx= _g5838_ 1) (apply gx#core-expand-include%__0 _g5839_))
                  ((fx= _g5838_ 2)
                   (apply gx#core-expand-include%__opt-lambda5007 _g5839_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g5839_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4976
      (lambda (_K4978_ _stx4979_ _method4980_)
        (if (procedure? _K4978_)
            (let ((_$e4982_ (gx#stx-source _stx4979_)))
              (if _$e4982_
                  ((lambda (_g49844986_)
                     (gx#stx-wrap-source (_K4978_ _stx4979_) _g49844986_))
                   _$e4982_)
                  (_K4978_ _stx4979_)))
            (let ((_$e4989_ (bound-method-ref _K4978_ _method4980_)))
              (if _$e4989_
                  ((lambda (_g49914993_)
                     (gx#core-apply-expander__opt-lambda4976
                      _g49914993_
                      _stx4979_
                      _method4980_))
                   _$e4989_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4979_
                   _method4980_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4999_ _stx5000_)
          (let ((_method5002_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4976
             _K4999_
             _stx5000_
             _method5002_))))
      (define gx#core-apply-expander
        (lambda _g5841_
          (let ((_g5840_ (length _g5841_)))
            (cond ((fx= _g5840_ 2) (apply gx#core-apply-expander__0 _g5841_))
                  ((fx= _g5840_ 3)
                   (apply gx#core-apply-expander__opt-lambda4976 _g5841_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g5841_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4974_ _stx4975_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4975_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4949_ _stx4950_)
      (let ((_self49514957_ _self4949_))
        (let ((_E49534961_
               (lambda () (error '"No clause matching" _self49514957_))))
          (let ((_K49544966_
                 (lambda (_K4964_)
                   (gx#core-apply-expander__0 _K4964_ _stx4950_))))
            (if (##structure-instance-of?
                 _self49514957_
                 (##type-id gx#macro-expander::t))
                (let ((_e49554969_ (##vector-ref _self49514957_ '1)))
                  (let ((_K4972_ _e49554969_)) (_K49544966_ _K4972_)))
                (_E49534961_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4924_ _stx4925_)
      (if (gx#sealed-syntax? _stx4925_)
          _stx4925_
          (let ((_self49264932_ _self4924_))
            (let ((_E49284936_
                   (lambda () (error '"No clause matching" _self49264932_))))
              (let ((_K49294941_
                     (lambda (_K4939_)
                       (gx#core-apply-expander__0 _K4939_ _stx4925_))))
                (if (##structure-instance-of?
                     _self49264932_
                     (##type-id gx#core-expander::t))
                    (let ((_e49304944_ (##vector-ref _self49264932_ '1)))
                      (let ((_K4947_ _e49304944_)) (_K49294941_ _K4947_)))
                    (_E49284936_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4906
      (lambda (_self4908_ _stx4909_ _top?4910_)
        (if (_top?4910_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4908_ _stx4909_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4909_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4915_ _stx4916_)
          (let ((_top?4918_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4906
             _self4915_
             _stx4916_
             _top?4918_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5843_
          (let ((_g5842_ (length _g5843_)))
            (cond ((fx= _g5842_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5843_))
                  ((fx= _g5842_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4906
                          _g5843_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g5843_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4904_ _stx4905_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4906
       _self4904_
       _stx4905_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4851_ _stx4852_)
      (let ((_self48534859_ _self4851_))
        (let ((_E48554863_
               (lambda () (error '"No clause matching" _self48534859_))))
          (let ((_K48564896_
                 (lambda (_id4866_)
                   (let ((_e48674874_ _stx4852_))
                     (let ((_E48694878_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e48674874_))))
                       (let ((_E48684892_
                              (lambda ()
                                (if (gx#stx-pair? _e48674874_)
                                    (let ((_e48704882_
                                           (gx#syntax-e _e48674874_)))
                                      (let ((_hd48714885_ (##car _e48704882_))
                                            (_tl48724887_ (##cdr _e48704882_)))
                                        (let ((_body4890_ _tl48724887_))
                                          (if '#t
                                              (gx#core-cons
                                               _id4866_
                                               _body4890_)
                                              (_E48694878_)))))
                                    (_E48694878_)))))
                         (let () (_E48684892_))))))))
            (if (##structure-instance-of?
                 _self48534859_
                 (##type-id gx#rename-macro-expander::t))
                (let ((_e48574899_ (##vector-ref _self48534859_ '1)))
                  (let ((_id4902_ _e48574899_)) (_K48564896_ _id4902_)))
                (_E48554863_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4797
      (lambda (_self4799_ _stx4800_ _method4801_)
        (let ((_self48024810_ _self4799_))
          (let ((_E48044814_
                 (lambda () (error '"No clause matching" _self48024810_))))
            (let ((_K48054821_
                   (lambda (_phi4817_ _ctx4818_ _K4819_)
                     (gx#core-apply-user-macro
                      _K4819_
                      _stx4800_
                      _ctx4818_
                      _phi4817_
                      _method4801_))))
              (if (##structure-instance-of?
                   _self48024810_
                   (##type-id gx#user-expander::t))
                  (let ((_e48064824_ (##vector-ref _self48024810_ '1)))
                    (let ((_K4827_ _e48064824_))
                      (let ((_e48074829_ (##vector-ref _self48024810_ '2)))
                        (let ((_ctx4832_ _e48074829_))
                          (let ((_e48084834_ (##vector-ref _self48024810_ '3)))
                            (let ((_phi4837_ _e48084834_))
                              (_K48054821_ _phi4837_ _ctx4832_ _K4827_)))))))
                  (_E48044814_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4842_ _stx4843_)
          (let ((_method4845_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4797
             _self4842_
             _stx4843_
             _method4845_))))
      (define gx#core-apply-user-expander
        (lambda _g5845_
          (let ((_g5844_ (length _g5845_)))
            (cond ((fx= _g5844_ 2)
                   (apply gx#core-apply-user-expander__0 _g5845_))
                  ((fx= _g5844_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4797 _g5845_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g5845_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4789_ _stx4790_ _ctx4791_ _phi4792_ _method4793_)
      (let ((_mark4795_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4791_
              _phi4792_
              _stx4790_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4976
             _K4789_
             (gx#stx-apply-mark _stx4790_ _mark4795_)
             _method4793_)
            _mark4795_))
         gx#current-expander-marks
         (cons _mark4795_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4761
      (lambda (_stx4763_ _phi4764_ _ctx4765_)
        ((letrec ((_lp4767_
                   (lambda (_bind4769_)
                     (if (##structure-direct-instance-of?
                          _bind4769_
                          'gx#import-binding::t)
                         (_lp4767_
                          (##direct-structure-ref
                           _bind4769_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind4769_
                              'gx#alias-binding::t)
                             (_lp4767_
                              (gx#core-resolve-identifier__opt-lambda4691
                               (##direct-structure-ref
                                _bind4769_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi4764_
                               _ctx4765_))
                             _bind4769_)))))
           _lp4767_)
         (gx#core-resolve-identifier__opt-lambda4691
          _stx4763_
          _phi4764_
          _ctx4765_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4774_)
          (let ((_phi4776_ (gx#current-expander-phi)))
            (let ((_ctx4778_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda4761
               _stx4774_
               _phi4776_
               _ctx4778_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx4780_ _phi4781_)
          (let ((_ctx4783_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4761
             _stx4780_
             _phi4781_
             _ctx4783_))))
      (define gx#resolve-identifier
        (lambda _g5847_
          (let ((_g5846_ (length _g5847_)))
            (cond ((fx= _g5846_ 1) (apply gx#resolve-identifier__0 _g5847_))
                  ((fx= _g5846_ 2) (apply gx#resolve-identifier__1 _g5847_))
                  ((fx= _g5846_ 3)
                   (apply gx#resolve-identifier__opt-lambda4761 _g5847_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g5847_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4719
      (lambda (_stx4721_ _val4722_ _rebind?4723_ _phi4724_ _ctx4725_)
        (let ((_rebind?4727_
               (if (not _rebind?4723_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4723_) _rebind?4723_ true))))
          (gx#core-bind!__opt-lambda4480
           (gx#core-identifier-key _stx4721_)
           _val4722_
           _rebind?4727_
           _phi4724_
           _ctx4725_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4732_ _val4733_)
          (let ((_rebind?4735_ '#f))
            (let ((_phi4737_ (gx#current-expander-phi)))
              (let ((_ctx4739_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda4719
                 _stx4732_
                 _val4733_
                 _rebind?4735_
                 _phi4737_
                 _ctx4739_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx4741_ _val4742_ _rebind?4743_)
          (let ((_phi4745_ (gx#current-expander-phi)))
            (let ((_ctx4747_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda4719
               _stx4741_
               _val4742_
               _rebind?4743_
               _phi4745_
               _ctx4747_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx4749_ _val4750_ _rebind?4751_ _phi4752_)
          (let ((_ctx4754_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4719
             _stx4749_
             _val4750_
             _rebind?4751_
             _phi4752_
             _ctx4754_))))
      (define gx#bind-identifier!
        (lambda _g5849_
          (let ((_g5848_ (length _g5849_)))
            (cond ((fx= _g5848_ 2) (apply gx#bind-identifier!__0 _g5849_))
                  ((fx= _g5848_ 3) (apply gx#bind-identifier!__1 _g5849_))
                  ((fx= _g5848_ 4) (apply gx#bind-identifier!__2 _g5849_))
                  ((fx= _g5848_ 5)
                   (apply gx#bind-identifier!__opt-lambda4719 _g5849_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g5849_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4691
      (lambda (_stx4693_ _phi4694_ _ctx4695_)
        ((letrec ((_lp4697_
                   (lambda (_e4699_ _marks4700_)
                     (if (symbol? _e4699_)
                         (gx#core-resolve-binding
                          _e4699_
                          _phi4694_
                          _phi4694_
                          _ctx4695_
                          (reverse _marks4700_))
                         (if (gx#identifier-quote? _e4699_)
                             (gx#core-resolve-binding
                              (##structure-ref _e4699_ '1 AST::t '#f)
                              _phi4694_
                              '0
                              (##direct-structure-ref
                               _e4699_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##direct-structure-ref
                               _e4699_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e4699_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e4699_ '1 AST::t '#f)
                                  _phi4694_
                                  _phi4694_
                                  _ctx4695_
                                  (foldl1 gx#apply-mark
                                          (##direct-structure-ref
                                           _e4699_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks4700_))
                                 (if (##structure-direct-instance-of?
                                      _e4699_
                                      'gx#syntax-wrap::t)
                                     (_lp4697_
                                      (##structure-ref _e4699_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##direct-structure-ref
                                        _e4699_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks4700_))
                                     (if (##structure-instance-of?
                                          _e4699_
                                          'gerbil#AST::t)
                                         (_lp4697_
                                          (##structure-ref
                                           _e4699_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks4700_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx4693_)))))))))
           _lp4697_)
         _stx4693_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4705_)
          (let ((_phi4707_ (gx#current-expander-phi)))
            (let ((_ctx4709_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda4691
               _stx4705_
               _phi4707_
               _ctx4709_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4711_ _phi4712_)
          (let ((_ctx4714_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4691
             _stx4711_
             _phi4712_
             _ctx4714_))))
      (define gx#core-resolve-identifier
        (lambda _g5851_
          (let ((_g5850_ (length _g5851_)))
            (cond ((fx= _g5850_ 1)
                   (apply gx#core-resolve-identifier__0 _g5851_))
                  ((fx= _g5850_ 2)
                   (apply gx#core-resolve-identifier__1 _g5851_))
                  ((fx= _g5850_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4691 _g5851_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g5851_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4606_ _phi4607_ _src-phi4608_ _ctx4609_ _marks4610_)
      (let ((_resolve4612_
             (lambda (_ctx4680_ _src-phi4681_ _key4682_)
               ((letrec ((_lp4684_
                          (lambda (_ctx4686_ _dphi4687_)
                            (let ((_$e4689_
                                   (gx#core-context-resolve
                                    _ctx4686_
                                    _key4682_)))
                              (if _$e4689_
                                  (values _$e4689_)
                                  (if (fxzero? _dphi4687_)
                                      '#f
                                      (if (fxpositive? _dphi4687_)
                                          (_lp4684_
                                           (gx#core-context-shift
                                            _ctx4686_
                                            '-1)
                                           (fx- _dphi4687_ '1))
                                          (if (fxnegative? _dphi4687_)
                                              (_lp4684_
                                               (gx#core-context-shift
                                                _ctx4686_
                                                '1)
                                               (fx+ _dphi4687_ '1))
                                              '#!void))))))))
                  _lp4684_)
                (gx#core-context-shift _ctx4680_ _phi4607_)
                (fx- _phi4607_ _src-phi4681_)))))
        ((letrec ((_lp4614_
                   (lambda (_ctx4616_ _src-phi4617_ _rest4618_)
                     (let ((_rest46194627_ _rest4618_))
                       (let ((_E46224631_
                              (lambda ()
                                (error '"No clause matching" _rest46194627_))))
                         (let ((_else46214635_
                                (lambda ()
                                  (_resolve4612_
                                   _ctx4616_
                                   _src-phi4617_
                                   _id4606_))))
                           (let ((_K46234668_
                                  (lambda (_rest4638_ _hd4639_)
                                    (let ((_hd46404646_ _hd4639_))
                                      (let ((_E46424650_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd46404646_))))
                                        (let ((_K46434660_
                                               (lambda (_subst4653_)
                                                 (let ((_$e4657_
                                                        (let ((_key4655_
                                                               (if _subst4653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (table-ref _subst4653_ _id4606_ '#f)
                           '#f)))
                  (if _key4655_
                      (_resolve4612_ _ctx4616_ _src-phi4617_ _key4655_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e4657_
                                                       _$e4657_
                                                       (_lp4614_
                                                        (##structure-ref
                                                         _hd4639_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd4639_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest4638_))))))
                                          (if (##structure-instance-of?
                                               _hd46404646_
                                               (##type-id gx#expander-mark::t))
                                              (let ((_e46444663_
                                                     (##vector-ref
                                                      _hd46404646_
                                                      '1)))
                                                (let ((_subst4666_
                                                       _e46444663_))
                                                  (_K46434660_ _subst4666_)))
                                              (_E46424650_))))))))
                             (if (##pair? _rest46194627_)
                                 (let ((_hd46244671_ (##car _rest46194627_))
                                       (_tl46254673_ (##cdr _rest46194627_)))
                                   (let ((_hd4676_ _hd46244671_))
                                     (let ((_rest4678_ _tl46254673_))
                                       (_K46234668_ _rest4678_ _hd4676_))))
                                 (_else46214635_)))))))))
           _lp4614_)
         _ctx4609_
         _src-phi4608_
         _marks4610_))))
  (begin
    (define gx#core-bind!__opt-lambda4480
      (lambda (_key4482_ _val4483_ _rebind?4484_ _phi4485_ _ctx4486_)
        (let ((_update-binding4488_
               (lambda (_xval4559_)
                 (if (let ((_$e4561_
                            (_rebind?4484_ _ctx4486_ _xval4559_ _val4483_)))
                       (if _$e4561_
                           _$e4561_
                           (let ((_$e4567_
                                  (if (##structure-direct-instance-of?
                                       _xval4559_
                                       'gx#import-binding::t)
                                      (let ((_$e4564_
                                             (##direct-structure-ref
                                              _xval4559_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e4564_
                                            _$e4564_
                                            (if (##structure-instance-of?
                                                 _val4483_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val4483_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e4567_
                                 _$e4567_
                                 (if (##structure-instance-of?
                                      _xval4559_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val4483_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val4483_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval4559_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val4483_
                     (if (if (##structure-direct-instance-of?
                              _val4483_
                              'gx#import-binding::t)
                             (let ((_$e4570_
                                    (##direct-structure-ref
                                     _val4483_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e4570_
                                   _$e4570_
                                   (if (##structure-instance-of?
                                        _xval4559_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val4483_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval4559_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval4559_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key4482_
                          _xval4559_
                          _val4483_))))))
          (let ((_gensubst4489_
                 (lambda (_subst4554_ _id4555_)
                   (let ((_eid4557_
                          (gensym (if (uninterned-symbol? _id4555_)
                                      '%
                                      _id4555_))))
                     (begin
                       (table-set! _subst4554_ _id4555_ _eid4557_)
                       _eid4557_)))))
            (let ((_subst!4490_
                   (lambda (_key4492_)
                     (let ((_key44934501_ _key4492_))
                       (let ((_E44964505_
                              (lambda ()
                                (error '"No clause matching" _key44934501_))))
                         (let ((_else44954509_ (lambda () _key4492_)))
                           (let ((_K44974542_
                                  (lambda (_mark4512_ _id4513_)
                                    (let ((_mark45144520_ _mark4512_))
                                      (let ((_E45164524_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark45144520_))))
                                        (let ((_K45174534_
                                               (lambda (_subst4527_)
                                                 (if (not _subst4527_)
                                                     (let ((_subst4529_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark4512_
                                                          _subst4529_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst4489_
                                                          _subst4529_
                                                          _id4513_)))
                                                     (let ((_$e4531_
                                                            (table-ref
                                                             _subst4527_
                                                             _id4513_
                                                             '#f)))
                                                       (if _$e4531_
                                                           (values _$e4531_)
                                                           (_gensubst4489_
                                                            _subst4527_
                                                            _id4513_)))))))
                                          (if (##structure-instance-of?
                                               _mark45144520_
                                               (##type-id gx#expander-mark::t))
                                              (let ((_e45184537_
                                                     (##vector-ref
                                                      _mark45144520_
                                                      '1)))
                                                (let ((_subst4540_
                                                       _e45184537_))
                                                  (_K45174534_ _subst4540_)))
                                              (_E45164524_))))))))
                             (if (##pair? _key44934501_)
                                 (let ((_hd44984545_ (##car _key44934501_))
                                       (_tl44994547_ (##cdr _key44934501_)))
                                   (let ((_id4550_ _hd44984545_))
                                     (let ((_mark4552_ _tl44994547_))
                                       (_K44974542_ _mark4552_ _id4550_))))
                                 (_else44954509_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx4486_ _phi4485_)
               (_subst!4490_ _key4482_)
               _val4483_
               _update-binding4488_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4576_ _val4577_)
          (let ((_rebind?4579_ false))
            (let ((_phi4581_ (gx#current-expander-phi)))
              (let ((_ctx4583_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda4480
                 _key4576_
                 _val4577_
                 _rebind?4579_
                 _phi4581_
                 _ctx4583_))))))
      (define gx#core-bind!__1
        (lambda (_key4585_ _val4586_ _rebind?4587_)
          (let ((_phi4589_ (gx#current-expander-phi)))
            (let ((_ctx4591_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda4480
               _key4585_
               _val4586_
               _rebind?4587_
               _phi4589_
               _ctx4591_)))))
      (define gx#core-bind!__2
        (lambda (_key4593_ _val4594_ _rebind?4595_ _phi4596_)
          (let ((_ctx4598_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4480
             _key4593_
             _val4594_
             _rebind?4595_
             _phi4596_
             _ctx4598_))))
      (define gx#core-bind!
        (lambda _g5853_
          (let ((_g5852_ (length _g5853_)))
            (cond ((fx= _g5852_ 2) (apply gx#core-bind!__0 _g5853_))
                  ((fx= _g5852_ 3) (apply gx#core-bind!__1 _g5853_))
                  ((fx= _g5852_ 4) (apply gx#core-bind!__2 _g5853_))
                  ((fx= _g5852_ 5)
                   (apply gx#core-bind!__opt-lambda4480 _g5853_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g5853_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4412_)
      (if (symbol? _stx4412_)
          (let ((_g44134421_ (gx#current-expander-marks)))
            (let ((_E44164425_
                   (lambda () (error '"No clause matching" _g44134421_))))
              (let ((_else44154429_ (lambda () _stx4412_)))
                (let ((_K44174434_
                       (lambda (_hd4432_) (cons _stx4412_ _hd4432_))))
                  (if (##pair? _g44134421_)
                      (let ((_hd44184437_ (##car _g44134421_))
                            (_tl44194439_ (##cdr _g44134421_)))
                        (let ((_hd4442_ _hd44184437_)) (_K44174434_ _hd4442_)))
                      (_else44154429_))))))
          (if (gx#identifier? _stx4412_)
              (let ((_id4444_ (gx#syntax-local-unwrap _stx4412_)))
                (let ((_eid4446_ (gx#stx-e _id4444_)))
                  (let ((_marks4448_ (gx#stx-identifier-marks _id4444_)))
                    (let ()
                      (let ((_marks44504458_ _marks4448_))
                        (let ((_E44534462_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks44504458_))))
                          (let ((_else44524466_ (lambda () _eid4446_)))
                            (let ((_K44544471_
                                   (lambda (_hd4469_)
                                     (cons _eid4446_ _hd4469_))))
                              (if (##pair? _marks44504458_)
                                  (let ((_hd44554474_ (##car _marks44504458_))
                                        (_tl44564476_ (##cdr _marks44504458_)))
                                    (let ((_hd4479_ _hd44554474_))
                                      (_K44544471_ _hd4479_)))
                                  (_else44524466_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4412_)))))
  (define gx#core-context-shift
    (lambda (_ctx4357_ _phi4358_)
      (let ((_make-phi4360_
             (lambda (_super4410_)
               (let ((__obj5824 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda5786
                    __obj5824
                    (gensym 'phi)
                    _super4410_)
                   __obj5824)))))
        (let ((_make-phi/up4361_
               (lambda (_ctx4405_ _super4406_)
                 (let ((_ctx+14408_ (_make-phi4360_ _super4406_)))
                   (begin
                     (##structure-set!
                      _ctx4405_
                      _ctx+14408_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+14408_
                      _ctx4405_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+14408_)))))
          (let ((_make-phi/down4362_
                 (lambda (_ctx4400_ _super4401_)
                   (let ((_ctx-14403_ (_make-phi4360_ _super4401_)))
                     (begin
                       (##structure-set!
                        _ctx-14403_
                        _ctx4400_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx4400_
                        _ctx-14403_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-14403_)))))
            (let ((_shift4363_
                   (lambda (_ctx4384_
                            _delta4385_
                            _make-delta-context4386_
                            _phi4387_
                            _K4388_)
                     (let ((_$e4390_
                            (##structure-ref
                             _ctx4384_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e4390_
                           ((lambda (_super4393_)
                              (let ((_super4395_
                                     (_K4388_ _super4393_ _delta4385_)))
                                (let ((_ctx+d4397_
                                       (_make-delta-context4386_
                                        _ctx4384_
                                        _super4395_)))
                                  (let ()
                                    (_K4388_ _ctx+d4397_
                                             (fx- _phi4387_ _delta4385_))))))
                            _$e4390_)
                           (error '"Bad context" _ctx4384_))))))
              ((letrec ((_K4365_ (lambda (_ctx4367_ _phi4368_)
                                   (if (fxzero? _phi4368_)
                                       _ctx4367_
                                       (if (##structure-instance-of?
                                            _ctx4367_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi4368_)
                                               (let ((_$e4370_
                                                      (##structure-ref
                                                       _ctx4367_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4370_
                                                     ((lambda (_g43724374_)
                                                        (_K4365_ _g43724374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx- _phi4368_ '1)))
              _$e4370_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4363_
                                                      _ctx4367_
                                                      '1
                                                      _make-phi/up4361_
                                                      _phi4368_
                                                      _K4365_)))
                                               (let ((_$e4377_
                                                      (##structure-ref
                                                       _ctx4367_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4377_
                                                     ((lambda (_g43794381_)
                                                        (_K4365_ _g43794381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx+ _phi4368_ '1)))
              _$e4377_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4363_
                                                      _ctx4367_
                                                      '-1
                                                      _make-phi/down4362_
                                                      _phi4368_
                                                      _K4365_))))
                                           _ctx4367_)))))
                 _K4365_)
               _ctx4357_
               _phi4358_)))))))
  (define gx#core-context-get
    (lambda (_ctx4354_ _key4355_)
      (table-ref
       (##structure-ref _ctx4354_ '2 gx#expander-context::t '#f)
       _key4355_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4350_ _key4351_ _val4352_)
      (table-set!
       (##structure-ref _ctx4350_ '2 gx#expander-context::t '#f)
       _key4351_
       _val4352_)))
  (define gx#core-context-resolve
    (lambda (_ctx4337_ _key4338_)
      ((letrec ((_lp4340_
                 (lambda (_ctx4342_)
                   (let ((_$e4344_ (gx#core-context-get _ctx4342_ _key4338_)))
                     (if _$e4344_
                         (values _$e4344_)
                         (let ((_$e4347_
                                (if (##structure-instance-of?
                                     _ctx4342_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx4342_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e4347_ (_lp4340_ _$e4347_) '#f)))))))
         _lp4340_)
       _ctx4337_)))
  (define gx#core-context-bind!
    (lambda (_ctx4327_ _key4328_ _val4329_ _rebind4330_)
      (let ((_$e4332_ (gx#core-context-get _ctx4327_ _key4328_)))
        (if _$e4332_
            ((lambda (_xval4335_)
               (gx#core-context-put!
                _ctx4327_
                _key4328_
                (_rebind4330_ _xval4335_)))
             _$e4332_)
            (gx#core-context-put! _ctx4327_ _key4328_ _val4329_)))))
  (begin
    (define gx#core-context-top__opt-lambda4303
      (lambda (_ctx4305_ _stop?4306_)
        ((letrec ((_lp4308_
                   (lambda (_ctx4310_)
                     (if (_stop?4306_ _ctx4310_)
                         _ctx4310_
                         (if (##structure-instance-of?
                              _ctx4310_
                              'gx#context-phi::t)
                             (_lp4308_
                              (##structure-ref
                               _ctx4310_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp4308_)
         _ctx4305_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx4316_ (gx#current-expander-context)))
            (let ((_stop?4318_ gx#top-context?))
              (gx#core-context-top__opt-lambda4303 _ctx4316_ _stop?4318_)))))
      (define gx#core-context-top__1
        (lambda (_ctx4320_)
          (let ((_stop?4322_ gx#top-context?))
            (gx#core-context-top__opt-lambda4303 _ctx4320_ _stop?4322_))))
      (define gx#core-context-top
        (lambda _g5855_
          (let ((_g5854_ (length _g5855_)))
            (cond ((fx= _g5854_ 0) (apply gx#core-context-top__0 _g5855_))
                  ((fx= _g5854_ 1) (apply gx#core-context-top__1 _g5855_))
                  ((fx= _g5854_ 2)
                   (apply gx#core-context-top__opt-lambda4303 _g5855_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g5855_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4288
      (lambda (_ctx4290_)
        ((letrec ((_lp4292_
                   (lambda (_ctx4294_)
                     (if (##structure-instance-of?
                          _ctx4294_
                          'gx#context-phi::t)
                         (_lp4292_
                          (##structure-ref _ctx4294_ '3 gx#phi-context::t '#f))
                         _ctx4294_))))
           _lp4292_)
         _ctx4290_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4300_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4288 _ctx4300_))))
      (define gx#core-context-root
        (lambda _g5857_
          (let ((_g5856_ (length _g5857_)))
            (cond ((fx= _g5856_ 0) (apply gx#core-context-root__0 _g5857_))
                  ((fx= _g5856_ 1)
                   (apply gx#core-context-root__opt-lambda4288 _g5857_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g5857_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4272
      (lambda (_ctx4274_ . __42714275_)
        (if (##structure-instance-of? _ctx4274_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4274_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4274_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4282_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4272 _ctx4282_))))
      (define gx#core-context-rebind?
        (lambda _g5859_
          (let ((_g5858_ (length _g5859_)))
            (cond ((fx= _g5858_ 0) (apply gx#core-context-rebind?__0 _g5859_))
                  ((fx= _g5858_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4272 _g5859_))
                  ((fx>= _g5858_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4272 _g5859_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g5859_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4255
      (lambda (_ctx4257_)
        (let ((_$e4259_ (gx#core-context-top__1 _ctx4257_)))
          (if _$e4259_
              ((lambda (_ctx4262_)
                 (if (##structure-instance-of? _ctx4262_ 'gx#module-context::t)
                     (##structure-ref _ctx4262_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4259_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4268_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4255 _ctx4268_))))
      (define gx#core-context-namespace
        (lambda _g5861_
          (let ((_g5860_ (length _g5861_)))
            (cond ((fx= _g5860_ 0)
                   (apply gx#core-context-namespace__0 _g5861_))
                  ((fx= _g5860_ 1)
                   (apply gx#core-context-namespace__opt-lambda4255 _g5861_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g5861_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4241
      (lambda (_bind4243_ _is?4244_)
        (if (##structure-direct-instance-of? _bind4243_ 'gx#syntax-binding::t)
            (_is?4244_
             (##direct-structure-ref _bind4243_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4249_)
          (let ((_is?4251_ gx#expander?))
            (gx#expander-binding?__opt-lambda4241 _bind4249_ _is?4251_))))
      (define gx#expander-binding?
        (lambda _g5863_
          (let ((_g5862_ (length _g5863_)))
            (cond ((fx= _g5862_ 1) (apply gx#expander-binding?__0 _g5863_))
                  ((fx= _g5862_ 2)
                   (apply gx#expander-binding?__opt-lambda4241 _g5863_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g5863_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4240_)
      (gx#expander-binding?__opt-lambda4241 _bind4240_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4238_)
      (gx#expander-binding?__opt-lambda4241 _bind4238_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4232_)
      (let ((_direct-special-form?4234_
             (lambda (_obj4236_)
               (##structure-direct-instance-of?
                _obj4236_
                (##type-id gx#special-form::t)))))
        (gx#expander-binding?__opt-lambda4241
         _bind4232_
         _direct-special-form?4234_))))
  (define gx#special-form-binding?
    (lambda (_bind4230_)
      (gx#expander-binding?__opt-lambda4241 _bind4230_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4221_)
      (let ((_feature?4223_
             (lambda (_e4225_)
               (let ((_$e4227_
                      (##structure-instance-of?
                       _e4225_
                       'gx#feature-expander::t)))
                 (if _$e4227_
                     _$e4227_
                     (##structure-instance-of?
                      _e4225_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4241 _bind4221_ _feature?4223_))))
  (define gx#private-feature-binding?
    (lambda (_bind4219_)
      (gx#expander-binding?__opt-lambda4241
       _bind4219_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4204
      (lambda (_id4206_ _bound?4207_)
        (if (gx#identifier? _id4206_)
            (_bound?4207_ (gx#resolve-identifier__0 _id4206_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4212_)
          (let ((_bound?4214_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4204
             _id4212_
             _bound?4214_))))
      (define gx#core-bound-identifier?
        (lambda _g5865_
          (let ((_g5864_ (length _g5865_)))
            (cond ((fx= _g5864_ 1)
                   (apply gx#core-bound-identifier?__0 _g5865_))
                  ((fx= _g5864_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4204 _g5865_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g5865_))))))))
  (define gx#core-identifier=?
    (lambda (_x4196_ _y4197_)
      (let ((_y=?4199_
             (lambda (_xid4203_)
               ((if (list? _y4197_) memq eq?) _xid4203_ _y4197_))))
        (let ((_bind4201_ (gx#resolve-identifier__0 _x4196_)))
          (if (##structure-instance-of? _bind4201_ 'gx#binding::t)
              (_y=?4199_ (##structure-ref _bind4201_ '1 gx#binding::t '#f))
              (_y=?4199_ (gx#stx-e _x4196_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4194_)
      (if (interned-symbol? _e4194_)
          (string-index (symbol->string _e4194_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda4150
      (lambda (_stx4152_ _src4153_ _ctx4154_ _marks4155_)
        (if (gx#sealed-syntax? _stx4152_)
            (gx#stx-unwrap__0 _stx4152_)
            (if (gx#identifier? _stx4152_)
                (let ((_id4157_ (gx#syntax-local-unwrap _stx4152_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4157_)
                   (let ((_$e4159_ (gx#stx-source _id4157_)))
                     (if _$e4159_ _$e4159_ _src4153_))
                   _ctx4154_
                   (##direct-structure-ref
                    _id4157_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4152_)
                    (gx#stx-e _stx4152_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4152_
                     (let ((_$e4162_ (gx#stx-source _stx4152_)))
                       (if _$e4162_ _$e4162_ _src4153_))
                     _ctx4154_
                     (reverse _marks4155_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4168_)
          (let ((_src4170_ '#f))
            (let ((_ctx4172_ (gx#current-expander-context)))
              (let ((_marks4174_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda4150
                 _stx4168_
                 _src4170_
                 _ctx4172_
                 _marks4174_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4176_ _src4177_)
          (let ((_ctx4179_ (gx#current-expander-context)))
            (let ((_marks4181_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda4150
               _stx4176_
               _src4177_
               _ctx4179_
               _marks4181_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4183_ _src4184_ _ctx4185_)
          (let ((_marks4187_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4150
             _stx4183_
             _src4184_
             _ctx4185_
             _marks4187_))))
      (define gx#core-quote-syntax
        (lambda _g5867_
          (let ((_g5866_ (length _g5867_)))
            (cond ((fx= _g5866_ 1) (apply gx#core-quote-syntax__0 _g5867_))
                  ((fx= _g5866_ 2) (apply gx#core-quote-syntax__1 _g5867_))
                  ((fx= _g5866_ 3) (apply gx#core-quote-syntax__2 _g5867_))
                  ((fx= _g5866_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4150 _g5867_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g5867_))))))))
  (define gx#core-cons
    (lambda (_hd4148_ _tl4149_)
      (cons (gx#core-quote-syntax__0 _hd4148_) _tl4149_)))
  (define gx#core-list
    (lambda (_hd4145_ . _rest4146_)
      (cons (gx#core-quote-syntax__0 _hd4145_) _rest4146_)))
  (define gx#core-cons*
    (lambda (_hd4142_ . _rest4143_)
      (apply cons* (gx#core-quote-syntax__0 _hd4142_) _rest4143_)))
  (begin
    (define gx#core-resolve-path__opt-lambda4114
      (lambda (_stx-path4116_ _rel4117_)
        (let ((_path4129_ (gx#stx-e _stx-path4116_))
              (_reldir4130_
               ((letrec ((_lp4119_
                          (lambda (_relsrc4121_)
                            (if (##structure-instance-of?
                                 _relsrc4121_
                                 'gerbil#AST::t)
                                (_lp4119_
                                 (let ((_$e4123_ (gx#stx-source _relsrc4121_)))
                                   (if _$e4123_
                                       _$e4123_
                                       (gx#stx-e _relsrc4121_))))
                                (if (source-location-path? _relsrc4121_)
                                    (path-directory
                                     (source-location-path _relsrc4121_))
                                    (if (string? _relsrc4121_)
                                        (path-directory _relsrc4121_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp4119_)
                (let ((_$e4126_ (gx#stx-source _stx-path4116_)))
                  (if _$e4126_ _$e4126_ _rel4117_)))))
          (path-expand _path4129_ (path-normalize _reldir4130_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4135_)
          (let ((_rel4137_ '#f))
            (gx#core-resolve-path__opt-lambda4114 _stx-path4135_ _rel4137_))))
      (define gx#core-resolve-path
        (lambda _g5869_
          (let ((_g5868_ (length _g5869_)))
            (cond ((fx= _g5868_ 1) (apply gx#core-resolve-path__0 _g5869_))
                  ((fx= _g5868_ 2)
                   (apply gx#core-resolve-path__opt-lambda4114 _g5869_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g5869_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4113_) (gx#stx-rewrap _stx4113_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4111_)
      (gx#stx-unwrap__opt-lambda3924 _stx4111_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4079_)
      (let ((_g40804088_ (gx#current-expander-marks)))
        (let ((_E40834092_
               (lambda () (error '"No clause matching" _g40804088_))))
          (let ((_else40824096_ (lambda () _stx4079_)))
            (let ((_K40844101_
                   (lambda (_hd4099_) (gx#stx-apply-mark _stx4079_ _hd4099_))))
              (if (##pair? _g40804088_)
                  (let ((_hd40854104_ (##car _g40804088_))
                        (_tl40864106_ (##cdr _g40804088_)))
                    (let ((_hd4109_ _hd40854104_)) (_K40844101_ _hd4109_)))
                  (_else40824096_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda4062
      (lambda (_stx4064_ _E4065_)
        (let ((_bind4067_ (gx#resolve-identifier__0 _stx4064_)))
          (if (##structure-direct-instance-of?
               _bind4067_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4067_ '4 gx#syntax-binding::t '#f)
              (_E4065_ _stx4064_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4072_)
          (let ((_E4074_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda4062 _stx4072_ _E4074_))))
      (define gx#syntax-local-e
        (lambda _g5871_
          (let ((_g5870_ (length _g5871_)))
            (cond ((fx= _g5870_ 1) (apply gx#syntax-local-e__0 _g5871_))
                  ((fx= _g5870_ 2)
                   (apply gx#syntax-local-e__opt-lambda4062 _g5871_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g5871_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda4046
      (lambda (_stx4048_ _E4049_)
        (let ((_e4051_ (gx#syntax-local-e__opt-lambda4062 _stx4048_ _E4049_)))
          (if (##structure-instance-of? _e4051_ 'gx#expander::t)
              (##structure-ref _e4051_ '1 gx#expander::t '#f)
              _e4051_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4056_)
          (let ((_E4058_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda4046 _stx4056_ _E4058_))))
      (define gx#syntax-local-value
        (lambda _g5873_
          (let ((_g5872_ (length _g5873_)))
            (cond ((fx= _g5872_ 1) (apply gx#syntax-local-value__0 _g5873_))
                  ((fx= _g5872_ 2)
                   (apply gx#syntax-local-value__opt-lambda4046 _g5873_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g5873_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4045_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4045_))))
