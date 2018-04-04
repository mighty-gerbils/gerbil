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
    (lambda _$args9179_
      (apply make-struct-instance gx#expander-context::t _$args9179_)))
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
    (lambda _$args9176_
      (apply make-struct-instance gx#root-context::t _$args9176_)))
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
    (lambda _$args9173_
      (apply make-struct-instance gx#phi-context::t _$args9173_)))
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
    (lambda _$args9170_
      (apply make-struct-instance gx#top-context::t _$args9170_)))
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
    (lambda _$args9167_
      (apply make-struct-instance gx#module-context::t _$args9167_)))
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
    (lambda _$args9164_
      (apply make-struct-instance gx#prelude-context::t _$args9164_)))
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
    (lambda _$args9161_
      (apply make-struct-instance gx#local-context::t _$args9161_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self9145_ _id9146_ _super9147_)
        (struct-instance-init!
         _self9145_
         _id9146_
         (make-table 'test: eq?)
         _super9147_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self9152_ _id9153_)
          (let ((_super9155_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self9152_ _id9153_ _super9155_))))
      (define gx#phi-context:::init!
        (lambda _g9192_
          (let ((_g9191_ (length _g9192_)))
            (cond ((##fx= _g9191_ 2) (apply gx#phi-context:::init!__0 _g9192_))
                  ((##fx= _g9191_ 3) (apply gx#phi-context:::init!__% _g9192_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g9192_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self9009_ _super9010_)
        (struct-instance-init!
         _self9009_
         (gensym 'L)
         (make-table 'test: eq?)
         _super9010_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self9015_)
          (let ((_super9017_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self9015_ _super9017_))))
      (define gx#local-context:::init!
        (lambda _g9194_
          (let ((_g9193_ (length _g9194_)))
            (cond ((##fx= _g9193_ 1)
                   (apply gx#local-context:::init!__0 _g9194_))
                  ((##fx= _g9193_ 2)
                   (apply gx#local-context:::init!__% _g9194_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g9194_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args8883_
      (apply make-struct-instance gx#binding::t _$args8883_)))
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
    (lambda _$args8880_
      (apply make-struct-instance gx#runtime-binding::t _$args8880_)))
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
    (lambda _$args8877_
      (apply make-struct-instance gx#local-binding::t _$args8877_)))
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
    (lambda _$args8874_
      (apply make-struct-instance gx#top-binding::t _$args8874_)))
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
    (lambda _$args8871_
      (apply make-struct-instance gx#module-binding::t _$args8871_)))
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
    (lambda _$args8868_
      (apply make-struct-instance gx#extern-binding::t _$args8868_)))
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
    (lambda _$args8865_
      (apply make-struct-instance gx#syntax-binding::t _$args8865_)))
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
    (lambda _$args8862_
      (apply make-struct-instance gx#import-binding::t _$args8862_)))
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
    (lambda _$args8859_
      (apply make-struct-instance gx#alias-binding::t _$args8859_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args8856_
      (apply make-struct-instance gx#expander::t _$args8856_)))
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
    (lambda _$args8853_
      (apply make-struct-instance gx#core-expander::t _$args8853_)))
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
    (lambda _$args8850_
      (apply make-struct-instance gx#expression-form::t _$args8850_)))
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
    (lambda _$args8847_
      (apply make-struct-instance gx#special-form::t _$args8847_)))
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
    (lambda _$args8844_
      (apply make-struct-instance gx#definition-form::t _$args8844_)))
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
    (lambda _$args8841_
      (apply make-struct-instance gx#top-special-form::t _$args8841_)))
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
    (lambda _$args8838_
      (apply make-struct-instance gx#module-special-form::t _$args8838_)))
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
    (lambda _$args8835_
      (apply make-struct-instance gx#feature-expander::t _$args8835_)))
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
    (lambda _$args8832_
      (apply make-struct-instance gx#private-feature-expander::t _$args8832_)))
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
    (lambda _$args8829_
      (apply make-struct-instance gx#reserved-expander::t _$args8829_)))
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
    (lambda _$args8826_
      (apply make-struct-instance gx#macro-expander::t _$args8826_)))
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
    (lambda _$args8823_
      (apply make-struct-instance gx#rename-macro-expander::t _$args8823_)))
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
    (lambda _$args8820_
      (apply make-struct-instance gx#user-expander::t _$args8820_)))
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
    (lambda _$args8817_
      (apply make-struct-instance gx#expander-mark::t _$args8817_)))
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
    (lambda _$args8814_
      (apply make-struct-instance gx#syntax-error::t _$args8814_)))
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
    (lambda (_where8809_ _message8810_ _stx8811_ . _details8812_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message8810_
              (cons _stx8811_ _details8812_)
              _where8809_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx8796_ _expression?8797_)
        (gx#eval-syntax* (gx#core-expand__% _stx8796_ _expression?8797_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx8802_)
          (let ((_expression?8804_ '#f))
            (gx#eval-syntax__% _stx8802_ _expression?8804_))))
      (define gx#eval-syntax
        (lambda _g9196_
          (let ((_g9195_ (length _g9196_)))
            (cond ((##fx= _g9195_ 1) (apply gx#eval-syntax__0 _g9196_))
                  ((##fx= _g9195_ 2) (apply gx#eval-syntax__% _g9196_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g9196_))))))))
  (define gx#eval-syntax*
    (lambda (_stx8793_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx8793_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx8780_ _expression?8781_)
        (if _expression?8781_
            (gx#core-expand-expression _stx8780_)
            (gx#core-expand-top _stx8780_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx8786_)
          (let ((_expression?8788_ '#f))
            (gx#core-expand__% _stx8786_ _expression?8788_))))
      (define gx#core-expand
        (lambda _g9198_
          (let ((_g9197_ (length _g9198_)))
            (cond ((##fx= _g9197_ 1) (apply gx#core-expand__0 _g9198_))
                  ((##fx= _g9197_ 2) (apply gx#core-expand__% _g9198_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g9198_))))))))
  (define gx#core-expand-top
    (lambda (_stx8747_)
      (let* ((_stx8749_ (gx#core-expand*__0 _stx8747_))
             (_e87508757_ _stx8749_)
             (_E87528761_ (lambda () (gx#core-expand-expression _stx8749_)))
             (_E87518775_
              (lambda ()
                (if (gx#stx-pair? _e87508757_)
                    (let ((_e87538765_ (gx#syntax-e _e87508757_)))
                      (let ((_hd87548768_ (##car _e87538765_))
                            (_tl87558770_ (##cdr _e87538765_)))
                        (let ((_form8773_ _hd87548768_))
                          (if (gx#core-bound-identifier?__0 _form8773_)
                              _stx8749_
                              (_E87528761_)))))
                    (_E87528761_)))))
        (_E87518775_))))
  (define gx#core-expand-expression
    (lambda (_stx8669_)
      (letrec ((_sealed-expression?8671_
                (lambda (_hd8717_)
                  (if (gx#sealed-syntax? _hd8717_)
                      (let* ((_e87188725_ _hd8717_)
                             (_E87208729_ (lambda () '#f))
                             (_E87198743_
                              (lambda ()
                                (if (gx#stx-pair? _e87188725_)
                                    (let ((_e87218733_
                                           (gx#syntax-e _e87188725_)))
                                      (let ((_hd87228736_ (##car _e87218733_))
                                            (_tl87238738_ (##cdr _e87218733_)))
                                        (let ((_form8741_ _hd87228736_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form8741_
                                               gx#expression-form-binding?)
                                              (_E87208729_)))))
                                    (_E87208729_)))))
                        (_E87198743_))
                      '#f)))
               (_illegal-expression8672_
                (lambda (_hd8715_ . _g9199_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx8669_
                   _hd8715_)))
               (_expand-e8673_
                (lambda (_form8710_ _hd8711_)
                  (let ((_bind8713_
                         (if (##structure-instance-of?
                              _form8710_
                              'gx#binding::t)
                             _form8710_
                             (gx#resolve-identifier__0 _form8710_))))
                    (if (gx#core-expander-binding? _bind8713_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind8713_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd8711_
                          (gx#stx-source _stx8669_)))
                        (if (##structure-direct-instance-of?
                             _bind8713_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind8713_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd8711_
                               (gx#stx-source _stx8669_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx8669_
                             _form8710_)))))))
        (let ((_hd8675_ (gx#core-expand-head _stx8669_)))
          (if (_sealed-expression?8671_ _hd8675_)
              _hd8675_
              (if (gx#stx-pair? _hd8675_)
                  (let* ((_e86768683_ _hd8675_)
                         (_E86788687_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e86768683_)))
                         (_E86778706_
                          (lambda ()
                            (if (gx#stx-pair? _e86768683_)
                                (let ((_e86798691_ (gx#syntax-e _e86768683_)))
                                  (let ((_hd86808694_ (##car _e86798691_))
                                        (_tl86818696_ (##cdr _e86798691_)))
                                    (let ((_form8699_ _hd86808694_))
                                      (if '#t
                                          (let ((_bind8701_
                                                 (if (gx#identifier?
                                                      _form8699_)
                                                     (gx#resolve-identifier__0
                                                      _form8699_)
                                                     '#f)))
                                            (if (let ((_$e8703_
                                                       (not _bind8701_)))
                                                  (if _$e8703_
                                                      _$e8703_
                                                      (not (gx#core-expander-binding?
                                                            _bind8701_))))
                                                (_expand-e8673_
                                                 '%%app
                                                 (cons '%%app _hd8675_))
                                                (if (eq? (##structure-ref
                                                          _bind8701_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd8675_
                                                     _illegal-expression8672_)
                                                    (if (gx#expression-form-binding?
                                                         _bind8701_)
                                                        (_expand-e8673_
                                                         _bind8701_
                                                         _hd8675_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind8701_)
                                                            (gx#core-expand-expression
                                                             (_expand-e8673_
                                                              _bind8701_
                                                              _hd8675_))
                                                            (_illegal-expression8672_
                                                             _hd8675_))))))
                                          (_E86788687_)))))
                                (_E86788687_)))))
                    (_E86778706_))
                  (if (gx#core-bound-identifier?__0 _hd8675_)
                      (_illegal-expression8672_ _hd8675_)
                      (if (gx#identifier? _hd8675_)
                          (_expand-e8673_
                           '%%ref
                           (cons '%%ref (cons _hd8675_ '())))
                          (if (gx#stx-datum? _hd8675_)
                              (_expand-e8673_
                               '%#quote
                               (cons '%#quote (cons _hd8675_ '())))
                              (_illegal-expression8672_ _hd8675_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx8664_)
      (call-with-parameters
       (lambda ()
         (let ((_stx8667_ (gx#core-expand-expression _stx8664_)))
           (values _stx8667_ (gx#eval-syntax* _stx8667_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx8645_ _stop?8646_)
        (let _lp8648_ ((_stx8650_ _stx8645_))
          (if (_stop?8646_ _stx8650_)
              _stx8650_
              (let ((_rstx8652_ (gx#core-expand1 _stx8650_)))
                (if (eq? _stx8650_ _rstx8652_)
                    _stx8650_
                    (_lp8648_ _rstx8652_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx8657_)
          (let ((_stop?8659_ false))
            (gx#core-expand*__% _stx8657_ _stop?8659_))))
      (define gx#core-expand*
        (lambda _g9201_
          (let ((_g9200_ (length _g9201_)))
            (cond ((##fx= _g9200_ 1) (apply gx#core-expand*__0 _g9201_))
                  ((##fx= _g9200_ 2) (apply gx#core-expand*__% _g9201_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g9201_))))))))
  (define gx#core-expand1
    (lambda (_stx8601_)
      (letrec ((_step8603_
                (lambda (_hd8640_)
                  (let ((_bind8642_ (gx#resolve-identifier__0 _hd8640_)))
                    (if (##structure-instance-of?
                         _bind8642_
                         'gx#runtime-binding::t)
                        _stx8601_
                        (if (##structure-direct-instance-of?
                             _bind8642_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind8642_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx8601_)
                            (if (not _bind8642_)
                                _stx8601_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx8601_))))))))
        (let* ((_e86048612_ _stx8601_)
               (_E86108616_ (lambda () _stx8601_))
               (_E86068622_
                (lambda ()
                  (let ((_hd8620_ _e86048612_))
                    (if (gx#identifier? _hd8620_)
                        (_step8603_ _hd8620_)
                        (_E86108616_)))))
               (_E86058636_
                (lambda ()
                  (if (gx#stx-pair? _e86048612_)
                      (let ((_e86078626_ (gx#syntax-e _e86048612_)))
                        (let ((_hd86088629_ (##car _e86078626_))
                              (_tl86098631_ (##cdr _e86078626_)))
                          (let ((_hd8634_ _hd86088629_))
                            (if (gx#identifier? _hd8634_)
                                (_step8603_ _hd8634_)
                                (_E86068622_)))))
                      (_E86068622_)))))
          (_E86058636_)))))
  (define gx#core-expand-head
    (lambda (_stx8567_)
      (letrec ((_stop?8569_
                (lambda (_stx8571_)
                  (let* ((_e85728579_ _stx8571_)
                         (_E85748583_ (lambda () '#f))
                         (_E85738597_
                          (lambda ()
                            (if (gx#stx-pair? _e85728579_)
                                (let ((_e85758587_ (gx#syntax-e _e85728579_)))
                                  (let ((_hd85768590_ (##car _e85758587_))
                                        (_tl85778592_ (##cdr _e85758587_)))
                                    (let ((_hd8595_ _hd85768590_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd8595_)
                                          (_E85748583_)))))
                                (_E85748583_)))))
                    (_E85738597_)))))
        (gx#core-expand*__% _stx8567_ _stop?8569_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx8373_ _expand-special8374_ _begin-form8375_ _expand-e8376_)
        (letrec ((_expand-splice8378_
                  (lambda (_hd8541_ _body8542_ _rest8543_ _r8544_)
                    (if (gx#stx-list? _body8542_)
                        (_K8382_ (gx#stx-foldr cons _rest8543_ _body8542_)
                                 _r8544_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx8373_
                         _hd8541_))))
                 (_expand-cond-expand8379_
                  (lambda (_hd8537_ _rest8538_ _r8539_)
                    (_K8382_ (cons (gx#core-expand-cond-expand% _hd8537_)
                                   _rest8538_)
                             _r8539_)))
                 (_expand-include8380_
                  (lambda (_hd8486_ _rest8487_ _r8488_)
                    (let* ((_e84898499_ _hd8486_)
                           (_E84918503_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e84898499_)))
                           (_E84908533_
                            (lambda ()
                              (if (gx#stx-pair? _e84898499_)
                                  (let ((_e84928507_
                                         (gx#syntax-e _e84898499_)))
                                    (let ((_hd84938510_ (##car _e84928507_))
                                          (_tl84948512_ (##cdr _e84928507_)))
                                      (if (gx#stx-pair? _tl84948512_)
                                          (let ((_e84958515_
                                                 (gx#syntax-e _tl84948512_)))
                                            (let ((_hd84968518_
                                                   (##car _e84958515_))
                                                  (_tl84978520_
                                                   (##cdr _e84958515_)))
                                              (let ((_path8523_ _hd84968518_))
                                                (if (gx#stx-null? _tl84978520_)
                                                    (if (gx#stx-string?
                                                         _path8523_)
                                                        (let* ((_rpath8525_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path8523_
                         (gx#stx-source _hd8486_)))
                       (_block8527_
                        (gx#core-expand-include%__% _hd8486_ _rpath8525_))
                       (_rbody8530_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block8527_
                            _expand-special8374_
                            '#f
                            _expand-e8376_))
                         gx#current-expander-path
                         (cons _rpath8525_ (gx#current-expander-path)))))
                  (_K8382_ _rest8487_ (foldr1 cons _r8488_ _rbody8530_)))
                (_E84918503_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E84918503_)))))
                                          (_E84918503_))))
                                  (_E84918503_)))))
                      (_E84908533_))))
                 (_expand-expression8381_
                  (lambda (_hd8482_ _rest8483_ _r8484_)
                    (_K8382_ _rest8483_
                             (cons (_expand-e8376_ _hd8482_) _r8484_))))
                 (_K8382_ (lambda (_rest8412_ _r8413_)
                            (let* ((_e84148421_ _rest8412_)
                                   (_E84168425_
                                    (lambda ()
                                      (if _begin-form8375_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form8375_
                                            (reverse _r8413_))
                                           (gx#stx-source _stx8373_))
                                          _r8413_)))
                                   (_E84158478_
                                    (lambda ()
                                      (if (gx#stx-pair? _e84148421_)
                                          (let ((_e84178429_
                                                 (gx#syntax-e _e84148421_)))
                                            (let ((_hd84188432_
                                                   (##car _e84178429_))
                                                  (_tl84198434_
                                                   (##cdr _e84178429_)))
                                              (let* ((_hd8437_ _hd84188432_)
                                                     (_rest8439_ _tl84198434_))
                                                (if '#t
                                                    (let* ((_hd8441_
                                                            (gx#core-expand-head
                                                             _hd8437_))
                                                           (_e84428449_
                                                            _hd8441_)
                                                           (_E84448453_
                                                            (lambda ()
                                                              (_expand-expression8381_
                                                               _hd8441_
                                                               _rest8439_
                                                               _r8413_)))
                                                           (_E84438474_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e84428449_)
                          (let ((_e84458457_ (gx#syntax-e _e84428449_)))
                            (let ((_hd84468460_ (##car _e84458457_))
                                  (_tl84478462_ (##cdr _e84458457_)))
                              (let* ((_form8465_ _hd84468460_)
                                     (_body8467_ _tl84478462_))
                                (if '#t
                                    (let ((_bind8469_
                                           (if (gx#identifier? _form8465_)
                                               (gx#resolve-identifier__0
                                                _form8465_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind8469_)
                                          (let ((_$e8471_
                                                 (##structure-ref
                                                  _bind8469_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e8471_)
                                                (_expand-splice8378_
                                                 _hd8441_
                                                 _body8467_
                                                 _rest8439_
                                                 _r8413_)
                                                (if (eq? '%#cond-expand
                                                         _$e8471_)
                                                    (_expand-cond-expand8379_
                                                     _hd8441_
                                                     _rest8439_
                                                     _r8413_)
                                                    (if (eq? '%#include
                                                             _$e8471_)
                                                        (_expand-include8380_
                                                         _hd8441_
                                                         _rest8439_
                                                         _r8413_)
                                                        (_expand-special8374_
                                                         _hd8441_
                                                         _K8382_
                                                         _rest8439_
                                                         _r8413_)))))
                                          (_expand-expression8381_
                                           _hd8441_
                                           _rest8439_
                                           _r8413_)))
                                    (_E84448453_)))))
                          (_E84448453_)))))
              (_E84438474_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E84168425_)))))
                                          (_E84168425_)))))
                              (_E84158478_)))))
          (let* ((_e83838390_ _stx8373_)
                 (_E83858394_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e83838390_)))
                 (_E83848408_
                  (lambda ()
                    (if (gx#stx-pair? _e83838390_)
                        (let ((_e83868398_ (gx#syntax-e _e83838390_)))
                          (let ((_hd83878401_ (##car _e83868398_))
                                (_tl83888403_ (##cdr _e83868398_)))
                            (let ((_body8406_ _tl83888403_))
                              (if (gx#stx-list? _body8406_)
                                  (_K8382_ _body8406_ '())
                                  (_E83858394_)))))
                        (_E83858394_)))))
            (_E83848408_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx8549_ _expand-special8550_)
          (let* ((_begin-form8552_ '%#begin)
                 (_expand-e8554_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8549_
             _expand-special8550_
             _begin-form8552_
             _expand-e8554_))))
      (define gx#core-expand-block__1
        (lambda (_stx8556_ _expand-special8557_ _begin-form8558_)
          (let ((_expand-e8560_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8556_
             _expand-special8557_
             _begin-form8558_
             _expand-e8560_))))
      (define gx#core-expand-block
        (lambda _g9203_
          (let ((_g9202_ (length _g9203_)))
            (cond ((##fx= _g9202_ 2) (apply gx#core-expand-block__0 _g9203_))
                  ((##fx= _g9202_ 3) (apply gx#core-expand-block__1 _g9203_))
                  ((##fx= _g9202_ 4) (apply gx#core-expand-block__% _g9203_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g9203_))))))))
  (define gx#core-expand-block*
    (lambda (_stx8321_ _expand-special8322_)
      (let* ((_g83238334_
              (gx#core-expand-block__1 _stx8321_ _expand-special8322_ '#f))
             (_E83278338_
              (lambda () (error '"No clause matching" _g83238334_))))
        (let ((_K83328369_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx8321_)))
              (_K83298355_ (lambda (_expr8353_) _expr8353_))
              (_K83288344_
               (lambda (_body8342_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body8342_))
                  (gx#stx-source _stx8321_)))))
          (let ((_try-match83258365_
                 (lambda ()
                   (if (##pair? _g83238334_)
                       (let ((_tl83318360_ (##cdr _g83238334_))
                             (_hd83308358_ (##car _g83238334_)))
                         (if (##null? _tl83318360_)
                             (let ((_expr8363_ _hd83308358_))
                               (_K83298355_ _expr8363_))
                             (let ((_body8347_ _g83238334_))
                               (_K83288344_ _body8347_))))
                       (let ((_body8347_ _g83238334_))
                         (_K83288344_ _body8347_))))))
            (if (##null? _g83238334_) (_K83328369_) (_try-match83258365_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx8179_)
      (letrec ((_satisfied?8181_
                (lambda (_condition8279_)
                  (let* ((_e82808288_ _condition8279_)
                         (_E82838292_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e82808288_)))
                         (_E82828311_
                          (lambda ()
                            (if (gx#stx-pair? _e82808288_)
                                (let ((_e82848296_ (gx#syntax-e _e82808288_)))
                                  (let ((_hd82858299_ (##car _e82848296_))
                                        (_tl82868301_ (##cdr _e82848296_)))
                                    (let* ((_combinator8304_ _hd82858299_)
                                           (_body8306_ _tl82868301_))
                                      (if (gx#stx-list? _body8306_)
                                          (let ((_$e8308_
                                                 (gx#stx-e _combinator8304_)))
                                            (if (eq? 'not _$e8308_)
                                                (not (gx#stx-ormap
                                                      _satisfied?8181_
                                                      _body8306_))
                                                (if (eq? 'and _$e8308_)
                                                    (gx#stx-andmap
                                                     _satisfied?8181_
                                                     _body8306_)
                                                    (if (eq? 'or _$e8308_)
                                                        (gx#stx-ormap
                                                         _satisfied?8181_
                                                         _body8306_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e8308_)
                    (gx#stx-andmap gx#core-resolve-identifier _body8306_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx8179_
                     _combinator8304_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E82838292_)))))
                                (_E82838292_))))
                         (_E82818317_
                          (lambda ()
                            (let ((_id8315_ _e82808288_))
                              (if (gx#identifier? _id8315_)
                                  (gx#core-bound-identifier?__%
                                   _id8315_
                                   gx#feature-binding?)
                                  (_E82828311_))))))
                    (_E82818317_))))
               (_loop8182_
                (lambda (_rest8212_)
                  (let* ((_e82138221_ _rest8212_)
                         (_E82198225_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e82138221_)))
                         (_E82158229_
                          (lambda ()
                            (if (gx#stx-null? _e82138221_)
                                (if '#t '() (_E82198225_))
                                (_E82198225_))))
                         (_E82148275_
                          (lambda ()
                            (if (gx#stx-pair? _e82138221_)
                                (let ((_e82168233_ (gx#syntax-e _e82138221_)))
                                  (let ((_hd82178236_ (##car _e82168233_))
                                        (_tl82188238_ (##cdr _e82168233_)))
                                    (let* ((_hd8241_ _hd82178236_)
                                           (_rest8243_ _tl82188238_))
                                      (if '#t
                                          (let* ((_e82448251_ _hd8241_)
                                                 (_E82468255_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e82448251_)))
                                                 (_E82458271_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e82448251_)
                                                        (let ((_e82478259_
                                                               (gx#syntax-e
                                                                _e82448251_)))
                                                          (let ((_hd82488262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e82478259_))
                        (_tl82498264_ (##cdr _e82478259_)))
                    (let* ((_condition8267_ _hd82488262_)
                           (_body8269_ _tl82498264_))
                      (if '#t
                          (if (gx#stx-eq? _condition8267_ 'else)
                              (if (gx#stx-null? _rest8243_)
                                  _body8269_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx8179_
                                   _hd8241_))
                              (if (_satisfied?8181_ _condition8267_)
                                  _body8269_
                                  (_loop8182_ _rest8243_)))
                          (_E82468255_)))))
                (_E82468255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E82458271_))
                                          (_E82158229_)))))
                                (_E82158229_)))))
                    (_E82148275_)))))
        (let* ((_e81838190_ _stx8179_)
               (_E81858194_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e81838190_)))
               (_E81848208_
                (lambda ()
                  (if (gx#stx-pair? _e81838190_)
                      (let ((_e81868198_ (gx#syntax-e _e81838190_)))
                        (let ((_hd81878201_ (##car _e81868198_))
                              (_tl81888203_ (##cdr _e81868198_)))
                          (let ((_clauses8206_ _tl81888203_))
                            (if (gx#stx-list? _clauses8206_)
                                (gx#core-cons
                                 'begin
                                 (_loop8182_ _clauses8206_))
                                (_E81858194_)))))
                      (_E81858194_)))))
          (_E81848208_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx8122_ _rpath8123_)
        (let* ((_e81248134_ _stx8122_)
               (_E81268138_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e81248134_)))
               (_E81258165_
                (lambda ()
                  (if (gx#stx-pair? _e81248134_)
                      (let ((_e81278142_ (gx#syntax-e _e81248134_)))
                        (let ((_hd81288145_ (##car _e81278142_))
                              (_tl81298147_ (##cdr _e81278142_)))
                          (if (gx#stx-pair? _tl81298147_)
                              (let ((_e81308150_ (gx#syntax-e _tl81298147_)))
                                (let ((_hd81318153_ (##car _e81308150_))
                                      (_tl81328155_ (##cdr _e81308150_)))
                                  (let ((_path8158_ _hd81318153_))
                                    (if (gx#stx-null? _tl81328155_)
                                        (if (gx#stx-string? _path8158_)
                                            (let ((_rpath8163_
                                                   (let ((_$e8160_
                                                          _rpath8123_))
                                                     (if _$e8160_
                                                         _$e8160_
                                                         (gx#core-resolve-path__%
                                                          _path8158_
                                                          (gx#stx-source
                                                           _stx8122_))))))
                                              (if (member _rpath8163_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx8122_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath8163_))
                                                    (gx#stx-source
                                                     _stx8122_)))))
                                            (_E81268138_))
                                        (_E81268138_)))))
                              (_E81268138_))))
                      (_E81268138_)))))
          (_E81258165_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx8172_)
          (let ((_rpath8174_ '#f))
            (gx#core-expand-include%__% _stx8172_ _rpath8174_))))
      (define gx#core-expand-include%
        (lambda _g9205_
          (let ((_g9204_ (length _g9205_)))
            (cond ((##fx= _g9204_ 1)
                   (apply gx#core-expand-include%__0 _g9205_))
                  ((##fx= _g9204_ 2)
                   (apply gx#core-expand-include%__% _g9205_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g9205_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K8091_ _stx8092_ _method8093_)
        (if (procedure? _K8091_)
            (let ((_$e8095_ (gx#stx-source _stx8092_)))
              (if _$e8095_
                  ((lambda (_g80978099_)
                     (gx#stx-wrap-source (_K8091_ _stx8092_) _g80978099_))
                   _$e8095_)
                  (_K8091_ _stx8092_)))
            (let ((_$e8102_ (bound-method-ref _K8091_ _method8093_)))
              (if _$e8102_
                  ((lambda (_g81048106_)
                     (gx#core-apply-expander__%
                      _g81048106_
                      _stx8092_
                      _method8093_))
                   _$e8102_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx8092_
                   _method8093_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K8112_ _stx8113_)
          (let ((_method8115_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K8112_ _stx8113_ _method8115_))))
      (define gx#core-apply-expander
        (lambda _g9207_
          (let ((_g9206_ (length _g9207_)))
            (cond ((##fx= _g9206_ 2) (apply gx#core-apply-expander__0 _g9207_))
                  ((##fx= _g9206_ 3) (apply gx#core-apply-expander__% _g9207_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g9207_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self8087_ _stx8088_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx8088_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self7940_ _stx7941_)
      (let* ((_self79427948_ _self7940_)
             (_E79447952_
              (lambda () (error '"No clause matching" _self79427948_)))
             (_K79457957_
              (lambda (_K7955_)
                (gx#core-apply-expander__0 _K7955_ _stx7941_))))
        (if (##structure-instance-of? _self79427948_ 'gx#core-macro::t)
            (let* ((_e79467960_ (##vector-ref _self79427948_ '1))
                   (_K7963_ _e79467960_))
              (_K79457957_ _K7963_))
            (_E79447952_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self7793_ _stx7794_)
      (if (gx#sealed-syntax? _stx7794_)
          _stx7794_
          (let* ((_self77957801_ _self7793_)
                 (_E77977805_
                  (lambda () (error '"No clause matching" _self77957801_)))
                 (_K77987810_
                  (lambda (_K7808_)
                    (gx#core-apply-expander__0 _K7808_ _stx7794_))))
            (if (##structure-instance-of? _self77957801_ 'gx#core-expander::t)
                (let* ((_e77997813_ (##vector-ref _self77957801_ '1))
                       (_K7816_ _e77997813_))
                  (_K77987810_ _K7816_))
                (_E77977805_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self7655_ _stx7656_ _top?7657_)
        (if (_top?7657_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self7655_ _stx7656_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx7656_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self7662_ _stx7663_)
          (let ((_top?7665_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self7662_
             _stx7663_
             _top?7665_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g9209_
          (let ((_g9208_ (length _g9209_)))
            (cond ((##fx= _g9208_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g9209_))
                  ((##fx= _g9208_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g9209_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g9209_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self7529_ _stx7530_)
      (gx#top-special-form::apply-macro-expander__%
       _self7529_
       _stx7530_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self7354_ _stx7355_)
      (let* ((_self73567362_ _self7354_)
             (_E73587366_
              (lambda () (error '"No clause matching" _self73567362_)))
             (_K73597399_
              (lambda (_id7369_)
                (let* ((_e73707377_ _stx7355_)
                       (_E73727381_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e73707377_)))
                       (_E73717395_
                        (lambda ()
                          (if (gx#stx-pair? _e73707377_)
                              (let ((_e73737385_ (gx#syntax-e _e73707377_)))
                                (let ((_hd73747388_ (##car _e73737385_))
                                      (_tl73757390_ (##cdr _e73737385_)))
                                  (let ((_body7393_ _tl73757390_))
                                    (if '#t
                                        (gx#core-cons _id7369_ _body7393_)
                                        (_E73727381_)))))
                              (_E73727381_)))))
                  (_E73717395_)))))
        (if (##structure-instance-of?
             _self73567362_
             'gx#rename-macro-expander::t)
            (let* ((_e73607402_ (##vector-ref _self73567362_ '1))
                   (_id7405_ _e73607402_))
              (_K73597399_ _id7405_))
            (_E73587366_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self7180_ _stx7181_ _method7182_)
        (let* ((_self71837191_ _self7180_)
               (_E71857195_
                (lambda () (error '"No clause matching" _self71837191_)))
               (_K71867202_
                (lambda (_phi7198_ _ctx7199_ _K7200_)
                  (gx#core-apply-user-macro
                   _K7200_
                   _stx7181_
                   _ctx7199_
                   _phi7198_
                   _method7182_))))
          (if (##structure-instance-of? _self71837191_ 'gx#macro-expander::t)
              (let* ((_e71877205_ (##vector-ref _self71837191_ '1))
                     (_K7208_ _e71877205_)
                     (_e71887210_ (##vector-ref _self71837191_ '2))
                     (_ctx7213_ _e71887210_)
                     (_e71897215_ (##vector-ref _self71837191_ '3))
                     (_phi7218_ _e71897215_))
                (_K71867202_ _phi7218_ _ctx7213_ _K7208_))
              (_E71857195_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self7223_ _stx7224_)
          (let ((_method7226_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self7223_
             _stx7224_
             _method7226_))))
      (define gx#core-apply-user-expander
        (lambda _g9211_
          (let ((_g9210_ (length _g9211_)))
            (cond ((##fx= _g9210_ 2)
                   (apply gx#core-apply-user-expander__0 _g9211_))
                  ((##fx= _g9210_ 3)
                   (apply gx#core-apply-user-expander__% _g9211_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g9211_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K7170_ _stx7171_ _ctx7172_ _phi7173_ _method7174_)
      (let ((_mark7176_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx7172_
              _phi7173_
              _stx7171_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K7170_
             (gx#stx-apply-mark _stx7171_ _mark7176_)
             _method7174_)
            _mark7176_))
         gx#current-expander-marks
         (cons _mark7176_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx7021_ _phi7022_ _ctx7023_)
        (let _lp7025_ ((_bind7027_
                        (gx#core-resolve-identifier__%
                         _stx7021_
                         _phi7022_
                         _ctx7023_)))
          (if (##structure-direct-instance-of?
               _bind7027_
               'gx#import-binding::t)
              (_lp7025_
               (##direct-structure-ref _bind7027_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind7027_
                   'gx#alias-binding::t)
                  (_lp7025_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind7027_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi7022_
                    _ctx7023_))
                  _bind7027_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx7032_)
          (let* ((_phi7034_ (gx#current-expander-phi))
                 (_ctx7036_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7032_ _phi7034_ _ctx7036_))))
      (define gx#resolve-identifier__1
        (lambda (_stx7038_ _phi7039_)
          (let ((_ctx7041_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7038_ _phi7039_ _ctx7041_))))
      (define gx#resolve-identifier
        (lambda _g9213_
          (let ((_g9212_ (length _g9213_)))
            (cond ((##fx= _g9212_ 1) (apply gx#resolve-identifier__0 _g9213_))
                  ((##fx= _g9212_ 2) (apply gx#resolve-identifier__1 _g9213_))
                  ((##fx= _g9212_ 3) (apply gx#resolve-identifier__% _g9213_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g9213_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx6979_ _val6980_ _rebind?6981_ _phi6982_ _ctx6983_)
        (let ((_rebind?6985_
               (if (not _rebind?6981_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?6981_) _rebind?6981_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx6979_)
           _val6980_
           _rebind?6985_
           _phi6982_
           _ctx6983_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx6990_ _val6991_)
          (let* ((_rebind?6993_ '#f)
                 (_phi6995_ (gx#current-expander-phi))
                 (_ctx6997_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx6990_
             _val6991_
             _rebind?6993_
             _phi6995_
             _ctx6997_))))
      (define gx#bind-identifier!__1
        (lambda (_stx6999_ _val7000_ _rebind?7001_)
          (let* ((_phi7003_ (gx#current-expander-phi))
                 (_ctx7005_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx6999_
             _val7000_
             _rebind?7001_
             _phi7003_
             _ctx7005_))))
      (define gx#bind-identifier!__2
        (lambda (_stx7007_ _val7008_ _rebind?7009_ _phi7010_)
          (let ((_ctx7012_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7007_
             _val7008_
             _rebind?7009_
             _phi7010_
             _ctx7012_))))
      (define gx#bind-identifier!
        (lambda _g9215_
          (let ((_g9214_ (length _g9215_)))
            (cond ((##fx= _g9214_ 2) (apply gx#bind-identifier!__0 _g9215_))
                  ((##fx= _g9214_ 3) (apply gx#bind-identifier!__1 _g9215_))
                  ((##fx= _g9214_ 4) (apply gx#bind-identifier!__2 _g9215_))
                  ((##fx= _g9214_ 5) (apply gx#bind-identifier!__% _g9215_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g9215_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx6951_ _phi6952_ _ctx6953_)
        (let _lp6955_ ((_e6957_ _stx6951_)
                       (_marks6958_ (gx#current-expander-marks)))
          (if (symbol? _e6957_)
              (gx#core-resolve-binding
               _e6957_
               _phi6952_
               _phi6952_
               _ctx6953_
               (reverse _marks6958_))
              (if (gx#identifier-quote? _e6957_)
                  (gx#core-resolve-binding
                   (##structure-ref _e6957_ '1 AST::t '#f)
                   _phi6952_
                   '0
                   (##direct-structure-ref _e6957_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e6957_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e6957_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e6957_ '1 AST::t '#f)
                       _phi6952_
                       _phi6952_
                       _ctx6953_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e6957_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks6958_))
                      (if (##structure-direct-instance-of?
                           _e6957_
                           'gx#syntax-wrap::t)
                          (_lp6955_
                           (##structure-ref _e6957_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e6957_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks6958_))
                          (if (##structure-instance-of? _e6957_ 'gerbil#AST::t)
                              (_lp6955_
                               (##structure-ref _e6957_ '1 AST::t '#f)
                               _marks6958_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx6951_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx6963_)
          (let* ((_phi6965_ (gx#current-expander-phi))
                 (_ctx6967_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx6963_ _phi6965_ _ctx6967_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx6969_ _phi6970_)
          (let ((_ctx6972_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx6969_ _phi6970_ _ctx6972_))))
      (define gx#core-resolve-identifier
        (lambda _g9217_
          (let ((_g9216_ (length _g9217_)))
            (cond ((##fx= _g9216_ 1)
                   (apply gx#core-resolve-identifier__0 _g9217_))
                  ((##fx= _g9216_ 2)
                   (apply gx#core-resolve-identifier__1 _g9217_))
                  ((##fx= _g9216_ 3)
                   (apply gx#core-resolve-identifier__% _g9217_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g9217_))))))))
  (define gx#core-resolve-binding
    (lambda (_id6864_ _phi6865_ _src-phi6866_ _ctx6867_ _marks6868_)
      (letrec ((_resolve6870_
                (lambda (_ctx6938_ _src-phi6939_ _key6940_)
                  (let _lp6942_ ((_ctx6944_
                                  (gx#core-context-shift _ctx6938_ _phi6865_))
                                 (_dphi6945_ (fx- _phi6865_ _src-phi6939_)))
                    (let ((_$e6947_
                           (gx#core-context-resolve _ctx6944_ _key6940_)))
                      (if _$e6947_
                          (values _$e6947_)
                          (if (fxzero? _dphi6945_)
                              '#f
                              (if (fxpositive? _dphi6945_)
                                  (_lp6942_
                                   (gx#core-context-shift _ctx6944_ '-1)
                                   (fx- _dphi6945_ '1))
                                  (if (fxnegative? _dphi6945_)
                                      (_lp6942_
                                       (gx#core-context-shift _ctx6944_ '1)
                                       (fx+ _dphi6945_ '1))
                                      '#!void)))))))))
        (let _lp6872_ ((_ctx6874_ _ctx6867_)
                       (_src-phi6875_ _src-phi6866_)
                       (_rest6876_ _marks6868_))
          (let* ((_rest68776885_ _rest6876_)
                 (_else68796893_
                  (lambda () (_resolve6870_ _ctx6874_ _src-phi6875_ _id6864_)))
                 (_K68816926_
                  (lambda (_rest6896_ _hd6897_)
                    (let* ((_hd68986904_ _hd6897_)
                           (_E69006908_
                            (lambda ()
                              (error '"No clause matching" _hd68986904_)))
                           (_K69016918_
                            (lambda (_subst6911_)
                              (let ((_$e6915_
                                     (let ((_key6913_
                                            (if _subst6911_
                                                (table-ref
                                                 _subst6911_
                                                 _id6864_
                                                 '#f)
                                                '#f)))
                                       (if _key6913_
                                           (_resolve6870_
                                            _ctx6874_
                                            _src-phi6875_
                                            _key6913_)
                                           '#f))))
                                (if _$e6915_
                                    _$e6915_
                                    (_lp6872_
                                     (##structure-ref
                                      _hd6897_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd6897_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest6896_))))))
                      (if (##structure-instance-of?
                           _hd68986904_
                           'gx#expander-mark::t)
                          (let* ((_e69026921_ (##vector-ref _hd68986904_ '1))
                                 (_subst6924_ _e69026921_))
                            (_K69016918_ _subst6924_))
                          (_E69006908_))))))
            (if (##pair? _rest68776885_)
                (let ((_hd68826929_ (##car _rest68776885_))
                      (_tl68836931_ (##cdr _rest68776885_)))
                  (let* ((_hd6934_ _hd68826929_) (_rest6936_ _tl68836931_))
                    (_K68816926_ _rest6936_ _hd6934_)))
                (_else68796893_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key6740_ _val6741_ _rebind?6742_ _phi6743_ _ctx6744_)
        (letrec ((_update-binding6746_
                  (lambda (_xval6817_)
                    (if (let ((_$e6819_
                               (_rebind?6742_ _ctx6744_ _xval6817_ _val6741_)))
                          (if _$e6819_
                              _$e6819_
                              (let ((_$e6825_
                                     (if (##structure-direct-instance-of?
                                          _xval6817_
                                          'gx#import-binding::t)
                                         (let ((_$e6822_
                                                (##direct-structure-ref
                                                 _xval6817_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e6822_
                                               _$e6822_
                                               (if (##structure-instance-of?
                                                    _val6741_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val6741_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e6825_
                                    _$e6825_
                                    (if (##structure-instance-of?
                                         _xval6817_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val6741_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val6741_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval6817_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val6741_
                        (if (if (##structure-direct-instance-of?
                                 _val6741_
                                 'gx#import-binding::t)
                                (let ((_$e6828_
                                       (##direct-structure-ref
                                        _val6741_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e6828_
                                      _$e6828_
                                      (if (##structure-instance-of?
                                           _xval6817_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val6741_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval6817_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval6817_
                            (if (if (##structure-direct-instance-of?
                                     _val6741_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval6817_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key6740_
                                 (cons (##structure-ref
                                        _val6741_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val6741_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval6817_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval6817_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval6817_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval6817_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key6740_
                                 _val6741_
                                 _xval6817_))))))
                 (_gensubst6747_
                  (lambda (_subst6812_ _id6813_)
                    (let ((_eid6815_
                           (gensym (if (uninterned-symbol? _id6813_)
                                       '%
                                       _id6813_))))
                      (begin
                        (table-set! _subst6812_ _id6813_ _eid6815_)
                        _eid6815_))))
                 (_subst!6748_
                  (lambda (_key6750_)
                    (let* ((_key67516759_ _key6750_)
                           (_else67536767_ (lambda () _key6750_))
                           (_K67556800_
                            (lambda (_mark6770_ _id6771_)
                              (let* ((_mark67726778_ _mark6770_)
                                     (_E67746782_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark67726778_)))
                                     (_K67756792_
                                      (lambda (_subst6785_)
                                        (if (not _subst6785_)
                                            (let ((_subst6787_
                                                   (make-table 'test: eq?)))
                                              (begin
                                                (##structure-set!
                                                 _mark6770_
                                                 _subst6787_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst6747_
                                                 _subst6787_
                                                 _id6771_)))
                                            (let ((_$e6789_
                                                   (table-ref
                                                    _subst6785_
                                                    _id6771_
                                                    '#f)))
                                              (if _$e6789_
                                                  (values _$e6789_)
                                                  (_gensubst6747_
                                                   _subst6785_
                                                   _id6771_)))))))
                                (if (##structure-instance-of?
                                     _mark67726778_
                                     'gx#expander-mark::t)
                                    (let* ((_e67766795_
                                            (##vector-ref _mark67726778_ '1))
                                           (_subst6798_ _e67766795_))
                                      (_K67756792_ _subst6798_))
                                    (_E67746782_))))))
                      (if (##pair? _key67516759_)
                          (let ((_hd67566803_ (##car _key67516759_))
                                (_tl67576805_ (##cdr _key67516759_)))
                            (let* ((_id6808_ _hd67566803_)
                                   (_mark6810_ _tl67576805_))
                              (_K67556800_ _mark6810_ _id6808_)))
                          (_else67536767_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx6744_ _phi6743_)
           (_subst!6748_ _key6740_)
           _val6741_
           _update-binding6746_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key6834_ _val6835_)
          (let* ((_rebind?6837_ false)
                 (_phi6839_ (gx#current-expander-phi))
                 (_ctx6841_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6834_
             _val6835_
             _rebind?6837_
             _phi6839_
             _ctx6841_))))
      (define gx#core-bind!__1
        (lambda (_key6843_ _val6844_ _rebind?6845_)
          (let* ((_phi6847_ (gx#current-expander-phi))
                 (_ctx6849_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6843_
             _val6844_
             _rebind?6845_
             _phi6847_
             _ctx6849_))))
      (define gx#core-bind!__2
        (lambda (_key6851_ _val6852_ _rebind?6853_ _phi6854_)
          (let ((_ctx6856_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6851_
             _val6852_
             _rebind?6853_
             _phi6854_
             _ctx6856_))))
      (define gx#core-bind!
        (lambda _g9219_
          (let ((_g9218_ (length _g9219_)))
            (cond ((##fx= _g9218_ 2) (apply gx#core-bind!__0 _g9219_))
                  ((##fx= _g9218_ 3) (apply gx#core-bind!__1 _g9219_))
                  ((##fx= _g9218_ 4) (apply gx#core-bind!__2 _g9219_))
                  ((##fx= _g9218_ 5) (apply gx#core-bind!__% _g9219_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g9219_))))))))
  (define gx#core-identifier-key
    (lambda (_stx6674_)
      (if (symbol? _stx6674_)
          (let* ((_g66756683_ (gx#current-expander-marks))
                 (_else66776691_ (lambda () _stx6674_))
                 (_K66796696_ (lambda (_hd6694_) (cons _stx6674_ _hd6694_))))
            (if (##pair? _g66756683_)
                (let* ((_hd66806699_ (##car _g66756683_))
                       (_hd6702_ _hd66806699_))
                  (_K66796696_ _hd6702_))
                (_else66776691_)))
          (if (gx#identifier? _stx6674_)
              (let* ((_id6704_ (gx#syntax-local-unwrap _stx6674_))
                     (_eid6706_ (gx#stx-e _id6704_))
                     (_marks6708_ (gx#stx-identifier-marks _id6704_)))
                (let* ((_marks67106718_ _marks6708_)
                       (_else67126726_ (lambda () _eid6706_))
                       (_K67146731_
                        (lambda (_hd6729_) (cons _eid6706_ _hd6729_))))
                  (if (##pair? _marks67106718_)
                      (let* ((_hd67156734_ (##car _marks67106718_))
                             (_hd6737_ _hd67156734_))
                        (_K67146731_ _hd6737_))
                      (_else67126726_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx6674_)))))
  (define gx#core-context-shift
    (lambda (_ctx6619_ _phi6620_)
      (letrec ((_make-phi6622_
                (lambda (_super6672_)
                  (let ((__obj9190 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj9190
                       (gensym 'phi)
                       _super6672_)
                      __obj9190))))
               (_make-phi/up6623_
                (lambda (_ctx6667_ _super6668_)
                  (let ((_ctx+16670_ (_make-phi6622_ _super6668_)))
                    (begin
                      (##structure-set!
                       _ctx6667_
                       _ctx+16670_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+16670_
                       _ctx6667_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+16670_))))
               (_make-phi/down6624_
                (lambda (_ctx6662_ _super6663_)
                  (let ((_ctx-16665_ (_make-phi6622_ _super6663_)))
                    (begin
                      (##structure-set!
                       _ctx-16665_
                       _ctx6662_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx6662_
                       _ctx-16665_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-16665_))))
               (_shift6625_
                (lambda (_ctx6646_
                         _delta6647_
                         _make-delta-context6648_
                         _phi6649_
                         _K6650_)
                  (let ((_$e6652_
                         (##structure-ref _ctx6646_ '3 gx#phi-context::t '#f)))
                    (if _$e6652_
                        ((lambda (_super6655_)
                           (let* ((_super6657_
                                   (_K6650_ _super6655_ _delta6647_))
                                  (_ctx+d6659_
                                   (_make-delta-context6648_
                                    _ctx6646_
                                    _super6657_)))
                             (_K6650_ _ctx+d6659_
                                      (fx- _phi6649_ _delta6647_))))
                         _$e6652_)
                        (error '"Bad context" _ctx6646_))))))
        (let _K6627_ ((_ctx6629_ _ctx6619_) (_phi6630_ _phi6620_))
          (if (fxzero? _phi6630_)
              _ctx6629_
              (if (##structure-instance-of? _ctx6629_ 'gx#context-phi::t)
                  (if (fxpositive? _phi6630_)
                      (let ((_$e6632_
                             (##structure-ref
                              _ctx6629_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e6632_
                            ((lambda (_g66346636_)
                               (_K6627_ _g66346636_ (fx- _phi6630_ '1)))
                             _$e6632_)
                            (_shift6625_
                             _ctx6629_
                             '1
                             _make-phi/up6623_
                             _phi6630_
                             _K6627_)))
                      (let ((_$e6639_
                             (##structure-ref
                              _ctx6629_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e6639_
                            ((lambda (_g66416643_)
                               (_K6627_ _g66416643_ (fx+ _phi6630_ '1)))
                             _$e6639_)
                            (_shift6625_
                             _ctx6629_
                             '-1
                             _make-phi/down6624_
                             _phi6630_
                             _K6627_))))
                  _ctx6629_))))))
  (define gx#core-context-get
    (lambda (_ctx6616_ _key6617_)
      (table-ref
       (##structure-ref _ctx6616_ '2 gx#expander-context::t '#f)
       _key6617_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx6612_ _key6613_ _val6614_)
      (table-set!
       (##structure-ref _ctx6612_ '2 gx#expander-context::t '#f)
       _key6613_
       _val6614_)))
  (define gx#core-context-resolve
    (lambda (_ctx6599_ _key6600_)
      (let _lp6602_ ((_ctx6604_ _ctx6599_))
        (let ((_$e6606_ (gx#core-context-get _ctx6604_ _key6600_)))
          (if _$e6606_
              (values _$e6606_)
              (let ((_$e6609_
                     (if (##structure-instance-of?
                          _ctx6604_
                          'gx#context-phi::t)
                         (##structure-ref _ctx6604_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e6609_ (_lp6602_ _$e6609_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx6589_ _key6590_ _val6591_ _rebind6592_)
      (let ((_$e6594_ (gx#core-context-get _ctx6589_ _key6590_)))
        (if _$e6594_
            ((lambda (_xval6597_)
               (gx#core-context-put!
                _ctx6589_
                _key6590_
                (_rebind6592_ _xval6597_)))
             _$e6594_)
            (gx#core-context-put! _ctx6589_ _key6590_ _val6591_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx6567_ _stop?6568_)
        (let _lp6570_ ((_ctx6572_ _ctx6567_))
          (if (_stop?6568_ _ctx6572_)
              _ctx6572_
              (if (##structure-instance-of? _ctx6572_ 'gx#context-phi::t)
                  (_lp6570_
                   (##structure-ref _ctx6572_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx6578_ (gx#current-expander-context))
                 (_stop?6580_ gx#top-context?))
            (gx#core-context-top__% _ctx6578_ _stop?6580_))))
      (define gx#core-context-top__1
        (lambda (_ctx6582_)
          (let ((_stop?6584_ gx#top-context?))
            (gx#core-context-top__% _ctx6582_ _stop?6584_))))
      (define gx#core-context-top
        (lambda _g9221_
          (let ((_g9220_ (length _g9221_)))
            (cond ((##fx= _g9220_ 0) (apply gx#core-context-top__0 _g9221_))
                  ((##fx= _g9220_ 1) (apply gx#core-context-top__1 _g9221_))
                  ((##fx= _g9220_ 2) (apply gx#core-context-top__% _g9221_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g9221_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx6552_)
        (let _lp6554_ ((_ctx6556_ _ctx6552_))
          (if (##structure-instance-of? _ctx6556_ 'gx#context-phi::t)
              (_lp6554_ (##structure-ref _ctx6556_ '3 gx#phi-context::t '#f))
              _ctx6556_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx6562_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx6562_))))
      (define gx#core-context-root
        (lambda _g9223_
          (let ((_g9222_ (length _g9223_)))
            (cond ((##fx= _g9222_ 0) (apply gx#core-context-root__0 _g9223_))
                  ((##fx= _g9222_ 1) (apply gx#core-context-root__% _g9223_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g9223_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx6536_ . __65336537_)
        (if (##structure-instance-of? _ctx6536_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx6536_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx6536_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx6544_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx6544_))))
      (define gx#core-context-rebind?
        (lambda _g9225_
          (let ((_g9224_ (length _g9225_)))
            (cond ((##fx= _g9224_ 0)
                   (apply gx#core-context-rebind?__0 _g9225_))
                  ((##fx= _g9224_ 1)
                   (apply gx#core-context-rebind?__% _g9225_))
                  ((##fx>= _g9224_ 1)
                   (apply gx#core-context-rebind?__% _g9225_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g9225_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx6519_)
        (let ((_$e6521_ (gx#core-context-top__1 _ctx6519_)))
          (if _$e6521_
              ((lambda (_ctx6524_)
                 (if (##structure-instance-of? _ctx6524_ 'gx#module-context::t)
                     (##structure-ref _ctx6524_ '6 gx#module-context::t '#f)
                     '#f))
               _$e6521_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx6530_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx6530_))))
      (define gx#core-context-namespace
        (lambda _g9227_
          (let ((_g9226_ (length _g9227_)))
            (cond ((##fx= _g9226_ 0)
                   (apply gx#core-context-namespace__0 _g9227_))
                  ((##fx= _g9226_ 1)
                   (apply gx#core-context-namespace__% _g9227_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g9227_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind6505_ _is?6506_)
        (if (##structure-direct-instance-of? _bind6505_ 'gx#syntax-binding::t)
            (_is?6506_
             (##direct-structure-ref _bind6505_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind6511_)
          (let ((_is?6513_ gx#expander?))
            (gx#expander-binding?__% _bind6511_ _is?6513_))))
      (define gx#expander-binding?
        (lambda _g9229_
          (let ((_g9228_ (length _g9229_)))
            (cond ((##fx= _g9228_ 1) (apply gx#expander-binding?__0 _g9229_))
                  ((##fx= _g9228_ 2) (apply gx#expander-binding?__% _g9229_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g9229_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind6502_)
      (gx#expander-binding?__% _bind6502_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind6500_)
      (gx#expander-binding?__% _bind6500_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind6494_)
      (letrec ((_direct-special-form?6496_
                (lambda (_obj6498_)
                  (direct-struct-instance? gx#special-form::t _obj6498_))))
        (gx#expander-binding?__% _bind6494_ _direct-special-form?6496_))))
  (define gx#special-form-binding?
    (lambda (_bind6492_)
      (gx#expander-binding?__% _bind6492_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind6483_)
      (letrec ((_feature?6485_
                (lambda (_e6487_)
                  (let ((_$e6489_
                         (##structure-instance-of?
                          _e6487_
                          'gx#feature-expander::t)))
                    (if _$e6489_
                        _$e6489_
                        (##structure-instance-of?
                         _e6487_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind6483_ _feature?6485_))))
  (define gx#private-feature-binding?
    (lambda (_bind6481_)
      (gx#expander-binding?__% _bind6481_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id6468_ _bound?6469_)
        (if (gx#identifier? _id6468_)
            (_bound?6469_ (gx#resolve-identifier__0 _id6468_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id6474_)
          (let ((_bound?6476_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id6474_ _bound?6476_))))
      (define gx#core-bound-identifier?
        (lambda _g9231_
          (let ((_g9230_ (length _g9231_)))
            (cond ((##fx= _g9230_ 1)
                   (apply gx#core-bound-identifier?__0 _g9231_))
                  ((##fx= _g9230_ 2)
                   (apply gx#core-bound-identifier?__% _g9231_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g9231_))))))))
  (define gx#core-identifier=?
    (lambda (_x6458_ _y6459_)
      (letrec ((_y=?6461_
                (lambda (_xid6465_)
                  ((if (list? _y6459_) memq eq?) _xid6465_ _y6459_))))
        (let ((_bind6463_ (gx#resolve-identifier__0 _x6458_)))
          (if (##structure-instance-of? _bind6463_ 'gx#binding::t)
              (_y=?6461_ (##structure-ref _bind6463_ '1 gx#binding::t '#f))
              (_y=?6461_ (gx#stx-e _x6458_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e6456_)
      (if (interned-symbol? _e6456_)
          (string-index (symbol->string _e6456_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx6414_ _src6415_ _ctx6416_ _marks6417_)
        (if (gx#sealed-syntax? _stx6414_)
            (gx#stx-unwrap__0 _stx6414_)
            (if (gx#identifier? _stx6414_)
                (let ((_id6419_ (gx#syntax-local-unwrap _stx6414_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id6419_)
                   (let ((_$e6421_ (gx#stx-source _id6419_)))
                     (if _$e6421_ _$e6421_ _src6415_))
                   _ctx6416_
                   (##direct-structure-ref
                    _id6419_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx6414_)
                    (gx#stx-e _stx6414_)
                    (##structure
                     gx#syntax-quote::t
                     _stx6414_
                     (let ((_$e6424_ (gx#stx-source _stx6414_)))
                       (if _$e6424_ _$e6424_ _src6415_))
                     _ctx6416_
                     (reverse _marks6417_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx6430_)
          (let* ((_src6432_ '#f)
                 (_ctx6434_ (gx#current-expander-context))
                 (_marks6436_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6430_
             _src6432_
             _ctx6434_
             _marks6436_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx6438_ _src6439_)
          (let* ((_ctx6441_ (gx#current-expander-context))
                 (_marks6443_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6438_
             _src6439_
             _ctx6441_
             _marks6443_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx6445_ _src6446_ _ctx6447_)
          (let ((_marks6449_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6445_
             _src6446_
             _ctx6447_
             _marks6449_))))
      (define gx#core-quote-syntax
        (lambda _g9233_
          (let ((_g9232_ (length _g9233_)))
            (cond ((##fx= _g9232_ 1) (apply gx#core-quote-syntax__0 _g9233_))
                  ((##fx= _g9232_ 2) (apply gx#core-quote-syntax__1 _g9233_))
                  ((##fx= _g9232_ 3) (apply gx#core-quote-syntax__2 _g9233_))
                  ((##fx= _g9232_ 4) (apply gx#core-quote-syntax__% _g9233_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g9233_))))))))
  (define gx#core-cons
    (lambda (_hd6410_ _tl6411_)
      (cons (gx#core-quote-syntax__0 _hd6410_) _tl6411_)))
  (define gx#core-list
    (lambda (_hd6407_ . _rest6408_)
      (cons (gx#core-quote-syntax__0 _hd6407_) _rest6408_)))
  (define gx#core-cons*
    (lambda (_hd6404_ . _rest6405_)
      (apply cons* (gx#core-quote-syntax__0 _hd6404_) _rest6405_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path6378_ _rel6379_)
        (let ((_path6391_ (gx#stx-e _stx-path6378_))
              (_reldir6392_
               (let _lp6381_ ((_relsrc6383_
                               (let ((_$e6388_ (gx#stx-source _stx-path6378_)))
                                 (if _$e6388_ _$e6388_ _rel6379_))))
                 (if (##structure-instance-of? _relsrc6383_ 'gerbil#AST::t)
                     (_lp6381_
                      (let ((_$e6385_ (gx#stx-source _relsrc6383_)))
                        (if _$e6385_ _$e6385_ (gx#stx-e _relsrc6383_))))
                     (if (source-location-path? _relsrc6383_)
                         (path-directory (source-location-path _relsrc6383_))
                         (if (string? _relsrc6383_)
                             (path-directory _relsrc6383_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path6391_ (path-normalize _reldir6392_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path6397_)
          (let ((_rel6399_ '#f))
            (gx#core-resolve-path__% _stx-path6397_ _rel6399_))))
      (define gx#core-resolve-path
        (lambda _g9235_
          (let ((_g9234_ (length _g9235_)))
            (cond ((##fx= _g9234_ 1) (apply gx#core-resolve-path__0 _g9235_))
                  ((##fx= _g9234_ 2) (apply gx#core-resolve-path__% _g9235_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g9235_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr6334_ _ctx6335_)
        (let* ((_repr63366343_ _repr6334_)
               (_E63386347_
                (lambda () (error '"No clause matching" _repr63366343_)))
               (_K63396355_
                (lambda (_subs6350_ _phi6351_)
                  (let ((_subst6353_
                         (if (not (null? _subs6350_))
                             (list->table _subs6350_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst6353_
                     _ctx6335_
                     _phi6351_
                     '#f)))))
          (if (##pair? _repr63366343_)
              (let ((_hd63406358_ (##car _repr63366343_))
                    (_tl63416360_ (##cdr _repr63366343_)))
                (let* ((_phi6363_ _hd63406358_) (_subs6365_ _tl63416360_))
                  (_K63396355_ _subs6365_ _phi6363_)))
              (_E63386347_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr6370_)
          (let ((_ctx6372_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr6370_ _ctx6372_))))
      (define gx#core-deserialize-mark
        (lambda _g9237_
          (let ((_g9236_ (length _g9237_)))
            (cond ((##fx= _g9236_ 1)
                   (apply gx#core-deserialize-mark__0 _g9237_))
                  ((##fx= _g9236_ 2)
                   (apply gx#core-deserialize-mark__% _g9237_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g9237_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx6331_) (gx#stx-rewrap _stx6331_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx6329_)
      (gx#stx-unwrap__% _stx6329_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx6299_)
      (let* ((_g63006308_ (gx#current-expander-marks))
             (_else63026316_ (lambda () _stx6299_))
             (_K63046321_
              (lambda (_hd6319_) (gx#stx-apply-mark _stx6299_ _hd6319_))))
        (if (##pair? _g63006308_)
            (let* ((_hd63056324_ (##car _g63006308_)) (_hd6327_ _hd63056324_))
              (_K63046321_ _hd6327_))
            (_else63026316_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx6284_ _E6285_)
        (let ((_bind6287_ (gx#resolve-identifier__0 _stx6284_)))
          (if (##structure-direct-instance-of?
               _bind6287_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind6287_ '4 gx#syntax-binding::t '#f)
              (_E6285_ _stx6284_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx6292_)
          (let ((_E6294_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx6292_ _E6294_))))
      (define gx#syntax-local-e
        (lambda _g9239_
          (let ((_g9238_ (length _g9239_)))
            (cond ((##fx= _g9238_ 1) (apply gx#syntax-local-e__0 _g9239_))
                  ((##fx= _g9238_ 2) (apply gx#syntax-local-e__% _g9239_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g9239_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx6268_ _E6269_)
        (let ((_e6271_ (gx#syntax-local-e__% _stx6268_ _E6269_)))
          (if (##structure-instance-of? _e6271_ 'gx#expander::t)
              (##structure-ref _e6271_ '1 gx#expander::t '#f)
              _e6271_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx6276_)
          (let ((_E6278_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx6276_ _E6278_))))
      (define gx#syntax-local-value
        (lambda _g9241_
          (let ((_g9240_ (length _g9241_)))
            (cond ((##fx= _g9240_ 1) (apply gx#syntax-local-value__0 _g9241_))
                  ((##fx= _g9240_ 2) (apply gx#syntax-local-value__% _g9241_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g9241_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx6265_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx6265_))))
