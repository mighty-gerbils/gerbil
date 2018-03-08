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
    (lambda _$args7669_
      (apply make-struct-instance gx#expander-context::t _$args7669_)))
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
    (lambda _$args7666_
      (apply make-struct-instance gx#root-context::t _$args7666_)))
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
    (lambda _$args7663_
      (apply make-struct-instance gx#phi-context::t _$args7663_)))
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
    (lambda _$args7660_
      (apply make-struct-instance gx#top-context::t _$args7660_)))
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
    (lambda _$args7657_
      (apply make-struct-instance gx#module-context::t _$args7657_)))
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
    (lambda _$args7654_
      (apply make-struct-instance gx#prelude-context::t _$args7654_)))
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
    (lambda _$args7651_
      (apply make-struct-instance gx#local-context::t _$args7651_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self7635_ _id7636_ _super7637_)
        (if (##fx< '5 (##vector-length _self7635_))
            (begin
              (##vector-set! _self7635_ '1 _id7636_)
              (##vector-set! _self7635_ '2 (make-hash-table-eq))
              (##vector-set! _self7635_ '3 _super7637_)
              (##vector-set! _self7635_ '4 '#f)
              (##vector-set! _self7635_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7635_))))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self7642_ _id7643_)
          (let ((_super7645_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self7642_ _id7643_ _super7645_))))
      (define gx#phi-context:::init!
        (lambda _g7673_
          (let ((_g7672_ (length _g7673_)))
            (cond ((fx= _g7672_ 2) (apply gx#phi-context:::init!__0 _g7673_))
                  ((fx= _g7672_ 3) (apply gx#phi-context:::init!__% _g7673_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g7673_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self7499_ _super7500_)
        (if (##fx< '5 (##vector-length _self7499_))
            (begin
              (##vector-set! _self7499_ '1 (gensym 'L))
              (##vector-set! _self7499_ '2 (make-hash-table-eq))
              (##vector-set! _self7499_ '3 _super7500_)
              (##vector-set! _self7499_ '4 '#f)
              (##vector-set! _self7499_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7499_))))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self7505_)
          (let ((_super7507_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self7505_ _super7507_))))
      (define gx#local-context:::init!
        (lambda _g7675_
          (let ((_g7674_ (length _g7675_)))
            (cond ((fx= _g7674_ 1) (apply gx#local-context:::init!__0 _g7675_))
                  ((fx= _g7674_ 2) (apply gx#local-context:::init!__% _g7675_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g7675_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args7373_
      (apply make-struct-instance gx#binding::t _$args7373_)))
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
    (lambda _$args7370_
      (apply make-struct-instance gx#runtime-binding::t _$args7370_)))
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
    (lambda _$args7367_
      (apply make-struct-instance gx#local-binding::t _$args7367_)))
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
    (lambda _$args7364_
      (apply make-struct-instance gx#top-binding::t _$args7364_)))
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
    (lambda _$args7361_
      (apply make-struct-instance gx#module-binding::t _$args7361_)))
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
    (lambda _$args7358_
      (apply make-struct-instance gx#extern-binding::t _$args7358_)))
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
    (lambda _$args7355_
      (apply make-struct-instance gx#syntax-binding::t _$args7355_)))
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
    (lambda _$args7352_
      (apply make-struct-instance gx#import-binding::t _$args7352_)))
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
    (lambda _$args7349_
      (apply make-struct-instance gx#alias-binding::t _$args7349_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args7346_
      (apply make-struct-instance gx#expander::t _$args7346_)))
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
    (lambda _$args7343_
      (apply make-struct-instance gx#core-expander::t _$args7343_)))
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
    (lambda _$args7340_
      (apply make-struct-instance gx#expression-form::t _$args7340_)))
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
    (lambda _$args7337_
      (apply make-struct-instance gx#special-form::t _$args7337_)))
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
    (lambda _$args7334_
      (apply make-struct-instance gx#definition-form::t _$args7334_)))
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
    (lambda _$args7331_
      (apply make-struct-instance gx#top-special-form::t _$args7331_)))
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
    (lambda _$args7328_
      (apply make-struct-instance gx#module-special-form::t _$args7328_)))
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
    (lambda _$args7325_
      (apply make-struct-instance gx#feature-expander::t _$args7325_)))
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
    (lambda _$args7322_
      (apply make-struct-instance gx#private-feature-expander::t _$args7322_)))
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
    (lambda _$args7319_
      (apply make-struct-instance gx#reserved-expander::t _$args7319_)))
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
    (lambda _$args7316_
      (apply make-struct-instance gx#macro-expander::t _$args7316_)))
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
    (lambda _$args7313_
      (apply make-struct-instance gx#rename-macro-expander::t _$args7313_)))
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
    (lambda _$args7310_
      (apply make-struct-instance gx#user-expander::t _$args7310_)))
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
    (lambda _$args7307_
      (apply make-struct-instance gx#expander-mark::t _$args7307_)))
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
    (lambda _$args7304_
      (apply make-struct-instance gx#syntax-error::t _$args7304_)))
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
    (lambda (_where7299_ _message7300_ _stx7301_ . _details7302_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message7300_
              (cons _stx7301_ _details7302_)
              _where7299_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx7286_ _expression?7287_)
        (gx#eval-syntax* (gx#core-expand__% _stx7286_ _expression?7287_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx7292_)
          (let ((_expression?7294_ '#f))
            (gx#eval-syntax__% _stx7292_ _expression?7294_))))
      (define gx#eval-syntax
        (lambda _g7677_
          (let ((_g7676_ (length _g7677_)))
            (cond ((fx= _g7676_ 1) (apply gx#eval-syntax__0 _g7677_))
                  ((fx= _g7676_ 2) (apply gx#eval-syntax__% _g7677_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g7677_))))))))
  (define gx#eval-syntax*
    (lambda (_stx7283_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx7283_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx7270_ _expression?7271_)
        (if _expression?7271_
            (gx#core-expand-expression _stx7270_)
            (gx#core-expand-top _stx7270_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx7276_)
          (let ((_expression?7278_ '#f))
            (gx#core-expand__% _stx7276_ _expression?7278_))))
      (define gx#core-expand
        (lambda _g7679_
          (let ((_g7678_ (length _g7679_)))
            (cond ((fx= _g7678_ 1) (apply gx#core-expand__0 _g7679_))
                  ((fx= _g7678_ 2) (apply gx#core-expand__% _g7679_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g7679_))))))))
  (define gx#core-expand-top
    (lambda (_stx7237_)
      (let* ((_stx7239_ (gx#core-expand*__0 _stx7237_))
             (_e72407247_ _stx7239_)
             (_E72427251_ (lambda () (gx#core-expand-expression _stx7239_)))
             (_E72417265_
              (lambda ()
                (if (gx#stx-pair? _e72407247_)
                    (let ((_e72437255_ (gx#syntax-e _e72407247_)))
                      (let ((_hd72447258_ (##car _e72437255_))
                            (_tl72457260_ (##cdr _e72437255_)))
                        (let ((_form7263_ _hd72447258_))
                          (if (gx#core-bound-identifier?__0 _form7263_)
                              _stx7239_
                              (_E72427251_)))))
                    (_E72427251_)))))
        (_E72417265_))))
  (define gx#core-expand-expression
    (lambda (_stx7159_)
      (letrec ((_sealed-expression?7161_
                (lambda (_hd7207_)
                  (if (gx#sealed-syntax? _hd7207_)
                      (let* ((_e72087215_ _hd7207_)
                             (_E72107219_ (lambda () '#f))
                             (_E72097233_
                              (lambda ()
                                (if (gx#stx-pair? _e72087215_)
                                    (let ((_e72117223_
                                           (gx#syntax-e _e72087215_)))
                                      (let ((_hd72127226_ (##car _e72117223_))
                                            (_tl72137228_ (##cdr _e72117223_)))
                                        (let ((_form7231_ _hd72127226_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form7231_
                                               gx#expression-form-binding?)
                                              (_E72107219_)))))
                                    (_E72107219_)))))
                        (_E72097233_))
                      '#f)))
               (_illegal-expression7162_
                (lambda (_hd7205_ . _g7680_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx7159_
                   _hd7205_)))
               (_expand-e7163_
                (lambda (_form7200_ _hd7201_)
                  (let ((_bind7203_
                         (if (##structure-instance-of?
                              _form7200_
                              'gx#binding::t)
                             _form7200_
                             (gx#resolve-identifier__0 _form7200_))))
                    (if (gx#core-expander-binding? _bind7203_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind7203_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd7201_
                          (gx#stx-source _stx7159_)))
                        (if (##structure-direct-instance-of?
                             _bind7203_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind7203_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd7201_
                               (gx#stx-source _stx7159_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx7159_
                             _form7200_)))))))
        (let ((_hd7165_ (gx#core-expand-head _stx7159_)))
          (if (_sealed-expression?7161_ _hd7165_)
              _hd7165_
              (if (gx#stx-pair? _hd7165_)
                  (let* ((_e71667173_ _hd7165_)
                         (_E71687177_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e71667173_)))
                         (_E71677196_
                          (lambda ()
                            (if (gx#stx-pair? _e71667173_)
                                (let ((_e71697181_ (gx#syntax-e _e71667173_)))
                                  (let ((_hd71707184_ (##car _e71697181_))
                                        (_tl71717186_ (##cdr _e71697181_)))
                                    (let ((_form7189_ _hd71707184_))
                                      (if '#t
                                          (let ((_bind7191_
                                                 (if (gx#identifier?
                                                      _form7189_)
                                                     (gx#resolve-identifier__0
                                                      _form7189_)
                                                     '#f)))
                                            (if (let ((_$e7193_
                                                       (not _bind7191_)))
                                                  (if _$e7193_
                                                      _$e7193_
                                                      (not (gx#core-expander-binding?
                                                            _bind7191_))))
                                                (_expand-e7163_
                                                 '%%app
                                                 (cons '%%app _hd7165_))
                                                (if (eq? (##structure-ref
                                                          _bind7191_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd7165_
                                                     _illegal-expression7162_)
                                                    (if (gx#expression-form-binding?
                                                         _bind7191_)
                                                        (_expand-e7163_
                                                         _bind7191_
                                                         _hd7165_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind7191_)
                                                            (gx#core-expand-expression
                                                             (_expand-e7163_
                                                              _bind7191_
                                                              _hd7165_))
                                                            (_illegal-expression7162_
                                                             _hd7165_))))))
                                          (_E71687177_)))))
                                (_E71687177_)))))
                    (_E71677196_))
                  (if (gx#core-bound-identifier?__0 _hd7165_)
                      (_illegal-expression7162_ _hd7165_)
                      (if (gx#identifier? _hd7165_)
                          (_expand-e7163_
                           '%%ref
                           (cons '%%ref (cons _hd7165_ '())))
                          (if (gx#stx-datum? _hd7165_)
                              (_expand-e7163_
                               '%#quote
                               (cons '%#quote (cons _hd7165_ '())))
                              (_illegal-expression7162_ _hd7165_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx7154_)
      (call-with-parameters
       (lambda ()
         (let ((_stx7157_ (gx#core-expand-expression _stx7154_)))
           (values _stx7157_ (gx#eval-syntax* _stx7157_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx7135_ _stop?7136_)
        (let _lp7138_ ((_stx7140_ _stx7135_))
          (if (_stop?7136_ _stx7140_)
              _stx7140_
              (let ((_rstx7142_ (gx#core-expand1 _stx7140_)))
                (if (eq? _stx7140_ _rstx7142_)
                    _stx7140_
                    (_lp7138_ _rstx7142_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx7147_)
          (let ((_stop?7149_ false))
            (gx#core-expand*__% _stx7147_ _stop?7149_))))
      (define gx#core-expand*
        (lambda _g7682_
          (let ((_g7681_ (length _g7682_)))
            (cond ((fx= _g7681_ 1) (apply gx#core-expand*__0 _g7682_))
                  ((fx= _g7681_ 2) (apply gx#core-expand*__% _g7682_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g7682_))))))))
  (define gx#core-expand1
    (lambda (_stx7091_)
      (letrec ((_step7093_
                (lambda (_hd7130_)
                  (let ((_bind7132_ (gx#resolve-identifier__0 _hd7130_)))
                    (if (##structure-instance-of?
                         _bind7132_
                         'gx#runtime-binding::t)
                        _stx7091_
                        (if (##structure-direct-instance-of?
                             _bind7132_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind7132_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx7091_)
                            (if (not _bind7132_)
                                _stx7091_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx7091_))))))))
        (let* ((_e70947102_ _stx7091_)
               (_E71007106_ (lambda () _stx7091_))
               (_E70967112_
                (lambda ()
                  (let ((_hd7110_ _e70947102_))
                    (if (gx#identifier? _hd7110_)
                        (_step7093_ _hd7110_)
                        (_E71007106_)))))
               (_E70957126_
                (lambda ()
                  (if (gx#stx-pair? _e70947102_)
                      (let ((_e70977116_ (gx#syntax-e _e70947102_)))
                        (let ((_hd70987119_ (##car _e70977116_))
                              (_tl70997121_ (##cdr _e70977116_)))
                          (let ((_hd7124_ _hd70987119_))
                            (if (gx#identifier? _hd7124_)
                                (_step7093_ _hd7124_)
                                (_E70967112_)))))
                      (_E70967112_)))))
          (_E70957126_)))))
  (define gx#core-expand-head
    (lambda (_stx7057_)
      (letrec ((_stop?7059_
                (lambda (_stx7061_)
                  (let* ((_e70627069_ _stx7061_)
                         (_E70647073_ (lambda () '#f))
                         (_E70637087_
                          (lambda ()
                            (if (gx#stx-pair? _e70627069_)
                                (let ((_e70657077_ (gx#syntax-e _e70627069_)))
                                  (let ((_hd70667080_ (##car _e70657077_))
                                        (_tl70677082_ (##cdr _e70657077_)))
                                    (let ((_hd7085_ _hd70667080_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd7085_)
                                          (_E70647073_)))))
                                (_E70647073_)))))
                    (_E70637087_)))))
        (gx#core-expand*__% _stx7057_ _stop?7059_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx6863_ _expand-special6864_ _begin-form6865_ _expand-e6866_)
        (letrec ((_expand-splice6868_
                  (lambda (_hd7031_ _body7032_ _rest7033_ _r7034_)
                    (if (gx#stx-list? _body7032_)
                        (_K6872_ (gx#stx-foldr cons _rest7033_ _body7032_)
                                 _r7034_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx6863_
                         _hd7031_))))
                 (_expand-cond-expand6869_
                  (lambda (_hd7027_ _rest7028_ _r7029_)
                    (_K6872_ (cons (gx#core-expand-cond-expand% _hd7027_)
                                   _rest7028_)
                             _r7029_)))
                 (_expand-include6870_
                  (lambda (_hd6976_ _rest6977_ _r6978_)
                    (let* ((_e69796989_ _hd6976_)
                           (_E69816993_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e69796989_)))
                           (_E69807023_
                            (lambda ()
                              (if (gx#stx-pair? _e69796989_)
                                  (let ((_e69826997_
                                         (gx#syntax-e _e69796989_)))
                                    (let ((_hd69837000_ (##car _e69826997_))
                                          (_tl69847002_ (##cdr _e69826997_)))
                                      (if (gx#stx-pair? _tl69847002_)
                                          (let ((_e69857005_
                                                 (gx#syntax-e _tl69847002_)))
                                            (let ((_hd69867008_
                                                   (##car _e69857005_))
                                                  (_tl69877010_
                                                   (##cdr _e69857005_)))
                                              (let ((_path7013_ _hd69867008_))
                                                (if (gx#stx-null? _tl69877010_)
                                                    (if (gx#stx-string?
                                                         _path7013_)
                                                        (let* ((_rpath7015_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path7013_
                         (gx#stx-source _hd6976_)))
                       (_block7017_
                        (gx#core-expand-include%__% _hd6976_ _rpath7015_))
                       (_rbody7020_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block7017_
                            _expand-special6864_
                            '#f
                            _expand-e6866_))
                         gx#current-expander-path
                         (cons _rpath7015_ (gx#current-expander-path)))))
                  (_K6872_ _rest6977_ (foldr1 cons _r6978_ _rbody7020_)))
                (_E69816993_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69816993_)))))
                                          (_E69816993_))))
                                  (_E69816993_)))))
                      (_E69807023_))))
                 (_expand-expression6871_
                  (lambda (_hd6972_ _rest6973_ _r6974_)
                    (_K6872_ _rest6973_
                             (cons (_expand-e6866_ _hd6972_) _r6974_))))
                 (_K6872_ (lambda (_rest6902_ _r6903_)
                            (let* ((_e69046911_ _rest6902_)
                                   (_E69066915_
                                    (lambda ()
                                      (if _begin-form6865_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form6865_
                                            (reverse _r6903_))
                                           (gx#stx-source _stx6863_))
                                          _r6903_)))
                                   (_E69056968_
                                    (lambda ()
                                      (if (gx#stx-pair? _e69046911_)
                                          (let ((_e69076919_
                                                 (gx#syntax-e _e69046911_)))
                                            (let ((_hd69086922_
                                                   (##car _e69076919_))
                                                  (_tl69096924_
                                                   (##cdr _e69076919_)))
                                              (let* ((_hd6927_ _hd69086922_)
                                                     (_rest6929_ _tl69096924_))
                                                (if '#t
                                                    (let* ((_hd6931_
                                                            (gx#core-expand-head
                                                             _hd6927_))
                                                           (_e69326939_
                                                            _hd6931_)
                                                           (_E69346943_
                                                            (lambda ()
                                                              (_expand-expression6871_
                                                               _hd6931_
                                                               _rest6929_
                                                               _r6903_)))
                                                           (_E69336964_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e69326939_)
                          (let ((_e69356947_ (gx#syntax-e _e69326939_)))
                            (let ((_hd69366950_ (##car _e69356947_))
                                  (_tl69376952_ (##cdr _e69356947_)))
                              (let* ((_form6955_ _hd69366950_)
                                     (_body6957_ _tl69376952_))
                                (if '#t
                                    (let ((_bind6959_
                                           (if (gx#identifier? _form6955_)
                                               (gx#resolve-identifier__0
                                                _form6955_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind6959_)
                                          (let ((_$e6961_
                                                 (##structure-ref
                                                  _bind6959_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e6961_)
                                                (_expand-splice6868_
                                                 _hd6931_
                                                 _body6957_
                                                 _rest6929_
                                                 _r6903_)
                                                (if (eq? '%#cond-expand
                                                         _$e6961_)
                                                    (_expand-cond-expand6869_
                                                     _hd6931_
                                                     _rest6929_
                                                     _r6903_)
                                                    (if (eq? '%#include
                                                             _$e6961_)
                                                        (_expand-include6870_
                                                         _hd6931_
                                                         _rest6929_
                                                         _r6903_)
                                                        (_expand-special6864_
                                                         _hd6931_
                                                         _K6872_
                                                         _rest6929_
                                                         _r6903_)))))
                                          (_expand-expression6871_
                                           _hd6931_
                                           _rest6929_
                                           _r6903_)))
                                    (_E69346943_)))))
                          (_E69346943_)))))
              (_E69336964_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69066915_)))))
                                          (_E69066915_)))))
                              (_E69056968_)))))
          (let* ((_e68736880_ _stx6863_)
                 (_E68756884_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e68736880_)))
                 (_E68746898_
                  (lambda ()
                    (if (gx#stx-pair? _e68736880_)
                        (let ((_e68766888_ (gx#syntax-e _e68736880_)))
                          (let ((_hd68776891_ (##car _e68766888_))
                                (_tl68786893_ (##cdr _e68766888_)))
                            (let ((_body6896_ _tl68786893_))
                              (if (gx#stx-list? _body6896_)
                                  (_K6872_ _body6896_ '())
                                  (_E68756884_)))))
                        (_E68756884_)))))
            (_E68746898_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx7039_ _expand-special7040_)
          (let* ((_begin-form7042_ '%#begin)
                 (_expand-e7044_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7039_
             _expand-special7040_
             _begin-form7042_
             _expand-e7044_))))
      (define gx#core-expand-block__1
        (lambda (_stx7046_ _expand-special7047_ _begin-form7048_)
          (let ((_expand-e7050_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7046_
             _expand-special7047_
             _begin-form7048_
             _expand-e7050_))))
      (define gx#core-expand-block
        (lambda _g7684_
          (let ((_g7683_ (length _g7684_)))
            (cond ((fx= _g7683_ 2) (apply gx#core-expand-block__0 _g7684_))
                  ((fx= _g7683_ 3) (apply gx#core-expand-block__1 _g7684_))
                  ((fx= _g7683_ 4) (apply gx#core-expand-block__% _g7684_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g7684_))))))))
  (define gx#core-expand-block*
    (lambda (_stx6811_ _expand-special6812_)
      (let* ((_g68136824_
              (gx#core-expand-block__1 _stx6811_ _expand-special6812_ '#f))
             (_E68176828_
              (lambda () (error '"No clause matching" _g68136824_)))
             (_try-match68166839_
              (lambda ()
                (let* ((_K68186834_
                        (lambda (_body6832_)
                          (gx#core-quote-syntax__1
                           (gx#core-cons '%#begin (reverse _body6832_))
                           (gx#stx-source _stx6811_))))
                       (_body6837_ _g68136824_))
                  (_K68186834_ _body6837_))))
             (_try-match68156855_
              (lambda ()
                (let ((_K68196845_ (lambda (_expr6843_) _expr6843_)))
                  (if (##pair? _g68136824_)
                      (let ((_hd68206848_ (##car _g68136824_))
                            (_tl68216850_ (##cdr _g68136824_)))
                        (let ((_expr6853_ _hd68206848_))
                          (if (##null? _tl68216850_)
                              (_K68196845_ _expr6853_)
                              (_try-match68166839_))))
                      (_try-match68166839_)))))
             (_K68226859_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; empty block"
                 _stx6811_))))
        (if (##null? _g68136824_) (_K68226859_) (_try-match68156855_)))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx6669_)
      (letrec ((_satisfied?6671_
                (lambda (_condition6769_)
                  (let* ((_e67706778_ _condition6769_)
                         (_E67736782_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e67706778_)))
                         (_E67726801_
                          (lambda ()
                            (if (gx#stx-pair? _e67706778_)
                                (let ((_e67746786_ (gx#syntax-e _e67706778_)))
                                  (let ((_hd67756789_ (##car _e67746786_))
                                        (_tl67766791_ (##cdr _e67746786_)))
                                    (let* ((_combinator6794_ _hd67756789_)
                                           (_body6796_ _tl67766791_))
                                      (if (gx#stx-list? _body6796_)
                                          (let ((_$e6798_
                                                 (gx#stx-e _combinator6794_)))
                                            (if (eq? 'not _$e6798_)
                                                (not (gx#stx-ormap
                                                      _satisfied?6671_
                                                      _body6796_))
                                                (if (eq? 'and _$e6798_)
                                                    (gx#stx-andmap
                                                     _satisfied?6671_
                                                     _body6796_)
                                                    (if (eq? 'or _$e6798_)
                                                        (gx#stx-ormap
                                                         _satisfied?6671_
                                                         _body6796_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e6798_)
                    (gx#stx-andmap gx#core-resolve-identifier _body6796_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx6669_
                     _combinator6794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E67736782_)))))
                                (_E67736782_))))
                         (_E67716807_
                          (lambda ()
                            (let ((_id6805_ _e67706778_))
                              (if (gx#identifier? _id6805_)
                                  (gx#core-bound-identifier?__%
                                   _id6805_
                                   gx#feature-binding?)
                                  (_E67726801_))))))
                    (_E67716807_))))
               (_loop6672_
                (lambda (_rest6702_)
                  (let* ((_e67036711_ _rest6702_)
                         (_E67096715_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e67036711_)))
                         (_E67056719_
                          (lambda ()
                            (if (gx#stx-null? _e67036711_)
                                (if '#t '() (_E67096715_))
                                (_E67096715_))))
                         (_E67046765_
                          (lambda ()
                            (if (gx#stx-pair? _e67036711_)
                                (let ((_e67066723_ (gx#syntax-e _e67036711_)))
                                  (let ((_hd67076726_ (##car _e67066723_))
                                        (_tl67086728_ (##cdr _e67066723_)))
                                    (let* ((_hd6731_ _hd67076726_)
                                           (_rest6733_ _tl67086728_))
                                      (if '#t
                                          (let* ((_e67346741_ _hd6731_)
                                                 (_E67366745_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e67346741_)))
                                                 (_E67356761_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e67346741_)
                                                        (let ((_e67376749_
                                                               (gx#syntax-e
                                                                _e67346741_)))
                                                          (let ((_hd67386752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e67376749_))
                        (_tl67396754_ (##cdr _e67376749_)))
                    (let* ((_condition6757_ _hd67386752_)
                           (_body6759_ _tl67396754_))
                      (if '#t
                          (if (gx#stx-eq? _condition6757_ 'else)
                              (if (gx#stx-null? _rest6733_)
                                  _body6759_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx6669_
                                   _hd6731_))
                              (if (_satisfied?6671_ _condition6757_)
                                  _body6759_
                                  (_loop6672_ _rest6733_)))
                          (_E67366745_)))))
                (_E67366745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67356761_))
                                          (_E67056719_)))))
                                (_E67056719_)))))
                    (_E67046765_)))))
        (let* ((_e66736680_ _stx6669_)
               (_E66756684_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e66736680_)))
               (_E66746698_
                (lambda ()
                  (if (gx#stx-pair? _e66736680_)
                      (let ((_e66766688_ (gx#syntax-e _e66736680_)))
                        (let ((_hd66776691_ (##car _e66766688_))
                              (_tl66786693_ (##cdr _e66766688_)))
                          (let ((_clauses6696_ _tl66786693_))
                            (if (gx#stx-list? _clauses6696_)
                                (gx#core-cons
                                 'begin
                                 (_loop6672_ _clauses6696_))
                                (_E66756684_)))))
                      (_E66756684_)))))
          (_E66746698_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx6612_ _rpath6613_)
        (let* ((_e66146624_ _stx6612_)
               (_E66166628_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e66146624_)))
               (_E66156655_
                (lambda ()
                  (if (gx#stx-pair? _e66146624_)
                      (let ((_e66176632_ (gx#syntax-e _e66146624_)))
                        (let ((_hd66186635_ (##car _e66176632_))
                              (_tl66196637_ (##cdr _e66176632_)))
                          (if (gx#stx-pair? _tl66196637_)
                              (let ((_e66206640_ (gx#syntax-e _tl66196637_)))
                                (let ((_hd66216643_ (##car _e66206640_))
                                      (_tl66226645_ (##cdr _e66206640_)))
                                  (let ((_path6648_ _hd66216643_))
                                    (if (gx#stx-null? _tl66226645_)
                                        (if (gx#stx-string? _path6648_)
                                            (let ((_rpath6653_
                                                   (let ((_$e6650_
                                                          _rpath6613_))
                                                     (if _$e6650_
                                                         _$e6650_
                                                         (gx#core-resolve-path__%
                                                          _path6648_
                                                          (gx#stx-source
                                                           _stx6612_))))))
                                              (if (member _rpath6653_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx6612_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath6653_))
                                                    (gx#stx-source
                                                     _stx6612_)))))
                                            (_E66166628_))
                                        (_E66166628_)))))
                              (_E66166628_))))
                      (_E66166628_)))))
          (_E66156655_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx6662_)
          (let ((_rpath6664_ '#f))
            (gx#core-expand-include%__% _stx6662_ _rpath6664_))))
      (define gx#core-expand-include%
        (lambda _g7686_
          (let ((_g7685_ (length _g7686_)))
            (cond ((fx= _g7685_ 1) (apply gx#core-expand-include%__0 _g7686_))
                  ((fx= _g7685_ 2) (apply gx#core-expand-include%__% _g7686_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g7686_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K6581_ _stx6582_ _method6583_)
        (if (procedure? _K6581_)
            (let ((_$e6585_ (gx#stx-source _stx6582_)))
              (if _$e6585_
                  ((lambda (_g65876589_)
                     (gx#stx-wrap-source (_K6581_ _stx6582_) _g65876589_))
                   _$e6585_)
                  (_K6581_ _stx6582_)))
            (let ((_$e6592_ (bound-method-ref _K6581_ _method6583_)))
              (if _$e6592_
                  ((lambda (_g65946596_)
                     (gx#core-apply-expander__%
                      _g65946596_
                      _stx6582_
                      _method6583_))
                   _$e6592_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx6582_
                   _method6583_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K6602_ _stx6603_)
          (let ((_method6605_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K6602_ _stx6603_ _method6605_))))
      (define gx#core-apply-expander
        (lambda _g7688_
          (let ((_g7687_ (length _g7688_)))
            (cond ((fx= _g7687_ 2) (apply gx#core-apply-expander__0 _g7688_))
                  ((fx= _g7687_ 3) (apply gx#core-apply-expander__% _g7688_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g7688_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self6577_ _stx6578_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx6578_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self6430_ _stx6431_)
      (let* ((_self64326438_ _self6430_)
             (_E64346442_
              (lambda () (error '"No clause matching" _self64326438_)))
             (_K64356447_
              (lambda (_K6445_)
                (gx#core-apply-expander__0 _K6445_ _stx6431_))))
        (if (##structure-instance-of?
             _self64326438_
             (##type-id gx#macro-expander::t))
            (let* ((_e64366450_ (##vector-ref _self64326438_ '1))
                   (_K6453_ _e64366450_))
              (_K64356447_ _K6453_))
            (_E64346442_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self6283_ _stx6284_)
      (if (gx#sealed-syntax? _stx6284_)
          _stx6284_
          (let* ((_self62856291_ _self6283_)
                 (_E62876295_
                  (lambda () (error '"No clause matching" _self62856291_)))
                 (_K62886300_
                  (lambda (_K6298_)
                    (gx#core-apply-expander__0 _K6298_ _stx6284_))))
            (if (##structure-instance-of?
                 _self62856291_
                 (##type-id gx#core-expander::t))
                (let* ((_e62896303_ (##vector-ref _self62856291_ '1))
                       (_K6306_ _e62896303_))
                  (_K62886300_ _K6306_))
                (_E62876295_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self6145_ _stx6146_ _top?6147_)
        (if (_top?6147_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self6145_ _stx6146_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx6146_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self6152_ _stx6153_)
          (let ((_top?6155_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self6152_
             _stx6153_
             _top?6155_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g7690_
          (let ((_g7689_ (length _g7690_)))
            (cond ((fx= _g7689_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g7690_))
                  ((fx= _g7689_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g7690_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g7690_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self6019_ _stx6020_)
      (gx#top-special-form::apply-macro-expander__%
       _self6019_
       _stx6020_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self5844_ _stx5845_)
      (let* ((_self58465852_ _self5844_)
             (_E58485856_
              (lambda () (error '"No clause matching" _self58465852_)))
             (_K58495889_
              (lambda (_id5859_)
                (let* ((_e58605867_ _stx5845_)
                       (_E58625871_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e58605867_)))
                       (_E58615885_
                        (lambda ()
                          (if (gx#stx-pair? _e58605867_)
                              (let ((_e58635875_ (gx#syntax-e _e58605867_)))
                                (let ((_hd58645878_ (##car _e58635875_))
                                      (_tl58655880_ (##cdr _e58635875_)))
                                  (let ((_body5883_ _tl58655880_))
                                    (if '#t
                                        (gx#core-cons _id5859_ _body5883_)
                                        (_E58625871_)))))
                              (_E58625871_)))))
                  (_E58615885_)))))
        (if (##structure-instance-of?
             _self58465852_
             (##type-id gx#rename-macro-expander::t))
            (let* ((_e58505892_ (##vector-ref _self58465852_ '1))
                   (_id5895_ _e58505892_))
              (_K58495889_ _id5895_))
            (_E58485856_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self5670_ _stx5671_ _method5672_)
        (let* ((_self56735681_ _self5670_)
               (_E56755685_
                (lambda () (error '"No clause matching" _self56735681_)))
               (_K56765692_
                (lambda (_phi5688_ _ctx5689_ _K5690_)
                  (gx#core-apply-user-macro
                   _K5690_
                   _stx5671_
                   _ctx5689_
                   _phi5688_
                   _method5672_))))
          (if (##structure-instance-of?
               _self56735681_
               (##type-id gx#user-expander::t))
              (let* ((_e56775695_ (##vector-ref _self56735681_ '1))
                     (_K5698_ _e56775695_)
                     (_e56785700_ (##vector-ref _self56735681_ '2))
                     (_ctx5703_ _e56785700_)
                     (_e56795705_ (##vector-ref _self56735681_ '3))
                     (_phi5708_ _e56795705_))
                (_K56765692_ _phi5708_ _ctx5703_ _K5698_))
              (_E56755685_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self5713_ _stx5714_)
          (let ((_method5716_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self5713_
             _stx5714_
             _method5716_))))
      (define gx#core-apply-user-expander
        (lambda _g7692_
          (let ((_g7691_ (length _g7692_)))
            (cond ((fx= _g7691_ 2)
                   (apply gx#core-apply-user-expander__0 _g7692_))
                  ((fx= _g7691_ 3)
                   (apply gx#core-apply-user-expander__% _g7692_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g7692_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K5660_ _stx5661_ _ctx5662_ _phi5663_ _method5664_)
      (let ((_mark5666_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx5662_
              _phi5663_
              _stx5661_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K5660_
             (gx#stx-apply-mark _stx5661_ _mark5666_)
             _method5664_)
            _mark5666_))
         gx#current-expander-marks
         (cons _mark5666_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx5511_ _phi5512_ _ctx5513_)
        (let _lp5515_ ((_bind5517_
                        (gx#core-resolve-identifier__%
                         _stx5511_
                         _phi5512_
                         _ctx5513_)))
          (if (##structure-direct-instance-of?
               _bind5517_
               'gx#import-binding::t)
              (_lp5515_
               (##direct-structure-ref _bind5517_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind5517_
                   'gx#alias-binding::t)
                  (_lp5515_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind5517_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi5512_
                    _ctx5513_))
                  _bind5517_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx5522_)
          (let* ((_phi5524_ (gx#current-expander-phi))
                 (_ctx5526_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5522_ _phi5524_ _ctx5526_))))
      (define gx#resolve-identifier__1
        (lambda (_stx5528_ _phi5529_)
          (let ((_ctx5531_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5528_ _phi5529_ _ctx5531_))))
      (define gx#resolve-identifier
        (lambda _g7694_
          (let ((_g7693_ (length _g7694_)))
            (cond ((fx= _g7693_ 1) (apply gx#resolve-identifier__0 _g7694_))
                  ((fx= _g7693_ 2) (apply gx#resolve-identifier__1 _g7694_))
                  ((fx= _g7693_ 3) (apply gx#resolve-identifier__% _g7694_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g7694_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx5469_ _val5470_ _rebind?5471_ _phi5472_ _ctx5473_)
        (let ((_rebind?5475_
               (if (not _rebind?5471_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?5471_) _rebind?5471_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx5469_)
           _val5470_
           _rebind?5475_
           _phi5472_
           _ctx5473_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx5480_ _val5481_)
          (let* ((_rebind?5483_ '#f)
                 (_phi5485_ (gx#current-expander-phi))
                 (_ctx5487_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5480_
             _val5481_
             _rebind?5483_
             _phi5485_
             _ctx5487_))))
      (define gx#bind-identifier!__1
        (lambda (_stx5489_ _val5490_ _rebind?5491_)
          (let* ((_phi5493_ (gx#current-expander-phi))
                 (_ctx5495_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5489_
             _val5490_
             _rebind?5491_
             _phi5493_
             _ctx5495_))))
      (define gx#bind-identifier!__2
        (lambda (_stx5497_ _val5498_ _rebind?5499_ _phi5500_)
          (let ((_ctx5502_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5497_
             _val5498_
             _rebind?5499_
             _phi5500_
             _ctx5502_))))
      (define gx#bind-identifier!
        (lambda _g7696_
          (let ((_g7695_ (length _g7696_)))
            (cond ((fx= _g7695_ 2) (apply gx#bind-identifier!__0 _g7696_))
                  ((fx= _g7695_ 3) (apply gx#bind-identifier!__1 _g7696_))
                  ((fx= _g7695_ 4) (apply gx#bind-identifier!__2 _g7696_))
                  ((fx= _g7695_ 5) (apply gx#bind-identifier!__% _g7696_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g7696_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx5441_ _phi5442_ _ctx5443_)
        (let _lp5445_ ((_e5447_ _stx5441_)
                       (_marks5448_ (gx#current-expander-marks)))
          (if (symbol? _e5447_)
              (gx#core-resolve-binding
               _e5447_
               _phi5442_
               _phi5442_
               _ctx5443_
               (reverse _marks5448_))
              (if (gx#identifier-quote? _e5447_)
                  (gx#core-resolve-binding
                   (##structure-ref _e5447_ '1 AST::t '#f)
                   _phi5442_
                   '0
                   (##direct-structure-ref _e5447_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e5447_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e5447_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e5447_ '1 AST::t '#f)
                       _phi5442_
                       _phi5442_
                       _ctx5443_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e5447_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks5448_))
                      (if (##structure-direct-instance-of?
                           _e5447_
                           'gx#syntax-wrap::t)
                          (_lp5445_
                           (##structure-ref _e5447_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e5447_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks5448_))
                          (if (##structure-instance-of? _e5447_ 'gerbil#AST::t)
                              (_lp5445_
                               (##structure-ref _e5447_ '1 AST::t '#f)
                               _marks5448_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx5441_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx5453_)
          (let* ((_phi5455_ (gx#current-expander-phi))
                 (_ctx5457_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5453_ _phi5455_ _ctx5457_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx5459_ _phi5460_)
          (let ((_ctx5462_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5459_ _phi5460_ _ctx5462_))))
      (define gx#core-resolve-identifier
        (lambda _g7698_
          (let ((_g7697_ (length _g7698_)))
            (cond ((fx= _g7697_ 1)
                   (apply gx#core-resolve-identifier__0 _g7698_))
                  ((fx= _g7697_ 2)
                   (apply gx#core-resolve-identifier__1 _g7698_))
                  ((fx= _g7697_ 3)
                   (apply gx#core-resolve-identifier__% _g7698_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g7698_))))))))
  (define gx#core-resolve-binding
    (lambda (_id5354_ _phi5355_ _src-phi5356_ _ctx5357_ _marks5358_)
      (letrec ((_resolve5360_
                (lambda (_ctx5428_ _src-phi5429_ _key5430_)
                  (let _lp5432_ ((_ctx5434_
                                  (gx#core-context-shift _ctx5428_ _phi5355_))
                                 (_dphi5435_ (fx- _phi5355_ _src-phi5429_)))
                    (let ((_$e5437_
                           (gx#core-context-resolve _ctx5434_ _key5430_)))
                      (if _$e5437_
                          (values _$e5437_)
                          (if (fxzero? _dphi5435_)
                              '#f
                              (if (fxpositive? _dphi5435_)
                                  (_lp5432_
                                   (gx#core-context-shift _ctx5434_ '-1)
                                   (fx- _dphi5435_ '1))
                                  (if (fxnegative? _dphi5435_)
                                      (_lp5432_
                                       (gx#core-context-shift _ctx5434_ '1)
                                       (fx+ _dphi5435_ '1))
                                      '#!void)))))))))
        (let _lp5362_ ((_ctx5364_ _ctx5357_)
                       (_src-phi5365_ _src-phi5356_)
                       (_rest5366_ _marks5358_))
          (let* ((_rest53675375_ _rest5366_)
                 (_E53705379_
                  (lambda () (error '"No clause matching" _rest53675375_)))
                 (_else53695383_
                  (lambda () (_resolve5360_ _ctx5364_ _src-phi5365_ _id5354_)))
                 (_K53715416_
                  (lambda (_rest5386_ _hd5387_)
                    (let* ((_hd53885394_ _hd5387_)
                           (_E53905398_
                            (lambda ()
                              (error '"No clause matching" _hd53885394_)))
                           (_K53915408_
                            (lambda (_subst5401_)
                              (let ((_$e5405_
                                     (let ((_key5403_
                                            (if _subst5401_
                                                (table-ref
                                                 _subst5401_
                                                 _id5354_
                                                 '#f)
                                                '#f)))
                                       (if _key5403_
                                           (_resolve5360_
                                            _ctx5364_
                                            _src-phi5365_
                                            _key5403_)
                                           '#f))))
                                (if _$e5405_
                                    _$e5405_
                                    (_lp5362_
                                     (##structure-ref
                                      _hd5387_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd5387_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest5386_))))))
                      (if (##structure-instance-of?
                           _hd53885394_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e53925411_ (##vector-ref _hd53885394_ '1))
                                 (_subst5414_ _e53925411_))
                            (_K53915408_ _subst5414_))
                          (_E53905398_))))))
            (if (##pair? _rest53675375_)
                (let ((_hd53725419_ (##car _rest53675375_))
                      (_tl53735421_ (##cdr _rest53675375_)))
                  (let* ((_hd5424_ _hd53725419_) (_rest5426_ _tl53735421_))
                    (_K53715416_ _rest5426_ _hd5424_)))
                (_else53695383_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key5230_ _val5231_ _rebind?5232_ _phi5233_ _ctx5234_)
        (letrec ((_update-binding5236_
                  (lambda (_xval5307_)
                    (if (let ((_$e5309_
                               (_rebind?5232_ _ctx5234_ _xval5307_ _val5231_)))
                          (if _$e5309_
                              _$e5309_
                              (let ((_$e5315_
                                     (if (##structure-direct-instance-of?
                                          _xval5307_
                                          'gx#import-binding::t)
                                         (let ((_$e5312_
                                                (##direct-structure-ref
                                                 _xval5307_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e5312_
                                               _$e5312_
                                               (if (##structure-instance-of?
                                                    _val5231_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val5231_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e5315_
                                    _$e5315_
                                    (if (##structure-instance-of?
                                         _xval5307_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val5231_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val5231_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval5307_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val5231_
                        (if (if (##structure-direct-instance-of?
                                 _val5231_
                                 'gx#import-binding::t)
                                (let ((_$e5318_
                                       (##direct-structure-ref
                                        _val5231_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e5318_
                                      _$e5318_
                                      (if (##structure-instance-of?
                                           _xval5307_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val5231_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval5307_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval5307_
                            (if (if (##structure-direct-instance-of?
                                     _val5231_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval5307_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key5230_
                                 (cons (##structure-ref
                                        _val5231_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val5231_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval5307_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval5307_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval5307_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval5307_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key5230_
                                 _val5231_
                                 _xval5307_))))))
                 (_gensubst5237_
                  (lambda (_subst5302_ _id5303_)
                    (let ((_eid5305_
                           (gensym (if (uninterned-symbol? _id5303_)
                                       '%
                                       _id5303_))))
                      (begin
                        (table-set! _subst5302_ _id5303_ _eid5305_)
                        _eid5305_))))
                 (_subst!5238_
                  (lambda (_key5240_)
                    (let* ((_key52415249_ _key5240_)
                           (_E52445253_
                            (lambda ()
                              (error '"No clause matching" _key52415249_)))
                           (_else52435257_ (lambda () _key5240_))
                           (_K52455290_
                            (lambda (_mark5260_ _id5261_)
                              (let* ((_mark52625268_ _mark5260_)
                                     (_E52645272_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark52625268_)))
                                     (_K52655282_
                                      (lambda (_subst5275_)
                                        (if (not _subst5275_)
                                            (let ((_subst5277_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark5260_
                                                 _subst5277_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst5237_
                                                 _subst5277_
                                                 _id5261_)))
                                            (let ((_$e5279_
                                                   (table-ref
                                                    _subst5275_
                                                    _id5261_
                                                    '#f)))
                                              (if _$e5279_
                                                  (values _$e5279_)
                                                  (_gensubst5237_
                                                   _subst5275_
                                                   _id5261_)))))))
                                (if (##structure-instance-of?
                                     _mark52625268_
                                     (##type-id gx#expander-mark::t))
                                    (let* ((_e52665285_
                                            (##vector-ref _mark52625268_ '1))
                                           (_subst5288_ _e52665285_))
                                      (_K52655282_ _subst5288_))
                                    (_E52645272_))))))
                      (if (##pair? _key52415249_)
                          (let ((_hd52465293_ (##car _key52415249_))
                                (_tl52475295_ (##cdr _key52415249_)))
                            (let* ((_id5298_ _hd52465293_)
                                   (_mark5300_ _tl52475295_))
                              (_K52455290_ _mark5300_ _id5298_)))
                          (_else52435257_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx5234_ _phi5233_)
           (_subst!5238_ _key5230_)
           _val5231_
           _update-binding5236_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key5324_ _val5325_)
          (let* ((_rebind?5327_ false)
                 (_phi5329_ (gx#current-expander-phi))
                 (_ctx5331_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5324_
             _val5325_
             _rebind?5327_
             _phi5329_
             _ctx5331_))))
      (define gx#core-bind!__1
        (lambda (_key5333_ _val5334_ _rebind?5335_)
          (let* ((_phi5337_ (gx#current-expander-phi))
                 (_ctx5339_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5333_
             _val5334_
             _rebind?5335_
             _phi5337_
             _ctx5339_))))
      (define gx#core-bind!__2
        (lambda (_key5341_ _val5342_ _rebind?5343_ _phi5344_)
          (let ((_ctx5346_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5341_
             _val5342_
             _rebind?5343_
             _phi5344_
             _ctx5346_))))
      (define gx#core-bind!
        (lambda _g7700_
          (let ((_g7699_ (length _g7700_)))
            (cond ((fx= _g7699_ 2) (apply gx#core-bind!__0 _g7700_))
                  ((fx= _g7699_ 3) (apply gx#core-bind!__1 _g7700_))
                  ((fx= _g7699_ 4) (apply gx#core-bind!__2 _g7700_))
                  ((fx= _g7699_ 5) (apply gx#core-bind!__% _g7700_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g7700_))))))))
  (define gx#core-identifier-key
    (lambda (_stx5160_)
      (if (symbol? _stx5160_)
          (let* ((_g51615169_ (gx#current-expander-marks))
                 (_E51645173_
                  (lambda () (error '"No clause matching" _g51615169_)))
                 (_else51635177_ (lambda () _stx5160_))
                 (_K51655182_ (lambda (_hd5180_) (cons _stx5160_ _hd5180_))))
            (if (##pair? _g51615169_)
                (let ((_hd51665185_ (##car _g51615169_))
                      (_tl51675187_ (##cdr _g51615169_)))
                  (let ((_hd5190_ _hd51665185_)) (_K51655182_ _hd5190_)))
                (_else51635177_)))
          (if (gx#identifier? _stx5160_)
              (let* ((_id5192_ (gx#syntax-local-unwrap _stx5160_))
                     (_eid5194_ (gx#stx-e _id5192_))
                     (_marks5196_ (gx#stx-identifier-marks _id5192_)))
                (let* ((_marks51985206_ _marks5196_)
                       (_E52015210_
                        (lambda ()
                          (error '"No clause matching" _marks51985206_)))
                       (_else52005214_ (lambda () _eid5194_))
                       (_K52025219_
                        (lambda (_hd5217_) (cons _eid5194_ _hd5217_))))
                  (if (##pair? _marks51985206_)
                      (let ((_hd52035222_ (##car _marks51985206_))
                            (_tl52045224_ (##cdr _marks51985206_)))
                        (let ((_hd5227_ _hd52035222_)) (_K52025219_ _hd5227_)))
                      (_else52005214_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx5160_)))))
  (define gx#core-context-shift
    (lambda (_ctx5105_ _phi5106_)
      (letrec ((_make-phi5108_
                (lambda (_super5158_)
                  (let ((__obj7671 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj7671
                       (gensym 'phi)
                       _super5158_)
                      __obj7671))))
               (_make-phi/up5109_
                (lambda (_ctx5153_ _super5154_)
                  (let ((_ctx+15156_ (_make-phi5108_ _super5154_)))
                    (begin
                      (##structure-set!
                       _ctx5153_
                       _ctx+15156_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+15156_
                       _ctx5153_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+15156_))))
               (_make-phi/down5110_
                (lambda (_ctx5148_ _super5149_)
                  (let ((_ctx-15151_ (_make-phi5108_ _super5149_)))
                    (begin
                      (##structure-set!
                       _ctx-15151_
                       _ctx5148_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx5148_
                       _ctx-15151_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-15151_))))
               (_shift5111_
                (lambda (_ctx5132_
                         _delta5133_
                         _make-delta-context5134_
                         _phi5135_
                         _K5136_)
                  (let ((_$e5138_
                         (##structure-ref _ctx5132_ '3 gx#phi-context::t '#f)))
                    (if _$e5138_
                        ((lambda (_super5141_)
                           (let* ((_super5143_
                                   (_K5136_ _super5141_ _delta5133_))
                                  (_ctx+d5145_
                                   (_make-delta-context5134_
                                    _ctx5132_
                                    _super5143_)))
                             (_K5136_ _ctx+d5145_
                                      (fx- _phi5135_ _delta5133_))))
                         _$e5138_)
                        (error '"Bad context" _ctx5132_))))))
        (let _K5113_ ((_ctx5115_ _ctx5105_) (_phi5116_ _phi5106_))
          (if (fxzero? _phi5116_)
              _ctx5115_
              (if (##structure-instance-of? _ctx5115_ 'gx#context-phi::t)
                  (if (fxpositive? _phi5116_)
                      (let ((_$e5118_
                             (##structure-ref
                              _ctx5115_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e5118_
                            ((lambda (_g51205122_)
                               (_K5113_ _g51205122_ (fx- _phi5116_ '1)))
                             _$e5118_)
                            (_shift5111_
                             _ctx5115_
                             '1
                             _make-phi/up5109_
                             _phi5116_
                             _K5113_)))
                      (let ((_$e5125_
                             (##structure-ref
                              _ctx5115_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e5125_
                            ((lambda (_g51275129_)
                               (_K5113_ _g51275129_ (fx+ _phi5116_ '1)))
                             _$e5125_)
                            (_shift5111_
                             _ctx5115_
                             '-1
                             _make-phi/down5110_
                             _phi5116_
                             _K5113_))))
                  _ctx5115_))))))
  (define gx#core-context-get
    (lambda (_ctx5102_ _key5103_)
      (table-ref
       (##structure-ref _ctx5102_ '2 gx#expander-context::t '#f)
       _key5103_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx5098_ _key5099_ _val5100_)
      (table-set!
       (##structure-ref _ctx5098_ '2 gx#expander-context::t '#f)
       _key5099_
       _val5100_)))
  (define gx#core-context-resolve
    (lambda (_ctx5085_ _key5086_)
      (let _lp5088_ ((_ctx5090_ _ctx5085_))
        (let ((_$e5092_ (gx#core-context-get _ctx5090_ _key5086_)))
          (if _$e5092_
              (values _$e5092_)
              (let ((_$e5095_
                     (if (##structure-instance-of?
                          _ctx5090_
                          'gx#context-phi::t)
                         (##structure-ref _ctx5090_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e5095_ (_lp5088_ _$e5095_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx5075_ _key5076_ _val5077_ _rebind5078_)
      (let ((_$e5080_ (gx#core-context-get _ctx5075_ _key5076_)))
        (if _$e5080_
            ((lambda (_xval5083_)
               (gx#core-context-put!
                _ctx5075_
                _key5076_
                (_rebind5078_ _xval5083_)))
             _$e5080_)
            (gx#core-context-put! _ctx5075_ _key5076_ _val5077_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx5053_ _stop?5054_)
        (let _lp5056_ ((_ctx5058_ _ctx5053_))
          (if (_stop?5054_ _ctx5058_)
              _ctx5058_
              (if (##structure-instance-of? _ctx5058_ 'gx#context-phi::t)
                  (_lp5056_
                   (##structure-ref _ctx5058_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx5064_ (gx#current-expander-context))
                 (_stop?5066_ gx#top-context?))
            (gx#core-context-top__% _ctx5064_ _stop?5066_))))
      (define gx#core-context-top__1
        (lambda (_ctx5068_)
          (let ((_stop?5070_ gx#top-context?))
            (gx#core-context-top__% _ctx5068_ _stop?5070_))))
      (define gx#core-context-top
        (lambda _g7702_
          (let ((_g7701_ (length _g7702_)))
            (cond ((fx= _g7701_ 0) (apply gx#core-context-top__0 _g7702_))
                  ((fx= _g7701_ 1) (apply gx#core-context-top__1 _g7702_))
                  ((fx= _g7701_ 2) (apply gx#core-context-top__% _g7702_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g7702_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx5038_)
        (let _lp5040_ ((_ctx5042_ _ctx5038_))
          (if (##structure-instance-of? _ctx5042_ 'gx#context-phi::t)
              (_lp5040_ (##structure-ref _ctx5042_ '3 gx#phi-context::t '#f))
              _ctx5042_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx5048_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx5048_))))
      (define gx#core-context-root
        (lambda _g7704_
          (let ((_g7703_ (length _g7704_)))
            (cond ((fx= _g7703_ 0) (apply gx#core-context-root__0 _g7704_))
                  ((fx= _g7703_ 1) (apply gx#core-context-root__% _g7704_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g7704_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx5022_ . __50195023_)
        (if (##structure-instance-of? _ctx5022_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx5022_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx5022_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx5030_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx5030_))))
      (define gx#core-context-rebind?
        (lambda _g7706_
          (let ((_g7705_ (length _g7706_)))
            (cond ((fx= _g7705_ 0) (apply gx#core-context-rebind?__0 _g7706_))
                  ((fx= _g7705_ 1) (apply gx#core-context-rebind?__% _g7706_))
                  ((fx>= _g7705_ 1) (apply gx#core-context-rebind?__% _g7706_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g7706_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx5005_)
        (let ((_$e5007_ (gx#core-context-top__1 _ctx5005_)))
          (if _$e5007_
              ((lambda (_ctx5010_)
                 (if (##structure-instance-of? _ctx5010_ 'gx#module-context::t)
                     (##structure-ref _ctx5010_ '6 gx#module-context::t '#f)
                     '#f))
               _$e5007_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx5016_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx5016_))))
      (define gx#core-context-namespace
        (lambda _g7708_
          (let ((_g7707_ (length _g7708_)))
            (cond ((fx= _g7707_ 0)
                   (apply gx#core-context-namespace__0 _g7708_))
                  ((fx= _g7707_ 1)
                   (apply gx#core-context-namespace__% _g7708_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g7708_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind4991_ _is?4992_)
        (if (##structure-direct-instance-of? _bind4991_ 'gx#syntax-binding::t)
            (_is?4992_
             (##direct-structure-ref _bind4991_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4997_)
          (let ((_is?4999_ gx#expander?))
            (gx#expander-binding?__% _bind4997_ _is?4999_))))
      (define gx#expander-binding?
        (lambda _g7710_
          (let ((_g7709_ (length _g7710_)))
            (cond ((fx= _g7709_ 1) (apply gx#expander-binding?__0 _g7710_))
                  ((fx= _g7709_ 2) (apply gx#expander-binding?__% _g7710_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g7710_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4988_)
      (gx#expander-binding?__% _bind4988_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4986_)
      (gx#expander-binding?__% _bind4986_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4980_)
      (letrec ((_direct-special-form?4982_
                (lambda (_obj4984_)
                  (##structure-direct-instance-of?
                   _obj4984_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__% _bind4980_ _direct-special-form?4982_))))
  (define gx#special-form-binding?
    (lambda (_bind4978_)
      (gx#expander-binding?__% _bind4978_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4969_)
      (letrec ((_feature?4971_
                (lambda (_e4973_)
                  (let ((_$e4975_
                         (##structure-instance-of?
                          _e4973_
                          'gx#feature-expander::t)))
                    (if _$e4975_
                        _$e4975_
                        (##structure-instance-of?
                         _e4973_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind4969_ _feature?4971_))))
  (define gx#private-feature-binding?
    (lambda (_bind4967_)
      (gx#expander-binding?__% _bind4967_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id4954_ _bound?4955_)
        (if (gx#identifier? _id4954_)
            (_bound?4955_ (gx#resolve-identifier__0 _id4954_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4960_)
          (let ((_bound?4962_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id4960_ _bound?4962_))))
      (define gx#core-bound-identifier?
        (lambda _g7712_
          (let ((_g7711_ (length _g7712_)))
            (cond ((fx= _g7711_ 1)
                   (apply gx#core-bound-identifier?__0 _g7712_))
                  ((fx= _g7711_ 2)
                   (apply gx#core-bound-identifier?__% _g7712_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g7712_))))))))
  (define gx#core-identifier=?
    (lambda (_x4944_ _y4945_)
      (letrec ((_y=?4947_
                (lambda (_xid4951_)
                  ((if (list? _y4945_) memq eq?) _xid4951_ _y4945_))))
        (let ((_bind4949_ (gx#resolve-identifier__0 _x4944_)))
          (if (##structure-instance-of? _bind4949_ 'gx#binding::t)
              (_y=?4947_ (##structure-ref _bind4949_ '1 gx#binding::t '#f))
              (_y=?4947_ (gx#stx-e _x4944_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4942_)
      (if (interned-symbol? _e4942_)
          (string-index (symbol->string _e4942_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx4900_ _src4901_ _ctx4902_ _marks4903_)
        (if (gx#sealed-syntax? _stx4900_)
            (gx#stx-unwrap__0 _stx4900_)
            (if (gx#identifier? _stx4900_)
                (let ((_id4905_ (gx#syntax-local-unwrap _stx4900_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4905_)
                   (let ((_$e4907_ (gx#stx-source _id4905_)))
                     (if _$e4907_ _$e4907_ _src4901_))
                   _ctx4902_
                   (##direct-structure-ref
                    _id4905_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4900_)
                    (gx#stx-e _stx4900_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4900_
                     (let ((_$e4910_ (gx#stx-source _stx4900_)))
                       (if _$e4910_ _$e4910_ _src4901_))
                     _ctx4902_
                     (reverse _marks4903_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4916_)
          (let* ((_src4918_ '#f)
                 (_ctx4920_ (gx#current-expander-context))
                 (_marks4922_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4916_
             _src4918_
             _ctx4920_
             _marks4922_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4924_ _src4925_)
          (let* ((_ctx4927_ (gx#current-expander-context))
                 (_marks4929_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4924_
             _src4925_
             _ctx4927_
             _marks4929_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4931_ _src4932_ _ctx4933_)
          (let ((_marks4935_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4931_
             _src4932_
             _ctx4933_
             _marks4935_))))
      (define gx#core-quote-syntax
        (lambda _g7714_
          (let ((_g7713_ (length _g7714_)))
            (cond ((fx= _g7713_ 1) (apply gx#core-quote-syntax__0 _g7714_))
                  ((fx= _g7713_ 2) (apply gx#core-quote-syntax__1 _g7714_))
                  ((fx= _g7713_ 3) (apply gx#core-quote-syntax__2 _g7714_))
                  ((fx= _g7713_ 4) (apply gx#core-quote-syntax__% _g7714_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g7714_))))))))
  (define gx#core-cons
    (lambda (_hd4896_ _tl4897_)
      (cons (gx#core-quote-syntax__0 _hd4896_) _tl4897_)))
  (define gx#core-list
    (lambda (_hd4893_ . _rest4894_)
      (cons (gx#core-quote-syntax__0 _hd4893_) _rest4894_)))
  (define gx#core-cons*
    (lambda (_hd4890_ . _rest4891_)
      (apply cons* (gx#core-quote-syntax__0 _hd4890_) _rest4891_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path4864_ _rel4865_)
        (let ((_path4877_ (gx#stx-e _stx-path4864_))
              (_reldir4878_
               (let _lp4867_ ((_relsrc4869_
                               (let ((_$e4874_ (gx#stx-source _stx-path4864_)))
                                 (if _$e4874_ _$e4874_ _rel4865_))))
                 (if (##structure-instance-of? _relsrc4869_ 'gerbil#AST::t)
                     (_lp4867_
                      (let ((_$e4871_ (gx#stx-source _relsrc4869_)))
                        (if _$e4871_ _$e4871_ (gx#stx-e _relsrc4869_))))
                     (if (source-location-path? _relsrc4869_)
                         (path-directory (source-location-path _relsrc4869_))
                         (if (string? _relsrc4869_)
                             (path-directory _relsrc4869_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4877_ (path-normalize _reldir4878_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4883_)
          (let ((_rel4885_ '#f))
            (gx#core-resolve-path__% _stx-path4883_ _rel4885_))))
      (define gx#core-resolve-path
        (lambda _g7716_
          (let ((_g7715_ (length _g7716_)))
            (cond ((fx= _g7715_ 1) (apply gx#core-resolve-path__0 _g7716_))
                  ((fx= _g7715_ 2) (apply gx#core-resolve-path__% _g7716_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g7716_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr4820_ _ctx4821_)
        (let* ((_repr48224829_ _repr4820_)
               (_E48244833_
                (lambda () (error '"No clause matching" _repr48224829_)))
               (_K48254841_
                (lambda (_subs4836_ _phi4837_)
                  (let ((_subst4839_
                         (if (not (null? _subs4836_))
                             (list->hash-table-eq _subs4836_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst4839_
                     _ctx4821_
                     _phi4837_
                     '#f)))))
          (if (##pair? _repr48224829_)
              (let ((_hd48264844_ (##car _repr48224829_))
                    (_tl48274846_ (##cdr _repr48224829_)))
                (let* ((_phi4849_ _hd48264844_) (_subs4851_ _tl48274846_))
                  (_K48254841_ _subs4851_ _phi4849_)))
              (_E48244833_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr4856_)
          (let ((_ctx4858_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr4856_ _ctx4858_))))
      (define gx#core-deserialize-mark
        (lambda _g7718_
          (let ((_g7717_ (length _g7718_)))
            (cond ((fx= _g7717_ 1) (apply gx#core-deserialize-mark__0 _g7718_))
                  ((fx= _g7717_ 2) (apply gx#core-deserialize-mark__% _g7718_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g7718_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4817_) (gx#stx-rewrap _stx4817_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4815_)
      (gx#stx-unwrap__% _stx4815_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4783_)
      (let* ((_g47844792_ (gx#current-expander-marks))
             (_E47874796_
              (lambda () (error '"No clause matching" _g47844792_)))
             (_else47864800_ (lambda () _stx4783_))
             (_K47884805_
              (lambda (_hd4803_) (gx#stx-apply-mark _stx4783_ _hd4803_))))
        (if (##pair? _g47844792_)
            (let ((_hd47894808_ (##car _g47844792_))
                  (_tl47904810_ (##cdr _g47844792_)))
              (let ((_hd4813_ _hd47894808_)) (_K47884805_ _hd4813_)))
            (_else47864800_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx4768_ _E4769_)
        (let ((_bind4771_ (gx#resolve-identifier__0 _stx4768_)))
          (if (##structure-direct-instance-of?
               _bind4771_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4771_ '4 gx#syntax-binding::t '#f)
              (_E4769_ _stx4768_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4776_)
          (let ((_E4778_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx4776_ _E4778_))))
      (define gx#syntax-local-e
        (lambda _g7720_
          (let ((_g7719_ (length _g7720_)))
            (cond ((fx= _g7719_ 1) (apply gx#syntax-local-e__0 _g7720_))
                  ((fx= _g7719_ 2) (apply gx#syntax-local-e__% _g7720_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g7720_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx4752_ _E4753_)
        (let ((_e4755_ (gx#syntax-local-e__% _stx4752_ _E4753_)))
          (if (##structure-instance-of? _e4755_ 'gx#expander::t)
              (##structure-ref _e4755_ '1 gx#expander::t '#f)
              _e4755_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4760_)
          (let ((_E4762_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx4760_ _E4762_))))
      (define gx#syntax-local-value
        (lambda _g7722_
          (let ((_g7721_ (length _g7722_)))
            (cond ((fx= _g7721_ 1) (apply gx#syntax-local-value__0 _g7722_))
                  ((fx= _g7721_ 2) (apply gx#syntax-local-value__% _g7722_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g7722_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4749_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4749_))))
