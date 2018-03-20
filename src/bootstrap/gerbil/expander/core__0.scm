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
    (lambda _$args7827_
      (apply make-struct-instance gx#expander-context::t _$args7827_)))
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
    (lambda _$args7824_
      (apply make-struct-instance gx#root-context::t _$args7824_)))
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
    (lambda _$args7821_
      (apply make-struct-instance gx#phi-context::t _$args7821_)))
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
    (lambda _$args7818_
      (apply make-struct-instance gx#top-context::t _$args7818_)))
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
    (lambda _$args7815_
      (apply make-struct-instance gx#module-context::t _$args7815_)))
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
    (lambda _$args7812_
      (apply make-struct-instance gx#prelude-context::t _$args7812_)))
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
    (lambda _$args7809_
      (apply make-struct-instance gx#local-context::t _$args7809_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self7793_ _id7794_ _super7795_)
        (if (##fx< '5 (##vector-length _self7793_))
            (begin
              (##vector-set! _self7793_ '1 _id7794_)
              (##vector-set! _self7793_ '2 (make-hash-table-eq))
              (##vector-set! _self7793_ '3 _super7795_)
              (##vector-set! _self7793_ '4 '#f)
              (##vector-set! _self7793_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7793_))))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self7800_ _id7801_)
          (let ((_super7803_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self7800_ _id7801_ _super7803_))))
      (define gx#phi-context:::init!
        (lambda _g7840_
          (let ((_g7839_ (length _g7840_)))
            (cond ((##fx= _g7839_ 2) (apply gx#phi-context:::init!__0 _g7840_))
                  ((##fx= _g7839_ 3) (apply gx#phi-context:::init!__% _g7840_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g7840_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self7657_ _super7658_)
        (if (##fx< '5 (##vector-length _self7657_))
            (begin
              (##vector-set! _self7657_ '1 (gensym 'L))
              (##vector-set! _self7657_ '2 (make-hash-table-eq))
              (##vector-set! _self7657_ '3 _super7658_)
              (##vector-set! _self7657_ '4 '#f)
              (##vector-set! _self7657_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7657_))))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self7663_)
          (let ((_super7665_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self7663_ _super7665_))))
      (define gx#local-context:::init!
        (lambda _g7842_
          (let ((_g7841_ (length _g7842_)))
            (cond ((##fx= _g7841_ 1)
                   (apply gx#local-context:::init!__0 _g7842_))
                  ((##fx= _g7841_ 2)
                   (apply gx#local-context:::init!__% _g7842_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g7842_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args7531_
      (apply make-struct-instance gx#binding::t _$args7531_)))
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
    (lambda _$args7528_
      (apply make-struct-instance gx#runtime-binding::t _$args7528_)))
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
    (lambda _$args7525_
      (apply make-struct-instance gx#local-binding::t _$args7525_)))
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
    (lambda _$args7522_
      (apply make-struct-instance gx#top-binding::t _$args7522_)))
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
    (lambda _$args7519_
      (apply make-struct-instance gx#module-binding::t _$args7519_)))
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
    (lambda _$args7516_
      (apply make-struct-instance gx#extern-binding::t _$args7516_)))
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
    (lambda _$args7513_
      (apply make-struct-instance gx#syntax-binding::t _$args7513_)))
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
    (lambda _$args7510_
      (apply make-struct-instance gx#import-binding::t _$args7510_)))
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
    (lambda _$args7507_
      (apply make-struct-instance gx#alias-binding::t _$args7507_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args7504_
      (apply make-struct-instance gx#expander::t _$args7504_)))
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
    (lambda _$args7501_
      (apply make-struct-instance gx#core-expander::t _$args7501_)))
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
    (lambda _$args7498_
      (apply make-struct-instance gx#expression-form::t _$args7498_)))
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
    (lambda _$args7495_
      (apply make-struct-instance gx#special-form::t _$args7495_)))
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
    (lambda _$args7492_
      (apply make-struct-instance gx#definition-form::t _$args7492_)))
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
    (lambda _$args7489_
      (apply make-struct-instance gx#top-special-form::t _$args7489_)))
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
    (lambda _$args7486_
      (apply make-struct-instance gx#module-special-form::t _$args7486_)))
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
    (lambda _$args7483_
      (apply make-struct-instance gx#feature-expander::t _$args7483_)))
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
    (lambda _$args7480_
      (apply make-struct-instance gx#private-feature-expander::t _$args7480_)))
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
    (lambda _$args7477_
      (apply make-struct-instance gx#reserved-expander::t _$args7477_)))
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
    (lambda _$args7474_
      (apply make-struct-instance gx#macro-expander::t _$args7474_)))
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
    (lambda _$args7471_
      (apply make-struct-instance gx#rename-macro-expander::t _$args7471_)))
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
    (lambda _$args7468_
      (apply make-struct-instance gx#user-expander::t _$args7468_)))
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
    (lambda _$args7465_
      (apply make-struct-instance gx#expander-mark::t _$args7465_)))
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
    (lambda _$args7462_
      (apply make-struct-instance gx#syntax-error::t _$args7462_)))
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
    (lambda (_where7457_ _message7458_ _stx7459_ . _details7460_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message7458_
              (cons _stx7459_ _details7460_)
              _where7457_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx7444_ _expression?7445_)
        (gx#eval-syntax* (gx#core-expand__% _stx7444_ _expression?7445_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx7450_)
          (let ((_expression?7452_ '#f))
            (gx#eval-syntax__% _stx7450_ _expression?7452_))))
      (define gx#eval-syntax
        (lambda _g7844_
          (let ((_g7843_ (length _g7844_)))
            (cond ((##fx= _g7843_ 1) (apply gx#eval-syntax__0 _g7844_))
                  ((##fx= _g7843_ 2) (apply gx#eval-syntax__% _g7844_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g7844_))))))))
  (define gx#eval-syntax*
    (lambda (_stx7441_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx7441_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx7428_ _expression?7429_)
        (if _expression?7429_
            (gx#core-expand-expression _stx7428_)
            (gx#core-expand-top _stx7428_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx7434_)
          (let ((_expression?7436_ '#f))
            (gx#core-expand__% _stx7434_ _expression?7436_))))
      (define gx#core-expand
        (lambda _g7846_
          (let ((_g7845_ (length _g7846_)))
            (cond ((##fx= _g7845_ 1) (apply gx#core-expand__0 _g7846_))
                  ((##fx= _g7845_ 2) (apply gx#core-expand__% _g7846_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g7846_))))))))
  (define gx#core-expand-top
    (lambda (_stx7395_)
      (let* ((_stx7397_ (gx#core-expand*__0 _stx7395_))
             (_e73987405_ _stx7397_)
             (_E74007409_ (lambda () (gx#core-expand-expression _stx7397_)))
             (_E73997423_
              (lambda ()
                (if (gx#stx-pair? _e73987405_)
                    (let ((_e74017413_ (gx#syntax-e _e73987405_)))
                      (let ((_hd74027416_ (##car _e74017413_))
                            (_tl74037418_ (##cdr _e74017413_)))
                        (let ((_form7421_ _hd74027416_))
                          (if (gx#core-bound-identifier?__0 _form7421_)
                              _stx7397_
                              (_E74007409_)))))
                    (_E74007409_)))))
        (_E73997423_))))
  (define gx#core-expand-expression
    (lambda (_stx7317_)
      (letrec ((_sealed-expression?7319_
                (lambda (_hd7365_)
                  (if (gx#sealed-syntax? _hd7365_)
                      (let* ((_e73667373_ _hd7365_)
                             (_E73687377_ (lambda () '#f))
                             (_E73677391_
                              (lambda ()
                                (if (gx#stx-pair? _e73667373_)
                                    (let ((_e73697381_
                                           (gx#syntax-e _e73667373_)))
                                      (let ((_hd73707384_ (##car _e73697381_))
                                            (_tl73717386_ (##cdr _e73697381_)))
                                        (let ((_form7389_ _hd73707384_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form7389_
                                               gx#expression-form-binding?)
                                              (_E73687377_)))))
                                    (_E73687377_)))))
                        (_E73677391_))
                      '#f)))
               (_illegal-expression7320_
                (lambda (_hd7363_ . _g7847_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx7317_
                   _hd7363_)))
               (_expand-e7321_
                (lambda (_form7358_ _hd7359_)
                  (let ((_bind7361_
                         (if (##structure-instance-of?
                              _form7358_
                              'gx#binding::t)
                             _form7358_
                             (gx#resolve-identifier__0 _form7358_))))
                    (if (gx#core-expander-binding? _bind7361_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind7361_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd7359_
                          (gx#stx-source _stx7317_)))
                        (if (##structure-direct-instance-of?
                             _bind7361_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind7361_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd7359_
                               (gx#stx-source _stx7317_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx7317_
                             _form7358_)))))))
        (let ((_hd7323_ (gx#core-expand-head _stx7317_)))
          (if (_sealed-expression?7319_ _hd7323_)
              _hd7323_
              (if (gx#stx-pair? _hd7323_)
                  (let* ((_e73247331_ _hd7323_)
                         (_E73267335_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e73247331_)))
                         (_E73257354_
                          (lambda ()
                            (if (gx#stx-pair? _e73247331_)
                                (let ((_e73277339_ (gx#syntax-e _e73247331_)))
                                  (let ((_hd73287342_ (##car _e73277339_))
                                        (_tl73297344_ (##cdr _e73277339_)))
                                    (let ((_form7347_ _hd73287342_))
                                      (if '#t
                                          (let ((_bind7349_
                                                 (if (gx#identifier?
                                                      _form7347_)
                                                     (gx#resolve-identifier__0
                                                      _form7347_)
                                                     '#f)))
                                            (if (if (not _bind7349_)
                                                    '#t
                                                    (not (gx#core-expander-binding?
                                                          _bind7349_)))
                                                (_expand-e7321_
                                                 '%%app
                                                 (cons '%%app _hd7323_))
                                                (if (eq? (##structure-ref
                                                          _bind7349_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd7323_
                                                     _illegal-expression7320_)
                                                    (if (gx#expression-form-binding?
                                                         _bind7349_)
                                                        (_expand-e7321_
                                                         _bind7349_
                                                         _hd7323_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind7349_)
                                                            (gx#core-expand-expression
                                                             (_expand-e7321_
                                                              _bind7349_
                                                              _hd7323_))
                                                            (_illegal-expression7320_
                                                             _hd7323_))))))
                                          (_E73267335_)))))
                                (_E73267335_)))))
                    (_E73257354_))
                  (if (gx#core-bound-identifier?__0 _hd7323_)
                      (_illegal-expression7320_ _hd7323_)
                      (if (gx#identifier? _hd7323_)
                          (_expand-e7321_
                           '%%ref
                           (cons '%%ref (cons _hd7323_ '())))
                          (if (gx#stx-datum? _hd7323_)
                              (_expand-e7321_
                               '%#quote
                               (cons '%#quote (cons _hd7323_ '())))
                              (_illegal-expression7320_ _hd7323_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx7312_)
      (call-with-parameters
       (lambda ()
         (let ((_stx7315_ (gx#core-expand-expression _stx7312_)))
           (values _stx7315_ (gx#eval-syntax* _stx7315_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx7293_ _stop?7294_)
        (let _lp7296_ ((_stx7298_ _stx7293_))
          (if (_stop?7294_ _stx7298_)
              _stx7298_
              (let ((_rstx7300_ (gx#core-expand1 _stx7298_)))
                (if (eq? _stx7298_ _rstx7300_)
                    _stx7298_
                    (_lp7296_ _rstx7300_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx7305_)
          (let ((_stop?7307_ false))
            (gx#core-expand*__% _stx7305_ _stop?7307_))))
      (define gx#core-expand*
        (lambda _g7849_
          (let ((_g7848_ (length _g7849_)))
            (cond ((##fx= _g7848_ 1) (apply gx#core-expand*__0 _g7849_))
                  ((##fx= _g7848_ 2) (apply gx#core-expand*__% _g7849_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g7849_))))))))
  (define gx#core-expand1
    (lambda (_stx7249_)
      (letrec ((_step7251_
                (lambda (_hd7288_)
                  (let ((_bind7290_ (gx#resolve-identifier__0 _hd7288_)))
                    (if (##structure-instance-of?
                         _bind7290_
                         'gx#runtime-binding::t)
                        _stx7249_
                        (if (##structure-direct-instance-of?
                             _bind7290_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind7290_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx7249_)
                            (if (not _bind7290_)
                                _stx7249_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx7249_))))))))
        (let* ((_e72527260_ _stx7249_)
               (_E72587264_ (lambda () _stx7249_))
               (_E72547270_
                (lambda ()
                  (let ((_hd7268_ _e72527260_))
                    (if (gx#identifier? _hd7268_)
                        (_step7251_ _hd7268_)
                        (_E72587264_)))))
               (_E72537284_
                (lambda ()
                  (if (gx#stx-pair? _e72527260_)
                      (let ((_e72557274_ (gx#syntax-e _e72527260_)))
                        (let ((_hd72567277_ (##car _e72557274_))
                              (_tl72577279_ (##cdr _e72557274_)))
                          (let ((_hd7282_ _hd72567277_))
                            (if (gx#identifier? _hd7282_)
                                (_step7251_ _hd7282_)
                                (_E72547270_)))))
                      (_E72547270_)))))
          (_E72537284_)))))
  (define gx#core-expand-head
    (lambda (_stx7215_)
      (letrec ((_stop?7217_
                (lambda (_stx7219_)
                  (let* ((_e72207227_ _stx7219_)
                         (_E72227231_ (lambda () '#f))
                         (_E72217245_
                          (lambda ()
                            (if (gx#stx-pair? _e72207227_)
                                (let ((_e72237235_ (gx#syntax-e _e72207227_)))
                                  (let ((_hd72247238_ (##car _e72237235_))
                                        (_tl72257240_ (##cdr _e72237235_)))
                                    (let ((_hd7243_ _hd72247238_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd7243_)
                                          (_E72227231_)))))
                                (_E72227231_)))))
                    (_E72217245_)))))
        (gx#core-expand*__% _stx7215_ _stop?7217_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx7021_ _expand-special7022_ _begin-form7023_ _expand-e7024_)
        (letrec ((_expand-splice7026_
                  (lambda (_hd7189_ _body7190_ _rest7191_ _r7192_)
                    (if (gx#stx-list? _body7190_)
                        (_K7030_ (gx#stx-foldr cons _rest7191_ _body7190_)
                                 _r7192_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx7021_
                         _hd7189_))))
                 (_expand-cond-expand7027_
                  (lambda (_hd7185_ _rest7186_ _r7187_)
                    (_K7030_ (cons (gx#core-expand-cond-expand% _hd7185_)
                                   _rest7186_)
                             _r7187_)))
                 (_expand-include7028_
                  (lambda (_hd7134_ _rest7135_ _r7136_)
                    (let* ((_e71377147_ _hd7134_)
                           (_E71397151_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e71377147_)))
                           (_E71387181_
                            (lambda ()
                              (if (gx#stx-pair? _e71377147_)
                                  (let ((_e71407155_
                                         (gx#syntax-e _e71377147_)))
                                    (let ((_hd71417158_ (##car _e71407155_))
                                          (_tl71427160_ (##cdr _e71407155_)))
                                      (if (gx#stx-pair? _tl71427160_)
                                          (let ((_e71437163_
                                                 (gx#syntax-e _tl71427160_)))
                                            (let ((_hd71447166_
                                                   (##car _e71437163_))
                                                  (_tl71457168_
                                                   (##cdr _e71437163_)))
                                              (let ((_path7171_ _hd71447166_))
                                                (if (gx#stx-null? _tl71457168_)
                                                    (if (gx#stx-string?
                                                         _path7171_)
                                                        (let* ((_rpath7173_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path7171_
                         (gx#stx-source _hd7134_)))
                       (_block7175_
                        (gx#core-expand-include%__% _hd7134_ _rpath7173_))
                       (_rbody7178_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block7175_
                            _expand-special7022_
                            '#f
                            _expand-e7024_))
                         gx#current-expander-path
                         (cons _rpath7173_ (gx#current-expander-path)))))
                  (_K7030_ _rest7135_ (foldr1 cons _r7136_ _rbody7178_)))
                (_E71397151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E71397151_)))))
                                          (_E71397151_))))
                                  (_E71397151_)))))
                      (_E71387181_))))
                 (_expand-expression7029_
                  (lambda (_hd7130_ _rest7131_ _r7132_)
                    (_K7030_ _rest7131_
                             (cons (_expand-e7024_ _hd7130_) _r7132_))))
                 (_K7030_ (lambda (_rest7060_ _r7061_)
                            (let* ((_e70627069_ _rest7060_)
                                   (_E70647073_
                                    (lambda ()
                                      (if _begin-form7023_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form7023_
                                            (reverse _r7061_))
                                           (gx#stx-source _stx7021_))
                                          _r7061_)))
                                   (_E70637126_
                                    (lambda ()
                                      (if (gx#stx-pair? _e70627069_)
                                          (let ((_e70657077_
                                                 (gx#syntax-e _e70627069_)))
                                            (let ((_hd70667080_
                                                   (##car _e70657077_))
                                                  (_tl70677082_
                                                   (##cdr _e70657077_)))
                                              (let* ((_hd7085_ _hd70667080_)
                                                     (_rest7087_ _tl70677082_))
                                                (if '#t
                                                    (let* ((_hd7089_
                                                            (gx#core-expand-head
                                                             _hd7085_))
                                                           (_e70907097_
                                                            _hd7089_)
                                                           (_E70927101_
                                                            (lambda ()
                                                              (_expand-expression7029_
                                                               _hd7089_
                                                               _rest7087_
                                                               _r7061_)))
                                                           (_E70917122_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e70907097_)
                          (let ((_e70937105_ (gx#syntax-e _e70907097_)))
                            (let ((_hd70947108_ (##car _e70937105_))
                                  (_tl70957110_ (##cdr _e70937105_)))
                              (let* ((_form7113_ _hd70947108_)
                                     (_body7115_ _tl70957110_))
                                (if '#t
                                    (let ((_bind7117_
                                           (if (gx#identifier? _form7113_)
                                               (gx#resolve-identifier__0
                                                _form7113_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind7117_)
                                          (let ((_$e7119_
                                                 (##structure-ref
                                                  _bind7117_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e7119_)
                                                (_expand-splice7026_
                                                 _hd7089_
                                                 _body7115_
                                                 _rest7087_
                                                 _r7061_)
                                                (if (eq? '%#cond-expand
                                                         _$e7119_)
                                                    (_expand-cond-expand7027_
                                                     _hd7089_
                                                     _rest7087_
                                                     _r7061_)
                                                    (if (eq? '%#include
                                                             _$e7119_)
                                                        (_expand-include7028_
                                                         _hd7089_
                                                         _rest7087_
                                                         _r7061_)
                                                        (_expand-special7022_
                                                         _hd7089_
                                                         _K7030_
                                                         _rest7087_
                                                         _r7061_)))))
                                          (_expand-expression7029_
                                           _hd7089_
                                           _rest7087_
                                           _r7061_)))
                                    (_E70927101_)))))
                          (_E70927101_)))))
              (_E70917122_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E70647073_)))))
                                          (_E70647073_)))))
                              (_E70637126_)))))
          (let* ((_e70317038_ _stx7021_)
                 (_E70337042_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e70317038_)))
                 (_E70327056_
                  (lambda ()
                    (if (gx#stx-pair? _e70317038_)
                        (let ((_e70347046_ (gx#syntax-e _e70317038_)))
                          (let ((_hd70357049_ (##car _e70347046_))
                                (_tl70367051_ (##cdr _e70347046_)))
                            (let ((_body7054_ _tl70367051_))
                              (if (gx#stx-list? _body7054_)
                                  (_K7030_ _body7054_ '())
                                  (_E70337042_)))))
                        (_E70337042_)))))
            (_E70327056_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx7197_ _expand-special7198_)
          (let* ((_begin-form7200_ '%#begin)
                 (_expand-e7202_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7197_
             _expand-special7198_
             _begin-form7200_
             _expand-e7202_))))
      (define gx#core-expand-block__1
        (lambda (_stx7204_ _expand-special7205_ _begin-form7206_)
          (let ((_expand-e7208_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7204_
             _expand-special7205_
             _begin-form7206_
             _expand-e7208_))))
      (define gx#core-expand-block
        (lambda _g7851_
          (let ((_g7850_ (length _g7851_)))
            (cond ((##fx= _g7850_ 2) (apply gx#core-expand-block__0 _g7851_))
                  ((##fx= _g7850_ 3) (apply gx#core-expand-block__1 _g7851_))
                  ((##fx= _g7850_ 4) (apply gx#core-expand-block__% _g7851_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g7851_))))))))
  (define gx#core-expand-block*
    (lambda (_stx6969_ _expand-special6970_)
      (let* ((_g69716982_
              (gx#core-expand-block__1 _stx6969_ _expand-special6970_ '#f))
             (_E69756986_
              (lambda () (error '"No clause matching" _g69716982_))))
        (let ((_K69807017_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx6969_)))
              (_K69777003_ (lambda (_expr7001_) _expr7001_))
              (_K69766992_
               (lambda (_body6990_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body6990_))
                  (gx#stx-source _stx6969_)))))
          (let ((_try-match69737013_
                 (lambda ()
                   (if (##pair? _g69716982_)
                       (let ((_tl69797008_ (##cdr _g69716982_))
                             (_hd69787006_ (##car _g69716982_)))
                         (if (##null? _tl69797008_)
                             (let ((_expr7011_ _hd69787006_))
                               (_K69777003_ _expr7011_))
                             (let ((_body6995_ _g69716982_))
                               (_K69766992_ _body6995_))))
                       (let ((_body6995_ _g69716982_))
                         (_K69766992_ _body6995_))))))
            (if (##null? _g69716982_) (_K69807017_) (_try-match69737013_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx6827_)
      (letrec ((_satisfied?6829_
                (lambda (_condition6927_)
                  (let* ((_e69286936_ _condition6927_)
                         (_E69316940_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e69286936_)))
                         (_E69306959_
                          (lambda ()
                            (if (gx#stx-pair? _e69286936_)
                                (let ((_e69326944_ (gx#syntax-e _e69286936_)))
                                  (let ((_hd69336947_ (##car _e69326944_))
                                        (_tl69346949_ (##cdr _e69326944_)))
                                    (let* ((_combinator6952_ _hd69336947_)
                                           (_body6954_ _tl69346949_))
                                      (if (gx#stx-list? _body6954_)
                                          (let ((_$e6956_
                                                 (gx#stx-e _combinator6952_)))
                                            (if (eq? 'not _$e6956_)
                                                (not (gx#stx-ormap
                                                      _satisfied?6829_
                                                      _body6954_))
                                                (if (eq? 'and _$e6956_)
                                                    (gx#stx-andmap
                                                     _satisfied?6829_
                                                     _body6954_)
                                                    (if (eq? 'or _$e6956_)
                                                        (gx#stx-ormap
                                                         _satisfied?6829_
                                                         _body6954_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e6956_)
                    (gx#stx-andmap gx#core-resolve-identifier _body6954_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx6827_
                     _combinator6952_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E69316940_)))))
                                (_E69316940_))))
                         (_E69296965_
                          (lambda ()
                            (let ((_id6963_ _e69286936_))
                              (if (gx#identifier? _id6963_)
                                  (gx#core-bound-identifier?__%
                                   _id6963_
                                   gx#feature-binding?)
                                  (_E69306959_))))))
                    (_E69296965_))))
               (_loop6830_
                (lambda (_rest6860_)
                  (let* ((_e68616869_ _rest6860_)
                         (_E68676873_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e68616869_)))
                         (_E68636877_
                          (lambda ()
                            (if (gx#stx-null? _e68616869_)
                                (if '#t '() (_E68676873_))
                                (_E68676873_))))
                         (_E68626923_
                          (lambda ()
                            (if (gx#stx-pair? _e68616869_)
                                (let ((_e68646881_ (gx#syntax-e _e68616869_)))
                                  (let ((_hd68656884_ (##car _e68646881_))
                                        (_tl68666886_ (##cdr _e68646881_)))
                                    (let* ((_hd6889_ _hd68656884_)
                                           (_rest6891_ _tl68666886_))
                                      (if '#t
                                          (let* ((_e68926899_ _hd6889_)
                                                 (_E68946903_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e68926899_)))
                                                 (_E68936919_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e68926899_)
                                                        (let ((_e68956907_
                                                               (gx#syntax-e
                                                                _e68926899_)))
                                                          (let ((_hd68966910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e68956907_))
                        (_tl68976912_ (##cdr _e68956907_)))
                    (let* ((_condition6915_ _hd68966910_)
                           (_body6917_ _tl68976912_))
                      (if '#t
                          (if (gx#stx-eq? _condition6915_ 'else)
                              (if (gx#stx-null? _rest6891_)
                                  _body6917_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx6827_
                                   _hd6889_))
                              (if (_satisfied?6829_ _condition6915_)
                                  _body6917_
                                  (_loop6830_ _rest6891_)))
                          (_E68946903_)))))
                (_E68946903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E68936919_))
                                          (_E68636877_)))))
                                (_E68636877_)))))
                    (_E68626923_)))))
        (let* ((_e68316838_ _stx6827_)
               (_E68336842_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e68316838_)))
               (_E68326856_
                (lambda ()
                  (if (gx#stx-pair? _e68316838_)
                      (let ((_e68346846_ (gx#syntax-e _e68316838_)))
                        (let ((_hd68356849_ (##car _e68346846_))
                              (_tl68366851_ (##cdr _e68346846_)))
                          (let ((_clauses6854_ _tl68366851_))
                            (if (gx#stx-list? _clauses6854_)
                                (gx#core-cons
                                 'begin
                                 (_loop6830_ _clauses6854_))
                                (_E68336842_)))))
                      (_E68336842_)))))
          (_E68326856_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx6770_ _rpath6771_)
        (let* ((_e67726782_ _stx6770_)
               (_E67746786_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e67726782_)))
               (_E67736813_
                (lambda ()
                  (if (gx#stx-pair? _e67726782_)
                      (let ((_e67756790_ (gx#syntax-e _e67726782_)))
                        (let ((_hd67766793_ (##car _e67756790_))
                              (_tl67776795_ (##cdr _e67756790_)))
                          (if (gx#stx-pair? _tl67776795_)
                              (let ((_e67786798_ (gx#syntax-e _tl67776795_)))
                                (let ((_hd67796801_ (##car _e67786798_))
                                      (_tl67806803_ (##cdr _e67786798_)))
                                  (let ((_path6806_ _hd67796801_))
                                    (if (gx#stx-null? _tl67806803_)
                                        (if (gx#stx-string? _path6806_)
                                            (let ((_rpath6811_
                                                   (let ((_$e6808_
                                                          _rpath6771_))
                                                     (if _$e6808_
                                                         _$e6808_
                                                         (gx#core-resolve-path__%
                                                          _path6806_
                                                          (gx#stx-source
                                                           _stx6770_))))))
                                              (if (member _rpath6811_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx6770_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath6811_))
                                                    (gx#stx-source
                                                     _stx6770_)))))
                                            (_E67746786_))
                                        (_E67746786_)))))
                              (_E67746786_))))
                      (_E67746786_)))))
          (_E67736813_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx6820_)
          (let ((_rpath6822_ '#f))
            (gx#core-expand-include%__% _stx6820_ _rpath6822_))))
      (define gx#core-expand-include%
        (lambda _g7853_
          (let ((_g7852_ (length _g7853_)))
            (cond ((##fx= _g7852_ 1)
                   (apply gx#core-expand-include%__0 _g7853_))
                  ((##fx= _g7852_ 2)
                   (apply gx#core-expand-include%__% _g7853_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g7853_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K6739_ _stx6740_ _method6741_)
        (if (procedure? _K6739_)
            (let ((_$e6743_ (gx#stx-source _stx6740_)))
              (if _$e6743_
                  ((lambda (_g67456747_)
                     (gx#stx-wrap-source (_K6739_ _stx6740_) _g67456747_))
                   _$e6743_)
                  (_K6739_ _stx6740_)))
            (let ((_$e6750_ (bound-method-ref _K6739_ _method6741_)))
              (if _$e6750_
                  ((lambda (_g67526754_)
                     (gx#core-apply-expander__%
                      _g67526754_
                      _stx6740_
                      _method6741_))
                   _$e6750_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx6740_
                   _method6741_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K6760_ _stx6761_)
          (let ((_method6763_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K6760_ _stx6761_ _method6763_))))
      (define gx#core-apply-expander
        (lambda _g7855_
          (let ((_g7854_ (length _g7855_)))
            (cond ((##fx= _g7854_ 2) (apply gx#core-apply-expander__0 _g7855_))
                  ((##fx= _g7854_ 3) (apply gx#core-apply-expander__% _g7855_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g7855_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self6735_ _stx6736_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx6736_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self6588_ _stx6589_)
      (let* ((_self65906596_ _self6588_)
             (_E65926600_
              (lambda () (error '"No clause matching" _self65906596_)))
             (_K65936605_
              (lambda (_K6603_)
                (gx#core-apply-expander__0 _K6603_ _stx6589_))))
        (if (##structure-instance-of? _self65906596_ 'gx#core-macro::t)
            (let* ((_e65946608_ (##vector-ref _self65906596_ '1))
                   (_K6611_ _e65946608_))
              (_K65936605_ _K6611_))
            (_E65926600_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self6441_ _stx6442_)
      (if (gx#sealed-syntax? _stx6442_)
          _stx6442_
          (let* ((_self64436449_ _self6441_)
                 (_E64456453_
                  (lambda () (error '"No clause matching" _self64436449_)))
                 (_K64466458_
                  (lambda (_K6456_)
                    (gx#core-apply-expander__0 _K6456_ _stx6442_))))
            (if (##structure-instance-of? _self64436449_ 'gx#core-expander::t)
                (let* ((_e64476461_ (##vector-ref _self64436449_ '1))
                       (_K6464_ _e64476461_))
                  (_K64466458_ _K6464_))
                (_E64456453_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self6303_ _stx6304_ _top?6305_)
        (if (_top?6305_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self6303_ _stx6304_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx6304_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self6310_ _stx6311_)
          (let ((_top?6313_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self6310_
             _stx6311_
             _top?6313_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g7857_
          (let ((_g7856_ (length _g7857_)))
            (cond ((##fx= _g7856_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g7857_))
                  ((##fx= _g7856_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g7857_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g7857_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self6177_ _stx6178_)
      (gx#top-special-form::apply-macro-expander__%
       _self6177_
       _stx6178_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self6002_ _stx6003_)
      (let* ((_self60046010_ _self6002_)
             (_E60066014_
              (lambda () (error '"No clause matching" _self60046010_)))
             (_K60076047_
              (lambda (_id6017_)
                (let* ((_e60186025_ _stx6003_)
                       (_E60206029_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e60186025_)))
                       (_E60196043_
                        (lambda ()
                          (if (gx#stx-pair? _e60186025_)
                              (let ((_e60216033_ (gx#syntax-e _e60186025_)))
                                (let ((_hd60226036_ (##car _e60216033_))
                                      (_tl60236038_ (##cdr _e60216033_)))
                                  (let ((_body6041_ _tl60236038_))
                                    (if '#t
                                        (gx#core-cons _id6017_ _body6041_)
                                        (_E60206029_)))))
                              (_E60206029_)))))
                  (_E60196043_)))))
        (if (##structure-instance-of?
             _self60046010_
             'gx#rename-macro-expander::t)
            (let* ((_e60086050_ (##vector-ref _self60046010_ '1))
                   (_id6053_ _e60086050_))
              (_K60076047_ _id6053_))
            (_E60066014_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self5828_ _stx5829_ _method5830_)
        (let* ((_self58315839_ _self5828_)
               (_E58335843_
                (lambda () (error '"No clause matching" _self58315839_)))
               (_K58345850_
                (lambda (_phi5846_ _ctx5847_ _K5848_)
                  (gx#core-apply-user-macro
                   _K5848_
                   _stx5829_
                   _ctx5847_
                   _phi5846_
                   _method5830_))))
          (if (##structure-instance-of? _self58315839_ 'gx#macro-expander::t)
              (let* ((_e58355853_ (##vector-ref _self58315839_ '1))
                     (_K5856_ _e58355853_)
                     (_e58365858_ (##vector-ref _self58315839_ '2))
                     (_ctx5861_ _e58365858_)
                     (_e58375863_ (##vector-ref _self58315839_ '3))
                     (_phi5866_ _e58375863_))
                (_K58345850_ _phi5866_ _ctx5861_ _K5856_))
              (_E58335843_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self5871_ _stx5872_)
          (let ((_method5874_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self5871_
             _stx5872_
             _method5874_))))
      (define gx#core-apply-user-expander
        (lambda _g7859_
          (let ((_g7858_ (length _g7859_)))
            (cond ((##fx= _g7858_ 2)
                   (apply gx#core-apply-user-expander__0 _g7859_))
                  ((##fx= _g7858_ 3)
                   (apply gx#core-apply-user-expander__% _g7859_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g7859_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K5818_ _stx5819_ _ctx5820_ _phi5821_ _method5822_)
      (let ((_mark5824_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx5820_
              _phi5821_
              _stx5819_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K5818_
             (gx#stx-apply-mark _stx5819_ _mark5824_)
             _method5822_)
            _mark5824_))
         gx#current-expander-marks
         (cons _mark5824_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx5669_ _phi5670_ _ctx5671_)
        (let _lp5673_ ((_bind5675_
                        (gx#core-resolve-identifier__%
                         _stx5669_
                         _phi5670_
                         _ctx5671_)))
          (if (##structure-direct-instance-of?
               _bind5675_
               'gx#import-binding::t)
              (_lp5673_
               (##direct-structure-ref _bind5675_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind5675_
                   'gx#alias-binding::t)
                  (_lp5673_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind5675_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi5670_
                    _ctx5671_))
                  _bind5675_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx5680_)
          (let* ((_phi5682_ (gx#current-expander-phi))
                 (_ctx5684_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5680_ _phi5682_ _ctx5684_))))
      (define gx#resolve-identifier__1
        (lambda (_stx5686_ _phi5687_)
          (let ((_ctx5689_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5686_ _phi5687_ _ctx5689_))))
      (define gx#resolve-identifier
        (lambda _g7861_
          (let ((_g7860_ (length _g7861_)))
            (cond ((##fx= _g7860_ 1) (apply gx#resolve-identifier__0 _g7861_))
                  ((##fx= _g7860_ 2) (apply gx#resolve-identifier__1 _g7861_))
                  ((##fx= _g7860_ 3) (apply gx#resolve-identifier__% _g7861_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g7861_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx5627_ _val5628_ _rebind?5629_ _phi5630_ _ctx5631_)
        (let ((_rebind?5633_
               (if (not _rebind?5629_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?5629_) _rebind?5629_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx5627_)
           _val5628_
           _rebind?5633_
           _phi5630_
           _ctx5631_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx5638_ _val5639_)
          (let* ((_rebind?5641_ '#f)
                 (_phi5643_ (gx#current-expander-phi))
                 (_ctx5645_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5638_
             _val5639_
             _rebind?5641_
             _phi5643_
             _ctx5645_))))
      (define gx#bind-identifier!__1
        (lambda (_stx5647_ _val5648_ _rebind?5649_)
          (let* ((_phi5651_ (gx#current-expander-phi))
                 (_ctx5653_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5647_
             _val5648_
             _rebind?5649_
             _phi5651_
             _ctx5653_))))
      (define gx#bind-identifier!__2
        (lambda (_stx5655_ _val5656_ _rebind?5657_ _phi5658_)
          (let ((_ctx5660_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5655_
             _val5656_
             _rebind?5657_
             _phi5658_
             _ctx5660_))))
      (define gx#bind-identifier!
        (lambda _g7863_
          (let ((_g7862_ (length _g7863_)))
            (cond ((##fx= _g7862_ 2) (apply gx#bind-identifier!__0 _g7863_))
                  ((##fx= _g7862_ 3) (apply gx#bind-identifier!__1 _g7863_))
                  ((##fx= _g7862_ 4) (apply gx#bind-identifier!__2 _g7863_))
                  ((##fx= _g7862_ 5) (apply gx#bind-identifier!__% _g7863_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g7863_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx5599_ _phi5600_ _ctx5601_)
        (let _lp5603_ ((_e5605_ _stx5599_)
                       (_marks5606_ (gx#current-expander-marks)))
          (if (symbol? _e5605_)
              (gx#core-resolve-binding
               _e5605_
               _phi5600_
               _phi5600_
               _ctx5601_
               (reverse _marks5606_))
              (if (gx#identifier-quote? _e5605_)
                  (gx#core-resolve-binding
                   (##structure-ref _e5605_ '1 AST::t '#f)
                   _phi5600_
                   '0
                   (##direct-structure-ref _e5605_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e5605_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e5605_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e5605_ '1 AST::t '#f)
                       _phi5600_
                       _phi5600_
                       _ctx5601_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e5605_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks5606_))
                      (if (##structure-direct-instance-of?
                           _e5605_
                           'gx#syntax-wrap::t)
                          (_lp5603_
                           (##structure-ref _e5605_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e5605_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks5606_))
                          (if (##structure-instance-of? _e5605_ 'gerbil#AST::t)
                              (_lp5603_
                               (##structure-ref _e5605_ '1 AST::t '#f)
                               _marks5606_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx5599_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx5611_)
          (let* ((_phi5613_ (gx#current-expander-phi))
                 (_ctx5615_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5611_ _phi5613_ _ctx5615_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx5617_ _phi5618_)
          (let ((_ctx5620_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5617_ _phi5618_ _ctx5620_))))
      (define gx#core-resolve-identifier
        (lambda _g7865_
          (let ((_g7864_ (length _g7865_)))
            (cond ((##fx= _g7864_ 1)
                   (apply gx#core-resolve-identifier__0 _g7865_))
                  ((##fx= _g7864_ 2)
                   (apply gx#core-resolve-identifier__1 _g7865_))
                  ((##fx= _g7864_ 3)
                   (apply gx#core-resolve-identifier__% _g7865_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g7865_))))))))
  (define gx#core-resolve-binding
    (lambda (_id5512_ _phi5513_ _src-phi5514_ _ctx5515_ _marks5516_)
      (letrec ((_resolve5518_
                (lambda (_ctx5586_ _src-phi5587_ _key5588_)
                  (let _lp5590_ ((_ctx5592_
                                  (gx#core-context-shift _ctx5586_ _phi5513_))
                                 (_dphi5593_ (fx- _phi5513_ _src-phi5587_)))
                    (let ((_$e5595_
                           (gx#core-context-resolve _ctx5592_ _key5588_)))
                      (if _$e5595_
                          (values _$e5595_)
                          (if (fxzero? _dphi5593_)
                              '#f
                              (if (fxpositive? _dphi5593_)
                                  (_lp5590_
                                   (gx#core-context-shift _ctx5592_ '-1)
                                   (fx- _dphi5593_ '1))
                                  (if (fxnegative? _dphi5593_)
                                      (_lp5590_
                                       (gx#core-context-shift _ctx5592_ '1)
                                       (fx+ _dphi5593_ '1))
                                      '#!void)))))))))
        (let _lp5520_ ((_ctx5522_ _ctx5515_)
                       (_src-phi5523_ _src-phi5514_)
                       (_rest5524_ _marks5516_))
          (let* ((_rest55255533_ _rest5524_)
                 (_else55275541_
                  (lambda () (_resolve5518_ _ctx5522_ _src-phi5523_ _id5512_)))
                 (_K55295574_
                  (lambda (_rest5544_ _hd5545_)
                    (let* ((_hd55465552_ _hd5545_)
                           (_E55485556_
                            (lambda ()
                              (error '"No clause matching" _hd55465552_)))
                           (_K55495566_
                            (lambda (_subst5559_)
                              (let ((_$e5563_
                                     (let ((_key5561_
                                            (if _subst5559_
                                                (table-ref
                                                 _subst5559_
                                                 _id5512_
                                                 '#f)
                                                '#f)))
                                       (if _key5561_
                                           (_resolve5518_
                                            _ctx5522_
                                            _src-phi5523_
                                            _key5561_)
                                           '#f))))
                                (if _$e5563_
                                    _$e5563_
                                    (_lp5520_
                                     (##structure-ref
                                      _hd5545_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd5545_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest5544_))))))
                      (if (##structure-instance-of?
                           _hd55465552_
                           'gx#expander-mark::t)
                          (let* ((_e55505569_ (##vector-ref _hd55465552_ '1))
                                 (_subst5572_ _e55505569_))
                            (_K55495566_ _subst5572_))
                          (_E55485556_))))))
            (if (##pair? _rest55255533_)
                (let ((_hd55305577_ (##car _rest55255533_))
                      (_tl55315579_ (##cdr _rest55255533_)))
                  (let* ((_hd5582_ _hd55305577_) (_rest5584_ _tl55315579_))
                    (_K55295574_ _rest5584_ _hd5582_)))
                (_else55275541_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key5388_ _val5389_ _rebind?5390_ _phi5391_ _ctx5392_)
        (letrec ((_update-binding5394_
                  (lambda (_xval5465_)
                    (if (if (_rebind?5390_ _ctx5392_ _xval5465_ _val5389_)
                            '#t
                            (if (if (##structure-direct-instance-of?
                                     _xval5465_
                                     'gx#import-binding::t)
                                    (if (##direct-structure-ref
                                         _xval5465_
                                         '6
                                         gx#import-binding::t
                                         '#f)
                                        '#t
                                        (if (##structure-instance-of?
                                             _val5389_
                                             'gx#binding::t)
                                            (not (##structure-direct-instance-of?
                                                  _val5389_
                                                  'gx#import-binding::t))
                                            '#f))
                                    '#f)
                                '#t
                                (if (##structure-instance-of?
                                     _xval5465_
                                     'gx#extern-binding::t)
                                    (if (##structure-instance-of?
                                         _val5389_
                                         'gx#runtime-binding::t)
                                        (eq? (##structure-ref
                                              _val5389_
                                              '1
                                              gx#binding::t
                                              '#f)
                                             (##structure-ref
                                              _xval5465_
                                              '1
                                              gx#binding::t
                                              '#f))
                                        '#f)
                                    '#f)))
                        _val5389_
                        (if (if (##structure-direct-instance-of?
                                 _val5389_
                                 'gx#import-binding::t)
                                (if (##direct-structure-ref
                                     _val5389_
                                     '6
                                     gx#import-binding::t
                                     '#f)
                                    '#t
                                    (if (##structure-instance-of?
                                         _xval5465_
                                         'gx#binding::t)
                                        (eq? (##structure-ref
                                              _val5389_
                                              '1
                                              gx#binding::t
                                              '#f)
                                             (##structure-ref
                                              _xval5465_
                                              '1
                                              gx#binding::t
                                              '#f))
                                        '#f))
                                '#f)
                            _xval5465_
                            (if (if (##structure-direct-instance-of?
                                     _val5389_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval5465_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key5388_
                                 (cons (##structure-ref
                                        _val5389_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val5389_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval5465_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval5465_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval5465_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval5465_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key5388_
                                 _val5389_
                                 _xval5465_))))))
                 (_gensubst5395_
                  (lambda (_subst5460_ _id5461_)
                    (let ((_eid5463_
                           (gensym (if (uninterned-symbol? _id5461_)
                                       '%
                                       _id5461_))))
                      (begin
                        (table-set! _subst5460_ _id5461_ _eid5463_)
                        _eid5463_))))
                 (_subst!5396_
                  (lambda (_key5398_)
                    (let* ((_key53995407_ _key5398_)
                           (_else54015415_ (lambda () _key5398_))
                           (_K54035448_
                            (lambda (_mark5418_ _id5419_)
                              (let* ((_mark54205426_ _mark5418_)
                                     (_E54225430_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark54205426_)))
                                     (_K54235440_
                                      (lambda (_subst5433_)
                                        (if (not _subst5433_)
                                            (let ((_subst5435_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark5418_
                                                 _subst5435_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst5395_
                                                 _subst5435_
                                                 _id5419_)))
                                            (let ((_$e5437_
                                                   (table-ref
                                                    _subst5433_
                                                    _id5419_
                                                    '#f)))
                                              (if _$e5437_
                                                  (values _$e5437_)
                                                  (_gensubst5395_
                                                   _subst5433_
                                                   _id5419_)))))))
                                (if (##structure-instance-of?
                                     _mark54205426_
                                     'gx#expander-mark::t)
                                    (let* ((_e54245443_
                                            (##vector-ref _mark54205426_ '1))
                                           (_subst5446_ _e54245443_))
                                      (_K54235440_ _subst5446_))
                                    (_E54225430_))))))
                      (if (##pair? _key53995407_)
                          (let ((_hd54045451_ (##car _key53995407_))
                                (_tl54055453_ (##cdr _key53995407_)))
                            (let* ((_id5456_ _hd54045451_)
                                   (_mark5458_ _tl54055453_))
                              (_K54035448_ _mark5458_ _id5456_)))
                          (_else54015415_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx5392_ _phi5391_)
           (_subst!5396_ _key5388_)
           _val5389_
           _update-binding5394_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key5482_ _val5483_)
          (let* ((_rebind?5485_ false)
                 (_phi5487_ (gx#current-expander-phi))
                 (_ctx5489_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5482_
             _val5483_
             _rebind?5485_
             _phi5487_
             _ctx5489_))))
      (define gx#core-bind!__1
        (lambda (_key5491_ _val5492_ _rebind?5493_)
          (let* ((_phi5495_ (gx#current-expander-phi))
                 (_ctx5497_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5491_
             _val5492_
             _rebind?5493_
             _phi5495_
             _ctx5497_))))
      (define gx#core-bind!__2
        (lambda (_key5499_ _val5500_ _rebind?5501_ _phi5502_)
          (let ((_ctx5504_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5499_
             _val5500_
             _rebind?5501_
             _phi5502_
             _ctx5504_))))
      (define gx#core-bind!
        (lambda _g7867_
          (let ((_g7866_ (length _g7867_)))
            (cond ((##fx= _g7866_ 2) (apply gx#core-bind!__0 _g7867_))
                  ((##fx= _g7866_ 3) (apply gx#core-bind!__1 _g7867_))
                  ((##fx= _g7866_ 4) (apply gx#core-bind!__2 _g7867_))
                  ((##fx= _g7866_ 5) (apply gx#core-bind!__% _g7867_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g7867_))))))))
  (define gx#core-identifier-key
    (lambda (_stx5322_)
      (if (symbol? _stx5322_)
          (let* ((_g53235331_ (gx#current-expander-marks))
                 (_else53255339_ (lambda () _stx5322_))
                 (_K53275344_ (lambda (_hd5342_) (cons _stx5322_ _hd5342_))))
            (if (##pair? _g53235331_)
                (let* ((_hd53285347_ (##car _g53235331_))
                       (_hd5350_ _hd53285347_))
                  (_K53275344_ _hd5350_))
                (_else53255339_)))
          (if (gx#identifier? _stx5322_)
              (let* ((_id5352_ (gx#syntax-local-unwrap _stx5322_))
                     (_eid5354_ (gx#stx-e _id5352_))
                     (_marks5356_ (gx#stx-identifier-marks _id5352_)))
                (let* ((_marks53585366_ _marks5356_)
                       (_else53605374_ (lambda () _eid5354_))
                       (_K53625379_
                        (lambda (_hd5377_) (cons _eid5354_ _hd5377_))))
                  (if (##pair? _marks53585366_)
                      (let* ((_hd53635382_ (##car _marks53585366_))
                             (_hd5385_ _hd53635382_))
                        (_K53625379_ _hd5385_))
                      (_else53605374_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx5322_)))))
  (define gx#core-context-shift
    (lambda (_ctx5267_ _phi5268_)
      (letrec ((_make-phi5270_
                (lambda (_super5320_)
                  (let ((__obj7838 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj7838
                       (gensym 'phi)
                       _super5320_)
                      __obj7838))))
               (_make-phi/up5271_
                (lambda (_ctx5315_ _super5316_)
                  (let ((_ctx+15318_ (_make-phi5270_ _super5316_)))
                    (begin
                      (##structure-set!
                       _ctx5315_
                       _ctx+15318_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+15318_
                       _ctx5315_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+15318_))))
               (_make-phi/down5272_
                (lambda (_ctx5310_ _super5311_)
                  (let ((_ctx-15313_ (_make-phi5270_ _super5311_)))
                    (begin
                      (##structure-set!
                       _ctx-15313_
                       _ctx5310_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx5310_
                       _ctx-15313_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-15313_))))
               (_shift5273_
                (lambda (_ctx5294_
                         _delta5295_
                         _make-delta-context5296_
                         _phi5297_
                         _K5298_)
                  (let ((_$e5300_
                         (##structure-ref _ctx5294_ '3 gx#phi-context::t '#f)))
                    (if _$e5300_
                        ((lambda (_super5303_)
                           (let* ((_super5305_
                                   (_K5298_ _super5303_ _delta5295_))
                                  (_ctx+d5307_
                                   (_make-delta-context5296_
                                    _ctx5294_
                                    _super5305_)))
                             (_K5298_ _ctx+d5307_
                                      (fx- _phi5297_ _delta5295_))))
                         _$e5300_)
                        (error '"Bad context" _ctx5294_))))))
        (let _K5275_ ((_ctx5277_ _ctx5267_) (_phi5278_ _phi5268_))
          (if (fxzero? _phi5278_)
              _ctx5277_
              (if (##structure-instance-of? _ctx5277_ 'gx#context-phi::t)
                  (if (fxpositive? _phi5278_)
                      (let ((_$e5280_
                             (##structure-ref
                              _ctx5277_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e5280_
                            ((lambda (_g52825284_)
                               (_K5275_ _g52825284_ (fx- _phi5278_ '1)))
                             _$e5280_)
                            (_shift5273_
                             _ctx5277_
                             '1
                             _make-phi/up5271_
                             _phi5278_
                             _K5275_)))
                      (let ((_$e5287_
                             (##structure-ref
                              _ctx5277_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e5287_
                            ((lambda (_g52895291_)
                               (_K5275_ _g52895291_ (fx+ _phi5278_ '1)))
                             _$e5287_)
                            (_shift5273_
                             _ctx5277_
                             '-1
                             _make-phi/down5272_
                             _phi5278_
                             _K5275_))))
                  _ctx5277_))))))
  (define gx#core-context-get
    (lambda (_ctx5264_ _key5265_)
      (table-ref
       (##structure-ref _ctx5264_ '2 gx#expander-context::t '#f)
       _key5265_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx5260_ _key5261_ _val5262_)
      (table-set!
       (##structure-ref _ctx5260_ '2 gx#expander-context::t '#f)
       _key5261_
       _val5262_)))
  (define gx#core-context-resolve
    (lambda (_ctx5247_ _key5248_)
      (let _lp5250_ ((_ctx5252_ _ctx5247_))
        (let ((_$e5254_ (gx#core-context-get _ctx5252_ _key5248_)))
          (if _$e5254_
              (values _$e5254_)
              (let ((_$e5257_
                     (if (##structure-instance-of?
                          _ctx5252_
                          'gx#context-phi::t)
                         (##structure-ref _ctx5252_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e5257_ (_lp5250_ _$e5257_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx5237_ _key5238_ _val5239_ _rebind5240_)
      (let ((_$e5242_ (gx#core-context-get _ctx5237_ _key5238_)))
        (if _$e5242_
            ((lambda (_xval5245_)
               (gx#core-context-put!
                _ctx5237_
                _key5238_
                (_rebind5240_ _xval5245_)))
             _$e5242_)
            (gx#core-context-put! _ctx5237_ _key5238_ _val5239_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx5215_ _stop?5216_)
        (let _lp5218_ ((_ctx5220_ _ctx5215_))
          (if (_stop?5216_ _ctx5220_)
              _ctx5220_
              (if (##structure-instance-of? _ctx5220_ 'gx#context-phi::t)
                  (_lp5218_
                   (##structure-ref _ctx5220_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx5226_ (gx#current-expander-context))
                 (_stop?5228_ gx#top-context?))
            (gx#core-context-top__% _ctx5226_ _stop?5228_))))
      (define gx#core-context-top__1
        (lambda (_ctx5230_)
          (let ((_stop?5232_ gx#top-context?))
            (gx#core-context-top__% _ctx5230_ _stop?5232_))))
      (define gx#core-context-top
        (lambda _g7869_
          (let ((_g7868_ (length _g7869_)))
            (cond ((##fx= _g7868_ 0) (apply gx#core-context-top__0 _g7869_))
                  ((##fx= _g7868_ 1) (apply gx#core-context-top__1 _g7869_))
                  ((##fx= _g7868_ 2) (apply gx#core-context-top__% _g7869_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g7869_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx5200_)
        (let _lp5202_ ((_ctx5204_ _ctx5200_))
          (if (##structure-instance-of? _ctx5204_ 'gx#context-phi::t)
              (_lp5202_ (##structure-ref _ctx5204_ '3 gx#phi-context::t '#f))
              _ctx5204_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx5210_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx5210_))))
      (define gx#core-context-root
        (lambda _g7871_
          (let ((_g7870_ (length _g7871_)))
            (cond ((##fx= _g7870_ 0) (apply gx#core-context-root__0 _g7871_))
                  ((##fx= _g7870_ 1) (apply gx#core-context-root__% _g7871_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g7871_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx5184_ . __51815185_)
        (if (##structure-instance-of? _ctx5184_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx5184_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx5184_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx5192_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx5192_))))
      (define gx#core-context-rebind?
        (lambda _g7873_
          (let ((_g7872_ (length _g7873_)))
            (cond ((##fx= _g7872_ 0)
                   (apply gx#core-context-rebind?__0 _g7873_))
                  ((##fx= _g7872_ 1)
                   (apply gx#core-context-rebind?__% _g7873_))
                  ((##fx>= _g7872_ 1)
                   (apply gx#core-context-rebind?__% _g7873_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g7873_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx5167_)
        (let ((_$e5169_ (gx#core-context-top__1 _ctx5167_)))
          (if _$e5169_
              ((lambda (_ctx5172_)
                 (if (##structure-instance-of? _ctx5172_ 'gx#module-context::t)
                     (##structure-ref _ctx5172_ '6 gx#module-context::t '#f)
                     '#f))
               _$e5169_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx5178_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx5178_))))
      (define gx#core-context-namespace
        (lambda _g7875_
          (let ((_g7874_ (length _g7875_)))
            (cond ((##fx= _g7874_ 0)
                   (apply gx#core-context-namespace__0 _g7875_))
                  ((##fx= _g7874_ 1)
                   (apply gx#core-context-namespace__% _g7875_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g7875_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind5153_ _is?5154_)
        (if (##structure-direct-instance-of? _bind5153_ 'gx#syntax-binding::t)
            (_is?5154_
             (##direct-structure-ref _bind5153_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind5159_)
          (let ((_is?5161_ gx#expander?))
            (gx#expander-binding?__% _bind5159_ _is?5161_))))
      (define gx#expander-binding?
        (lambda _g7877_
          (let ((_g7876_ (length _g7877_)))
            (cond ((##fx= _g7876_ 1) (apply gx#expander-binding?__0 _g7877_))
                  ((##fx= _g7876_ 2) (apply gx#expander-binding?__% _g7877_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g7877_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind5150_)
      (gx#expander-binding?__% _bind5150_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind5148_)
      (gx#expander-binding?__% _bind5148_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind5142_)
      (letrec ((_direct-special-form?5144_
                (lambda (_obj5146_)
                  (##structure-direct-instance-of?
                   _obj5146_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__% _bind5142_ _direct-special-form?5144_))))
  (define gx#special-form-binding?
    (lambda (_bind5140_)
      (gx#expander-binding?__% _bind5140_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind5131_)
      (letrec ((_feature?5133_
                (lambda (_e5135_)
                  (let ((_$e5137_
                         (##structure-instance-of?
                          _e5135_
                          'gx#feature-expander::t)))
                    (if _$e5137_
                        _$e5137_
                        (##structure-instance-of?
                         _e5135_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind5131_ _feature?5133_))))
  (define gx#private-feature-binding?
    (lambda (_bind5129_)
      (gx#expander-binding?__% _bind5129_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id5116_ _bound?5117_)
        (if (gx#identifier? _id5116_)
            (_bound?5117_ (gx#resolve-identifier__0 _id5116_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id5122_)
          (let ((_bound?5124_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id5122_ _bound?5124_))))
      (define gx#core-bound-identifier?
        (lambda _g7879_
          (let ((_g7878_ (length _g7879_)))
            (cond ((##fx= _g7878_ 1)
                   (apply gx#core-bound-identifier?__0 _g7879_))
                  ((##fx= _g7878_ 2)
                   (apply gx#core-bound-identifier?__% _g7879_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g7879_))))))))
  (define gx#core-identifier=?
    (lambda (_x5106_ _y5107_)
      (letrec ((_y=?5109_
                (lambda (_xid5113_)
                  ((if (list? _y5107_) memq eq?) _xid5113_ _y5107_))))
        (let ((_bind5111_ (gx#resolve-identifier__0 _x5106_)))
          (if (##structure-instance-of? _bind5111_ 'gx#binding::t)
              (_y=?5109_ (##structure-ref _bind5111_ '1 gx#binding::t '#f))
              (_y=?5109_ (gx#stx-e _x5106_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e5104_)
      (if (interned-symbol? _e5104_)
          (string-index (symbol->string _e5104_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx5062_ _src5063_ _ctx5064_ _marks5065_)
        (if (gx#sealed-syntax? _stx5062_)
            (gx#stx-unwrap__0 _stx5062_)
            (if (gx#identifier? _stx5062_)
                (let ((_id5067_ (gx#syntax-local-unwrap _stx5062_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id5067_)
                   (let ((_$e5069_ (gx#stx-source _id5067_)))
                     (if _$e5069_ _$e5069_ _src5063_))
                   _ctx5064_
                   (##direct-structure-ref
                    _id5067_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx5062_)
                    (gx#stx-e _stx5062_)
                    (##structure
                     gx#syntax-quote::t
                     _stx5062_
                     (let ((_$e5072_ (gx#stx-source _stx5062_)))
                       (if _$e5072_ _$e5072_ _src5063_))
                     _ctx5064_
                     (reverse _marks5065_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx5078_)
          (let* ((_src5080_ '#f)
                 (_ctx5082_ (gx#current-expander-context))
                 (_marks5084_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx5078_
             _src5080_
             _ctx5082_
             _marks5084_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx5086_ _src5087_)
          (let* ((_ctx5089_ (gx#current-expander-context))
                 (_marks5091_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx5086_
             _src5087_
             _ctx5089_
             _marks5091_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx5093_ _src5094_ _ctx5095_)
          (let ((_marks5097_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx5093_
             _src5094_
             _ctx5095_
             _marks5097_))))
      (define gx#core-quote-syntax
        (lambda _g7881_
          (let ((_g7880_ (length _g7881_)))
            (cond ((##fx= _g7880_ 1) (apply gx#core-quote-syntax__0 _g7881_))
                  ((##fx= _g7880_ 2) (apply gx#core-quote-syntax__1 _g7881_))
                  ((##fx= _g7880_ 3) (apply gx#core-quote-syntax__2 _g7881_))
                  ((##fx= _g7880_ 4) (apply gx#core-quote-syntax__% _g7881_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g7881_))))))))
  (define gx#core-cons
    (lambda (_hd5058_ _tl5059_)
      (cons (gx#core-quote-syntax__0 _hd5058_) _tl5059_)))
  (define gx#core-list
    (lambda (_hd5055_ . _rest5056_)
      (cons (gx#core-quote-syntax__0 _hd5055_) _rest5056_)))
  (define gx#core-cons*
    (lambda (_hd5052_ . _rest5053_)
      (apply cons* (gx#core-quote-syntax__0 _hd5052_) _rest5053_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path5026_ _rel5027_)
        (let ((_path5039_ (gx#stx-e _stx-path5026_))
              (_reldir5040_
               (let _lp5029_ ((_relsrc5031_
                               (let ((_$e5036_ (gx#stx-source _stx-path5026_)))
                                 (if _$e5036_ _$e5036_ _rel5027_))))
                 (if (##structure-instance-of? _relsrc5031_ 'gerbil#AST::t)
                     (_lp5029_
                      (let ((_$e5033_ (gx#stx-source _relsrc5031_)))
                        (if _$e5033_ _$e5033_ (gx#stx-e _relsrc5031_))))
                     (if (source-location-path? _relsrc5031_)
                         (path-directory (source-location-path _relsrc5031_))
                         (if (string? _relsrc5031_)
                             (path-directory _relsrc5031_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path5039_ (path-normalize _reldir5040_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path5045_)
          (let ((_rel5047_ '#f))
            (gx#core-resolve-path__% _stx-path5045_ _rel5047_))))
      (define gx#core-resolve-path
        (lambda _g7883_
          (let ((_g7882_ (length _g7883_)))
            (cond ((##fx= _g7882_ 1) (apply gx#core-resolve-path__0 _g7883_))
                  ((##fx= _g7882_ 2) (apply gx#core-resolve-path__% _g7883_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g7883_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr4982_ _ctx4983_)
        (let* ((_repr49844991_ _repr4982_)
               (_E49864995_
                (lambda () (error '"No clause matching" _repr49844991_)))
               (_K49875003_
                (lambda (_subs4998_ _phi4999_)
                  (let ((_subst5001_
                         (if (not (null? _subs4998_))
                             (list->hash-table-eq _subs4998_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst5001_
                     _ctx4983_
                     _phi4999_
                     '#f)))))
          (if (##pair? _repr49844991_)
              (let ((_hd49885006_ (##car _repr49844991_))
                    (_tl49895008_ (##cdr _repr49844991_)))
                (let* ((_phi5011_ _hd49885006_) (_subs5013_ _tl49895008_))
                  (_K49875003_ _subs5013_ _phi5011_)))
              (_E49864995_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr5018_)
          (let ((_ctx5020_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr5018_ _ctx5020_))))
      (define gx#core-deserialize-mark
        (lambda _g7885_
          (let ((_g7884_ (length _g7885_)))
            (cond ((##fx= _g7884_ 1)
                   (apply gx#core-deserialize-mark__0 _g7885_))
                  ((##fx= _g7884_ 2)
                   (apply gx#core-deserialize-mark__% _g7885_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g7885_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4979_) (gx#stx-rewrap _stx4979_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4977_)
      (gx#stx-unwrap__% _stx4977_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4947_)
      (let* ((_g49484956_ (gx#current-expander-marks))
             (_else49504964_ (lambda () _stx4947_))
             (_K49524969_
              (lambda (_hd4967_) (gx#stx-apply-mark _stx4947_ _hd4967_))))
        (if (##pair? _g49484956_)
            (let* ((_hd49534972_ (##car _g49484956_)) (_hd4975_ _hd49534972_))
              (_K49524969_ _hd4975_))
            (_else49504964_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx4932_ _E4933_)
        (let ((_bind4935_ (gx#resolve-identifier__0 _stx4932_)))
          (if (##structure-direct-instance-of?
               _bind4935_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4935_ '4 gx#syntax-binding::t '#f)
              (_E4933_ _stx4932_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4940_)
          (let ((_E4942_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx4940_ _E4942_))))
      (define gx#syntax-local-e
        (lambda _g7887_
          (let ((_g7886_ (length _g7887_)))
            (cond ((##fx= _g7886_ 1) (apply gx#syntax-local-e__0 _g7887_))
                  ((##fx= _g7886_ 2) (apply gx#syntax-local-e__% _g7887_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g7887_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx4916_ _E4917_)
        (let ((_e4919_ (gx#syntax-local-e__% _stx4916_ _E4917_)))
          (if (##structure-instance-of? _e4919_ 'gx#expander::t)
              (##structure-ref _e4919_ '1 gx#expander::t '#f)
              _e4919_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4924_)
          (let ((_E4926_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx4924_ _E4926_))))
      (define gx#syntax-local-value
        (lambda _g7889_
          (let ((_g7888_ (length _g7889_)))
            (cond ((##fx= _g7888_ 1) (apply gx#syntax-local-value__0 _g7889_))
                  ((##fx= _g7888_ 2) (apply gx#syntax-local-value__% _g7889_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g7889_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4913_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4913_))))
