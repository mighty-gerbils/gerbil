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
    (lambda _$args5240_
      (apply make-struct-instance gx#expander-context::t _$args5240_)))
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
    (lambda _$args5237_
      (apply make-struct-instance gx#root-context::t _$args5237_)))
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
    (lambda _$args5234_
      (apply make-struct-instance gx#phi-context::t _$args5234_)))
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
    (lambda _$args5231_
      (apply make-struct-instance gx#top-context::t _$args5231_)))
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
    (lambda _$args5228_
      (apply make-struct-instance gx#module-context::t _$args5228_)))
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
    (lambda _$args5225_
      (apply make-struct-instance gx#prelude-context::t _$args5225_)))
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
    (lambda _$args5222_
      (apply make-struct-instance gx#local-context::t _$args5222_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda5204
      (lambda (_self5206_ _id5207_ _super5208_)
        (direct-struct-instance-init!
         _self5206_
         _id5207_
         (make-hash-table-eq)
         _super5208_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self5213_ _id5214_)
          (let ((_super5216_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda5204
             _self5213_
             _id5214_
             _super5216_))))
      (define gx#phi-context:::init!
        (lambda _g5244_
          (let ((_g5243_ (length _g5244_)))
            (cond ((fx= _g5243_ 2) (apply gx#phi-context:::init!__0 _g5244_))
                  ((fx= _g5243_ 3)
                   (apply gx#phi-context:::init!__opt-lambda5204 _g5244_))
                  (else (error "No clause matching arguments" _g5244_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda5190
      (lambda (_self5192_ _super5193_)
        (direct-struct-instance-init!
         _self5192_
         (gensym 'L)
         (make-hash-table-eq)
         _super5193_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self5198_)
          (let ((_super5200_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda5190
             _self5198_
             _super5200_))))
      (define gx#local-context:::init!
        (lambda _g5246_
          (let ((_g5245_ (length _g5246_)))
            (cond ((fx= _g5245_ 1) (apply gx#local-context:::init!__0 _g5246_))
                  ((fx= _g5245_ 2)
                   (apply gx#local-context:::init!__opt-lambda5190 _g5246_))
                  (else (error "No clause matching arguments" _g5246_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args5188_
      (apply make-struct-instance gx#binding::t _$args5188_)))
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
    (lambda _$args5185_
      (apply make-struct-instance gx#runtime-binding::t _$args5185_)))
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
    (lambda _$args5182_
      (apply make-struct-instance gx#local-binding::t _$args5182_)))
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
    (lambda _$args5179_
      (apply make-struct-instance gx#top-binding::t _$args5179_)))
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
    (lambda _$args5176_
      (apply make-struct-instance gx#module-binding::t _$args5176_)))
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
    (lambda _$args5173_
      (apply make-struct-instance gx#extern-binding::t _$args5173_)))
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
    (lambda _$args5170_
      (apply make-struct-instance gx#syntax-binding::t _$args5170_)))
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
    (lambda _$args5167_
      (apply make-struct-instance gx#import-binding::t _$args5167_)))
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
    (lambda _$args5164_
      (apply make-struct-instance gx#alias-binding::t _$args5164_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args5161_
      (apply make-struct-instance gx#expander::t _$args5161_)))
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
    (lambda _$args5158_
      (apply make-struct-instance gx#core-expander::t _$args5158_)))
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
    (lambda _$args5155_
      (apply make-struct-instance gx#expression-form::t _$args5155_)))
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
    (lambda _$args5152_
      (apply make-struct-instance gx#special-form::t _$args5152_)))
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
    (lambda _$args5149_
      (apply make-struct-instance gx#definition-form::t _$args5149_)))
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
    (lambda _$args5146_
      (apply make-struct-instance gx#top-special-form::t _$args5146_)))
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
    (lambda _$args5143_
      (apply make-struct-instance gx#module-special-form::t _$args5143_)))
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
    (lambda _$args5140_
      (apply make-struct-instance gx#feature-expander::t _$args5140_)))
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
    (lambda _$args5137_
      (apply make-struct-instance gx#private-feature-expander::t _$args5137_)))
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
    (lambda _$args5134_
      (apply make-struct-instance gx#reserved-expander::t _$args5134_)))
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
    (lambda _$args5131_
      (apply make-struct-instance gx#macro-expander::t _$args5131_)))
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
    (lambda _$args5128_
      (apply make-struct-instance gx#rename-macro-expander::t _$args5128_)))
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
    (lambda _$args5125_
      (apply make-struct-instance gx#user-expander::t _$args5125_)))
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
    (lambda _$args5122_
      (apply make-struct-instance gx#expander-mark::t _$args5122_)))
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
    (lambda _$args5119_
      (apply make-struct-instance gx#syntax-error::t _$args5119_)))
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
    (lambda (_where5114_ _message5115_ _stx5116_ . _details5117_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message5115_
              (cons _stx5116_ _details5117_)
              _where5114_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda5099
      (lambda (_stx5101_ _expression?5102_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda5083 _stx5101_ _expression?5102_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx5107_)
          (let ((_expression?5109_ '#f))
            (gx#eval-syntax__opt-lambda5099 _stx5107_ _expression?5109_))))
      (define gx#eval-syntax
        (lambda _g5248_
          (let ((_g5247_ (length _g5248_)))
            (cond ((fx= _g5247_ 1) (apply gx#eval-syntax__0 _g5248_))
                  ((fx= _g5247_ 2)
                   (apply gx#eval-syntax__opt-lambda5099 _g5248_))
                  (else (error "No clause matching arguments" _g5248_))))))))
  (define gx#eval-syntax*
    (lambda (_stx5098_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx5098_))))
  (begin
    (define gx#core-expand__opt-lambda5083
      (lambda (_stx5085_ _expression?5086_)
        (if _expression?5086_
            (gx#core-expand-expression _stx5085_)
            (gx#core-expand-top _stx5085_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx5091_)
          (let ((_expression?5093_ '#f))
            (gx#core-expand__opt-lambda5083 _stx5091_ _expression?5093_))))
      (define gx#core-expand
        (lambda _g5250_
          (let ((_g5249_ (length _g5250_)))
            (cond ((fx= _g5249_ 1) (apply gx#core-expand__0 _g5250_))
                  ((fx= _g5249_ 2)
                   (apply gx#core-expand__opt-lambda5083 _g5250_))
                  (else (error "No clause matching arguments" _g5250_))))))))
  (define gx#core-expand-top
    (lambda (_stx5052_)
      (let ((_stx5054_ (gx#core-expand*__0 _stx5052_)))
        (let ((_e50555062_ _stx5054_))
          (let ((_E50575066_
                 (lambda () (gx#core-expand-expression _stx5054_))))
            (let ((_E50565080_
                   (lambda ()
                     (if (gx#stx-pair? _e50555062_)
                         (let ((_e50585070_ (gx#syntax-e _e50555062_)))
                           (let ((_hd50595073_ (##car _e50585070_))
                                 (_tl50605075_ (##cdr _e50585070_)))
                             (let ((_form5078_ _hd50595073_))
                               (if (gx#core-bound-identifier?__0 _form5078_)
                                   _stx5054_
                                   (_E50575066_)))))
                         (_E50575066_)))))
              (let () (_E50565080_))))))))
  (define gx#core-expand-expression
    (lambda (_stx4974_)
      (let ((_sealed-expression?4976_
             (lambda (_hd5022_)
               (if (gx#sealed-syntax? _hd5022_)
                   (let ((_e50235030_ _hd5022_))
                     (let ((_E50255034_ (lambda () '#f)))
                       (let ((_E50245048_
                              (lambda ()
                                (if (gx#stx-pair? _e50235030_)
                                    (let ((_e50265038_
                                           (gx#syntax-e _e50235030_)))
                                      (let ((_hd50275041_ (##car _e50265038_))
                                            (_tl50285043_ (##cdr _e50265038_)))
                                        (let ((_form5046_ _hd50275041_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda3623
                                               _form5046_
                                               gx#expression-form-binding?)
                                              (_E50255034_)))))
                                    (_E50255034_)))))
                         (let () (_E50245048_)))))
                   '#f))))
        (let ((_illegal-expression4977_
               (lambda (_hd5020_ . _g5251_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx4974_
                  _hd5020_))))
          (let ((_expand-e4978_
                 (lambda (_form5015_ _hd5016_)
                   (let ((_bind5018_
                          (if (##structure-instance-of?
                               _form5015_
                               'gx#binding::t)
                              _form5015_
                              (gx#resolve-identifier__0 _form5015_))))
                     (if (gx#core-expander-binding? _bind5018_)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind5018_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          (gx#stx-wrap-source
                           _hd5016_
                           (gx#stx-source _stx4974_)))
                         (if (##structure-direct-instance-of?
                              _bind5018_
                              'gx#syntax-binding::t)
                             (gx#core-expand-expression
                              (gx#core-apply-expander__0
                               (##structure-ref
                                _bind5018_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               (gx#stx-wrap-source
                                _hd5016_
                                (gx#stx-source _stx4974_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx4974_
                              _form5015_)))))))
            (let ((_hd4980_ (gx#core-expand-head _stx4974_)))
              (if (_sealed-expression?4976_ _hd4980_)
                  _hd4980_
                  (if (gx#stx-pair? _hd4980_)
                      (let ((_e49814988_ _hd4980_))
                        (let ((_E49834992_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e49814988_))))
                          (let ((_E49825011_
                                 (lambda ()
                                   (if (gx#stx-pair? _e49814988_)
                                       (let ((_e49844996_
                                              (gx#syntax-e _e49814988_)))
                                         (let ((_hd49854999_
                                                (##car _e49844996_))
                                               (_tl49865001_
                                                (##cdr _e49844996_)))
                                           (let ((_form5004_ _hd49854999_))
                                             (if '#t
                                                 (let ((_bind5006_
                                                        (if (gx#identifier?
                                                             _form5004_)
                                                            (gx#resolve-identifier__0
                                                             _form5004_)
                                                            '#f)))
                                                   (if (let ((_$e5008_
                                                              (not _bind5006_)))
                                                         (if _$e5008_
                                                             _$e5008_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind5006_))))
               (_expand-e4978_ '%#call (cons '%#call _hd4980_))
               (if (eq? (##structure-ref _bind5006_ '1 gx#binding::t '#f)
                        '%#begin)
                   (gx#core-expand-block* _hd4980_ _illegal-expression4977_)
                   (if (gx#expression-form-binding? _bind5006_)
                       (_expand-e4978_ _bind5006_ _hd4980_)
                       (_illegal-expression4977_ _hd4980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E49834992_)))))
                                       (_E49834992_)))))
                            (let () (_E49825011_)))))
                      (if (gx#core-bound-identifier?__0 _hd4980_)
                          (_illegal-expression4977_ _hd4980_)
                          (if (gx#identifier? _hd4980_)
                              (_expand-e4978_
                               '%#ref
                               (cons '%#ref (cons _hd4980_ '())))
                              (if (gx#stx-datum? _hd4980_)
                                  (_expand-e4978_
                                   '%#quote
                                   (cons '%#quote (cons _hd4980_ '())))
                                  (_illegal-expression4977_
                                   _hd4980_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx4969_)
      (call-with-parameters
       (lambda ()
         (let ((_stx4972_ (gx#core-expand-expression _stx4969_)))
           (values _stx4972_ (gx#eval-syntax* _stx4972_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda4948
      (lambda (_stx4950_ _stop?4951_)
        ((letrec ((_lp4953_
                   (lambda (_stx4955_)
                     (if (_stop?4951_ _stx4955_)
                         _stx4955_
                         (let ((_rstx4957_ (gx#core-expand1 _stx4955_)))
                           (if (eq? _stx4955_ _rstx4957_)
                               _stx4955_
                               (_lp4953_ _rstx4957_)))))))
           _lp4953_)
         _stx4950_)))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx4962_)
          (let ((_stop?4964_ false))
            (gx#core-expand*__opt-lambda4948 _stx4962_ _stop?4964_))))
      (define gx#core-expand*
        (lambda _g5253_
          (let ((_g5252_ (length _g5253_)))
            (cond ((fx= _g5252_ 1) (apply gx#core-expand*__0 _g5253_))
                  ((fx= _g5252_ 2)
                   (apply gx#core-expand*__opt-lambda4948 _g5253_))
                  (else (error "No clause matching arguments" _g5253_))))))))
  (define gx#core-expand1
    (lambda (_stx4900_)
      (let ((_step4902_
             (lambda (_hd4939_)
               (let ((_bind4941_ (gx#resolve-identifier__0 _hd4939_)))
                 (if (##structure-instance-of?
                      _bind4941_
                      'gx#runtime-binding::t)
                     _stx4900_
                     (if (##structure-direct-instance-of?
                          _bind4941_
                          'gx#syntax-binding::t)
                         (gx#core-apply-expander__0
                          (##structure-ref
                           _bind4941_
                           '4
                           gx#syntax-binding::t
                           '#f)
                          _stx4900_)
                         (if (not _bind4941_)
                             (begin
                               (if (let ((_$e4943_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e4943_
                                         _$e4943_
                                         (let ((_$e4946_
                                                (gx#core-context-rebind?__opt-lambda3685
                                                 (gx#core-context-top__0))))
                                           (if _$e4946_
                                               _$e4946_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd4939_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx4900_
                                    _hd4939_))
                               _stx4900_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx4900_))))))))
        (let ((_e49034911_ _stx4900_))
          (let ((_E49094915_ (lambda () _stx4900_)))
            (let ((_E49054921_
                   (lambda ()
                     (let ((_hd4919_ _e49034911_))
                       (if (gx#identifier? _hd4919_)
                           (_step4902_ _hd4919_)
                           (_E49094915_))))))
              (let ((_E49044935_
                     (lambda ()
                       (if (gx#stx-pair? _e49034911_)
                           (let ((_e49064925_ (gx#syntax-e _e49034911_)))
                             (let ((_hd49074928_ (##car _e49064925_))
                                   (_tl49084930_ (##cdr _e49064925_)))
                               (let ((_hd4933_ _hd49074928_))
                                 (if (gx#identifier? _hd4933_)
                                     (_step4902_ _hd4933_)
                                     (_E49054921_)))))
                           (_E49054921_)))))
                (let () (_E49044935_)))))))))
  (define gx#core-expand-head
    (lambda (_stx4866_)
      (let ((_stop?4868_
             (lambda (_stx4870_)
               (let ((_e48714878_ _stx4870_))
                 (let ((_E48734882_ (lambda () '#f)))
                   (let ((_E48724896_
                          (lambda ()
                            (if (gx#stx-pair? _e48714878_)
                                (let ((_e48744886_ (gx#syntax-e _e48714878_)))
                                  (let ((_hd48754889_ (##car _e48744886_))
                                        (_tl48764891_ (##cdr _e48744886_)))
                                    (let ((_hd4894_ _hd48754889_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd4894_)
                                          (_E48734882_)))))
                                (_E48734882_)))))
                     (let () (_E48724896_))))))))
        (gx#core-expand*__opt-lambda4948 _stx4866_ _stop?4868_))))
  (begin
    (define gx#core-expand-block__opt-lambda4670
      (lambda (_stx4672_ _expand-special4673_ _begin-form4674_ _expand-e4675_)
        (letrec ((_expand-splice4677_
                  (lambda (_hd4840_ _body4841_ _rest4842_ _r4843_)
                    (if (gx#stx-list? _body4841_)
                        (_K4681_ (gx#stx-foldr cons _rest4842_ _body4841_)
                                 _r4843_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx4672_
                         _hd4840_))))
                 (_expand-cond-expand4678_
                  (lambda (_hd4836_ _rest4837_ _r4838_)
                    (_K4681_ (cons (gx#core-expand-cond-expand% _hd4836_)
                                   _rest4837_)
                             _r4838_)))
                 (_expand-include4679_
                  (lambda (_hd4785_ _rest4786_ _r4787_)
                    (let ((_e47884798_ _hd4785_))
                      (let ((_E47904802_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _e47884798_))))
                        (let ((_E47894832_
                               (lambda ()
                                 (if (gx#stx-pair? _e47884798_)
                                     (let ((_e47914806_
                                            (gx#syntax-e _e47884798_)))
                                       (let ((_hd47924809_ (##car _e47914806_))
                                             (_tl47934811_
                                              (##cdr _e47914806_)))
                                         (if (gx#stx-pair? _tl47934811_)
                                             (let ((_e47944814_
                                                    (gx#syntax-e
                                                     _tl47934811_)))
                                               (let ((_hd47954817_
                                                      (##car _e47944814_))
                                                     (_tl47964819_
                                                      (##cdr _e47944814_)))
                                                 (let ((_path4822_
                                                        _hd47954817_))
                                                   (if (gx#stx-null?
                                                        _tl47964819_)
                                                       (if (gx#stx-string?
                                                            _path4822_)
                                                           (let ((_rpath4824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#core-resolve-path__opt-lambda3533
                           _path4822_
                           (gx#stx-source _hd4785_))))
                     (let ((_block4826_
                            (gx#core-expand-include%__opt-lambda4419
                             _hd4785_
                             _rpath4824_)))
                       (let ((_rbody4829_
                              (call-with-parameters
                               (lambda ()
                                 (gx#core-expand-block__opt-lambda4670
                                  _block4826_
                                  _expand-special4673_
                                  '#f
                                  _expand-e4675_))
                               gx#current-expander-path
                               (cons _rpath4824_ (gx#current-expander-path)))))
                         (let ()
                           (_K4681_ _rest4786_
                                    (foldr cons _r4787_ _rbody4829_))))))
                   (_E47904802_))
               (_E47904802_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E47904802_))))
                                     (_E47904802_)))))
                          (let () (_E47894832_)))))))
                 (_expand-expression4680_
                  (lambda (_hd4781_ _rest4782_ _r4783_)
                    (_K4681_ _rest4782_
                             (cons (_expand-e4675_ _hd4781_) _r4783_))))
                 (_K4681_ (lambda (_rest4711_ _r4712_)
                            (let ((_e47134720_ _rest4711_))
                              (let ((_E47154724_
                                     (lambda ()
                                       (if _begin-form4674_
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons
                                             _begin-form4674_
                                             (reverse _r4712_))
                                            (gx#stx-source _stx4672_))
                                           _r4712_))))
                                (let ((_E47144777_
                                       (lambda ()
                                         (if (gx#stx-pair? _e47134720_)
                                             (let ((_e47164728_
                                                    (gx#syntax-e _e47134720_)))
                                               (let ((_hd47174731_
                                                      (##car _e47164728_))
                                                     (_tl47184733_
                                                      (##cdr _e47164728_)))
                                                 (let ((_hd4736_ _hd47174731_))
                                                   (let ((_rest4738_
                                                          _tl47184733_))
                                                     (if '#t
                                                         (let ((_hd4740_
                                                                (gx#core-expand-head
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4736_)))
                   (let ((_e47414748_ _hd4740_))
                     (let ((_E47434752_
                            (lambda ()
                              (_expand-expression4680_
                               _hd4740_
                               _rest4738_
                               _r4712_))))
                       (let ((_E47424773_
                              (lambda ()
                                (if (gx#stx-pair? _e47414748_)
                                    (let ((_e47444756_
                                           (gx#syntax-e _e47414748_)))
                                      (let ((_hd47454759_ (##car _e47444756_))
                                            (_tl47464761_ (##cdr _e47444756_)))
                                        (let ((_form4764_ _hd47454759_))
                                          (let ((_body4766_ _tl47464761_))
                                            (if '#t
                                                (let ((_bind4768_
                                                       (if (gx#identifier?
                                                            _form4764_)
                                                           (gx#resolve-identifier__0
                                                            _form4764_)
                                                           '#f)))
                                                  (if (gx#special-form-binding?
                                                       _bind4768_)
                                                      (let ((_$e4770_
                                                             (##structure-ref
                                                              _bind4768_
                                                              '1
                                                              gx#binding::t
                                                              '#f)))
                                                        (if (eq? _$e4770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#begin)
                    (_expand-splice4677_
                     _hd4740_
                     _body4766_
                     _rest4738_
                     _r4712_)
                    (if (eq? _$e4770_ '%#cond-expand)
                        (_expand-cond-expand4678_ _hd4740_ _rest4738_ _r4712_)
                        (if (eq? _$e4770_ '%#include)
                            (_expand-include4679_ _hd4740_ _rest4738_ _r4712_)
                            (_expand-special4673_
                             _hd4740_
                             _K4681_
                             _rest4738_
                             _r4712_)))))
              (_expand-expression4680_ _hd4740_ _rest4738_ _r4712_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E47434752_))))))
                                    (_E47434752_)))))
                         (let () (_E47424773_))))))
                 (_E47154724_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_E47154724_)))))
                                  (let () (_E47144777_))))))))
          (let ((_e46824689_ _stx4672_))
            (let ((_E46844693_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e46824689_))))
              (let ((_E46834707_
                     (lambda ()
                       (if (gx#stx-pair? _e46824689_)
                           (let ((_e46854697_ (gx#syntax-e _e46824689_)))
                             (let ((_hd46864700_ (##car _e46854697_))
                                   (_tl46874702_ (##cdr _e46854697_)))
                               (let ((_body4705_ _tl46874702_))
                                 (if (gx#stx-list? _body4705_)
                                     (_K4681_ _body4705_ '())
                                     (_E46844693_)))))
                           (_E46844693_)))))
                (let () (_E46834707_))))))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx4848_ _expand-special4849_)
          (let ((_begin-form4851_ '%#begin))
            (let ((_expand-e4853_ gx#core-expand-expression))
              (gx#core-expand-block__opt-lambda4670
               _stx4848_
               _expand-special4849_
               _begin-form4851_
               _expand-e4853_)))))
      (define gx#core-expand-block__1
        (lambda (_stx4855_ _expand-special4856_ _begin-form4857_)
          (let ((_expand-e4859_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda4670
             _stx4855_
             _expand-special4856_
             _begin-form4857_
             _expand-e4859_))))
      (define gx#core-expand-block
        (lambda _g5255_
          (let ((_g5254_ (length _g5255_)))
            (cond ((fx= _g5254_ 2) (apply gx#core-expand-block__0 _g5255_))
                  ((fx= _g5254_ 3) (apply gx#core-expand-block__1 _g5255_))
                  ((fx= _g5254_ 4)
                   (apply gx#core-expand-block__opt-lambda4670 _g5255_))
                  (else (error "No clause matching arguments" _g5255_))))))))
  (define gx#core-expand-block*
    (lambda (_stx4620_ _expand-special4621_)
      (let ((_g46224633_
             (gx#core-expand-block__1 _stx4620_ _expand-special4621_ '#f)))
        (let ((_E46264637_
               (lambda () (error '"No clause matching" _g46224633_))))
          (let ((_try-match46254648_
                 (lambda ()
                   (let ((_K46274643_
                          (lambda (_body4641_)
                            (gx#core-quote-syntax__1
                             (gx#core-cons '%#begin (reverse _body4641_))
                             (gx#stx-source _stx4620_)))))
                     (let ((_body4646_ _g46224633_))
                       (_K46274643_ _body4646_))))))
            (let ((_try-match46244664_
                   (lambda ()
                     (let ((_K46284654_ (lambda (_expr4652_) _expr4652_)))
                       (if (##pair? _g46224633_)
                           (let ((_hd46294657_ (##car _g46224633_))
                                 (_tl46304659_ (##cdr _g46224633_)))
                             (let ((_expr4662_ _hd46294657_))
                               (if (##null? _tl46304659_)
                                   (_K46284654_ _expr4662_)
                                   (_try-match46254648_))))
                           (_try-match46254648_))))))
              (let ((_K46314668_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx4620_))))
                (if (##null? _g46224633_)
                    (_K46314668_)
                    (_try-match46244664_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx4478_)
      (letrec ((_satisfied?4480_
                (lambda (_condition4578_)
                  (let ((_e45794587_ _condition4578_))
                    (let ((_E45824591_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e45794587_))))
                      (let ((_E45814610_
                             (lambda ()
                               (if (gx#stx-pair? _e45794587_)
                                   (let ((_e45834595_
                                          (gx#syntax-e _e45794587_)))
                                     (let ((_hd45844598_ (##car _e45834595_))
                                           (_tl45854600_ (##cdr _e45834595_)))
                                       (let ((_combinator4603_ _hd45844598_))
                                         (let ((_body4605_ _tl45854600_))
                                           (if (gx#stx-list? _body4605_)
                                               (let ((_$e4607_
                                                      (gx#stx-e
                                                       _combinator4603_)))
                                                 (if (eq? _$e4607_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?4480_
                                                           _body4605_))
                                                     (if (eq? _$e4607_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?4480_
                                                          _body4605_)
                                                         (if (eq? _$e4607_ 'or)
                                                             (gx#stx-ormap
                                                              _satisfied?4480_
                                                              _body4605_)
                                                             (if (eq? _$e4607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body4605_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx4478_
                          _combinator4603_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E45824591_))))))
                                   (_E45824591_)))))
                        (let ((_E45804616_
                               (lambda ()
                                 (let ((_id4614_ _e45794587_))
                                   (if (gx#identifier? _id4614_)
                                       (gx#core-bound-identifier?__opt-lambda3623
                                        _id4614_
                                        gx#feature-binding?)
                                       (_E45814610_))))))
                          (let () (_E45804616_))))))))
               (_loop4481_
                (lambda (_rest4511_)
                  (let ((_e45124520_ _rest4511_))
                    (let ((_E45184524_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e45124520_))))
                      (let ((_E45144528_
                             (lambda ()
                               (if (gx#stx-null? _e45124520_)
                                   (if '#t '() (_E45184524_))
                                   (_E45184524_)))))
                        (let ((_E45134574_
                               (lambda ()
                                 (if (gx#stx-pair? _e45124520_)
                                     (let ((_e45154532_
                                            (gx#syntax-e _e45124520_)))
                                       (let ((_hd45164535_ (##car _e45154532_))
                                             (_tl45174537_
                                              (##cdr _e45154532_)))
                                         (let ((_hd4540_ _hd45164535_))
                                           (let ((_rest4542_ _tl45174537_))
                                             (if '#t
                                                 (let ((_e45434550_ _hd4540_))
                                                   (let ((_E45454554_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e45434550_))))
                                                     (let ((_E45444570_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e45434550_)
                          (let ((_e45464558_ (gx#syntax-e _e45434550_)))
                            (let ((_hd45474561_ (##car _e45464558_))
                                  (_tl45484563_ (##cdr _e45464558_)))
                              (let ((_condition4566_ _hd45474561_))
                                (let ((_body4568_ _tl45484563_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition4566_ 'else)
                                          (if (gx#stx-null? _rest4542_)
                                              _body4568_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx4478_
                                               _hd4540_))
                                          (if (_satisfied?4480_
                                               _condition4566_)
                                              _body4568_
                                              (_loop4481_ _rest4542_)))
                                      (_E45454554_))))))
                          (_E45454554_)))))
               (let () (_E45444570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E45144528_))))))
                                     (_E45144528_)))))
                          (let () (_E45134574_)))))))))
        (let ((_e44824489_ _stx4478_))
          (let ((_E44844493_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e44824489_))))
            (let ((_E44834507_
                   (lambda ()
                     (if (gx#stx-pair? _e44824489_)
                         (let ((_e44854497_ (gx#syntax-e _e44824489_)))
                           (let ((_hd44864500_ (##car _e44854497_))
                                 (_tl44874502_ (##cdr _e44854497_)))
                             (let ((_clauses4505_ _tl44874502_))
                               (if (gx#stx-list? _clauses4505_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop4481_ _clauses4505_))
                                   (_E44844493_)))))
                         (_E44844493_)))))
              (let () (_E44834507_))))))))
  (begin
    (define gx#core-expand-include%__opt-lambda4419
      (lambda (_stx4421_ _rpath4422_)
        (let ((_e44234433_ _stx4421_))
          (let ((_E44254437_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e44234433_))))
            (let ((_E44244464_
                   (lambda ()
                     (if (gx#stx-pair? _e44234433_)
                         (let ((_e44264441_ (gx#syntax-e _e44234433_)))
                           (let ((_hd44274444_ (##car _e44264441_))
                                 (_tl44284446_ (##cdr _e44264441_)))
                             (if (gx#stx-pair? _tl44284446_)
                                 (let ((_e44294449_
                                        (gx#syntax-e _tl44284446_)))
                                   (let ((_hd44304452_ (##car _e44294449_))
                                         (_tl44314454_ (##cdr _e44294449_)))
                                     (let ((_path4457_ _hd44304452_))
                                       (if (gx#stx-null? _tl44314454_)
                                           (if (gx#stx-string? _path4457_)
                                               (let ((_rpath4462_
                                                      (let ((_$e4459_
                                                             _rpath4422_))
                                                        (if _$e4459_
                                                            _$e4459_
                                                            (gx#core-resolve-path__opt-lambda3533
                                                             _path4457_
                                                             (gx#stx-source
                                                              _stx4421_))))))
                                                 (if (member _rpath4462_
                                                             (gx#current-expander-path))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; cyclic expansion"
                                                      _stx4421_)
                                                     (gx#syntax-local-rewrap
                                                      (gx#stx-wrap-source
                                                       (gx#core-cons
                                                        '%#begin
                                                        (read-syntax-from-file
                                                         _rpath4462_))
                                                       (gx#stx-source
                                                        _stx4421_)))))
                                               (_E44254437_))
                                           (_E44254437_)))))
                                 (_E44254437_))))
                         (_E44254437_)))))
              (let () (_E44244464_)))))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx4471_)
          (let ((_rpath4473_ '#f))
            (gx#core-expand-include%__opt-lambda4419 _stx4471_ _rpath4473_))))
      (define gx#core-expand-include%
        (lambda _g5257_
          (let ((_g5256_ (length _g5257_)))
            (cond ((fx= _g5256_ 1) (apply gx#core-expand-include%__0 _g5257_))
                  ((fx= _g5256_ 2)
                   (apply gx#core-expand-include%__opt-lambda4419 _g5257_))
                  (else (error "No clause matching arguments" _g5257_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda4388
      (lambda (_K4390_ _stx4391_ _method4392_)
        (if (procedure? _K4390_)
            (let ((_$e4394_ (gx#stx-source _stx4391_)))
              (if _$e4394_
                  ((lambda (_g43964398_)
                     (gx#stx-wrap-source (_K4390_ _stx4391_) _g43964398_))
                   _$e4394_)
                  (_K4390_ _stx4391_)))
            (let ((_$e4401_ (bound-method-ref _K4390_ _method4392_)))
              (if _$e4401_
                  ((lambda (_g44034405_)
                     (gx#core-apply-expander__opt-lambda4388
                      _g44034405_
                      _stx4391_
                      _method4392_))
                   _$e4401_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx4391_
                   _method4392_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K4411_ _stx4412_)
          (let ((_method4414_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda4388
             _K4411_
             _stx4412_
             _method4414_))))
      (define gx#core-apply-expander
        (lambda _g5259_
          (let ((_g5258_ (length _g5259_)))
            (cond ((fx= _g5258_ 2) (apply gx#core-apply-expander__0 _g5259_))
                  ((fx= _g5258_ 3)
                   (apply gx#core-apply-expander__opt-lambda4388 _g5259_))
                  (else (error "No clause matching arguments" _g5259_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self4386_ _stx4387_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx4387_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self4361_ _stx4362_)
      (let ((_self43634369_ _self4361_))
        (let ((_E43654373_
               (lambda () (error '"No clause matching" _self43634369_))))
          (let ((_K43664378_
                 (lambda (_K4376_)
                   (gx#core-apply-expander__0 _K4376_ _stx4362_))))
            (if (struct-instance? gx#macro-expander::t _self43634369_)
                (let ((_e43674381_ (##vector-ref _self43634369_ '1)))
                  (let ((_K4384_ _e43674381_)) (_K43664378_ _K4384_)))
                (_E43654373_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self4336_ _stx4337_)
      (if (gx#sealed-syntax? _stx4337_)
          _stx4337_
          (let ((_self43384344_ _self4336_))
            (let ((_E43404348_
                   (lambda () (error '"No clause matching" _self43384344_))))
              (let ((_K43414353_
                     (lambda (_K4351_)
                       (gx#core-apply-expander__0 _K4351_ _stx4337_))))
                (if (struct-instance? gx#core-expander::t _self43384344_)
                    (let ((_e43424356_ (##vector-ref _self43384344_ '1)))
                      (let ((_K4359_ _e43424356_)) (_K43414353_ _K4359_)))
                    (_E43404348_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda4318
      (lambda (_self4320_ _stx4321_ _top?4322_)
        (if (_top?4322_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self4320_ _stx4321_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx4321_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self4327_ _stx4328_)
          (let ((_top?4330_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda4318
             _self4327_
             _stx4328_
             _top?4330_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g5261_
          (let ((_g5260_ (length _g5261_)))
            (cond ((fx= _g5260_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g5261_))
                  ((fx= _g5260_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda4318
                          _g5261_))
                  (else (error "No clause matching arguments" _g5261_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self4316_ _stx4317_)
      (gx#top-special-form::apply-macro-expander__opt-lambda4318
       _self4316_
       _stx4317_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self4263_ _stx4264_)
      (let ((_self42654271_ _self4263_))
        (let ((_E42674275_
               (lambda () (error '"No clause matching" _self42654271_))))
          (let ((_K42684308_
                 (lambda (_id4278_)
                   (let ((_e42794286_ _stx4264_))
                     (let ((_E42814290_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e42794286_))))
                       (let ((_E42804304_
                              (lambda ()
                                (if (gx#stx-pair? _e42794286_)
                                    (let ((_e42824294_
                                           (gx#syntax-e _e42794286_)))
                                      (let ((_hd42834297_ (##car _e42824294_))
                                            (_tl42844299_ (##cdr _e42824294_)))
                                        (let ((_body4302_ _tl42844299_))
                                          (if '#t
                                              (gx#core-cons
                                               _id4278_
                                               _body4302_)
                                              (_E42814290_)))))
                                    (_E42814290_)))))
                         (let () (_E42804304_))))))))
            (if (struct-instance? gx#rename-macro-expander::t _self42654271_)
                (let ((_e42694311_ (##vector-ref _self42654271_ '1)))
                  (let ((_id4314_ _e42694311_)) (_K42684308_ _id4314_)))
                (_E42674275_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda4209
      (lambda (_self4211_ _stx4212_ _method4213_)
        (let ((_self42144222_ _self4211_))
          (let ((_E42164226_
                 (lambda () (error '"No clause matching" _self42144222_))))
            (let ((_K42174233_
                   (lambda (_phi4229_ _ctx4230_ _K4231_)
                     (gx#core-apply-user-macro
                      _K4231_
                      _stx4212_
                      _ctx4230_
                      _phi4229_
                      _method4213_))))
              (if (struct-instance? gx#user-expander::t _self42144222_)
                  (let ((_e42184236_ (##vector-ref _self42144222_ '1)))
                    (let ((_K4239_ _e42184236_))
                      (let ((_e42194241_ (##vector-ref _self42144222_ '2)))
                        (let ((_ctx4244_ _e42194241_))
                          (let ((_e42204246_ (##vector-ref _self42144222_ '3)))
                            (let ((_phi4249_ _e42204246_))
                              (_K42174233_ _phi4249_ _ctx4244_ _K4239_)))))))
                  (_E42164226_)))))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self4254_ _stx4255_)
          (let ((_method4257_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda4209
             _self4254_
             _stx4255_
             _method4257_))))
      (define gx#core-apply-user-expander
        (lambda _g5263_
          (let ((_g5262_ (length _g5263_)))
            (cond ((fx= _g5262_ 2)
                   (apply gx#core-apply-user-expander__0 _g5263_))
                  ((fx= _g5262_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda4209 _g5263_))
                  (else (error "No clause matching arguments" _g5263_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K4201_ _stx4202_ _ctx4203_ _phi4204_ _method4205_)
      (let ((_mark4207_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx4203_
              _phi4204_
              _stx4202_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda4388
             _K4201_
             (gx#stx-apply-mark _stx4202_ _mark4207_)
             _method4205_)
            _mark4207_))
         gx#current-expander-marks
         (cons _mark4207_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda4173
      (lambda (_stx4175_ _phi4176_ _ctx4177_)
        ((letrec ((_lp4179_
                   (lambda (_bind4181_)
                     (if (##structure-direct-instance-of?
                          _bind4181_
                          'gx#import-binding::t)
                         (_lp4179_
                          (##structure-ref
                           _bind4181_
                           '4
                           gx#import-binding::t
                           '#f))
                         (if (##structure-direct-instance-of?
                              _bind4181_
                              'gx#alias-binding::t)
                             (_lp4179_
                              (gx#core-resolve-identifier__opt-lambda4103
                               (##structure-ref
                                _bind4181_
                                '4
                                gx#alias-binding::t
                                '#f)
                               _phi4176_
                               _ctx4177_))
                             _bind4181_)))))
           _lp4179_)
         (gx#core-resolve-identifier__opt-lambda4103
          _stx4175_
          _phi4176_
          _ctx4177_))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx4186_)
          (let ((_phi4188_ (gx#current-expander-phi)))
            (let ((_ctx4190_ (gx#current-expander-context)))
              (gx#resolve-identifier__opt-lambda4173
               _stx4186_
               _phi4188_
               _ctx4190_)))))
      (define gx#resolve-identifier__1
        (lambda (_stx4192_ _phi4193_)
          (let ((_ctx4195_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda4173
             _stx4192_
             _phi4193_
             _ctx4195_))))
      (define gx#resolve-identifier
        (lambda _g5265_
          (let ((_g5264_ (length _g5265_)))
            (cond ((fx= _g5264_ 1) (apply gx#resolve-identifier__0 _g5265_))
                  ((fx= _g5264_ 2) (apply gx#resolve-identifier__1 _g5265_))
                  ((fx= _g5264_ 3)
                   (apply gx#resolve-identifier__opt-lambda4173 _g5265_))
                  (else (error "No clause matching arguments" _g5265_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda4131
      (lambda (_stx4133_ _val4134_ _rebind?4135_ _phi4136_ _ctx4137_)
        (let ((_rebind?4139_
               (if (not _rebind?4135_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?4135_) _rebind?4135_ true))))
          (gx#core-bind!__opt-lambda3893
           (gx#core-identifier-key _stx4133_)
           _val4134_
           _rebind?4139_
           _phi4136_
           _ctx4137_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx4144_ _val4145_)
          (let ((_rebind?4147_ '#f))
            (let ((_phi4149_ (gx#current-expander-phi)))
              (let ((_ctx4151_ (gx#current-expander-context)))
                (gx#bind-identifier!__opt-lambda4131
                 _stx4144_
                 _val4145_
                 _rebind?4147_
                 _phi4149_
                 _ctx4151_))))))
      (define gx#bind-identifier!__1
        (lambda (_stx4153_ _val4154_ _rebind?4155_)
          (let ((_phi4157_ (gx#current-expander-phi)))
            (let ((_ctx4159_ (gx#current-expander-context)))
              (gx#bind-identifier!__opt-lambda4131
               _stx4153_
               _val4154_
               _rebind?4155_
               _phi4157_
               _ctx4159_)))))
      (define gx#bind-identifier!__2
        (lambda (_stx4161_ _val4162_ _rebind?4163_ _phi4164_)
          (let ((_ctx4166_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda4131
             _stx4161_
             _val4162_
             _rebind?4163_
             _phi4164_
             _ctx4166_))))
      (define gx#bind-identifier!
        (lambda _g5267_
          (let ((_g5266_ (length _g5267_)))
            (cond ((fx= _g5266_ 2) (apply gx#bind-identifier!__0 _g5267_))
                  ((fx= _g5266_ 3) (apply gx#bind-identifier!__1 _g5267_))
                  ((fx= _g5266_ 4) (apply gx#bind-identifier!__2 _g5267_))
                  ((fx= _g5266_ 5)
                   (apply gx#bind-identifier!__opt-lambda4131 _g5267_))
                  (else (error "No clause matching arguments" _g5267_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda4103
      (lambda (_stx4105_ _phi4106_ _ctx4107_)
        ((letrec ((_lp4109_
                   (lambda (_e4111_ _marks4112_)
                     (if (symbol? _e4111_)
                         (gx#core-resolve-binding
                          _e4111_
                          _phi4106_
                          _ctx4107_
                          (reverse _marks4112_))
                         (if (gx#identifier-quote? _e4111_)
                             (gx#core-resolve-binding
                              (##structure-ref _e4111_ '1 AST::t '#f)
                              _phi4106_
                              (##structure-ref
                               _e4111_
                               '3
                               gx#syntax-quote::t
                               '#f)
                              (##structure-ref
                               _e4111_
                               '4
                               gx#syntax-quote::t
                               '#f))
                             (if (##structure-direct-instance-of?
                                  _e4111_
                                  'gx#identifier-wrap::t)
                                 (gx#core-resolve-binding
                                  (##structure-ref _e4111_ '1 AST::t '#f)
                                  _phi4106_
                                  _ctx4107_
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e4111_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks4112_))
                                 (if (##structure-direct-instance-of?
                                      _e4111_
                                      'gx#syntax-wrap::t)
                                     (_lp4109_
                                      (##structure-ref _e4111_ '1 AST::t '#f)
                                      (gx#apply-mark
                                       (##structure-ref
                                        _e4111_
                                        '3
                                        gx#syntax-wrap::t
                                        '#f)
                                       _marks4112_))
                                     (if (##structure-instance-of?
                                          _e4111_
                                          'gerbil#AST::t)
                                         (_lp4109_
                                          (##structure-ref
                                           _e4111_
                                           '1
                                           AST::t
                                           '#f)
                                          _marks4112_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad identifier"
                                          _stx4105_)))))))))
           _lp4109_)
         _stx4105_
         (gx#current-expander-marks))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx4117_)
          (let ((_phi4119_ (gx#current-expander-phi)))
            (let ((_ctx4121_ (gx#current-expander-context)))
              (gx#core-resolve-identifier__opt-lambda4103
               _stx4117_
               _phi4119_
               _ctx4121_)))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx4123_ _phi4124_)
          (let ((_ctx4126_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda4103
             _stx4123_
             _phi4124_
             _ctx4126_))))
      (define gx#core-resolve-identifier
        (lambda _g5269_
          (let ((_g5268_ (length _g5269_)))
            (cond ((fx= _g5268_ 1)
                   (apply gx#core-resolve-identifier__0 _g5269_))
                  ((fx= _g5268_ 2)
                   (apply gx#core-resolve-identifier__1 _g5269_))
                  ((fx= _g5268_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda4103 _g5269_))
                  (else (error "No clause matching arguments" _g5269_))))))))
  (define gx#core-resolve-binding
    (lambda (_id4019_ _phi4020_ _ctx4021_ _marks4022_)
      (let ((_resolve4024_
             (lambda (_ctx4092_ _src-phi4093_ _key4094_)
               ((letrec ((_lp4096_
                          (lambda (_ctx4098_ _dphi4099_)
                            (let ((_$e4101_
                                   (gx#core-context-resolve
                                    _ctx4098_
                                    _key4094_)))
                              (if _$e4101_
                                  (values _$e4101_)
                                  (if (fxzero? _dphi4099_)
                                      '#f
                                      (if (fxpositive? _dphi4099_)
                                          (_lp4096_
                                           (gx#core-context-shift
                                            _ctx4098_
                                            '-1)
                                           (fx- _dphi4099_ '1))
                                          (if (fxnegative? _dphi4099_)
                                              (_lp4096_
                                               (gx#core-context-shift
                                                _ctx4098_
                                                '1)
                                               (fx+ _dphi4099_ '1))
                                              '#!void))))))))
                  _lp4096_)
                (gx#core-context-shift _ctx4092_ _phi4020_)
                (fx- _phi4020_ _src-phi4093_)))))
        ((letrec ((_lp4026_
                   (lambda (_ctx4028_ _src-phi4029_ _rest4030_)
                     (let ((_rest40314039_ _rest4030_))
                       (let ((_E40344043_
                              (lambda ()
                                (error '"No clause matching" _rest40314039_))))
                         (let ((_else40334047_
                                (lambda ()
                                  (_resolve4024_
                                   _ctx4028_
                                   _src-phi4029_
                                   _id4019_))))
                           (let ((_K40354080_
                                  (lambda (_rest4050_ _hd4051_)
                                    (let ((_hd40524058_ _hd4051_))
                                      (let ((_E40544062_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd40524058_))))
                                        (let ((_K40554072_
                                               (lambda (_subst4065_)
                                                 (let ((_$e4069_
                                                        (let ((_key4067_
                                                               (if _subst4065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (table-ref _subst4065_ _id4019_ '#f)
                           '#f)))
                  (if _key4067_
                      (_resolve4024_ _ctx4028_ _src-phi4029_ _key4067_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e4069_
                                                       _$e4069_
                                                       (_lp4026_
                                                        (##structure-ref
                                                         _hd4051_
                                                         '2
                                                         gx#expander-mark::t
                                                         '#f)
                                                        (##structure-ref
                                                         _hd4051_
                                                         '3
                                                         gx#expander-mark::t
                                                         '#f)
                                                        _rest4050_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd40524058_)
                                              (let ((_e40564075_
                                                     (##vector-ref
                                                      _hd40524058_
                                                      '1)))
                                                (let ((_subst4078_
                                                       _e40564075_))
                                                  (_K40554072_ _subst4078_)))
                                              (_E40544062_))))))))
                             (if (##pair? _rest40314039_)
                                 (let ((_hd40364083_ (##car _rest40314039_))
                                       (_tl40374085_ (##cdr _rest40314039_)))
                                   (let ((_hd4088_ _hd40364083_))
                                     (let ((_rest4090_ _tl40374085_))
                                       (_K40354080_ _rest4090_ _hd4088_))))
                                 (_else40334047_)))))))))
           _lp4026_)
         _ctx4021_
         _phi4020_
         _marks4022_))))
  (begin
    (define gx#core-bind!__opt-lambda3893
      (lambda (_key3895_ _val3896_ _rebind?3897_ _phi3898_ _ctx3899_)
        (let ((_update-binding3901_
               (lambda (_xval3972_)
                 (if (let ((_$e3974_
                            (_rebind?3897_ _ctx3899_ _xval3972_ _val3896_)))
                       (if _$e3974_
                           _$e3974_
                           (let ((_$e3980_
                                  (if (##structure-direct-instance-of?
                                       _xval3972_
                                       'gx#import-binding::t)
                                      (let ((_$e3977_
                                             (##structure-ref
                                              _xval3972_
                                              '6
                                              gx#import-binding::t
                                              '#f)))
                                        (if _$e3977_
                                            _$e3977_
                                            (if (##structure-instance-of?
                                                 _val3896_
                                                 'gx#binding::t)
                                                (not (##structure-direct-instance-of?
                                                      _val3896_
                                                      'gx#import-binding::t))
                                                '#f)))
                                      '#f)))
                             (if _$e3980_
                                 _$e3980_
                                 (if (##structure-instance-of?
                                      _xval3972_
                                      'gx#extern-binding::t)
                                     (if (##structure-instance-of?
                                          _val3896_
                                          'gx#runtime-binding::t)
                                         (eq? (##structure-ref
                                               _val3896_
                                               '1
                                               gx#binding::t
                                               '#f)
                                              (##structure-ref
                                               _xval3972_
                                               '1
                                               gx#binding::t
                                               '#f))
                                         '#f)
                                     '#f)))))
                     _val3896_
                     (if (if (##structure-direct-instance-of?
                              _val3896_
                              'gx#import-binding::t)
                             (let ((_$e3983_
                                    (##structure-ref
                                     _val3896_
                                     '6
                                     gx#import-binding::t
                                     '#f)))
                               (if _$e3983_
                                   _$e3983_
                                   (if (##structure-instance-of?
                                        _xval3972_
                                        'gx#binding::t)
                                       (eq? (##structure-ref
                                             _val3896_
                                             '1
                                             gx#binding::t
                                             '#f)
                                            (##structure-ref
                                             _xval3972_
                                             '1
                                             gx#binding::t
                                             '#f))
                                       '#f)))
                             '#f)
                         _xval3972_
                         (gx#raise-syntax-error
                          '#f
                          '"Bad binding; rebind conflict"
                          _key3895_
                          _xval3972_
                          _val3896_))))))
          (let ((_gensubst3902_
                 (lambda (_subst3967_ _id3968_)
                   (let ((_eid3970_
                          (gensym (if (uninterned-symbol? _id3968_)
                                      '%
                                      _id3968_))))
                     (begin
                       (hash-put! _subst3967_ _id3968_ _eid3970_)
                       _eid3970_)))))
            (let ((_subst!3903_
                   (lambda (_key3905_)
                     (let ((_key39063914_ _key3905_))
                       (let ((_E39093918_
                              (lambda ()
                                (error '"No clause matching" _key39063914_))))
                         (let ((_else39083922_ (lambda () _key3905_)))
                           (let ((_K39103955_
                                  (lambda (_mark3925_ _id3926_)
                                    (let ((_mark39273933_ _mark3925_))
                                      (let ((_E39293937_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _mark39273933_))))
                                        (let ((_K39303947_
                                               (lambda (_subst3940_)
                                                 (if (not _subst3940_)
                                                     (let ((_subst3942_
                                                            (make-hash-table-eq)))
                                                       (begin
                                                         (##structure-set!
                                                          _mark3925_
                                                          _subst3942_
                                                          '1
                                                          gx#expander-mark::t
                                                          '#f)
                                                         (_gensubst3902_
                                                          _subst3942_
                                                          _id3926_)))
                                                     (let ((_$e3944_
                                                            (table-ref
                                                             _subst3940_
                                                             _id3926_
                                                             '#f)))
                                                       (if _$e3944_
                                                           (values _$e3944_)
                                                           (_gensubst3902_
                                                            _subst3940_
                                                            _id3926_)))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _mark39273933_)
                                              (let ((_e39313950_
                                                     (##vector-ref
                                                      _mark39273933_
                                                      '1)))
                                                (let ((_subst3953_
                                                       _e39313950_))
                                                  (_K39303947_ _subst3953_)))
                                              (_E39293937_))))))))
                             (if (##pair? _key39063914_)
                                 (let ((_hd39113958_ (##car _key39063914_))
                                       (_tl39123960_ (##cdr _key39063914_)))
                                   (let ((_id3963_ _hd39113958_))
                                     (let ((_mark3965_ _tl39123960_))
                                       (_K39103955_ _mark3965_ _id3963_))))
                                 (_else39083922_)))))))))
              (gx#core-context-bind!
               (gx#core-context-shift _ctx3899_ _phi3898_)
               (_subst!3903_ _key3895_)
               _val3896_
               _update-binding3901_))))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key3989_ _val3990_)
          (let ((_rebind?3992_ false))
            (let ((_phi3994_ (gx#current-expander-phi)))
              (let ((_ctx3996_ (gx#current-expander-context)))
                (gx#core-bind!__opt-lambda3893
                 _key3989_
                 _val3990_
                 _rebind?3992_
                 _phi3994_
                 _ctx3996_))))))
      (define gx#core-bind!__1
        (lambda (_key3998_ _val3999_ _rebind?4000_)
          (let ((_phi4002_ (gx#current-expander-phi)))
            (let ((_ctx4004_ (gx#current-expander-context)))
              (gx#core-bind!__opt-lambda3893
               _key3998_
               _val3999_
               _rebind?4000_
               _phi4002_
               _ctx4004_)))))
      (define gx#core-bind!__2
        (lambda (_key4006_ _val4007_ _rebind?4008_ _phi4009_)
          (let ((_ctx4011_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda3893
             _key4006_
             _val4007_
             _rebind?4008_
             _phi4009_
             _ctx4011_))))
      (define gx#core-bind!
        (lambda _g5271_
          (let ((_g5270_ (length _g5271_)))
            (cond ((fx= _g5270_ 2) (apply gx#core-bind!__0 _g5271_))
                  ((fx= _g5270_ 3) (apply gx#core-bind!__1 _g5271_))
                  ((fx= _g5270_ 4) (apply gx#core-bind!__2 _g5271_))
                  ((fx= _g5270_ 5)
                   (apply gx#core-bind!__opt-lambda3893 _g5271_))
                  (else (error "No clause matching arguments" _g5271_))))))))
  (define gx#core-identifier-key
    (lambda (_stx3825_)
      (if (symbol? _stx3825_)
          (let ((_g38263834_ (gx#current-expander-marks)))
            (let ((_E38293838_
                   (lambda () (error '"No clause matching" _g38263834_))))
              (let ((_else38283842_ (lambda () _stx3825_)))
                (let ((_K38303847_
                       (lambda (_hd3845_) (cons _stx3825_ _hd3845_))))
                  (if (##pair? _g38263834_)
                      (let ((_hd38313850_ (##car _g38263834_))
                            (_tl38323852_ (##cdr _g38263834_)))
                        (let ((_hd3855_ _hd38313850_)) (_K38303847_ _hd3855_)))
                      (_else38283842_))))))
          (if (gx#identifier? _stx3825_)
              (let ((_id3857_ (gx#syntax-local-unwrap _stx3825_)))
                (let ((_eid3859_ (gx#stx-e _id3857_)))
                  (let ((_marks3861_ (gx#stx-identifier-marks _id3857_)))
                    (let ()
                      (let ((_marks38633871_ _marks3861_))
                        (let ((_E38663875_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks38633871_))))
                          (let ((_else38653879_ (lambda () _eid3859_)))
                            (let ((_K38673884_
                                   (lambda (_hd3882_)
                                     (cons _eid3859_ _hd3882_))))
                              (if (##pair? _marks38633871_)
                                  (let ((_hd38683887_ (##car _marks38633871_))
                                        (_tl38693889_ (##cdr _marks38633871_)))
                                    (let ((_hd3892_ _hd38683887_))
                                      (_K38673884_ _hd3892_)))
                                  (_else38653879_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx3825_)))))
  (define gx#core-context-shift
    (lambda (_ctx3770_ _phi3771_)
      (let ((_make-phi3773_
             (lambda (_super3823_)
               (let ((__obj5242 (make-object gx#phi-context::t '5)))
                 (begin
                   (gx#phi-context:::init!__opt-lambda5204
                    __obj5242
                    (gensym 'phi)
                    _super3823_)
                   __obj5242)))))
        (let ((_make-phi/up3774_
               (lambda (_ctx3818_ _super3819_)
                 (let ((_ctx+13821_ (_make-phi3773_ _super3819_)))
                   (begin
                     (##structure-set!
                      _ctx3818_
                      _ctx+13821_
                      '4
                      gx#phi-context::t
                      '#f)
                     (##structure-set!
                      _ctx+13821_
                      _ctx3818_
                      '5
                      gx#phi-context::t
                      '#f)
                     _ctx+13821_)))))
          (let ((_make-phi/down3775_
                 (lambda (_ctx3813_ _super3814_)
                   (let ((_ctx-13816_ (_make-phi3773_ _super3814_)))
                     (begin
                       (##structure-set!
                        _ctx-13816_
                        _ctx3813_
                        '4
                        gx#phi-context::t
                        '#f)
                       (##structure-set!
                        _ctx3813_
                        _ctx-13816_
                        '5
                        gx#phi-context::t
                        '#f)
                       _ctx-13816_)))))
            (let ((_shift3776_
                   (lambda (_ctx3797_
                            _delta3798_
                            _make-delta-context3799_
                            _phi3800_
                            _K3801_)
                     (let ((_$e3803_
                            (##structure-ref
                             _ctx3797_
                             '3
                             gx#phi-context::t
                             '#f)))
                       (if _$e3803_
                           ((lambda (_super3806_)
                              (let ((_super3808_
                                     (_K3801_ _super3806_ _delta3798_)))
                                (let ((_ctx+d3810_
                                       (_make-delta-context3799_
                                        _ctx3797_
                                        _super3808_)))
                                  (let ()
                                    (_K3801_ _ctx+d3810_
                                             (fx- _phi3800_ _delta3798_))))))
                            _$e3803_)
                           (error '"Bad context" _ctx3797_))))))
              ((letrec ((_K3778_ (lambda (_ctx3780_ _phi3781_)
                                   (if (fxzero? _phi3781_)
                                       _ctx3780_
                                       (if (##structure-instance-of?
                                            _ctx3780_
                                            'gx#context-phi::t)
                                           (if (fxpositive? _phi3781_)
                                               (let ((_$e3783_
                                                      (##structure-ref
                                                       _ctx3780_
                                                       '4
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e3783_
                                                     ((lambda (_g37853787_)
                                                        (_K3778_ _g37853787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx- _phi3781_ '1)))
              _$e3783_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift3776_
                                                      _ctx3780_
                                                      '1
                                                      _make-phi/up3774_
                                                      _phi3781_
                                                      _K3778_)))
                                               (let ((_$e3790_
                                                      (##structure-ref
                                                       _ctx3780_
                                                       '5
                                                       gx#phi-context::t
                                                       '#f)))
                                                 (if _$e3790_
                                                     ((lambda (_g37923794_)
                                                        (_K3778_ _g37923794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (fx+ _phi3781_ '1)))
              _$e3790_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_shift3776_
                                                      _ctx3780_
                                                      '-1
                                                      _make-phi/down3775_
                                                      _phi3781_
                                                      _K3778_))))
                                           _ctx3780_)))))
                 _K3778_)
               _ctx3770_
               _phi3771_)))))))
  (define gx#core-context-get
    (lambda (_ctx3767_ _key3768_)
      (table-ref
       (##structure-ref _ctx3767_ '2 gx#expander-context::t '#f)
       _key3768_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx3763_ _key3764_ _val3765_)
      (hash-put!
       (##structure-ref _ctx3763_ '2 gx#expander-context::t '#f)
       _key3764_
       _val3765_)))
  (define gx#core-context-resolve
    (lambda (_ctx3750_ _key3751_)
      ((letrec ((_lp3753_
                 (lambda (_ctx3755_)
                   (let ((_$e3757_ (gx#core-context-get _ctx3755_ _key3751_)))
                     (if _$e3757_
                         (values _$e3757_)
                         (let ((_$e3760_
                                (if (##structure-instance-of?
                                     _ctx3755_
                                     'gx#context-phi::t)
                                    (##structure-ref
                                     _ctx3755_
                                     '3
                                     gx#phi-context::t
                                     '#f)
                                    '#f)))
                           (if _$e3760_ (_lp3753_ _$e3760_) '#f)))))))
         _lp3753_)
       _ctx3750_)))
  (define gx#core-context-bind!
    (lambda (_ctx3740_ _key3741_ _val3742_ _rebind3743_)
      (let ((_$e3745_ (gx#core-context-get _ctx3740_ _key3741_)))
        (if _$e3745_
            ((lambda (_xval3748_)
               (gx#core-context-put!
                _ctx3740_
                _key3741_
                (_rebind3743_ _xval3748_)))
             _$e3745_)
            (gx#core-context-put! _ctx3740_ _key3741_ _val3742_)))))
  (begin
    (define gx#core-context-top__opt-lambda3716
      (lambda (_ctx3718_ _stop?3719_)
        ((letrec ((_lp3721_
                   (lambda (_ctx3723_)
                     (if (_stop?3719_ _ctx3723_)
                         _ctx3723_
                         (if (##structure-instance-of?
                              _ctx3723_
                              'gx#context-phi::t)
                             (_lp3721_
                              (##structure-ref
                               _ctx3723_
                               '3
                               gx#phi-context::t
                               '#f))
                             '#f)))))
           _lp3721_)
         _ctx3718_)))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let ((_ctx3729_ (gx#current-expander-context)))
            (let ((_stop?3731_ gx#top-context?))
              (gx#core-context-top__opt-lambda3716 _ctx3729_ _stop?3731_)))))
      (define gx#core-context-top__1
        (lambda (_ctx3733_)
          (let ((_stop?3735_ gx#top-context?))
            (gx#core-context-top__opt-lambda3716 _ctx3733_ _stop?3735_))))
      (define gx#core-context-top
        (lambda _g5273_
          (let ((_g5272_ (length _g5273_)))
            (cond ((fx= _g5272_ 0) (apply gx#core-context-top__0 _g5273_))
                  ((fx= _g5272_ 1) (apply gx#core-context-top__1 _g5273_))
                  ((fx= _g5272_ 2)
                   (apply gx#core-context-top__opt-lambda3716 _g5273_))
                  (else (error "No clause matching arguments" _g5273_))))))))
  (begin
    (define gx#core-context-root__opt-lambda3701
      (lambda (_ctx3703_)
        ((letrec ((_lp3705_
                   (lambda (_ctx3707_)
                     (if (##structure-instance-of?
                          _ctx3707_
                          'gx#context-phi::t)
                         (_lp3705_
                          (##structure-ref _ctx3707_ '3 gx#phi-context::t '#f))
                         _ctx3707_))))
           _lp3705_)
         _ctx3703_)))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx3713_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda3701 _ctx3713_))))
      (define gx#core-context-root
        (lambda _g5275_
          (let ((_g5274_ (length _g5275_)))
            (cond ((fx= _g5274_ 0) (apply gx#core-context-root__0 _g5275_))
                  ((fx= _g5274_ 1)
                   (apply gx#core-context-root__opt-lambda3701 _g5275_))
                  (else (error "No clause matching arguments" _g5275_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda3685
      (lambda (_ctx3687_ . __36843688_)
        (if (##structure-instance-of? _ctx3687_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx3687_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx3687_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx3695_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda3685 _ctx3695_))))
      (define gx#core-context-rebind?
        (lambda _g5277_
          (let ((_g5276_ (length _g5277_)))
            (cond ((fx= _g5276_ 0) (apply gx#core-context-rebind?__0 _g5277_))
                  ((fx= _g5276_ 1)
                   (apply gx#core-context-rebind?__opt-lambda3685 _g5277_))
                  ((fx>= _g5276_ 1)
                   (apply gx#core-context-rebind?__opt-lambda3685 _g5277_))
                  (else (error "No clause matching arguments" _g5277_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda3668
      (lambda (_ctx3670_)
        (let ((_$e3672_ (gx#core-context-top__1 _ctx3670_)))
          (if _$e3672_
              ((lambda (_ctx3675_)
                 (if (##structure-instance-of? _ctx3675_ 'gx#module-context::t)
                     (##structure-ref _ctx3675_ '6 gx#module-context::t '#f)
                     '#f))
               _$e3672_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx3681_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda3668 _ctx3681_))))
      (define gx#core-context-namespace
        (lambda _g5279_
          (let ((_g5278_ (length _g5279_)))
            (cond ((fx= _g5278_ 0)
                   (apply gx#core-context-namespace__0 _g5279_))
                  ((fx= _g5278_ 1)
                   (apply gx#core-context-namespace__opt-lambda3668 _g5279_))
                  (else (error "No clause matching arguments" _g5279_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda3654
      (lambda (_bind3656_ _is?3657_)
        (if (##structure-direct-instance-of? _bind3656_ 'gx#syntax-binding::t)
            (_is?3657_
             (##structure-ref _bind3656_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind3662_)
          (let ((_is?3664_ gx#expander?))
            (gx#expander-binding?__opt-lambda3654 _bind3662_ _is?3664_))))
      (define gx#expander-binding?
        (lambda _g5281_
          (let ((_g5280_ (length _g5281_)))
            (cond ((fx= _g5280_ 1) (apply gx#expander-binding?__0 _g5281_))
                  ((fx= _g5280_ 2)
                   (apply gx#expander-binding?__opt-lambda3654 _g5281_))
                  (else (error "No clause matching arguments" _g5281_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind3653_)
      (gx#expander-binding?__opt-lambda3654 _bind3653_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind3651_)
      (gx#expander-binding?__opt-lambda3654 _bind3651_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind3649_)
      (gx#expander-binding?__opt-lambda3654 _bind3649_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind3640_)
      (let ((_feature?3642_
             (lambda (_e3644_)
               (let ((_$e3646_
                      (##structure-instance-of?
                       _e3644_
                       'gx#feature-expander::t)))
                 (if _$e3646_
                     _$e3646_
                     (##structure-instance-of?
                      _e3644_
                      'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda3654 _bind3640_ _feature?3642_))))
  (define gx#private-feature-binding?
    (lambda (_bind3638_)
      (gx#expander-binding?__opt-lambda3654
       _bind3638_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda3623
      (lambda (_id3625_ _bound?3626_)
        (if (gx#identifier? _id3625_)
            (_bound?3626_ (gx#resolve-identifier__0 _id3625_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id3631_)
          (let ((_bound?3633_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda3623
             _id3631_
             _bound?3633_))))
      (define gx#core-bound-identifier?
        (lambda _g5283_
          (let ((_g5282_ (length _g5283_)))
            (cond ((fx= _g5282_ 1)
                   (apply gx#core-bound-identifier?__0 _g5283_))
                  ((fx= _g5282_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda3623 _g5283_))
                  (else (error "No clause matching arguments" _g5283_))))))))
  (define gx#core-identifier=?
    (lambda (_x3615_ _y3616_)
      (let ((_y=?3618_
             (lambda (_xid3622_)
               ((if (list? _y3616_) memq eq?) _xid3622_ _y3616_))))
        (let ((_bind3620_ (gx#resolve-identifier__0 _x3615_)))
          (if (##structure-instance-of? _bind3620_ 'gx#binding::t)
              (_y=?3618_ (##structure-ref _bind3620_ '1 gx#binding::t '#f))
              (_y=?3618_ (gx#stx-e _x3615_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e3613_)
      (if (interned-symbol? _e3613_)
          (string-index (symbol->string _e3613_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda3569
      (lambda (_stx3571_ _src3572_ _ctx3573_ _marks3574_)
        (if (gx#sealed-syntax? _stx3571_)
            (gx#stx-unwrap__0 _stx3571_)
            (if (gx#identifier? _stx3571_)
                (let ((_id3576_ (gx#syntax-local-unwrap _stx3571_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id3576_)
                   (let ((_$e3578_ (gx#stx-source _id3576_)))
                     (if _$e3578_ _$e3578_ _src3572_))
                   _ctx3573_
                   (##structure-ref _id3576_ '3 gx#identifier-wrap::t '#f)))
                (if (gx#stx-datum? _stx3571_)
                    (gx#stx-e _stx3571_)
                    (##structure
                     gx#syntax-quote::t
                     _stx3571_
                     (let ((_$e3581_ (gx#stx-source _stx3571_)))
                       (if _$e3581_ _$e3581_ _src3572_))
                     _ctx3573_
                     (reverse _marks3574_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx3587_)
          (let ((_src3589_ '#f))
            (let ((_ctx3591_ (gx#current-expander-context)))
              (let ((_marks3593_ (gx#current-expander-marks)))
                (gx#core-quote-syntax__opt-lambda3569
                 _stx3587_
                 _src3589_
                 _ctx3591_
                 _marks3593_))))))
      (define gx#core-quote-syntax__1
        (lambda (_stx3595_ _src3596_)
          (let ((_ctx3598_ (gx#current-expander-context)))
            (let ((_marks3600_ (gx#current-expander-marks)))
              (gx#core-quote-syntax__opt-lambda3569
               _stx3595_
               _src3596_
               _ctx3598_
               _marks3600_)))))
      (define gx#core-quote-syntax__2
        (lambda (_stx3602_ _src3603_ _ctx3604_)
          (let ((_marks3606_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda3569
             _stx3602_
             _src3603_
             _ctx3604_
             _marks3606_))))
      (define gx#core-quote-syntax
        (lambda _g5285_
          (let ((_g5284_ (length _g5285_)))
            (cond ((fx= _g5284_ 1) (apply gx#core-quote-syntax__0 _g5285_))
                  ((fx= _g5284_ 2) (apply gx#core-quote-syntax__1 _g5285_))
                  ((fx= _g5284_ 3) (apply gx#core-quote-syntax__2 _g5285_))
                  ((fx= _g5284_ 4)
                   (apply gx#core-quote-syntax__opt-lambda3569 _g5285_))
                  (else (error "No clause matching arguments" _g5285_))))))))
  (define gx#core-cons
    (lambda (_hd3567_ _tl3568_)
      (cons (gx#core-quote-syntax__0 _hd3567_) _tl3568_)))
  (define gx#core-list
    (lambda (_hd3564_ . _rest3565_)
      (cons (gx#core-quote-syntax__0 _hd3564_) _rest3565_)))
  (define gx#core-cons*
    (lambda (_hd3561_ . _rest3562_)
      (apply cons* (gx#core-quote-syntax__0 _hd3561_) _rest3562_)))
  (begin
    (define gx#core-resolve-path__opt-lambda3533
      (lambda (_stx-path3535_ _rel3536_)
        (let ((_path3548_ (gx#stx-e _stx-path3535_))
              (_reldir3549_
               ((letrec ((_lp3538_
                          (lambda (_relsrc3540_)
                            (if (##structure-instance-of?
                                 _relsrc3540_
                                 'gerbil#AST::t)
                                (_lp3538_
                                 (let ((_$e3542_ (gx#stx-source _relsrc3540_)))
                                   (if _$e3542_
                                       _$e3542_
                                       (gx#stx-e _relsrc3540_))))
                                (if (source-location-path? _relsrc3540_)
                                    (path-directory
                                     (source-location-path _relsrc3540_))
                                    (if (string? _relsrc3540_)
                                        (path-directory _relsrc3540_)
                                        (if (not (null? (gx#current-expander-path)))
                                            (path-directory
                                             (car (gx#current-expander-path)))
                                            (current-directory))))))))
                  _lp3538_)
                (let ((_$e3545_ (gx#stx-source _stx-path3535_)))
                  (if _$e3545_ _$e3545_ _rel3536_)))))
          (path-expand _path3548_ (path-normalize _reldir3549_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path3554_)
          (let ((_rel3556_ '#f))
            (gx#core-resolve-path__opt-lambda3533 _stx-path3554_ _rel3556_))))
      (define gx#core-resolve-path
        (lambda _g5287_
          (let ((_g5286_ (length _g5287_)))
            (cond ((fx= _g5286_ 1) (apply gx#core-resolve-path__0 _g5287_))
                  ((fx= _g5286_ 2)
                   (apply gx#core-resolve-path__opt-lambda3533 _g5287_))
                  (else (error "No clause matching arguments" _g5287_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx3532_) (gx#stx-rewrap _stx3532_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx3530_)
      (gx#stx-unwrap__opt-lambda3343 _stx3530_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx3498_)
      (let ((_g34993507_ (gx#current-expander-marks)))
        (let ((_E35023511_
               (lambda () (error '"No clause matching" _g34993507_))))
          (let ((_else35013515_ (lambda () _stx3498_)))
            (let ((_K35033520_
                   (lambda (_hd3518_) (gx#stx-apply-mark _stx3498_ _hd3518_))))
              (if (##pair? _g34993507_)
                  (let ((_hd35043523_ (##car _g34993507_))
                        (_tl35053525_ (##cdr _g34993507_)))
                    (let ((_hd3528_ _hd35043523_)) (_K35033520_ _hd3528_)))
                  (_else35013515_))))))))
  (begin
    (define gx#syntax-local-e__opt-lambda3481
      (lambda (_stx3483_ _E3484_)
        (let ((_bind3486_ (gx#resolve-identifier__0 _stx3483_)))
          (if (##structure-direct-instance-of?
               _bind3486_
               'gx#syntax-binding::t)
              (##structure-ref _bind3486_ '4 gx#syntax-binding::t '#f)
              (_E3484_ _stx3483_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx3491_)
          (let ((_E3493_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda3481 _stx3491_ _E3493_))))
      (define gx#syntax-local-e
        (lambda _g5289_
          (let ((_g5288_ (length _g5289_)))
            (cond ((fx= _g5288_ 1) (apply gx#syntax-local-e__0 _g5289_))
                  ((fx= _g5288_ 2)
                   (apply gx#syntax-local-e__opt-lambda3481 _g5289_))
                  (else (error "No clause matching arguments" _g5289_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda3465
      (lambda (_stx3467_ _E3468_)
        (let ((_e3470_ (gx#syntax-local-e__opt-lambda3481 _stx3467_ _E3468_)))
          (if (##structure-instance-of? _e3470_ 'gx#expander::t)
              (##structure-ref _e3470_ '1 gx#expander::t '#f)
              _e3470_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx3475_)
          (let ((_E3477_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda3465 _stx3475_ _E3477_))))
      (define gx#syntax-local-value
        (lambda _g5291_
          (let ((_g5290_ (length _g5291_)))
            (cond ((fx= _g5290_ 1) (apply gx#syntax-local-value__0 _g5291_))
                  ((fx= _g5290_ 2)
                   (apply gx#syntax-local-value__opt-lambda3465 _g5291_))
                  (else (error "No clause matching arguments" _g5291_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx3464_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx3464_))))
