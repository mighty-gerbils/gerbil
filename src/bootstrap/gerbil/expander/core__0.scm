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
     ':init!
     '(id table)))
  (define gx#expander-context? (make-struct-predicate gx#expander-context::t))
  (define gx#make-expander-context
    (lambda _$args7820_
      (apply make-struct-instance gx#expander-context::t _$args7820_)))
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
     '#f
     '()))
  (define gx#root-context? (make-struct-predicate gx#root-context::t))
  (define gx#make-root-context
    (lambda _$args7817_
      (apply make-struct-instance gx#root-context::t _$args7817_)))
  (define gx#phi-context::t
    (make-struct-type
     'gx#context-phi::t
     gx#expander-context::t
     '3
     'phi-context
     '()
     '#f
     '(super up down)))
  (define gx#phi-context? (make-struct-predicate gx#phi-context::t))
  (define gx#make-phi-context
    (lambda _$args7814_
      (apply make-struct-instance gx#phi-context::t _$args7814_)))
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
     '#f
     '()))
  (define gx#top-context? (make-struct-predicate gx#top-context::t))
  (define gx#make-top-context
    (lambda _$args7811_
      (apply make-struct-instance gx#top-context::t _$args7811_)))
  (define gx#module-context::t
    (make-struct-type
     'gx#module-context::t
     gx#top-context::t
     '6
     'module-context
     '()
     '#f
     '(ns path import export e code)))
  (define gx#module-context? (make-struct-predicate gx#module-context::t))
  (define gx#make-module-context
    (lambda _$args7808_
      (apply make-struct-instance gx#module-context::t _$args7808_)))
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
     '#f
     '(path import e)))
  (define gx#prelude-context? (make-struct-predicate gx#prelude-context::t))
  (define gx#make-prelude-context
    (lambda _$args7805_
      (apply make-struct-instance gx#prelude-context::t _$args7805_)))
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
     '#f
     '()))
  (define gx#local-context? (make-struct-predicate gx#local-context::t))
  (define gx#make-local-context
    (lambda _$args7802_
      (apply make-struct-instance gx#local-context::t _$args7802_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self7786_ _id7787_ _super7788_)
        (if (##fx< '5 (##vector-length _self7786_))
            (begin
              (##vector-set! _self7786_ '1 _id7787_)
              (##vector-set! _self7786_ '2 (make-hash-table-eq))
              (##vector-set! _self7786_ '3 _super7788_)
              (##vector-set! _self7786_ '4 '#f)
              (##vector-set! _self7786_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7786_))))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self7793_ _id7794_)
          (let ((_super7796_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self7793_ _id7794_ _super7796_))))
      (define gx#phi-context:::init!
        (lambda _g7833_
          (let ((_g7832_ (length _g7833_)))
            (cond ((##fx= _g7832_ 2) (apply gx#phi-context:::init!__0 _g7833_))
                  ((##fx= _g7832_ 3) (apply gx#phi-context:::init!__% _g7833_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g7833_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self7650_ _super7651_)
        (if (##fx< '5 (##vector-length _self7650_))
            (begin
              (##vector-set! _self7650_ '1 (gensym 'L))
              (##vector-set! _self7650_ '2 (make-hash-table-eq))
              (##vector-set! _self7650_ '3 _super7651_)
              (##vector-set! _self7650_ '4 '#f)
              (##vector-set! _self7650_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7650_))))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self7656_)
          (let ((_super7658_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self7656_ _super7658_))))
      (define gx#local-context:::init!
        (lambda _g7835_
          (let ((_g7834_ (length _g7835_)))
            (cond ((##fx= _g7834_ 1)
                   (apply gx#local-context:::init!__0 _g7835_))
                  ((##fx= _g7834_ 2)
                   (apply gx#local-context:::init!__% _g7835_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g7835_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args7524_
      (apply make-struct-instance gx#binding::t _$args7524_)))
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
     '#f
     '()))
  (define gx#runtime-binding? (make-struct-predicate gx#runtime-binding::t))
  (define gx#make-runtime-binding
    (lambda _$args7521_
      (apply make-struct-instance gx#runtime-binding::t _$args7521_)))
  (define gx#local-binding::t
    (make-struct-type
     'gx#local-binding::t
     gx#runtime-binding::t
     '0
     'local-binding
     '()
     '#f
     '()))
  (define gx#local-binding? (make-struct-predicate gx#local-binding::t))
  (define gx#make-local-binding
    (lambda _$args7518_
      (apply make-struct-instance gx#local-binding::t _$args7518_)))
  (define gx#top-binding::t
    (make-struct-type
     'gx#top-binding::t
     gx#runtime-binding::t
     '0
     'top-binding
     '()
     '#f
     '()))
  (define gx#top-binding? (make-struct-predicate gx#top-binding::t))
  (define gx#make-top-binding
    (lambda _$args7515_
      (apply make-struct-instance gx#top-binding::t _$args7515_)))
  (define gx#module-binding::t
    (make-struct-type
     'gx#module-binding::t
     gx#top-binding::t
     '1
     'module-binding
     '()
     '#f
     '(context)))
  (define gx#module-binding? (make-struct-predicate gx#module-binding::t))
  (define gx#make-module-binding
    (lambda _$args7512_
      (apply make-struct-instance gx#module-binding::t _$args7512_)))
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
     '#f
     '()))
  (define gx#extern-binding? (make-struct-predicate gx#extern-binding::t))
  (define gx#make-extern-binding
    (lambda _$args7509_
      (apply make-struct-instance gx#extern-binding::t _$args7509_)))
  (define gx#syntax-binding::t
    (make-struct-type
     'gx#syntax-binding::t
     gx#binding::t
     '1
     'syntax-binding
     '((final: . #t))
     '#f
     '(e)))
  (define gx#syntax-binding? (make-struct-predicate gx#syntax-binding::t))
  (define gx#make-syntax-binding
    (lambda _$args7506_
      (apply make-struct-instance gx#syntax-binding::t _$args7506_)))
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
     '#f
     '(e context weak?)))
  (define gx#import-binding? (make-struct-predicate gx#import-binding::t))
  (define gx#make-import-binding
    (lambda _$args7503_
      (apply make-struct-instance gx#import-binding::t _$args7503_)))
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
     '#f
     '(e)))
  (define gx#alias-binding? (make-struct-predicate gx#alias-binding::t))
  (define gx#make-alias-binding
    (lambda _$args7500_
      (apply make-struct-instance gx#alias-binding::t _$args7500_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args7497_
      (apply make-struct-instance gx#expander::t _$args7497_)))
  (define gx#expander-e (make-struct-field-accessor gx#expander::t '0))
  (define gx#expander-e-set! (make-struct-field-mutator gx#expander::t '0))
  (define gx#core-expander::t
    (make-struct-type
     'gx#core-expander::t
     gx#expander::t
     '2
     'core-expander
     '()
     '#f
     '(id compile-top)))
  (define gx#core-expander? (make-struct-predicate gx#core-expander::t))
  (define gx#make-core-expander
    (lambda _$args7494_
      (apply make-struct-instance gx#core-expander::t _$args7494_)))
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
     '#f
     '()))
  (define gx#expression-form? (make-struct-predicate gx#expression-form::t))
  (define gx#make-expression-form
    (lambda _$args7491_
      (apply make-struct-instance gx#expression-form::t _$args7491_)))
  (define gx#special-form::t
    (make-struct-type
     'gx#special-form::t
     gx#core-expander::t
     '0
     'special-form
     '()
     '#f
     '()))
  (define gx#special-form? (make-struct-predicate gx#special-form::t))
  (define gx#make-special-form
    (lambda _$args7488_
      (apply make-struct-instance gx#special-form::t _$args7488_)))
  (define gx#definition-form::t
    (make-struct-type
     'gx#definition-form::t
     gx#special-form::t
     '0
     'definition-form
     '()
     '#f
     '()))
  (define gx#definition-form? (make-struct-predicate gx#definition-form::t))
  (define gx#make-definition-form
    (lambda _$args7485_
      (apply make-struct-instance gx#definition-form::t _$args7485_)))
  (define gx#top-special-form::t
    (make-struct-type
     'gx#top-special-form::t
     gx#special-form::t
     '0
     'top-special-form
     '()
     '#f
     '()))
  (define gx#top-special-form? (make-struct-predicate gx#top-special-form::t))
  (define gx#make-top-special-form
    (lambda _$args7482_
      (apply make-struct-instance gx#top-special-form::t _$args7482_)))
  (define gx#module-special-form::t
    (make-struct-type
     'gx#module-special-form::t
     gx#top-special-form::t
     '0
     'module-special-form
     '()
     '#f
     '()))
  (define gx#module-special-form?
    (make-struct-predicate gx#module-special-form::t))
  (define gx#make-module-special-form
    (lambda _$args7479_
      (apply make-struct-instance gx#module-special-form::t _$args7479_)))
  (define gx#feature-expander::t
    (make-struct-type
     'gx#feature-expander::t
     gx#expander::t
     '0
     'feature-expander
     '()
     '#f
     '()))
  (define gx#feature-expander? (make-struct-predicate gx#feature-expander::t))
  (define gx#make-feature-expander
    (lambda _$args7476_
      (apply make-struct-instance gx#feature-expander::t _$args7476_)))
  (define gx#private-feature-expander::t
    (make-struct-type
     'gx#private-feature-expander::t
     gx#feature-expander::t
     '0
     'private-feature-expander
     '()
     '#f
     '()))
  (define gx#private-feature-expander?
    (make-struct-predicate gx#private-feature-expander::t))
  (define gx#make-private-feature-expander
    (lambda _$args7473_
      (apply make-struct-instance gx#private-feature-expander::t _$args7473_)))
  (define gx#reserved-expander::t
    (make-struct-type
     'gx#reserved-expander::t
     gx#expander::t
     '0
     'reserved-expander
     '()
     '#f
     '()))
  (define gx#reserved-expander?
    (make-struct-predicate gx#reserved-expander::t))
  (define gx#make-reserved-expander
    (lambda _$args7470_
      (apply make-struct-instance gx#reserved-expander::t _$args7470_)))
  (define gx#macro-expander::t
    (make-struct-type
     'gx#core-macro::t
     gx#expander::t
     '0
     'macro-expander
     '()
     '#f
     '()))
  (define gx#macro-expander? (make-struct-predicate gx#macro-expander::t))
  (define gx#make-macro-expander
    (lambda _$args7467_
      (apply make-struct-instance gx#macro-expander::t _$args7467_)))
  (define gx#rename-macro-expander::t
    (make-struct-type
     'gx#rename-macro-expander::t
     gx#macro-expander::t
     '0
     'rename-macro-expander
     '()
     '#f
     '()))
  (define gx#rename-macro-expander?
    (make-struct-predicate gx#rename-macro-expander::t))
  (define gx#make-rename-macro-expander
    (lambda _$args7464_
      (apply make-struct-instance gx#rename-macro-expander::t _$args7464_)))
  (define gx#user-expander::t
    (make-struct-type
     'gx#macro-expander::t
     gx#macro-expander::t
     '2
     'user-expander
     '()
     '#f
     '(context phi)))
  (define gx#user-expander? (make-struct-predicate gx#user-expander::t))
  (define gx#make-user-expander
    (lambda _$args7461_
      (apply make-struct-instance gx#user-expander::t _$args7461_)))
  (define gx#user-expander-context
    (make-struct-field-accessor gx#user-expander::t '0))
  (define gx#user-expander-phi
    (make-struct-field-accessor gx#user-expander::t '1))
  (define gx#user-expander-context-set!
    (make-struct-field-mutator gx#user-expander::t '0))
  (define gx#user-expander-phi-set!
    (make-struct-field-mutator gx#user-expander::t '1))
  (define gx#expander-mark::t
    (make-struct-type
     'gx#expander-mark::t
     '#f
     '4
     'expander-mark
     '()
     '#f
     '(subst context phi trace)))
  (define gx#expander-mark? (make-struct-predicate gx#expander-mark::t))
  (define gx#make-expander-mark
    (lambda _$args7458_
      (apply make-struct-instance gx#expander-mark::t _$args7458_)))
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
    (make-struct-type
     'gx#syntax-error::t
     error::t
     '3
     'syntax-error
     '()
     '#f
     '(context marks phi)))
  (define gx#syntax-error? (make-struct-predicate gx#syntax-error::t))
  (define gx#make-syntax-error
    (lambda _$args7455_
      (apply make-struct-instance gx#syntax-error::t _$args7455_)))
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
    (lambda (_where7450_ _message7451_ _stx7452_ . _details7453_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message7451_
              (cons _stx7452_ _details7453_)
              _where7450_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx7437_ _expression?7438_)
        (gx#eval-syntax* (gx#core-expand__% _stx7437_ _expression?7438_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx7443_)
          (let ((_expression?7445_ '#f))
            (gx#eval-syntax__% _stx7443_ _expression?7445_))))
      (define gx#eval-syntax
        (lambda _g7837_
          (let ((_g7836_ (length _g7837_)))
            (cond ((##fx= _g7836_ 1) (apply gx#eval-syntax__0 _g7837_))
                  ((##fx= _g7836_ 2) (apply gx#eval-syntax__% _g7837_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g7837_))))))))
  (define gx#eval-syntax*
    (lambda (_stx7434_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx7434_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx7421_ _expression?7422_)
        (if _expression?7422_
            (gx#core-expand-expression _stx7421_)
            (gx#core-expand-top _stx7421_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx7427_)
          (let ((_expression?7429_ '#f))
            (gx#core-expand__% _stx7427_ _expression?7429_))))
      (define gx#core-expand
        (lambda _g7839_
          (let ((_g7838_ (length _g7839_)))
            (cond ((##fx= _g7838_ 1) (apply gx#core-expand__0 _g7839_))
                  ((##fx= _g7838_ 2) (apply gx#core-expand__% _g7839_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g7839_))))))))
  (define gx#core-expand-top
    (lambda (_stx7388_)
      (let* ((_stx7390_ (gx#core-expand*__0 _stx7388_))
             (_e73917398_ _stx7390_)
             (_E73937402_ (lambda () (gx#core-expand-expression _stx7390_)))
             (_E73927416_
              (lambda ()
                (if (gx#stx-pair? _e73917398_)
                    (let ((_e73947406_ (gx#syntax-e _e73917398_)))
                      (let ((_hd73957409_ (##car _e73947406_))
                            (_tl73967411_ (##cdr _e73947406_)))
                        (let ((_form7414_ _hd73957409_))
                          (if (gx#core-bound-identifier?__0 _form7414_)
                              _stx7390_
                              (_E73937402_)))))
                    (_E73937402_)))))
        (_E73927416_))))
  (define gx#core-expand-expression
    (lambda (_stx7310_)
      (letrec ((_sealed-expression?7312_
                (lambda (_hd7358_)
                  (if (gx#sealed-syntax? _hd7358_)
                      (let* ((_e73597366_ _hd7358_)
                             (_E73617370_ (lambda () '#f))
                             (_E73607384_
                              (lambda ()
                                (if (gx#stx-pair? _e73597366_)
                                    (let ((_e73627374_
                                           (gx#syntax-e _e73597366_)))
                                      (let ((_hd73637377_ (##car _e73627374_))
                                            (_tl73647379_ (##cdr _e73627374_)))
                                        (let ((_form7382_ _hd73637377_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form7382_
                                               gx#expression-form-binding?)
                                              (_E73617370_)))))
                                    (_E73617370_)))))
                        (_E73607384_))
                      '#f)))
               (_illegal-expression7313_
                (lambda (_hd7356_ . _g7840_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx7310_
                   _hd7356_)))
               (_expand-e7314_
                (lambda (_form7351_ _hd7352_)
                  (let ((_bind7354_
                         (if (##structure-instance-of?
                              _form7351_
                              'gx#binding::t)
                             _form7351_
                             (gx#resolve-identifier__0 _form7351_))))
                    (if (gx#core-expander-binding? _bind7354_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind7354_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd7352_
                          (gx#stx-source _stx7310_)))
                        (if (##structure-direct-instance-of?
                             _bind7354_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind7354_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd7352_
                               (gx#stx-source _stx7310_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx7310_
                             _form7351_)))))))
        (let ((_hd7316_ (gx#core-expand-head _stx7310_)))
          (if (_sealed-expression?7312_ _hd7316_)
              _hd7316_
              (if (gx#stx-pair? _hd7316_)
                  (let* ((_e73177324_ _hd7316_)
                         (_E73197328_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e73177324_)))
                         (_E73187347_
                          (lambda ()
                            (if (gx#stx-pair? _e73177324_)
                                (let ((_e73207332_ (gx#syntax-e _e73177324_)))
                                  (let ((_hd73217335_ (##car _e73207332_))
                                        (_tl73227337_ (##cdr _e73207332_)))
                                    (let ((_form7340_ _hd73217335_))
                                      (if '#t
                                          (let ((_bind7342_
                                                 (if (gx#identifier?
                                                      _form7340_)
                                                     (gx#resolve-identifier__0
                                                      _form7340_)
                                                     '#f)))
                                            (if (let ((_$e7344_
                                                       (not _bind7342_)))
                                                  (if _$e7344_
                                                      _$e7344_
                                                      (not (gx#core-expander-binding?
                                                            _bind7342_))))
                                                (_expand-e7314_
                                                 '%%app
                                                 (cons '%%app _hd7316_))
                                                (if (eq? (##structure-ref
                                                          _bind7342_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd7316_
                                                     _illegal-expression7313_)
                                                    (if (gx#expression-form-binding?
                                                         _bind7342_)
                                                        (_expand-e7314_
                                                         _bind7342_
                                                         _hd7316_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind7342_)
                                                            (gx#core-expand-expression
                                                             (_expand-e7314_
                                                              _bind7342_
                                                              _hd7316_))
                                                            (_illegal-expression7313_
                                                             _hd7316_))))))
                                          (_E73197328_)))))
                                (_E73197328_)))))
                    (_E73187347_))
                  (if (gx#core-bound-identifier?__0 _hd7316_)
                      (_illegal-expression7313_ _hd7316_)
                      (if (gx#identifier? _hd7316_)
                          (_expand-e7314_
                           '%%ref
                           (cons '%%ref (cons _hd7316_ '())))
                          (if (gx#stx-datum? _hd7316_)
                              (_expand-e7314_
                               '%#quote
                               (cons '%#quote (cons _hd7316_ '())))
                              (_illegal-expression7313_ _hd7316_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx7305_)
      (call-with-parameters
       (lambda ()
         (let ((_stx7308_ (gx#core-expand-expression _stx7305_)))
           (values _stx7308_ (gx#eval-syntax* _stx7308_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx7286_ _stop?7287_)
        (let _lp7289_ ((_stx7291_ _stx7286_))
          (if (_stop?7287_ _stx7291_)
              _stx7291_
              (let ((_rstx7293_ (gx#core-expand1 _stx7291_)))
                (if (eq? _stx7291_ _rstx7293_)
                    _stx7291_
                    (_lp7289_ _rstx7293_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx7298_)
          (let ((_stop?7300_ false))
            (gx#core-expand*__% _stx7298_ _stop?7300_))))
      (define gx#core-expand*
        (lambda _g7842_
          (let ((_g7841_ (length _g7842_)))
            (cond ((##fx= _g7841_ 1) (apply gx#core-expand*__0 _g7842_))
                  ((##fx= _g7841_ 2) (apply gx#core-expand*__% _g7842_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g7842_))))))))
  (define gx#core-expand1
    (lambda (_stx7242_)
      (letrec ((_step7244_
                (lambda (_hd7281_)
                  (let ((_bind7283_ (gx#resolve-identifier__0 _hd7281_)))
                    (if (##structure-instance-of?
                         _bind7283_
                         'gx#runtime-binding::t)
                        _stx7242_
                        (if (##structure-direct-instance-of?
                             _bind7283_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind7283_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx7242_)
                            (if (not _bind7283_)
                                _stx7242_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx7242_))))))))
        (let* ((_e72457253_ _stx7242_)
               (_E72517257_ (lambda () _stx7242_))
               (_E72477263_
                (lambda ()
                  (let ((_hd7261_ _e72457253_))
                    (if (gx#identifier? _hd7261_)
                        (_step7244_ _hd7261_)
                        (_E72517257_)))))
               (_E72467277_
                (lambda ()
                  (if (gx#stx-pair? _e72457253_)
                      (let ((_e72487267_ (gx#syntax-e _e72457253_)))
                        (let ((_hd72497270_ (##car _e72487267_))
                              (_tl72507272_ (##cdr _e72487267_)))
                          (let ((_hd7275_ _hd72497270_))
                            (if (gx#identifier? _hd7275_)
                                (_step7244_ _hd7275_)
                                (_E72477263_)))))
                      (_E72477263_)))))
          (_E72467277_)))))
  (define gx#core-expand-head
    (lambda (_stx7208_)
      (letrec ((_stop?7210_
                (lambda (_stx7212_)
                  (let* ((_e72137220_ _stx7212_)
                         (_E72157224_ (lambda () '#f))
                         (_E72147238_
                          (lambda ()
                            (if (gx#stx-pair? _e72137220_)
                                (let ((_e72167228_ (gx#syntax-e _e72137220_)))
                                  (let ((_hd72177231_ (##car _e72167228_))
                                        (_tl72187233_ (##cdr _e72167228_)))
                                    (let ((_hd7236_ _hd72177231_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd7236_)
                                          (_E72157224_)))))
                                (_E72157224_)))))
                    (_E72147238_)))))
        (gx#core-expand*__% _stx7208_ _stop?7210_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx7014_ _expand-special7015_ _begin-form7016_ _expand-e7017_)
        (letrec ((_expand-splice7019_
                  (lambda (_hd7182_ _body7183_ _rest7184_ _r7185_)
                    (if (gx#stx-list? _body7183_)
                        (_K7023_ (gx#stx-foldr cons _rest7184_ _body7183_)
                                 _r7185_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx7014_
                         _hd7182_))))
                 (_expand-cond-expand7020_
                  (lambda (_hd7178_ _rest7179_ _r7180_)
                    (_K7023_ (cons (gx#core-expand-cond-expand% _hd7178_)
                                   _rest7179_)
                             _r7180_)))
                 (_expand-include7021_
                  (lambda (_hd7127_ _rest7128_ _r7129_)
                    (let* ((_e71307140_ _hd7127_)
                           (_E71327144_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e71307140_)))
                           (_E71317174_
                            (lambda ()
                              (if (gx#stx-pair? _e71307140_)
                                  (let ((_e71337148_
                                         (gx#syntax-e _e71307140_)))
                                    (let ((_hd71347151_ (##car _e71337148_))
                                          (_tl71357153_ (##cdr _e71337148_)))
                                      (if (gx#stx-pair? _tl71357153_)
                                          (let ((_e71367156_
                                                 (gx#syntax-e _tl71357153_)))
                                            (let ((_hd71377159_
                                                   (##car _e71367156_))
                                                  (_tl71387161_
                                                   (##cdr _e71367156_)))
                                              (let ((_path7164_ _hd71377159_))
                                                (if (gx#stx-null? _tl71387161_)
                                                    (if (gx#stx-string?
                                                         _path7164_)
                                                        (let* ((_rpath7166_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path7164_
                         (gx#stx-source _hd7127_)))
                       (_block7168_
                        (gx#core-expand-include%__% _hd7127_ _rpath7166_))
                       (_rbody7171_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block7168_
                            _expand-special7015_
                            '#f
                            _expand-e7017_))
                         gx#current-expander-path
                         (cons _rpath7166_ (gx#current-expander-path)))))
                  (_K7023_ _rest7128_ (foldr1 cons _r7129_ _rbody7171_)))
                (_E71327144_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E71327144_)))))
                                          (_E71327144_))))
                                  (_E71327144_)))))
                      (_E71317174_))))
                 (_expand-expression7022_
                  (lambda (_hd7123_ _rest7124_ _r7125_)
                    (_K7023_ _rest7124_
                             (cons (_expand-e7017_ _hd7123_) _r7125_))))
                 (_K7023_ (lambda (_rest7053_ _r7054_)
                            (let* ((_e70557062_ _rest7053_)
                                   (_E70577066_
                                    (lambda ()
                                      (if _begin-form7016_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form7016_
                                            (reverse _r7054_))
                                           (gx#stx-source _stx7014_))
                                          _r7054_)))
                                   (_E70567119_
                                    (lambda ()
                                      (if (gx#stx-pair? _e70557062_)
                                          (let ((_e70587070_
                                                 (gx#syntax-e _e70557062_)))
                                            (let ((_hd70597073_
                                                   (##car _e70587070_))
                                                  (_tl70607075_
                                                   (##cdr _e70587070_)))
                                              (let* ((_hd7078_ _hd70597073_)
                                                     (_rest7080_ _tl70607075_))
                                                (if '#t
                                                    (let* ((_hd7082_
                                                            (gx#core-expand-head
                                                             _hd7078_))
                                                           (_e70837090_
                                                            _hd7082_)
                                                           (_E70857094_
                                                            (lambda ()
                                                              (_expand-expression7022_
                                                               _hd7082_
                                                               _rest7080_
                                                               _r7054_)))
                                                           (_E70847115_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e70837090_)
                          (let ((_e70867098_ (gx#syntax-e _e70837090_)))
                            (let ((_hd70877101_ (##car _e70867098_))
                                  (_tl70887103_ (##cdr _e70867098_)))
                              (let* ((_form7106_ _hd70877101_)
                                     (_body7108_ _tl70887103_))
                                (if '#t
                                    (let ((_bind7110_
                                           (if (gx#identifier? _form7106_)
                                               (gx#resolve-identifier__0
                                                _form7106_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind7110_)
                                          (let ((_$e7112_
                                                 (##structure-ref
                                                  _bind7110_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e7112_)
                                                (_expand-splice7019_
                                                 _hd7082_
                                                 _body7108_
                                                 _rest7080_
                                                 _r7054_)
                                                (if (eq? '%#cond-expand
                                                         _$e7112_)
                                                    (_expand-cond-expand7020_
                                                     _hd7082_
                                                     _rest7080_
                                                     _r7054_)
                                                    (if (eq? '%#include
                                                             _$e7112_)
                                                        (_expand-include7021_
                                                         _hd7082_
                                                         _rest7080_
                                                         _r7054_)
                                                        (_expand-special7015_
                                                         _hd7082_
                                                         _K7023_
                                                         _rest7080_
                                                         _r7054_)))))
                                          (_expand-expression7022_
                                           _hd7082_
                                           _rest7080_
                                           _r7054_)))
                                    (_E70857094_)))))
                          (_E70857094_)))))
              (_E70847115_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E70577066_)))))
                                          (_E70577066_)))))
                              (_E70567119_)))))
          (let* ((_e70247031_ _stx7014_)
                 (_E70267035_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e70247031_)))
                 (_E70257049_
                  (lambda ()
                    (if (gx#stx-pair? _e70247031_)
                        (let ((_e70277039_ (gx#syntax-e _e70247031_)))
                          (let ((_hd70287042_ (##car _e70277039_))
                                (_tl70297044_ (##cdr _e70277039_)))
                            (let ((_body7047_ _tl70297044_))
                              (if (gx#stx-list? _body7047_)
                                  (_K7023_ _body7047_ '())
                                  (_E70267035_)))))
                        (_E70267035_)))))
            (_E70257049_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx7190_ _expand-special7191_)
          (let* ((_begin-form7193_ '%#begin)
                 (_expand-e7195_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7190_
             _expand-special7191_
             _begin-form7193_
             _expand-e7195_))))
      (define gx#core-expand-block__1
        (lambda (_stx7197_ _expand-special7198_ _begin-form7199_)
          (let ((_expand-e7201_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7197_
             _expand-special7198_
             _begin-form7199_
             _expand-e7201_))))
      (define gx#core-expand-block
        (lambda _g7844_
          (let ((_g7843_ (length _g7844_)))
            (cond ((##fx= _g7843_ 2) (apply gx#core-expand-block__0 _g7844_))
                  ((##fx= _g7843_ 3) (apply gx#core-expand-block__1 _g7844_))
                  ((##fx= _g7843_ 4) (apply gx#core-expand-block__% _g7844_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g7844_))))))))
  (define gx#core-expand-block*
    (lambda (_stx6962_ _expand-special6963_)
      (let* ((_g69646975_
              (gx#core-expand-block__1 _stx6962_ _expand-special6963_ '#f))
             (_E69686979_
              (lambda () (error '"No clause matching" _g69646975_))))
        (let ((_K69737010_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx6962_)))
              (_K69706996_ (lambda (_expr6994_) _expr6994_))
              (_K69696985_
               (lambda (_body6983_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body6983_))
                  (gx#stx-source _stx6962_)))))
          (let ((_try-match69667006_
                 (lambda ()
                   (if (##pair? _g69646975_)
                       (let ((_tl69727001_ (##cdr _g69646975_))
                             (_hd69716999_ (##car _g69646975_)))
                         (if (##null? _tl69727001_)
                             (let ((_expr7004_ _hd69716999_))
                               (_K69706996_ _expr7004_))
                             (let ((_body6988_ _g69646975_))
                               (_K69696985_ _body6988_))))
                       (let ((_body6988_ _g69646975_))
                         (_K69696985_ _body6988_))))))
            (if (##null? _g69646975_) (_K69737010_) (_try-match69667006_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx6820_)
      (letrec ((_satisfied?6822_
                (lambda (_condition6920_)
                  (let* ((_e69216929_ _condition6920_)
                         (_E69246933_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e69216929_)))
                         (_E69236952_
                          (lambda ()
                            (if (gx#stx-pair? _e69216929_)
                                (let ((_e69256937_ (gx#syntax-e _e69216929_)))
                                  (let ((_hd69266940_ (##car _e69256937_))
                                        (_tl69276942_ (##cdr _e69256937_)))
                                    (let* ((_combinator6945_ _hd69266940_)
                                           (_body6947_ _tl69276942_))
                                      (if (gx#stx-list? _body6947_)
                                          (let ((_$e6949_
                                                 (gx#stx-e _combinator6945_)))
                                            (if (eq? 'not _$e6949_)
                                                (not (gx#stx-ormap
                                                      _satisfied?6822_
                                                      _body6947_))
                                                (if (eq? 'and _$e6949_)
                                                    (gx#stx-andmap
                                                     _satisfied?6822_
                                                     _body6947_)
                                                    (if (eq? 'or _$e6949_)
                                                        (gx#stx-ormap
                                                         _satisfied?6822_
                                                         _body6947_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e6949_)
                    (gx#stx-andmap gx#core-resolve-identifier _body6947_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx6820_
                     _combinator6945_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E69246933_)))))
                                (_E69246933_))))
                         (_E69226958_
                          (lambda ()
                            (let ((_id6956_ _e69216929_))
                              (if (gx#identifier? _id6956_)
                                  (gx#core-bound-identifier?__%
                                   _id6956_
                                   gx#feature-binding?)
                                  (_E69236952_))))))
                    (_E69226958_))))
               (_loop6823_
                (lambda (_rest6853_)
                  (let* ((_e68546862_ _rest6853_)
                         (_E68606866_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e68546862_)))
                         (_E68566870_
                          (lambda ()
                            (if (gx#stx-null? _e68546862_)
                                (if '#t '() (_E68606866_))
                                (_E68606866_))))
                         (_E68556916_
                          (lambda ()
                            (if (gx#stx-pair? _e68546862_)
                                (let ((_e68576874_ (gx#syntax-e _e68546862_)))
                                  (let ((_hd68586877_ (##car _e68576874_))
                                        (_tl68596879_ (##cdr _e68576874_)))
                                    (let* ((_hd6882_ _hd68586877_)
                                           (_rest6884_ _tl68596879_))
                                      (if '#t
                                          (let* ((_e68856892_ _hd6882_)
                                                 (_E68876896_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e68856892_)))
                                                 (_E68866912_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e68856892_)
                                                        (let ((_e68886900_
                                                               (gx#syntax-e
                                                                _e68856892_)))
                                                          (let ((_hd68896903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e68886900_))
                        (_tl68906905_ (##cdr _e68886900_)))
                    (let* ((_condition6908_ _hd68896903_)
                           (_body6910_ _tl68906905_))
                      (if '#t
                          (if (gx#stx-eq? _condition6908_ 'else)
                              (if (gx#stx-null? _rest6884_)
                                  _body6910_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx6820_
                                   _hd6882_))
                              (if (_satisfied?6822_ _condition6908_)
                                  _body6910_
                                  (_loop6823_ _rest6884_)))
                          (_E68876896_)))))
                (_E68876896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E68866912_))
                                          (_E68566870_)))))
                                (_E68566870_)))))
                    (_E68556916_)))))
        (let* ((_e68246831_ _stx6820_)
               (_E68266835_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e68246831_)))
               (_E68256849_
                (lambda ()
                  (if (gx#stx-pair? _e68246831_)
                      (let ((_e68276839_ (gx#syntax-e _e68246831_)))
                        (let ((_hd68286842_ (##car _e68276839_))
                              (_tl68296844_ (##cdr _e68276839_)))
                          (let ((_clauses6847_ _tl68296844_))
                            (if (gx#stx-list? _clauses6847_)
                                (gx#core-cons
                                 'begin
                                 (_loop6823_ _clauses6847_))
                                (_E68266835_)))))
                      (_E68266835_)))))
          (_E68256849_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx6763_ _rpath6764_)
        (let* ((_e67656775_ _stx6763_)
               (_E67676779_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e67656775_)))
               (_E67666806_
                (lambda ()
                  (if (gx#stx-pair? _e67656775_)
                      (let ((_e67686783_ (gx#syntax-e _e67656775_)))
                        (let ((_hd67696786_ (##car _e67686783_))
                              (_tl67706788_ (##cdr _e67686783_)))
                          (if (gx#stx-pair? _tl67706788_)
                              (let ((_e67716791_ (gx#syntax-e _tl67706788_)))
                                (let ((_hd67726794_ (##car _e67716791_))
                                      (_tl67736796_ (##cdr _e67716791_)))
                                  (let ((_path6799_ _hd67726794_))
                                    (if (gx#stx-null? _tl67736796_)
                                        (if (gx#stx-string? _path6799_)
                                            (let ((_rpath6804_
                                                   (let ((_$e6801_
                                                          _rpath6764_))
                                                     (if _$e6801_
                                                         _$e6801_
                                                         (gx#core-resolve-path__%
                                                          _path6799_
                                                          (gx#stx-source
                                                           _stx6763_))))))
                                              (if (member _rpath6804_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx6763_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath6804_))
                                                    (gx#stx-source
                                                     _stx6763_)))))
                                            (_E67676779_))
                                        (_E67676779_)))))
                              (_E67676779_))))
                      (_E67676779_)))))
          (_E67666806_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx6813_)
          (let ((_rpath6815_ '#f))
            (gx#core-expand-include%__% _stx6813_ _rpath6815_))))
      (define gx#core-expand-include%
        (lambda _g7846_
          (let ((_g7845_ (length _g7846_)))
            (cond ((##fx= _g7845_ 1)
                   (apply gx#core-expand-include%__0 _g7846_))
                  ((##fx= _g7845_ 2)
                   (apply gx#core-expand-include%__% _g7846_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g7846_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K6732_ _stx6733_ _method6734_)
        (if (procedure? _K6732_)
            (let ((_$e6736_ (gx#stx-source _stx6733_)))
              (if _$e6736_
                  ((lambda (_g67386740_)
                     (gx#stx-wrap-source (_K6732_ _stx6733_) _g67386740_))
                   _$e6736_)
                  (_K6732_ _stx6733_)))
            (let ((_$e6743_ (bound-method-ref _K6732_ _method6734_)))
              (if _$e6743_
                  ((lambda (_g67456747_)
                     (gx#core-apply-expander__%
                      _g67456747_
                      _stx6733_
                      _method6734_))
                   _$e6743_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx6733_
                   _method6734_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K6753_ _stx6754_)
          (let ((_method6756_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K6753_ _stx6754_ _method6756_))))
      (define gx#core-apply-expander
        (lambda _g7848_
          (let ((_g7847_ (length _g7848_)))
            (cond ((##fx= _g7847_ 2) (apply gx#core-apply-expander__0 _g7848_))
                  ((##fx= _g7847_ 3) (apply gx#core-apply-expander__% _g7848_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g7848_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self6728_ _stx6729_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx6729_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self6581_ _stx6582_)
      (let* ((_self65836589_ _self6581_)
             (_E65856593_
              (lambda () (error '"No clause matching" _self65836589_)))
             (_K65866598_
              (lambda (_K6596_)
                (gx#core-apply-expander__0 _K6596_ _stx6582_))))
        (if (##structure-instance-of? _self65836589_ 'gx#core-macro::t)
            (let* ((_e65876601_ (##vector-ref _self65836589_ '1))
                   (_K6604_ _e65876601_))
              (_K65866598_ _K6604_))
            (_E65856593_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self6434_ _stx6435_)
      (if (gx#sealed-syntax? _stx6435_)
          _stx6435_
          (let* ((_self64366442_ _self6434_)
                 (_E64386446_
                  (lambda () (error '"No clause matching" _self64366442_)))
                 (_K64396451_
                  (lambda (_K6449_)
                    (gx#core-apply-expander__0 _K6449_ _stx6435_))))
            (if (##structure-instance-of? _self64366442_ 'gx#core-expander::t)
                (let* ((_e64406454_ (##vector-ref _self64366442_ '1))
                       (_K6457_ _e64406454_))
                  (_K64396451_ _K6457_))
                (_E64386446_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self6296_ _stx6297_ _top?6298_)
        (if (_top?6298_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self6296_ _stx6297_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx6297_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self6303_ _stx6304_)
          (let ((_top?6306_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self6303_
             _stx6304_
             _top?6306_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g7850_
          (let ((_g7849_ (length _g7850_)))
            (cond ((##fx= _g7849_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g7850_))
                  ((##fx= _g7849_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g7850_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g7850_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self6170_ _stx6171_)
      (gx#top-special-form::apply-macro-expander__%
       _self6170_
       _stx6171_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self5995_ _stx5996_)
      (let* ((_self59976003_ _self5995_)
             (_E59996007_
              (lambda () (error '"No clause matching" _self59976003_)))
             (_K60006040_
              (lambda (_id6010_)
                (let* ((_e60116018_ _stx5996_)
                       (_E60136022_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e60116018_)))
                       (_E60126036_
                        (lambda ()
                          (if (gx#stx-pair? _e60116018_)
                              (let ((_e60146026_ (gx#syntax-e _e60116018_)))
                                (let ((_hd60156029_ (##car _e60146026_))
                                      (_tl60166031_ (##cdr _e60146026_)))
                                  (let ((_body6034_ _tl60166031_))
                                    (if '#t
                                        (gx#core-cons _id6010_ _body6034_)
                                        (_E60136022_)))))
                              (_E60136022_)))))
                  (_E60126036_)))))
        (if (##structure-instance-of?
             _self59976003_
             'gx#rename-macro-expander::t)
            (let* ((_e60016043_ (##vector-ref _self59976003_ '1))
                   (_id6046_ _e60016043_))
              (_K60006040_ _id6046_))
            (_E59996007_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self5821_ _stx5822_ _method5823_)
        (let* ((_self58245832_ _self5821_)
               (_E58265836_
                (lambda () (error '"No clause matching" _self58245832_)))
               (_K58275843_
                (lambda (_phi5839_ _ctx5840_ _K5841_)
                  (gx#core-apply-user-macro
                   _K5841_
                   _stx5822_
                   _ctx5840_
                   _phi5839_
                   _method5823_))))
          (if (##structure-instance-of? _self58245832_ 'gx#macro-expander::t)
              (let* ((_e58285846_ (##vector-ref _self58245832_ '1))
                     (_K5849_ _e58285846_)
                     (_e58295851_ (##vector-ref _self58245832_ '2))
                     (_ctx5854_ _e58295851_)
                     (_e58305856_ (##vector-ref _self58245832_ '3))
                     (_phi5859_ _e58305856_))
                (_K58275843_ _phi5859_ _ctx5854_ _K5849_))
              (_E58265836_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self5864_ _stx5865_)
          (let ((_method5867_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self5864_
             _stx5865_
             _method5867_))))
      (define gx#core-apply-user-expander
        (lambda _g7852_
          (let ((_g7851_ (length _g7852_)))
            (cond ((##fx= _g7851_ 2)
                   (apply gx#core-apply-user-expander__0 _g7852_))
                  ((##fx= _g7851_ 3)
                   (apply gx#core-apply-user-expander__% _g7852_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g7852_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K5811_ _stx5812_ _ctx5813_ _phi5814_ _method5815_)
      (let ((_mark5817_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx5813_
              _phi5814_
              _stx5812_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K5811_
             (gx#stx-apply-mark _stx5812_ _mark5817_)
             _method5815_)
            _mark5817_))
         gx#current-expander-marks
         (cons _mark5817_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx5662_ _phi5663_ _ctx5664_)
        (let _lp5666_ ((_bind5668_
                        (gx#core-resolve-identifier__%
                         _stx5662_
                         _phi5663_
                         _ctx5664_)))
          (if (##structure-direct-instance-of?
               _bind5668_
               'gx#import-binding::t)
              (_lp5666_
               (##direct-structure-ref _bind5668_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind5668_
                   'gx#alias-binding::t)
                  (_lp5666_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind5668_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi5663_
                    _ctx5664_))
                  _bind5668_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx5673_)
          (let* ((_phi5675_ (gx#current-expander-phi))
                 (_ctx5677_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5673_ _phi5675_ _ctx5677_))))
      (define gx#resolve-identifier__1
        (lambda (_stx5679_ _phi5680_)
          (let ((_ctx5682_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5679_ _phi5680_ _ctx5682_))))
      (define gx#resolve-identifier
        (lambda _g7854_
          (let ((_g7853_ (length _g7854_)))
            (cond ((##fx= _g7853_ 1) (apply gx#resolve-identifier__0 _g7854_))
                  ((##fx= _g7853_ 2) (apply gx#resolve-identifier__1 _g7854_))
                  ((##fx= _g7853_ 3) (apply gx#resolve-identifier__% _g7854_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g7854_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx5620_ _val5621_ _rebind?5622_ _phi5623_ _ctx5624_)
        (let ((_rebind?5626_
               (if (not _rebind?5622_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?5622_) _rebind?5622_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx5620_)
           _val5621_
           _rebind?5626_
           _phi5623_
           _ctx5624_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx5631_ _val5632_)
          (let* ((_rebind?5634_ '#f)
                 (_phi5636_ (gx#current-expander-phi))
                 (_ctx5638_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5631_
             _val5632_
             _rebind?5634_
             _phi5636_
             _ctx5638_))))
      (define gx#bind-identifier!__1
        (lambda (_stx5640_ _val5641_ _rebind?5642_)
          (let* ((_phi5644_ (gx#current-expander-phi))
                 (_ctx5646_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5640_
             _val5641_
             _rebind?5642_
             _phi5644_
             _ctx5646_))))
      (define gx#bind-identifier!__2
        (lambda (_stx5648_ _val5649_ _rebind?5650_ _phi5651_)
          (let ((_ctx5653_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5648_
             _val5649_
             _rebind?5650_
             _phi5651_
             _ctx5653_))))
      (define gx#bind-identifier!
        (lambda _g7856_
          (let ((_g7855_ (length _g7856_)))
            (cond ((##fx= _g7855_ 2) (apply gx#bind-identifier!__0 _g7856_))
                  ((##fx= _g7855_ 3) (apply gx#bind-identifier!__1 _g7856_))
                  ((##fx= _g7855_ 4) (apply gx#bind-identifier!__2 _g7856_))
                  ((##fx= _g7855_ 5) (apply gx#bind-identifier!__% _g7856_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g7856_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx5592_ _phi5593_ _ctx5594_)
        (let _lp5596_ ((_e5598_ _stx5592_)
                       (_marks5599_ (gx#current-expander-marks)))
          (if (symbol? _e5598_)
              (gx#core-resolve-binding
               _e5598_
               _phi5593_
               _phi5593_
               _ctx5594_
               (reverse _marks5599_))
              (if (gx#identifier-quote? _e5598_)
                  (gx#core-resolve-binding
                   (##structure-ref _e5598_ '1 AST::t '#f)
                   _phi5593_
                   '0
                   (##direct-structure-ref _e5598_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e5598_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e5598_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e5598_ '1 AST::t '#f)
                       _phi5593_
                       _phi5593_
                       _ctx5594_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e5598_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks5599_))
                      (if (##structure-direct-instance-of?
                           _e5598_
                           'gx#syntax-wrap::t)
                          (_lp5596_
                           (##structure-ref _e5598_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e5598_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks5599_))
                          (if (##structure-instance-of? _e5598_ 'gerbil#AST::t)
                              (_lp5596_
                               (##structure-ref _e5598_ '1 AST::t '#f)
                               _marks5599_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx5592_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx5604_)
          (let* ((_phi5606_ (gx#current-expander-phi))
                 (_ctx5608_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5604_ _phi5606_ _ctx5608_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx5610_ _phi5611_)
          (let ((_ctx5613_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5610_ _phi5611_ _ctx5613_))))
      (define gx#core-resolve-identifier
        (lambda _g7858_
          (let ((_g7857_ (length _g7858_)))
            (cond ((##fx= _g7857_ 1)
                   (apply gx#core-resolve-identifier__0 _g7858_))
                  ((##fx= _g7857_ 2)
                   (apply gx#core-resolve-identifier__1 _g7858_))
                  ((##fx= _g7857_ 3)
                   (apply gx#core-resolve-identifier__% _g7858_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g7858_))))))))
  (define gx#core-resolve-binding
    (lambda (_id5505_ _phi5506_ _src-phi5507_ _ctx5508_ _marks5509_)
      (letrec ((_resolve5511_
                (lambda (_ctx5579_ _src-phi5580_ _key5581_)
                  (let _lp5583_ ((_ctx5585_
                                  (gx#core-context-shift _ctx5579_ _phi5506_))
                                 (_dphi5586_ (fx- _phi5506_ _src-phi5580_)))
                    (let ((_$e5588_
                           (gx#core-context-resolve _ctx5585_ _key5581_)))
                      (if _$e5588_
                          (values _$e5588_)
                          (if (fxzero? _dphi5586_)
                              '#f
                              (if (fxpositive? _dphi5586_)
                                  (_lp5583_
                                   (gx#core-context-shift _ctx5585_ '-1)
                                   (fx- _dphi5586_ '1))
                                  (if (fxnegative? _dphi5586_)
                                      (_lp5583_
                                       (gx#core-context-shift _ctx5585_ '1)
                                       (fx+ _dphi5586_ '1))
                                      '#!void)))))))))
        (let _lp5513_ ((_ctx5515_ _ctx5508_)
                       (_src-phi5516_ _src-phi5507_)
                       (_rest5517_ _marks5509_))
          (let* ((_rest55185526_ _rest5517_)
                 (_else55205534_
                  (lambda () (_resolve5511_ _ctx5515_ _src-phi5516_ _id5505_)))
                 (_K55225567_
                  (lambda (_rest5537_ _hd5538_)
                    (let* ((_hd55395545_ _hd5538_)
                           (_E55415549_
                            (lambda ()
                              (error '"No clause matching" _hd55395545_)))
                           (_K55425559_
                            (lambda (_subst5552_)
                              (let ((_$e5556_
                                     (let ((_key5554_
                                            (if _subst5552_
                                                (table-ref
                                                 _subst5552_
                                                 _id5505_
                                                 '#f)
                                                '#f)))
                                       (if _key5554_
                                           (_resolve5511_
                                            _ctx5515_
                                            _src-phi5516_
                                            _key5554_)
                                           '#f))))
                                (if _$e5556_
                                    _$e5556_
                                    (_lp5513_
                                     (##structure-ref
                                      _hd5538_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd5538_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest5537_))))))
                      (if (##structure-instance-of?
                           _hd55395545_
                           'gx#expander-mark::t)
                          (let* ((_e55435562_ (##vector-ref _hd55395545_ '1))
                                 (_subst5565_ _e55435562_))
                            (_K55425559_ _subst5565_))
                          (_E55415549_))))))
            (if (##pair? _rest55185526_)
                (let ((_hd55235570_ (##car _rest55185526_))
                      (_tl55245572_ (##cdr _rest55185526_)))
                  (let* ((_hd5575_ _hd55235570_) (_rest5577_ _tl55245572_))
                    (_K55225567_ _rest5577_ _hd5575_)))
                (_else55205534_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key5381_ _val5382_ _rebind?5383_ _phi5384_ _ctx5385_)
        (letrec ((_update-binding5387_
                  (lambda (_xval5458_)
                    (if (let ((_$e5460_
                               (_rebind?5383_ _ctx5385_ _xval5458_ _val5382_)))
                          (if _$e5460_
                              _$e5460_
                              (let ((_$e5466_
                                     (if (##structure-direct-instance-of?
                                          _xval5458_
                                          'gx#import-binding::t)
                                         (let ((_$e5463_
                                                (##direct-structure-ref
                                                 _xval5458_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e5463_
                                               _$e5463_
                                               (if (##structure-instance-of?
                                                    _val5382_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val5382_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e5466_
                                    _$e5466_
                                    (if (##structure-instance-of?
                                         _xval5458_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val5382_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val5382_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval5458_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val5382_
                        (if (if (##structure-direct-instance-of?
                                 _val5382_
                                 'gx#import-binding::t)
                                (let ((_$e5469_
                                       (##direct-structure-ref
                                        _val5382_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e5469_
                                      _$e5469_
                                      (if (##structure-instance-of?
                                           _xval5458_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val5382_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval5458_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval5458_
                            (if (if (##structure-direct-instance-of?
                                     _val5382_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval5458_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key5381_
                                 (cons (##structure-ref
                                        _val5382_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val5382_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval5458_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval5458_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval5458_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval5458_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key5381_
                                 _val5382_
                                 _xval5458_))))))
                 (_gensubst5388_
                  (lambda (_subst5453_ _id5454_)
                    (let ((_eid5456_
                           (gensym (if (uninterned-symbol? _id5454_)
                                       '%
                                       _id5454_))))
                      (begin
                        (table-set! _subst5453_ _id5454_ _eid5456_)
                        _eid5456_))))
                 (_subst!5389_
                  (lambda (_key5391_)
                    (let* ((_key53925400_ _key5391_)
                           (_else53945408_ (lambda () _key5391_))
                           (_K53965441_
                            (lambda (_mark5411_ _id5412_)
                              (let* ((_mark54135419_ _mark5411_)
                                     (_E54155423_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark54135419_)))
                                     (_K54165433_
                                      (lambda (_subst5426_)
                                        (if (not _subst5426_)
                                            (let ((_subst5428_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark5411_
                                                 _subst5428_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst5388_
                                                 _subst5428_
                                                 _id5412_)))
                                            (let ((_$e5430_
                                                   (table-ref
                                                    _subst5426_
                                                    _id5412_
                                                    '#f)))
                                              (if _$e5430_
                                                  (values _$e5430_)
                                                  (_gensubst5388_
                                                   _subst5426_
                                                   _id5412_)))))))
                                (if (##structure-instance-of?
                                     _mark54135419_
                                     'gx#expander-mark::t)
                                    (let* ((_e54175436_
                                            (##vector-ref _mark54135419_ '1))
                                           (_subst5439_ _e54175436_))
                                      (_K54165433_ _subst5439_))
                                    (_E54155423_))))))
                      (if (##pair? _key53925400_)
                          (let ((_hd53975444_ (##car _key53925400_))
                                (_tl53985446_ (##cdr _key53925400_)))
                            (let* ((_id5449_ _hd53975444_)
                                   (_mark5451_ _tl53985446_))
                              (_K53965441_ _mark5451_ _id5449_)))
                          (_else53945408_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx5385_ _phi5384_)
           (_subst!5389_ _key5381_)
           _val5382_
           _update-binding5387_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key5475_ _val5476_)
          (let* ((_rebind?5478_ false)
                 (_phi5480_ (gx#current-expander-phi))
                 (_ctx5482_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5475_
             _val5476_
             _rebind?5478_
             _phi5480_
             _ctx5482_))))
      (define gx#core-bind!__1
        (lambda (_key5484_ _val5485_ _rebind?5486_)
          (let* ((_phi5488_ (gx#current-expander-phi))
                 (_ctx5490_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5484_
             _val5485_
             _rebind?5486_
             _phi5488_
             _ctx5490_))))
      (define gx#core-bind!__2
        (lambda (_key5492_ _val5493_ _rebind?5494_ _phi5495_)
          (let ((_ctx5497_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5492_
             _val5493_
             _rebind?5494_
             _phi5495_
             _ctx5497_))))
      (define gx#core-bind!
        (lambda _g7860_
          (let ((_g7859_ (length _g7860_)))
            (cond ((##fx= _g7859_ 2) (apply gx#core-bind!__0 _g7860_))
                  ((##fx= _g7859_ 3) (apply gx#core-bind!__1 _g7860_))
                  ((##fx= _g7859_ 4) (apply gx#core-bind!__2 _g7860_))
                  ((##fx= _g7859_ 5) (apply gx#core-bind!__% _g7860_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g7860_))))))))
  (define gx#core-identifier-key
    (lambda (_stx5315_)
      (if (symbol? _stx5315_)
          (let* ((_g53165324_ (gx#current-expander-marks))
                 (_else53185332_ (lambda () _stx5315_))
                 (_K53205337_ (lambda (_hd5335_) (cons _stx5315_ _hd5335_))))
            (if (##pair? _g53165324_)
                (let* ((_hd53215340_ (##car _g53165324_))
                       (_hd5343_ _hd53215340_))
                  (_K53205337_ _hd5343_))
                (_else53185332_)))
          (if (gx#identifier? _stx5315_)
              (let* ((_id5345_ (gx#syntax-local-unwrap _stx5315_))
                     (_eid5347_ (gx#stx-e _id5345_))
                     (_marks5349_ (gx#stx-identifier-marks _id5345_)))
                (let* ((_marks53515359_ _marks5349_)
                       (_else53535367_ (lambda () _eid5347_))
                       (_K53555372_
                        (lambda (_hd5370_) (cons _eid5347_ _hd5370_))))
                  (if (##pair? _marks53515359_)
                      (let* ((_hd53565375_ (##car _marks53515359_))
                             (_hd5378_ _hd53565375_))
                        (_K53555372_ _hd5378_))
                      (_else53535367_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx5315_)))))
  (define gx#core-context-shift
    (lambda (_ctx5260_ _phi5261_)
      (letrec ((_make-phi5263_
                (lambda (_super5313_)
                  (let ((__obj7831 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj7831
                       (gensym 'phi)
                       _super5313_)
                      __obj7831))))
               (_make-phi/up5264_
                (lambda (_ctx5308_ _super5309_)
                  (let ((_ctx+15311_ (_make-phi5263_ _super5309_)))
                    (begin
                      (##structure-set!
                       _ctx5308_
                       _ctx+15311_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+15311_
                       _ctx5308_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+15311_))))
               (_make-phi/down5265_
                (lambda (_ctx5303_ _super5304_)
                  (let ((_ctx-15306_ (_make-phi5263_ _super5304_)))
                    (begin
                      (##structure-set!
                       _ctx-15306_
                       _ctx5303_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx5303_
                       _ctx-15306_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-15306_))))
               (_shift5266_
                (lambda (_ctx5287_
                         _delta5288_
                         _make-delta-context5289_
                         _phi5290_
                         _K5291_)
                  (let ((_$e5293_
                         (##structure-ref _ctx5287_ '3 gx#phi-context::t '#f)))
                    (if _$e5293_
                        ((lambda (_super5296_)
                           (let* ((_super5298_
                                   (_K5291_ _super5296_ _delta5288_))
                                  (_ctx+d5300_
                                   (_make-delta-context5289_
                                    _ctx5287_
                                    _super5298_)))
                             (_K5291_ _ctx+d5300_
                                      (fx- _phi5290_ _delta5288_))))
                         _$e5293_)
                        (error '"Bad context" _ctx5287_))))))
        (let _K5268_ ((_ctx5270_ _ctx5260_) (_phi5271_ _phi5261_))
          (if (fxzero? _phi5271_)
              _ctx5270_
              (if (##structure-instance-of? _ctx5270_ 'gx#context-phi::t)
                  (if (fxpositive? _phi5271_)
                      (let ((_$e5273_
                             (##structure-ref
                              _ctx5270_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e5273_
                            ((lambda (_g52755277_)
                               (_K5268_ _g52755277_ (fx- _phi5271_ '1)))
                             _$e5273_)
                            (_shift5266_
                             _ctx5270_
                             '1
                             _make-phi/up5264_
                             _phi5271_
                             _K5268_)))
                      (let ((_$e5280_
                             (##structure-ref
                              _ctx5270_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e5280_
                            ((lambda (_g52825284_)
                               (_K5268_ _g52825284_ (fx+ _phi5271_ '1)))
                             _$e5280_)
                            (_shift5266_
                             _ctx5270_
                             '-1
                             _make-phi/down5265_
                             _phi5271_
                             _K5268_))))
                  _ctx5270_))))))
  (define gx#core-context-get
    (lambda (_ctx5257_ _key5258_)
      (table-ref
       (##structure-ref _ctx5257_ '2 gx#expander-context::t '#f)
       _key5258_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx5253_ _key5254_ _val5255_)
      (table-set!
       (##structure-ref _ctx5253_ '2 gx#expander-context::t '#f)
       _key5254_
       _val5255_)))
  (define gx#core-context-resolve
    (lambda (_ctx5240_ _key5241_)
      (let _lp5243_ ((_ctx5245_ _ctx5240_))
        (let ((_$e5247_ (gx#core-context-get _ctx5245_ _key5241_)))
          (if _$e5247_
              (values _$e5247_)
              (let ((_$e5250_
                     (if (##structure-instance-of?
                          _ctx5245_
                          'gx#context-phi::t)
                         (##structure-ref _ctx5245_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e5250_ (_lp5243_ _$e5250_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx5230_ _key5231_ _val5232_ _rebind5233_)
      (let ((_$e5235_ (gx#core-context-get _ctx5230_ _key5231_)))
        (if _$e5235_
            ((lambda (_xval5238_)
               (gx#core-context-put!
                _ctx5230_
                _key5231_
                (_rebind5233_ _xval5238_)))
             _$e5235_)
            (gx#core-context-put! _ctx5230_ _key5231_ _val5232_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx5208_ _stop?5209_)
        (let _lp5211_ ((_ctx5213_ _ctx5208_))
          (if (_stop?5209_ _ctx5213_)
              _ctx5213_
              (if (##structure-instance-of? _ctx5213_ 'gx#context-phi::t)
                  (_lp5211_
                   (##structure-ref _ctx5213_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx5219_ (gx#current-expander-context))
                 (_stop?5221_ gx#top-context?))
            (gx#core-context-top__% _ctx5219_ _stop?5221_))))
      (define gx#core-context-top__1
        (lambda (_ctx5223_)
          (let ((_stop?5225_ gx#top-context?))
            (gx#core-context-top__% _ctx5223_ _stop?5225_))))
      (define gx#core-context-top
        (lambda _g7862_
          (let ((_g7861_ (length _g7862_)))
            (cond ((##fx= _g7861_ 0) (apply gx#core-context-top__0 _g7862_))
                  ((##fx= _g7861_ 1) (apply gx#core-context-top__1 _g7862_))
                  ((##fx= _g7861_ 2) (apply gx#core-context-top__% _g7862_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g7862_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx5193_)
        (let _lp5195_ ((_ctx5197_ _ctx5193_))
          (if (##structure-instance-of? _ctx5197_ 'gx#context-phi::t)
              (_lp5195_ (##structure-ref _ctx5197_ '3 gx#phi-context::t '#f))
              _ctx5197_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx5203_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx5203_))))
      (define gx#core-context-root
        (lambda _g7864_
          (let ((_g7863_ (length _g7864_)))
            (cond ((##fx= _g7863_ 0) (apply gx#core-context-root__0 _g7864_))
                  ((##fx= _g7863_ 1) (apply gx#core-context-root__% _g7864_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g7864_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx5177_ . __51745178_)
        (if (##structure-instance-of? _ctx5177_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx5177_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx5177_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx5185_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx5185_))))
      (define gx#core-context-rebind?
        (lambda _g7866_
          (let ((_g7865_ (length _g7866_)))
            (cond ((##fx= _g7865_ 0)
                   (apply gx#core-context-rebind?__0 _g7866_))
                  ((##fx= _g7865_ 1)
                   (apply gx#core-context-rebind?__% _g7866_))
                  ((##fx>= _g7865_ 1)
                   (apply gx#core-context-rebind?__% _g7866_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g7866_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx5160_)
        (let ((_$e5162_ (gx#core-context-top__1 _ctx5160_)))
          (if _$e5162_
              ((lambda (_ctx5165_)
                 (if (##structure-instance-of? _ctx5165_ 'gx#module-context::t)
                     (##structure-ref _ctx5165_ '6 gx#module-context::t '#f)
                     '#f))
               _$e5162_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx5171_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx5171_))))
      (define gx#core-context-namespace
        (lambda _g7868_
          (let ((_g7867_ (length _g7868_)))
            (cond ((##fx= _g7867_ 0)
                   (apply gx#core-context-namespace__0 _g7868_))
                  ((##fx= _g7867_ 1)
                   (apply gx#core-context-namespace__% _g7868_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g7868_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind5146_ _is?5147_)
        (if (##structure-direct-instance-of? _bind5146_ 'gx#syntax-binding::t)
            (_is?5147_
             (##direct-structure-ref _bind5146_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind5152_)
          (let ((_is?5154_ gx#expander?))
            (gx#expander-binding?__% _bind5152_ _is?5154_))))
      (define gx#expander-binding?
        (lambda _g7870_
          (let ((_g7869_ (length _g7870_)))
            (cond ((##fx= _g7869_ 1) (apply gx#expander-binding?__0 _g7870_))
                  ((##fx= _g7869_ 2) (apply gx#expander-binding?__% _g7870_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g7870_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind5143_)
      (gx#expander-binding?__% _bind5143_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind5141_)
      (gx#expander-binding?__% _bind5141_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind5135_)
      (letrec ((_direct-special-form?5137_
                (lambda (_obj5139_)
                  (##structure-direct-instance-of?
                   _obj5139_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__% _bind5135_ _direct-special-form?5137_))))
  (define gx#special-form-binding?
    (lambda (_bind5133_)
      (gx#expander-binding?__% _bind5133_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind5124_)
      (letrec ((_feature?5126_
                (lambda (_e5128_)
                  (let ((_$e5130_
                         (##structure-instance-of?
                          _e5128_
                          'gx#feature-expander::t)))
                    (if _$e5130_
                        _$e5130_
                        (##structure-instance-of?
                         _e5128_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind5124_ _feature?5126_))))
  (define gx#private-feature-binding?
    (lambda (_bind5122_)
      (gx#expander-binding?__% _bind5122_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id5109_ _bound?5110_)
        (if (gx#identifier? _id5109_)
            (_bound?5110_ (gx#resolve-identifier__0 _id5109_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id5115_)
          (let ((_bound?5117_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id5115_ _bound?5117_))))
      (define gx#core-bound-identifier?
        (lambda _g7872_
          (let ((_g7871_ (length _g7872_)))
            (cond ((##fx= _g7871_ 1)
                   (apply gx#core-bound-identifier?__0 _g7872_))
                  ((##fx= _g7871_ 2)
                   (apply gx#core-bound-identifier?__% _g7872_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g7872_))))))))
  (define gx#core-identifier=?
    (lambda (_x5099_ _y5100_)
      (letrec ((_y=?5102_
                (lambda (_xid5106_)
                  ((if (list? _y5100_) memq eq?) _xid5106_ _y5100_))))
        (let ((_bind5104_ (gx#resolve-identifier__0 _x5099_)))
          (if (##structure-instance-of? _bind5104_ 'gx#binding::t)
              (_y=?5102_ (##structure-ref _bind5104_ '1 gx#binding::t '#f))
              (_y=?5102_ (gx#stx-e _x5099_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e5097_)
      (if (interned-symbol? _e5097_)
          (string-index (symbol->string _e5097_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx5055_ _src5056_ _ctx5057_ _marks5058_)
        (if (gx#sealed-syntax? _stx5055_)
            (gx#stx-unwrap__0 _stx5055_)
            (if (gx#identifier? _stx5055_)
                (let ((_id5060_ (gx#syntax-local-unwrap _stx5055_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id5060_)
                   (let ((_$e5062_ (gx#stx-source _id5060_)))
                     (if _$e5062_ _$e5062_ _src5056_))
                   _ctx5057_
                   (##direct-structure-ref
                    _id5060_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx5055_)
                    (gx#stx-e _stx5055_)
                    (##structure
                     gx#syntax-quote::t
                     _stx5055_
                     (let ((_$e5065_ (gx#stx-source _stx5055_)))
                       (if _$e5065_ _$e5065_ _src5056_))
                     _ctx5057_
                     (reverse _marks5058_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx5071_)
          (let* ((_src5073_ '#f)
                 (_ctx5075_ (gx#current-expander-context))
                 (_marks5077_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx5071_
             _src5073_
             _ctx5075_
             _marks5077_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx5079_ _src5080_)
          (let* ((_ctx5082_ (gx#current-expander-context))
                 (_marks5084_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx5079_
             _src5080_
             _ctx5082_
             _marks5084_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx5086_ _src5087_ _ctx5088_)
          (let ((_marks5090_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx5086_
             _src5087_
             _ctx5088_
             _marks5090_))))
      (define gx#core-quote-syntax
        (lambda _g7874_
          (let ((_g7873_ (length _g7874_)))
            (cond ((##fx= _g7873_ 1) (apply gx#core-quote-syntax__0 _g7874_))
                  ((##fx= _g7873_ 2) (apply gx#core-quote-syntax__1 _g7874_))
                  ((##fx= _g7873_ 3) (apply gx#core-quote-syntax__2 _g7874_))
                  ((##fx= _g7873_ 4) (apply gx#core-quote-syntax__% _g7874_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g7874_))))))))
  (define gx#core-cons
    (lambda (_hd5051_ _tl5052_)
      (cons (gx#core-quote-syntax__0 _hd5051_) _tl5052_)))
  (define gx#core-list
    (lambda (_hd5048_ . _rest5049_)
      (cons (gx#core-quote-syntax__0 _hd5048_) _rest5049_)))
  (define gx#core-cons*
    (lambda (_hd5045_ . _rest5046_)
      (apply cons* (gx#core-quote-syntax__0 _hd5045_) _rest5046_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path5019_ _rel5020_)
        (let ((_path5032_ (gx#stx-e _stx-path5019_))
              (_reldir5033_
               (let _lp5022_ ((_relsrc5024_
                               (let ((_$e5029_ (gx#stx-source _stx-path5019_)))
                                 (if _$e5029_ _$e5029_ _rel5020_))))
                 (if (##structure-instance-of? _relsrc5024_ 'gerbil#AST::t)
                     (_lp5022_
                      (let ((_$e5026_ (gx#stx-source _relsrc5024_)))
                        (if _$e5026_ _$e5026_ (gx#stx-e _relsrc5024_))))
                     (if (source-location-path? _relsrc5024_)
                         (path-directory (source-location-path _relsrc5024_))
                         (if (string? _relsrc5024_)
                             (path-directory _relsrc5024_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path5032_ (path-normalize _reldir5033_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path5038_)
          (let ((_rel5040_ '#f))
            (gx#core-resolve-path__% _stx-path5038_ _rel5040_))))
      (define gx#core-resolve-path
        (lambda _g7876_
          (let ((_g7875_ (length _g7876_)))
            (cond ((##fx= _g7875_ 1) (apply gx#core-resolve-path__0 _g7876_))
                  ((##fx= _g7875_ 2) (apply gx#core-resolve-path__% _g7876_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g7876_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr4975_ _ctx4976_)
        (let* ((_repr49774984_ _repr4975_)
               (_E49794988_
                (lambda () (error '"No clause matching" _repr49774984_)))
               (_K49804996_
                (lambda (_subs4991_ _phi4992_)
                  (let ((_subst4994_
                         (if (not (null? _subs4991_))
                             (list->hash-table-eq _subs4991_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst4994_
                     _ctx4976_
                     _phi4992_
                     '#f)))))
          (if (##pair? _repr49774984_)
              (let ((_hd49814999_ (##car _repr49774984_))
                    (_tl49825001_ (##cdr _repr49774984_)))
                (let* ((_phi5004_ _hd49814999_) (_subs5006_ _tl49825001_))
                  (_K49804996_ _subs5006_ _phi5004_)))
              (_E49794988_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr5011_)
          (let ((_ctx5013_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr5011_ _ctx5013_))))
      (define gx#core-deserialize-mark
        (lambda _g7878_
          (let ((_g7877_ (length _g7878_)))
            (cond ((##fx= _g7877_ 1)
                   (apply gx#core-deserialize-mark__0 _g7878_))
                  ((##fx= _g7877_ 2)
                   (apply gx#core-deserialize-mark__% _g7878_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g7878_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4972_) (gx#stx-rewrap _stx4972_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4970_)
      (gx#stx-unwrap__% _stx4970_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4940_)
      (let* ((_g49414949_ (gx#current-expander-marks))
             (_else49434957_ (lambda () _stx4940_))
             (_K49454962_
              (lambda (_hd4960_) (gx#stx-apply-mark _stx4940_ _hd4960_))))
        (if (##pair? _g49414949_)
            (let* ((_hd49464965_ (##car _g49414949_)) (_hd4968_ _hd49464965_))
              (_K49454962_ _hd4968_))
            (_else49434957_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx4925_ _E4926_)
        (let ((_bind4928_ (gx#resolve-identifier__0 _stx4925_)))
          (if (##structure-direct-instance-of?
               _bind4928_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4928_ '4 gx#syntax-binding::t '#f)
              (_E4926_ _stx4925_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4933_)
          (let ((_E4935_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx4933_ _E4935_))))
      (define gx#syntax-local-e
        (lambda _g7880_
          (let ((_g7879_ (length _g7880_)))
            (cond ((##fx= _g7879_ 1) (apply gx#syntax-local-e__0 _g7880_))
                  ((##fx= _g7879_ 2) (apply gx#syntax-local-e__% _g7880_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g7880_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx4909_ _E4910_)
        (let ((_e4912_ (gx#syntax-local-e__% _stx4909_ _E4910_)))
          (if (##structure-instance-of? _e4912_ 'gx#expander::t)
              (##structure-ref _e4912_ '1 gx#expander::t '#f)
              _e4912_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4917_)
          (let ((_E4919_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx4917_ _E4919_))))
      (define gx#syntax-local-value
        (lambda _g7882_
          (let ((_g7881_ (length _g7882_)))
            (cond ((##fx= _g7881_ 1) (apply gx#syntax-local-value__0 _g7882_))
                  ((##fx= _g7881_ 2) (apply gx#syntax-local-value__% _g7882_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g7882_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4906_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4906_))))
