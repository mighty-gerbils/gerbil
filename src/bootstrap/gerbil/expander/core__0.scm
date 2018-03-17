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
    (lambda _$args7687_
      (apply make-struct-instance gx#expander-context::t _$args7687_)))
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
    (lambda _$args7684_
      (apply make-struct-instance gx#root-context::t _$args7684_)))
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
    (lambda _$args7681_
      (apply make-struct-instance gx#phi-context::t _$args7681_)))
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
    (lambda _$args7678_
      (apply make-struct-instance gx#top-context::t _$args7678_)))
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
    (lambda _$args7675_
      (apply make-struct-instance gx#module-context::t _$args7675_)))
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
    (lambda _$args7672_
      (apply make-struct-instance gx#prelude-context::t _$args7672_)))
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
    (lambda _$args7669_
      (apply make-struct-instance gx#local-context::t _$args7669_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self7653_ _id7654_ _super7655_)
        (if (##fx< '5 (##vector-length _self7653_))
            (begin
              (##vector-set! _self7653_ '1 _id7654_)
              (##vector-set! _self7653_ '2 (make-hash-table-eq))
              (##vector-set! _self7653_ '3 _super7655_)
              (##vector-set! _self7653_ '4 '#f)
              (##vector-set! _self7653_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7653_))))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self7660_ _id7661_)
          (let ((_super7663_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self7660_ _id7661_ _super7663_))))
      (define gx#phi-context:::init!
        (lambda _g7694_
          (let ((_g7693_ (length _g7694_)))
            (cond ((##fx= _g7693_ 2) (apply gx#phi-context:::init!__0 _g7694_))
                  ((##fx= _g7693_ 3) (apply gx#phi-context:::init!__% _g7694_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g7694_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self7517_ _super7518_)
        (if (##fx< '5 (##vector-length _self7517_))
            (begin
              (##vector-set! _self7517_ '1 (gensym 'L))
              (##vector-set! _self7517_ '2 (make-hash-table-eq))
              (##vector-set! _self7517_ '3 _super7518_)
              (##vector-set! _self7517_ '4 '#f)
              (##vector-set! _self7517_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7517_))))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self7523_)
          (let ((_super7525_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self7523_ _super7525_))))
      (define gx#local-context:::init!
        (lambda _g7696_
          (let ((_g7695_ (length _g7696_)))
            (cond ((##fx= _g7695_ 1)
                   (apply gx#local-context:::init!__0 _g7696_))
                  ((##fx= _g7695_ 2)
                   (apply gx#local-context:::init!__% _g7696_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g7696_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args7391_
      (apply make-struct-instance gx#binding::t _$args7391_)))
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
    (lambda _$args7388_
      (apply make-struct-instance gx#runtime-binding::t _$args7388_)))
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
    (lambda _$args7385_
      (apply make-struct-instance gx#local-binding::t _$args7385_)))
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
    (lambda _$args7382_
      (apply make-struct-instance gx#top-binding::t _$args7382_)))
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
    (lambda _$args7379_
      (apply make-struct-instance gx#module-binding::t _$args7379_)))
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
    (lambda _$args7376_
      (apply make-struct-instance gx#extern-binding::t _$args7376_)))
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
    (lambda _$args7373_
      (apply make-struct-instance gx#syntax-binding::t _$args7373_)))
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
    (lambda _$args7370_
      (apply make-struct-instance gx#import-binding::t _$args7370_)))
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
    (lambda _$args7367_
      (apply make-struct-instance gx#alias-binding::t _$args7367_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args7364_
      (apply make-struct-instance gx#expander::t _$args7364_)))
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
    (lambda _$args7361_
      (apply make-struct-instance gx#core-expander::t _$args7361_)))
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
    (lambda _$args7358_
      (apply make-struct-instance gx#expression-form::t _$args7358_)))
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
    (lambda _$args7355_
      (apply make-struct-instance gx#special-form::t _$args7355_)))
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
    (lambda _$args7352_
      (apply make-struct-instance gx#definition-form::t _$args7352_)))
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
    (lambda _$args7349_
      (apply make-struct-instance gx#top-special-form::t _$args7349_)))
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
    (lambda _$args7346_
      (apply make-struct-instance gx#module-special-form::t _$args7346_)))
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
    (lambda _$args7343_
      (apply make-struct-instance gx#feature-expander::t _$args7343_)))
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
    (lambda _$args7340_
      (apply make-struct-instance gx#private-feature-expander::t _$args7340_)))
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
    (lambda _$args7337_
      (apply make-struct-instance gx#reserved-expander::t _$args7337_)))
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
    (lambda _$args7334_
      (apply make-struct-instance gx#macro-expander::t _$args7334_)))
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
    (lambda _$args7331_
      (apply make-struct-instance gx#rename-macro-expander::t _$args7331_)))
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
    (lambda _$args7328_
      (apply make-struct-instance gx#user-expander::t _$args7328_)))
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
    (lambda _$args7325_
      (apply make-struct-instance gx#expander-mark::t _$args7325_)))
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
    (lambda _$args7322_
      (apply make-struct-instance gx#syntax-error::t _$args7322_)))
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
    (lambda (_where7317_ _message7318_ _stx7319_ . _details7320_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message7318_
              (cons _stx7319_ _details7320_)
              _where7317_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx7304_ _expression?7305_)
        (gx#eval-syntax* (gx#core-expand__% _stx7304_ _expression?7305_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx7310_)
          (let ((_expression?7312_ '#f))
            (gx#eval-syntax__% _stx7310_ _expression?7312_))))
      (define gx#eval-syntax
        (lambda _g7698_
          (let ((_g7697_ (length _g7698_)))
            (cond ((##fx= _g7697_ 1) (apply gx#eval-syntax__0 _g7698_))
                  ((##fx= _g7697_ 2) (apply gx#eval-syntax__% _g7698_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g7698_))))))))
  (define gx#eval-syntax*
    (lambda (_stx7301_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx7301_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx7288_ _expression?7289_)
        (if _expression?7289_
            (gx#core-expand-expression _stx7288_)
            (gx#core-expand-top _stx7288_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx7294_)
          (let ((_expression?7296_ '#f))
            (gx#core-expand__% _stx7294_ _expression?7296_))))
      (define gx#core-expand
        (lambda _g7700_
          (let ((_g7699_ (length _g7700_)))
            (cond ((##fx= _g7699_ 1) (apply gx#core-expand__0 _g7700_))
                  ((##fx= _g7699_ 2) (apply gx#core-expand__% _g7700_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g7700_))))))))
  (define gx#core-expand-top
    (lambda (_stx7255_)
      (let* ((_stx7257_ (gx#core-expand*__0 _stx7255_))
             (_e72587265_ _stx7257_)
             (_E72607269_ (lambda () (gx#core-expand-expression _stx7257_)))
             (_E72597283_
              (lambda ()
                (if (gx#stx-pair? _e72587265_)
                    (let ((_e72617273_ (gx#syntax-e _e72587265_)))
                      (let ((_hd72627276_ (##car _e72617273_))
                            (_tl72637278_ (##cdr _e72617273_)))
                        (let ((_form7281_ _hd72627276_))
                          (if (gx#core-bound-identifier?__0 _form7281_)
                              _stx7257_
                              (_E72607269_)))))
                    (_E72607269_)))))
        (_E72597283_))))
  (define gx#core-expand-expression
    (lambda (_stx7177_)
      (letrec ((_sealed-expression?7179_
                (lambda (_hd7225_)
                  (if (gx#sealed-syntax? _hd7225_)
                      (let* ((_e72267233_ _hd7225_)
                             (_E72287237_ (lambda () '#f))
                             (_E72277251_
                              (lambda ()
                                (if (gx#stx-pair? _e72267233_)
                                    (let ((_e72297241_
                                           (gx#syntax-e _e72267233_)))
                                      (let ((_hd72307244_ (##car _e72297241_))
                                            (_tl72317246_ (##cdr _e72297241_)))
                                        (let ((_form7249_ _hd72307244_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form7249_
                                               gx#expression-form-binding?)
                                              (_E72287237_)))))
                                    (_E72287237_)))))
                        (_E72277251_))
                      '#f)))
               (_illegal-expression7180_
                (lambda (_hd7223_ . _g7701_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx7177_
                   _hd7223_)))
               (_expand-e7181_
                (lambda (_form7218_ _hd7219_)
                  (let ((_bind7221_
                         (if (##structure-instance-of?
                              _form7218_
                              'gx#binding::t)
                             _form7218_
                             (gx#resolve-identifier__0 _form7218_))))
                    (if (gx#core-expander-binding? _bind7221_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind7221_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd7219_
                          (gx#stx-source _stx7177_)))
                        (if (##structure-direct-instance-of?
                             _bind7221_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind7221_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd7219_
                               (gx#stx-source _stx7177_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx7177_
                             _form7218_)))))))
        (let ((_hd7183_ (gx#core-expand-head _stx7177_)))
          (if (_sealed-expression?7179_ _hd7183_)
              _hd7183_
              (if (gx#stx-pair? _hd7183_)
                  (let* ((_e71847191_ _hd7183_)
                         (_E71867195_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e71847191_)))
                         (_E71857214_
                          (lambda ()
                            (if (gx#stx-pair? _e71847191_)
                                (let ((_e71877199_ (gx#syntax-e _e71847191_)))
                                  (let ((_hd71887202_ (##car _e71877199_))
                                        (_tl71897204_ (##cdr _e71877199_)))
                                    (let ((_form7207_ _hd71887202_))
                                      (if '#t
                                          (let ((_bind7209_
                                                 (if (gx#identifier?
                                                      _form7207_)
                                                     (gx#resolve-identifier__0
                                                      _form7207_)
                                                     '#f)))
                                            (if (let ((_$e7211_
                                                       (not _bind7209_)))
                                                  (if _$e7211_
                                                      _$e7211_
                                                      (not (gx#core-expander-binding?
                                                            _bind7209_))))
                                                (_expand-e7181_
                                                 '%%app
                                                 (cons '%%app _hd7183_))
                                                (if (eq? (##structure-ref
                                                          _bind7209_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd7183_
                                                     _illegal-expression7180_)
                                                    (if (gx#expression-form-binding?
                                                         _bind7209_)
                                                        (_expand-e7181_
                                                         _bind7209_
                                                         _hd7183_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind7209_)
                                                            (gx#core-expand-expression
                                                             (_expand-e7181_
                                                              _bind7209_
                                                              _hd7183_))
                                                            (_illegal-expression7180_
                                                             _hd7183_))))))
                                          (_E71867195_)))))
                                (_E71867195_)))))
                    (_E71857214_))
                  (if (gx#core-bound-identifier?__0 _hd7183_)
                      (_illegal-expression7180_ _hd7183_)
                      (if (gx#identifier? _hd7183_)
                          (_expand-e7181_
                           '%%ref
                           (cons '%%ref (cons _hd7183_ '())))
                          (if (gx#stx-datum? _hd7183_)
                              (_expand-e7181_
                               '%#quote
                               (cons '%#quote (cons _hd7183_ '())))
                              (_illegal-expression7180_ _hd7183_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx7172_)
      (call-with-parameters
       (lambda ()
         (let ((_stx7175_ (gx#core-expand-expression _stx7172_)))
           (values _stx7175_ (gx#eval-syntax* _stx7175_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx7153_ _stop?7154_)
        (let _lp7156_ ((_stx7158_ _stx7153_))
          (if (_stop?7154_ _stx7158_)
              _stx7158_
              (let ((_rstx7160_ (gx#core-expand1 _stx7158_)))
                (if (eq? _stx7158_ _rstx7160_)
                    _stx7158_
                    (_lp7156_ _rstx7160_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx7165_)
          (let ((_stop?7167_ false))
            (gx#core-expand*__% _stx7165_ _stop?7167_))))
      (define gx#core-expand*
        (lambda _g7703_
          (let ((_g7702_ (length _g7703_)))
            (cond ((##fx= _g7702_ 1) (apply gx#core-expand*__0 _g7703_))
                  ((##fx= _g7702_ 2) (apply gx#core-expand*__% _g7703_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g7703_))))))))
  (define gx#core-expand1
    (lambda (_stx7109_)
      (letrec ((_step7111_
                (lambda (_hd7148_)
                  (let ((_bind7150_ (gx#resolve-identifier__0 _hd7148_)))
                    (if (##structure-instance-of?
                         _bind7150_
                         'gx#runtime-binding::t)
                        _stx7109_
                        (if (##structure-direct-instance-of?
                             _bind7150_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind7150_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx7109_)
                            (if (not _bind7150_)
                                _stx7109_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx7109_))))))))
        (let* ((_e71127120_ _stx7109_)
               (_E71187124_ (lambda () _stx7109_))
               (_E71147130_
                (lambda ()
                  (let ((_hd7128_ _e71127120_))
                    (if (gx#identifier? _hd7128_)
                        (_step7111_ _hd7128_)
                        (_E71187124_)))))
               (_E71137144_
                (lambda ()
                  (if (gx#stx-pair? _e71127120_)
                      (let ((_e71157134_ (gx#syntax-e _e71127120_)))
                        (let ((_hd71167137_ (##car _e71157134_))
                              (_tl71177139_ (##cdr _e71157134_)))
                          (let ((_hd7142_ _hd71167137_))
                            (if (gx#identifier? _hd7142_)
                                (_step7111_ _hd7142_)
                                (_E71147130_)))))
                      (_E71147130_)))))
          (_E71137144_)))))
  (define gx#core-expand-head
    (lambda (_stx7075_)
      (letrec ((_stop?7077_
                (lambda (_stx7079_)
                  (let* ((_e70807087_ _stx7079_)
                         (_E70827091_ (lambda () '#f))
                         (_E70817105_
                          (lambda ()
                            (if (gx#stx-pair? _e70807087_)
                                (let ((_e70837095_ (gx#syntax-e _e70807087_)))
                                  (let ((_hd70847098_ (##car _e70837095_))
                                        (_tl70857100_ (##cdr _e70837095_)))
                                    (let ((_hd7103_ _hd70847098_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd7103_)
                                          (_E70827091_)))))
                                (_E70827091_)))))
                    (_E70817105_)))))
        (gx#core-expand*__% _stx7075_ _stop?7077_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx6881_ _expand-special6882_ _begin-form6883_ _expand-e6884_)
        (letrec ((_expand-splice6886_
                  (lambda (_hd7049_ _body7050_ _rest7051_ _r7052_)
                    (if (gx#stx-list? _body7050_)
                        (_K6890_ (gx#stx-foldr cons _rest7051_ _body7050_)
                                 _r7052_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx6881_
                         _hd7049_))))
                 (_expand-cond-expand6887_
                  (lambda (_hd7045_ _rest7046_ _r7047_)
                    (_K6890_ (cons (gx#core-expand-cond-expand% _hd7045_)
                                   _rest7046_)
                             _r7047_)))
                 (_expand-include6888_
                  (lambda (_hd6994_ _rest6995_ _r6996_)
                    (let* ((_e69977007_ _hd6994_)
                           (_E69997011_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e69977007_)))
                           (_E69987041_
                            (lambda ()
                              (if (gx#stx-pair? _e69977007_)
                                  (let ((_e70007015_
                                         (gx#syntax-e _e69977007_)))
                                    (let ((_hd70017018_ (##car _e70007015_))
                                          (_tl70027020_ (##cdr _e70007015_)))
                                      (if (gx#stx-pair? _tl70027020_)
                                          (let ((_e70037023_
                                                 (gx#syntax-e _tl70027020_)))
                                            (let ((_hd70047026_
                                                   (##car _e70037023_))
                                                  (_tl70057028_
                                                   (##cdr _e70037023_)))
                                              (let ((_path7031_ _hd70047026_))
                                                (if (gx#stx-null? _tl70057028_)
                                                    (if (gx#stx-string?
                                                         _path7031_)
                                                        (let* ((_rpath7033_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path7031_
                         (gx#stx-source _hd6994_)))
                       (_block7035_
                        (gx#core-expand-include%__% _hd6994_ _rpath7033_))
                       (_rbody7038_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block7035_
                            _expand-special6882_
                            '#f
                            _expand-e6884_))
                         gx#current-expander-path
                         (cons _rpath7033_ (gx#current-expander-path)))))
                  (_K6890_ _rest6995_ (foldr1 cons _r6996_ _rbody7038_)))
                (_E69997011_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69997011_)))))
                                          (_E69997011_))))
                                  (_E69997011_)))))
                      (_E69987041_))))
                 (_expand-expression6889_
                  (lambda (_hd6990_ _rest6991_ _r6992_)
                    (_K6890_ _rest6991_
                             (cons (_expand-e6884_ _hd6990_) _r6992_))))
                 (_K6890_ (lambda (_rest6920_ _r6921_)
                            (let* ((_e69226929_ _rest6920_)
                                   (_E69246933_
                                    (lambda ()
                                      (if _begin-form6883_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form6883_
                                            (reverse _r6921_))
                                           (gx#stx-source _stx6881_))
                                          _r6921_)))
                                   (_E69236986_
                                    (lambda ()
                                      (if (gx#stx-pair? _e69226929_)
                                          (let ((_e69256937_
                                                 (gx#syntax-e _e69226929_)))
                                            (let ((_hd69266940_
                                                   (##car _e69256937_))
                                                  (_tl69276942_
                                                   (##cdr _e69256937_)))
                                              (let* ((_hd6945_ _hd69266940_)
                                                     (_rest6947_ _tl69276942_))
                                                (if '#t
                                                    (let* ((_hd6949_
                                                            (gx#core-expand-head
                                                             _hd6945_))
                                                           (_e69506957_
                                                            _hd6949_)
                                                           (_E69526961_
                                                            (lambda ()
                                                              (_expand-expression6889_
                                                               _hd6949_
                                                               _rest6947_
                                                               _r6921_)))
                                                           (_E69516982_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e69506957_)
                          (let ((_e69536965_ (gx#syntax-e _e69506957_)))
                            (let ((_hd69546968_ (##car _e69536965_))
                                  (_tl69556970_ (##cdr _e69536965_)))
                              (let* ((_form6973_ _hd69546968_)
                                     (_body6975_ _tl69556970_))
                                (if '#t
                                    (let ((_bind6977_
                                           (if (gx#identifier? _form6973_)
                                               (gx#resolve-identifier__0
                                                _form6973_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind6977_)
                                          (let ((_$e6979_
                                                 (##structure-ref
                                                  _bind6977_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e6979_)
                                                (_expand-splice6886_
                                                 _hd6949_
                                                 _body6975_
                                                 _rest6947_
                                                 _r6921_)
                                                (if (eq? '%#cond-expand
                                                         _$e6979_)
                                                    (_expand-cond-expand6887_
                                                     _hd6949_
                                                     _rest6947_
                                                     _r6921_)
                                                    (if (eq? '%#include
                                                             _$e6979_)
                                                        (_expand-include6888_
                                                         _hd6949_
                                                         _rest6947_
                                                         _r6921_)
                                                        (_expand-special6882_
                                                         _hd6949_
                                                         _K6890_
                                                         _rest6947_
                                                         _r6921_)))))
                                          (_expand-expression6889_
                                           _hd6949_
                                           _rest6947_
                                           _r6921_)))
                                    (_E69526961_)))))
                          (_E69526961_)))))
              (_E69516982_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69246933_)))))
                                          (_E69246933_)))))
                              (_E69236986_)))))
          (let* ((_e68916898_ _stx6881_)
                 (_E68936902_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e68916898_)))
                 (_E68926916_
                  (lambda ()
                    (if (gx#stx-pair? _e68916898_)
                        (let ((_e68946906_ (gx#syntax-e _e68916898_)))
                          (let ((_hd68956909_ (##car _e68946906_))
                                (_tl68966911_ (##cdr _e68946906_)))
                            (let ((_body6914_ _tl68966911_))
                              (if (gx#stx-list? _body6914_)
                                  (_K6890_ _body6914_ '())
                                  (_E68936902_)))))
                        (_E68936902_)))))
            (_E68926916_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx7057_ _expand-special7058_)
          (let* ((_begin-form7060_ '%#begin)
                 (_expand-e7062_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7057_
             _expand-special7058_
             _begin-form7060_
             _expand-e7062_))))
      (define gx#core-expand-block__1
        (lambda (_stx7064_ _expand-special7065_ _begin-form7066_)
          (let ((_expand-e7068_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7064_
             _expand-special7065_
             _begin-form7066_
             _expand-e7068_))))
      (define gx#core-expand-block
        (lambda _g7705_
          (let ((_g7704_ (length _g7705_)))
            (cond ((##fx= _g7704_ 2) (apply gx#core-expand-block__0 _g7705_))
                  ((##fx= _g7704_ 3) (apply gx#core-expand-block__1 _g7705_))
                  ((##fx= _g7704_ 4) (apply gx#core-expand-block__% _g7705_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g7705_))))))))
  (define gx#core-expand-block*
    (lambda (_stx6829_ _expand-special6830_)
      (let* ((_g68316842_
              (gx#core-expand-block__1 _stx6829_ _expand-special6830_ '#f))
             (_E68356846_
              (lambda () (error '"No clause matching" _g68316842_))))
        (let ((_K68406877_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx6829_)))
              (_K68376863_ (lambda (_expr6861_) _expr6861_))
              (_K68366852_
               (lambda (_body6850_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body6850_))
                  (gx#stx-source _stx6829_)))))
          (let ((_try-match68336873_
                 (lambda ()
                   (if (##pair? _g68316842_)
                       (let ((_tl68396868_ (##cdr _g68316842_))
                             (_hd68386866_ (##car _g68316842_)))
                         (if (##null? _tl68396868_)
                             (let ((_expr6871_ _hd68386866_))
                               (_K68376863_ _expr6871_))
                             (let ((_body6855_ _g68316842_))
                               (_K68366852_ _body6855_))))
                       (let ((_body6855_ _g68316842_))
                         (_K68366852_ _body6855_))))))
            (if (##null? _g68316842_)
                (let () (_K68406877_))
                (_try-match68336873_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx6687_)
      (letrec ((_satisfied?6689_
                (lambda (_condition6787_)
                  (let* ((_e67886796_ _condition6787_)
                         (_E67916800_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e67886796_)))
                         (_E67906819_
                          (lambda ()
                            (if (gx#stx-pair? _e67886796_)
                                (let ((_e67926804_ (gx#syntax-e _e67886796_)))
                                  (let ((_hd67936807_ (##car _e67926804_))
                                        (_tl67946809_ (##cdr _e67926804_)))
                                    (let* ((_combinator6812_ _hd67936807_)
                                           (_body6814_ _tl67946809_))
                                      (if (gx#stx-list? _body6814_)
                                          (let ((_$e6816_
                                                 (gx#stx-e _combinator6812_)))
                                            (if (eq? 'not _$e6816_)
                                                (not (gx#stx-ormap
                                                      _satisfied?6689_
                                                      _body6814_))
                                                (if (eq? 'and _$e6816_)
                                                    (gx#stx-andmap
                                                     _satisfied?6689_
                                                     _body6814_)
                                                    (if (eq? 'or _$e6816_)
                                                        (gx#stx-ormap
                                                         _satisfied?6689_
                                                         _body6814_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e6816_)
                    (gx#stx-andmap gx#core-resolve-identifier _body6814_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx6687_
                     _combinator6812_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E67916800_)))))
                                (_E67916800_))))
                         (_E67896825_
                          (lambda ()
                            (let ((_id6823_ _e67886796_))
                              (if (gx#identifier? _id6823_)
                                  (gx#core-bound-identifier?__%
                                   _id6823_
                                   gx#feature-binding?)
                                  (_E67906819_))))))
                    (_E67896825_))))
               (_loop6690_
                (lambda (_rest6720_)
                  (let* ((_e67216729_ _rest6720_)
                         (_E67276733_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e67216729_)))
                         (_E67236737_
                          (lambda ()
                            (if (gx#stx-null? _e67216729_)
                                (if '#t '() (_E67276733_))
                                (_E67276733_))))
                         (_E67226783_
                          (lambda ()
                            (if (gx#stx-pair? _e67216729_)
                                (let ((_e67246741_ (gx#syntax-e _e67216729_)))
                                  (let ((_hd67256744_ (##car _e67246741_))
                                        (_tl67266746_ (##cdr _e67246741_)))
                                    (let* ((_hd6749_ _hd67256744_)
                                           (_rest6751_ _tl67266746_))
                                      (if '#t
                                          (let* ((_e67526759_ _hd6749_)
                                                 (_E67546763_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e67526759_)))
                                                 (_E67536779_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e67526759_)
                                                        (let ((_e67556767_
                                                               (gx#syntax-e
                                                                _e67526759_)))
                                                          (let ((_hd67566770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e67556767_))
                        (_tl67576772_ (##cdr _e67556767_)))
                    (let* ((_condition6775_ _hd67566770_)
                           (_body6777_ _tl67576772_))
                      (if '#t
                          (if (gx#stx-eq? _condition6775_ 'else)
                              (if (gx#stx-null? _rest6751_)
                                  _body6777_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx6687_
                                   _hd6749_))
                              (if (_satisfied?6689_ _condition6775_)
                                  _body6777_
                                  (_loop6690_ _rest6751_)))
                          (_E67546763_)))))
                (_E67546763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67536779_))
                                          (_E67236737_)))))
                                (_E67236737_)))))
                    (_E67226783_)))))
        (let* ((_e66916698_ _stx6687_)
               (_E66936702_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e66916698_)))
               (_E66926716_
                (lambda ()
                  (if (gx#stx-pair? _e66916698_)
                      (let ((_e66946706_ (gx#syntax-e _e66916698_)))
                        (let ((_hd66956709_ (##car _e66946706_))
                              (_tl66966711_ (##cdr _e66946706_)))
                          (let ((_clauses6714_ _tl66966711_))
                            (if (gx#stx-list? _clauses6714_)
                                (gx#core-cons
                                 'begin
                                 (_loop6690_ _clauses6714_))
                                (_E66936702_)))))
                      (_E66936702_)))))
          (_E66926716_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx6630_ _rpath6631_)
        (let* ((_e66326642_ _stx6630_)
               (_E66346646_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e66326642_)))
               (_E66336673_
                (lambda ()
                  (if (gx#stx-pair? _e66326642_)
                      (let ((_e66356650_ (gx#syntax-e _e66326642_)))
                        (let ((_hd66366653_ (##car _e66356650_))
                              (_tl66376655_ (##cdr _e66356650_)))
                          (if (gx#stx-pair? _tl66376655_)
                              (let ((_e66386658_ (gx#syntax-e _tl66376655_)))
                                (let ((_hd66396661_ (##car _e66386658_))
                                      (_tl66406663_ (##cdr _e66386658_)))
                                  (let ((_path6666_ _hd66396661_))
                                    (if (gx#stx-null? _tl66406663_)
                                        (if (gx#stx-string? _path6666_)
                                            (let ((_rpath6671_
                                                   (let ((_$e6668_
                                                          _rpath6631_))
                                                     (if _$e6668_
                                                         _$e6668_
                                                         (gx#core-resolve-path__%
                                                          _path6666_
                                                          (gx#stx-source
                                                           _stx6630_))))))
                                              (if (member _rpath6671_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx6630_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath6671_))
                                                    (gx#stx-source
                                                     _stx6630_)))))
                                            (_E66346646_))
                                        (_E66346646_)))))
                              (_E66346646_))))
                      (_E66346646_)))))
          (_E66336673_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx6680_)
          (let ((_rpath6682_ '#f))
            (gx#core-expand-include%__% _stx6680_ _rpath6682_))))
      (define gx#core-expand-include%
        (lambda _g7707_
          (let ((_g7706_ (length _g7707_)))
            (cond ((##fx= _g7706_ 1)
                   (apply gx#core-expand-include%__0 _g7707_))
                  ((##fx= _g7706_ 2)
                   (apply gx#core-expand-include%__% _g7707_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g7707_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K6599_ _stx6600_ _method6601_)
        (if (procedure? _K6599_)
            (let ((_$e6603_ (gx#stx-source _stx6600_)))
              (if _$e6603_
                  ((lambda (_g66056607_)
                     (gx#stx-wrap-source (_K6599_ _stx6600_) _g66056607_))
                   _$e6603_)
                  (_K6599_ _stx6600_)))
            (let ((_$e6610_ (bound-method-ref _K6599_ _method6601_)))
              (if _$e6610_
                  ((lambda (_g66126614_)
                     (gx#core-apply-expander__%
                      _g66126614_
                      _stx6600_
                      _method6601_))
                   _$e6610_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx6600_
                   _method6601_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K6620_ _stx6621_)
          (let ((_method6623_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K6620_ _stx6621_ _method6623_))))
      (define gx#core-apply-expander
        (lambda _g7709_
          (let ((_g7708_ (length _g7709_)))
            (cond ((##fx= _g7708_ 2) (apply gx#core-apply-expander__0 _g7709_))
                  ((##fx= _g7708_ 3) (apply gx#core-apply-expander__% _g7709_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g7709_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self6595_ _stx6596_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx6596_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self6448_ _stx6449_)
      (let* ((_self64506456_ _self6448_)
             (_E64526460_
              (lambda () (error '"No clause matching" _self64506456_)))
             (_K64536465_
              (lambda (_K6463_)
                (gx#core-apply-expander__0 _K6463_ _stx6449_))))
        (if (##structure-instance-of? _self64506456_ 'gx#core-macro::t)
            (let* ((_e64546468_ (##vector-ref _self64506456_ '1))
                   (_K6471_ _e64546468_))
              (_K64536465_ _K6471_))
            (_E64526460_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self6301_ _stx6302_)
      (if (gx#sealed-syntax? _stx6302_)
          _stx6302_
          (let* ((_self63036309_ _self6301_)
                 (_E63056313_
                  (lambda () (error '"No clause matching" _self63036309_)))
                 (_K63066318_
                  (lambda (_K6316_)
                    (gx#core-apply-expander__0 _K6316_ _stx6302_))))
            (if (##structure-instance-of? _self63036309_ 'gx#core-expander::t)
                (let* ((_e63076321_ (##vector-ref _self63036309_ '1))
                       (_K6324_ _e63076321_))
                  (_K63066318_ _K6324_))
                (_E63056313_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self6163_ _stx6164_ _top?6165_)
        (if (_top?6165_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self6163_ _stx6164_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx6164_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self6170_ _stx6171_)
          (let ((_top?6173_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self6170_
             _stx6171_
             _top?6173_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g7711_
          (let ((_g7710_ (length _g7711_)))
            (cond ((##fx= _g7710_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g7711_))
                  ((##fx= _g7710_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g7711_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g7711_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self6037_ _stx6038_)
      (gx#top-special-form::apply-macro-expander__%
       _self6037_
       _stx6038_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self5862_ _stx5863_)
      (let* ((_self58645870_ _self5862_)
             (_E58665874_
              (lambda () (error '"No clause matching" _self58645870_)))
             (_K58675907_
              (lambda (_id5877_)
                (let* ((_e58785885_ _stx5863_)
                       (_E58805889_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e58785885_)))
                       (_E58795903_
                        (lambda ()
                          (if (gx#stx-pair? _e58785885_)
                              (let ((_e58815893_ (gx#syntax-e _e58785885_)))
                                (let ((_hd58825896_ (##car _e58815893_))
                                      (_tl58835898_ (##cdr _e58815893_)))
                                  (let ((_body5901_ _tl58835898_))
                                    (if '#t
                                        (gx#core-cons _id5877_ _body5901_)
                                        (_E58805889_)))))
                              (_E58805889_)))))
                  (_E58795903_)))))
        (if (##structure-instance-of?
             _self58645870_
             'gx#rename-macro-expander::t)
            (let* ((_e58685910_ (##vector-ref _self58645870_ '1))
                   (_id5913_ _e58685910_))
              (_K58675907_ _id5913_))
            (_E58665874_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self5688_ _stx5689_ _method5690_)
        (let* ((_self56915699_ _self5688_)
               (_E56935703_
                (lambda () (error '"No clause matching" _self56915699_)))
               (_K56945710_
                (lambda (_phi5706_ _ctx5707_ _K5708_)
                  (gx#core-apply-user-macro
                   _K5708_
                   _stx5689_
                   _ctx5707_
                   _phi5706_
                   _method5690_))))
          (if (##structure-instance-of? _self56915699_ 'gx#macro-expander::t)
              (let* ((_e56955713_ (##vector-ref _self56915699_ '1))
                     (_K5716_ _e56955713_)
                     (_e56965718_ (##vector-ref _self56915699_ '2))
                     (_ctx5721_ _e56965718_)
                     (_e56975723_ (##vector-ref _self56915699_ '3))
                     (_phi5726_ _e56975723_))
                (_K56945710_ _phi5726_ _ctx5721_ _K5716_))
              (_E56935703_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self5731_ _stx5732_)
          (let ((_method5734_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self5731_
             _stx5732_
             _method5734_))))
      (define gx#core-apply-user-expander
        (lambda _g7713_
          (let ((_g7712_ (length _g7713_)))
            (cond ((##fx= _g7712_ 2)
                   (apply gx#core-apply-user-expander__0 _g7713_))
                  ((##fx= _g7712_ 3)
                   (apply gx#core-apply-user-expander__% _g7713_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g7713_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K5678_ _stx5679_ _ctx5680_ _phi5681_ _method5682_)
      (let ((_mark5684_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx5680_
              _phi5681_
              _stx5679_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K5678_
             (gx#stx-apply-mark _stx5679_ _mark5684_)
             _method5682_)
            _mark5684_))
         gx#current-expander-marks
         (cons _mark5684_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx5529_ _phi5530_ _ctx5531_)
        (let _lp5533_ ((_bind5535_
                        (gx#core-resolve-identifier__%
                         _stx5529_
                         _phi5530_
                         _ctx5531_)))
          (if (##structure-direct-instance-of?
               _bind5535_
               'gx#import-binding::t)
              (_lp5533_
               (##direct-structure-ref _bind5535_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind5535_
                   'gx#alias-binding::t)
                  (_lp5533_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind5535_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi5530_
                    _ctx5531_))
                  _bind5535_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx5540_)
          (let* ((_phi5542_ (gx#current-expander-phi))
                 (_ctx5544_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5540_ _phi5542_ _ctx5544_))))
      (define gx#resolve-identifier__1
        (lambda (_stx5546_ _phi5547_)
          (let ((_ctx5549_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5546_ _phi5547_ _ctx5549_))))
      (define gx#resolve-identifier
        (lambda _g7715_
          (let ((_g7714_ (length _g7715_)))
            (cond ((##fx= _g7714_ 1) (apply gx#resolve-identifier__0 _g7715_))
                  ((##fx= _g7714_ 2) (apply gx#resolve-identifier__1 _g7715_))
                  ((##fx= _g7714_ 3) (apply gx#resolve-identifier__% _g7715_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g7715_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx5487_ _val5488_ _rebind?5489_ _phi5490_ _ctx5491_)
        (let ((_rebind?5493_
               (if (not _rebind?5489_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?5489_) _rebind?5489_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx5487_)
           _val5488_
           _rebind?5493_
           _phi5490_
           _ctx5491_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx5498_ _val5499_)
          (let* ((_rebind?5501_ '#f)
                 (_phi5503_ (gx#current-expander-phi))
                 (_ctx5505_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5498_
             _val5499_
             _rebind?5501_
             _phi5503_
             _ctx5505_))))
      (define gx#bind-identifier!__1
        (lambda (_stx5507_ _val5508_ _rebind?5509_)
          (let* ((_phi5511_ (gx#current-expander-phi))
                 (_ctx5513_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5507_
             _val5508_
             _rebind?5509_
             _phi5511_
             _ctx5513_))))
      (define gx#bind-identifier!__2
        (lambda (_stx5515_ _val5516_ _rebind?5517_ _phi5518_)
          (let ((_ctx5520_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5515_
             _val5516_
             _rebind?5517_
             _phi5518_
             _ctx5520_))))
      (define gx#bind-identifier!
        (lambda _g7717_
          (let ((_g7716_ (length _g7717_)))
            (cond ((##fx= _g7716_ 2) (apply gx#bind-identifier!__0 _g7717_))
                  ((##fx= _g7716_ 3) (apply gx#bind-identifier!__1 _g7717_))
                  ((##fx= _g7716_ 4) (apply gx#bind-identifier!__2 _g7717_))
                  ((##fx= _g7716_ 5) (apply gx#bind-identifier!__% _g7717_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g7717_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx5459_ _phi5460_ _ctx5461_)
        (let _lp5463_ ((_e5465_ _stx5459_)
                       (_marks5466_ (gx#current-expander-marks)))
          (if (symbol? _e5465_)
              (gx#core-resolve-binding
               _e5465_
               _phi5460_
               _phi5460_
               _ctx5461_
               (reverse _marks5466_))
              (if (gx#identifier-quote? _e5465_)
                  (gx#core-resolve-binding
                   (##structure-ref _e5465_ '1 AST::t '#f)
                   _phi5460_
                   '0
                   (##direct-structure-ref _e5465_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e5465_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e5465_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e5465_ '1 AST::t '#f)
                       _phi5460_
                       _phi5460_
                       _ctx5461_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e5465_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks5466_))
                      (if (##structure-direct-instance-of?
                           _e5465_
                           'gx#syntax-wrap::t)
                          (_lp5463_
                           (##structure-ref _e5465_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e5465_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks5466_))
                          (if (##structure-instance-of? _e5465_ 'gerbil#AST::t)
                              (_lp5463_
                               (##structure-ref _e5465_ '1 AST::t '#f)
                               _marks5466_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx5459_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx5471_)
          (let* ((_phi5473_ (gx#current-expander-phi))
                 (_ctx5475_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5471_ _phi5473_ _ctx5475_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx5477_ _phi5478_)
          (let ((_ctx5480_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5477_ _phi5478_ _ctx5480_))))
      (define gx#core-resolve-identifier
        (lambda _g7719_
          (let ((_g7718_ (length _g7719_)))
            (cond ((##fx= _g7718_ 1)
                   (apply gx#core-resolve-identifier__0 _g7719_))
                  ((##fx= _g7718_ 2)
                   (apply gx#core-resolve-identifier__1 _g7719_))
                  ((##fx= _g7718_ 3)
                   (apply gx#core-resolve-identifier__% _g7719_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g7719_))))))))
  (define gx#core-resolve-binding
    (lambda (_id5372_ _phi5373_ _src-phi5374_ _ctx5375_ _marks5376_)
      (letrec ((_resolve5378_
                (lambda (_ctx5446_ _src-phi5447_ _key5448_)
                  (let _lp5450_ ((_ctx5452_
                                  (gx#core-context-shift _ctx5446_ _phi5373_))
                                 (_dphi5453_ (fx- _phi5373_ _src-phi5447_)))
                    (let ((_$e5455_
                           (gx#core-context-resolve _ctx5452_ _key5448_)))
                      (if _$e5455_
                          (values _$e5455_)
                          (if (fxzero? _dphi5453_)
                              '#f
                              (if (fxpositive? _dphi5453_)
                                  (_lp5450_
                                   (gx#core-context-shift _ctx5452_ '-1)
                                   (fx- _dphi5453_ '1))
                                  (if (fxnegative? _dphi5453_)
                                      (_lp5450_
                                       (gx#core-context-shift _ctx5452_ '1)
                                       (fx+ _dphi5453_ '1))
                                      '#!void)))))))))
        (let _lp5380_ ((_ctx5382_ _ctx5375_)
                       (_src-phi5383_ _src-phi5374_)
                       (_rest5384_ _marks5376_))
          (let* ((_rest53855393_ _rest5384_)
                 (_else53875401_
                  (lambda () (_resolve5378_ _ctx5382_ _src-phi5383_ _id5372_)))
                 (_K53895434_
                  (lambda (_rest5404_ _hd5405_)
                    (let* ((_hd54065412_ _hd5405_)
                           (_E54085416_
                            (lambda ()
                              (error '"No clause matching" _hd54065412_)))
                           (_K54095426_
                            (lambda (_subst5419_)
                              (let ((_$e5423_
                                     (let ((_key5421_
                                            (if _subst5419_
                                                (table-ref
                                                 _subst5419_
                                                 _id5372_
                                                 '#f)
                                                '#f)))
                                       (if _key5421_
                                           (_resolve5378_
                                            _ctx5382_
                                            _src-phi5383_
                                            _key5421_)
                                           '#f))))
                                (if _$e5423_
                                    _$e5423_
                                    (_lp5380_
                                     (##structure-ref
                                      _hd5405_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd5405_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest5404_))))))
                      (if (##structure-instance-of?
                           _hd54065412_
                           'gx#expander-mark::t)
                          (let* ((_e54105429_ (##vector-ref _hd54065412_ '1))
                                 (_subst5432_ _e54105429_))
                            (_K54095426_ _subst5432_))
                          (_E54085416_))))))
            (if (##pair? _rest53855393_)
                (let ((_hd53905437_ (##car _rest53855393_))
                      (_tl53915439_ (##cdr _rest53855393_)))
                  (let* ((_hd5442_ _hd53905437_) (_rest5444_ _tl53915439_))
                    (_K53895434_ _rest5444_ _hd5442_)))
                (_else53875401_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key5248_ _val5249_ _rebind?5250_ _phi5251_ _ctx5252_)
        (letrec ((_update-binding5254_
                  (lambda (_xval5325_)
                    (if (let ((_$e5327_
                               (_rebind?5250_ _ctx5252_ _xval5325_ _val5249_)))
                          (if _$e5327_
                              _$e5327_
                              (let ((_$e5333_
                                     (if (##structure-direct-instance-of?
                                          _xval5325_
                                          'gx#import-binding::t)
                                         (let ((_$e5330_
                                                (##direct-structure-ref
                                                 _xval5325_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e5330_
                                               _$e5330_
                                               (if (##structure-instance-of?
                                                    _val5249_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val5249_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e5333_
                                    _$e5333_
                                    (if (##structure-instance-of?
                                         _xval5325_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val5249_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val5249_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval5325_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val5249_
                        (if (if (##structure-direct-instance-of?
                                 _val5249_
                                 'gx#import-binding::t)
                                (let ((_$e5336_
                                       (##direct-structure-ref
                                        _val5249_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e5336_
                                      _$e5336_
                                      (if (##structure-instance-of?
                                           _xval5325_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val5249_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval5325_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval5325_
                            (if (if (##structure-direct-instance-of?
                                     _val5249_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval5325_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key5248_
                                 (cons (##structure-ref
                                        _val5249_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val5249_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval5325_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval5325_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval5325_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval5325_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key5248_
                                 _val5249_
                                 _xval5325_))))))
                 (_gensubst5255_
                  (lambda (_subst5320_ _id5321_)
                    (let ((_eid5323_
                           (gensym (if (uninterned-symbol? _id5321_)
                                       '%
                                       _id5321_))))
                      (begin
                        (table-set! _subst5320_ _id5321_ _eid5323_)
                        _eid5323_))))
                 (_subst!5256_
                  (lambda (_key5258_)
                    (let* ((_key52595267_ _key5258_)
                           (_else52615275_ (lambda () _key5258_))
                           (_K52635308_
                            (lambda (_mark5278_ _id5279_)
                              (let* ((_mark52805286_ _mark5278_)
                                     (_E52825290_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark52805286_)))
                                     (_K52835300_
                                      (lambda (_subst5293_)
                                        (if (not _subst5293_)
                                            (let ((_subst5295_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark5278_
                                                 _subst5295_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst5255_
                                                 _subst5295_
                                                 _id5279_)))
                                            (let ((_$e5297_
                                                   (table-ref
                                                    _subst5293_
                                                    _id5279_
                                                    '#f)))
                                              (if _$e5297_
                                                  (values _$e5297_)
                                                  (_gensubst5255_
                                                   _subst5293_
                                                   _id5279_)))))))
                                (if (##structure-instance-of?
                                     _mark52805286_
                                     'gx#expander-mark::t)
                                    (let* ((_e52845303_
                                            (##vector-ref _mark52805286_ '1))
                                           (_subst5306_ _e52845303_))
                                      (_K52835300_ _subst5306_))
                                    (_E52825290_))))))
                      (if (##pair? _key52595267_)
                          (let ((_hd52645311_ (##car _key52595267_))
                                (_tl52655313_ (##cdr _key52595267_)))
                            (let* ((_id5316_ _hd52645311_)
                                   (_mark5318_ _tl52655313_))
                              (_K52635308_ _mark5318_ _id5316_)))
                          (_else52615275_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx5252_ _phi5251_)
           (_subst!5256_ _key5248_)
           _val5249_
           _update-binding5254_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key5342_ _val5343_)
          (let* ((_rebind?5345_ false)
                 (_phi5347_ (gx#current-expander-phi))
                 (_ctx5349_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5342_
             _val5343_
             _rebind?5345_
             _phi5347_
             _ctx5349_))))
      (define gx#core-bind!__1
        (lambda (_key5351_ _val5352_ _rebind?5353_)
          (let* ((_phi5355_ (gx#current-expander-phi))
                 (_ctx5357_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5351_
             _val5352_
             _rebind?5353_
             _phi5355_
             _ctx5357_))))
      (define gx#core-bind!__2
        (lambda (_key5359_ _val5360_ _rebind?5361_ _phi5362_)
          (let ((_ctx5364_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5359_
             _val5360_
             _rebind?5361_
             _phi5362_
             _ctx5364_))))
      (define gx#core-bind!
        (lambda _g7721_
          (let ((_g7720_ (length _g7721_)))
            (cond ((##fx= _g7720_ 2) (apply gx#core-bind!__0 _g7721_))
                  ((##fx= _g7720_ 3) (apply gx#core-bind!__1 _g7721_))
                  ((##fx= _g7720_ 4) (apply gx#core-bind!__2 _g7721_))
                  ((##fx= _g7720_ 5) (apply gx#core-bind!__% _g7721_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g7721_))))))))
  (define gx#core-identifier-key
    (lambda (_stx5182_)
      (if (symbol? _stx5182_)
          (let* ((_g51835191_ (gx#current-expander-marks))
                 (_else51855199_ (lambda () _stx5182_))
                 (_K51875204_ (lambda (_hd5202_) (cons _stx5182_ _hd5202_))))
            (if (##pair? _g51835191_)
                (let* ((_hd51885207_ (##car _g51835191_))
                       (_hd5210_ _hd51885207_))
                  (_K51875204_ _hd5210_))
                (_else51855199_)))
          (if (gx#identifier? _stx5182_)
              (let* ((_id5212_ (gx#syntax-local-unwrap _stx5182_))
                     (_eid5214_ (gx#stx-e _id5212_))
                     (_marks5216_ (gx#stx-identifier-marks _id5212_)))
                (let* ((_marks52185226_ _marks5216_)
                       (_else52205234_ (lambda () _eid5214_))
                       (_K52225239_
                        (lambda (_hd5237_) (cons _eid5214_ _hd5237_))))
                  (if (##pair? _marks52185226_)
                      (let* ((_hd52235242_ (##car _marks52185226_))
                             (_hd5245_ _hd52235242_))
                        (_K52225239_ _hd5245_))
                      (_else52205234_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx5182_)))))
  (define gx#core-context-shift
    (lambda (_ctx5127_ _phi5128_)
      (letrec ((_make-phi5130_
                (lambda (_super5180_)
                  (let ((__obj7692 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj7692
                       (gensym 'phi)
                       _super5180_)
                      __obj7692))))
               (_make-phi/up5131_
                (lambda (_ctx5175_ _super5176_)
                  (let ((_ctx+15178_ (_make-phi5130_ _super5176_)))
                    (begin
                      (##structure-set!
                       _ctx5175_
                       _ctx+15178_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+15178_
                       _ctx5175_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+15178_))))
               (_make-phi/down5132_
                (lambda (_ctx5170_ _super5171_)
                  (let ((_ctx-15173_ (_make-phi5130_ _super5171_)))
                    (begin
                      (##structure-set!
                       _ctx-15173_
                       _ctx5170_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx5170_
                       _ctx-15173_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-15173_))))
               (_shift5133_
                (lambda (_ctx5154_
                         _delta5155_
                         _make-delta-context5156_
                         _phi5157_
                         _K5158_)
                  (let ((_$e5160_
                         (##structure-ref _ctx5154_ '3 gx#phi-context::t '#f)))
                    (if _$e5160_
                        ((lambda (_super5163_)
                           (let* ((_super5165_
                                   (_K5158_ _super5163_ _delta5155_))
                                  (_ctx+d5167_
                                   (_make-delta-context5156_
                                    _ctx5154_
                                    _super5165_)))
                             (_K5158_ _ctx+d5167_
                                      (fx- _phi5157_ _delta5155_))))
                         _$e5160_)
                        (error '"Bad context" _ctx5154_))))))
        (let _K5135_ ((_ctx5137_ _ctx5127_) (_phi5138_ _phi5128_))
          (if (fxzero? _phi5138_)
              _ctx5137_
              (if (##structure-instance-of? _ctx5137_ 'gx#context-phi::t)
                  (if (fxpositive? _phi5138_)
                      (let ((_$e5140_
                             (##structure-ref
                              _ctx5137_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e5140_
                            ((lambda (_g51425144_)
                               (_K5135_ _g51425144_ (fx- _phi5138_ '1)))
                             _$e5140_)
                            (_shift5133_
                             _ctx5137_
                             '1
                             _make-phi/up5131_
                             _phi5138_
                             _K5135_)))
                      (let ((_$e5147_
                             (##structure-ref
                              _ctx5137_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e5147_
                            ((lambda (_g51495151_)
                               (_K5135_ _g51495151_ (fx+ _phi5138_ '1)))
                             _$e5147_)
                            (_shift5133_
                             _ctx5137_
                             '-1
                             _make-phi/down5132_
                             _phi5138_
                             _K5135_))))
                  _ctx5137_))))))
  (define gx#core-context-get
    (lambda (_ctx5124_ _key5125_)
      (table-ref
       (##structure-ref _ctx5124_ '2 gx#expander-context::t '#f)
       _key5125_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx5120_ _key5121_ _val5122_)
      (table-set!
       (##structure-ref _ctx5120_ '2 gx#expander-context::t '#f)
       _key5121_
       _val5122_)))
  (define gx#core-context-resolve
    (lambda (_ctx5107_ _key5108_)
      (let _lp5110_ ((_ctx5112_ _ctx5107_))
        (let ((_$e5114_ (gx#core-context-get _ctx5112_ _key5108_)))
          (if _$e5114_
              (values _$e5114_)
              (let ((_$e5117_
                     (if (##structure-instance-of?
                          _ctx5112_
                          'gx#context-phi::t)
                         (##structure-ref _ctx5112_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e5117_ (_lp5110_ _$e5117_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx5097_ _key5098_ _val5099_ _rebind5100_)
      (let ((_$e5102_ (gx#core-context-get _ctx5097_ _key5098_)))
        (if _$e5102_
            ((lambda (_xval5105_)
               (gx#core-context-put!
                _ctx5097_
                _key5098_
                (_rebind5100_ _xval5105_)))
             _$e5102_)
            (gx#core-context-put! _ctx5097_ _key5098_ _val5099_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx5075_ _stop?5076_)
        (let _lp5078_ ((_ctx5080_ _ctx5075_))
          (if (_stop?5076_ _ctx5080_)
              _ctx5080_
              (if (##structure-instance-of? _ctx5080_ 'gx#context-phi::t)
                  (_lp5078_
                   (##structure-ref _ctx5080_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx5086_ (gx#current-expander-context))
                 (_stop?5088_ gx#top-context?))
            (gx#core-context-top__% _ctx5086_ _stop?5088_))))
      (define gx#core-context-top__1
        (lambda (_ctx5090_)
          (let ((_stop?5092_ gx#top-context?))
            (gx#core-context-top__% _ctx5090_ _stop?5092_))))
      (define gx#core-context-top
        (lambda _g7723_
          (let ((_g7722_ (length _g7723_)))
            (cond ((##fx= _g7722_ 0) (apply gx#core-context-top__0 _g7723_))
                  ((##fx= _g7722_ 1) (apply gx#core-context-top__1 _g7723_))
                  ((##fx= _g7722_ 2) (apply gx#core-context-top__% _g7723_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g7723_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx5060_)
        (let _lp5062_ ((_ctx5064_ _ctx5060_))
          (if (##structure-instance-of? _ctx5064_ 'gx#context-phi::t)
              (_lp5062_ (##structure-ref _ctx5064_ '3 gx#phi-context::t '#f))
              _ctx5064_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx5070_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx5070_))))
      (define gx#core-context-root
        (lambda _g7725_
          (let ((_g7724_ (length _g7725_)))
            (cond ((##fx= _g7724_ 0) (apply gx#core-context-root__0 _g7725_))
                  ((##fx= _g7724_ 1) (apply gx#core-context-root__% _g7725_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g7725_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx5044_ . __50415045_)
        (if (##structure-instance-of? _ctx5044_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx5044_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx5044_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx5052_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx5052_))))
      (define gx#core-context-rebind?
        (lambda _g7727_
          (let ((_g7726_ (length _g7727_)))
            (cond ((##fx= _g7726_ 0)
                   (apply gx#core-context-rebind?__0 _g7727_))
                  ((##fx= _g7726_ 1)
                   (apply gx#core-context-rebind?__% _g7727_))
                  ((##fx>= _g7726_ 1)
                   (apply gx#core-context-rebind?__% _g7727_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g7727_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx5027_)
        (let ((_$e5029_ (gx#core-context-top__1 _ctx5027_)))
          (if _$e5029_
              ((lambda (_ctx5032_)
                 (if (##structure-instance-of? _ctx5032_ 'gx#module-context::t)
                     (##structure-ref _ctx5032_ '6 gx#module-context::t '#f)
                     '#f))
               _$e5029_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx5038_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx5038_))))
      (define gx#core-context-namespace
        (lambda _g7729_
          (let ((_g7728_ (length _g7729_)))
            (cond ((##fx= _g7728_ 0)
                   (apply gx#core-context-namespace__0 _g7729_))
                  ((##fx= _g7728_ 1)
                   (apply gx#core-context-namespace__% _g7729_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g7729_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind5013_ _is?5014_)
        (if (##structure-direct-instance-of? _bind5013_ 'gx#syntax-binding::t)
            (_is?5014_
             (##direct-structure-ref _bind5013_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind5019_)
          (let ((_is?5021_ gx#expander?))
            (gx#expander-binding?__% _bind5019_ _is?5021_))))
      (define gx#expander-binding?
        (lambda _g7731_
          (let ((_g7730_ (length _g7731_)))
            (cond ((##fx= _g7730_ 1) (apply gx#expander-binding?__0 _g7731_))
                  ((##fx= _g7730_ 2) (apply gx#expander-binding?__% _g7731_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g7731_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind5010_)
      (gx#expander-binding?__% _bind5010_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind5008_)
      (gx#expander-binding?__% _bind5008_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind5002_)
      (letrec ((_direct-special-form?5004_
                (lambda (_obj5006_)
                  (##structure-direct-instance-of?
                   _obj5006_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__% _bind5002_ _direct-special-form?5004_))))
  (define gx#special-form-binding?
    (lambda (_bind5000_)
      (gx#expander-binding?__% _bind5000_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4991_)
      (letrec ((_feature?4993_
                (lambda (_e4995_)
                  (let ((_$e4997_
                         (##structure-instance-of?
                          _e4995_
                          'gx#feature-expander::t)))
                    (if _$e4997_
                        _$e4997_
                        (##structure-instance-of?
                         _e4995_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind4991_ _feature?4993_))))
  (define gx#private-feature-binding?
    (lambda (_bind4989_)
      (gx#expander-binding?__% _bind4989_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id4976_ _bound?4977_)
        (if (gx#identifier? _id4976_)
            (_bound?4977_ (gx#resolve-identifier__0 _id4976_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4982_)
          (let ((_bound?4984_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id4982_ _bound?4984_))))
      (define gx#core-bound-identifier?
        (lambda _g7733_
          (let ((_g7732_ (length _g7733_)))
            (cond ((##fx= _g7732_ 1)
                   (apply gx#core-bound-identifier?__0 _g7733_))
                  ((##fx= _g7732_ 2)
                   (apply gx#core-bound-identifier?__% _g7733_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g7733_))))))))
  (define gx#core-identifier=?
    (lambda (_x4966_ _y4967_)
      (letrec ((_y=?4969_
                (lambda (_xid4973_)
                  ((if (list? _y4967_) memq eq?) _xid4973_ _y4967_))))
        (let ((_bind4971_ (gx#resolve-identifier__0 _x4966_)))
          (if (##structure-instance-of? _bind4971_ 'gx#binding::t)
              (_y=?4969_ (##structure-ref _bind4971_ '1 gx#binding::t '#f))
              (_y=?4969_ (gx#stx-e _x4966_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4964_)
      (if (interned-symbol? _e4964_)
          (string-index (symbol->string _e4964_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx4922_ _src4923_ _ctx4924_ _marks4925_)
        (if (gx#sealed-syntax? _stx4922_)
            (gx#stx-unwrap__0 _stx4922_)
            (if (gx#identifier? _stx4922_)
                (let ((_id4927_ (gx#syntax-local-unwrap _stx4922_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4927_)
                   (let ((_$e4929_ (gx#stx-source _id4927_)))
                     (if _$e4929_ _$e4929_ _src4923_))
                   _ctx4924_
                   (##direct-structure-ref
                    _id4927_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4922_)
                    (gx#stx-e _stx4922_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4922_
                     (let ((_$e4932_ (gx#stx-source _stx4922_)))
                       (if _$e4932_ _$e4932_ _src4923_))
                     _ctx4924_
                     (reverse _marks4925_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4938_)
          (let* ((_src4940_ '#f)
                 (_ctx4942_ (gx#current-expander-context))
                 (_marks4944_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4938_
             _src4940_
             _ctx4942_
             _marks4944_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4946_ _src4947_)
          (let* ((_ctx4949_ (gx#current-expander-context))
                 (_marks4951_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4946_
             _src4947_
             _ctx4949_
             _marks4951_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4953_ _src4954_ _ctx4955_)
          (let ((_marks4957_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4953_
             _src4954_
             _ctx4955_
             _marks4957_))))
      (define gx#core-quote-syntax
        (lambda _g7735_
          (let ((_g7734_ (length _g7735_)))
            (cond ((##fx= _g7734_ 1) (apply gx#core-quote-syntax__0 _g7735_))
                  ((##fx= _g7734_ 2) (apply gx#core-quote-syntax__1 _g7735_))
                  ((##fx= _g7734_ 3) (apply gx#core-quote-syntax__2 _g7735_))
                  ((##fx= _g7734_ 4) (apply gx#core-quote-syntax__% _g7735_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g7735_))))))))
  (define gx#core-cons
    (lambda (_hd4918_ _tl4919_)
      (cons (gx#core-quote-syntax__0 _hd4918_) _tl4919_)))
  (define gx#core-list
    (lambda (_hd4915_ . _rest4916_)
      (cons (gx#core-quote-syntax__0 _hd4915_) _rest4916_)))
  (define gx#core-cons*
    (lambda (_hd4912_ . _rest4913_)
      (apply cons* (gx#core-quote-syntax__0 _hd4912_) _rest4913_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path4886_ _rel4887_)
        (let ((_path4899_ (gx#stx-e _stx-path4886_))
              (_reldir4900_
               (let _lp4889_ ((_relsrc4891_
                               (let ((_$e4896_ (gx#stx-source _stx-path4886_)))
                                 (if _$e4896_ _$e4896_ _rel4887_))))
                 (if (##structure-instance-of? _relsrc4891_ 'gerbil#AST::t)
                     (_lp4889_
                      (let ((_$e4893_ (gx#stx-source _relsrc4891_)))
                        (if _$e4893_ _$e4893_ (gx#stx-e _relsrc4891_))))
                     (if (source-location-path? _relsrc4891_)
                         (path-directory (source-location-path _relsrc4891_))
                         (if (string? _relsrc4891_)
                             (path-directory _relsrc4891_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4899_ (path-normalize _reldir4900_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4905_)
          (let ((_rel4907_ '#f))
            (gx#core-resolve-path__% _stx-path4905_ _rel4907_))))
      (define gx#core-resolve-path
        (lambda _g7737_
          (let ((_g7736_ (length _g7737_)))
            (cond ((##fx= _g7736_ 1) (apply gx#core-resolve-path__0 _g7737_))
                  ((##fx= _g7736_ 2) (apply gx#core-resolve-path__% _g7737_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g7737_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr4842_ _ctx4843_)
        (let* ((_repr48444851_ _repr4842_)
               (_E48464855_
                (lambda () (error '"No clause matching" _repr48444851_)))
               (_K48474863_
                (lambda (_subs4858_ _phi4859_)
                  (let ((_subst4861_
                         (if (not (null? _subs4858_))
                             (list->hash-table-eq _subs4858_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst4861_
                     _ctx4843_
                     _phi4859_
                     '#f)))))
          (if (##pair? _repr48444851_)
              (let ((_hd48484866_ (##car _repr48444851_))
                    (_tl48494868_ (##cdr _repr48444851_)))
                (let* ((_phi4871_ _hd48484866_) (_subs4873_ _tl48494868_))
                  (_K48474863_ _subs4873_ _phi4871_)))
              (_E48464855_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr4878_)
          (let ((_ctx4880_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr4878_ _ctx4880_))))
      (define gx#core-deserialize-mark
        (lambda _g7739_
          (let ((_g7738_ (length _g7739_)))
            (cond ((##fx= _g7738_ 1)
                   (apply gx#core-deserialize-mark__0 _g7739_))
                  ((##fx= _g7738_ 2)
                   (apply gx#core-deserialize-mark__% _g7739_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g7739_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4839_) (gx#stx-rewrap _stx4839_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4837_)
      (gx#stx-unwrap__% _stx4837_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4807_)
      (let* ((_g48084816_ (gx#current-expander-marks))
             (_else48104824_ (lambda () _stx4807_))
             (_K48124829_
              (lambda (_hd4827_) (gx#stx-apply-mark _stx4807_ _hd4827_))))
        (if (##pair? _g48084816_)
            (let* ((_hd48134832_ (##car _g48084816_)) (_hd4835_ _hd48134832_))
              (_K48124829_ _hd4835_))
            (_else48104824_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx4792_ _E4793_)
        (let ((_bind4795_ (gx#resolve-identifier__0 _stx4792_)))
          (if (##structure-direct-instance-of?
               _bind4795_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4795_ '4 gx#syntax-binding::t '#f)
              (_E4793_ _stx4792_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4800_)
          (let ((_E4802_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx4800_ _E4802_))))
      (define gx#syntax-local-e
        (lambda _g7741_
          (let ((_g7740_ (length _g7741_)))
            (cond ((##fx= _g7740_ 1) (apply gx#syntax-local-e__0 _g7741_))
                  ((##fx= _g7740_ 2) (apply gx#syntax-local-e__% _g7741_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g7741_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx4776_ _E4777_)
        (let ((_e4779_ (gx#syntax-local-e__% _stx4776_ _E4777_)))
          (if (##structure-instance-of? _e4779_ 'gx#expander::t)
              (##structure-ref _e4779_ '1 gx#expander::t '#f)
              _e4779_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4784_)
          (let ((_E4786_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx4784_ _E4786_))))
      (define gx#syntax-local-value
        (lambda _g7743_
          (let ((_g7742_ (length _g7743_)))
            (cond ((##fx= _g7742_ 1) (apply gx#syntax-local-value__0 _g7743_))
                  ((##fx= _g7742_ 2) (apply gx#syntax-local-value__% _g7743_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g7743_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4773_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4773_))))
