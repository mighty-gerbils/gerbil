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
  (define gx#current-expander-module-library-package-cache
    (make-parameter '#f))
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
    (lambda _$args7410_
      (apply make-struct-instance gx#expander-context::t _$args7410_)))
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
    (lambda _$args7407_
      (apply make-struct-instance gx#root-context::t _$args7407_)))
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
    (lambda _$args7404_
      (apply make-struct-instance gx#phi-context::t _$args7404_)))
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
    (lambda _$args7401_
      (apply make-struct-instance gx#top-context::t _$args7401_)))
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
    (lambda _$args7398_
      (apply make-struct-instance gx#module-context::t _$args7398_)))
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
    (lambda _$args7395_
      (apply make-struct-instance gx#prelude-context::t _$args7395_)))
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
    (lambda _$args7392_
      (apply make-struct-instance gx#local-context::t _$args7392_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda7374
      (lambda (_self7376_ _id7377_ _super7378_)
        (if (##fx< '5 (##vector-length _self7376_))
            (begin
              (##vector-set! _self7376_ '1 _id7377_)
              (##vector-set! _self7376_ '2 (make-hash-table-eq))
              (##vector-set! _self7376_ '3 _super7378_)
              (##vector-set! _self7376_ '4 '#f)
              (##vector-set! _self7376_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7376_))))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self7383_ _id7384_)
          (let ((_super7386_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda7374
             _self7383_
             _id7384_
             _super7386_))))
      (define gx#phi-context:::init!
        (lambda _g7414_
          (let ((_g7413_ (length _g7414_)))
            (cond ((fx= _g7413_ 2) (apply gx#phi-context:::init!__0 _g7414_))
                  ((fx= _g7413_ 3)
                   (apply gx#phi-context:::init!__opt-lambda7374 _g7414_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g7414_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda7238
      (lambda (_self7240_ _super7241_)
        (if (##fx< '5 (##vector-length _self7240_))
            (begin
              (##vector-set! _self7240_ '1 (gensym 'L))
              (##vector-set! _self7240_ '2 (make-hash-table-eq))
              (##vector-set! _self7240_ '3 _super7241_)
              (##vector-set! _self7240_ '4 '#f)
              (##vector-set! _self7240_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7240_))))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self7246_)
          (let ((_super7248_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda7238
             _self7246_
             _super7248_))))
      (define gx#local-context:::init!
        (lambda _g7416_
          (let ((_g7415_ (length _g7416_)))
            (cond ((fx= _g7415_ 1) (apply gx#local-context:::init!__0 _g7416_))
                  ((fx= _g7415_ 2)
                   (apply gx#local-context:::init!__opt-lambda7238 _g7416_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g7416_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args7114_
      (apply make-struct-instance gx#binding::t _$args7114_)))
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
    (lambda _$args7111_
      (apply make-struct-instance gx#runtime-binding::t _$args7111_)))
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
    (lambda _$args7108_
      (apply make-struct-instance gx#local-binding::t _$args7108_)))
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
    (lambda _$args7105_
      (apply make-struct-instance gx#top-binding::t _$args7105_)))
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
    (lambda _$args7102_
      (apply make-struct-instance gx#module-binding::t _$args7102_)))
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
    (lambda _$args7099_
      (apply make-struct-instance gx#extern-binding::t _$args7099_)))
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
    (lambda _$args7096_
      (apply make-struct-instance gx#syntax-binding::t _$args7096_)))
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
    (lambda _$args7093_
      (apply make-struct-instance gx#import-binding::t _$args7093_)))
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
    (lambda _$args7090_
      (apply make-struct-instance gx#alias-binding::t _$args7090_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args7087_
      (apply make-struct-instance gx#expander::t _$args7087_)))
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
    (lambda _$args7084_
      (apply make-struct-instance gx#core-expander::t _$args7084_)))
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
    (lambda _$args7081_
      (apply make-struct-instance gx#expression-form::t _$args7081_)))
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
    (lambda _$args7078_
      (apply make-struct-instance gx#special-form::t _$args7078_)))
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
    (lambda _$args7075_
      (apply make-struct-instance gx#definition-form::t _$args7075_)))
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
    (lambda _$args7072_
      (apply make-struct-instance gx#top-special-form::t _$args7072_)))
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
    (lambda _$args7069_
      (apply make-struct-instance gx#module-special-form::t _$args7069_)))
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
    (lambda _$args7066_
      (apply make-struct-instance gx#feature-expander::t _$args7066_)))
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
    (lambda _$args7063_
      (apply make-struct-instance gx#private-feature-expander::t _$args7063_)))
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
    (lambda _$args7060_
      (apply make-struct-instance gx#reserved-expander::t _$args7060_)))
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
    (lambda _$args7057_
      (apply make-struct-instance gx#macro-expander::t _$args7057_)))
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
    (lambda _$args7054_
      (apply make-struct-instance gx#rename-macro-expander::t _$args7054_)))
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
    (lambda _$args7051_
      (apply make-struct-instance gx#user-expander::t _$args7051_)))
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
    (lambda _$args7048_
      (apply make-struct-instance gx#expander-mark::t _$args7048_)))
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
    (lambda _$args7045_
      (apply make-struct-instance gx#syntax-error::t _$args7045_)))
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
    (lambda (_where7040_ _message7041_ _stx7042_ . _details7043_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message7041_
              (cons _stx7042_ _details7043_)
              _where7040_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda7025
      (lambda (_stx7027_ _expression?7028_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda7009 _stx7027_ _expression?7028_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx7033_)
          (let ((_expression?7035_ '#f))
            (gx#eval-syntax__opt-lambda7025 _stx7033_ _expression?7035_))))
      (define gx#eval-syntax
        (lambda _g7418_
          (let ((_g7417_ (length _g7418_)))
            (cond ((fx= _g7417_ 1) (apply gx#eval-syntax__0 _g7418_))
                  ((fx= _g7417_ 2)
                   (apply gx#eval-syntax__opt-lambda7025 _g7418_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g7418_))))))))
  (define gx#eval-syntax*
    (lambda (_stx7024_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx7024_))))
  (begin
    (define gx#core-expand__opt-lambda7009
      (lambda (_stx7011_ _expression?7012_)
        (if _expression?7012_
            (gx#core-expand-expression _stx7011_)
            (gx#core-expand-top _stx7011_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx7017_)
          (let ((_expression?7019_ '#f))
            (gx#core-expand__opt-lambda7009 _stx7017_ _expression?7019_))))
      (define gx#core-expand
        (lambda _g7420_
          (let ((_g7419_ (length _g7420_)))
            (cond ((fx= _g7419_ 1) (apply gx#core-expand__0 _g7420_))
                  ((fx= _g7419_ 2)
                   (apply gx#core-expand__opt-lambda7009 _g7420_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g7420_))))))))
  (define gx#core-expand-top
    (lambda (_stx6978_)
      (let* ((_stx6980_ (gx#core-expand*__0 _stx6978_))
             (_e69816988_ _stx6980_)
             (_E69836992_ (lambda () (gx#core-expand-expression _stx6980_)))
             (_E69827006_
              (lambda ()
                (if (gx#stx-pair? _e69816988_)
                    (let ((_e69846996_ (gx#syntax-e _e69816988_)))
                      (let ((_hd69856999_ (##car _e69846996_))
                            (_tl69867001_ (##cdr _e69846996_)))
                        (let ((_form7004_ _hd69856999_))
                          (if (gx#core-bound-identifier?__0 _form7004_)
                              _stx6980_
                              (_E69836992_)))))
                    (_E69836992_)))))
        (_E69827006_))))
  (define gx#core-expand-expression
    (lambda (_stx6900_)
      (letrec ((_sealed-expression?6902_
                (lambda (_hd6948_)
                  (if (gx#sealed-syntax? _hd6948_)
                      (let* ((_e69496956_ _hd6948_)
                             (_E69516960_ (lambda () '#f))
                             (_E69506974_
                              (lambda ()
                                (if (gx#stx-pair? _e69496956_)
                                    (let ((_e69526964_
                                           (gx#syntax-e _e69496956_)))
                                      (let ((_hd69536967_ (##car _e69526964_))
                                            (_tl69546969_ (##cdr _e69526964_)))
                                        (let ((_form6972_ _hd69536967_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4693
                                               _form6972_
                                               gx#expression-form-binding?)
                                              (_E69516960_)))))
                                    (_E69516960_)))))
                        (_E69506974_))
                      '#f)))
               (_illegal-expression6903_
                (lambda (_hd6946_ . _g7421_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx6900_
                   _hd6946_)))
               (_expand-e6904_
                (lambda (_form6941_ _hd6942_)
                  (let ((_bind6944_
                         (if (##structure-instance-of?
                              _form6941_
                              'gx#binding::t)
                             _form6941_
                             (gx#resolve-identifier__0 _form6941_))))
                    (if (gx#core-expander-binding? _bind6944_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind6944_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd6942_
                          (gx#stx-source _stx6900_)))
                        (if (##structure-direct-instance-of?
                             _bind6944_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind6944_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd6942_
                               (gx#stx-source _stx6900_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx6900_
                             _form6941_)))))))
        (let ((_hd6906_ (gx#core-expand-head _stx6900_)))
          (if (_sealed-expression?6902_ _hd6906_)
              _hd6906_
              (if (gx#stx-pair? _hd6906_)
                  (let* ((_e69076914_ _hd6906_)
                         (_E69096918_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e69076914_)))
                         (_E69086937_
                          (lambda ()
                            (if (gx#stx-pair? _e69076914_)
                                (let ((_e69106922_ (gx#syntax-e _e69076914_)))
                                  (let ((_hd69116925_ (##car _e69106922_))
                                        (_tl69126927_ (##cdr _e69106922_)))
                                    (let ((_form6930_ _hd69116925_))
                                      (if '#t
                                          (let ((_bind6932_
                                                 (if (gx#identifier?
                                                      _form6930_)
                                                     (gx#resolve-identifier__0
                                                      _form6930_)
                                                     '#f)))
                                            (if (let ((_$e6934_
                                                       (not _bind6932_)))
                                                  (if _$e6934_
                                                      _$e6934_
                                                      (not (gx#core-expander-binding?
                                                            _bind6932_))))
                                                (_expand-e6904_
                                                 '%%app
                                                 (cons '%%app _hd6906_))
                                                (if (eq? (##structure-ref
                                                          _bind6932_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd6906_
                                                     _illegal-expression6903_)
                                                    (if (gx#expression-form-binding?
                                                         _bind6932_)
                                                        (_expand-e6904_
                                                         _bind6932_
                                                         _hd6906_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind6932_)
                                                            (gx#core-expand-expression
                                                             (_expand-e6904_
                                                              _bind6932_
                                                              _hd6906_))
                                                            (_illegal-expression6903_
                                                             _hd6906_))))))
                                          (_E69096918_)))))
                                (_E69096918_)))))
                    (_E69086937_))
                  (if (gx#core-bound-identifier?__0 _hd6906_)
                      (_illegal-expression6903_ _hd6906_)
                      (if (gx#identifier? _hd6906_)
                          (_expand-e6904_
                           '%%ref
                           (cons '%%ref (cons _hd6906_ '())))
                          (if (gx#stx-datum? _hd6906_)
                              (_expand-e6904_
                               '%#quote
                               (cons '%#quote (cons _hd6906_ '())))
                              (_illegal-expression6903_ _hd6906_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx6895_)
      (call-with-parameters
       (lambda ()
         (let ((_stx6898_ (gx#core-expand-expression _stx6895_)))
           (values _stx6898_ (gx#eval-syntax* _stx6898_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda6874
      (lambda (_stx6876_ _stop?6877_)
        (let _lp6879_ ((_stx6881_ _stx6876_))
          (if (_stop?6877_ _stx6881_)
              _stx6881_
              (let ((_rstx6883_ (gx#core-expand1 _stx6881_)))
                (if (eq? _stx6881_ _rstx6883_)
                    _stx6881_
                    (_lp6879_ _rstx6883_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx6888_)
          (let ((_stop?6890_ false))
            (gx#core-expand*__opt-lambda6874 _stx6888_ _stop?6890_))))
      (define gx#core-expand*
        (lambda _g7423_
          (let ((_g7422_ (length _g7423_)))
            (cond ((fx= _g7422_ 1) (apply gx#core-expand*__0 _g7423_))
                  ((fx= _g7422_ 2)
                   (apply gx#core-expand*__opt-lambda6874 _g7423_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g7423_))))))))
  (define gx#core-expand1
    (lambda (_stx6832_)
      (letrec ((_step6834_
                (lambda (_hd6871_)
                  (let ((_bind6873_ (gx#resolve-identifier__0 _hd6871_)))
                    (if (##structure-instance-of?
                         _bind6873_
                         'gx#runtime-binding::t)
                        _stx6832_
                        (if (##structure-direct-instance-of?
                             _bind6873_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind6873_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx6832_)
                            (if (not _bind6873_)
                                _stx6832_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx6832_))))))))
        (let* ((_e68356843_ _stx6832_)
               (_E68416847_ (lambda () _stx6832_))
               (_E68376853_
                (lambda ()
                  (let ((_hd6851_ _e68356843_))
                    (if (gx#identifier? _hd6851_)
                        (_step6834_ _hd6851_)
                        (_E68416847_)))))
               (_E68366867_
                (lambda ()
                  (if (gx#stx-pair? _e68356843_)
                      (let ((_e68386857_ (gx#syntax-e _e68356843_)))
                        (let ((_hd68396860_ (##car _e68386857_))
                              (_tl68406862_ (##cdr _e68386857_)))
                          (let ((_hd6865_ _hd68396860_))
                            (if (gx#identifier? _hd6865_)
                                (_step6834_ _hd6865_)
                                (_E68376853_)))))
                      (_E68376853_)))))
          (_E68366867_)))))
  (define gx#core-expand-head
    (lambda (_stx6798_)
      (letrec ((_stop?6800_
                (lambda (_stx6802_)
                  (let* ((_e68036810_ _stx6802_)
                         (_E68056814_ (lambda () '#f))
                         (_E68046828_
                          (lambda ()
                            (if (gx#stx-pair? _e68036810_)
                                (let ((_e68066818_ (gx#syntax-e _e68036810_)))
                                  (let ((_hd68076821_ (##car _e68066818_))
                                        (_tl68086823_ (##cdr _e68066818_)))
                                    (let ((_hd6826_ _hd68076821_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd6826_)
                                          (_E68056814_)))))
                                (_E68056814_)))))
                    (_E68046828_)))))
        (gx#core-expand*__opt-lambda6874 _stx6798_ _stop?6800_))))
  (begin
    (define gx#core-expand-block__opt-lambda6602
      (lambda (_stx6604_ _expand-special6605_ _begin-form6606_ _expand-e6607_)
        (letrec ((_expand-splice6609_
                  (lambda (_hd6772_ _body6773_ _rest6774_ _r6775_)
                    (if (gx#stx-list? _body6773_)
                        (_K6613_ (gx#stx-foldr cons _rest6774_ _body6773_)
                                 _r6775_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx6604_
                         _hd6772_))))
                 (_expand-cond-expand6610_
                  (lambda (_hd6768_ _rest6769_ _r6770_)
                    (_K6613_ (cons (gx#core-expand-cond-expand% _hd6768_)
                                   _rest6769_)
                             _r6770_)))
                 (_expand-include6611_
                  (lambda (_hd6717_ _rest6718_ _r6719_)
                    (let* ((_e67206730_ _hd6717_)
                           (_E67226734_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e67206730_)))
                           (_E67216764_
                            (lambda ()
                              (if (gx#stx-pair? _e67206730_)
                                  (let ((_e67236738_
                                         (gx#syntax-e _e67206730_)))
                                    (let ((_hd67246741_ (##car _e67236738_))
                                          (_tl67256743_ (##cdr _e67236738_)))
                                      (if (gx#stx-pair? _tl67256743_)
                                          (let ((_e67266746_
                                                 (gx#syntax-e _tl67256743_)))
                                            (let ((_hd67276749_
                                                   (##car _e67266746_))
                                                  (_tl67286751_
                                                   (##cdr _e67266746_)))
                                              (let ((_path6754_ _hd67276749_))
                                                (if (gx#stx-null? _tl67286751_)
                                                    (if (gx#stx-string?
                                                         _path6754_)
                                                        (let* ((_rpath6756_
                                                                (gx#core-resolve-path__opt-lambda4603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path6754_
                         (gx#stx-source _hd6717_)))
                       (_block6758_
                        (gx#core-expand-include%__opt-lambda6351
                         _hd6717_
                         _rpath6756_))
                       (_rbody6761_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__opt-lambda6602
                            _block6758_
                            _expand-special6605_
                            '#f
                            _expand-e6607_))
                         gx#current-expander-path
                         (cons _rpath6756_ (gx#current-expander-path)))))
                  (_K6613_ _rest6718_ (foldr1 cons _r6719_ _rbody6761_)))
                (_E67226734_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E67226734_)))))
                                          (_E67226734_))))
                                  (_E67226734_)))))
                      (_E67216764_))))
                 (_expand-expression6612_
                  (lambda (_hd6713_ _rest6714_ _r6715_)
                    (_K6613_ _rest6714_
                             (cons (_expand-e6607_ _hd6713_) _r6715_))))
                 (_K6613_ (lambda (_rest6643_ _r6644_)
                            (let* ((_e66456652_ _rest6643_)
                                   (_E66476656_
                                    (lambda ()
                                      (if _begin-form6606_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form6606_
                                            (reverse _r6644_))
                                           (gx#stx-source _stx6604_))
                                          _r6644_)))
                                   (_E66466709_
                                    (lambda ()
                                      (if (gx#stx-pair? _e66456652_)
                                          (let ((_e66486660_
                                                 (gx#syntax-e _e66456652_)))
                                            (let ((_hd66496663_
                                                   (##car _e66486660_))
                                                  (_tl66506665_
                                                   (##cdr _e66486660_)))
                                              (let* ((_hd6668_ _hd66496663_)
                                                     (_rest6670_ _tl66506665_))
                                                (if '#t
                                                    (let* ((_hd6672_
                                                            (gx#core-expand-head
                                                             _hd6668_))
                                                           (_e66736680_
                                                            _hd6672_)
                                                           (_E66756684_
                                                            (lambda ()
                                                              (_expand-expression6612_
                                                               _hd6672_
                                                               _rest6670_
                                                               _r6644_)))
                                                           (_E66746705_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e66736680_)
                          (let ((_e66766688_ (gx#syntax-e _e66736680_)))
                            (let ((_hd66776691_ (##car _e66766688_))
                                  (_tl66786693_ (##cdr _e66766688_)))
                              (let* ((_form6696_ _hd66776691_)
                                     (_body6698_ _tl66786693_))
                                (if '#t
                                    (let ((_bind6700_
                                           (if (gx#identifier? _form6696_)
                                               (gx#resolve-identifier__0
                                                _form6696_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind6700_)
                                          (let ((_$e6702_
                                                 (##structure-ref
                                                  _bind6700_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? _$e6702_ '%#begin)
                                                (_expand-splice6609_
                                                 _hd6672_
                                                 _body6698_
                                                 _rest6670_
                                                 _r6644_)
                                                (if (eq? _$e6702_
                                                         '%#cond-expand)
                                                    (_expand-cond-expand6610_
                                                     _hd6672_
                                                     _rest6670_
                                                     _r6644_)
                                                    (if (eq? _$e6702_
                                                             '%#include)
                                                        (_expand-include6611_
                                                         _hd6672_
                                                         _rest6670_
                                                         _r6644_)
                                                        (_expand-special6605_
                                                         _hd6672_
                                                         _K6613_
                                                         _rest6670_
                                                         _r6644_)))))
                                          (_expand-expression6612_
                                           _hd6672_
                                           _rest6670_
                                           _r6644_)))
                                    (_E66756684_)))))
                          (_E66756684_)))))
              (_E66746705_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E66476656_)))))
                                          (_E66476656_)))))
                              (_E66466709_)))))
          (let* ((_e66146621_ _stx6604_)
                 (_E66166625_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e66146621_)))
                 (_E66156639_
                  (lambda ()
                    (if (gx#stx-pair? _e66146621_)
                        (let ((_e66176629_ (gx#syntax-e _e66146621_)))
                          (let ((_hd66186632_ (##car _e66176629_))
                                (_tl66196634_ (##cdr _e66176629_)))
                            (let ((_body6637_ _tl66196634_))
                              (if (gx#stx-list? _body6637_)
                                  (_K6613_ _body6637_ '())
                                  (_E66166625_)))))
                        (_E66166625_)))))
            (_E66156639_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx6780_ _expand-special6781_)
          (let* ((_begin-form6783_ '%#begin)
                 (_expand-e6785_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda6602
             _stx6780_
             _expand-special6781_
             _begin-form6783_
             _expand-e6785_))))
      (define gx#core-expand-block__1
        (lambda (_stx6787_ _expand-special6788_ _begin-form6789_)
          (let ((_expand-e6791_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda6602
             _stx6787_
             _expand-special6788_
             _begin-form6789_
             _expand-e6791_))))
      (define gx#core-expand-block
        (lambda _g7425_
          (let ((_g7424_ (length _g7425_)))
            (cond ((fx= _g7424_ 2) (apply gx#core-expand-block__0 _g7425_))
                  ((fx= _g7424_ 3) (apply gx#core-expand-block__1 _g7425_))
                  ((fx= _g7424_ 4)
                   (apply gx#core-expand-block__opt-lambda6602 _g7425_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g7425_))))))))
  (define gx#core-expand-block*
    (lambda (_stx6552_ _expand-special6553_)
      (let* ((_g65546565_
              (gx#core-expand-block__1 _stx6552_ _expand-special6553_ '#f))
             (_E65586569_
              (lambda () (error '"No clause matching" _g65546565_)))
             (_try-match65576580_
              (lambda ()
                (let* ((_K65596575_
                        (lambda (_body6573_)
                          (gx#core-quote-syntax__1
                           (gx#core-cons '%#begin (reverse _body6573_))
                           (gx#stx-source _stx6552_))))
                       (_body6578_ _g65546565_))
                  (_K65596575_ _body6578_))))
             (_try-match65566596_
              (lambda ()
                (let ((_K65606586_ (lambda (_expr6584_) _expr6584_)))
                  (if (##pair? _g65546565_)
                      (let ((_hd65616589_ (##car _g65546565_))
                            (_tl65626591_ (##cdr _g65546565_)))
                        (let ((_expr6594_ _hd65616589_))
                          (if (##null? _tl65626591_)
                              (_K65606586_ _expr6594_)
                              (_try-match65576580_))))
                      (_try-match65576580_)))))
             (_K65636600_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; empty block"
                 _stx6552_))))
        (if (##null? _g65546565_) (_K65636600_) (_try-match65566596_)))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx6410_)
      (letrec ((_satisfied?6412_
                (lambda (_condition6510_)
                  (let* ((_e65116519_ _condition6510_)
                         (_E65146523_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e65116519_)))
                         (_E65136542_
                          (lambda ()
                            (if (gx#stx-pair? _e65116519_)
                                (let ((_e65156527_ (gx#syntax-e _e65116519_)))
                                  (let ((_hd65166530_ (##car _e65156527_))
                                        (_tl65176532_ (##cdr _e65156527_)))
                                    (let* ((_combinator6535_ _hd65166530_)
                                           (_body6537_ _tl65176532_))
                                      (if (gx#stx-list? _body6537_)
                                          (let ((_$e6539_
                                                 (gx#stx-e _combinator6535_)))
                                            (if (eq? _$e6539_ 'not)
                                                (not (gx#stx-ormap
                                                      _satisfied?6412_
                                                      _body6537_))
                                                (if (eq? _$e6539_ 'and)
                                                    (gx#stx-andmap
                                                     _satisfied?6412_
                                                     _body6537_)
                                                    (if (eq? _$e6539_ 'or)
                                                        (gx#stx-ormap
                                                         _satisfied?6412_
                                                         _body6537_)
                                                        (if (eq? _$e6539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'defined)
                    (gx#stx-andmap gx#core-resolve-identifier _body6537_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx6410_
                     _combinator6535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E65146523_)))))
                                (_E65146523_))))
                         (_E65126548_
                          (lambda ()
                            (let ((_id6546_ _e65116519_))
                              (if (gx#identifier? _id6546_)
                                  (gx#core-bound-identifier?__opt-lambda4693
                                   _id6546_
                                   gx#feature-binding?)
                                  (_E65136542_))))))
                    (_E65126548_))))
               (_loop6413_
                (lambda (_rest6443_)
                  (let* ((_e64446452_ _rest6443_)
                         (_E64506456_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e64446452_)))
                         (_E64466460_
                          (lambda ()
                            (if (gx#stx-null? _e64446452_)
                                (if '#t '() (_E64506456_))
                                (_E64506456_))))
                         (_E64456506_
                          (lambda ()
                            (if (gx#stx-pair? _e64446452_)
                                (let ((_e64476464_ (gx#syntax-e _e64446452_)))
                                  (let ((_hd64486467_ (##car _e64476464_))
                                        (_tl64496469_ (##cdr _e64476464_)))
                                    (let* ((_hd6472_ _hd64486467_)
                                           (_rest6474_ _tl64496469_))
                                      (if '#t
                                          (let* ((_e64756482_ _hd6472_)
                                                 (_E64776486_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e64756482_)))
                                                 (_E64766502_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e64756482_)
                                                        (let ((_e64786490_
                                                               (gx#syntax-e
                                                                _e64756482_)))
                                                          (let ((_hd64796493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e64786490_))
                        (_tl64806495_ (##cdr _e64786490_)))
                    (let* ((_condition6498_ _hd64796493_)
                           (_body6500_ _tl64806495_))
                      (if '#t
                          (if (gx#stx-eq? _condition6498_ 'else)
                              (if (gx#stx-null? _rest6474_)
                                  _body6500_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx6410_
                                   _hd6472_))
                              (if (_satisfied?6412_ _condition6498_)
                                  _body6500_
                                  (_loop6413_ _rest6474_)))
                          (_E64776486_)))))
                (_E64776486_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E64766502_))
                                          (_E64466460_)))))
                                (_E64466460_)))))
                    (_E64456506_)))))
        (let* ((_e64146421_ _stx6410_)
               (_E64166425_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e64146421_)))
               (_E64156439_
                (lambda ()
                  (if (gx#stx-pair? _e64146421_)
                      (let ((_e64176429_ (gx#syntax-e _e64146421_)))
                        (let ((_hd64186432_ (##car _e64176429_))
                              (_tl64196434_ (##cdr _e64176429_)))
                          (let ((_clauses6437_ _tl64196434_))
                            (if (gx#stx-list? _clauses6437_)
                                (gx#core-cons
                                 'begin
                                 (_loop6413_ _clauses6437_))
                                (_E64166425_)))))
                      (_E64166425_)))))
          (_E64156439_)))))
  (begin
    (define gx#core-expand-include%__opt-lambda6351
      (lambda (_stx6353_ _rpath6354_)
        (let* ((_e63556365_ _stx6353_)
               (_E63576369_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e63556365_)))
               (_E63566396_
                (lambda ()
                  (if (gx#stx-pair? _e63556365_)
                      (let ((_e63586373_ (gx#syntax-e _e63556365_)))
                        (let ((_hd63596376_ (##car _e63586373_))
                              (_tl63606378_ (##cdr _e63586373_)))
                          (if (gx#stx-pair? _tl63606378_)
                              (let ((_e63616381_ (gx#syntax-e _tl63606378_)))
                                (let ((_hd63626384_ (##car _e63616381_))
                                      (_tl63636386_ (##cdr _e63616381_)))
                                  (let ((_path6389_ _hd63626384_))
                                    (if (gx#stx-null? _tl63636386_)
                                        (if (gx#stx-string? _path6389_)
                                            (let ((_rpath6394_
                                                   (let ((_$e6391_
                                                          _rpath6354_))
                                                     (if _$e6391_
                                                         _$e6391_
                                                         (gx#core-resolve-path__opt-lambda4603
                                                          _path6389_
                                                          (gx#stx-source
                                                           _stx6353_))))))
                                              (if (member _rpath6394_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx6353_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath6394_))
                                                    (gx#stx-source
                                                     _stx6353_)))))
                                            (_E63576369_))
                                        (_E63576369_)))))
                              (_E63576369_))))
                      (_E63576369_)))))
          (_E63566396_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx6403_)
          (let ((_rpath6405_ '#f))
            (gx#core-expand-include%__opt-lambda6351 _stx6403_ _rpath6405_))))
      (define gx#core-expand-include%
        (lambda _g7427_
          (let ((_g7426_ (length _g7427_)))
            (cond ((fx= _g7426_ 1) (apply gx#core-expand-include%__0 _g7427_))
                  ((fx= _g7426_ 2)
                   (apply gx#core-expand-include%__opt-lambda6351 _g7427_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g7427_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda6320
      (lambda (_K6322_ _stx6323_ _method6324_)
        (if (procedure? _K6322_)
            (let ((_$e6326_ (gx#stx-source _stx6323_)))
              (if _$e6326_
                  ((lambda (_g63286330_)
                     (gx#stx-wrap-source (_K6322_ _stx6323_) _g63286330_))
                   _$e6326_)
                  (_K6322_ _stx6323_)))
            (let ((_$e6333_ (bound-method-ref _K6322_ _method6324_)))
              (if _$e6333_
                  ((lambda (_g63356337_)
                     (gx#core-apply-expander__opt-lambda6320
                      _g63356337_
                      _stx6323_
                      _method6324_))
                   _$e6333_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx6323_
                   _method6324_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K6343_ _stx6344_)
          (let ((_method6346_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda6320
             _K6343_
             _stx6344_
             _method6346_))))
      (define gx#core-apply-expander
        (lambda _g7429_
          (let ((_g7428_ (length _g7429_)))
            (cond ((fx= _g7428_ 2) (apply gx#core-apply-expander__0 _g7429_))
                  ((fx= _g7428_ 3)
                   (apply gx#core-apply-expander__opt-lambda6320 _g7429_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g7429_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self6318_ _stx6319_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx6319_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self6171_ _stx6172_)
      (let* ((_self61736179_ _self6171_)
             (_E61756183_
              (lambda () (error '"No clause matching" _self61736179_)))
             (_K61766188_
              (lambda (_K6186_)
                (gx#core-apply-expander__0 _K6186_ _stx6172_))))
        (if (##structure-instance-of?
             _self61736179_
             (##type-id gx#macro-expander::t))
            (let* ((_e61776191_ (##vector-ref _self61736179_ '1))
                   (_K6194_ _e61776191_))
              (_K61766188_ _K6194_))
            (_E61756183_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self6024_ _stx6025_)
      (if (gx#sealed-syntax? _stx6025_)
          _stx6025_
          (let* ((_self60266032_ _self6024_)
                 (_E60286036_
                  (lambda () (error '"No clause matching" _self60266032_)))
                 (_K60296041_
                  (lambda (_K6039_)
                    (gx#core-apply-expander__0 _K6039_ _stx6025_))))
            (if (##structure-instance-of?
                 _self60266032_
                 (##type-id gx#core-expander::t))
                (let* ((_e60306044_ (##vector-ref _self60266032_ '1))
                       (_K6047_ _e60306044_))
                  (_K60296041_ _K6047_))
                (_E60286036_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda5884
      (lambda (_self5886_ _stx5887_ _top?5888_)
        (if (_top?5888_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self5886_ _stx5887_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx5887_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self5893_ _stx5894_)
          (let ((_top?5896_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda5884
             _self5893_
             _stx5894_
             _top?5896_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g7431_
          (let ((_g7430_ (length _g7431_)))
            (cond ((fx= _g7430_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g7431_))
                  ((fx= _g7430_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda5884
                          _g7431_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g7431_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self5760_ _stx5761_)
      (gx#top-special-form::apply-macro-expander__opt-lambda5884
       _self5760_
       _stx5761_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self5585_ _stx5586_)
      (let* ((_self55875593_ _self5585_)
             (_E55895597_
              (lambda () (error '"No clause matching" _self55875593_)))
             (_K55905630_
              (lambda (_id5600_)
                (let* ((_e56015608_ _stx5586_)
                       (_E56035612_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e56015608_)))
                       (_E56025626_
                        (lambda ()
                          (if (gx#stx-pair? _e56015608_)
                              (let ((_e56045616_ (gx#syntax-e _e56015608_)))
                                (let ((_hd56055619_ (##car _e56045616_))
                                      (_tl56065621_ (##cdr _e56045616_)))
                                  (let ((_body5624_ _tl56065621_))
                                    (if '#t
                                        (gx#core-cons _id5600_ _body5624_)
                                        (_E56035612_)))))
                              (_E56035612_)))))
                  (_E56025626_)))))
        (if (##structure-instance-of?
             _self55875593_
             (##type-id gx#rename-macro-expander::t))
            (let* ((_e55915633_ (##vector-ref _self55875593_ '1))
                   (_id5636_ _e55915633_))
              (_K55905630_ _id5636_))
            (_E55895597_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda5409
      (lambda (_self5411_ _stx5412_ _method5413_)
        (let* ((_self54145422_ _self5411_)
               (_E54165426_
                (lambda () (error '"No clause matching" _self54145422_)))
               (_K54175433_
                (lambda (_phi5429_ _ctx5430_ _K5431_)
                  (gx#core-apply-user-macro
                   _K5431_
                   _stx5412_
                   _ctx5430_
                   _phi5429_
                   _method5413_))))
          (if (##structure-instance-of?
               _self54145422_
               (##type-id gx#user-expander::t))
              (let* ((_e54185436_ (##vector-ref _self54145422_ '1))
                     (_K5439_ _e54185436_)
                     (_e54195441_ (##vector-ref _self54145422_ '2))
                     (_ctx5444_ _e54195441_)
                     (_e54205446_ (##vector-ref _self54145422_ '3))
                     (_phi5449_ _e54205446_))
                (_K54175433_ _phi5449_ _ctx5444_ _K5439_))
              (_E54165426_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self5454_ _stx5455_)
          (let ((_method5457_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda5409
             _self5454_
             _stx5455_
             _method5457_))))
      (define gx#core-apply-user-expander
        (lambda _g7433_
          (let ((_g7432_ (length _g7433_)))
            (cond ((fx= _g7432_ 2)
                   (apply gx#core-apply-user-expander__0 _g7433_))
                  ((fx= _g7432_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda5409 _g7433_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g7433_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K5401_ _stx5402_ _ctx5403_ _phi5404_ _method5405_)
      (let ((_mark5407_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx5403_
              _phi5404_
              _stx5402_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda6320
             _K5401_
             (gx#stx-apply-mark _stx5402_ _mark5407_)
             _method5405_)
            _mark5407_))
         gx#current-expander-marks
         (cons _mark5407_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda5250
      (lambda (_stx5252_ _phi5253_ _ctx5254_)
        (let _lp5256_ ((_bind5258_
                        (gx#core-resolve-identifier__opt-lambda5180
                         _stx5252_
                         _phi5253_
                         _ctx5254_)))
          (if (##structure-direct-instance-of?
               _bind5258_
               'gx#import-binding::t)
              (_lp5256_
               (##direct-structure-ref _bind5258_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind5258_
                   'gx#alias-binding::t)
                  (_lp5256_
                   (gx#core-resolve-identifier__opt-lambda5180
                    (##direct-structure-ref
                     _bind5258_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi5253_
                    _ctx5254_))
                  _bind5258_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx5263_)
          (let* ((_phi5265_ (gx#current-expander-phi))
                 (_ctx5267_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda5250
             _stx5263_
             _phi5265_
             _ctx5267_))))
      (define gx#resolve-identifier__1
        (lambda (_stx5269_ _phi5270_)
          (let ((_ctx5272_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda5250
             _stx5269_
             _phi5270_
             _ctx5272_))))
      (define gx#resolve-identifier
        (lambda _g7435_
          (let ((_g7434_ (length _g7435_)))
            (cond ((fx= _g7434_ 1) (apply gx#resolve-identifier__0 _g7435_))
                  ((fx= _g7434_ 2) (apply gx#resolve-identifier__1 _g7435_))
                  ((fx= _g7434_ 3)
                   (apply gx#resolve-identifier__opt-lambda5250 _g7435_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g7435_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda5208
      (lambda (_stx5210_ _val5211_ _rebind?5212_ _phi5213_ _ctx5214_)
        (let ((_rebind?5216_
               (if (not _rebind?5212_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?5212_) _rebind?5212_ true))))
          (gx#core-bind!__opt-lambda4969
           (gx#core-identifier-key _stx5210_)
           _val5211_
           _rebind?5216_
           _phi5213_
           _ctx5214_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx5221_ _val5222_)
          (let* ((_rebind?5224_ '#f)
                 (_phi5226_ (gx#current-expander-phi))
                 (_ctx5228_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda5208
             _stx5221_
             _val5222_
             _rebind?5224_
             _phi5226_
             _ctx5228_))))
      (define gx#bind-identifier!__1
        (lambda (_stx5230_ _val5231_ _rebind?5232_)
          (let* ((_phi5234_ (gx#current-expander-phi))
                 (_ctx5236_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda5208
             _stx5230_
             _val5231_
             _rebind?5232_
             _phi5234_
             _ctx5236_))))
      (define gx#bind-identifier!__2
        (lambda (_stx5238_ _val5239_ _rebind?5240_ _phi5241_)
          (let ((_ctx5243_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda5208
             _stx5238_
             _val5239_
             _rebind?5240_
             _phi5241_
             _ctx5243_))))
      (define gx#bind-identifier!
        (lambda _g7437_
          (let ((_g7436_ (length _g7437_)))
            (cond ((fx= _g7436_ 2) (apply gx#bind-identifier!__0 _g7437_))
                  ((fx= _g7436_ 3) (apply gx#bind-identifier!__1 _g7437_))
                  ((fx= _g7436_ 4) (apply gx#bind-identifier!__2 _g7437_))
                  ((fx= _g7436_ 5)
                   (apply gx#bind-identifier!__opt-lambda5208 _g7437_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g7437_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda5180
      (lambda (_stx5182_ _phi5183_ _ctx5184_)
        (let _lp5186_ ((_e5188_ _stx5182_)
                       (_marks5189_ (gx#current-expander-marks)))
          (if (symbol? _e5188_)
              (gx#core-resolve-binding
               _e5188_
               _phi5183_
               _phi5183_
               _ctx5184_
               (reverse _marks5189_))
              (if (gx#identifier-quote? _e5188_)
                  (gx#core-resolve-binding
                   (##structure-ref _e5188_ '1 AST::t '#f)
                   _phi5183_
                   '0
                   (##direct-structure-ref _e5188_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e5188_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e5188_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e5188_ '1 AST::t '#f)
                       _phi5183_
                       _phi5183_
                       _ctx5184_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e5188_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks5189_))
                      (if (##structure-direct-instance-of?
                           _e5188_
                           'gx#syntax-wrap::t)
                          (_lp5186_
                           (##structure-ref _e5188_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e5188_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks5189_))
                          (if (##structure-instance-of? _e5188_ 'gerbil#AST::t)
                              (_lp5186_
                               (##structure-ref _e5188_ '1 AST::t '#f)
                               _marks5189_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx5182_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx5194_)
          (let* ((_phi5196_ (gx#current-expander-phi))
                 (_ctx5198_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda5180
             _stx5194_
             _phi5196_
             _ctx5198_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx5200_ _phi5201_)
          (let ((_ctx5203_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda5180
             _stx5200_
             _phi5201_
             _ctx5203_))))
      (define gx#core-resolve-identifier
        (lambda _g7439_
          (let ((_g7438_ (length _g7439_)))
            (cond ((fx= _g7438_ 1)
                   (apply gx#core-resolve-identifier__0 _g7439_))
                  ((fx= _g7438_ 2)
                   (apply gx#core-resolve-identifier__1 _g7439_))
                  ((fx= _g7438_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda5180 _g7439_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g7439_))))))))
  (define gx#core-resolve-binding
    (lambda (_id5095_ _phi5096_ _src-phi5097_ _ctx5098_ _marks5099_)
      (letrec ((_resolve5101_
                (lambda (_ctx5169_ _src-phi5170_ _key5171_)
                  (let _lp5173_ ((_ctx5175_
                                  (gx#core-context-shift _ctx5169_ _phi5096_))
                                 (_dphi5176_ (fx- _phi5096_ _src-phi5170_)))
                    (let ((_$e5178_
                           (gx#core-context-resolve _ctx5175_ _key5171_)))
                      (if _$e5178_
                          (values _$e5178_)
                          (if (fxzero? _dphi5176_)
                              '#f
                              (if (fxpositive? _dphi5176_)
                                  (_lp5173_
                                   (gx#core-context-shift _ctx5175_ '-1)
                                   (fx- _dphi5176_ '1))
                                  (if (fxnegative? _dphi5176_)
                                      (_lp5173_
                                       (gx#core-context-shift _ctx5175_ '1)
                                       (fx+ _dphi5176_ '1))
                                      '#!void)))))))))
        (let _lp5103_ ((_ctx5105_ _ctx5098_)
                       (_src-phi5106_ _src-phi5097_)
                       (_rest5107_ _marks5099_))
          (let* ((_rest51085116_ _rest5107_)
                 (_E51115120_
                  (lambda () (error '"No clause matching" _rest51085116_)))
                 (_else51105124_
                  (lambda () (_resolve5101_ _ctx5105_ _src-phi5106_ _id5095_)))
                 (_K51125157_
                  (lambda (_rest5127_ _hd5128_)
                    (let* ((_hd51295135_ _hd5128_)
                           (_E51315139_
                            (lambda ()
                              (error '"No clause matching" _hd51295135_)))
                           (_K51325149_
                            (lambda (_subst5142_)
                              (let ((_$e5146_
                                     (let ((_key5144_
                                            (if _subst5142_
                                                (table-ref
                                                 _subst5142_
                                                 _id5095_
                                                 '#f)
                                                '#f)))
                                       (if _key5144_
                                           (_resolve5101_
                                            _ctx5105_
                                            _src-phi5106_
                                            _key5144_)
                                           '#f))))
                                (if _$e5146_
                                    _$e5146_
                                    (_lp5103_
                                     (##structure-ref
                                      _hd5128_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd5128_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest5127_))))))
                      (if (##structure-instance-of?
                           _hd51295135_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e51335152_ (##vector-ref _hd51295135_ '1))
                                 (_subst5155_ _e51335152_))
                            (_K51325149_ _subst5155_))
                          (_E51315139_))))))
            (if (##pair? _rest51085116_)
                (let ((_hd51135160_ (##car _rest51085116_))
                      (_tl51145162_ (##cdr _rest51085116_)))
                  (let* ((_hd5165_ _hd51135160_) (_rest5167_ _tl51145162_))
                    (_K51125157_ _rest5167_ _hd5165_)))
                (_else51105124_)))))))
  (begin
    (define gx#core-bind!__opt-lambda4969
      (lambda (_key4971_ _val4972_ _rebind?4973_ _phi4974_ _ctx4975_)
        (letrec ((_update-binding4977_
                  (lambda (_xval5048_)
                    (if (let ((_$e5050_
                               (_rebind?4973_ _ctx4975_ _xval5048_ _val4972_)))
                          (if _$e5050_
                              _$e5050_
                              (let ((_$e5056_
                                     (if (##structure-direct-instance-of?
                                          _xval5048_
                                          'gx#import-binding::t)
                                         (let ((_$e5053_
                                                (##direct-structure-ref
                                                 _xval5048_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e5053_
                                               _$e5053_
                                               (if (##structure-instance-of?
                                                    _val4972_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val4972_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e5056_
                                    _$e5056_
                                    (if (##structure-instance-of?
                                         _xval5048_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val4972_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val4972_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval5048_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val4972_
                        (if (if (##structure-direct-instance-of?
                                 _val4972_
                                 'gx#import-binding::t)
                                (let ((_$e5059_
                                       (##direct-structure-ref
                                        _val4972_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e5059_
                                      _$e5059_
                                      (if (##structure-instance-of?
                                           _xval5048_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val4972_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval5048_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval5048_
                            (if (if (##structure-direct-instance-of?
                                     _val4972_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval5048_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key4971_
                                 (cons (##structure-ref
                                        _val4972_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val4972_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval5048_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval5048_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval5048_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval5048_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key4971_
                                 _val4972_
                                 _xval5048_))))))
                 (_gensubst4978_
                  (lambda (_subst5043_ _id5044_)
                    (let ((_eid5046_
                           (gensym (if (uninterned-symbol? _id5044_)
                                       '%
                                       _id5044_))))
                      (begin
                        (table-set! _subst5043_ _id5044_ _eid5046_)
                        _eid5046_))))
                 (_subst!4979_
                  (lambda (_key4981_)
                    (let* ((_key49824990_ _key4981_)
                           (_E49854994_
                            (lambda ()
                              (error '"No clause matching" _key49824990_)))
                           (_else49844998_ (lambda () _key4981_))
                           (_K49865031_
                            (lambda (_mark5001_ _id5002_)
                              (let* ((_mark50035009_ _mark5001_)
                                     (_E50055013_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark50035009_)))
                                     (_K50065023_
                                      (lambda (_subst5016_)
                                        (if (not _subst5016_)
                                            (let ((_subst5018_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark5001_
                                                 _subst5018_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst4978_
                                                 _subst5018_
                                                 _id5002_)))
                                            (let ((_$e5020_
                                                   (table-ref
                                                    _subst5016_
                                                    _id5002_
                                                    '#f)))
                                              (if _$e5020_
                                                  (values _$e5020_)
                                                  (_gensubst4978_
                                                   _subst5016_
                                                   _id5002_)))))))
                                (if (##structure-instance-of?
                                     _mark50035009_
                                     (##type-id gx#expander-mark::t))
                                    (let* ((_e50075026_
                                            (##vector-ref _mark50035009_ '1))
                                           (_subst5029_ _e50075026_))
                                      (_K50065023_ _subst5029_))
                                    (_E50055013_))))))
                      (if (##pair? _key49824990_)
                          (let ((_hd49875034_ (##car _key49824990_))
                                (_tl49885036_ (##cdr _key49824990_)))
                            (let* ((_id5039_ _hd49875034_)
                                   (_mark5041_ _tl49885036_))
                              (_K49865031_ _mark5041_ _id5039_)))
                          (_else49844998_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx4975_ _phi4974_)
           (_subst!4979_ _key4971_)
           _val4972_
           _update-binding4977_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key5065_ _val5066_)
          (let* ((_rebind?5068_ false)
                 (_phi5070_ (gx#current-expander-phi))
                 (_ctx5072_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4969
             _key5065_
             _val5066_
             _rebind?5068_
             _phi5070_
             _ctx5072_))))
      (define gx#core-bind!__1
        (lambda (_key5074_ _val5075_ _rebind?5076_)
          (let* ((_phi5078_ (gx#current-expander-phi))
                 (_ctx5080_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4969
             _key5074_
             _val5075_
             _rebind?5076_
             _phi5078_
             _ctx5080_))))
      (define gx#core-bind!__2
        (lambda (_key5082_ _val5083_ _rebind?5084_ _phi5085_)
          (let ((_ctx5087_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4969
             _key5082_
             _val5083_
             _rebind?5084_
             _phi5085_
             _ctx5087_))))
      (define gx#core-bind!
        (lambda _g7441_
          (let ((_g7440_ (length _g7441_)))
            (cond ((fx= _g7440_ 2) (apply gx#core-bind!__0 _g7441_))
                  ((fx= _g7440_ 3) (apply gx#core-bind!__1 _g7441_))
                  ((fx= _g7440_ 4) (apply gx#core-bind!__2 _g7441_))
                  ((fx= _g7440_ 5)
                   (apply gx#core-bind!__opt-lambda4969 _g7441_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g7441_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4901_)
      (if (symbol? _stx4901_)
          (let* ((_g49024910_ (gx#current-expander-marks))
                 (_E49054914_
                  (lambda () (error '"No clause matching" _g49024910_)))
                 (_else49044918_ (lambda () _stx4901_))
                 (_K49064923_ (lambda (_hd4921_) (cons _stx4901_ _hd4921_))))
            (if (##pair? _g49024910_)
                (let ((_hd49074926_ (##car _g49024910_))
                      (_tl49084928_ (##cdr _g49024910_)))
                  (let ((_hd4931_ _hd49074926_)) (_K49064923_ _hd4931_)))
                (_else49044918_)))
          (if (gx#identifier? _stx4901_)
              (let* ((_id4933_ (gx#syntax-local-unwrap _stx4901_))
                     (_eid4935_ (gx#stx-e _id4933_))
                     (_marks4937_ (gx#stx-identifier-marks _id4933_)))
                (let* ((_marks49394947_ _marks4937_)
                       (_E49424951_
                        (lambda ()
                          (error '"No clause matching" _marks49394947_)))
                       (_else49414955_ (lambda () _eid4935_))
                       (_K49434960_
                        (lambda (_hd4958_) (cons _eid4935_ _hd4958_))))
                  (if (##pair? _marks49394947_)
                      (let ((_hd49444963_ (##car _marks49394947_))
                            (_tl49454965_ (##cdr _marks49394947_)))
                        (let ((_hd4968_ _hd49444963_)) (_K49434960_ _hd4968_)))
                      (_else49414955_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4901_)))))
  (define gx#core-context-shift
    (lambda (_ctx4846_ _phi4847_)
      (letrec ((_make-phi4849_
                (lambda (_super4899_)
                  (let ((__obj7412 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__opt-lambda7374
                       __obj7412
                       (gensym 'phi)
                       _super4899_)
                      __obj7412))))
               (_make-phi/up4850_
                (lambda (_ctx4894_ _super4895_)
                  (let ((_ctx+14897_ (_make-phi4849_ _super4895_)))
                    (begin
                      (##structure-set!
                       _ctx4894_
                       _ctx+14897_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+14897_
                       _ctx4894_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+14897_))))
               (_make-phi/down4851_
                (lambda (_ctx4889_ _super4890_)
                  (let ((_ctx-14892_ (_make-phi4849_ _super4890_)))
                    (begin
                      (##structure-set!
                       _ctx-14892_
                       _ctx4889_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx4889_
                       _ctx-14892_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-14892_))))
               (_shift4852_
                (lambda (_ctx4873_
                         _delta4874_
                         _make-delta-context4875_
                         _phi4876_
                         _K4877_)
                  (let ((_$e4879_
                         (##structure-ref _ctx4873_ '3 gx#phi-context::t '#f)))
                    (if _$e4879_
                        ((lambda (_super4882_)
                           (let* ((_super4884_
                                   (_K4877_ _super4882_ _delta4874_))
                                  (_ctx+d4886_
                                   (_make-delta-context4875_
                                    _ctx4873_
                                    _super4884_)))
                             (_K4877_ _ctx+d4886_
                                      (fx- _phi4876_ _delta4874_))))
                         _$e4879_)
                        (error '"Bad context" _ctx4873_))))))
        (let _K4854_ ((_ctx4856_ _ctx4846_) (_phi4857_ _phi4847_))
          (if (fxzero? _phi4857_)
              _ctx4856_
              (if (##structure-instance-of? _ctx4856_ 'gx#context-phi::t)
                  (if (fxpositive? _phi4857_)
                      (let ((_$e4859_
                             (##structure-ref
                              _ctx4856_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e4859_
                            ((lambda (_g48614863_)
                               (_K4854_ _g48614863_ (fx- _phi4857_ '1)))
                             _$e4859_)
                            (_shift4852_
                             _ctx4856_
                             '1
                             _make-phi/up4850_
                             _phi4857_
                             _K4854_)))
                      (let ((_$e4866_
                             (##structure-ref
                              _ctx4856_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e4866_
                            ((lambda (_g48684870_)
                               (_K4854_ _g48684870_ (fx+ _phi4857_ '1)))
                             _$e4866_)
                            (_shift4852_
                             _ctx4856_
                             '-1
                             _make-phi/down4851_
                             _phi4857_
                             _K4854_))))
                  _ctx4856_))))))
  (define gx#core-context-get
    (lambda (_ctx4843_ _key4844_)
      (table-ref
       (##structure-ref _ctx4843_ '2 gx#expander-context::t '#f)
       _key4844_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4839_ _key4840_ _val4841_)
      (table-set!
       (##structure-ref _ctx4839_ '2 gx#expander-context::t '#f)
       _key4840_
       _val4841_)))
  (define gx#core-context-resolve
    (lambda (_ctx4826_ _key4827_)
      (let _lp4829_ ((_ctx4831_ _ctx4826_))
        (let ((_$e4833_ (gx#core-context-get _ctx4831_ _key4827_)))
          (if _$e4833_
              (values _$e4833_)
              (let ((_$e4836_
                     (if (##structure-instance-of?
                          _ctx4831_
                          'gx#context-phi::t)
                         (##structure-ref _ctx4831_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e4836_ (_lp4829_ _$e4836_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx4816_ _key4817_ _val4818_ _rebind4819_)
      (let ((_$e4821_ (gx#core-context-get _ctx4816_ _key4817_)))
        (if _$e4821_
            ((lambda (_xval4824_)
               (gx#core-context-put!
                _ctx4816_
                _key4817_
                (_rebind4819_ _xval4824_)))
             _$e4821_)
            (gx#core-context-put! _ctx4816_ _key4817_ _val4818_)))))
  (begin
    (define gx#core-context-top__opt-lambda4792
      (lambda (_ctx4794_ _stop?4795_)
        (let _lp4797_ ((_ctx4799_ _ctx4794_))
          (if (_stop?4795_ _ctx4799_)
              _ctx4799_
              (if (##structure-instance-of? _ctx4799_ 'gx#context-phi::t)
                  (_lp4797_
                   (##structure-ref _ctx4799_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx4805_ (gx#current-expander-context))
                 (_stop?4807_ gx#top-context?))
            (gx#core-context-top__opt-lambda4792 _ctx4805_ _stop?4807_))))
      (define gx#core-context-top__1
        (lambda (_ctx4809_)
          (let ((_stop?4811_ gx#top-context?))
            (gx#core-context-top__opt-lambda4792 _ctx4809_ _stop?4811_))))
      (define gx#core-context-top
        (lambda _g7443_
          (let ((_g7442_ (length _g7443_)))
            (cond ((fx= _g7442_ 0) (apply gx#core-context-top__0 _g7443_))
                  ((fx= _g7442_ 1) (apply gx#core-context-top__1 _g7443_))
                  ((fx= _g7442_ 2)
                   (apply gx#core-context-top__opt-lambda4792 _g7443_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g7443_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4777
      (lambda (_ctx4779_)
        (let _lp4781_ ((_ctx4783_ _ctx4779_))
          (if (##structure-instance-of? _ctx4783_ 'gx#context-phi::t)
              (_lp4781_ (##structure-ref _ctx4783_ '3 gx#phi-context::t '#f))
              _ctx4783_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4789_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4777 _ctx4789_))))
      (define gx#core-context-root
        (lambda _g7445_
          (let ((_g7444_ (length _g7445_)))
            (cond ((fx= _g7444_ 0) (apply gx#core-context-root__0 _g7445_))
                  ((fx= _g7444_ 1)
                   (apply gx#core-context-root__opt-lambda4777 _g7445_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g7445_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4761
      (lambda (_ctx4763_ . __47604764_)
        (if (##structure-instance-of? _ctx4763_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4763_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4763_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4771_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4761 _ctx4771_))))
      (define gx#core-context-rebind?
        (lambda _g7447_
          (let ((_g7446_ (length _g7447_)))
            (cond ((fx= _g7446_ 0) (apply gx#core-context-rebind?__0 _g7447_))
                  ((fx= _g7446_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4761 _g7447_))
                  ((fx>= _g7446_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4761 _g7447_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g7447_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4744
      (lambda (_ctx4746_)
        (let ((_$e4748_ (gx#core-context-top__1 _ctx4746_)))
          (if _$e4748_
              ((lambda (_ctx4751_)
                 (if (##structure-instance-of? _ctx4751_ 'gx#module-context::t)
                     (##structure-ref _ctx4751_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4748_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4757_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4744 _ctx4757_))))
      (define gx#core-context-namespace
        (lambda _g7449_
          (let ((_g7448_ (length _g7449_)))
            (cond ((fx= _g7448_ 0)
                   (apply gx#core-context-namespace__0 _g7449_))
                  ((fx= _g7448_ 1)
                   (apply gx#core-context-namespace__opt-lambda4744 _g7449_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g7449_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4730
      (lambda (_bind4732_ _is?4733_)
        (if (##structure-direct-instance-of? _bind4732_ 'gx#syntax-binding::t)
            (_is?4733_
             (##direct-structure-ref _bind4732_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4738_)
          (let ((_is?4740_ gx#expander?))
            (gx#expander-binding?__opt-lambda4730 _bind4738_ _is?4740_))))
      (define gx#expander-binding?
        (lambda _g7451_
          (let ((_g7450_ (length _g7451_)))
            (cond ((fx= _g7450_ 1) (apply gx#expander-binding?__0 _g7451_))
                  ((fx= _g7450_ 2)
                   (apply gx#expander-binding?__opt-lambda4730 _g7451_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g7451_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4729_)
      (gx#expander-binding?__opt-lambda4730 _bind4729_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4727_)
      (gx#expander-binding?__opt-lambda4730 _bind4727_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4721_)
      (letrec ((_direct-special-form?4723_
                (lambda (_obj4725_)
                  (##structure-direct-instance-of?
                   _obj4725_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__opt-lambda4730
         _bind4721_
         _direct-special-form?4723_))))
  (define gx#special-form-binding?
    (lambda (_bind4719_)
      (gx#expander-binding?__opt-lambda4730 _bind4719_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4710_)
      (letrec ((_feature?4712_
                (lambda (_e4714_)
                  (let ((_$e4716_
                         (##structure-instance-of?
                          _e4714_
                          'gx#feature-expander::t)))
                    (if _$e4716_
                        _$e4716_
                        (##structure-instance-of?
                         _e4714_
                         'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4730 _bind4710_ _feature?4712_))))
  (define gx#private-feature-binding?
    (lambda (_bind4708_)
      (gx#expander-binding?__opt-lambda4730
       _bind4708_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4693
      (lambda (_id4695_ _bound?4696_)
        (if (gx#identifier? _id4695_)
            (_bound?4696_ (gx#resolve-identifier__0 _id4695_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4701_)
          (let ((_bound?4703_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4693
             _id4701_
             _bound?4703_))))
      (define gx#core-bound-identifier?
        (lambda _g7453_
          (let ((_g7452_ (length _g7453_)))
            (cond ((fx= _g7452_ 1)
                   (apply gx#core-bound-identifier?__0 _g7453_))
                  ((fx= _g7452_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4693 _g7453_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g7453_))))))))
  (define gx#core-identifier=?
    (lambda (_x4685_ _y4686_)
      (letrec ((_y=?4688_
                (lambda (_xid4692_)
                  ((if (list? _y4686_) memq eq?) _xid4692_ _y4686_))))
        (let ((_bind4690_ (gx#resolve-identifier__0 _x4685_)))
          (if (##structure-instance-of? _bind4690_ 'gx#binding::t)
              (_y=?4688_ (##structure-ref _bind4690_ '1 gx#binding::t '#f))
              (_y=?4688_ (gx#stx-e _x4685_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4683_)
      (if (interned-symbol? _e4683_)
          (string-index (symbol->string _e4683_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda4639
      (lambda (_stx4641_ _src4642_ _ctx4643_ _marks4644_)
        (if (gx#sealed-syntax? _stx4641_)
            (gx#stx-unwrap__0 _stx4641_)
            (if (gx#identifier? _stx4641_)
                (let ((_id4646_ (gx#syntax-local-unwrap _stx4641_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4646_)
                   (let ((_$e4648_ (gx#stx-source _id4646_)))
                     (if _$e4648_ _$e4648_ _src4642_))
                   _ctx4643_
                   (##direct-structure-ref
                    _id4646_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4641_)
                    (gx#stx-e _stx4641_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4641_
                     (let ((_$e4651_ (gx#stx-source _stx4641_)))
                       (if _$e4651_ _$e4651_ _src4642_))
                     _ctx4643_
                     (reverse _marks4644_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4657_)
          (let* ((_src4659_ '#f)
                 (_ctx4661_ (gx#current-expander-context))
                 (_marks4663_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4639
             _stx4657_
             _src4659_
             _ctx4661_
             _marks4663_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4665_ _src4666_)
          (let* ((_ctx4668_ (gx#current-expander-context))
                 (_marks4670_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4639
             _stx4665_
             _src4666_
             _ctx4668_
             _marks4670_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4672_ _src4673_ _ctx4674_)
          (let ((_marks4676_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4639
             _stx4672_
             _src4673_
             _ctx4674_
             _marks4676_))))
      (define gx#core-quote-syntax
        (lambda _g7455_
          (let ((_g7454_ (length _g7455_)))
            (cond ((fx= _g7454_ 1) (apply gx#core-quote-syntax__0 _g7455_))
                  ((fx= _g7454_ 2) (apply gx#core-quote-syntax__1 _g7455_))
                  ((fx= _g7454_ 3) (apply gx#core-quote-syntax__2 _g7455_))
                  ((fx= _g7454_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4639 _g7455_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g7455_))))))))
  (define gx#core-cons
    (lambda (_hd4637_ _tl4638_)
      (cons (gx#core-quote-syntax__0 _hd4637_) _tl4638_)))
  (define gx#core-list
    (lambda (_hd4634_ . _rest4635_)
      (cons (gx#core-quote-syntax__0 _hd4634_) _rest4635_)))
  (define gx#core-cons*
    (lambda (_hd4631_ . _rest4632_)
      (apply cons* (gx#core-quote-syntax__0 _hd4631_) _rest4632_)))
  (begin
    (define gx#core-resolve-path__opt-lambda4603
      (lambda (_stx-path4605_ _rel4606_)
        (let ((_path4618_ (gx#stx-e _stx-path4605_))
              (_reldir4619_
               (let _lp4608_ ((_relsrc4610_
                               (let ((_$e4615_ (gx#stx-source _stx-path4605_)))
                                 (if _$e4615_ _$e4615_ _rel4606_))))
                 (if (##structure-instance-of? _relsrc4610_ 'gerbil#AST::t)
                     (_lp4608_
                      (let ((_$e4612_ (gx#stx-source _relsrc4610_)))
                        (if _$e4612_ _$e4612_ (gx#stx-e _relsrc4610_))))
                     (if (source-location-path? _relsrc4610_)
                         (path-directory (source-location-path _relsrc4610_))
                         (if (string? _relsrc4610_)
                             (path-directory _relsrc4610_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4618_ (path-normalize _reldir4619_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4624_)
          (let ((_rel4626_ '#f))
            (gx#core-resolve-path__opt-lambda4603 _stx-path4624_ _rel4626_))))
      (define gx#core-resolve-path
        (lambda _g7457_
          (let ((_g7456_ (length _g7457_)))
            (cond ((fx= _g7456_ 1) (apply gx#core-resolve-path__0 _g7457_))
                  ((fx= _g7456_ 2)
                   (apply gx#core-resolve-path__opt-lambda4603 _g7457_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g7457_))))))))
  (begin
    (define gx#core-deserialize-mark__opt-lambda4559
      (lambda (_repr4561_ _ctx4562_)
        (let* ((_repr45634570_ _repr4561_)
               (_E45654574_
                (lambda () (error '"No clause matching" _repr45634570_)))
               (_K45664582_
                (lambda (_subs4577_ _phi4578_)
                  (let ((_subst4580_
                         (if (not (null? _subs4577_))
                             (list->hash-table-eq _subs4577_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst4580_
                     _ctx4562_
                     _phi4578_
                     '#f)))))
          (if (##pair? _repr45634570_)
              (let ((_hd45674585_ (##car _repr45634570_))
                    (_tl45684587_ (##cdr _repr45634570_)))
                (let* ((_phi4590_ _hd45674585_) (_subs4592_ _tl45684587_))
                  (_K45664582_ _subs4592_ _phi4590_)))
              (_E45654574_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr4597_)
          (let ((_ctx4599_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__opt-lambda4559 _repr4597_ _ctx4599_))))
      (define gx#core-deserialize-mark
        (lambda _g7459_
          (let ((_g7458_ (length _g7459_)))
            (cond ((fx= _g7458_ 1) (apply gx#core-deserialize-mark__0 _g7459_))
                  ((fx= _g7458_ 2)
                   (apply gx#core-deserialize-mark__opt-lambda4559 _g7459_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g7459_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4558_) (gx#stx-rewrap _stx4558_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4556_)
      (gx#stx-unwrap__opt-lambda4342 _stx4556_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4524_)
      (let* ((_g45254533_ (gx#current-expander-marks))
             (_E45284537_
              (lambda () (error '"No clause matching" _g45254533_)))
             (_else45274541_ (lambda () _stx4524_))
             (_K45294546_
              (lambda (_hd4544_) (gx#stx-apply-mark _stx4524_ _hd4544_))))
        (if (##pair? _g45254533_)
            (let ((_hd45304549_ (##car _g45254533_))
                  (_tl45314551_ (##cdr _g45254533_)))
              (let ((_hd4554_ _hd45304549_)) (_K45294546_ _hd4554_)))
            (_else45274541_)))))
  (begin
    (define gx#syntax-local-e__opt-lambda4507
      (lambda (_stx4509_ _E4510_)
        (let ((_bind4512_ (gx#resolve-identifier__0 _stx4509_)))
          (if (##structure-direct-instance-of?
               _bind4512_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4512_ '4 gx#syntax-binding::t '#f)
              (_E4510_ _stx4509_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4517_)
          (let ((_E4519_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda4507 _stx4517_ _E4519_))))
      (define gx#syntax-local-e
        (lambda _g7461_
          (let ((_g7460_ (length _g7461_)))
            (cond ((fx= _g7460_ 1) (apply gx#syntax-local-e__0 _g7461_))
                  ((fx= _g7460_ 2)
                   (apply gx#syntax-local-e__opt-lambda4507 _g7461_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g7461_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda4491
      (lambda (_stx4493_ _E4494_)
        (let ((_e4496_ (gx#syntax-local-e__opt-lambda4507 _stx4493_ _E4494_)))
          (if (##structure-instance-of? _e4496_ 'gx#expander::t)
              (##structure-ref _e4496_ '1 gx#expander::t '#f)
              _e4496_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4501_)
          (let ((_E4503_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda4491 _stx4501_ _E4503_))))
      (define gx#syntax-local-value
        (lambda _g7463_
          (let ((_g7462_ (length _g7463_)))
            (cond ((fx= _g7462_ 1) (apply gx#syntax-local-value__0 _g7463_))
                  ((fx= _g7462_ 2)
                   (apply gx#syntax-local-value__opt-lambda4491 _g7463_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g7463_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4490_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4490_))))
