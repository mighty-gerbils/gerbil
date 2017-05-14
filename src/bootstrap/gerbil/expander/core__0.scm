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
    (lambda _$args5561_
      (apply make-struct-instance gx#expander-context::t _$args5561_)))
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
    (lambda _$args5558_
      (apply make-struct-instance gx#root-context::t _$args5558_)))
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
    (lambda _$args5555_
      (apply make-struct-instance gx#phi-context::t _$args5555_)))
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
    (lambda _$args5552_
      (apply make-struct-instance gx#top-context::t _$args5552_)))
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
    (lambda _$args5549_
      (apply make-struct-instance gx#module-context::t _$args5549_)))
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
    (lambda _$args5546_
      (apply make-struct-instance gx#prelude-context::t _$args5546_)))
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
    (lambda _$args5543_
      (apply make-struct-instance gx#local-context::t _$args5543_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5525
      (lambda (_self5527_ _id5528_ _super5529_)
        (direct-struct-instance-init!
         _self5527_
         _id5528_
         (make-hash-table-eq)
         _super5529_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5534_ _id5535_)
          (let ((_super5537_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5525
             _self5534_
             _id5535_
             _super5537_))))
      (define gx#phi-context:::init!
        (lambda _g5565_
          (let ((_g5564_ (length _g5565_)))
            (cond ((fx= _g5564_ 2) (apply gx#phi-context:::init!__0 _g5565_))
                  ((fx= _g5564_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5525 _g5565_))
                  (else (error "No clause matching arguments" _g5565_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5511
      (lambda (_self5513_ _super5514_)
        (direct-struct-instance-init!
         _self5513_
         (gensym 'L)
         (make-hash-table-eq)
         _super5514_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5519_)
          (let ((_super5521_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5511
             _self5519_
             _super5521_))))
      (define gx#local-context:::init!
        (lambda _g5567_
          (let ((_g5566_ (length _g5567_)))
            (cond ((fx= _g5566_ 1) (apply gx#local-context:::init!__0 _g5567_))
                  ((fx= _g5566_ 2)
                   (apply gx#local-context:::init!__opt-lambda5511 _g5567_))
                  (else (error "No clause matching arguments" _g5567_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5509_
      (apply make-struct-instance gx#binding::t _$args5509_)))
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
    (lambda _$args5506_
      (apply make-struct-instance gx#runtime-binding::t _$args5506_)))
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
    (lambda _$args5503_
      (apply make-struct-instance gx#local-binding::t _$args5503_)))
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
    (lambda _$args5500_
      (apply make-struct-instance gx#top-binding::t _$args5500_)))
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
    (lambda _$args5497_
      (apply make-struct-instance gx#module-binding::t _$args5497_)))
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
    (lambda _$args5494_
      (apply make-struct-instance gx#extern-binding::t _$args5494_)))
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
    (lambda _$args5491_
      (apply make-struct-instance gx#syntax-binding::t _$args5491_)))
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
    (lambda _$args5488_
      (apply make-struct-instance gx#import-binding::t _$args5488_)))
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
    (lambda _$args5485_
      (apply make-struct-instance gx#alias-binding::t _$args5485_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5482_
      (apply make-struct-instance gx#expander::t _$args5482_)))
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
    (lambda _$args5479_
      (apply make-struct-instance gx#core-expander::t _$args5479_)))
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
    (lambda _$args5476_
      (apply make-struct-instance gx#expression-form::t _$args5476_)))
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
    (lambda _$args5473_
      (apply make-struct-instance gx#special-form::t _$args5473_)))
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
    (lambda _$args5470_
      (apply make-struct-instance gx#definition-form::t _$args5470_)))
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
    (lambda _$args5467_
      (apply make-struct-instance gx#top-special-form::t _$args5467_)))
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
    (lambda _$args5464_
      (apply make-struct-instance gx#module-special-form::t _$args5464_)))
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
    (lambda _$args5461_
      (apply make-struct-instance gx#feature-expander::t _$args5461_)))
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
    (lambda _$args5458_
      (apply make-struct-instance gx#private-feature-expander::t _$args5458_)))
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
    (lambda _$args5455_
      (apply make-struct-instance gx#reserved-expander::t _$args5455_)))
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
    (lambda _$args5452_
      (apply make-struct-instance gx#macro-expander::t _$args5452_)))
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
    (lambda _$args5449_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5449_)))
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
    (lambda _$args5446_
      (apply make-struct-instance gx#user-expander::t _$args5446_)))
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
    (lambda _$args5443_
      (apply make-struct-instance gx#expander-mark::t _$args5443_)))
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
    (lambda _$args5440_
      (apply make-struct-instance gx#syntax-error::t _$args5440_)))
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
    (lambda (_where5435_ _message5436_ _stx5437_ . _details5438_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5436_
              (cons _stx5437_ _details5438_)
              _where5435_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5420
      (lambda (_stx5422_ _expression?5423_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5404 _stx5422_ _expression?5423_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5428_)
          (let ((_expression?5430_ '#f))
            (gx#eval-syntax__opt-lambda5420 _stx5428_ _expression?5430_))))
      (define gx#eval-syntax
        (lambda _g5569_
          (let ((_g5568_ (length _g5569_)))
            (cond ((fx= _g5568_ 1) (apply gx#eval-syntax__0 _g5569_))
                  ((fx= _g5568_ 2)
                   (apply gx#eval-syntax__opt-lambda5420 _g5569_))
                  (else (error "No clause matching arguments" _g5569_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5419_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5419_))))
  (begin
    (define gx#core-expand__opt-lambda5404
      (lambda (_stx5406_ _expression?5407_)
        (if _expression?5407_
            (gx#core-expand-expression _stx5406_)
            (gx#core-expand-top _stx5406_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5412_)
          (let ((_expression?5414_ '#f))
            (gx#core-expand__opt-lambda5404 _stx5412_ _expression?5414_))))
      (define gx#core-expand
        (lambda _g5571_
          (let ((_g5570_ (length _g5571_)))
            (cond ((fx= _g5570_ 1) (apply gx#core-expand__0 _g5571_))
                  ((fx= _g5570_ 2)
                   (apply gx#core-expand__opt-lambda5404 _g5571_))
                  (else (error "No clause matching arguments" _g5571_))))))))
  (define gx#core-expand-top
    (lambda (_stx5373_)
      (let ((_stx5375_ (gx#core-expand*__0 _stx5373_)))
        (let ((_e53765383_ _stx5375_))
          (let ((_E53785387_
                 (lambda () (gx#core-expand-expression _stx5375_))))
            (let ((_E53775401_
                   (lambda ()
                     (if (gx#stx-pair? _e53765383_)
                         (let ((_e53795391_ (gx#syntax-e _e53765383_)))
                           (let ((_hd53805394_ (##car _e53795391_))
                                 (_tl53815396_ (##cdr _e53795391_)))
                             (let ((_form5399_ _hd53805394_))
                               (if (gx#core-bound-identifier?__0 _form5399_)
                                   _stx5375_
                                   (_E53785387_)))))
                         (_E53785387_)))))
              (let () (_E53775401_))))))))
  (define gx#core-expand-expression
    (lambda (_stx5295_)
      (let ((_sealed-expression?5297_
             (lambda (_hd5343_)
               (if (gx#sealed-syntax? _hd5343_)
                   (let ((_e53445351_ _hd5343_))
                     (let ((_E53465355_ (lambda () '#f)))
                       (let ((_E53455369_
                              (lambda ()
                                (if (gx#stx-pair? _e53445351_)
                                    (let ((_e53475359_
                                           (gx#syntax-e _e53445351_)))
                                      (let ((_hd53485362_ (##car _e53475359_))
                                            (_tl53495364_ (##cdr _e53475359_)))
                                        (let ((_form5367_ _hd53485362_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda3944
                                               _form5367_
                                               gx#expression-form-binding?)
                                              (_E53465355_)))))
                                    (_E53465355_)))))
                         (let () (_E53455369_)))))
                   '#f))))
        (let ((_illegal-expression5298_
               (lambda (_hd5341_ . _g5572_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx5295_
                  _hd5341_))))
          (let ((_expand-e5299_
                 (lambda (_form5336_ _hd5337_)
                   (let ((_bind5339_
                          (if (##structure-instance-of?
                               _form5336_
                               'gx#binding::t)
                              _form5336_
                              (gx#resolve-identifier__0 _form5336_))))
                     (if (gx#core-expander-binding? _bind5339_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5339_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd5337_
                           (gx#stx-source _stx5295_)))
                         (if (##structure-direct-instance-of?
                              _bind5339_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind5339_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd5337_
                                (gx#stx-source _stx5295_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx5295_
                              _form5336_)))))))
            (let ((_hd5301_ (gx#core-expand-head _stx5295_)))
              (if (_sealed-expression?5297_ _hd5301_)
                  _hd5301_
                  (if (gx#stx-pair? _hd5301_)
                      (let ((_e53025309_ _hd5301_))
                        (let ((_E53045313_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e53025309_))))
                          (let ((_E53035332_
                                 (lambda ()
                                   (if (gx#stx-pair? _e53025309_)
                                       (let ((_e53055317_
                                              (gx#syntax-e _e53025309_)))
                                         (let ((_hd53065320_
                                                (##car _e53055317_))
                                               (_tl53075322_
                                                (##cdr _e53055317_)))
                                           (let ((_form5325_ _hd53065320_))
                                             (if '#t
                                                 (let ((_bind5327_
                                                        (if (gx#identifier?
                                                             _form5325_)
                                                            (gx#resolve-identifier__0
                                                             _form5325_)
                                                            '#f)))
                                                   (if (let ((_$e5329_
                                                              (not _bind5327_)))
                                                         (if _$e5329_
                                                             _$e5329_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind5327_))))
               (_expand-e5299_ '%#call (cons '%#call _hd5301_))
               (if (eq? (##structure-ref _bind5327_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd5301_ _illegal-expression5298_)
                   (if (gx#expression-form-binding? _bind5327_)
                       (_expand-e5299_ _bind5327_ _hd5301_)
                       (_illegal-expression5298_ _hd5301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E53045313_)))))
                                       (_E53045313_)))))
                            (let () (_E53035332_)))))
                      (if (gx#core-bound-identifier?__0 _hd5301_)
                          (_illegal-expression5298_ _hd5301_)
                          (if (gx#identifier? _hd5301_)
                              (_expand-e5299_
                               '%#ref
                               (cons '%#ref (cons _hd5301_ '())))
                              (if (gx#stx-datum? _hd5301_)
                                  (_expand-e5299_
                                   '%#quote
                                   (cons '%#quote (cons _hd5301_ '())))
                                  (_illegal-expression5298_
                                   _hd5301_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx5290_)
      (call-with-parameters
       (lambda ()
         (let ((_stx5293_ (gx#core-expand-expression _stx5290_)))
           (values _stx5293_ (gx#eval-syntax* _stx5293_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda5269
      (lambda (_stx5271_ _stop?5272_)
        ((letrec ((_lp5274_
                   (lambda (_stx5276_)
                     (if (_stop?5272_ _stx5276_)
                         _stx5276_
                         (let ((_rstx5278_ (gx#core-expand1 _stx5276_)))
                           (if (eq? _stx5276_ _rstx5278_)
                               _stx5276_
                               (_lp5274_ _rstx5278_)))))))
           _lp5274_)
         _stx5271_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx5283_)
          (let ((_stop?5285_ false))
            (gx#core-expand*__opt-lambda5269 _stx5283_ _stop?5285_))))
      (define gx#core-expand*
        (lambda _g5574_
          (let ((_g5573_ (length _g5574_)))
            (cond ((fx= _g5573_ 1) (apply gx#core-expand*__0 _g5574_))
                  ((fx= _g5573_ 2)
                   (apply gx#core-expand*__opt-lambda5269 _g5574_))
                  (else (error "No clause matching arguments" _g5574_))))))))
  (define gx#core-expand1
    (lambda (_stx5221_)
      (let ((_step5223_
             (lambda (_hd5260_)
               (let ((_bind5262_ (gx#resolve-identifier__0 _hd5260_)))
                 (if (##structure-instance-of?
                      _bind5262_
                      'gx#runtime-binding::t)
                     _stx5221_
                     (if (##structure-direct-instance-of?
                          _bind5262_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5262_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx5221_)
                         (if (not _bind5262_)
                             (begin
                               (if (let ((_$e5264_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e5264_
                                         _$e5264_
                                         (let ((_$e5267_
                                                (gx#core-context-rebind?__opt-lambda4006
                                                 (gx#core-context-top__0))))
                                           (if _$e5267_
                                               _$e5267_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd5260_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx5221_
                                    _hd5260_))
                               _stx5221_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx5221_))))))))
        (let ((_e52245232_ _stx5221_))
          (let ((_E52305236_ (lambda () _stx5221_)))
            (let ((_E52265242_
                   (lambda ()
                     (let ((_hd5240_ _e52245232_))
                       (if (gx#identifier? _hd5240_)
                           (_step5223_ _hd5240_)
                           (_E52305236_))))))
              (let ((_E52255256_
                     (lambda ()
                       (if (gx#stx-pair? _e52245232_)
                           (let ((_e52275246_ (gx#syntax-e _e52245232_)))
                             (let ((_hd52285249_ (##car _e52275246_))
                                   (_tl52295251_ (##cdr _e52275246_)))
                               (let ((_hd5254_ _hd52285249_))
                                 (if (gx#identifier? _hd5254_)
                                     (_step5223_ _hd5254_)
                                     (_E52265242_)))))
                           (_E52265242_)))))
                (let () (_E52255256_)))))))))
  (define gx#core-expand-head
    (lambda (_stx5187_)
      (let ((_stop?5189_
             (lambda (_stx5191_)
               (let ((_e51925199_ _stx5191_))
                 (let ((_E51945203_ (lambda () '#f)))
                   (let ((_E51935217_
                          (lambda ()
                            (if (gx#stx-pair? _e51925199_)
                                (let ((_e51955207_ (gx#syntax-e _e51925199_)))
                                  (let ((_hd51965210_ (##car _e51955207_))
                                        (_tl51975212_ (##cdr _e51955207_)))
                                    (let ((_hd5215_ _hd51965210_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5215_)
                                          (_E51945203_)))))
                                (_E51945203_)))))
                     (let () (_E51935217_))))))))
        (gx#core-expand*__opt-lambda5269 _stx5187_ _stop?5189_))))
  (begin
    (define gx#core-expand-block__opt-lambda4991
      (lambda (_stx4993_ _expand-special4994_ _begin-form4995_ _expand-e4996_)
        (letrec ((_expand-splice4998_
                  (lambda (_hd5161_ _body5162_ _rest5163_ _r5164_)
                    (if (gx#stx-list? _body5162_)
                        (_K5002_ (gx#stx-foldr cons _rest5163_ _body5162_)
                                 _r5164_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx4993_
                         _hd5161_))))
                 (_expand-cond-expand4999_
                  (lambda (_hd5157_ _rest5158_ _r5159_)
                    (_K5002_ (cons (gx#core-expand-cond-expand% _hd5157_)
                                   _rest5158_)
                             _r5159_)))
                 (_expand-include5000_
                  (lambda (_hd5106_ _rest5107_ _r5108_)
                    (let ((_e51095119_ _hd5106_))
                      (let ((_E51115123_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e51095119_))))
                        (let ((_E51105153_
                               (lambda ()
                                 (if (gx#stx-pair? _e51095119_)
                                     (let ((_e51125127_
                                            (gx#syntax-e _e51095119_)))
                                       (let ((_hd51135130_ (##car _e51125127_))
                                             (_tl51145132_
                                              (##cdr _e51125127_)))
                                         (if (gx#stx-pair? _tl51145132_)
                                             (let ((_e51155135_
                                                    (gx#syntax-e
                                                     _tl51145132_)))
                                               (let ((_hd51165138_
                                                      (##car _e51155135_))
                                                     (_tl51175140_
                                                      (##cdr _e51155135_)))
                                                 (let ((_path5143_
                                                        _hd51165138_))
                                                   (if (gx#stx-null?
                                                        _tl51175140_)
                                                       (if (gx#stx-string?
                                                            _path5143_)
                                                           (let ((_rpath5145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda3854
                           _path5143_
                           (gx#stx-source _hd5106_))))
                     (let ((_block5147_
                            (gx#core-expand-include%__opt-lambda4740
                             _hd5106_
                             _rpath5145_)))
                       (let ((_rbody5150_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda4991
                                  _block5147_
                                  _expand-special4994_
                                  '#f
                                  _expand-e4996_))
                               gx#current-expander-path
                               (cons _rpath5145_ (gx#current-expander-path)))))
                         (let ()
                           (_K5002_ _rest5107_
                                    (foldr cons _r5108_ _rbody5150_))))))
                   (_E51115123_))
               (_E51115123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E51115123_))))
                                     (_E51115123_)))))
                          (let () (_E51105153_)))))))
                 (_expand-expression5001_
                  (lambda (_hd5102_ _rest5103_ _r5104_)
                    (_K5002_ _rest5103_
                             (cons (_expand-e4996_ _hd5102_) _r5104_))))
                 (_K5002_ (lambda (_rest5032_ _r5033_)
                            (let ((_e50345041_ _rest5032_))
                              (let ((_E50365045_
                                     (lambda ()
                                       (if _begin-form4995_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form4995_
                                             (reverse _r5033_))
                                            (gx#stx-source _stx4993_))
                                           _r5033_))))
                                (let ((_E50355098_
                                       (lambda ()
                                         (if (gx#stx-pair? _e50345041_)
                                             (let ((_e50375049_
                                                    (gx#syntax-e _e50345041_)))
                                               (let ((_hd50385052_
                                                      (##car _e50375049_))
                                                     (_tl50395054_
                                                      (##cdr _e50375049_)))
                                                 (let ((_hd5057_ _hd50385052_))
                                                   (let ((_rest5059_
                                                          _tl50395054_))
                                                     (if '#t
                                                         (let ((_hd5061_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd5057_)))
                   (let ((_e50625069_ _hd5061_))
                     (let ((_E50645073_
                            (lambda ()
                              (_expand-expression5001_
                               _hd5061_
                               _rest5059_
                               _r5033_))))
                       (let ((_E50635094_
                              (lambda ()
                                (if (gx#stx-pair? _e50625069_)
                                    (let ((_e50655077_
                                           (gx#syntax-e _e50625069_)))
                                      (let ((_hd50665080_ (##car _e50655077_))
                                            (_tl50675082_ (##cdr _e50655077_)))
                                        (let ((_form5085_ _hd50665080_))
                                          (let ((_body5087_ _tl50675082_))
                                            (if '#t
                                                (let ((_bind5089_
                                                       (if (gx#identifier?
                                                            _form5085_)
                                                           (gx#resolve-identifier__0
                                                            _form5085_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind5089_)
                                                      (let ((_$e5091_
                                                             (##structure-ref
                                                              _bind5089_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e5091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice4998_
                     _hd5061_
                     _body5087_
                     _rest5059_
                     _r5033_)
                    (if (eq? _$e5091_ '%#cond-expand)
                        (_expand-cond-expand4999_ _hd5061_ _rest5059_ _r5033_)
                        (if (eq? _$e5091_ '%#include)
                            (_expand-include5000_ _hd5061_ _rest5059_ _r5033_)
                            (_expand-special4994_
                             _hd5061_
                             _K5002_
                             _rest5059_
                             _r5033_)))))
              (_expand-expression5001_ _hd5061_ _rest5059_ _r5033_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E50645073_))))))
                                    (_E50645073_)))))
                         (let () (_E50635094_))))))
                 (_E50365045_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E50365045_)))))
                                  (let () (_E50355098_))))))))
          (let ((_e50035010_ _stx4993_))
            (let ((_E50055014_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e50035010_))))
              (let ((_E50045028_
                     (lambda ()
                       (if (gx#stx-pair? _e50035010_)
                           (let ((_e50065018_ (gx#syntax-e _e50035010_)))
                             (let ((_hd50075021_ (##car _e50065018_))
                                   (_tl50085023_ (##cdr _e50065018_)))
                               (let ((_body5026_ _tl50085023_))
                                 (if (gx#stx-list? _body5026_)
                                     (_K5002_ _body5026_ '())
                                     (_E50055014_)))))
                           (_E50055014_)))))
                (let () (_E50045028_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5169_ _expand-special5170_)
          (let ((_begin-form5172_ '%#begin))
            (let ((_expand-e5174_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda4991
               _stx5169_
               _expand-special5170_
               _begin-form5172_
               _expand-e5174_)))))
      (define gx#core-expand-block__1
        (lambda (_stx5176_ _expand-special5177_ _begin-form5178_)
          (let ((_expand-e5180_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda4991
             _stx5176_
             _expand-special5177_
             _begin-form5178_
             _expand-e5180_))))
      (define gx#core-expand-block
        (lambda _g5576_
          (let ((_g5575_ (length _g5576_)))
            (cond ((fx= _g5575_ 2) (apply gx#core-expand-block__0 _g5576_))
                  ((fx= _g5575_ 3) (apply gx#core-expand-block__1 _g5576_))
                  ((fx= _g5575_ 4)
                   (apply gx#core-expand-block__opt-lambda4991 _g5576_))
                  (else (error "No clause matching arguments" _g5576_))))))))
  (define gx#core-expand-block*
    (lambda (_stx4941_ _expand-special4942_)
      (let ((_g49434954_
             (gx#core-expand-block__1 _stx4941_ _expand-special4942_ '#f)))
        (let ((_E49474958_
               (lambda () (error '"No clause matching" _g49434954_))))
          (let ((_try-match49464969_
                 (lambda ()
                   (let ((_K49484964_
                          (lambda (_body4962_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body4962_))
                             (gx#stx-source _stx4941_)))))
                     (let ((_body4967_ _g49434954_))
                       (_K49484964_ _body4967_))))))
            (let ((_try-match49454985_
                   (lambda ()
                     (let ((_K49494975_ (lambda (_expr4973_) _expr4973_)))
                       (if (##pair? _g49434954_)
                           (let ((_hd49504978_ (##car _g49434954_))
                                 (_tl49514980_ (##cdr _g49434954_)))
                             (let ((_expr4983_ _hd49504978_))
                               (if (##null? _tl49514980_)
                                   (_K49494975_ _expr4983_)
                                   (_try-match49464969_))))
                           (_try-match49464969_))))))
              (let ((_K49524989_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx4941_))))
                (if (##null? _g49434954_)
                    (_K49524989_)
                    (_try-match49454985_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx4799_)
      (letrec ((_satisfied?4801_
                (lambda (_condition4899_)
                  (let ((_e49004908_ _condition4899_))
                    (let ((_E49034912_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e49004908_))))
                      (let ((_E49024931_
                             (lambda ()
                               (if (gx#stx-pair? _e49004908_)
                                   (let ((_e49044916_
                                          (gx#syntax-e _e49004908_)))
                                     (let ((_hd49054919_ (##car _e49044916_))
                                           (_tl49064921_ (##cdr _e49044916_)))
                                       (let ((_combinator4924_ _hd49054919_))
                                         (let ((_body4926_ _tl49064921_))
                                           (if (gx#stx-list? _body4926_)
                                               (let ((_$e4928_
                                                      (gx#stx-e
                                                       _combinator4924_)))
                                                 (if (eq? _$e4928_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?4801_
                                                           _body4926_))
                                                     (if (eq? _$e4928_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?4801_
                                                          _body4926_)
                                                         (if (eq? _$e4928_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?4801_
                                                              _body4926_)
                                                             (if (eq? _$e4928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body4926_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx4799_
                          _combinator4924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E49034912_))))))
                                   (_E49034912_)))))
                        (let ((_E49014937_
                               (lambda ()
                                 (let ((_id4935_ _e49004908_))
                                   (if (gx#identifier? _id4935_)
                                       (gx#core-bound-identifier?__opt-lambda3944
                                        _id4935_
                                        gx#feature-binding?)
                                       (_E49024931_))))))
                          (let () (_E49014937_))))))))
               (_loop4802_
                (lambda (_rest4832_)
                  (let ((_e48334841_ _rest4832_))
                    (let ((_E48394845_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e48334841_))))
                      (let ((_E48354849_
                             (lambda ()
                               (if (gx#stx-null? _e48334841_)
                                   (if '#t '() (_E48394845_))
                                   (_E48394845_)))))
                        (let ((_E48344895_
                               (lambda ()
                                 (if (gx#stx-pair? _e48334841_)
                                     (let ((_e48364853_
                                            (gx#syntax-e _e48334841_)))
                                       (let ((_hd48374856_ (##car _e48364853_))
                                             (_tl48384858_
                                              (##cdr _e48364853_)))
                                         (let ((_hd4861_ _hd48374856_))
                                           (let ((_rest4863_ _tl48384858_))
                                             (if '#t
                                                 (let ((_e48644871_ _hd4861_))
                                                   (let ((_E48664875_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e48644871_))))
                                                     (let ((_E48654891_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e48644871_)
                          (let ((_e48674879_ (gx#syntax-e _e48644871_)))
                            (let ((_hd48684882_ (##car _e48674879_))
                                  (_tl48694884_ (##cdr _e48674879_)))
                              (let ((_condition4887_ _hd48684882_))
                                (let ((_body4889_ _tl48694884_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition4887_ 'else)
                                          (if (gx#stx-null? _rest4863_)
                                              _body4889_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx4799_
                                               _hd4861_))
                                          (if (_satisfied?4801_
                                               _condition4887_)
                                              _body4889_
                                              (_loop4802_ _rest4863_)))
                                      (_E48664875_))))))
                          (_E48664875_)))))
               (let () (_E48654891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E48354849_))))))
                                     (_E48354849_)))))
                          (let () (_E48344895_)))))))))
        (let ((_e48034810_ _stx4799_))
          (let ((_E48054814_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e48034810_))))
            (let ((_E48044828_
                   (lambda ()
                     (if (gx#stx-pair? _e48034810_)
                         (let ((_e48064818_ (gx#syntax-e _e48034810_)))
                           (let ((_hd48074821_ (##car _e48064818_))
                                 (_tl48084823_ (##cdr _e48064818_)))
                             (let ((_clauses4826_ _tl48084823_))
                               (if (gx#stx-list? _clauses4826_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop4802_ _clauses4826_))
                                   (_E48054814_)))))
                         (_E48054814_)))))
              (let () (_E48044828_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda4740
      (lambda (_stx4742_ _rpath4743_)
        (let ((_e47444754_ _stx4742_))
          (let ((_E47464758_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e47444754_))))
            (let ((_E47454785_
                   (lambda ()
                     (if (gx#stx-pair? _e47444754_)
                         (let ((_e47474762_ (gx#syntax-e _e47444754_)))
                           (let ((_hd47484765_ (##car _e47474762_))
                                 (_tl47494767_ (##cdr _e47474762_)))
                             (if (gx#stx-pair? _tl47494767_)
                                 (let ((_e47504770_
                                        (gx#syntax-e _tl47494767_)))
                                   (let ((_hd47514773_ (##car _e47504770_))
                                         (_tl47524775_ (##cdr _e47504770_)))
                                     (let ((_path4778_ _hd47514773_))
                                       (if (gx#stx-null? _tl47524775_)
                                           (if (gx#stx-string? _path4778_)
                                               (let ((_rpath4783_
                                                      (let ((_$e4780_
                                                             _rpath4743_))
                                                        (if _$e4780_
                                                            _$e4780_
                                                            (gx#core-resolve-path__opt-lambda3854
                                                             _path4778_
                                                             (gx#stx-source
                                                              _stx4742_))))))
                                                 (if (member _rpath4783_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx4742_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath4783_))
                                                       (gx#stx-source
                                                        _stx4742_)))))
                                               (_E47464758_))
                                           (_E47464758_)))))
                                 (_E47464758_))))
                         (_E47464758_)))))
              (let () (_E47454785_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx4792_)
          (let ((_rpath4794_ '#f))
            (gx#core-expand-include%__opt-lambda4740 _stx4792_ _rpath4794_))))
      (define gx#core-expand-include%
        (lambda _g5578_
          (let ((_g5577_ (length _g5578_)))
            (cond ((fx= _g5577_ 1) (apply gx#core-expand-include%__0 _g5578_))
                  ((fx= _g5577_ 2)
                   (apply gx#core-expand-include%__opt-lambda4740 _g5578_))
                  (else (error "No clause matching arguments" _g5578_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4709
      (lambda (_K4711_ _stx4712_ _method4713_)
        (if (procedure? _K4711_)
            (let ((_$e4715_ (gx#stx-source _stx4712_)))
              (if _$e4715_
                  ((lambda (_g47174719_)
                     (gx#stx-wrap-source (_K4711_ _stx4712_) _g47174719_))
                   _$e4715_)
                  (_K4711_ _stx4712_)))
            (let ((_$e4722_ (bound-method-ref _K4711_ _method4713_)))
              (if _$e4722_
                  ((lambda (_g47244726_)
                     (gx#core-apply-expander__opt-lambda4709
                      _g47244726_
                      _stx4712_
                      _method4713_))
                   _$e4722_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4712_
                   _method4713_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4732_ _stx4733_)
          (let ((_method4735_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4709
             _K4732_
             _stx4733_
             _method4735_))))
      (define gx#core-apply-expander
        (lambda _g5580_
          (let ((_g5579_ (length _g5580_)))
            (cond ((fx= _g5579_ 2) (apply gx#core-apply-expander__0 _g5580_))
                  ((fx= _g5579_ 3)
                   (apply gx#core-apply-expander__opt-lambda4709 _g5580_))
                  (else (error "No clause matching arguments" _g5580_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4707_ _stx4708_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4708_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4682_ _stx4683_)
      (let ((_self46844690_ _self4682_))
        (let ((_E46864694_
               (lambda () (error '"No clause matching" _self46844690_))))
          (let ((_K46874699_
                 (lambda (_K4697_)
                   (gx#core-apply-expander__0 _K4697_ _stx4683_))))
            (if (struct-instance? gx#macro-expander::t _self46844690_)
                (let ((_e46884702_ (##vector-ref _self46844690_ '1)))
                  (let ((_K4705_ _e46884702_)) (_K46874699_ _K4705_)))
                (_E46864694_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4657_ _stx4658_)
      (if (gx#sealed-syntax? _stx4658_)
          _stx4658_
          (let ((_self46594665_ _self4657_))
            (let ((_E46614669_
                   (lambda () (error '"No clause matching" _self46594665_))))
              (let ((_K46624674_
                     (lambda (_K4672_)
                       (gx#core-apply-expander__0 _K4672_ _stx4658_))))
                (if (struct-instance? gx#core-expander::t _self46594665_)
                    (let ((_e46634677_ (##vector-ref _self46594665_ '1)))
                      (let ((_K4680_ _e46634677_)) (_K46624674_ _K4680_)))
                    (_E46614669_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4639
      (lambda (_self4641_ _stx4642_ _top?4643_)
        (if (_top?4643_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4641_ _stx4642_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4642_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4648_ _stx4649_)
          (let ((_top?4651_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4639
             _self4648_
             _stx4649_
             _top?4651_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5582_
          (let ((_g5581_ (length _g5582_)))
            (cond ((fx= _g5581_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5582_))
                  ((fx= _g5581_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4639
                          _g5582_))
                  (else (error "No clause matching arguments" _g5582_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4637_ _stx4638_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4639
       _self4637_
       _stx4638_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4584_ _stx4585_)
      (let ((_self45864592_ _self4584_))
        (let ((_E45884596_
               (lambda () (error '"No clause matching" _self45864592_))))
          (let ((_K45894629_
                 (lambda (_id4599_)
                   (let ((_e46004607_ _stx4585_))
                     (let ((_E46024611_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e46004607_))))
                       (let ((_E46014625_
                              (lambda ()
                                (if (gx#stx-pair? _e46004607_)
                                    (let ((_e46034615_
                                           (gx#syntax-e _e46004607_)))
                                      (let ((_hd46044618_ (##car _e46034615_))
                                            (_tl46054620_ (##cdr _e46034615_)))
                                        (let ((_body4623_ _tl46054620_))
                                          (if '#t
                                              (gx#core-cons
                                               _id4599_
                                               _body4623_)
                                              (_E46024611_)))))
                                    (_E46024611_)))))
                         (let () (_E46014625_))))))))
            (if (struct-instance? gx#rename-macro-expander::t _self45864592_)
                (let ((_e45904632_ (##vector-ref _self45864592_ '1)))
                  (let ((_id4635_ _e45904632_)) (_K45894629_ _id4635_)))
                (_E45884596_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4530
      (lambda (_self4532_ _stx4533_ _method4534_)
        (let ((_self45354543_ _self4532_))
          (let ((_E45374547_
                 (lambda () (error '"No clause matching" _self45354543_))))
            (let ((_K45384554_
                   (lambda (_phi4550_ _ctx4551_ _K4552_)
                     (gx#core-apply-user-macro
                      _K4552_
                      _stx4533_
                      _ctx4551_
                      _phi4550_
                      _method4534_))))
              (if (struct-instance? gx#user-expander::t _self45354543_)
                  (let ((_e45394557_ (##vector-ref _self45354543_ '1)))
                    (let ((_K4560_ _e45394557_))
                      (let ((_e45404562_ (##vector-ref _self45354543_ '2)))
                        (let ((_ctx4565_ _e45404562_))
                          (let ((_e45414567_ (##vector-ref _self45354543_ '3)))
                            (let ((_phi4570_ _e45414567_))
                              (_K45384554_ _phi4570_ _ctx4565_ _K4560_)))))))
                  (_E45374547_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4575_ _stx4576_)
          (let ((_method4578_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4530
             _self4575_
             _stx4576_
             _method4578_))))
      (define gx#core-apply-user-expander
        (lambda _g5584_
          (let ((_g5583_ (length _g5584_)))
            (cond ((fx= _g5583_ 2)
                   (apply gx#core-apply-user-expander__0 _g5584_))
                  ((fx= _g5583_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4530 _g5584_))
                  (else (error "No clause matching arguments" _g5584_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4522_ _stx4523_ _ctx4524_ _phi4525_ _method4526_)
      (let ((_mark4528_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4524_
              _phi4525_
              _stx4523_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4709
             _K4522_
             (gx#stx-apply-mark _stx4523_ _mark4528_)
             _method4526_)
            _mark4528_))
         gx#current-expander-marks
         (cons _mark4528_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4494
      (lambda (_stx4496_ _phi4497_ _ctx4498_)
        ((letrec ((_lp4500_
                   (lambda (_bind4502_)
                     (if (##structure-direct-instance-of?
                          _bind4502_
                          'gx#import-binding::t)
                         (_lp4500_
                          (##structure-ref
                           _bind4502_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind4502_
                              'gx#alias-binding::t)
                             (_lp4500_
                              (gx#core-resolve-identifier__opt-lambda4424
                               (##structure-ref
                                _bind4502_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi4497_
                               _ctx4498_))
                             _bind4502_)))))
           _lp4500_)
         (gx#core-resolve-identifier__opt-lambda4424
          _stx4496_
          _phi4497_
          _ctx4498_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4507_)
          (let ((_phi4509_ (gx#current-expander-phi)))
            (let ((_ctx4511_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda4494
               _stx4507_
               _phi4509_
               _ctx4511_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx4513_ _phi4514_)
          (let ((_ctx4516_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4494
             _stx4513_
             _phi4514_
             _ctx4516_))))
      (define gx#resolve-identifier
        (lambda _g5586_
          (let ((_g5585_ (length _g5586_)))
            (cond ((fx= _g5585_ 1) (apply gx#resolve-identifier__0 _g5586_))
                  ((fx= _g5585_ 2) (apply gx#resolve-identifier__1 _g5586_))
                  ((fx= _g5585_ 3)
                   (apply gx#resolve-identifier__opt-lambda4494 _g5586_))
                  (else (error "No clause matching arguments" _g5586_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4452
      (lambda (_stx4454_ _val4455_ _rebind?4456_ _phi4457_ _ctx4458_)
        (let ((_rebind?4460_
               (if (not _rebind?4456_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4456_) _rebind?4456_ true))))
          (gx#core-bind!__opt-lambda4214
           (gx#core-identifier-key _stx4454_)
           _val4455_
           _rebind?4460_
           _phi4457_
           _ctx4458_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4465_ _val4466_)
          (let ((_rebind?4468_ '#f))
            (let ((_phi4470_ (gx#current-expander-phi)))
              (let ((_ctx4472_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda4452
                 _stx4465_
                 _val4466_
                 _rebind?4468_
                 _phi4470_
                 _ctx4472_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx4474_ _val4475_ _rebind?4476_)
          (let ((_phi4478_ (gx#current-expander-phi)))
            (let ((_ctx4480_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda4452
               _stx4474_
               _val4475_
               _rebind?4476_
               _phi4478_
               _ctx4480_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx4482_ _val4483_ _rebind?4484_ _phi4485_)
          (let ((_ctx4487_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4452
             _stx4482_
             _val4483_
             _rebind?4484_
             _phi4485_
             _ctx4487_))))
      (define gx#bind-identifier!
        (lambda _g5588_
          (let ((_g5587_ (length _g5588_)))
            (cond ((fx= _g5587_ 2) (apply gx#bind-identifier!__0 _g5588_))
                  ((fx= _g5587_ 3) (apply gx#bind-identifier!__1 _g5588_))
                  ((fx= _g5587_ 4) (apply gx#bind-identifier!__2 _g5588_))
                  ((fx= _g5587_ 5)
                   (apply gx#bind-identifier!__opt-lambda4452 _g5588_))
                  (else (error "No clause matching arguments" _g5588_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4424
      (lambda (_stx4426_ _phi4427_ _ctx4428_)
        ((letrec ((_lp4430_
                   (lambda (_e4432_ _marks4433_)
                     (if (symbol? _e4432_)
                         (gx#core-resolve-binding
                          _e4432_
                          _phi4427_
                          _ctx4428_
                          (reverse _marks4433_))
                         (if (gx#identifier-quote? _e4432_)
                             (gx#core-resolve-binding
                              (##structure-ref _e4432_ '1 AST::t '#f)
                              _phi4427_
                              (##structure-ref
                               _e4432_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e4432_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e4432_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e4432_ '1 AST::t '#f)
                                  _phi4427_
                                  _ctx4428_
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e4432_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks4433_))
                                 (if (##structure-direct-instance-of?
                                      _e4432_
                                      'gx#syntax-wrap::t)
                                     (_lp4430_
                                      (##structure-ref _e4432_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e4432_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks4433_))
                                     (if (##structure-instance-of?
                                          _e4432_
                                          'gerbil#AST::t)
                                         (_lp4430_
                                          (##structure-ref
                                           _e4432_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks4433_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx4426_)))))))))
           _lp4430_)
         _stx4426_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4438_)
          (let ((_phi4440_ (gx#current-expander-phi)))
            (let ((_ctx4442_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda4424
               _stx4438_
               _phi4440_
               _ctx4442_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4444_ _phi4445_)
          (let ((_ctx4447_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4424
             _stx4444_
             _phi4445_
             _ctx4447_))))
      (define gx#core-resolve-identifier
        (lambda _g5590_
          (let ((_g5589_ (length _g5590_)))
            (cond ((fx= _g5589_ 1)
                   (apply gx#core-resolve-identifier__0 _g5590_))
                  ((fx= _g5589_ 2)
                   (apply gx#core-resolve-identifier__1 _g5590_))
                  ((fx= _g5589_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4424 _g5590_))
                  (else (error "No clause matching arguments" _g5590_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4340_ _phi4341_ _ctx4342_ _marks4343_)
      (let ((_resolve4345_
             (lambda (_ctx4413_ _src-phi4414_ _key4415_)
               ((letrec ((_lp4417_
                          (lambda (_ctx4419_ _dphi4420_)
                            (let ((_$e4422_
                                   (gx#core-context-resolve
                                    _ctx4419_
                                    _key4415_)))
                              (if _$e4422_
                                  (values _$e4422_)
                                  (if (fxzero? _dphi4420_)
                                      '#f
                                      (if (fxpositive? _dphi4420_)
                                          (_lp4417_
                                           (gx#core-context-shift
                                            _ctx4419_
                                            '-1)
                                           (fx- _dphi4420_ '1))
                                          (if (fxnegative? _dphi4420_)
                                              (_lp4417_
                                               (gx#core-context-shift
                                                _ctx4419_
                                                '1)
                                               (fx+ _dphi4420_ '1))
                                              '#!void))))))))
                  _lp4417_)
                (gx#core-context-shift _ctx4413_ _phi4341_)
                (fx- _phi4341_ _src-phi4414_)))))
        ((letrec ((_lp4347_
                   (lambda (_ctx4349_ _src-phi4350_ _rest4351_)
                     (let ((_rest43524360_ _rest4351_))
                       (let ((_E43554364_
                              (lambda ()
                                (error '"No clause matching" _rest43524360_))))
                         (let ((_else43544368_
                                (lambda ()
                                  (_resolve4345_
                                   _ctx4349_
                                   _src-phi4350_
                                   _id4340_))))
                           (let ((_K43564401_
                                  (lambda (_rest4371_ _hd4372_)
                                    (let ((_hd43734379_ _hd4372_))
                                      (let ((_E43754383_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd43734379_))))
                                        (let ((_K43764393_
                                               (lambda (_subst4386_)
                                                 (let ((_$e4390_
                                                        (let ((_key4388_
                                                               (if _subst4386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (table-ref _subst4386_ _id4340_ '#f)
                           '#f)))
                  (if _key4388_
                      (_resolve4345_ _ctx4349_ _src-phi4350_ _key4388_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e4390_
                                                       _$e4390_
                                                       (_lp4347_
                                                        (##structure-ref
                                                         _hd4372_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd4372_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest4371_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd43734379_)
                                              (let ((_e43774396_
                                                     (##vector-ref
                                                      _hd43734379_
                                                      '1)))
                                                (let ((_subst4399_
                                                       _e43774396_))
                                                  (_K43764393_ _subst4399_)))
                                              (_E43754383_))))))))
                             (if (##pair? _rest43524360_)
                                 (let ((_hd43574404_ (##car _rest43524360_))
                                       (_tl43584406_ (##cdr _rest43524360_)))
                                   (let ((_hd4409_ _hd43574404_))
                                     (let ((_rest4411_ _tl43584406_))
                                       (_K43564401_ _rest4411_ _hd4409_))))
                                 (_else43544368_)))))))))
           _lp4347_)
         _ctx4342_
         _phi4341_
         _marks4343_))))
  (begin
    (define gx#core-bind!__opt-lambda4214
      (lambda (_key4216_ _val4217_ _rebind?4218_ _phi4219_ _ctx4220_)
        (let ((_update-binding4222_
               (lambda (_xval4293_)
                 (if (let ((_$e4295_
                            (_rebind?4218_ _ctx4220_ _xval4293_ _val4217_)))
                       (if _$e4295_
                           _$e4295_
                           (let ((_$e4301_
                                  (if (##structure-direct-instance-of?
                                       _xval4293_
                                       'gx#import-binding::t)
                                      (let ((_$e4298_
                                             (##structure-ref
                                              _xval4293_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e4298_
                                            _$e4298_
                                            (if (##structure-instance-of?
                                                 _val4217_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val4217_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e4301_
                                 _$e4301_
                                 (if (##structure-instance-of?
                                      _xval4293_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val4217_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val4217_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval4293_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val4217_
                     (if (if (##structure-direct-instance-of?
                              _val4217_
                              'gx#import-binding::t)
                             (let ((_$e4304_
                                    (##structure-ref
                                     _val4217_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e4304_
                                   _$e4304_
                                   (if (##structure-instance-of?
                                        _xval4293_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val4217_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval4293_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval4293_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key4216_
                          _xval4293_
                          _val4217_))))))
          (let ((_gensubst4223_
                 (lambda (_subst4288_ _id4289_)
                   (let ((_eid4291_
                          (gensym (if (uninterned-symbol? _id4289_)
                                      '%
                                      _id4289_))))
                     (begin
                       (table-set! _subst4288_ _id4289_ _eid4291_)
                       _eid4291_)))))
            (let ((_subst!4224_
                   (lambda (_key4226_)
                     (let ((_key42274235_ _key4226_))
                       (let ((_E42304239_
                              (lambda ()
                                (error '"No clause matching" _key42274235_))))
                         (let ((_else42294243_ (lambda () _key4226_)))
                           (let ((_K42314276_
                                  (lambda (_mark4246_ _id4247_)
                                    (let ((_mark42484254_ _mark4246_))
                                      (let ((_E42504258_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark42484254_))))
                                        (let ((_K42514268_
                                               (lambda (_subst4261_)
                                                 (if (not _subst4261_)
                                                     (let ((_subst4263_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark4246_
                                                          _subst4263_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst4223_
                                                          _subst4263_
                                                          _id4247_)))
                                                     (let ((_$e4265_
                                                            (table-ref
                                                             _subst4261_
                                                             _id4247_
                                                             '#f)))
                                                       (if _$e4265_
                                                           (values _$e4265_)
                                                           (_gensubst4223_
                                                            _subst4261_
                                                            _id4247_)))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _mark42484254_)
                                              (let ((_e42524271_
                                                     (##vector-ref
                                                      _mark42484254_
                                                      '1)))
                                                (let ((_subst4274_
                                                       _e42524271_))
                                                  (_K42514268_ _subst4274_)))
                                              (_E42504258_))))))))
                             (if (##pair? _key42274235_)
                                 (let ((_hd42324279_ (##car _key42274235_))
                                       (_tl42334281_ (##cdr _key42274235_)))
                                   (let ((_id4284_ _hd42324279_))
                                     (let ((_mark4286_ _tl42334281_))
                                       (_K42314276_ _mark4286_ _id4284_))))
                                 (_else42294243_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx4220_ _phi4219_)
               (_subst!4224_ _key4216_)
               _val4217_
               _update-binding4222_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key4310_ _val4311_)
          (let ((_rebind?4313_ false))
            (let ((_phi4315_ (gx#current-expander-phi)))
              (let ((_ctx4317_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda4214
                 _key4310_
                 _val4311_
                 _rebind?4313_
                 _phi4315_
                 _ctx4317_))))))
      (define gx#core-bind!__1
        (lambda (_key4319_ _val4320_ _rebind?4321_)
          (let ((_phi4323_ (gx#current-expander-phi)))
            (let ((_ctx4325_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda4214
               _key4319_
               _val4320_
               _rebind?4321_
               _phi4323_
               _ctx4325_)))))
      (define gx#core-bind!__2
        (lambda (_key4327_ _val4328_ _rebind?4329_ _phi4330_)
          (let ((_ctx4332_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4214
             _key4327_
             _val4328_
             _rebind?4329_
             _phi4330_
             _ctx4332_))))
      (define gx#core-bind!
        (lambda _g5592_
          (let ((_g5591_ (length _g5592_)))
            (cond ((fx= _g5591_ 2) (apply gx#core-bind!__0 _g5592_))
                  ((fx= _g5591_ 3) (apply gx#core-bind!__1 _g5592_))
                  ((fx= _g5591_ 4) (apply gx#core-bind!__2 _g5592_))
                  ((fx= _g5591_ 5)
                   (apply gx#core-bind!__opt-lambda4214 _g5592_))
                  (else (error "No clause matching arguments" _g5592_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4146_)
      (if (symbol? _stx4146_)
          (let ((_g41474155_ (gx#current-expander-marks)))
            (let ((_E41504159_
                   (lambda () (error '"No clause matching" _g41474155_))))
              (let ((_else41494163_ (lambda () _stx4146_)))
                (let ((_K41514168_
                       (lambda (_hd4166_) (cons _stx4146_ _hd4166_))))
                  (if (##pair? _g41474155_)
                      (let ((_hd41524171_ (##car _g41474155_))
                            (_tl41534173_ (##cdr _g41474155_)))
                        (let ((_hd4176_ _hd41524171_)) (_K41514168_ _hd4176_)))
                      (_else41494163_))))))
          (if (gx#identifier? _stx4146_)
              (let ((_id4178_ (gx#syntax-local-unwrap _stx4146_)))
                (let ((_eid4180_ (gx#stx-e _id4178_)))
                  (let ((_marks4182_ (gx#stx-identifier-marks _id4178_)))
                    (let ()
                      (let ((_marks41844192_ _marks4182_))
                        (let ((_E41874196_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks41844192_))))
                          (let ((_else41864200_ (lambda () _eid4180_)))
                            (let ((_K41884205_
                                   (lambda (_hd4203_)
                                     (cons _eid4180_ _hd4203_))))
                              (if (##pair? _marks41844192_)
                                  (let ((_hd41894208_ (##car _marks41844192_))
                                        (_tl41904210_ (##cdr _marks41844192_)))
                                    (let ((_hd4213_ _hd41894208_))
                                      (_K41884205_ _hd4213_)))
                                  (_else41864200_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4146_)))))
  (define gx#core-context-shift
    (lambda (_ctx4091_ _phi4092_)
      (let ((_make-phi4094_
             (lambda (_super4144_)
               (let ((__obj5563 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda5525
                    __obj5563
                    (gensym 'phi)
                    _super4144_)
                   __obj5563)))))
        (let ((_make-phi/up4095_
               (lambda (_ctx4139_ _super4140_)
                 (let ((_ctx+14142_ (_make-phi4094_ _super4140_)))
                   (begin
                     (##structure-set!
                      _ctx4139_
                      _ctx+14142_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+14142_
                      _ctx4139_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+14142_)))))
          (let ((_make-phi/down4096_
                 (lambda (_ctx4134_ _super4135_)
                   (let ((_ctx-14137_ (_make-phi4094_ _super4135_)))
                     (begin
                       (##structure-set!
                        _ctx-14137_
                        _ctx4134_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx4134_
                        _ctx-14137_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-14137_)))))
            (let ((_shift4097_
                   (lambda (_ctx4118_
                            _delta4119_
                            _make-delta-context4120_
                            _phi4121_
                            _K4122_)
                     (let ((_$e4124_
                            (##structure-ref
                             _ctx4118_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e4124_
                           ((lambda (_super4127_)
                              (let ((_super4129_
                                     (_K4122_ _super4127_ _delta4119_)))
                                (let ((_ctx+d4131_
                                       (_make-delta-context4120_
                                        _ctx4118_
                                        _super4129_)))
                                  (let ()
                                    (_K4122_ _ctx+d4131_
                                             (fx- _phi4121_ _delta4119_))))))
                            _$e4124_)
                           (error '"Bad context" _ctx4118_))))))
              ((letrec ((_K4099_ (lambda (_ctx4101_ _phi4102_)
                                   (if (fxzero? _phi4102_)
                                       _ctx4101_
                                       (if (##structure-instance-of?
                                            _ctx4101_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi4102_)
                                               (let ((_$e4104_
                                                      (##structure-ref
                                                       _ctx4101_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4104_
                                                     ((lambda (_g41064108_)
                                                        (_K4099_ _g41064108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx- _phi4102_ '1)))
              _$e4104_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4097_
                                                      _ctx4101_
                                                      '1
                                                      _make-phi/up4095_
                                                      _phi4102_
                                                      _K4099_)))
                                               (let ((_$e4111_
                                                      (##structure-ref
                                                       _ctx4101_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e4111_
                                                     ((lambda (_g41134115_)
                                                        (_K4099_ _g41134115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx+ _phi4102_ '1)))
              _$e4111_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift4097_
                                                      _ctx4101_
                                                      '-1
                                                      _make-phi/down4096_
                                                      _phi4102_
                                                      _K4099_))))
                                           _ctx4101_)))))
                 _K4099_)
               _ctx4091_
               _phi4092_)))))))
  (define gx#core-context-get
    (lambda (_ctx4088_ _key4089_)
      (table-ref
       (##structure-ref _ctx4088_ '2 gx#expander-context::t '#f)
       _key4089_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4084_ _key4085_ _val4086_)
      (table-set!
       (##structure-ref _ctx4084_ '2 gx#expander-context::t '#f)
       _key4085_
       _val4086_)))
  (define gx#core-context-resolve
    (lambda (_ctx4071_ _key4072_)
      ((letrec ((_lp4074_
                 (lambda (_ctx4076_)
                   (let ((_$e4078_ (gx#core-context-get _ctx4076_ _key4072_)))
                     (if _$e4078_
                         (values _$e4078_)
                         (let ((_$e4081_
                                (if (##structure-instance-of?
                                     _ctx4076_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx4076_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e4081_ (_lp4074_ _$e4081_) '#f)))))))
         _lp4074_)
       _ctx4071_)))
  (define gx#core-context-bind!
    (lambda (_ctx4061_ _key4062_ _val4063_ _rebind4064_)
      (let ((_$e4066_ (gx#core-context-get _ctx4061_ _key4062_)))
        (if _$e4066_
            ((lambda (_xval4069_)
               (gx#core-context-put!
                _ctx4061_
                _key4062_
                (_rebind4064_ _xval4069_)))
             _$e4066_)
            (gx#core-context-put! _ctx4061_ _key4062_ _val4063_)))))
  (begin
    (define gx#core-context-top__opt-lambda4037
      (lambda (_ctx4039_ _stop?4040_)
        ((letrec ((_lp4042_
                   (lambda (_ctx4044_)
                     (if (_stop?4040_ _ctx4044_)
                         _ctx4044_
                         (if (##structure-instance-of?
                              _ctx4044_
                              'gx#context-phi::t)
                             (_lp4042_
                              (##structure-ref
                               _ctx4044_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp4042_)
         _ctx4039_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx4050_ (gx#current-expander-context)))
            (let ((_stop?4052_ gx#top-context?))
              (gx#core-context-top__opt-lambda4037 _ctx4050_ _stop?4052_)))))
      (define gx#core-context-top__1
        (lambda (_ctx4054_)
          (let ((_stop?4056_ gx#top-context?))
            (gx#core-context-top__opt-lambda4037 _ctx4054_ _stop?4056_))))
      (define gx#core-context-top
        (lambda _g5594_
          (let ((_g5593_ (length _g5594_)))
            (cond ((fx= _g5593_ 0) (apply gx#core-context-top__0 _g5594_))
                  ((fx= _g5593_ 1) (apply gx#core-context-top__1 _g5594_))
                  ((fx= _g5593_ 2)
                   (apply gx#core-context-top__opt-lambda4037 _g5594_))
                  (else (error "No clause matching arguments" _g5594_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4022
      (lambda (_ctx4024_)
        ((letrec ((_lp4026_
                   (lambda (_ctx4028_)
                     (if (##structure-instance-of?
                          _ctx4028_
                          'gx#context-phi::t)
                         (_lp4026_
                          (##structure-ref _ctx4028_ '3 gx#phi-context::t '#f))
                         _ctx4028_))))
           _lp4026_)
         _ctx4024_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4034_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4022 _ctx4034_))))
      (define gx#core-context-root
        (lambda _g5596_
          (let ((_g5595_ (length _g5596_)))
            (cond ((fx= _g5595_ 0) (apply gx#core-context-root__0 _g5596_))
                  ((fx= _g5595_ 1)
                   (apply gx#core-context-root__opt-lambda4022 _g5596_))
                  (else (error "No clause matching arguments" _g5596_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4006
      (lambda (_ctx4008_ . __40054009_)
        (if (##structure-instance-of? _ctx4008_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4008_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4008_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4016_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4006 _ctx4016_))))
      (define gx#core-context-rebind?
        (lambda _g5598_
          (let ((_g5597_ (length _g5598_)))
            (cond ((fx= _g5597_ 0) (apply gx#core-context-rebind?__0 _g5598_))
                  ((fx= _g5597_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4006 _g5598_))
                  ((fx>= _g5597_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4006 _g5598_))
                  (else (error "No clause matching arguments" _g5598_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda3989
      (lambda (_ctx3991_)
        (let ((_$e3993_ (gx#core-context-top__1 _ctx3991_)))
          (if _$e3993_
              ((lambda (_ctx3996_)
                 (if (##structure-instance-of? _ctx3996_ 'gx#module-context::t)
                     (##structure-ref _ctx3996_ '6 gx#module-context::t '#f)
                     '#f))
               _$e3993_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4002_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda3989 _ctx4002_))))
      (define gx#core-context-namespace
        (lambda _g5600_
          (let ((_g5599_ (length _g5600_)))
            (cond ((fx= _g5599_ 0)
                   (apply gx#core-context-namespace__0 _g5600_))
                  ((fx= _g5599_ 1)
                   (apply gx#core-context-namespace__opt-lambda3989 _g5600_))
                  (else (error "No clause matching arguments" _g5600_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda3975
      (lambda (_bind3977_ _is?3978_)
        (if (##structure-direct-instance-of? _bind3977_ 'gx#syntax-binding::t)
            (_is?3978_
             (##structure-ref _bind3977_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind3983_)
          (let ((_is?3985_ gx#expander?))
            (gx#expander-binding?__opt-lambda3975 _bind3983_ _is?3985_))))
      (define gx#expander-binding?
        (lambda _g5602_
          (let ((_g5601_ (length _g5602_)))
            (cond ((fx= _g5601_ 1) (apply gx#expander-binding?__0 _g5602_))
                  ((fx= _g5601_ 2)
                   (apply gx#expander-binding?__opt-lambda3975 _g5602_))
                  (else (error "No clause matching arguments" _g5602_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind3974_)
      (gx#expander-binding?__opt-lambda3975 _bind3974_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind3972_)
      (gx#expander-binding?__opt-lambda3975 _bind3972_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind3970_)
      (gx#expander-binding?__opt-lambda3975 _bind3970_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind3961_)
      (let ((_feature?3963_
             (lambda (_e3965_)
               (let ((_$e3967_
                      (##structure-instance-of?
                       _e3965_
                       'gx#feature-expander::t)))
                 (if _$e3967_
                     _$e3967_
                     (##structure-instance-of?
                      _e3965_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda3975 _bind3961_ _feature?3963_))))
  (define gx#private-feature-binding?
    (lambda (_bind3959_)
      (gx#expander-binding?__opt-lambda3975
       _bind3959_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda3944
      (lambda (_id3946_ _bound?3947_)
        (if (gx#identifier? _id3946_)
            (_bound?3947_ (gx#resolve-identifier__0 _id3946_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id3952_)
          (let ((_bound?3954_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda3944
             _id3952_
             _bound?3954_))))
      (define gx#core-bound-identifier?
        (lambda _g5604_
          (let ((_g5603_ (length _g5604_)))
            (cond ((fx= _g5603_ 1)
                   (apply gx#core-bound-identifier?__0 _g5604_))
                  ((fx= _g5603_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda3944 _g5604_))
                  (else (error "No clause matching arguments" _g5604_))))))))
  (define gx#core-identifier=?
    (lambda (_x3936_ _y3937_)
      (let ((_y=?3939_
             (lambda (_xid3943_)
               ((if (list? _y3937_) memq eq?) _xid3943_ _y3937_))))
        (let ((_bind3941_ (gx#resolve-identifier__0 _x3936_)))
          (if (##structure-instance-of? _bind3941_ 'gx#binding::t)
              (_y=?3939_ (##structure-ref _bind3941_ '1 gx#binding::t '#f))
              (_y=?3939_ (gx#stx-e _x3936_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e3934_)
      (if (interned-symbol? _e3934_)
          (string-index (symbol->string _e3934_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda3890
      (lambda (_stx3892_ _src3893_ _ctx3894_ _marks3895_)
        (if (gx#sealed-syntax? _stx3892_)
            (gx#stx-unwrap__0 _stx3892_)
            (if (gx#identifier? _stx3892_)
                (let ((_id3897_ (gx#syntax-local-unwrap _stx3892_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id3897_)
                   (let ((_$e3899_ (gx#stx-source _id3897_)))
                     (if _$e3899_ _$e3899_ _src3893_))
                   _ctx3894_
                   (##structure-ref _id3897_ '3 gx#identifier-wrap::t '#f)))
                (if (gx#stx-datum? _stx3892_)
                    (gx#stx-e _stx3892_)
                    (##structure
                     gx#syntax-quote::t
                     _stx3892_
                     (let ((_$e3902_ (gx#stx-source _stx3892_)))
                       (if _$e3902_ _$e3902_ _src3893_))
                     _ctx3894_
                     (reverse _marks3895_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx3908_)
          (let ((_src3910_ '#f))
            (let ((_ctx3912_ (gx#current-expander-context)))
              (let ((_marks3914_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda3890
                 _stx3908_
                 _src3910_
                 _ctx3912_
                 _marks3914_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx3916_ _src3917_)
          (let ((_ctx3919_ (gx#current-expander-context)))
            (let ((_marks3921_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda3890
               _stx3916_
               _src3917_
               _ctx3919_
               _marks3921_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx3923_ _src3924_ _ctx3925_)
          (let ((_marks3927_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda3890
             _stx3923_
             _src3924_
             _ctx3925_
             _marks3927_))))
      (define gx#core-quote-syntax
        (lambda _g5606_
          (let ((_g5605_ (length _g5606_)))
            (cond ((fx= _g5605_ 1) (apply gx#core-quote-syntax__0 _g5606_))
                  ((fx= _g5605_ 2) (apply gx#core-quote-syntax__1 _g5606_))
                  ((fx= _g5605_ 3) (apply gx#core-quote-syntax__2 _g5606_))
                  ((fx= _g5605_ 4)
                   (apply gx#core-quote-syntax__opt-lambda3890 _g5606_))
                  (else (error "No clause matching arguments" _g5606_))))))))
  (define gx#core-cons
    (lambda (_hd3888_ _tl3889_)
      (cons (gx#core-quote-syntax__0 _hd3888_) _tl3889_)))
  (define gx#core-list
    (lambda (_hd3885_ . _rest3886_)
      (cons (gx#core-quote-syntax__0 _hd3885_) _rest3886_)))
  (define gx#core-cons*
    (lambda (_hd3882_ . _rest3883_)
      (apply cons* (gx#core-quote-syntax__0 _hd3882_) _rest3883_)))
  (begin
    (define gx#core-resolve-path__opt-lambda3854
      (lambda (_stx-path3856_ _rel3857_)
        (let ((_path3869_ (gx#stx-e _stx-path3856_))
              (_reldir3870_
               ((letrec ((_lp3859_
                          (lambda (_relsrc3861_)
                            (if (##structure-instance-of?
                                 _relsrc3861_
                                 'gerbil#AST::t)
                                (_lp3859_
                                 (let ((_$e3863_ (gx#stx-source _relsrc3861_)))
                                   (if _$e3863_
                                       _$e3863_
                                       (gx#stx-e _relsrc3861_))))
                                (if (source-location-path? _relsrc3861_)
                                    (path-directory
                                     (source-location-path _relsrc3861_))
                                    (if (string? _relsrc3861_)
                                        (path-directory _relsrc3861_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp3859_)
                (let ((_$e3866_ (gx#stx-source _stx-path3856_)))
                  (if _$e3866_ _$e3866_ _rel3857_)))))
          (path-expand _path3869_ (path-normalize _reldir3870_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path3875_)
          (let ((_rel3877_ '#f))
            (gx#core-resolve-path__opt-lambda3854 _stx-path3875_ _rel3877_))))
      (define gx#core-resolve-path
        (lambda _g5608_
          (let ((_g5607_ (length _g5608_)))
            (cond ((fx= _g5607_ 1) (apply gx#core-resolve-path__0 _g5608_))
                  ((fx= _g5607_ 2)
                   (apply gx#core-resolve-path__opt-lambda3854 _g5608_))
                  (else (error "No clause matching arguments" _g5608_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx3853_) (gx#stx-rewrap _stx3853_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx3851_)
      (gx#stx-unwrap__opt-lambda3664 _stx3851_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx3819_)
      (let ((_g38203828_ (gx#current-expander-marks)))
        (let ((_E38233832_
               (lambda () (error '"No clause matching" _g38203828_))))
          (let ((_else38223836_ (lambda () _stx3819_)))
            (let ((_K38243841_
                   (lambda (_hd3839_) (gx#stx-apply-mark _stx3819_ _hd3839_))))
              (if (##pair? _g38203828_)
                  (let ((_hd38253844_ (##car _g38203828_))
                        (_tl38263846_ (##cdr _g38203828_)))
                    (let ((_hd3849_ _hd38253844_)) (_K38243841_ _hd3849_)))
                  (_else38223836_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda3802
      (lambda (_stx3804_ _E3805_)
        (let ((_bind3807_ (gx#resolve-identifier__0 _stx3804_)))
          (if (##structure-direct-instance-of?
               _bind3807_
               'gx#syntax-binding::t)
              (##structure-ref _bind3807_ '4 gx#syntax-binding::t '#f)
              (_E3805_ _stx3804_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx3812_)
          (let ((_E3814_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda3802 _stx3812_ _E3814_))))
      (define gx#syntax-local-e
        (lambda _g5610_
          (let ((_g5609_ (length _g5610_)))
            (cond ((fx= _g5609_ 1) (apply gx#syntax-local-e__0 _g5610_))
                  ((fx= _g5609_ 2)
                   (apply gx#syntax-local-e__opt-lambda3802 _g5610_))
                  (else (error "No clause matching arguments" _g5610_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda3786
      (lambda (_stx3788_ _E3789_)
        (let ((_e3791_ (gx#syntax-local-e__opt-lambda3802 _stx3788_ _E3789_)))
          (if (##structure-instance-of? _e3791_ 'gx#expander::t)
              (##structure-ref _e3791_ '1 gx#expander::t '#f)
              _e3791_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx3796_)
          (let ((_E3798_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda3786 _stx3796_ _E3798_))))
      (define gx#syntax-local-value
        (lambda _g5612_
          (let ((_g5611_ (length _g5612_)))
            (cond ((fx= _g5611_ 1) (apply gx#syntax-local-value__0 _g5612_))
                  ((fx= _g5611_ 2)
                   (apply gx#syntax-local-value__opt-lambda3786 _g5612_))
                  (else (error "No clause matching arguments" _g5612_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx3785_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx3785_))))
