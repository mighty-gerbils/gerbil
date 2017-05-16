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
    (lambda _$args5578_
      (apply make-struct-instance gx#expander-context::t _$args5578_)))
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
    (lambda _$args5575_
      (apply make-struct-instance gx#root-context::t _$args5575_)))
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
    (lambda _$args5572_
      (apply make-struct-instance gx#phi-context::t _$args5572_)))
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
    (lambda _$args5569_
      (apply make-struct-instance gx#top-context::t _$args5569_)))
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
    (lambda _$args5566_
      (apply make-struct-instance gx#module-context::t _$args5566_)))
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
    (lambda _$args5563_
      (apply make-struct-instance gx#prelude-context::t _$args5563_)))
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
    (lambda _$args5560_
      (apply make-struct-instance gx#local-context::t _$args5560_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5542
      (lambda (_self5544_ _id5545_ _super5546_)
        (direct-struct-instance-init!
         _self5544_
         _id5545_
         (make-hash-table-eq)
         _super5546_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5551_ _id5552_)
          (let ((_super5554_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5542
             _self5551_
             _id5552_
             _super5554_))))
      (define gx#phi-context:::init!
        (lambda _g5582_
          (let ((_g5581_ (length _g5582_)))
            (cond ((fx= _g5581_ 2) (apply gx#phi-context:::init!__0 _g5582_))
                  ((fx= _g5581_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5542 _g5582_))
                  (else (error "No clause matching arguments" _g5582_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5528
      (lambda (_self5530_ _super5531_)
        (direct-struct-instance-init!
         _self5530_
         (gensym 'L)
         (make-hash-table-eq)
         _super5531_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5536_)
          (let ((_super5538_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5528
             _self5536_
             _super5538_))))
      (define gx#local-context:::init!
        (lambda _g5584_
          (let ((_g5583_ (length _g5584_)))
            (cond ((fx= _g5583_ 1) (apply gx#local-context:::init!__0 _g5584_))
                  ((fx= _g5583_ 2)
                   (apply gx#local-context:::init!__opt-lambda5528 _g5584_))
                  (else (error "No clause matching arguments" _g5584_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5526_
      (apply make-struct-instance gx#binding::t _$args5526_)))
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
    (lambda _$args5523_
      (apply make-struct-instance gx#runtime-binding::t _$args5523_)))
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
    (lambda _$args5520_
      (apply make-struct-instance gx#local-binding::t _$args5520_)))
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
    (lambda _$args5517_
      (apply make-struct-instance gx#top-binding::t _$args5517_)))
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
    (lambda _$args5514_
      (apply make-struct-instance gx#module-binding::t _$args5514_)))
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
    (lambda _$args5511_
      (apply make-struct-instance gx#extern-binding::t _$args5511_)))
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
    (lambda _$args5508_
      (apply make-struct-instance gx#syntax-binding::t _$args5508_)))
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
    (lambda _$args5505_
      (apply make-struct-instance gx#import-binding::t _$args5505_)))
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
    (lambda _$args5502_
      (apply make-struct-instance gx#alias-binding::t _$args5502_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5499_
      (apply make-struct-instance gx#expander::t _$args5499_)))
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
    (lambda _$args5496_
      (apply make-struct-instance gx#core-expander::t _$args5496_)))
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
    (lambda _$args5493_
      (apply make-struct-instance gx#expression-form::t _$args5493_)))
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
    (lambda _$args5490_
      (apply make-struct-instance gx#special-form::t _$args5490_)))
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
    (lambda _$args5487_
      (apply make-struct-instance gx#definition-form::t _$args5487_)))
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
    (lambda _$args5484_
      (apply make-struct-instance gx#top-special-form::t _$args5484_)))
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
    (lambda _$args5481_
      (apply make-struct-instance gx#module-special-form::t _$args5481_)))
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
    (lambda _$args5478_
      (apply make-struct-instance gx#feature-expander::t _$args5478_)))
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
    (lambda _$args5475_
      (apply make-struct-instance gx#private-feature-expander::t _$args5475_)))
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
    (lambda _$args5472_
      (apply make-struct-instance gx#reserved-expander::t _$args5472_)))
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
    (lambda _$args5469_
      (apply make-struct-instance gx#macro-expander::t _$args5469_)))
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
    (lambda _$args5466_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5466_)))
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
    (lambda _$args5463_
      (apply make-struct-instance gx#user-expander::t _$args5463_)))
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
    (lambda _$args5460_
      (apply make-struct-instance gx#expander-mark::t _$args5460_)))
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
    (lambda _$args5457_
      (apply make-struct-instance gx#syntax-error::t _$args5457_)))
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
    (lambda (_where5452_ _message5453_ _stx5454_ . _details5455_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5453_
              (cons _stx5454_ _details5455_)
              _where5452_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5437
      (lambda (_stx5439_ _expression?5440_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5421 _stx5439_ _expression?5440_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5445_)
          (let ((_expression?5447_ '#f))
            (gx#eval-syntax__opt-lambda5437 _stx5445_ _expression?5447_))))
      (define gx#eval-syntax
        (lambda _g5586_
          (let ((_g5585_ (length _g5586_)))
            (cond ((fx= _g5585_ 1) (apply gx#eval-syntax__0 _g5586_))
                  ((fx= _g5585_ 2)
                   (apply gx#eval-syntax__opt-lambda5437 _g5586_))
                  (else (error "No clause matching arguments" _g5586_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5436_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5436_))))
  (begin
    (define gx#core-expand__opt-lambda5421
      (lambda (_stx5423_ _expression?5424_)
        (if _expression?5424_
            (gx#core-expand-expression _stx5423_)
            (gx#core-expand-top _stx5423_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5429_)
          (let ((_expression?5431_ '#f))
            (gx#core-expand__opt-lambda5421 _stx5429_ _expression?5431_))))
      (define gx#core-expand
        (lambda _g5588_
          (let ((_g5587_ (length _g5588_)))
            (cond ((fx= _g5587_ 1) (apply gx#core-expand__0 _g5588_))
                  ((fx= _g5587_ 2)
                   (apply gx#core-expand__opt-lambda5421 _g5588_))
                  (else (error "No clause matching arguments" _g5588_))))))))
  (define gx#core-expand-top
    (lambda (_stx5390_)
      (let ((_stx5392_ (gx#core-expand*__0 _stx5390_)))
        (let ((_e53935400_ _stx5392_))
          (let ((_E53955404_
                 (lambda () (gx#core-expand-expression _stx5392_))))
            (let ((_E53945418_
                   (lambda ()
                     (if (gx#stx-pair? _e53935400_)
                         (let ((_e53965408_ (gx#syntax-e _e53935400_)))
                           (let ((_hd53975411_ (##car _e53965408_))
                                 (_tl53985413_ (##cdr _e53965408_)))
                             (let ((_form5416_ _hd53975411_))
                               (if (gx#core-bound-identifier?__0 _form5416_)
                                   _stx5392_
                                   (_E53955404_)))))
                         (_E53955404_)))))
              (let () (_E53945418_))))))))
  (define gx#core-expand-expression
    (lambda (_stx5312_)
      (let ((_sealed-expression?5314_
             (lambda (_hd5360_)
               (if (gx#sealed-syntax? _hd5360_)
                   (let ((_e53615368_ _hd5360_))
                     (let ((_E53635372_ (lambda () '#f)))
                       (let ((_E53625386_
                              (lambda ()
                                (if (gx#stx-pair? _e53615368_)
                                    (let ((_e53645376_
                                           (gx#syntax-e _e53615368_)))
                                      (let ((_hd53655379_ (##car _e53645376_))
                                            (_tl53665381_ (##cdr _e53645376_)))
                                        (let ((_form5384_ _hd53655379_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda3961
                                               _form5384_
                                               gx#expression-form-binding?)
                                              (_E53635372_)))))
                                    (_E53635372_)))))
                         (let () (_E53625386_)))))
                   '#f))))
        (let ((_illegal-expression5315_
               (lambda (_hd5358_ . _g5589_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx5312_
                  _hd5358_))))
          (let ((_expand-e5316_
                 (lambda (_form5353_ _hd5354_)
                   (let ((_bind5356_
                          (if (##structure-instance-of?
                               _form5353_
                               'gx#binding::t)
                              _form5353_
                              (gx#resolve-identifier__0 _form5353_))))
                     (if (gx#core-expander-binding? _bind5356_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5356_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd5354_
                           (gx#stx-source _stx5312_)))
                         (if (##structure-direct-instance-of?
                              _bind5356_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind5356_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd5354_
                                (gx#stx-source _stx5312_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx5312_
                              _form5353_)))))))
            (let ((_hd5318_ (gx#core-expand-head _stx5312_)))
              (if (_sealed-expression?5314_ _hd5318_)
                  _hd5318_
                  (if (gx#stx-pair? _hd5318_)
                      (let ((_e53195326_ _hd5318_))
                        (let ((_E53215330_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e53195326_))))
                          (let ((_E53205349_
                                 (lambda ()
                                   (if (gx#stx-pair? _e53195326_)
                                       (let ((_e53225334_
                                              (gx#syntax-e _e53195326_)))
                                         (let ((_hd53235337_
                                                (##car _e53225334_))
                                               (_tl53245339_
                                                (##cdr _e53225334_)))
                                           (let ((_form5342_ _hd53235337_))
                                             (if '#t
                                                 (let ((_bind5344_
                                                        (if (gx#identifier?
                                                             _form5342_)
                                                            (gx#resolve-identifier__0
                                                             _form5342_)
                                                            '#f)))
                                                   (if (let ((_$e5346_
                                                              (not _bind5344_)))
                                                         (if _$e5346_
                                                             _$e5346_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind5344_))))
               (_expand-e5316_ '%#call (cons '%#call _hd5318_))
               (if (eq? (##structure-ref _bind5344_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd5318_ _illegal-expression5315_)
                   (if (gx#expression-form-binding? _bind5344_)
                       (_expand-e5316_ _bind5344_ _hd5318_)
                       (_illegal-expression5315_ _hd5318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E53215330_)))))
                                       (_E53215330_)))))
                            (let () (_E53205349_)))))
                      (if (gx#core-bound-identifier?__0 _hd5318_)
                          (_illegal-expression5315_ _hd5318_)
                          (if (gx#identifier? _hd5318_)
                              (_expand-e5316_
                               '%#ref
                               (cons '%#ref (cons _hd5318_ '())))
                              (if (gx#stx-datum? _hd5318_)
                                  (_expand-e5316_
                                   '%#quote
                                   (cons '%#quote (cons _hd5318_ '())))
                                  (_illegal-expression5315_
                                   _hd5318_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5307_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5310_ (gx#core-expand-expression _stx5307_)))
           (values _stx5310_ (gx#eval-syntax* _stx5310_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5286
      (lambda (_stx5288_ _stop?5289_)
        ((letrec ((_lp5291_
                   (lambda (_stx5293_)
                     (if (_stop?5289_ _stx5293_)
                         _stx5293_
                         (let ((_rstx5295_ (gx#core-expand1 _stx5293_)))
                           (if (eq? _stx5293_ _rstx5295_)
                               _stx5293_
                               (_lp5291_ _rstx5295_)))))))
           _lp5291_)
         _stx5288_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5300_)
          (let ((_stop?5302_ false))
            (gx#core-expand*__opt-lambda5286 _stx5300_ _stop?5302_))))
      (define gx#core-expand*
        (lambda _g5591_
          (let ((_g5590_ (length _g5591_)))
            (cond ((fx= _g5590_ 1) (apply gx#core-expand*__0 _g5591_))
                  ((fx= _g5590_ 2)
                   (apply gx#core-expand*__opt-lambda5286 _g5591_))
                  (else (error "No clause matching arguments" _g5591_))))))))
  (define gx#core-expand1
    (lambda (_stx5238_)
      (let ((_step5240_
             (lambda (_hd5277_)
               (let ((_bind5279_ (gx#resolve-identifier__0 _hd5277_)))
                 (if (##structure-instance-of?
                      _bind5279_
                      'gx#runtime-binding::t)
                     _stx5238_
                     (if (##structure-direct-instance-of?
                          _bind5279_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5279_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx5238_)
                         (if (not _bind5279_)
                             (begin
                               (if (let ((_$e5281_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e5281_
                                         _$e5281_
                                         (let ((_$e5284_
                                                (gx#core-context-rebind?__opt-lambda4023
                                                 (gx#core-context-top__0))))
                                           (if _$e5284_
                                               _$e5284_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd5277_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx5238_
                                    _hd5277_))
                               _stx5238_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx5238_))))))))
        (let ((_e52415249_ _stx5238_))
          (let ((_E52475253_ (lambda () _stx5238_)))
            (let ((_E52435259_
                   (lambda ()
                     (let ((_hd5257_ _e52415249_))
                       (if (gx#identifier? _hd5257_)
                           (_step5240_ _hd5257_)
                           (_E52475253_))))))
              (let ((_E52425273_
                     (lambda ()
                       (if (gx#stx-pair? _e52415249_)
                           (let ((_e52445263_ (gx#syntax-e _e52415249_)))
                             (let ((_hd52455266_ (##car _e52445263_))
                                   (_tl52465268_ (##cdr _e52445263_)))
                               (let ((_hd5271_ _hd52455266_))
                                 (if (gx#identifier? _hd5271_)
                                     (_step5240_ _hd5271_)
                                     (_E52435259_)))))
                           (_E52435259_)))))
                (let () (_E52425273_)))))))))
  (define gx#core-expand-head
    (lambda (_stx5204_)
      (let ((_stop?5206_
             (lambda (_stx5208_)
               (let ((_e52095216_ _stx5208_))
                 (let ((_E52115220_ (lambda () '#f)))
                   (let ((_E52105234_
                          (lambda ()
                            (if (gx#stx-pair? _e52095216_)
                                (let ((_e52125224_ (gx#syntax-e _e52095216_)))
                                  (let ((_hd52135227_ (##car _e52125224_))
                                        (_tl52145229_ (##cdr _e52125224_)))
                                    (let ((_hd5232_ _hd52135227_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5232_)
                                          (_E52115220_)))))
                                (_E52115220_)))))
                     (let () (_E52105234_))))))))
        (gx#core-expand*__opt-lambda5286 _stx5204_ _stop?5206_))))
  (begin
    (define gx#core-expand-block__opt-lambda5008
      (lambda (_stx5010_ _expand-special5011_ _begin-form5012_ _expand-e5013_)
        (letrec ((_expand-splice5015_
                  (lambda (_hd5178_ _body5179_ _rest5180_ _r5181_)
                    (if (gx#stx-list? _body5179_)
                        (_K5019_ (gx#stx-foldr cons _rest5180_ _body5179_)
                                 _r5181_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5010_
                         _hd5178_))))
                 (_expand-cond-expand5016_
                  (lambda (_hd5174_ _rest5175_ _r5176_)
                    (_K5019_ (cons (gx#core-expand-cond-expand% _hd5174_)
                                   _rest5175_)
                             _r5176_)))
                 (_expand-include5017_
                  (lambda (_hd5123_ _rest5124_ _r5125_)
                    (let ((_e51265136_ _hd5123_))
                      (let ((_E51285140_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e51265136_))))
                        (let ((_E51275170_
                               (lambda ()
                                 (if (gx#stx-pair? _e51265136_)
                                     (let ((_e51295144_
                                            (gx#syntax-e _e51265136_)))
                                       (let ((_hd51305147_ (##car _e51295144_))
                                             (_tl51315149_
                                              (##cdr _e51295144_)))
                                         (if (gx#stx-pair? _tl51315149_)
                                             (let ((_e51325152_
                                                    (gx#syntax-e
                                                     _tl51315149_)))
                                               (let ((_hd51335155_
                                                      (##car _e51325152_))
                                                     (_tl51345157_
                                                      (##cdr _e51325152_)))
                                                 (let ((_path5160_
                                                        _hd51335155_))
                                                   (if (gx#stx-null?
                                                        _tl51345157_)
                                                       (if (gx#stx-string?
                                                            _path5160_)
                                                           (let ((_rpath5162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda3871
                           _path5160_
                           (gx#stx-source _hd5123_))))
                     (let ((_block5164_
                            (gx#core-expand-include%__opt-lambda4757
                             _hd5123_
                             _rpath5162_)))
                       (let ((_rbody5167_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda5008
                                  _block5164_
                                  _expand-special5011_
                                  '#f
                                  _expand-e5013_))
                               gx#current-expander-path
                               (cons _rpath5162_ (gx#current-expander-path)))))
                         (let ()
                           (_K5019_ _rest5124_
                                    (foldr1 cons _r5125_ _rbody5167_))))))
                   (_E51285140_))
               (_E51285140_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E51285140_))))
                                     (_E51285140_)))))
                          (let () (_E51275170_)))))))
                 (_expand-expression5018_
                  (lambda (_hd5119_ _rest5120_ _r5121_)
                    (_K5019_ _rest5120_
                             (cons (_expand-e5013_ _hd5119_) _r5121_))))
                 (_K5019_ (lambda (_rest5049_ _r5050_)
                            (let ((_e50515058_ _rest5049_))
                              (let ((_E50535062_
                                     (lambda ()
                                       (if _begin-form5012_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form5012_
                                             (reverse _r5050_))
                                            (gx#stx-source _stx5010_))
                                           _r5050_))))
                                (let ((_E50525115_
                                       (lambda ()
                                         (if (gx#stx-pair? _e50515058_)
                                             (let ((_e50545066_
                                                    (gx#syntax-e _e50515058_)))
                                               (let ((_hd50555069_
                                                      (##car _e50545066_))
                                                     (_tl50565071_
                                                      (##cdr _e50545066_)))
                                                 (let ((_hd5074_ _hd50555069_))
                                                   (let ((_rest5076_
                                                          _tl50565071_))
                                                     (if '#t
                                                         (let ((_hd5078_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd5074_)))
                   (let ((_e50795086_ _hd5078_))
                     (let ((_E50815090_
                            (lambda ()
                              (_expand-expression5018_
                               _hd5078_
                               _rest5076_
                               _r5050_))))
                       (let ((_E50805111_
                              (lambda ()
                                (if (gx#stx-pair? _e50795086_)
                                    (let ((_e50825094_
                                           (gx#syntax-e _e50795086_)))
                                      (let ((_hd50835097_ (##car _e50825094_))
                                            (_tl50845099_ (##cdr _e50825094_)))
                                        (let ((_form5102_ _hd50835097_))
                                          (let ((_body5104_ _tl50845099_))
                                            (if '#t
                                                (let ((_bind5106_
                                                       (if (gx#identifier?
                                                            _form5102_)
                                                           (gx#resolve-identifier__0
                                                            _form5102_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind5106_)
                                                      (let ((_$e5108_
                                                             (##structure-ref
                                                              _bind5106_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e5108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice5015_
                     _hd5078_
                     _body5104_
                     _rest5076_
                     _r5050_)
                    (if (eq? _$e5108_ '%#cond-expand)
                        (_expand-cond-expand5016_ _hd5078_ _rest5076_ _r5050_)
                        (if (eq? _$e5108_ '%#include)
                            (_expand-include5017_ _hd5078_ _rest5076_ _r5050_)
                            (_expand-special5011_
                             _hd5078_
                             _K5019_
                             _rest5076_
                             _r5050_)))))
              (_expand-expression5018_ _hd5078_ _rest5076_ _r5050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E50815090_))))))
                                    (_E50815090_)))))
                         (let () (_E50805111_))))))
                 (_E50535062_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E50535062_)))))
                                  (let () (_E50525115_))))))))
          (let ((_e50205027_ _stx5010_))
            (let ((_E50225031_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e50205027_))))
              (let ((_E50215045_
                     (lambda ()
                       (if (gx#stx-pair? _e50205027_)
                           (let ((_e50235035_ (gx#syntax-e _e50205027_)))
                             (let ((_hd50245038_ (##car _e50235035_))
                                   (_tl50255040_ (##cdr _e50235035_)))
                               (let ((_body5043_ _tl50255040_))
                                 (if (gx#stx-list? _body5043_)
                                     (_K5019_ _body5043_ '())
                                     (_E50225031_)))))
                           (_E50225031_)))))
                (let () (_E50215045_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5186_ _expand-special5187_)
          (let ((_begin-form5189_ '%#begin))
            (let ((_expand-e5191_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda5008
               _stx5186_
               _expand-special5187_
               _begin-form5189_
               _expand-e5191_)))))
      (define gx#core-expand-block__1
        (lambda (_stx5193_ _expand-special5194_ _begin-form5195_)
          (let ((_expand-e5197_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5008
             _stx5193_
             _expand-special5194_
             _begin-form5195_
             _expand-e5197_))))
      (define gx#core-expand-block
        (lambda _g5593_
          (let ((_g5592_ (length _g5593_)))
            (cond ((fx= _g5592_ 2) (apply gx#core-expand-block__0 _g5593_))
                  ((fx= _g5592_ 3) (apply gx#core-expand-block__1 _g5593_))
                  ((fx= _g5592_ 4)
                   (apply gx#core-expand-block__opt-lambda5008 _g5593_))
                  (else (error "No clause matching arguments" _g5593_))))))))
  (define gx#core-expand-block*
    (lambda (_stx4958_ _expand-special4959_)
      (let ((_g49604971_
             (gx#core-expand-block__1 _stx4958_ _expand-special4959_ '#f)))
        (let ((_E49644975_
               (lambda () (error '"No clause matching" _g49604971_))))
          (let ((_try-match49634986_
                 (lambda ()
                   (let ((_K49654981_
                          (lambda (_body4979_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body4979_))
                             (gx#stx-source _stx4958_)))))
                     (let ((_body4984_ _g49604971_))
                       (_K49654981_ _body4984_))))))
            (let ((_try-match49625002_
                   (lambda ()
                     (let ((_K49664992_ (lambda (_expr4990_) _expr4990_)))
                       (if (##pair? _g49604971_)
                           (let ((_hd49674995_ (##car _g49604971_))
                                 (_tl49684997_ (##cdr _g49604971_)))
                             (let ((_expr5000_ _hd49674995_))
                               (if (##null? _tl49684997_)
                                   (_K49664992_ _expr5000_)
                                   (_try-match49634986_))))
                           (_try-match49634986_))))))
              (let ((_K49695006_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx4958_))))
                (if (##null? _g49604971_)
                    (_K49695006_)
                    (_try-match49625002_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx4816_)
      (letrec ((_satisfied?4818_
                (lambda (_condition4916_)
                  (let ((_e49174925_ _condition4916_))
                    (let ((_E49204929_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e49174925_))))
                      (let ((_E49194948_
                             (lambda ()
                               (if (gx#stx-pair? _e49174925_)
                                   (let ((_e49214933_
                                          (gx#syntax-e _e49174925_)))
                                     (let ((_hd49224936_ (##car _e49214933_))
                                           (_tl49234938_ (##cdr _e49214933_)))
                                       (let ((_combinator4941_ _hd49224936_))
                                         (let ((_body4943_ _tl49234938_))
                                           (if (gx#stx-list? _body4943_)
                                               (let ((_$e4945_
                                                      (gx#stx-e
                                                       _combinator4941_)))
                                                 (if (eq? _$e4945_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?4818_
                                                           _body4943_))
                                                     (if (eq? _$e4945_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?4818_
                                                          _body4943_)
                                                         (if (eq? _$e4945_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?4818_
                                                              _body4943_)
                                                             (if (eq? _$e4945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body4943_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx4816_
                          _combinator4941_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E49204929_))))))
                                   (_E49204929_)))))
                        (let ((_E49184954_
                               (lambda ()
                                 (let ((_id4952_ _e49174925_))
                                   (if (gx#identifier? _id4952_)
                                       (gx#core-bound-identifier?__opt-lambda3961
                                        _id4952_
                                        gx#feature-binding?)
                                       (_E49194948_))))))
                          (let () (_E49184954_))))))))
               (_loop4819_
                (lambda (_rest4849_)
                  (let ((_e48504858_ _rest4849_))
                    (let ((_E48564862_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e48504858_))))
                      (let ((_E48524866_
                             (lambda ()
                               (if (gx#stx-null? _e48504858_)
                                   (if '#t '() (_E48564862_))
                                   (_E48564862_)))))
                        (let ((_E48514912_
                               (lambda ()
                                 (if (gx#stx-pair? _e48504858_)
                                     (let ((_e48534870_
                                            (gx#syntax-e _e48504858_)))
                                       (let ((_hd48544873_ (##car _e48534870_))
                                             (_tl48554875_
                                              (##cdr _e48534870_)))
                                         (let ((_hd4878_ _hd48544873_))
                                           (let ((_rest4880_ _tl48554875_))
                                             (if '#t
                                                 (let ((_e48814888_ _hd4878_))
                                                   (let ((_E48834892_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e48814888_))))
                                                     (let ((_E48824908_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e48814888_)
                          (let ((_e48844896_ (gx#syntax-e _e48814888_)))
                            (let ((_hd48854899_ (##car _e48844896_))
                                  (_tl48864901_ (##cdr _e48844896_)))
                              (let ((_condition4904_ _hd48854899_))
                                (let ((_body4906_ _tl48864901_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition4904_ 'else)
                                          (if (gx#stx-null? _rest4880_)
                                              _body4906_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx4816_
                                               _hd4878_))
                                          (if (_satisfied?4818_
                                               _condition4904_)
                                              _body4906_
                                              (_loop4819_ _rest4880_)))
                                      (_E48834892_))))))
                          (_E48834892_)))))
               (let () (_E48824908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E48524866_))))))
                                     (_E48524866_)))))
                          (let () (_E48514912_)))))))))
        (let ((_e48204827_ _stx4816_))
          (let ((_E48224831_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e48204827_))))
            (let ((_E48214845_
                   (lambda ()
                     (if (gx#stx-pair? _e48204827_)
                         (let ((_e48234835_ (gx#syntax-e _e48204827_)))
                           (let ((_hd48244838_ (##car _e48234835_))
                                 (_tl48254840_ (##cdr _e48234835_)))
                             (let ((_clauses4843_ _tl48254840_))
                               (if (gx#stx-list? _clauses4843_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop4819_ _clauses4843_))
                                   (_E48224831_)))))
                         (_E48224831_)))))
              (let () (_E48214845_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda4757
      (lambda (_stx4759_ _rpath4760_)
        (let ((_e47614771_ _stx4759_))
          (let ((_E47634775_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e47614771_))))
            (let ((_E47624802_
                   (lambda ()
                     (if (gx#stx-pair? _e47614771_)
                         (let ((_e47644779_ (gx#syntax-e _e47614771_)))
                           (let ((_hd47654782_ (##car _e47644779_))
                                 (_tl47664784_ (##cdr _e47644779_)))
                             (if (gx#stx-pair? _tl47664784_)
                                 (let ((_e47674787_
                                        (gx#syntax-e _tl47664784_)))
                                   (let ((_hd47684790_ (##car _e47674787_))
                                         (_tl47694792_ (##cdr _e47674787_)))
                                     (let ((_path4795_ _hd47684790_))
                                       (if (gx#stx-null? _tl47694792_)
                                           (if (gx#stx-string? _path4795_)
                                               (let ((_rpath4800_
                                                      (let ((_$e4797_
                                                             _rpath4760_))
                                                        (if _$e4797_
                                                            _$e4797_
                                                            (gx#core-resolve-path__opt-lambda3871
                                                             _path4795_
                                                             (gx#stx-source
                                                              _stx4759_))))))
                                                 (if (member _rpath4800_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx4759_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath4800_))
                                                       (gx#stx-source
                                                        _stx4759_)))))
                                               (_E47634775_))
                                           (_E47634775_)))))
                                 (_E47634775_))))
                         (_E47634775_)))))
              (let () (_E47624802_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx4809_)
          (let ((_rpath4811_ '#f))
            (gx#core-expand-include%__opt-lambda4757 _stx4809_ _rpath4811_))))
      (define gx#core-expand-include%
        (lambda _g5595_
          (let ((_g5594_ (length _g5595_)))
            (cond ((fx= _g5594_ 1) (apply gx#core-expand-include%__0 _g5595_))
                  ((fx= _g5594_ 2)
                   (apply gx#core-expand-include%__opt-lambda4757 _g5595_))
                  (else (error "No clause matching arguments" _g5595_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4726
      (lambda (_K4728_ _stx4729_ _method4730_)
        (if (procedure? _K4728_)
            (let ((_$e4732_ (gx#stx-source _stx4729_)))
              (if _$e4732_
                  ((lambda (_g47344736_)
                     (gx#stx-wrap-source (_K4728_ _stx4729_) _g47344736_))
                   _$e4732_)
                  (_K4728_ _stx4729_)))
            (let ((_$e4739_ (bound-method-ref _K4728_ _method4730_)))
              (if _$e4739_
                  ((lambda (_g47414743_)
                     (gx#core-apply-expander__opt-lambda4726
                      _g47414743_
                      _stx4729_
                      _method4730_))
                   _$e4739_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4729_
                   _method4730_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4749_ _stx4750_)
          (let ((_method4752_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4726
             _K4749_
             _stx4750_
             _method4752_))))
      (define gx#core-apply-expander
        (lambda _g5597_
          (let ((_g5596_ (length _g5597_)))
            (cond ((fx= _g5596_ 2) (apply gx#core-apply-expander__0 _g5597_))
                  ((fx= _g5596_ 3)
                   (apply gx#core-apply-expander__opt-lambda4726 _g5597_))
                  (else (error "No clause matching arguments" _g5597_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4724_ _stx4725_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4725_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4699_ _stx4700_)
      (let ((_self47014707_ _self4699_))
        (let ((_E47034711_
               (lambda () (error '"No clause matching" _self47014707_))))
          (let ((_K47044716_
                 (lambda (_K4714_)
                   (gx#core-apply-expander__0 _K4714_ _stx4700_))))
            (if (struct-instance? gx#macro-expander::t _self47014707_)
                (let ((_e47054719_ (##vector-ref _self47014707_ '1)))
                  (let ((_K4722_ _e47054719_)) (_K47044716_ _K4722_)))
                (_E47034711_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4674_ _stx4675_)
      (if (gx#sealed-syntax? _stx4675_)
          _stx4675_
          (let ((_self46764682_ _self4674_))
            (let ((_E46784686_
                   (lambda () (error '"No clause matching" _self46764682_))))
              (let ((_K46794691_
                     (lambda (_K4689_)
                       (gx#core-apply-expander__0 _K4689_ _stx4675_))))
                (if (struct-instance? gx#core-expander::t _self46764682_)
                    (let ((_e46804694_ (##vector-ref _self46764682_ '1)))
                      (let ((_K4697_ _e46804694_)) (_K46794691_ _K4697_)))
                    (_E46784686_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4656
      (lambda (_self4658_ _stx4659_ _top?4660_)
        (if (_top?4660_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4658_ _stx4659_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4659_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4665_ _stx4666_)
          (let ((_top?4668_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4656
             _self4665_
             _stx4666_
             _top?4668_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5599_
          (let ((_g5598_ (length _g5599_)))
            (cond ((fx= _g5598_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5599_))
                  ((fx= _g5598_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4656
                          _g5599_))
                  (else (error "No clause matching arguments" _g5599_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4654_ _stx4655_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4656
       _self4654_
       _stx4655_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4601_ _stx4602_)
      (let ((_self46034609_ _self4601_))
        (let ((_E46054613_
               (lambda () (error '"No clause matching" _self46034609_))))
          (let ((_K46064646_
                 (lambda (_id4616_)
                   (let ((_e46174624_ _stx4602_))
                     (let ((_E46194628_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e46174624_))))
                       (let ((_E46184642_
                              (lambda ()
                                (if (gx#stx-pair? _e46174624_)
                                    (let ((_e46204632_
                                           (gx#syntax-e _e46174624_)))
                                      (let ((_hd46214635_ (##car _e46204632_))
                                            (_tl46224637_ (##cdr _e46204632_)))
                                        (let ((_body4640_ _tl46224637_))
                                          (if '#t
                                              (gx#core-cons
                                               _id4616_
                                               _body4640_)
                                              (_E46194628_)))))
                                    (_E46194628_)))))
                         (let () (_E46184642_))))))))
            (if (struct-instance? gx#rename-macro-expander::t _self46034609_)
                (let ((_e46074649_ (##vector-ref _self46034609_ '1)))
                  (let ((_id4652_ _e46074649_)) (_K46064646_ _id4652_)))
                (_E46054613_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4547
      (lambda (_self4549_ _stx4550_ _method4551_)
        (let ((_self45524560_ _self4549_))
          (let ((_E45544564_
                 (lambda () (error '"No clause matching" _self45524560_))))
            (let ((_K45554571_
                   (lambda (_phi4567_ _ctx4568_ _K4569_)
                     (gx#core-apply-user-macro
                      _K4569_
                      _stx4550_
                      _ctx4568_
                      _phi4567_
                      _method4551_))))
              (if (struct-instance? gx#user-expander::t _self45524560_)
                  (let ((_e45564574_ (##vector-ref _self45524560_ '1)))
                    (let ((_K4577_ _e45564574_))
                      (let ((_e45574579_ (##vector-ref _self45524560_ '2)))
                        (let ((_ctx4582_ _e45574579_))
                          (let ((_e45584584_ (##vector-ref _self45524560_ '3)))
                            (let ((_phi4587_ _e45584584_))
                              (_K45554571_ _phi4587_ _ctx4582_ _K4577_)))))))
                  (_E45544564_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4592_ _stx4593_)
          (let ((_method4595_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4547
             _self4592_
             _stx4593_
             _method4595_))))
      (define gx#core-apply-user-expander
        (lambda _g5601_
          (let ((_g5600_ (length _g5601_)))
            (cond ((fx= _g5600_ 2)
                   (apply gx#core-apply-user-expander__0 _g5601_))
                  ((fx= _g5600_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4547 _g5601_))
                  (else (error "No clause matching arguments" _g5601_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4539_ _stx4540_ _ctx4541_ _phi4542_ _method4543_)
      (let ((_mark4545_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4541_
              _phi4542_
              _stx4540_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4726
             _K4539_
             (gx#stx-apply-mark _stx4540_ _mark4545_)
             _method4543_)
            _mark4545_))
         gx#current-expander-marks
         (cons _mark4545_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4511
      (lambda (_stx4513_ _phi4514_ _ctx4515_)
        ((letrec ((_lp4517_
                   (lambda (_bind4519_)
                     (if (##structure-direct-instance-of?
                          _bind4519_
                          'gx#import-binding::t)
                         (_lp4517_
                          (##structure-ref
                           _bind4519_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind4519_
                              'gx#alias-binding::t)
                             (_lp4517_
                              (gx#core-resolve-identifier__opt-lambda4441
                               (##structure-ref
                                _bind4519_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi4514_
                               _ctx4515_))
                             _bind4519_)))))
           _lp4517_)
         (gx#core-resolve-identifier__opt-lambda4441
          _stx4513_
          _phi4514_
          _ctx4515_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4524_)
          (let ((_phi4526_ (gx#current-expander-phi)))
            (let ((_ctx4528_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda4511
               _stx4524_
               _phi4526_
               _ctx4528_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx4530_ _phi4531_)
          (let ((_ctx4533_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4511
             _stx4530_
             _phi4531_
             _ctx4533_))))
      (define gx#resolve-identifier
        (lambda _g5603_
          (let ((_g5602_ (length _g5603_)))
            (cond ((fx= _g5602_ 1) (apply gx#resolve-identifier__0 _g5603_))
                  ((fx= _g5602_ 2) (apply gx#resolve-identifier__1 _g5603_))
                  ((fx= _g5602_ 3)
                   (apply gx#resolve-identifier__opt-lambda4511 _g5603_))
                  (else (error "No clause matching arguments" _g5603_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4469
      (lambda (_stx4471_ _val4472_ _rebind?4473_ _phi4474_ _ctx4475_)
        (let ((_rebind?4477_
               (if (not _rebind?4473_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4473_) _rebind?4473_ true))))
          (gx#core-bind!__opt-lambda4231
           (gx#core-identifier-key _stx4471_)
           _val4472_
           _rebind?4477_
           _phi4474_
           _ctx4475_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4482_ _val4483_)
          (let ((_rebind?4485_ '#f))
            (let ((_phi4487_ (gx#current-expander-phi)))
              (let ((_ctx4489_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda4469
                 _stx4482_
                 _val4483_
                 _rebind?4485_
                 _phi4487_
                 _ctx4489_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx4491_ _val4492_ _rebind?4493_)
          (let ((_phi4495_ (gx#current-expander-phi)))
            (let ((_ctx4497_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda4469
               _stx4491_
               _val4492_
               _rebind?4493_
               _phi4495_
               _ctx4497_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx4499_ _val4500_ _rebind?4501_ _phi4502_)
          (let ((_ctx4504_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4469
             _stx4499_
             _val4500_
             _rebind?4501_
             _phi4502_
             _ctx4504_))))
      (define gx#bind-identifier!
        (lambda _g5605_
          (let ((_g5604_ (length _g5605_)))
            (cond ((fx= _g5604_ 2) (apply gx#bind-identifier!__0 _g5605_))
                  ((fx= _g5604_ 3) (apply gx#bind-identifier!__1 _g5605_))
                  ((fx= _g5604_ 4) (apply gx#bind-identifier!__2 _g5605_))
                  ((fx= _g5604_ 5)
                   (apply gx#bind-identifier!__opt-lambda4469 _g5605_))
                  (else (error "No clause matching arguments" _g5605_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4441
      (lambda (_stx4443_ _phi4444_ _ctx4445_)
        ((letrec ((_lp4447_
                   (lambda (_e4449_ _marks4450_)
                     (if (symbol? _e4449_)
                         (gx#core-resolve-binding
                          _e4449_
                          _phi4444_
                          _ctx4445_
                          (reverse _marks4450_))
                         (if (gx#identifier-quote? _e4449_)
                             (gx#core-resolve-binding
                              (##structure-ref _e4449_ '1 AST::t '#f)
                              _phi4444_
                              (##structure-ref
                               _e4449_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e4449_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e4449_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e4449_ '1 AST::t '#f)
                                  _phi4444_
                                  _ctx4445_
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e4449_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks4450_))
                                 (if (##structure-direct-instance-of?
                                      _e4449_
                                      'gx#syntax-wrap::t)
                                     (_lp4447_
                                      (##structure-ref _e4449_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e4449_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks4450_))
                                     (if (##structure-instance-of?
                                          _e4449_
                                          'gerbil#AST::t)
                                         (_lp4447_
                                          (##structure-ref
                                           _e4449_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks4450_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx4443_)))))))))
           _lp4447_)
         _stx4443_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4455_)
          (let ((_phi4457_ (gx#current-expander-phi)))
            (let ((_ctx4459_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda4441
               _stx4455_
               _phi4457_
               _ctx4459_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4461_ _phi4462_)
          (let ((_ctx4464_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4441
             _stx4461_
             _phi4462_
             _ctx4464_))))
      (define gx#core-resolve-identifier
        (lambda _g5607_
          (let ((_g5606_ (length _g5607_)))
            (cond ((fx= _g5606_ 1)
                   (apply gx#core-resolve-identifier__0 _g5607_))
                  ((fx= _g5606_ 2)
                   (apply gx#core-resolve-identifier__1 _g5607_))
                  ((fx= _g5606_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4441 _g5607_))
                  (else (error "No clause matching arguments" _g5607_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4357_ _phi4358_ _ctx4359_ _marks4360_)
      (let ((_resolve4362_
             (lambda (_ctx4430_ _src-phi4431_ _key4432_)
               ((letrec ((_lp4434_
                          (lambda (_ctx4436_ _dphi4437_)
                            (let ((_$e4439_
                                   (gx#core-context-resolve
                                    _ctx4436_
                                    _key4432_)))
                              (if _$e4439_
                                  (values _$e4439_)
                                  (if (fxzero? _dphi4437_)
                                      '#f
                                      (if (fxpositive? _dphi4437_)
                                          (_lp4434_
                                           (gx#core-context-shift
                                            _ctx4436_
                                            '-1)
                                           (fx- _dphi4437_ '1))
                                          (if (fxnegative? _dphi4437_)
                                              (_lp4434_
                                               (gx#core-context-shift
                                                _ctx4436_
                                                '1)
                                               (fx+ _dphi4437_ '1))
                                              '#!void))))))))
                  _lp4434_)
                (gx#core-context-shift _ctx4430_ _phi4358_)
                (fx- _phi4358_ _src-phi4431_)))))
        ((letrec ((_lp4364_
                   (lambda (_ctx4366_ _src-phi4367_ _rest4368_)
                     (let ((_rest43694377_ _rest4368_))
                       (let ((_E43724381_
                              (lambda ()
                                (error '"No clause matching" _rest43694377_))))
                         (let ((_else43714385_
                                (lambda ()
                                  (_resolve4362_
                                   _ctx4366_
                                   _src-phi4367_
                                   _id4357_))))
                           (let ((_K43734418_
                                  (lambda (_rest4388_ _hd4389_)
                                    (let ((_hd43904396_ _hd4389_))
                                      (let ((_E43924400_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd43904396_))))
                                        (let ((_K43934410_
                                               (lambda (_subst4403_)
                                                 (let ((_$e4407_
                                                        (let ((_key4405_
                                                               (if _subst4403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (table-ref _subst4403_ _id4357_ '#f)
                           '#f)))
                  (if _key4405_
                      (_resolve4362_ _ctx4366_ _src-phi4367_ _key4405_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e4407_
                                                       _$e4407_
                                                       (_lp4364_
                                                        (##structure-ref
                                                         _hd4389_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd4389_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest4388_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd43904396_)
                                              (let ((_e43944413_
                                                     (##vector-ref
                                                      _hd43904396_
                                                      '1)))
                                                (let ((_subst4416_
                                                       _e43944413_))
                                                  (_K43934410_ _subst4416_)))
                                              (_E43924400_))))))))
                             (if (##pair? _rest43694377_)
                                 (let ((_hd43744421_ (##car _rest43694377_))
                                       (_tl43754423_ (##cdr _rest43694377_)))
                                   (let ((_hd4426_ _hd43744421_))
                                     (let ((_rest4428_ _tl43754423_))
                                       (_K43734418_ _rest4428_ _hd4426_))))
                                 (_else43714385_)))))))))
           _lp4364_)
         _ctx4359_
         _phi4358_
         _marks4360_))))
  (begin
    (define gx#core-bind!__opt-lambda4231
      (lambda (_key4233_ _val4234_ _rebind?4235_ _phi4236_ _ctx4237_)
        (let ((_update-binding4239_
               (lambda (_xval4310_)
                 (if (let ((_$e4312_
                            (_rebind?4235_ _ctx4237_ _xval4310_ _val4234_)))
                       (if _$e4312_
                           _$e4312_
                           (let ((_$e4318_
                                  (if (##structure-direct-instance-of?
                                       _xval4310_
                                       'gx#import-binding::t)
                                      (let ((_$e4315_
                                             (##structure-ref
                                              _xval4310_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e4315_
                                            _$e4315_
                                            (if (##structure-instance-of?
                                                 _val4234_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val4234_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e4318_
                                 _$e4318_
                                 (if (##structure-instance-of?
                                      _xval4310_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val4234_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val4234_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval4310_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val4234_
                     (if (if (##structure-direct-instance-of?
                              _val4234_
                              'gx#import-binding::t)
                             (let ((_$e4321_
                                    (##structure-ref
                                     _val4234_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e4321_
                                   _$e4321_
                                   (if (##structure-instance-of?
                                        _xval4310_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val4234_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval4310_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval4310_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key4233_
                          _xval4310_
                          _val4234_))))))
          (let ((_gensubst4240_
                 (lambda (_subst4305_ _id4306_)
                   (let ((_eid4308_
                          (gensym (if (uninterned-symbol? _id4306_)
                                      '%
                                      _id4306_))))
                     (begin
                       (table-set! _subst4305_ _id4306_ _eid4308_)
                       _eid4308_)))))
            (let ((_subst!4241_
                   (lambda (_key4243_)
                     (let ((_key42444252_ _key4243_))
                       (let ((_E42474256_
                              (lambda ()
                                (error '"No clause matching" _key42444252_))))
                         (let ((_else42464260_ (lambda () _key4243_)))
                           (let ((_K42484293_
                                  (lambda (_mark4263_ _id4264_)
                                    (let ((_mark42654271_ _mark4263_))
                                      (let ((_E42674275_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark42654271_))))
                                        (let ((_K42684285_
                                               (lambda (_subst4278_)
                                                 (if (not _subst4278_)
                                                     (let ((_subst4280_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark4263_
                                                          _subst4280_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst4240_
                                                          _subst4280_
                                                          _id4264_)))
                                                     (let ((_$e4282_
                                                            (table-ref
                                                             _subst4278_
                                                             _id4264_
                                                             '#f)))
                                                       (if _$e4282_
                                                           (values _$e4282_)
                                                           (_gensubst4240_
                                                            _subst4278_
                                                            _id4264_)))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _mark42654271_)
                                              (let ((_e42694288_
                                                     (##vector-ref
                                                      _mark42654271_
                                                      '1)))
                                                (let ((_subst4291_
                                                       _e42694288_))
                                                  (_K42684285_ _subst4291_)))
                                              (_E42674275_))))))))
                             (if (##pair? _key42444252_)
                                 (let ((_hd42494296_ (##car _key42444252_))
                                       (_tl42504298_ (##cdr _key42444252_)))
                                   (let ((_id4301_ _hd42494296_))
                                     (let ((_mark4303_ _tl42504298_))
                                       (_K42484293_ _mark4303_ _id4301_))))
                                 (_else42464260_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx4237_ _phi4236_)
               (_subst!4241_ _key4233_)
               _val4234_
               _update-binding4239_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4327_ _val4328_)
          (let ((_rebind?4330_ false))
            (let ((_phi4332_ (gx#current-expander-phi)))
              (let ((_ctx4334_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda4231
                 _key4327_
                 _val4328_
                 _rebind?4330_
                 _phi4332_
                 _ctx4334_))))))
      (define gx#core-bind!__1
        (lambda (_key4336_ _val4337_ _rebind?4338_)
          (let ((_phi4340_ (gx#current-expander-phi)))
            (let ((_ctx4342_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda4231
               _key4336_
               _val4337_
               _rebind?4338_
               _phi4340_
               _ctx4342_)))))
      (define gx#core-bind!__2
        (lambda (_key4344_ _val4345_ _rebind?4346_ _phi4347_)
          (let ((_ctx4349_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4231
             _key4344_
             _val4345_
             _rebind?4346_
             _phi4347_
             _ctx4349_))))
      (define gx#core-bind!
        (lambda _g5609_
          (let ((_g5608_ (length _g5609_)))
            (cond ((fx= _g5608_ 2) (apply gx#core-bind!__0 _g5609_))
                  ((fx= _g5608_ 3) (apply gx#core-bind!__1 _g5609_))
                  ((fx= _g5608_ 4) (apply gx#core-bind!__2 _g5609_))
                  ((fx= _g5608_ 5)
                   (apply gx#core-bind!__opt-lambda4231 _g5609_))
                  (else (error "No clause matching arguments" _g5609_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4163_)
      (if (symbol? _stx4163_)
          (let ((_g41644172_ (gx#current-expander-marks)))
            (let ((_E41674176_
                   (lambda () (error '"No clause matching" _g41644172_))))
              (let ((_else41664180_ (lambda () _stx4163_)))
                (let ((_K41684185_
                       (lambda (_hd4183_) (cons _stx4163_ _hd4183_))))
                  (if (##pair? _g41644172_)
                      (let ((_hd41694188_ (##car _g41644172_))
                            (_tl41704190_ (##cdr _g41644172_)))
                        (let ((_hd4193_ _hd41694188_)) (_K41684185_ _hd4193_)))
                      (_else41664180_))))))
          (if (gx#identifier? _stx4163_)
              (let ((_id4195_ (gx#syntax-local-unwrap _stx4163_)))
                (let ((_eid4197_ (gx#stx-e _id4195_)))
                  (let ((_marks4199_ (gx#stx-identifier-marks _id4195_)))
                    (let ()
                      (let ((_marks42014209_ _marks4199_))
                        (let ((_E42044213_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks42014209_))))
                          (let ((_else42034217_ (lambda () _eid4197_)))
                            (let ((_K42054222_
                                   (lambda (_hd4220_)
                                     (cons _eid4197_ _hd4220_))))
                              (if (##pair? _marks42014209_)
                                  (let ((_hd42064225_ (##car _marks42014209_))
                                        (_tl42074227_ (##cdr _marks42014209_)))
                                    (let ((_hd4230_ _hd42064225_))
                                      (_K42054222_ _hd4230_)))
                                  (_else42034217_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4163_)))))
  (define gx#core-context-shift
    (lambda (_ctx4108_ _phi4109_)
      (let ((_make-phi4111_
             (lambda (_super4161_)
               (let ((__obj5580 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda5542
                    __obj5580
                    (gensym 'phi)
                    _super4161_)
                   __obj5580)))))
        (let ((_make-phi/up4112_
               (lambda (_ctx4156_ _super4157_)
                 (let ((_ctx+14159_ (_make-phi4111_ _super4157_)))
                   (begin
                     (##structure-set!
                      _ctx4156_
                      _ctx+14159_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+14159_
                      _ctx4156_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+14159_)))))
          (let ((_make-phi/down4113_
                 (lambda (_ctx4151_ _super4152_)
                   (let ((_ctx-14154_ (_make-phi4111_ _super4152_)))
                     (begin
                       (##structure-set!
                        _ctx-14154_
                        _ctx4151_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx4151_
                        _ctx-14154_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-14154_)))))
            (let ((_shift4114_
                   (lambda (_ctx4135_
                            _delta4136_
                            _make-delta-context4137_
                            _phi4138_
                            _K4139_)
                     (let ((_$e4141_
                            (##structure-ref
                             _ctx4135_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e4141_
                           ((lambda (_super4144_)
                              (let ((_super4146_
                                     (_K4139_ _super4144_ _delta4136_)))
                                (let ((_ctx+d4148_
                                       (_make-delta-context4137_
                                        _ctx4135_
                                        _super4146_)))
                                  (let ()
                                    (_K4139_ _ctx+d4148_
                                             (fx- _phi4138_ _delta4136_))))))
                            _$e4141_)
                           (error '"Bad context" _ctx4135_))))))
              ((letrec ((_K4116_ (lambda (_ctx4118_ _phi4119_)
                                   (if (fxzero? _phi4119_)
                                       _ctx4118_
                                       (if (##structure-instance-of?
                                            _ctx4118_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi4119_)
                                               (let ((_$e4121_
                                                      (##structure-ref
                                                       _ctx4118_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4121_
                                                     ((lambda (_g41234125_)
                                                        (_K4116_ _g41234125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx- _phi4119_ '1)))
              _$e4121_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4114_
                                                      _ctx4118_
                                                      '1
                                                      _make-phi/up4112_
                                                      _phi4119_
                                                      _K4116_)))
                                               (let ((_$e4128_
                                                      (##structure-ref
                                                       _ctx4118_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4128_
                                                     ((lambda (_g41304132_)
                                                        (_K4116_ _g41304132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx+ _phi4119_ '1)))
              _$e4128_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4114_
                                                      _ctx4118_
                                                      '-1
                                                      _make-phi/down4113_
                                                      _phi4119_
                                                      _K4116_))))
                                           _ctx4118_)))))
                 _K4116_)
               _ctx4108_
               _phi4109_)))))))
  (define gx#core-context-get
    (lambda (_ctx4105_ _key4106_)
      (table-ref
       (##structure-ref _ctx4105_ '2 gx#expander-context::t '#f)
       _key4106_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4101_ _key4102_ _val4103_)
      (table-set!
       (##structure-ref _ctx4101_ '2 gx#expander-context::t '#f)
       _key4102_
       _val4103_)))
  (define gx#core-context-resolve
    (lambda (_ctx4088_ _key4089_)
      ((letrec ((_lp4091_
                 (lambda (_ctx4093_)
                   (let ((_$e4095_ (gx#core-context-get _ctx4093_ _key4089_)))
                     (if _$e4095_
                         (values _$e4095_)
                         (let ((_$e4098_
                                (if (##structure-instance-of?
                                     _ctx4093_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx4093_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e4098_ (_lp4091_ _$e4098_) '#f)))))))
         _lp4091_)
       _ctx4088_)))
  (define gx#core-context-bind!
    (lambda (_ctx4078_ _key4079_ _val4080_ _rebind4081_)
      (let ((_$e4083_ (gx#core-context-get _ctx4078_ _key4079_)))
        (if _$e4083_
            ((lambda (_xval4086_)
               (gx#core-context-put!
                _ctx4078_
                _key4079_
                (_rebind4081_ _xval4086_)))
             _$e4083_)
            (gx#core-context-put! _ctx4078_ _key4079_ _val4080_)))))
  (begin
    (define gx#core-context-top__opt-lambda4054
      (lambda (_ctx4056_ _stop?4057_)
        ((letrec ((_lp4059_
                   (lambda (_ctx4061_)
                     (if (_stop?4057_ _ctx4061_)
                         _ctx4061_
                         (if (##structure-instance-of?
                              _ctx4061_
                              'gx#context-phi::t)
                             (_lp4059_
                              (##structure-ref
                               _ctx4061_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp4059_)
         _ctx4056_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx4067_ (gx#current-expander-context)))
            (let ((_stop?4069_ gx#top-context?))
              (gx#core-context-top__opt-lambda4054 _ctx4067_ _stop?4069_)))))
      (define gx#core-context-top__1
        (lambda (_ctx4071_)
          (let ((_stop?4073_ gx#top-context?))
            (gx#core-context-top__opt-lambda4054 _ctx4071_ _stop?4073_))))
      (define gx#core-context-top
        (lambda _g5611_
          (let ((_g5610_ (length _g5611_)))
            (cond ((fx= _g5610_ 0) (apply gx#core-context-top__0 _g5611_))
                  ((fx= _g5610_ 1) (apply gx#core-context-top__1 _g5611_))
                  ((fx= _g5610_ 2)
                   (apply gx#core-context-top__opt-lambda4054 _g5611_))
                  (else (error "No clause matching arguments" _g5611_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4039
      (lambda (_ctx4041_)
        ((letrec ((_lp4043_
                   (lambda (_ctx4045_)
                     (if (##structure-instance-of?
                          _ctx4045_
                          'gx#context-phi::t)
                         (_lp4043_
                          (##structure-ref _ctx4045_ '3 gx#phi-context::t '#f))
                         _ctx4045_))))
           _lp4043_)
         _ctx4041_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4051_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4039 _ctx4051_))))
      (define gx#core-context-root
        (lambda _g5613_
          (let ((_g5612_ (length _g5613_)))
            (cond ((fx= _g5612_ 0) (apply gx#core-context-root__0 _g5613_))
                  ((fx= _g5612_ 1)
                   (apply gx#core-context-root__opt-lambda4039 _g5613_))
                  (else (error "No clause matching arguments" _g5613_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4023
      (lambda (_ctx4025_ . __40224026_)
        (if (##structure-instance-of? _ctx4025_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4025_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4025_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4033_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4023 _ctx4033_))))
      (define gx#core-context-rebind?
        (lambda _g5615_
          (let ((_g5614_ (length _g5615_)))
            (cond ((fx= _g5614_ 0) (apply gx#core-context-rebind?__0 _g5615_))
                  ((fx= _g5614_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4023 _g5615_))
                  ((fx>= _g5614_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4023 _g5615_))
                  (else (error "No clause matching arguments" _g5615_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4006
      (lambda (_ctx4008_)
        (let ((_$e4010_ (gx#core-context-top__1 _ctx4008_)))
          (if _$e4010_
              ((lambda (_ctx4013_)
                 (if (##structure-instance-of? _ctx4013_ 'gx#module-context::t)
                     (##structure-ref _ctx4013_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4010_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4019_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4006 _ctx4019_))))
      (define gx#core-context-namespace
        (lambda _g5617_
          (let ((_g5616_ (length _g5617_)))
            (cond ((fx= _g5616_ 0)
                   (apply gx#core-context-namespace__0 _g5617_))
                  ((fx= _g5616_ 1)
                   (apply gx#core-context-namespace__opt-lambda4006 _g5617_))
                  (else (error "No clause matching arguments" _g5617_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda3992
      (lambda (_bind3994_ _is?3995_)
        (if (##structure-direct-instance-of? _bind3994_ 'gx#syntax-binding::t)
            (_is?3995_
             (##structure-ref _bind3994_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4000_)
          (let ((_is?4002_ gx#expander?))
            (gx#expander-binding?__opt-lambda3992 _bind4000_ _is?4002_))))
      (define gx#expander-binding?
        (lambda _g5619_
          (let ((_g5618_ (length _g5619_)))
            (cond ((fx= _g5618_ 1) (apply gx#expander-binding?__0 _g5619_))
                  ((fx= _g5618_ 2)
                   (apply gx#expander-binding?__opt-lambda3992 _g5619_))
                  (else (error "No clause matching arguments" _g5619_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind3991_)
      (gx#expander-binding?__opt-lambda3992 _bind3991_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind3989_)
      (gx#expander-binding?__opt-lambda3992 _bind3989_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind3987_)
      (gx#expander-binding?__opt-lambda3992 _bind3987_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind3978_)
      (let ((_feature?3980_
             (lambda (_e3982_)
               (let ((_$e3984_
                      (##structure-instance-of?
                       _e3982_
                       'gx#feature-expander::t)))
                 (if _$e3984_
                     _$e3984_
                     (##structure-instance-of?
                      _e3982_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda3992 _bind3978_ _feature?3980_))))
  (define gx#private-feature-binding?
    (lambda (_bind3976_)
      (gx#expander-binding?__opt-lambda3992
       _bind3976_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda3961
      (lambda (_id3963_ _bound?3964_)
        (if (gx#identifier? _id3963_)
            (_bound?3964_ (gx#resolve-identifier__0 _id3963_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id3969_)
          (let ((_bound?3971_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda3961
             _id3969_
             _bound?3971_))))
      (define gx#core-bound-identifier?
        (lambda _g5621_
          (let ((_g5620_ (length _g5621_)))
            (cond ((fx= _g5620_ 1)
                   (apply gx#core-bound-identifier?__0 _g5621_))
                  ((fx= _g5620_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda3961 _g5621_))
                  (else (error "No clause matching arguments" _g5621_))))))))
  (define gx#core-identifier=?
    (lambda (_x3953_ _y3954_)
      (let ((_y=?3956_
             (lambda (_xid3960_)
               ((if (list? _y3954_) memq eq?) _xid3960_ _y3954_))))
        (let ((_bind3958_ (gx#resolve-identifier__0 _x3953_)))
          (if (##structure-instance-of? _bind3958_ 'gx#binding::t)
              (_y=?3956_ (##structure-ref _bind3958_ '1 gx#binding::t '#f))
              (_y=?3956_ (gx#stx-e _x3953_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e3951_)
      (if (interned-symbol? _e3951_)
          (string-index (symbol->string _e3951_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda3907
      (lambda (_stx3909_ _src3910_ _ctx3911_ _marks3912_)
        (if (gx#sealed-syntax? _stx3909_)
            (gx#stx-unwrap__0 _stx3909_)
            (if (gx#identifier? _stx3909_)
                (let ((_id3914_ (gx#syntax-local-unwrap _stx3909_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id3914_)
                   (let ((_$e3916_ (gx#stx-source _id3914_)))
                     (if _$e3916_ _$e3916_ _src3910_))
                   _ctx3911_
                   (##structure-ref _id3914_ '3 gx#identifier-wrap::t '#f)))
                (if (gx#stx-datum? _stx3909_)
                    (gx#stx-e _stx3909_)
                    (##structure
                     gx#syntax-quote::t
                     _stx3909_
                     (let ((_$e3919_ (gx#stx-source _stx3909_)))
                       (if _$e3919_ _$e3919_ _src3910_))
                     _ctx3911_
                     (reverse _marks3912_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx3925_)
          (let ((_src3927_ '#f))
            (let ((_ctx3929_ (gx#current-expander-context)))
              (let ((_marks3931_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda3907
                 _stx3925_
                 _src3927_
                 _ctx3929_
                 _marks3931_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx3933_ _src3934_)
          (let ((_ctx3936_ (gx#current-expander-context)))
            (let ((_marks3938_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda3907
               _stx3933_
               _src3934_
               _ctx3936_
               _marks3938_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx3940_ _src3941_ _ctx3942_)
          (let ((_marks3944_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda3907
             _stx3940_
             _src3941_
             _ctx3942_
             _marks3944_))))
      (define gx#core-quote-syntax
        (lambda _g5623_
          (let ((_g5622_ (length _g5623_)))
            (cond ((fx= _g5622_ 1) (apply gx#core-quote-syntax__0 _g5623_))
                  ((fx= _g5622_ 2) (apply gx#core-quote-syntax__1 _g5623_))
                  ((fx= _g5622_ 3) (apply gx#core-quote-syntax__2 _g5623_))
                  ((fx= _g5622_ 4)
                   (apply gx#core-quote-syntax__opt-lambda3907 _g5623_))
                  (else (error "No clause matching arguments" _g5623_))))))))
  (define gx#core-cons
    (lambda (_hd3905_ _tl3906_)
      (cons (gx#core-quote-syntax__0 _hd3905_) _tl3906_)))
  (define gx#core-list
    (lambda (_hd3902_ . _rest3903_)
      (cons (gx#core-quote-syntax__0 _hd3902_) _rest3903_)))
  (define gx#core-cons*
    (lambda (_hd3899_ . _rest3900_)
      (apply cons* (gx#core-quote-syntax__0 _hd3899_) _rest3900_)))
  (begin
    (define gx#core-resolve-path__opt-lambda3871
      (lambda (_stx-path3873_ _rel3874_)
        (let ((_path3886_ (gx#stx-e _stx-path3873_))
              (_reldir3887_
               ((letrec ((_lp3876_
                          (lambda (_relsrc3878_)
                            (if (##structure-instance-of?
                                 _relsrc3878_
                                 'gerbil#AST::t)
                                (_lp3876_
                                 (let ((_$e3880_ (gx#stx-source _relsrc3878_)))
                                   (if _$e3880_
                                       _$e3880_
                                       (gx#stx-e _relsrc3878_))))
                                (if (source-location-path? _relsrc3878_)
                                    (path-directory
                                     (source-location-path _relsrc3878_))
                                    (if (string? _relsrc3878_)
                                        (path-directory _relsrc3878_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp3876_)
                (let ((_$e3883_ (gx#stx-source _stx-path3873_)))
                  (if _$e3883_ _$e3883_ _rel3874_)))))
          (path-expand _path3886_ (path-normalize _reldir3887_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path3892_)
          (let ((_rel3894_ '#f))
            (gx#core-resolve-path__opt-lambda3871 _stx-path3892_ _rel3894_))))
      (define gx#core-resolve-path
        (lambda _g5625_
          (let ((_g5624_ (length _g5625_)))
            (cond ((fx= _g5624_ 1) (apply gx#core-resolve-path__0 _g5625_))
                  ((fx= _g5624_ 2)
                   (apply gx#core-resolve-path__opt-lambda3871 _g5625_))
                  (else (error "No clause matching arguments" _g5625_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx3870_) (gx#stx-rewrap _stx3870_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx3868_)
      (gx#stx-unwrap__opt-lambda3681 _stx3868_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx3836_)
      (let ((_g38373845_ (gx#current-expander-marks)))
        (let ((_E38403849_
               (lambda () (error '"No clause matching" _g38373845_))))
          (let ((_else38393853_ (lambda () _stx3836_)))
            (let ((_K38413858_
                   (lambda (_hd3856_) (gx#stx-apply-mark _stx3836_ _hd3856_))))
              (if (##pair? _g38373845_)
                  (let ((_hd38423861_ (##car _g38373845_))
                        (_tl38433863_ (##cdr _g38373845_)))
                    (let ((_hd3866_ _hd38423861_)) (_K38413858_ _hd3866_)))
                  (_else38393853_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda3819
      (lambda (_stx3821_ _E3822_)
        (let ((_bind3824_ (gx#resolve-identifier__0 _stx3821_)))
          (if (##structure-direct-instance-of?
               _bind3824_
               'gx#syntax-binding::t)
              (##structure-ref _bind3824_ '4 gx#syntax-binding::t '#f)
              (_E3822_ _stx3821_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx3829_)
          (let ((_E3831_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda3819 _stx3829_ _E3831_))))
      (define gx#syntax-local-e
        (lambda _g5627_
          (let ((_g5626_ (length _g5627_)))
            (cond ((fx= _g5626_ 1) (apply gx#syntax-local-e__0 _g5627_))
                  ((fx= _g5626_ 2)
                   (apply gx#syntax-local-e__opt-lambda3819 _g5627_))
                  (else (error "No clause matching arguments" _g5627_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda3803
      (lambda (_stx3805_ _E3806_)
        (let ((_e3808_ (gx#syntax-local-e__opt-lambda3819 _stx3805_ _E3806_)))
          (if (##structure-instance-of? _e3808_ 'gx#expander::t)
              (##structure-ref _e3808_ '1 gx#expander::t '#f)
              _e3808_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx3813_)
          (let ((_E3815_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda3803 _stx3813_ _E3815_))))
      (define gx#syntax-local-value
        (lambda _g5629_
          (let ((_g5628_ (length _g5629_)))
            (cond ((fx= _g5628_ 1) (apply gx#syntax-local-value__0 _g5629_))
                  ((fx= _g5628_ 2)
                   (apply gx#syntax-local-value__opt-lambda3803 _g5629_))
                  (else (error "No clause matching arguments" _g5629_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx3802_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx3802_))))
