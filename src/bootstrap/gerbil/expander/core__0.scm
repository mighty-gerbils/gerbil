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
    (lambda _$args9181_
      (apply make-struct-instance gx#expander-context::t _$args9181_)))
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
    (lambda _$args9178_
      (apply make-struct-instance gx#root-context::t _$args9178_)))
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
    (lambda _$args9175_
      (apply make-struct-instance gx#phi-context::t _$args9175_)))
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
    (lambda _$args9172_
      (apply make-struct-instance gx#top-context::t _$args9172_)))
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
    (lambda _$args9169_
      (apply make-struct-instance gx#module-context::t _$args9169_)))
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
    (lambda _$args9166_
      (apply make-struct-instance gx#prelude-context::t _$args9166_)))
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
    (lambda _$args9163_
      (apply make-struct-instance gx#local-context::t _$args9163_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self9147_ _id9148_ _super9149_)
        (struct-instance-init!
         _self9147_
         _id9148_
         (make-table 'test: eq?)
         _super9149_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self9154_ _id9155_)
          (let ((_super9157_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self9154_ _id9155_ _super9157_))))
      (define gx#phi-context:::init!
        (lambda _g9194_
          (let ((_g9193_ (length _g9194_)))
            (cond ((##fx= _g9193_ 2) (apply gx#phi-context:::init!__0 _g9194_))
                  ((##fx= _g9193_ 3) (apply gx#phi-context:::init!__% _g9194_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g9194_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self9011_ _super9012_)
        (struct-instance-init!
         _self9011_
         (gensym 'L)
         (make-table 'test: eq?)
         _super9012_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self9017_)
          (let ((_super9019_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self9017_ _super9019_))))
      (define gx#local-context:::init!
        (lambda _g9196_
          (let ((_g9195_ (length _g9196_)))
            (cond ((##fx= _g9195_ 1)
                   (apply gx#local-context:::init!__0 _g9196_))
                  ((##fx= _g9195_ 2)
                   (apply gx#local-context:::init!__% _g9196_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g9196_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args8885_
      (apply make-struct-instance gx#binding::t _$args8885_)))
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
    (lambda _$args8882_
      (apply make-struct-instance gx#runtime-binding::t _$args8882_)))
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
    (lambda _$args8879_
      (apply make-struct-instance gx#local-binding::t _$args8879_)))
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
    (lambda _$args8876_
      (apply make-struct-instance gx#top-binding::t _$args8876_)))
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
    (lambda _$args8873_
      (apply make-struct-instance gx#module-binding::t _$args8873_)))
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
    (lambda _$args8870_
      (apply make-struct-instance gx#extern-binding::t _$args8870_)))
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
    (lambda _$args8867_
      (apply make-struct-instance gx#syntax-binding::t _$args8867_)))
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
    (lambda _$args8864_
      (apply make-struct-instance gx#import-binding::t _$args8864_)))
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
    (lambda _$args8861_
      (apply make-struct-instance gx#alias-binding::t _$args8861_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args8858_
      (apply make-struct-instance gx#expander::t _$args8858_)))
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
    (lambda _$args8855_
      (apply make-struct-instance gx#core-expander::t _$args8855_)))
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
    (lambda _$args8852_
      (apply make-struct-instance gx#expression-form::t _$args8852_)))
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
    (lambda _$args8849_
      (apply make-struct-instance gx#special-form::t _$args8849_)))
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
    (lambda _$args8846_
      (apply make-struct-instance gx#definition-form::t _$args8846_)))
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
    (lambda _$args8843_
      (apply make-struct-instance gx#top-special-form::t _$args8843_)))
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
    (lambda _$args8840_
      (apply make-struct-instance gx#module-special-form::t _$args8840_)))
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
    (lambda _$args8837_
      (apply make-struct-instance gx#feature-expander::t _$args8837_)))
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
    (lambda _$args8834_
      (apply make-struct-instance gx#private-feature-expander::t _$args8834_)))
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
    (lambda _$args8831_
      (apply make-struct-instance gx#reserved-expander::t _$args8831_)))
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
    (lambda _$args8828_
      (apply make-struct-instance gx#macro-expander::t _$args8828_)))
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
    (lambda _$args8825_
      (apply make-struct-instance gx#rename-macro-expander::t _$args8825_)))
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
    (lambda _$args8822_
      (apply make-struct-instance gx#user-expander::t _$args8822_)))
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
    (lambda _$args8819_
      (apply make-struct-instance gx#expander-mark::t _$args8819_)))
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
    (lambda _$args8816_
      (apply make-struct-instance gx#syntax-error::t _$args8816_)))
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
    (lambda (_where8811_ _message8812_ _stx8813_ . _details8814_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message8812_
              (cons _stx8813_ _details8814_)
              _where8811_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx8798_ _expression?8799_)
        (gx#eval-syntax* (gx#core-expand__% _stx8798_ _expression?8799_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx8804_)
          (let ((_expression?8806_ '#f))
            (gx#eval-syntax__% _stx8804_ _expression?8806_))))
      (define gx#eval-syntax
        (lambda _g9198_
          (let ((_g9197_ (length _g9198_)))
            (cond ((##fx= _g9197_ 1) (apply gx#eval-syntax__0 _g9198_))
                  ((##fx= _g9197_ 2) (apply gx#eval-syntax__% _g9198_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g9198_))))))))
  (define gx#eval-syntax*
    (lambda (_stx8795_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx8795_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx8782_ _expression?8783_)
        (if _expression?8783_
            (gx#core-expand-expression _stx8782_)
            (gx#core-expand-top _stx8782_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx8788_)
          (let ((_expression?8790_ '#f))
            (gx#core-expand__% _stx8788_ _expression?8790_))))
      (define gx#core-expand
        (lambda _g9200_
          (let ((_g9199_ (length _g9200_)))
            (cond ((##fx= _g9199_ 1) (apply gx#core-expand__0 _g9200_))
                  ((##fx= _g9199_ 2) (apply gx#core-expand__% _g9200_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g9200_))))))))
  (define gx#core-expand-top
    (lambda (_stx8749_)
      (let* ((_stx8751_ (gx#core-expand*__0 _stx8749_))
             (_e87528759_ _stx8751_)
             (_E87548763_ (lambda () (gx#core-expand-expression _stx8751_)))
             (_E87538777_
              (lambda ()
                (if (gx#stx-pair? _e87528759_)
                    (let ((_e87558767_ (gx#syntax-e _e87528759_)))
                      (let ((_hd87568770_ (##car _e87558767_))
                            (_tl87578772_ (##cdr _e87558767_)))
                        (let ((_form8775_ _hd87568770_))
                          (if (gx#core-bound-identifier?__0 _form8775_)
                              _stx8751_
                              (_E87548763_)))))
                    (_E87548763_)))))
        (_E87538777_))))
  (define gx#core-expand-expression
    (lambda (_stx8671_)
      (letrec ((_sealed-expression?8673_
                (lambda (_hd8719_)
                  (if (gx#sealed-syntax? _hd8719_)
                      (let* ((_e87208727_ _hd8719_)
                             (_E87228731_ (lambda () '#f))
                             (_E87218745_
                              (lambda ()
                                (if (gx#stx-pair? _e87208727_)
                                    (let ((_e87238735_
                                           (gx#syntax-e _e87208727_)))
                                      (let ((_hd87248738_ (##car _e87238735_))
                                            (_tl87258740_ (##cdr _e87238735_)))
                                        (let ((_form8743_ _hd87248738_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form8743_
                                               gx#expression-form-binding?)
                                              (_E87228731_)))))
                                    (_E87228731_)))))
                        (_E87218745_))
                      '#f)))
               (_illegal-expression8674_
                (lambda (_hd8717_ . _g9201_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx8671_
                   _hd8717_)))
               (_expand-e8675_
                (lambda (_form8712_ _hd8713_)
                  (let ((_bind8715_
                         (if (##structure-instance-of?
                              _form8712_
                              'gx#binding::t)
                             _form8712_
                             (gx#resolve-identifier__0 _form8712_))))
                    (if (gx#core-expander-binding? _bind8715_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind8715_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd8713_
                          (gx#stx-source _stx8671_)))
                        (if (##structure-direct-instance-of?
                             _bind8715_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind8715_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd8713_
                               (gx#stx-source _stx8671_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx8671_
                             _form8712_)))))))
        (let ((_hd8677_ (gx#core-expand-head _stx8671_)))
          (if (_sealed-expression?8673_ _hd8677_)
              _hd8677_
              (if (gx#stx-pair? _hd8677_)
                  (let* ((_e86788685_ _hd8677_)
                         (_E86808689_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e86788685_)))
                         (_E86798708_
                          (lambda ()
                            (if (gx#stx-pair? _e86788685_)
                                (let ((_e86818693_ (gx#syntax-e _e86788685_)))
                                  (let ((_hd86828696_ (##car _e86818693_))
                                        (_tl86838698_ (##cdr _e86818693_)))
                                    (let ((_form8701_ _hd86828696_))
                                      (if '#t
                                          (let ((_bind8703_
                                                 (if (gx#identifier?
                                                      _form8701_)
                                                     (gx#resolve-identifier__0
                                                      _form8701_)
                                                     '#f)))
                                            (if (let ((_$e8705_
                                                       (not _bind8703_)))
                                                  (if _$e8705_
                                                      _$e8705_
                                                      (not (gx#core-expander-binding?
                                                            _bind8703_))))
                                                (_expand-e8675_
                                                 '%%app
                                                 (cons '%%app _hd8677_))
                                                (if (eq? (##structure-ref
                                                          _bind8703_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd8677_
                                                     _illegal-expression8674_)
                                                    (if (gx#expression-form-binding?
                                                         _bind8703_)
                                                        (_expand-e8675_
                                                         _bind8703_
                                                         _hd8677_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind8703_)
                                                            (gx#core-expand-expression
                                                             (_expand-e8675_
                                                              _bind8703_
                                                              _hd8677_))
                                                            (_illegal-expression8674_
                                                             _hd8677_))))))
                                          (_E86808689_)))))
                                (_E86808689_)))))
                    (_E86798708_))
                  (if (gx#core-bound-identifier?__0 _hd8677_)
                      (_illegal-expression8674_ _hd8677_)
                      (if (gx#identifier? _hd8677_)
                          (_expand-e8675_
                           '%%ref
                           (cons '%%ref (cons _hd8677_ '())))
                          (if (gx#stx-datum? _hd8677_)
                              (_expand-e8675_
                               '%#quote
                               (cons '%#quote (cons _hd8677_ '())))
                              (_illegal-expression8674_ _hd8677_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx8666_)
      (call-with-parameters
       (lambda ()
         (let ((_stx8669_ (gx#core-expand-expression _stx8666_)))
           (values _stx8669_ (gx#eval-syntax* _stx8669_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx8647_ _stop?8648_)
        (let _lp8650_ ((_stx8652_ _stx8647_))
          (if (_stop?8648_ _stx8652_)
              _stx8652_
              (let ((_rstx8654_ (gx#core-expand1 _stx8652_)))
                (if (eq? _stx8652_ _rstx8654_)
                    _stx8652_
                    (_lp8650_ _rstx8654_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx8659_)
          (let ((_stop?8661_ false))
            (gx#core-expand*__% _stx8659_ _stop?8661_))))
      (define gx#core-expand*
        (lambda _g9203_
          (let ((_g9202_ (length _g9203_)))
            (cond ((##fx= _g9202_ 1) (apply gx#core-expand*__0 _g9203_))
                  ((##fx= _g9202_ 2) (apply gx#core-expand*__% _g9203_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g9203_))))))))
  (define gx#core-expand1
    (lambda (_stx8603_)
      (letrec ((_step8605_
                (lambda (_hd8642_)
                  (let ((_bind8644_ (gx#resolve-identifier__0 _hd8642_)))
                    (if (##structure-instance-of?
                         _bind8644_
                         'gx#runtime-binding::t)
                        _stx8603_
                        (if (##structure-direct-instance-of?
                             _bind8644_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind8644_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx8603_)
                            (if (not _bind8644_)
                                _stx8603_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx8603_))))))))
        (let* ((_e86068614_ _stx8603_)
               (_E86128618_ (lambda () _stx8603_))
               (_E86088624_
                (lambda ()
                  (let ((_hd8622_ _e86068614_))
                    (if (gx#identifier? _hd8622_)
                        (_step8605_ _hd8622_)
                        (_E86128618_)))))
               (_E86078638_
                (lambda ()
                  (if (gx#stx-pair? _e86068614_)
                      (let ((_e86098628_ (gx#syntax-e _e86068614_)))
                        (let ((_hd86108631_ (##car _e86098628_))
                              (_tl86118633_ (##cdr _e86098628_)))
                          (let ((_hd8636_ _hd86108631_))
                            (if (gx#identifier? _hd8636_)
                                (_step8605_ _hd8636_)
                                (_E86088624_)))))
                      (_E86088624_)))))
          (_E86078638_)))))
  (define gx#core-expand-head
    (lambda (_stx8569_)
      (letrec ((_stop?8571_
                (lambda (_stx8573_)
                  (let* ((_e85748581_ _stx8573_)
                         (_E85768585_ (lambda () '#f))
                         (_E85758599_
                          (lambda ()
                            (if (gx#stx-pair? _e85748581_)
                                (let ((_e85778589_ (gx#syntax-e _e85748581_)))
                                  (let ((_hd85788592_ (##car _e85778589_))
                                        (_tl85798594_ (##cdr _e85778589_)))
                                    (let ((_hd8597_ _hd85788592_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd8597_)
                                          (_E85768585_)))))
                                (_E85768585_)))))
                    (_E85758599_)))))
        (gx#core-expand*__% _stx8569_ _stop?8571_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx8375_ _expand-special8376_ _begin-form8377_ _expand-e8378_)
        (letrec ((_expand-splice8380_
                  (lambda (_hd8543_ _body8544_ _rest8545_ _r8546_)
                    (if (gx#stx-list? _body8544_)
                        (_K8384_ (gx#stx-foldr cons _rest8545_ _body8544_)
                                 _r8546_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx8375_
                         _hd8543_))))
                 (_expand-cond-expand8381_
                  (lambda (_hd8539_ _rest8540_ _r8541_)
                    (_K8384_ (cons (gx#core-expand-cond-expand% _hd8539_)
                                   _rest8540_)
                             _r8541_)))
                 (_expand-include8382_
                  (lambda (_hd8488_ _rest8489_ _r8490_)
                    (let* ((_e84918501_ _hd8488_)
                           (_E84938505_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e84918501_)))
                           (_E84928535_
                            (lambda ()
                              (if (gx#stx-pair? _e84918501_)
                                  (let ((_e84948509_
                                         (gx#syntax-e _e84918501_)))
                                    (let ((_hd84958512_ (##car _e84948509_))
                                          (_tl84968514_ (##cdr _e84948509_)))
                                      (if (gx#stx-pair? _tl84968514_)
                                          (let ((_e84978517_
                                                 (gx#syntax-e _tl84968514_)))
                                            (let ((_hd84988520_
                                                   (##car _e84978517_))
                                                  (_tl84998522_
                                                   (##cdr _e84978517_)))
                                              (let ((_path8525_ _hd84988520_))
                                                (if (gx#stx-null? _tl84998522_)
                                                    (if (gx#stx-string?
                                                         _path8525_)
                                                        (let* ((_rpath8527_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path8525_
                         (gx#stx-source _hd8488_)))
                       (_block8529_
                        (gx#core-expand-include%__% _hd8488_ _rpath8527_))
                       (_rbody8532_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block8529_
                            _expand-special8376_
                            '#f
                            _expand-e8378_))
                         gx#current-expander-path
                         (cons _rpath8527_ (gx#current-expander-path)))))
                  (_K8384_ _rest8489_ (foldr1 cons _r8490_ _rbody8532_)))
                (_E84938505_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E84938505_)))))
                                          (_E84938505_))))
                                  (_E84938505_)))))
                      (_E84928535_))))
                 (_expand-expression8383_
                  (lambda (_hd8484_ _rest8485_ _r8486_)
                    (_K8384_ _rest8485_
                             (cons (_expand-e8378_ _hd8484_) _r8486_))))
                 (_K8384_ (lambda (_rest8414_ _r8415_)
                            (let* ((_e84168423_ _rest8414_)
                                   (_E84188427_
                                    (lambda ()
                                      (if _begin-form8377_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form8377_
                                            (reverse _r8415_))
                                           (gx#stx-source _stx8375_))
                                          _r8415_)))
                                   (_E84178480_
                                    (lambda ()
                                      (if (gx#stx-pair? _e84168423_)
                                          (let ((_e84198431_
                                                 (gx#syntax-e _e84168423_)))
                                            (let ((_hd84208434_
                                                   (##car _e84198431_))
                                                  (_tl84218436_
                                                   (##cdr _e84198431_)))
                                              (let* ((_hd8439_ _hd84208434_)
                                                     (_rest8441_ _tl84218436_))
                                                (if '#t
                                                    (let* ((_hd8443_
                                                            (gx#core-expand-head
                                                             _hd8439_))
                                                           (_e84448451_
                                                            _hd8443_)
                                                           (_E84468455_
                                                            (lambda ()
                                                              (_expand-expression8383_
                                                               _hd8443_
                                                               _rest8441_
                                                               _r8415_)))
                                                           (_E84458476_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e84448451_)
                          (let ((_e84478459_ (gx#syntax-e _e84448451_)))
                            (let ((_hd84488462_ (##car _e84478459_))
                                  (_tl84498464_ (##cdr _e84478459_)))
                              (let* ((_form8467_ _hd84488462_)
                                     (_body8469_ _tl84498464_))
                                (if '#t
                                    (let ((_bind8471_
                                           (if (gx#identifier? _form8467_)
                                               (gx#resolve-identifier__0
                                                _form8467_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind8471_)
                                          (let ((_$e8473_
                                                 (##structure-ref
                                                  _bind8471_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e8473_)
                                                (_expand-splice8380_
                                                 _hd8443_
                                                 _body8469_
                                                 _rest8441_
                                                 _r8415_)
                                                (if (eq? '%#cond-expand
                                                         _$e8473_)
                                                    (_expand-cond-expand8381_
                                                     _hd8443_
                                                     _rest8441_
                                                     _r8415_)
                                                    (if (eq? '%#include
                                                             _$e8473_)
                                                        (_expand-include8382_
                                                         _hd8443_
                                                         _rest8441_
                                                         _r8415_)
                                                        (_expand-special8376_
                                                         _hd8443_
                                                         _K8384_
                                                         _rest8441_
                                                         _r8415_)))))
                                          (_expand-expression8383_
                                           _hd8443_
                                           _rest8441_
                                           _r8415_)))
                                    (_E84468455_)))))
                          (_E84468455_)))))
              (_E84458476_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E84188427_)))))
                                          (_E84188427_)))))
                              (_E84178480_)))))
          (let* ((_e83858392_ _stx8375_)
                 (_E83878396_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e83858392_)))
                 (_E83868410_
                  (lambda ()
                    (if (gx#stx-pair? _e83858392_)
                        (let ((_e83888400_ (gx#syntax-e _e83858392_)))
                          (let ((_hd83898403_ (##car _e83888400_))
                                (_tl83908405_ (##cdr _e83888400_)))
                            (let ((_body8408_ _tl83908405_))
                              (if (gx#stx-list? _body8408_)
                                  (_K8384_ _body8408_ '())
                                  (_E83878396_)))))
                        (_E83878396_)))))
            (_E83868410_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx8551_ _expand-special8552_)
          (let* ((_begin-form8554_ '%#begin)
                 (_expand-e8556_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8551_
             _expand-special8552_
             _begin-form8554_
             _expand-e8556_))))
      (define gx#core-expand-block__1
        (lambda (_stx8558_ _expand-special8559_ _begin-form8560_)
          (let ((_expand-e8562_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8558_
             _expand-special8559_
             _begin-form8560_
             _expand-e8562_))))
      (define gx#core-expand-block
        (lambda _g9205_
          (let ((_g9204_ (length _g9205_)))
            (cond ((##fx= _g9204_ 2) (apply gx#core-expand-block__0 _g9205_))
                  ((##fx= _g9204_ 3) (apply gx#core-expand-block__1 _g9205_))
                  ((##fx= _g9204_ 4) (apply gx#core-expand-block__% _g9205_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g9205_))))))))
  (define gx#core-expand-block*
    (lambda (_stx8323_ _expand-special8324_)
      (let* ((_g83258336_
              (gx#core-expand-block__1 _stx8323_ _expand-special8324_ '#f))
             (_E83298340_
              (lambda () (error '"No clause matching" _g83258336_))))
        (let ((_K83348371_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx8323_)))
              (_K83318357_ (lambda (_expr8355_) _expr8355_))
              (_K83308346_
               (lambda (_body8344_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body8344_))
                  (gx#stx-source _stx8323_)))))
          (let ((_try-match83278367_
                 (lambda ()
                   (if (##pair? _g83258336_)
                       (let ((_tl83338362_ (##cdr _g83258336_))
                             (_hd83328360_ (##car _g83258336_)))
                         (if (##null? _tl83338362_)
                             (let ((_expr8365_ _hd83328360_))
                               (_K83318357_ _expr8365_))
                             (let ((_body8349_ _g83258336_))
                               (_K83308346_ _body8349_))))
                       (let ((_body8349_ _g83258336_))
                         (_K83308346_ _body8349_))))))
            (if (##null? _g83258336_) (_K83348371_) (_try-match83278367_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx8181_)
      (letrec ((_satisfied?8183_
                (lambda (_condition8281_)
                  (let* ((_e82828290_ _condition8281_)
                         (_E82858294_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e82828290_)))
                         (_E82848313_
                          (lambda ()
                            (if (gx#stx-pair? _e82828290_)
                                (let ((_e82868298_ (gx#syntax-e _e82828290_)))
                                  (let ((_hd82878301_ (##car _e82868298_))
                                        (_tl82888303_ (##cdr _e82868298_)))
                                    (let* ((_combinator8306_ _hd82878301_)
                                           (_body8308_ _tl82888303_))
                                      (if (gx#stx-list? _body8308_)
                                          (let ((_$e8310_
                                                 (gx#stx-e _combinator8306_)))
                                            (if (eq? 'not _$e8310_)
                                                (not (gx#stx-ormap
                                                      _satisfied?8183_
                                                      _body8308_))
                                                (if (eq? 'and _$e8310_)
                                                    (gx#stx-andmap
                                                     _satisfied?8183_
                                                     _body8308_)
                                                    (if (eq? 'or _$e8310_)
                                                        (gx#stx-ormap
                                                         _satisfied?8183_
                                                         _body8308_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e8310_)
                    (gx#stx-andmap gx#core-resolve-identifier _body8308_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx8181_
                     _combinator8306_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E82858294_)))))
                                (_E82858294_))))
                         (_E82838319_
                          (lambda ()
                            (let ((_id8317_ _e82828290_))
                              (if (gx#identifier? _id8317_)
                                  (gx#core-bound-identifier?__%
                                   _id8317_
                                   gx#feature-binding?)
                                  (_E82848313_))))))
                    (_E82838319_))))
               (_loop8184_
                (lambda (_rest8214_)
                  (let* ((_e82158223_ _rest8214_)
                         (_E82218227_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e82158223_)))
                         (_E82178231_
                          (lambda ()
                            (if (gx#stx-null? _e82158223_)
                                (if '#t '() (_E82218227_))
                                (_E82218227_))))
                         (_E82168277_
                          (lambda ()
                            (if (gx#stx-pair? _e82158223_)
                                (let ((_e82188235_ (gx#syntax-e _e82158223_)))
                                  (let ((_hd82198238_ (##car _e82188235_))
                                        (_tl82208240_ (##cdr _e82188235_)))
                                    (let* ((_hd8243_ _hd82198238_)
                                           (_rest8245_ _tl82208240_))
                                      (if '#t
                                          (let* ((_e82468253_ _hd8243_)
                                                 (_E82488257_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e82468253_)))
                                                 (_E82478273_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e82468253_)
                                                        (let ((_e82498261_
                                                               (gx#syntax-e
                                                                _e82468253_)))
                                                          (let ((_hd82508264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e82498261_))
                        (_tl82518266_ (##cdr _e82498261_)))
                    (let* ((_condition8269_ _hd82508264_)
                           (_body8271_ _tl82518266_))
                      (if '#t
                          (if (gx#stx-eq? _condition8269_ 'else)
                              (if (gx#stx-null? _rest8245_)
                                  _body8271_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx8181_
                                   _hd8243_))
                              (if (_satisfied?8183_ _condition8269_)
                                  _body8271_
                                  (_loop8184_ _rest8245_)))
                          (_E82488257_)))))
                (_E82488257_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E82478273_))
                                          (_E82178231_)))))
                                (_E82178231_)))))
                    (_E82168277_)))))
        (let* ((_e81858192_ _stx8181_)
               (_E81878196_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e81858192_)))
               (_E81868210_
                (lambda ()
                  (if (gx#stx-pair? _e81858192_)
                      (let ((_e81888200_ (gx#syntax-e _e81858192_)))
                        (let ((_hd81898203_ (##car _e81888200_))
                              (_tl81908205_ (##cdr _e81888200_)))
                          (let ((_clauses8208_ _tl81908205_))
                            (if (gx#stx-list? _clauses8208_)
                                (gx#core-cons
                                 'begin
                                 (_loop8184_ _clauses8208_))
                                (_E81878196_)))))
                      (_E81878196_)))))
          (_E81868210_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx8124_ _rpath8125_)
        (let* ((_e81268136_ _stx8124_)
               (_E81288140_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e81268136_)))
               (_E81278167_
                (lambda ()
                  (if (gx#stx-pair? _e81268136_)
                      (let ((_e81298144_ (gx#syntax-e _e81268136_)))
                        (let ((_hd81308147_ (##car _e81298144_))
                              (_tl81318149_ (##cdr _e81298144_)))
                          (if (gx#stx-pair? _tl81318149_)
                              (let ((_e81328152_ (gx#syntax-e _tl81318149_)))
                                (let ((_hd81338155_ (##car _e81328152_))
                                      (_tl81348157_ (##cdr _e81328152_)))
                                  (let ((_path8160_ _hd81338155_))
                                    (if (gx#stx-null? _tl81348157_)
                                        (if (gx#stx-string? _path8160_)
                                            (let ((_rpath8165_
                                                   (let ((_$e8162_
                                                          _rpath8125_))
                                                     (if _$e8162_
                                                         _$e8162_
                                                         (gx#core-resolve-path__%
                                                          _path8160_
                                                          (gx#stx-source
                                                           _stx8124_))))))
                                              (if (member _rpath8165_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx8124_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath8165_))
                                                    (gx#stx-source
                                                     _stx8124_)))))
                                            (_E81288140_))
                                        (_E81288140_)))))
                              (_E81288140_))))
                      (_E81288140_)))))
          (_E81278167_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx8174_)
          (let ((_rpath8176_ '#f))
            (gx#core-expand-include%__% _stx8174_ _rpath8176_))))
      (define gx#core-expand-include%
        (lambda _g9207_
          (let ((_g9206_ (length _g9207_)))
            (cond ((##fx= _g9206_ 1)
                   (apply gx#core-expand-include%__0 _g9207_))
                  ((##fx= _g9206_ 2)
                   (apply gx#core-expand-include%__% _g9207_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g9207_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K8093_ _stx8094_ _method8095_)
        (if (procedure? _K8093_)
            (let ((_$e8097_ (gx#stx-source _stx8094_)))
              (if _$e8097_
                  ((lambda (_g80998101_)
                     (gx#stx-wrap-source (_K8093_ _stx8094_) _g80998101_))
                   _$e8097_)
                  (_K8093_ _stx8094_)))
            (let ((_$e8104_ (bound-method-ref _K8093_ _method8095_)))
              (if _$e8104_
                  ((lambda (_g81068108_)
                     (gx#core-apply-expander__%
                      _g81068108_
                      _stx8094_
                      _method8095_))
                   _$e8104_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx8094_
                   _method8095_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K8114_ _stx8115_)
          (let ((_method8117_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K8114_ _stx8115_ _method8117_))))
      (define gx#core-apply-expander
        (lambda _g9209_
          (let ((_g9208_ (length _g9209_)))
            (cond ((##fx= _g9208_ 2) (apply gx#core-apply-expander__0 _g9209_))
                  ((##fx= _g9208_ 3) (apply gx#core-apply-expander__% _g9209_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g9209_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self8089_ _stx8090_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx8090_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self7942_ _stx7943_)
      (let* ((_self79447950_ _self7942_)
             (_E79467954_
              (lambda () (error '"No clause matching" _self79447950_)))
             (_K79477959_
              (lambda (_K7957_)
                (gx#core-apply-expander__0 _K7957_ _stx7943_))))
        (if (##structure-instance-of? _self79447950_ 'gx#core-macro::t)
            (let* ((_e79487962_ (##vector-ref _self79447950_ '1))
                   (_K7965_ _e79487962_))
              (_K79477959_ _K7965_))
            (_E79467954_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self7795_ _stx7796_)
      (if (gx#sealed-syntax? _stx7796_)
          _stx7796_
          (let* ((_self77977803_ _self7795_)
                 (_E77997807_
                  (lambda () (error '"No clause matching" _self77977803_)))
                 (_K78007812_
                  (lambda (_K7810_)
                    (gx#core-apply-expander__0 _K7810_ _stx7796_))))
            (if (##structure-instance-of? _self77977803_ 'gx#core-expander::t)
                (let* ((_e78017815_ (##vector-ref _self77977803_ '1))
                       (_K7818_ _e78017815_))
                  (_K78007812_ _K7818_))
                (_E77997807_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self7657_ _stx7658_ _top?7659_)
        (if (_top?7659_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self7657_ _stx7658_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx7658_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self7664_ _stx7665_)
          (let ((_top?7667_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self7664_
             _stx7665_
             _top?7667_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g9211_
          (let ((_g9210_ (length _g9211_)))
            (cond ((##fx= _g9210_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g9211_))
                  ((##fx= _g9210_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g9211_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g9211_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self7531_ _stx7532_)
      (gx#top-special-form::apply-macro-expander__%
       _self7531_
       _stx7532_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self7356_ _stx7357_)
      (let* ((_self73587364_ _self7356_)
             (_E73607368_
              (lambda () (error '"No clause matching" _self73587364_)))
             (_K73617401_
              (lambda (_id7371_)
                (let* ((_e73727379_ _stx7357_)
                       (_E73747383_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e73727379_)))
                       (_E73737397_
                        (lambda ()
                          (if (gx#stx-pair? _e73727379_)
                              (let ((_e73757387_ (gx#syntax-e _e73727379_)))
                                (let ((_hd73767390_ (##car _e73757387_))
                                      (_tl73777392_ (##cdr _e73757387_)))
                                  (let ((_body7395_ _tl73777392_))
                                    (if '#t
                                        (gx#core-cons _id7371_ _body7395_)
                                        (_E73747383_)))))
                              (_E73747383_)))))
                  (_E73737397_)))))
        (if (##structure-instance-of?
             _self73587364_
             'gx#rename-macro-expander::t)
            (let* ((_e73627404_ (##vector-ref _self73587364_ '1))
                   (_id7407_ _e73627404_))
              (_K73617401_ _id7407_))
            (_E73607368_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self7182_ _stx7183_ _method7184_)
        (let* ((_self71857193_ _self7182_)
               (_E71877197_
                (lambda () (error '"No clause matching" _self71857193_)))
               (_K71887204_
                (lambda (_phi7200_ _ctx7201_ _K7202_)
                  (gx#core-apply-user-macro
                   _K7202_
                   _stx7183_
                   _ctx7201_
                   _phi7200_
                   _method7184_))))
          (if (##structure-instance-of? _self71857193_ 'gx#macro-expander::t)
              (let* ((_e71897207_ (##vector-ref _self71857193_ '1))
                     (_K7210_ _e71897207_)
                     (_e71907212_ (##vector-ref _self71857193_ '2))
                     (_ctx7215_ _e71907212_)
                     (_e71917217_ (##vector-ref _self71857193_ '3))
                     (_phi7220_ _e71917217_))
                (_K71887204_ _phi7220_ _ctx7215_ _K7210_))
              (_E71877197_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self7225_ _stx7226_)
          (let ((_method7228_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self7225_
             _stx7226_
             _method7228_))))
      (define gx#core-apply-user-expander
        (lambda _g9213_
          (let ((_g9212_ (length _g9213_)))
            (cond ((##fx= _g9212_ 2)
                   (apply gx#core-apply-user-expander__0 _g9213_))
                  ((##fx= _g9212_ 3)
                   (apply gx#core-apply-user-expander__% _g9213_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g9213_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K7172_ _stx7173_ _ctx7174_ _phi7175_ _method7176_)
      (let ((_mark7178_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx7174_
              _phi7175_
              _stx7173_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K7172_
             (gx#stx-apply-mark _stx7173_ _mark7178_)
             _method7176_)
            _mark7178_))
         gx#current-expander-marks
         (cons _mark7178_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx7023_ _phi7024_ _ctx7025_)
        (let _lp7027_ ((_bind7029_
                        (gx#core-resolve-identifier__%
                         _stx7023_
                         _phi7024_
                         _ctx7025_)))
          (if (##structure-direct-instance-of?
               _bind7029_
               'gx#import-binding::t)
              (_lp7027_
               (##direct-structure-ref _bind7029_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind7029_
                   'gx#alias-binding::t)
                  (_lp7027_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind7029_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi7024_
                    _ctx7025_))
                  _bind7029_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx7034_)
          (let* ((_phi7036_ (gx#current-expander-phi))
                 (_ctx7038_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7034_ _phi7036_ _ctx7038_))))
      (define gx#resolve-identifier__1
        (lambda (_stx7040_ _phi7041_)
          (let ((_ctx7043_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7040_ _phi7041_ _ctx7043_))))
      (define gx#resolve-identifier
        (lambda _g9215_
          (let ((_g9214_ (length _g9215_)))
            (cond ((##fx= _g9214_ 1) (apply gx#resolve-identifier__0 _g9215_))
                  ((##fx= _g9214_ 2) (apply gx#resolve-identifier__1 _g9215_))
                  ((##fx= _g9214_ 3) (apply gx#resolve-identifier__% _g9215_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g9215_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx6981_ _val6982_ _rebind?6983_ _phi6984_ _ctx6985_)
        (let ((_rebind?6987_
               (if (not _rebind?6983_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?6983_) _rebind?6983_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx6981_)
           _val6982_
           _rebind?6987_
           _phi6984_
           _ctx6985_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx6992_ _val6993_)
          (let* ((_rebind?6995_ '#f)
                 (_phi6997_ (gx#current-expander-phi))
                 (_ctx6999_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx6992_
             _val6993_
             _rebind?6995_
             _phi6997_
             _ctx6999_))))
      (define gx#bind-identifier!__1
        (lambda (_stx7001_ _val7002_ _rebind?7003_)
          (let* ((_phi7005_ (gx#current-expander-phi))
                 (_ctx7007_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7001_
             _val7002_
             _rebind?7003_
             _phi7005_
             _ctx7007_))))
      (define gx#bind-identifier!__2
        (lambda (_stx7009_ _val7010_ _rebind?7011_ _phi7012_)
          (let ((_ctx7014_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7009_
             _val7010_
             _rebind?7011_
             _phi7012_
             _ctx7014_))))
      (define gx#bind-identifier!
        (lambda _g9217_
          (let ((_g9216_ (length _g9217_)))
            (cond ((##fx= _g9216_ 2) (apply gx#bind-identifier!__0 _g9217_))
                  ((##fx= _g9216_ 3) (apply gx#bind-identifier!__1 _g9217_))
                  ((##fx= _g9216_ 4) (apply gx#bind-identifier!__2 _g9217_))
                  ((##fx= _g9216_ 5) (apply gx#bind-identifier!__% _g9217_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g9217_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx6953_ _phi6954_ _ctx6955_)
        (let _lp6957_ ((_e6959_ _stx6953_)
                       (_marks6960_ (gx#current-expander-marks)))
          (if (symbol? _e6959_)
              (gx#core-resolve-binding
               _e6959_
               _phi6954_
               _phi6954_
               _ctx6955_
               (reverse _marks6960_))
              (if (gx#identifier-quote? _e6959_)
                  (gx#core-resolve-binding
                   (##structure-ref _e6959_ '1 AST::t '#f)
                   _phi6954_
                   '0
                   (##direct-structure-ref _e6959_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e6959_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e6959_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e6959_ '1 AST::t '#f)
                       _phi6954_
                       _phi6954_
                       _ctx6955_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e6959_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks6960_))
                      (if (##structure-direct-instance-of?
                           _e6959_
                           'gx#syntax-wrap::t)
                          (_lp6957_
                           (##structure-ref _e6959_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e6959_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks6960_))
                          (if (##structure-instance-of? _e6959_ 'gerbil#AST::t)
                              (_lp6957_
                               (##structure-ref _e6959_ '1 AST::t '#f)
                               _marks6960_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx6953_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx6965_)
          (let* ((_phi6967_ (gx#current-expander-phi))
                 (_ctx6969_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx6965_ _phi6967_ _ctx6969_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx6971_ _phi6972_)
          (let ((_ctx6974_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx6971_ _phi6972_ _ctx6974_))))
      (define gx#core-resolve-identifier
        (lambda _g9219_
          (let ((_g9218_ (length _g9219_)))
            (cond ((##fx= _g9218_ 1)
                   (apply gx#core-resolve-identifier__0 _g9219_))
                  ((##fx= _g9218_ 2)
                   (apply gx#core-resolve-identifier__1 _g9219_))
                  ((##fx= _g9218_ 3)
                   (apply gx#core-resolve-identifier__% _g9219_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g9219_))))))))
  (define gx#core-resolve-binding
    (lambda (_id6866_ _phi6867_ _src-phi6868_ _ctx6869_ _marks6870_)
      (letrec ((_resolve6872_
                (lambda (_ctx6940_ _src-phi6941_ _key6942_)
                  (let _lp6944_ ((_ctx6946_
                                  (gx#core-context-shift _ctx6940_ _phi6867_))
                                 (_dphi6947_ (fx- _phi6867_ _src-phi6941_)))
                    (let ((_$e6949_
                           (gx#core-context-resolve _ctx6946_ _key6942_)))
                      (if _$e6949_
                          (values _$e6949_)
                          (if (fxzero? _dphi6947_)
                              '#f
                              (if (fxpositive? _dphi6947_)
                                  (_lp6944_
                                   (gx#core-context-shift _ctx6946_ '-1)
                                   (fx- _dphi6947_ '1))
                                  (if (fxnegative? _dphi6947_)
                                      (_lp6944_
                                       (gx#core-context-shift _ctx6946_ '1)
                                       (fx+ _dphi6947_ '1))
                                      '#!void)))))))))
        (let _lp6874_ ((_ctx6876_ _ctx6869_)
                       (_src-phi6877_ _src-phi6868_)
                       (_rest6878_ _marks6870_))
          (let* ((_rest68796887_ _rest6878_)
                 (_else68816895_
                  (lambda () (_resolve6872_ _ctx6876_ _src-phi6877_ _id6866_)))
                 (_K68836928_
                  (lambda (_rest6898_ _hd6899_)
                    (let* ((_hd69006906_ _hd6899_)
                           (_E69026910_
                            (lambda ()
                              (error '"No clause matching" _hd69006906_)))
                           (_K69036920_
                            (lambda (_subst6913_)
                              (let ((_$e6917_
                                     (let ((_key6915_
                                            (if _subst6913_
                                                (table-ref
                                                 _subst6913_
                                                 _id6866_
                                                 '#f)
                                                '#f)))
                                       (if _key6915_
                                           (_resolve6872_
                                            _ctx6876_
                                            _src-phi6877_
                                            _key6915_)
                                           '#f))))
                                (if _$e6917_
                                    _$e6917_
                                    (_lp6874_
                                     (##structure-ref
                                      _hd6899_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd6899_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest6898_))))))
                      (if (##structure-instance-of?
                           _hd69006906_
                           'gx#expander-mark::t)
                          (let* ((_e69046923_ (##vector-ref _hd69006906_ '1))
                                 (_subst6926_ _e69046923_))
                            (_K69036920_ _subst6926_))
                          (_E69026910_))))))
            (if (##pair? _rest68796887_)
                (let ((_hd68846931_ (##car _rest68796887_))
                      (_tl68856933_ (##cdr _rest68796887_)))
                  (let* ((_hd6936_ _hd68846931_) (_rest6938_ _tl68856933_))
                    (_K68836928_ _rest6938_ _hd6936_)))
                (_else68816895_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key6742_ _val6743_ _rebind?6744_ _phi6745_ _ctx6746_)
        (letrec ((_update-binding6748_
                  (lambda (_xval6819_)
                    (if (let ((_$e6821_
                               (_rebind?6744_ _ctx6746_ _xval6819_ _val6743_)))
                          (if _$e6821_
                              _$e6821_
                              (let ((_$e6827_
                                     (if (##structure-direct-instance-of?
                                          _xval6819_
                                          'gx#import-binding::t)
                                         (let ((_$e6824_
                                                (##direct-structure-ref
                                                 _xval6819_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e6824_
                                               _$e6824_
                                               (if (##structure-instance-of?
                                                    _val6743_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val6743_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e6827_
                                    _$e6827_
                                    (if (##structure-instance-of?
                                         _xval6819_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val6743_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val6743_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval6819_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val6743_
                        (if (if (##structure-direct-instance-of?
                                 _val6743_
                                 'gx#import-binding::t)
                                (let ((_$e6830_
                                       (##direct-structure-ref
                                        _val6743_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e6830_
                                      _$e6830_
                                      (if (##structure-instance-of?
                                           _xval6819_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val6743_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval6819_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval6819_
                            (if (if (##structure-direct-instance-of?
                                     _val6743_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval6819_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key6742_
                                 (cons (##structure-ref
                                        _val6743_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val6743_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval6819_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval6819_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval6819_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval6819_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key6742_
                                 _val6743_
                                 _xval6819_))))))
                 (_gensubst6749_
                  (lambda (_subst6814_ _id6815_)
                    (let ((_eid6817_
                           (gensym (if (uninterned-symbol? _id6815_)
                                       '%
                                       _id6815_))))
                      (begin
                        (table-set! _subst6814_ _id6815_ _eid6817_)
                        _eid6817_))))
                 (_subst!6750_
                  (lambda (_key6752_)
                    (let* ((_key67536761_ _key6752_)
                           (_else67556769_ (lambda () _key6752_))
                           (_K67576802_
                            (lambda (_mark6772_ _id6773_)
                              (let* ((_mark67746780_ _mark6772_)
                                     (_E67766784_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark67746780_)))
                                     (_K67776794_
                                      (lambda (_subst6787_)
                                        (if (not _subst6787_)
                                            (let ((_subst6789_
                                                   (make-table 'test: eq?)))
                                              (begin
                                                (##structure-set!
                                                 _mark6772_
                                                 _subst6789_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst6749_
                                                 _subst6789_
                                                 _id6773_)))
                                            (let ((_$e6791_
                                                   (table-ref
                                                    _subst6787_
                                                    _id6773_
                                                    '#f)))
                                              (if _$e6791_
                                                  (values _$e6791_)
                                                  (_gensubst6749_
                                                   _subst6787_
                                                   _id6773_)))))))
                                (if (##structure-instance-of?
                                     _mark67746780_
                                     'gx#expander-mark::t)
                                    (let* ((_e67786797_
                                            (##vector-ref _mark67746780_ '1))
                                           (_subst6800_ _e67786797_))
                                      (_K67776794_ _subst6800_))
                                    (_E67766784_))))))
                      (if (##pair? _key67536761_)
                          (let ((_hd67586805_ (##car _key67536761_))
                                (_tl67596807_ (##cdr _key67536761_)))
                            (let* ((_id6810_ _hd67586805_)
                                   (_mark6812_ _tl67596807_))
                              (_K67576802_ _mark6812_ _id6810_)))
                          (_else67556769_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx6746_ _phi6745_)
           (_subst!6750_ _key6742_)
           _val6743_
           _update-binding6748_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key6836_ _val6837_)
          (let* ((_rebind?6839_ false)
                 (_phi6841_ (gx#current-expander-phi))
                 (_ctx6843_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6836_
             _val6837_
             _rebind?6839_
             _phi6841_
             _ctx6843_))))
      (define gx#core-bind!__1
        (lambda (_key6845_ _val6846_ _rebind?6847_)
          (let* ((_phi6849_ (gx#current-expander-phi))
                 (_ctx6851_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6845_
             _val6846_
             _rebind?6847_
             _phi6849_
             _ctx6851_))))
      (define gx#core-bind!__2
        (lambda (_key6853_ _val6854_ _rebind?6855_ _phi6856_)
          (let ((_ctx6858_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6853_
             _val6854_
             _rebind?6855_
             _phi6856_
             _ctx6858_))))
      (define gx#core-bind!
        (lambda _g9221_
          (let ((_g9220_ (length _g9221_)))
            (cond ((##fx= _g9220_ 2) (apply gx#core-bind!__0 _g9221_))
                  ((##fx= _g9220_ 3) (apply gx#core-bind!__1 _g9221_))
                  ((##fx= _g9220_ 4) (apply gx#core-bind!__2 _g9221_))
                  ((##fx= _g9220_ 5) (apply gx#core-bind!__% _g9221_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g9221_))))))))
  (define gx#core-identifier-key
    (lambda (_stx6676_)
      (if (symbol? _stx6676_)
          (let* ((_g66776685_ (gx#current-expander-marks))
                 (_else66796693_ (lambda () _stx6676_))
                 (_K66816698_ (lambda (_hd6696_) (cons _stx6676_ _hd6696_))))
            (if (##pair? _g66776685_)
                (let* ((_hd66826701_ (##car _g66776685_))
                       (_hd6704_ _hd66826701_))
                  (_K66816698_ _hd6704_))
                (_else66796693_)))
          (if (gx#identifier? _stx6676_)
              (let* ((_id6706_ (gx#syntax-local-unwrap _stx6676_))
                     (_eid6708_ (gx#stx-e _id6706_))
                     (_marks6710_ (gx#stx-identifier-marks _id6706_)))
                (let* ((_marks67126720_ _marks6710_)
                       (_else67146728_ (lambda () _eid6708_))
                       (_K67166733_
                        (lambda (_hd6731_) (cons _eid6708_ _hd6731_))))
                  (if (##pair? _marks67126720_)
                      (let* ((_hd67176736_ (##car _marks67126720_))
                             (_hd6739_ _hd67176736_))
                        (_K67166733_ _hd6739_))
                      (_else67146728_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx6676_)))))
  (define gx#core-context-shift
    (lambda (_ctx6621_ _phi6622_)
      (letrec ((_make-phi6624_
                (lambda (_super6674_)
                  (let ((__obj9192 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj9192
                       (gensym 'phi)
                       _super6674_)
                      __obj9192))))
               (_make-phi/up6625_
                (lambda (_ctx6669_ _super6670_)
                  (let ((_ctx+16672_ (_make-phi6624_ _super6670_)))
                    (begin
                      (##structure-set!
                       _ctx6669_
                       _ctx+16672_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+16672_
                       _ctx6669_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+16672_))))
               (_make-phi/down6626_
                (lambda (_ctx6664_ _super6665_)
                  (let ((_ctx-16667_ (_make-phi6624_ _super6665_)))
                    (begin
                      (##structure-set!
                       _ctx-16667_
                       _ctx6664_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx6664_
                       _ctx-16667_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-16667_))))
               (_shift6627_
                (lambda (_ctx6648_
                         _delta6649_
                         _make-delta-context6650_
                         _phi6651_
                         _K6652_)
                  (let ((_$e6654_
                         (##structure-ref _ctx6648_ '3 gx#phi-context::t '#f)))
                    (if _$e6654_
                        ((lambda (_super6657_)
                           (let* ((_super6659_
                                   (_K6652_ _super6657_ _delta6649_))
                                  (_ctx+d6661_
                                   (_make-delta-context6650_
                                    _ctx6648_
                                    _super6659_)))
                             (_K6652_ _ctx+d6661_
                                      (fx- _phi6651_ _delta6649_))))
                         _$e6654_)
                        (error '"Bad context" _ctx6648_))))))
        (let _K6629_ ((_ctx6631_ _ctx6621_) (_phi6632_ _phi6622_))
          (if (fxzero? _phi6632_)
              _ctx6631_
              (if (##structure-instance-of? _ctx6631_ 'gx#context-phi::t)
                  (if (fxpositive? _phi6632_)
                      (let ((_$e6634_
                             (##structure-ref
                              _ctx6631_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e6634_
                            ((lambda (_g66366638_)
                               (_K6629_ _g66366638_ (fx- _phi6632_ '1)))
                             _$e6634_)
                            (_shift6627_
                             _ctx6631_
                             '1
                             _make-phi/up6625_
                             _phi6632_
                             _K6629_)))
                      (let ((_$e6641_
                             (##structure-ref
                              _ctx6631_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e6641_
                            ((lambda (_g66436645_)
                               (_K6629_ _g66436645_ (fx+ _phi6632_ '1)))
                             _$e6641_)
                            (_shift6627_
                             _ctx6631_
                             '-1
                             _make-phi/down6626_
                             _phi6632_
                             _K6629_))))
                  _ctx6631_))))))
  (define gx#core-context-get
    (lambda (_ctx6618_ _key6619_)
      (table-ref
       (##structure-ref _ctx6618_ '2 gx#expander-context::t '#f)
       _key6619_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx6614_ _key6615_ _val6616_)
      (table-set!
       (##structure-ref _ctx6614_ '2 gx#expander-context::t '#f)
       _key6615_
       _val6616_)))
  (define gx#core-context-resolve
    (lambda (_ctx6601_ _key6602_)
      (let _lp6604_ ((_ctx6606_ _ctx6601_))
        (let ((_$e6608_ (gx#core-context-get _ctx6606_ _key6602_)))
          (if _$e6608_
              (values _$e6608_)
              (let ((_$e6611_
                     (if (##structure-instance-of?
                          _ctx6606_
                          'gx#context-phi::t)
                         (##structure-ref _ctx6606_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e6611_ (_lp6604_ _$e6611_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx6591_ _key6592_ _val6593_ _rebind6594_)
      (let ((_$e6596_ (gx#core-context-get _ctx6591_ _key6592_)))
        (if _$e6596_
            ((lambda (_xval6599_)
               (gx#core-context-put!
                _ctx6591_
                _key6592_
                (_rebind6594_ _xval6599_)))
             _$e6596_)
            (gx#core-context-put! _ctx6591_ _key6592_ _val6593_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx6569_ _stop?6570_)
        (let _lp6572_ ((_ctx6574_ _ctx6569_))
          (if (_stop?6570_ _ctx6574_)
              _ctx6574_
              (if (##structure-instance-of? _ctx6574_ 'gx#context-phi::t)
                  (_lp6572_
                   (##structure-ref _ctx6574_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx6580_ (gx#current-expander-context))
                 (_stop?6582_ gx#top-context?))
            (gx#core-context-top__% _ctx6580_ _stop?6582_))))
      (define gx#core-context-top__1
        (lambda (_ctx6584_)
          (let ((_stop?6586_ gx#top-context?))
            (gx#core-context-top__% _ctx6584_ _stop?6586_))))
      (define gx#core-context-top
        (lambda _g9223_
          (let ((_g9222_ (length _g9223_)))
            (cond ((##fx= _g9222_ 0) (apply gx#core-context-top__0 _g9223_))
                  ((##fx= _g9222_ 1) (apply gx#core-context-top__1 _g9223_))
                  ((##fx= _g9222_ 2) (apply gx#core-context-top__% _g9223_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g9223_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx6554_)
        (let _lp6556_ ((_ctx6558_ _ctx6554_))
          (if (##structure-instance-of? _ctx6558_ 'gx#context-phi::t)
              (_lp6556_ (##structure-ref _ctx6558_ '3 gx#phi-context::t '#f))
              _ctx6558_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx6564_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx6564_))))
      (define gx#core-context-root
        (lambda _g9225_
          (let ((_g9224_ (length _g9225_)))
            (cond ((##fx= _g9224_ 0) (apply gx#core-context-root__0 _g9225_))
                  ((##fx= _g9224_ 1) (apply gx#core-context-root__% _g9225_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g9225_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx6538_ . __65356539_)
        (if (##structure-instance-of? _ctx6538_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx6538_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx6538_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx6546_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx6546_))))
      (define gx#core-context-rebind?
        (lambda _g9227_
          (let ((_g9226_ (length _g9227_)))
            (cond ((##fx= _g9226_ 0)
                   (apply gx#core-context-rebind?__0 _g9227_))
                  ((##fx= _g9226_ 1)
                   (apply gx#core-context-rebind?__% _g9227_))
                  ((##fx>= _g9226_ 1)
                   (apply gx#core-context-rebind?__% _g9227_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g9227_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx6521_)
        (let ((_$e6523_ (gx#core-context-top__1 _ctx6521_)))
          (if _$e6523_
              ((lambda (_ctx6526_)
                 (if (##structure-instance-of? _ctx6526_ 'gx#module-context::t)
                     (##structure-ref _ctx6526_ '6 gx#module-context::t '#f)
                     '#f))
               _$e6523_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx6532_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx6532_))))
      (define gx#core-context-namespace
        (lambda _g9229_
          (let ((_g9228_ (length _g9229_)))
            (cond ((##fx= _g9228_ 0)
                   (apply gx#core-context-namespace__0 _g9229_))
                  ((##fx= _g9228_ 1)
                   (apply gx#core-context-namespace__% _g9229_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g9229_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind6507_ _is?6508_)
        (if (##structure-direct-instance-of? _bind6507_ 'gx#syntax-binding::t)
            (_is?6508_
             (##direct-structure-ref _bind6507_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind6513_)
          (let ((_is?6515_ gx#expander?))
            (gx#expander-binding?__% _bind6513_ _is?6515_))))
      (define gx#expander-binding?
        (lambda _g9231_
          (let ((_g9230_ (length _g9231_)))
            (cond ((##fx= _g9230_ 1) (apply gx#expander-binding?__0 _g9231_))
                  ((##fx= _g9230_ 2) (apply gx#expander-binding?__% _g9231_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g9231_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind6504_)
      (gx#expander-binding?__% _bind6504_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind6502_)
      (gx#expander-binding?__% _bind6502_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind6496_)
      (letrec ((_direct-special-form?6498_
                (lambda (_obj6500_)
                  (direct-struct-instance? gx#special-form::t _obj6500_))))
        (gx#expander-binding?__% _bind6496_ _direct-special-form?6498_))))
  (define gx#special-form-binding?
    (lambda (_bind6494_)
      (gx#expander-binding?__% _bind6494_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind6485_)
      (letrec ((_feature?6487_
                (lambda (_e6489_)
                  (let ((_$e6491_
                         (##structure-instance-of?
                          _e6489_
                          'gx#feature-expander::t)))
                    (if _$e6491_
                        _$e6491_
                        (##structure-instance-of?
                         _e6489_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind6485_ _feature?6487_))))
  (define gx#private-feature-binding?
    (lambda (_bind6483_)
      (gx#expander-binding?__% _bind6483_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id6470_ _bound?6471_)
        (if (gx#identifier? _id6470_)
            (_bound?6471_ (gx#resolve-identifier__0 _id6470_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id6476_)
          (let ((_bound?6478_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id6476_ _bound?6478_))))
      (define gx#core-bound-identifier?
        (lambda _g9233_
          (let ((_g9232_ (length _g9233_)))
            (cond ((##fx= _g9232_ 1)
                   (apply gx#core-bound-identifier?__0 _g9233_))
                  ((##fx= _g9232_ 2)
                   (apply gx#core-bound-identifier?__% _g9233_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g9233_))))))))
  (define gx#core-identifier=?
    (lambda (_x6460_ _y6461_)
      (letrec ((_y=?6463_
                (lambda (_xid6467_)
                  ((if (list? _y6461_) memq eq?) _xid6467_ _y6461_))))
        (let ((_bind6465_ (gx#resolve-identifier__0 _x6460_)))
          (if (##structure-instance-of? _bind6465_ 'gx#binding::t)
              (_y=?6463_ (##structure-ref _bind6465_ '1 gx#binding::t '#f))
              (_y=?6463_ (gx#stx-e _x6460_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e6458_)
      (if (interned-symbol? _e6458_)
          (string-index (symbol->string _e6458_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx6416_ _src6417_ _ctx6418_ _marks6419_)
        (if (gx#sealed-syntax? _stx6416_)
            (gx#stx-unwrap__0 _stx6416_)
            (if (gx#identifier? _stx6416_)
                (let ((_id6421_ (gx#syntax-local-unwrap _stx6416_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id6421_)
                   (let ((_$e6423_ (gx#stx-source _id6421_)))
                     (if _$e6423_ _$e6423_ _src6417_))
                   _ctx6418_
                   (##direct-structure-ref
                    _id6421_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx6416_)
                    (gx#stx-e _stx6416_)
                    (##structure
                     gx#syntax-quote::t
                     _stx6416_
                     (let ((_$e6426_ (gx#stx-source _stx6416_)))
                       (if _$e6426_ _$e6426_ _src6417_))
                     _ctx6418_
                     (reverse _marks6419_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx6432_)
          (let* ((_src6434_ '#f)
                 (_ctx6436_ (gx#current-expander-context))
                 (_marks6438_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6432_
             _src6434_
             _ctx6436_
             _marks6438_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx6440_ _src6441_)
          (let* ((_ctx6443_ (gx#current-expander-context))
                 (_marks6445_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6440_
             _src6441_
             _ctx6443_
             _marks6445_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx6447_ _src6448_ _ctx6449_)
          (let ((_marks6451_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6447_
             _src6448_
             _ctx6449_
             _marks6451_))))
      (define gx#core-quote-syntax
        (lambda _g9235_
          (let ((_g9234_ (length _g9235_)))
            (cond ((##fx= _g9234_ 1) (apply gx#core-quote-syntax__0 _g9235_))
                  ((##fx= _g9234_ 2) (apply gx#core-quote-syntax__1 _g9235_))
                  ((##fx= _g9234_ 3) (apply gx#core-quote-syntax__2 _g9235_))
                  ((##fx= _g9234_ 4) (apply gx#core-quote-syntax__% _g9235_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g9235_))))))))
  (define gx#core-cons
    (lambda (_hd6412_ _tl6413_)
      (cons (gx#core-quote-syntax__0 _hd6412_) _tl6413_)))
  (define gx#core-list
    (lambda (_hd6409_ . _rest6410_)
      (cons (gx#core-quote-syntax__0 _hd6409_) _rest6410_)))
  (define gx#core-cons*
    (lambda (_hd6406_ . _rest6407_)
      (apply cons* (gx#core-quote-syntax__0 _hd6406_) _rest6407_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path6380_ _rel6381_)
        (let ((_path6393_ (gx#stx-e _stx-path6380_))
              (_reldir6394_
               (let _lp6383_ ((_relsrc6385_
                               (let ((_$e6390_ (gx#stx-source _stx-path6380_)))
                                 (if _$e6390_ _$e6390_ _rel6381_))))
                 (if (##structure-instance-of? _relsrc6385_ 'gerbil#AST::t)
                     (_lp6383_
                      (let ((_$e6387_ (gx#stx-source _relsrc6385_)))
                        (if _$e6387_ _$e6387_ (gx#stx-e _relsrc6385_))))
                     (if (source-location-path? _relsrc6385_)
                         (path-directory (source-location-path _relsrc6385_))
                         (if (string? _relsrc6385_)
                             (path-directory _relsrc6385_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path6393_ (path-normalize _reldir6394_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path6399_)
          (let ((_rel6401_ '#f))
            (gx#core-resolve-path__% _stx-path6399_ _rel6401_))))
      (define gx#core-resolve-path
        (lambda _g9237_
          (let ((_g9236_ (length _g9237_)))
            (cond ((##fx= _g9236_ 1) (apply gx#core-resolve-path__0 _g9237_))
                  ((##fx= _g9236_ 2) (apply gx#core-resolve-path__% _g9237_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g9237_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr6336_ _ctx6337_)
        (let* ((_repr63386345_ _repr6336_)
               (_E63406349_
                (lambda () (error '"No clause matching" _repr63386345_)))
               (_K63416357_
                (lambda (_subs6352_ _phi6353_)
                  (let ((_subst6355_
                         (if (not (null? _subs6352_))
                             (list->table _subs6352_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst6355_
                     _ctx6337_
                     _phi6353_
                     '#f)))))
          (if (##pair? _repr63386345_)
              (let ((_hd63426360_ (##car _repr63386345_))
                    (_tl63436362_ (##cdr _repr63386345_)))
                (let* ((_phi6365_ _hd63426360_) (_subs6367_ _tl63436362_))
                  (_K63416357_ _subs6367_ _phi6365_)))
              (_E63406349_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr6372_)
          (let ((_ctx6374_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr6372_ _ctx6374_))))
      (define gx#core-deserialize-mark
        (lambda _g9239_
          (let ((_g9238_ (length _g9239_)))
            (cond ((##fx= _g9238_ 1)
                   (apply gx#core-deserialize-mark__0 _g9239_))
                  ((##fx= _g9238_ 2)
                   (apply gx#core-deserialize-mark__% _g9239_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g9239_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx6333_) (gx#stx-rewrap _stx6333_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx6331_)
      (gx#stx-unwrap__% _stx6331_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx6301_)
      (let* ((_g63026310_ (gx#current-expander-marks))
             (_else63046318_ (lambda () _stx6301_))
             (_K63066323_
              (lambda (_hd6321_) (gx#stx-apply-mark _stx6301_ _hd6321_))))
        (if (##pair? _g63026310_)
            (let* ((_hd63076326_ (##car _g63026310_)) (_hd6329_ _hd63076326_))
              (_K63066323_ _hd6329_))
            (_else63046318_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx6286_ _E6287_)
        (let ((_bind6289_ (gx#resolve-identifier__0 _stx6286_)))
          (if (##structure-direct-instance-of?
               _bind6289_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind6289_ '4 gx#syntax-binding::t '#f)
              (_E6287_ _stx6286_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx6294_)
          (let ((_E6296_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx6294_ _E6296_))))
      (define gx#syntax-local-e
        (lambda _g9241_
          (let ((_g9240_ (length _g9241_)))
            (cond ((##fx= _g9240_ 1) (apply gx#syntax-local-e__0 _g9241_))
                  ((##fx= _g9240_ 2) (apply gx#syntax-local-e__% _g9241_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g9241_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx6270_ _E6271_)
        (let ((_e6273_ (gx#syntax-local-e__% _stx6270_ _E6271_)))
          (if (##structure-instance-of? _e6273_ 'gx#expander::t)
              (##structure-ref _e6273_ '1 gx#expander::t '#f)
              _e6273_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx6278_)
          (let ((_E6280_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx6278_ _E6280_))))
      (define gx#syntax-local-value
        (lambda _g9243_
          (let ((_g9242_ (length _g9243_)))
            (cond ((##fx= _g9242_ 1) (apply gx#syntax-local-value__0 _g9243_))
                  ((##fx= _g9242_ 2) (apply gx#syntax-local-value__% _g9243_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g9243_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx6267_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx6267_))))
