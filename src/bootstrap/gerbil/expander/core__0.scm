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
    (lambda _$args7686_
      (apply make-struct-instance gx#expander-context::t _$args7686_)))
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
    (lambda _$args7683_
      (apply make-struct-instance gx#root-context::t _$args7683_)))
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
    (lambda _$args7680_
      (apply make-struct-instance gx#phi-context::t _$args7680_)))
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
    (lambda _$args7677_
      (apply make-struct-instance gx#top-context::t _$args7677_)))
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
    (lambda _$args7674_
      (apply make-struct-instance gx#module-context::t _$args7674_)))
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
    (lambda _$args7671_
      (apply make-struct-instance gx#prelude-context::t _$args7671_)))
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
    (lambda _$args7668_
      (apply make-struct-instance gx#local-context::t _$args7668_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self7652_ _id7653_ _super7654_)
        (if (##fx< '5 (##vector-length _self7652_))
            (begin
              (##vector-set! _self7652_ '1 _id7653_)
              (##vector-set! _self7652_ '2 (make-hash-table-eq))
              (##vector-set! _self7652_ '3 _super7654_)
              (##vector-set! _self7652_ '4 '#f)
              (##vector-set! _self7652_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7652_))))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self7659_ _id7660_)
          (let ((_super7662_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self7659_ _id7660_ _super7662_))))
      (define gx#phi-context:::init!
        (lambda _g7693_
          (let ((_g7692_ (length _g7693_)))
            (cond ((##fx= _g7692_ 2) (apply gx#phi-context:::init!__0 _g7693_))
                  ((##fx= _g7692_ 3) (apply gx#phi-context:::init!__% _g7693_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g7693_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self7516_ _super7517_)
        (if (##fx< '5 (##vector-length _self7516_))
            (begin
              (##vector-set! _self7516_ '1 (gensym 'L))
              (##vector-set! _self7516_ '2 (make-hash-table-eq))
              (##vector-set! _self7516_ '3 _super7517_)
              (##vector-set! _self7516_ '4 '#f)
              (##vector-set! _self7516_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7516_))))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self7522_)
          (let ((_super7524_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self7522_ _super7524_))))
      (define gx#local-context:::init!
        (lambda _g7695_
          (let ((_g7694_ (length _g7695_)))
            (cond ((##fx= _g7694_ 1)
                   (apply gx#local-context:::init!__0 _g7695_))
                  ((##fx= _g7694_ 2)
                   (apply gx#local-context:::init!__% _g7695_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g7695_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args7390_
      (apply make-struct-instance gx#binding::t _$args7390_)))
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
    (lambda _$args7387_
      (apply make-struct-instance gx#runtime-binding::t _$args7387_)))
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
    (lambda _$args7384_
      (apply make-struct-instance gx#local-binding::t _$args7384_)))
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
    (lambda _$args7381_
      (apply make-struct-instance gx#top-binding::t _$args7381_)))
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
    (lambda _$args7378_
      (apply make-struct-instance gx#module-binding::t _$args7378_)))
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
    (lambda _$args7375_
      (apply make-struct-instance gx#extern-binding::t _$args7375_)))
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
    (lambda _$args7372_
      (apply make-struct-instance gx#syntax-binding::t _$args7372_)))
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
    (lambda _$args7369_
      (apply make-struct-instance gx#import-binding::t _$args7369_)))
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
    (lambda _$args7366_
      (apply make-struct-instance gx#alias-binding::t _$args7366_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args7363_
      (apply make-struct-instance gx#expander::t _$args7363_)))
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
    (lambda _$args7360_
      (apply make-struct-instance gx#core-expander::t _$args7360_)))
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
    (lambda _$args7357_
      (apply make-struct-instance gx#expression-form::t _$args7357_)))
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
    (lambda _$args7354_
      (apply make-struct-instance gx#special-form::t _$args7354_)))
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
    (lambda _$args7351_
      (apply make-struct-instance gx#definition-form::t _$args7351_)))
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
    (lambda _$args7348_
      (apply make-struct-instance gx#top-special-form::t _$args7348_)))
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
    (lambda _$args7345_
      (apply make-struct-instance gx#module-special-form::t _$args7345_)))
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
    (lambda _$args7342_
      (apply make-struct-instance gx#feature-expander::t _$args7342_)))
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
    (lambda _$args7339_
      (apply make-struct-instance gx#private-feature-expander::t _$args7339_)))
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
    (lambda _$args7336_
      (apply make-struct-instance gx#reserved-expander::t _$args7336_)))
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
    (lambda _$args7333_
      (apply make-struct-instance gx#macro-expander::t _$args7333_)))
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
    (lambda _$args7330_
      (apply make-struct-instance gx#rename-macro-expander::t _$args7330_)))
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
    (lambda _$args7327_
      (apply make-struct-instance gx#user-expander::t _$args7327_)))
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
    (lambda _$args7324_
      (apply make-struct-instance gx#expander-mark::t _$args7324_)))
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
    (lambda _$args7321_
      (apply make-struct-instance gx#syntax-error::t _$args7321_)))
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
    (lambda (_where7316_ _message7317_ _stx7318_ . _details7319_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message7317_
              (cons _stx7318_ _details7319_)
              _where7316_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx7303_ _expression?7304_)
        (gx#eval-syntax* (gx#core-expand__% _stx7303_ _expression?7304_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx7309_)
          (let ((_expression?7311_ '#f))
            (gx#eval-syntax__% _stx7309_ _expression?7311_))))
      (define gx#eval-syntax
        (lambda _g7697_
          (let ((_g7696_ (length _g7697_)))
            (cond ((##fx= _g7696_ 1) (apply gx#eval-syntax__0 _g7697_))
                  ((##fx= _g7696_ 2) (apply gx#eval-syntax__% _g7697_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g7697_))))))))
  (define gx#eval-syntax*
    (lambda (_stx7300_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx7300_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx7287_ _expression?7288_)
        (if _expression?7288_
            (gx#core-expand-expression _stx7287_)
            (gx#core-expand-top _stx7287_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx7293_)
          (let ((_expression?7295_ '#f))
            (gx#core-expand__% _stx7293_ _expression?7295_))))
      (define gx#core-expand
        (lambda _g7699_
          (let ((_g7698_ (length _g7699_)))
            (cond ((##fx= _g7698_ 1) (apply gx#core-expand__0 _g7699_))
                  ((##fx= _g7698_ 2) (apply gx#core-expand__% _g7699_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g7699_))))))))
  (define gx#core-expand-top
    (lambda (_stx7254_)
      (let* ((_stx7256_ (gx#core-expand*__0 _stx7254_))
             (_e72577264_ _stx7256_)
             (_E72597268_ (lambda () (gx#core-expand-expression _stx7256_)))
             (_E72587282_
              (lambda ()
                (if (gx#stx-pair? _e72577264_)
                    (let ((_e72607272_ (gx#syntax-e _e72577264_)))
                      (let ((_hd72617275_ (##car _e72607272_))
                            (_tl72627277_ (##cdr _e72607272_)))
                        (let ((_form7280_ _hd72617275_))
                          (if (gx#core-bound-identifier?__0 _form7280_)
                              _stx7256_
                              (_E72597268_)))))
                    (_E72597268_)))))
        (_E72587282_))))
  (define gx#core-expand-expression
    (lambda (_stx7176_)
      (letrec ((_sealed-expression?7178_
                (lambda (_hd7224_)
                  (if (gx#sealed-syntax? _hd7224_)
                      (let* ((_e72257232_ _hd7224_)
                             (_E72277236_ (lambda () '#f))
                             (_E72267250_
                              (lambda ()
                                (if (gx#stx-pair? _e72257232_)
                                    (let ((_e72287240_
                                           (gx#syntax-e _e72257232_)))
                                      (let ((_hd72297243_ (##car _e72287240_))
                                            (_tl72307245_ (##cdr _e72287240_)))
                                        (let ((_form7248_ _hd72297243_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form7248_
                                               gx#expression-form-binding?)
                                              (_E72277236_)))))
                                    (_E72277236_)))))
                        (_E72267250_))
                      '#f)))
               (_illegal-expression7179_
                (lambda (_hd7222_ . _g7700_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx7176_
                   _hd7222_)))
               (_expand-e7180_
                (lambda (_form7217_ _hd7218_)
                  (let ((_bind7220_
                         (if (##structure-instance-of?
                              _form7217_
                              'gx#binding::t)
                             _form7217_
                             (gx#resolve-identifier__0 _form7217_))))
                    (if (gx#core-expander-binding? _bind7220_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind7220_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd7218_
                          (gx#stx-source _stx7176_)))
                        (if (##structure-direct-instance-of?
                             _bind7220_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind7220_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd7218_
                               (gx#stx-source _stx7176_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx7176_
                             _form7217_)))))))
        (let ((_hd7182_ (gx#core-expand-head _stx7176_)))
          (if (_sealed-expression?7178_ _hd7182_)
              _hd7182_
              (if (gx#stx-pair? _hd7182_)
                  (let* ((_e71837190_ _hd7182_)
                         (_E71857194_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e71837190_)))
                         (_E71847213_
                          (lambda ()
                            (if (gx#stx-pair? _e71837190_)
                                (let ((_e71867198_ (gx#syntax-e _e71837190_)))
                                  (let ((_hd71877201_ (##car _e71867198_))
                                        (_tl71887203_ (##cdr _e71867198_)))
                                    (let ((_form7206_ _hd71877201_))
                                      (if '#t
                                          (let ((_bind7208_
                                                 (if (gx#identifier?
                                                      _form7206_)
                                                     (gx#resolve-identifier__0
                                                      _form7206_)
                                                     '#f)))
                                            (if (let ((_$e7210_
                                                       (not _bind7208_)))
                                                  (if _$e7210_
                                                      _$e7210_
                                                      (not (gx#core-expander-binding?
                                                            _bind7208_))))
                                                (_expand-e7180_
                                                 '%%app
                                                 (cons '%%app _hd7182_))
                                                (if (eq? (##structure-ref
                                                          _bind7208_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd7182_
                                                     _illegal-expression7179_)
                                                    (if (gx#expression-form-binding?
                                                         _bind7208_)
                                                        (_expand-e7180_
                                                         _bind7208_
                                                         _hd7182_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind7208_)
                                                            (gx#core-expand-expression
                                                             (_expand-e7180_
                                                              _bind7208_
                                                              _hd7182_))
                                                            (_illegal-expression7179_
                                                             _hd7182_))))))
                                          (_E71857194_)))))
                                (_E71857194_)))))
                    (_E71847213_))
                  (if (gx#core-bound-identifier?__0 _hd7182_)
                      (_illegal-expression7179_ _hd7182_)
                      (if (gx#identifier? _hd7182_)
                          (_expand-e7180_
                           '%%ref
                           (cons '%%ref (cons _hd7182_ '())))
                          (if (gx#stx-datum? _hd7182_)
                              (_expand-e7180_
                               '%#quote
                               (cons '%#quote (cons _hd7182_ '())))
                              (_illegal-expression7179_ _hd7182_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx7171_)
      (call-with-parameters
       (lambda ()
         (let ((_stx7174_ (gx#core-expand-expression _stx7171_)))
           (values _stx7174_ (gx#eval-syntax* _stx7174_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx7152_ _stop?7153_)
        (let _lp7155_ ((_stx7157_ _stx7152_))
          (if (_stop?7153_ _stx7157_)
              _stx7157_
              (let ((_rstx7159_ (gx#core-expand1 _stx7157_)))
                (if (eq? _stx7157_ _rstx7159_)
                    _stx7157_
                    (_lp7155_ _rstx7159_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx7164_)
          (let ((_stop?7166_ false))
            (gx#core-expand*__% _stx7164_ _stop?7166_))))
      (define gx#core-expand*
        (lambda _g7702_
          (let ((_g7701_ (length _g7702_)))
            (cond ((##fx= _g7701_ 1) (apply gx#core-expand*__0 _g7702_))
                  ((##fx= _g7701_ 2) (apply gx#core-expand*__% _g7702_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g7702_))))))))
  (define gx#core-expand1
    (lambda (_stx7108_)
      (letrec ((_step7110_
                (lambda (_hd7147_)
                  (let ((_bind7149_ (gx#resolve-identifier__0 _hd7147_)))
                    (if (##structure-instance-of?
                         _bind7149_
                         'gx#runtime-binding::t)
                        _stx7108_
                        (if (##structure-direct-instance-of?
                             _bind7149_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind7149_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx7108_)
                            (if (not _bind7149_)
                                _stx7108_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx7108_))))))))
        (let* ((_e71117119_ _stx7108_)
               (_E71177123_ (lambda () _stx7108_))
               (_E71137129_
                (lambda ()
                  (let ((_hd7127_ _e71117119_))
                    (if (gx#identifier? _hd7127_)
                        (_step7110_ _hd7127_)
                        (_E71177123_)))))
               (_E71127143_
                (lambda ()
                  (if (gx#stx-pair? _e71117119_)
                      (let ((_e71147133_ (gx#syntax-e _e71117119_)))
                        (let ((_hd71157136_ (##car _e71147133_))
                              (_tl71167138_ (##cdr _e71147133_)))
                          (let ((_hd7141_ _hd71157136_))
                            (if (gx#identifier? _hd7141_)
                                (_step7110_ _hd7141_)
                                (_E71137129_)))))
                      (_E71137129_)))))
          (_E71127143_)))))
  (define gx#core-expand-head
    (lambda (_stx7074_)
      (letrec ((_stop?7076_
                (lambda (_stx7078_)
                  (let* ((_e70797086_ _stx7078_)
                         (_E70817090_ (lambda () '#f))
                         (_E70807104_
                          (lambda ()
                            (if (gx#stx-pair? _e70797086_)
                                (let ((_e70827094_ (gx#syntax-e _e70797086_)))
                                  (let ((_hd70837097_ (##car _e70827094_))
                                        (_tl70847099_ (##cdr _e70827094_)))
                                    (let ((_hd7102_ _hd70837097_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd7102_)
                                          (_E70817090_)))))
                                (_E70817090_)))))
                    (_E70807104_)))))
        (gx#core-expand*__% _stx7074_ _stop?7076_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx6880_ _expand-special6881_ _begin-form6882_ _expand-e6883_)
        (letrec ((_expand-splice6885_
                  (lambda (_hd7048_ _body7049_ _rest7050_ _r7051_)
                    (if (gx#stx-list? _body7049_)
                        (_K6889_ (gx#stx-foldr cons _rest7050_ _body7049_)
                                 _r7051_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx6880_
                         _hd7048_))))
                 (_expand-cond-expand6886_
                  (lambda (_hd7044_ _rest7045_ _r7046_)
                    (_K6889_ (cons (gx#core-expand-cond-expand% _hd7044_)
                                   _rest7045_)
                             _r7046_)))
                 (_expand-include6887_
                  (lambda (_hd6993_ _rest6994_ _r6995_)
                    (let* ((_e69967006_ _hd6993_)
                           (_E69987010_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e69967006_)))
                           (_E69977040_
                            (lambda ()
                              (if (gx#stx-pair? _e69967006_)
                                  (let ((_e69997014_
                                         (gx#syntax-e _e69967006_)))
                                    (let ((_hd70007017_ (##car _e69997014_))
                                          (_tl70017019_ (##cdr _e69997014_)))
                                      (if (gx#stx-pair? _tl70017019_)
                                          (let ((_e70027022_
                                                 (gx#syntax-e _tl70017019_)))
                                            (let ((_hd70037025_
                                                   (##car _e70027022_))
                                                  (_tl70047027_
                                                   (##cdr _e70027022_)))
                                              (let ((_path7030_ _hd70037025_))
                                                (if (gx#stx-null? _tl70047027_)
                                                    (if (gx#stx-string?
                                                         _path7030_)
                                                        (let* ((_rpath7032_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path7030_
                         (gx#stx-source _hd6993_)))
                       (_block7034_
                        (gx#core-expand-include%__% _hd6993_ _rpath7032_))
                       (_rbody7037_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block7034_
                            _expand-special6881_
                            '#f
                            _expand-e6883_))
                         gx#current-expander-path
                         (cons _rpath7032_ (gx#current-expander-path)))))
                  (_K6889_ _rest6994_ (foldr1 cons _r6995_ _rbody7037_)))
                (_E69987010_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69987010_)))))
                                          (_E69987010_))))
                                  (_E69987010_)))))
                      (_E69977040_))))
                 (_expand-expression6888_
                  (lambda (_hd6989_ _rest6990_ _r6991_)
                    (_K6889_ _rest6990_
                             (cons (_expand-e6883_ _hd6989_) _r6991_))))
                 (_K6889_ (lambda (_rest6919_ _r6920_)
                            (let* ((_e69216928_ _rest6919_)
                                   (_E69236932_
                                    (lambda ()
                                      (if _begin-form6882_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form6882_
                                            (reverse _r6920_))
                                           (gx#stx-source _stx6880_))
                                          _r6920_)))
                                   (_E69226985_
                                    (lambda ()
                                      (if (gx#stx-pair? _e69216928_)
                                          (let ((_e69246936_
                                                 (gx#syntax-e _e69216928_)))
                                            (let ((_hd69256939_
                                                   (##car _e69246936_))
                                                  (_tl69266941_
                                                   (##cdr _e69246936_)))
                                              (let* ((_hd6944_ _hd69256939_)
                                                     (_rest6946_ _tl69266941_))
                                                (if '#t
                                                    (let* ((_hd6948_
                                                            (gx#core-expand-head
                                                             _hd6944_))
                                                           (_e69496956_
                                                            _hd6948_)
                                                           (_E69516960_
                                                            (lambda ()
                                                              (_expand-expression6888_
                                                               _hd6948_
                                                               _rest6946_
                                                               _r6920_)))
                                                           (_E69506981_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e69496956_)
                          (let ((_e69526964_ (gx#syntax-e _e69496956_)))
                            (let ((_hd69536967_ (##car _e69526964_))
                                  (_tl69546969_ (##cdr _e69526964_)))
                              (let* ((_form6972_ _hd69536967_)
                                     (_body6974_ _tl69546969_))
                                (if '#t
                                    (let ((_bind6976_
                                           (if (gx#identifier? _form6972_)
                                               (gx#resolve-identifier__0
                                                _form6972_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind6976_)
                                          (let ((_$e6978_
                                                 (##structure-ref
                                                  _bind6976_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e6978_)
                                                (_expand-splice6885_
                                                 _hd6948_
                                                 _body6974_
                                                 _rest6946_
                                                 _r6920_)
                                                (if (eq? '%#cond-expand
                                                         _$e6978_)
                                                    (_expand-cond-expand6886_
                                                     _hd6948_
                                                     _rest6946_
                                                     _r6920_)
                                                    (if (eq? '%#include
                                                             _$e6978_)
                                                        (_expand-include6887_
                                                         _hd6948_
                                                         _rest6946_
                                                         _r6920_)
                                                        (_expand-special6881_
                                                         _hd6948_
                                                         _K6889_
                                                         _rest6946_
                                                         _r6920_)))))
                                          (_expand-expression6888_
                                           _hd6948_
                                           _rest6946_
                                           _r6920_)))
                                    (_E69516960_)))))
                          (_E69516960_)))))
              (_E69506981_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69236932_)))))
                                          (_E69236932_)))))
                              (_E69226985_)))))
          (let* ((_e68906897_ _stx6880_)
                 (_E68926901_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e68906897_)))
                 (_E68916915_
                  (lambda ()
                    (if (gx#stx-pair? _e68906897_)
                        (let ((_e68936905_ (gx#syntax-e _e68906897_)))
                          (let ((_hd68946908_ (##car _e68936905_))
                                (_tl68956910_ (##cdr _e68936905_)))
                            (let ((_body6913_ _tl68956910_))
                              (if (gx#stx-list? _body6913_)
                                  (_K6889_ _body6913_ '())
                                  (_E68926901_)))))
                        (_E68926901_)))))
            (_E68916915_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx7056_ _expand-special7057_)
          (let* ((_begin-form7059_ '%#begin)
                 (_expand-e7061_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7056_
             _expand-special7057_
             _begin-form7059_
             _expand-e7061_))))
      (define gx#core-expand-block__1
        (lambda (_stx7063_ _expand-special7064_ _begin-form7065_)
          (let ((_expand-e7067_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx7063_
             _expand-special7064_
             _begin-form7065_
             _expand-e7067_))))
      (define gx#core-expand-block
        (lambda _g7704_
          (let ((_g7703_ (length _g7704_)))
            (cond ((##fx= _g7703_ 2) (apply gx#core-expand-block__0 _g7704_))
                  ((##fx= _g7703_ 3) (apply gx#core-expand-block__1 _g7704_))
                  ((##fx= _g7703_ 4) (apply gx#core-expand-block__% _g7704_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g7704_))))))))
  (define gx#core-expand-block*
    (lambda (_stx6828_ _expand-special6829_)
      (let* ((_g68306841_
              (gx#core-expand-block__1 _stx6828_ _expand-special6829_ '#f))
             (_E68346845_
              (lambda () (error '"No clause matching" _g68306841_))))
        (let ((_K68396876_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx6828_)))
              (_K68366862_ (lambda (_expr6860_) _expr6860_))
              (_K68356851_
               (lambda (_body6849_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body6849_))
                  (gx#stx-source _stx6828_)))))
          (let ((_try-match68326872_
                 (lambda ()
                   (if (##pair? _g68306841_)
                       (let ((_tl68386867_ (##cdr _g68306841_))
                             (_hd68376865_ (##car _g68306841_)))
                         (if (##null? _tl68386867_)
                             (let ((_expr6870_ _hd68376865_))
                               (_K68366862_ _expr6870_))
                             (let ((_body6854_ _g68306841_))
                               (_K68356851_ _body6854_))))
                       (let ((_body6854_ _g68306841_))
                         (_K68356851_ _body6854_))))))
            (if (##null? _g68306841_)
                (let () (_K68396876_))
                (_try-match68326872_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx6686_)
      (letrec ((_satisfied?6688_
                (lambda (_condition6786_)
                  (let* ((_e67876795_ _condition6786_)
                         (_E67906799_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e67876795_)))
                         (_E67896818_
                          (lambda ()
                            (if (gx#stx-pair? _e67876795_)
                                (let ((_e67916803_ (gx#syntax-e _e67876795_)))
                                  (let ((_hd67926806_ (##car _e67916803_))
                                        (_tl67936808_ (##cdr _e67916803_)))
                                    (let* ((_combinator6811_ _hd67926806_)
                                           (_body6813_ _tl67936808_))
                                      (if (gx#stx-list? _body6813_)
                                          (let ((_$e6815_
                                                 (gx#stx-e _combinator6811_)))
                                            (if (eq? 'not _$e6815_)
                                                (not (gx#stx-ormap
                                                      _satisfied?6688_
                                                      _body6813_))
                                                (if (eq? 'and _$e6815_)
                                                    (gx#stx-andmap
                                                     _satisfied?6688_
                                                     _body6813_)
                                                    (if (eq? 'or _$e6815_)
                                                        (gx#stx-ormap
                                                         _satisfied?6688_
                                                         _body6813_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e6815_)
                    (gx#stx-andmap gx#core-resolve-identifier _body6813_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx6686_
                     _combinator6811_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E67906799_)))))
                                (_E67906799_))))
                         (_E67886824_
                          (lambda ()
                            (let ((_id6822_ _e67876795_))
                              (if (gx#identifier? _id6822_)
                                  (gx#core-bound-identifier?__%
                                   _id6822_
                                   gx#feature-binding?)
                                  (_E67896818_))))))
                    (_E67886824_))))
               (_loop6689_
                (lambda (_rest6719_)
                  (let* ((_e67206728_ _rest6719_)
                         (_E67266732_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e67206728_)))
                         (_E67226736_
                          (lambda ()
                            (if (gx#stx-null? _e67206728_)
                                (if '#t '() (_E67266732_))
                                (_E67266732_))))
                         (_E67216782_
                          (lambda ()
                            (if (gx#stx-pair? _e67206728_)
                                (let ((_e67236740_ (gx#syntax-e _e67206728_)))
                                  (let ((_hd67246743_ (##car _e67236740_))
                                        (_tl67256745_ (##cdr _e67236740_)))
                                    (let* ((_hd6748_ _hd67246743_)
                                           (_rest6750_ _tl67256745_))
                                      (if '#t
                                          (let* ((_e67516758_ _hd6748_)
                                                 (_E67536762_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e67516758_)))
                                                 (_E67526778_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e67516758_)
                                                        (let ((_e67546766_
                                                               (gx#syntax-e
                                                                _e67516758_)))
                                                          (let ((_hd67556769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e67546766_))
                        (_tl67566771_ (##cdr _e67546766_)))
                    (let* ((_condition6774_ _hd67556769_)
                           (_body6776_ _tl67566771_))
                      (if '#t
                          (if (gx#stx-eq? _condition6774_ 'else)
                              (if (gx#stx-null? _rest6750_)
                                  _body6776_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx6686_
                                   _hd6748_))
                              (if (_satisfied?6688_ _condition6774_)
                                  _body6776_
                                  (_loop6689_ _rest6750_)))
                          (_E67536762_)))))
                (_E67536762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67526778_))
                                          (_E67226736_)))))
                                (_E67226736_)))))
                    (_E67216782_)))))
        (let* ((_e66906697_ _stx6686_)
               (_E66926701_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e66906697_)))
               (_E66916715_
                (lambda ()
                  (if (gx#stx-pair? _e66906697_)
                      (let ((_e66936705_ (gx#syntax-e _e66906697_)))
                        (let ((_hd66946708_ (##car _e66936705_))
                              (_tl66956710_ (##cdr _e66936705_)))
                          (let ((_clauses6713_ _tl66956710_))
                            (if (gx#stx-list? _clauses6713_)
                                (gx#core-cons
                                 'begin
                                 (_loop6689_ _clauses6713_))
                                (_E66926701_)))))
                      (_E66926701_)))))
          (_E66916715_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx6629_ _rpath6630_)
        (let* ((_e66316641_ _stx6629_)
               (_E66336645_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e66316641_)))
               (_E66326672_
                (lambda ()
                  (if (gx#stx-pair? _e66316641_)
                      (let ((_e66346649_ (gx#syntax-e _e66316641_)))
                        (let ((_hd66356652_ (##car _e66346649_))
                              (_tl66366654_ (##cdr _e66346649_)))
                          (if (gx#stx-pair? _tl66366654_)
                              (let ((_e66376657_ (gx#syntax-e _tl66366654_)))
                                (let ((_hd66386660_ (##car _e66376657_))
                                      (_tl66396662_ (##cdr _e66376657_)))
                                  (let ((_path6665_ _hd66386660_))
                                    (if (gx#stx-null? _tl66396662_)
                                        (if (gx#stx-string? _path6665_)
                                            (let ((_rpath6670_
                                                   (let ((_$e6667_
                                                          _rpath6630_))
                                                     (if _$e6667_
                                                         _$e6667_
                                                         (gx#core-resolve-path__%
                                                          _path6665_
                                                          (gx#stx-source
                                                           _stx6629_))))))
                                              (if (member _rpath6670_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx6629_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath6670_))
                                                    (gx#stx-source
                                                     _stx6629_)))))
                                            (_E66336645_))
                                        (_E66336645_)))))
                              (_E66336645_))))
                      (_E66336645_)))))
          (_E66326672_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx6679_)
          (let ((_rpath6681_ '#f))
            (gx#core-expand-include%__% _stx6679_ _rpath6681_))))
      (define gx#core-expand-include%
        (lambda _g7706_
          (let ((_g7705_ (length _g7706_)))
            (cond ((##fx= _g7705_ 1)
                   (apply gx#core-expand-include%__0 _g7706_))
                  ((##fx= _g7705_ 2)
                   (apply gx#core-expand-include%__% _g7706_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g7706_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K6598_ _stx6599_ _method6600_)
        (if (procedure? _K6598_)
            (let ((_$e6602_ (gx#stx-source _stx6599_)))
              (if _$e6602_
                  ((lambda (_g66046606_)
                     (gx#stx-wrap-source (_K6598_ _stx6599_) _g66046606_))
                   _$e6602_)
                  (_K6598_ _stx6599_)))
            (let ((_$e6609_ (bound-method-ref _K6598_ _method6600_)))
              (if _$e6609_
                  ((lambda (_g66116613_)
                     (gx#core-apply-expander__%
                      _g66116613_
                      _stx6599_
                      _method6600_))
                   _$e6609_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx6599_
                   _method6600_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K6619_ _stx6620_)
          (let ((_method6622_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K6619_ _stx6620_ _method6622_))))
      (define gx#core-apply-expander
        (lambda _g7708_
          (let ((_g7707_ (length _g7708_)))
            (cond ((##fx= _g7707_ 2) (apply gx#core-apply-expander__0 _g7708_))
                  ((##fx= _g7707_ 3) (apply gx#core-apply-expander__% _g7708_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g7708_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self6594_ _stx6595_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx6595_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self6447_ _stx6448_)
      (let* ((_self64496455_ _self6447_)
             (_E64516459_
              (lambda () (error '"No clause matching" _self64496455_)))
             (_K64526464_
              (lambda (_K6462_)
                (gx#core-apply-expander__0 _K6462_ _stx6448_))))
        (if (##structure-instance-of? _self64496455_ 'gx#core-macro::t)
            (let* ((_e64536467_ (##vector-ref _self64496455_ '1))
                   (_K6470_ _e64536467_))
              (_K64526464_ _K6470_))
            (_E64516459_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self6300_ _stx6301_)
      (if (gx#sealed-syntax? _stx6301_)
          _stx6301_
          (let* ((_self63026308_ _self6300_)
                 (_E63046312_
                  (lambda () (error '"No clause matching" _self63026308_)))
                 (_K63056317_
                  (lambda (_K6315_)
                    (gx#core-apply-expander__0 _K6315_ _stx6301_))))
            (if (##structure-instance-of? _self63026308_ 'gx#core-expander::t)
                (let* ((_e63066320_ (##vector-ref _self63026308_ '1))
                       (_K6323_ _e63066320_))
                  (_K63056317_ _K6323_))
                (_E63046312_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self6162_ _stx6163_ _top?6164_)
        (if (_top?6164_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self6162_ _stx6163_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx6163_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self6169_ _stx6170_)
          (let ((_top?6172_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self6169_
             _stx6170_
             _top?6172_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g7710_
          (let ((_g7709_ (length _g7710_)))
            (cond ((##fx= _g7709_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g7710_))
                  ((##fx= _g7709_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g7710_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g7710_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self6036_ _stx6037_)
      (gx#top-special-form::apply-macro-expander__%
       _self6036_
       _stx6037_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self5861_ _stx5862_)
      (let* ((_self58635869_ _self5861_)
             (_E58655873_
              (lambda () (error '"No clause matching" _self58635869_)))
             (_K58665906_
              (lambda (_id5876_)
                (let* ((_e58775884_ _stx5862_)
                       (_E58795888_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e58775884_)))
                       (_E58785902_
                        (lambda ()
                          (if (gx#stx-pair? _e58775884_)
                              (let ((_e58805892_ (gx#syntax-e _e58775884_)))
                                (let ((_hd58815895_ (##car _e58805892_))
                                      (_tl58825897_ (##cdr _e58805892_)))
                                  (let ((_body5900_ _tl58825897_))
                                    (if '#t
                                        (gx#core-cons _id5876_ _body5900_)
                                        (_E58795888_)))))
                              (_E58795888_)))))
                  (_E58785902_)))))
        (if (##structure-instance-of?
             _self58635869_
             'gx#rename-macro-expander::t)
            (let* ((_e58675909_ (##vector-ref _self58635869_ '1))
                   (_id5912_ _e58675909_))
              (_K58665906_ _id5912_))
            (_E58655873_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self5687_ _stx5688_ _method5689_)
        (let* ((_self56905698_ _self5687_)
               (_E56925702_
                (lambda () (error '"No clause matching" _self56905698_)))
               (_K56935709_
                (lambda (_phi5705_ _ctx5706_ _K5707_)
                  (gx#core-apply-user-macro
                   _K5707_
                   _stx5688_
                   _ctx5706_
                   _phi5705_
                   _method5689_))))
          (if (##structure-instance-of? _self56905698_ 'gx#macro-expander::t)
              (let* ((_e56945712_ (##vector-ref _self56905698_ '1))
                     (_K5715_ _e56945712_)
                     (_e56955717_ (##vector-ref _self56905698_ '2))
                     (_ctx5720_ _e56955717_)
                     (_e56965722_ (##vector-ref _self56905698_ '3))
                     (_phi5725_ _e56965722_))
                (_K56935709_ _phi5725_ _ctx5720_ _K5715_))
              (_E56925702_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self5730_ _stx5731_)
          (let ((_method5733_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self5730_
             _stx5731_
             _method5733_))))
      (define gx#core-apply-user-expander
        (lambda _g7712_
          (let ((_g7711_ (length _g7712_)))
            (cond ((##fx= _g7711_ 2)
                   (apply gx#core-apply-user-expander__0 _g7712_))
                  ((##fx= _g7711_ 3)
                   (apply gx#core-apply-user-expander__% _g7712_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g7712_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K5677_ _stx5678_ _ctx5679_ _phi5680_ _method5681_)
      (let ((_mark5683_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx5679_
              _phi5680_
              _stx5678_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K5677_
             (gx#stx-apply-mark _stx5678_ _mark5683_)
             _method5681_)
            _mark5683_))
         gx#current-expander-marks
         (cons _mark5683_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx5528_ _phi5529_ _ctx5530_)
        (let _lp5532_ ((_bind5534_
                        (gx#core-resolve-identifier__%
                         _stx5528_
                         _phi5529_
                         _ctx5530_)))
          (if (##structure-direct-instance-of?
               _bind5534_
               'gx#import-binding::t)
              (_lp5532_
               (##direct-structure-ref _bind5534_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind5534_
                   'gx#alias-binding::t)
                  (_lp5532_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind5534_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi5529_
                    _ctx5530_))
                  _bind5534_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx5539_)
          (let* ((_phi5541_ (gx#current-expander-phi))
                 (_ctx5543_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5539_ _phi5541_ _ctx5543_))))
      (define gx#resolve-identifier__1
        (lambda (_stx5545_ _phi5546_)
          (let ((_ctx5548_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5545_ _phi5546_ _ctx5548_))))
      (define gx#resolve-identifier
        (lambda _g7714_
          (let ((_g7713_ (length _g7714_)))
            (cond ((##fx= _g7713_ 1) (apply gx#resolve-identifier__0 _g7714_))
                  ((##fx= _g7713_ 2) (apply gx#resolve-identifier__1 _g7714_))
                  ((##fx= _g7713_ 3) (apply gx#resolve-identifier__% _g7714_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g7714_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx5486_ _val5487_ _rebind?5488_ _phi5489_ _ctx5490_)
        (let ((_rebind?5492_
               (if (not _rebind?5488_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?5488_) _rebind?5488_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx5486_)
           _val5487_
           _rebind?5492_
           _phi5489_
           _ctx5490_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx5497_ _val5498_)
          (let* ((_rebind?5500_ '#f)
                 (_phi5502_ (gx#current-expander-phi))
                 (_ctx5504_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5497_
             _val5498_
             _rebind?5500_
             _phi5502_
             _ctx5504_))))
      (define gx#bind-identifier!__1
        (lambda (_stx5506_ _val5507_ _rebind?5508_)
          (let* ((_phi5510_ (gx#current-expander-phi))
                 (_ctx5512_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5506_
             _val5507_
             _rebind?5508_
             _phi5510_
             _ctx5512_))))
      (define gx#bind-identifier!__2
        (lambda (_stx5514_ _val5515_ _rebind?5516_ _phi5517_)
          (let ((_ctx5519_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5514_
             _val5515_
             _rebind?5516_
             _phi5517_
             _ctx5519_))))
      (define gx#bind-identifier!
        (lambda _g7716_
          (let ((_g7715_ (length _g7716_)))
            (cond ((##fx= _g7715_ 2) (apply gx#bind-identifier!__0 _g7716_))
                  ((##fx= _g7715_ 3) (apply gx#bind-identifier!__1 _g7716_))
                  ((##fx= _g7715_ 4) (apply gx#bind-identifier!__2 _g7716_))
                  ((##fx= _g7715_ 5) (apply gx#bind-identifier!__% _g7716_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g7716_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx5458_ _phi5459_ _ctx5460_)
        (let _lp5462_ ((_e5464_ _stx5458_)
                       (_marks5465_ (gx#current-expander-marks)))
          (if (symbol? _e5464_)
              (gx#core-resolve-binding
               _e5464_
               _phi5459_
               _phi5459_
               _ctx5460_
               (reverse _marks5465_))
              (if (gx#identifier-quote? _e5464_)
                  (gx#core-resolve-binding
                   (##structure-ref _e5464_ '1 AST::t '#f)
                   _phi5459_
                   '0
                   (##direct-structure-ref _e5464_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e5464_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e5464_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e5464_ '1 AST::t '#f)
                       _phi5459_
                       _phi5459_
                       _ctx5460_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e5464_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks5465_))
                      (if (##structure-direct-instance-of?
                           _e5464_
                           'gx#syntax-wrap::t)
                          (_lp5462_
                           (##structure-ref _e5464_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e5464_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks5465_))
                          (if (##structure-instance-of? _e5464_ 'gerbil#AST::t)
                              (_lp5462_
                               (##structure-ref _e5464_ '1 AST::t '#f)
                               _marks5465_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx5458_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx5470_)
          (let* ((_phi5472_ (gx#current-expander-phi))
                 (_ctx5474_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5470_ _phi5472_ _ctx5474_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx5476_ _phi5477_)
          (let ((_ctx5479_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5476_ _phi5477_ _ctx5479_))))
      (define gx#core-resolve-identifier
        (lambda _g7718_
          (let ((_g7717_ (length _g7718_)))
            (cond ((##fx= _g7717_ 1)
                   (apply gx#core-resolve-identifier__0 _g7718_))
                  ((##fx= _g7717_ 2)
                   (apply gx#core-resolve-identifier__1 _g7718_))
                  ((##fx= _g7717_ 3)
                   (apply gx#core-resolve-identifier__% _g7718_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g7718_))))))))
  (define gx#core-resolve-binding
    (lambda (_id5371_ _phi5372_ _src-phi5373_ _ctx5374_ _marks5375_)
      (letrec ((_resolve5377_
                (lambda (_ctx5445_ _src-phi5446_ _key5447_)
                  (let _lp5449_ ((_ctx5451_
                                  (gx#core-context-shift _ctx5445_ _phi5372_))
                                 (_dphi5452_ (fx- _phi5372_ _src-phi5446_)))
                    (let ((_$e5454_
                           (gx#core-context-resolve _ctx5451_ _key5447_)))
                      (if _$e5454_
                          (values _$e5454_)
                          (if (fxzero? _dphi5452_)
                              '#f
                              (if (fxpositive? _dphi5452_)
                                  (_lp5449_
                                   (gx#core-context-shift _ctx5451_ '-1)
                                   (fx- _dphi5452_ '1))
                                  (if (fxnegative? _dphi5452_)
                                      (_lp5449_
                                       (gx#core-context-shift _ctx5451_ '1)
                                       (fx+ _dphi5452_ '1))
                                      '#!void)))))))))
        (let _lp5379_ ((_ctx5381_ _ctx5374_)
                       (_src-phi5382_ _src-phi5373_)
                       (_rest5383_ _marks5375_))
          (let* ((_rest53845392_ _rest5383_)
                 (_else53865400_
                  (lambda () (_resolve5377_ _ctx5381_ _src-phi5382_ _id5371_)))
                 (_K53885433_
                  (lambda (_rest5403_ _hd5404_)
                    (let* ((_hd54055411_ _hd5404_)
                           (_E54075415_
                            (lambda ()
                              (error '"No clause matching" _hd54055411_)))
                           (_K54085425_
                            (lambda (_subst5418_)
                              (let ((_$e5422_
                                     (let ((_key5420_
                                            (if _subst5418_
                                                (table-ref
                                                 _subst5418_
                                                 _id5371_
                                                 '#f)
                                                '#f)))
                                       (if _key5420_
                                           (_resolve5377_
                                            _ctx5381_
                                            _src-phi5382_
                                            _key5420_)
                                           '#f))))
                                (if _$e5422_
                                    _$e5422_
                                    (_lp5379_
                                     (##structure-ref
                                      _hd5404_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd5404_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest5403_))))))
                      (if (##structure-instance-of?
                           _hd54055411_
                           'gx#expander-mark::t)
                          (let* ((_e54095428_ (##vector-ref _hd54055411_ '1))
                                 (_subst5431_ _e54095428_))
                            (_K54085425_ _subst5431_))
                          (_E54075415_))))))
            (if (##pair? _rest53845392_)
                (let ((_hd53895436_ (##car _rest53845392_))
                      (_tl53905438_ (##cdr _rest53845392_)))
                  (let* ((_hd5441_ _hd53895436_) (_rest5443_ _tl53905438_))
                    (_K53885433_ _rest5443_ _hd5441_)))
                (_else53865400_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key5247_ _val5248_ _rebind?5249_ _phi5250_ _ctx5251_)
        (letrec ((_update-binding5253_
                  (lambda (_xval5324_)
                    (if (let ((_$e5326_
                               (_rebind?5249_ _ctx5251_ _xval5324_ _val5248_)))
                          (if _$e5326_
                              _$e5326_
                              (let ((_$e5332_
                                     (if (##structure-direct-instance-of?
                                          _xval5324_
                                          'gx#import-binding::t)
                                         (let ((_$e5329_
                                                (##direct-structure-ref
                                                 _xval5324_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e5329_
                                               _$e5329_
                                               (if (##structure-instance-of?
                                                    _val5248_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val5248_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e5332_
                                    _$e5332_
                                    (if (##structure-instance-of?
                                         _xval5324_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val5248_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val5248_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval5324_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val5248_
                        (if (if (##structure-direct-instance-of?
                                 _val5248_
                                 'gx#import-binding::t)
                                (let ((_$e5335_
                                       (##direct-structure-ref
                                        _val5248_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e5335_
                                      _$e5335_
                                      (if (##structure-instance-of?
                                           _xval5324_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val5248_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval5324_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval5324_
                            (if (if (##structure-direct-instance-of?
                                     _val5248_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval5324_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key5247_
                                 (cons (##structure-ref
                                        _val5248_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val5248_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval5324_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval5324_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval5324_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval5324_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key5247_
                                 _val5248_
                                 _xval5324_))))))
                 (_gensubst5254_
                  (lambda (_subst5319_ _id5320_)
                    (let ((_eid5322_
                           (gensym (if (uninterned-symbol? _id5320_)
                                       '%
                                       _id5320_))))
                      (begin
                        (table-set! _subst5319_ _id5320_ _eid5322_)
                        _eid5322_))))
                 (_subst!5255_
                  (lambda (_key5257_)
                    (let* ((_key52585266_ _key5257_)
                           (_else52605274_ (lambda () _key5257_))
                           (_K52625307_
                            (lambda (_mark5277_ _id5278_)
                              (let* ((_mark52795285_ _mark5277_)
                                     (_E52815289_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark52795285_)))
                                     (_K52825299_
                                      (lambda (_subst5292_)
                                        (if (not _subst5292_)
                                            (let ((_subst5294_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark5277_
                                                 _subst5294_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst5254_
                                                 _subst5294_
                                                 _id5278_)))
                                            (let ((_$e5296_
                                                   (table-ref
                                                    _subst5292_
                                                    _id5278_
                                                    '#f)))
                                              (if _$e5296_
                                                  (values _$e5296_)
                                                  (_gensubst5254_
                                                   _subst5292_
                                                   _id5278_)))))))
                                (if (##structure-instance-of?
                                     _mark52795285_
                                     'gx#expander-mark::t)
                                    (let* ((_e52835302_
                                            (##vector-ref _mark52795285_ '1))
                                           (_subst5305_ _e52835302_))
                                      (_K52825299_ _subst5305_))
                                    (_E52815289_))))))
                      (if (##pair? _key52585266_)
                          (let ((_hd52635310_ (##car _key52585266_))
                                (_tl52645312_ (##cdr _key52585266_)))
                            (let* ((_id5315_ _hd52635310_)
                                   (_mark5317_ _tl52645312_))
                              (_K52625307_ _mark5317_ _id5315_)))
                          (_else52605274_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx5251_ _phi5250_)
           (_subst!5255_ _key5247_)
           _val5248_
           _update-binding5253_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key5341_ _val5342_)
          (let* ((_rebind?5344_ false)
                 (_phi5346_ (gx#current-expander-phi))
                 (_ctx5348_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5341_
             _val5342_
             _rebind?5344_
             _phi5346_
             _ctx5348_))))
      (define gx#core-bind!__1
        (lambda (_key5350_ _val5351_ _rebind?5352_)
          (let* ((_phi5354_ (gx#current-expander-phi))
                 (_ctx5356_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5350_
             _val5351_
             _rebind?5352_
             _phi5354_
             _ctx5356_))))
      (define gx#core-bind!__2
        (lambda (_key5358_ _val5359_ _rebind?5360_ _phi5361_)
          (let ((_ctx5363_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5358_
             _val5359_
             _rebind?5360_
             _phi5361_
             _ctx5363_))))
      (define gx#core-bind!
        (lambda _g7720_
          (let ((_g7719_ (length _g7720_)))
            (cond ((##fx= _g7719_ 2) (apply gx#core-bind!__0 _g7720_))
                  ((##fx= _g7719_ 3) (apply gx#core-bind!__1 _g7720_))
                  ((##fx= _g7719_ 4) (apply gx#core-bind!__2 _g7720_))
                  ((##fx= _g7719_ 5) (apply gx#core-bind!__% _g7720_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g7720_))))))))
  (define gx#core-identifier-key
    (lambda (_stx5181_)
      (if (symbol? _stx5181_)
          (let* ((_g51825190_ (gx#current-expander-marks))
                 (_else51845198_ (lambda () _stx5181_))
                 (_K51865203_ (lambda (_hd5201_) (cons _stx5181_ _hd5201_))))
            (if (##pair? _g51825190_)
                (let* ((_hd51875206_ (##car _g51825190_))
                       (_hd5209_ _hd51875206_))
                  (_K51865203_ _hd5209_))
                (_else51845198_)))
          (if (gx#identifier? _stx5181_)
              (let* ((_id5211_ (gx#syntax-local-unwrap _stx5181_))
                     (_eid5213_ (gx#stx-e _id5211_))
                     (_marks5215_ (gx#stx-identifier-marks _id5211_)))
                (let* ((_marks52175225_ _marks5215_)
                       (_else52195233_ (lambda () _eid5213_))
                       (_K52215238_
                        (lambda (_hd5236_) (cons _eid5213_ _hd5236_))))
                  (if (##pair? _marks52175225_)
                      (let* ((_hd52225241_ (##car _marks52175225_))
                             (_hd5244_ _hd52225241_))
                        (_K52215238_ _hd5244_))
                      (_else52195233_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx5181_)))))
  (define gx#core-context-shift
    (lambda (_ctx5126_ _phi5127_)
      (letrec ((_make-phi5129_
                (lambda (_super5179_)
                  (let ((__obj7691 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj7691
                       (gensym 'phi)
                       _super5179_)
                      __obj7691))))
               (_make-phi/up5130_
                (lambda (_ctx5174_ _super5175_)
                  (let ((_ctx+15177_ (_make-phi5129_ _super5175_)))
                    (begin
                      (##structure-set!
                       _ctx5174_
                       _ctx+15177_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+15177_
                       _ctx5174_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+15177_))))
               (_make-phi/down5131_
                (lambda (_ctx5169_ _super5170_)
                  (let ((_ctx-15172_ (_make-phi5129_ _super5170_)))
                    (begin
                      (##structure-set!
                       _ctx-15172_
                       _ctx5169_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx5169_
                       _ctx-15172_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-15172_))))
               (_shift5132_
                (lambda (_ctx5153_
                         _delta5154_
                         _make-delta-context5155_
                         _phi5156_
                         _K5157_)
                  (let ((_$e5159_
                         (##structure-ref _ctx5153_ '3 gx#phi-context::t '#f)))
                    (if _$e5159_
                        ((lambda (_super5162_)
                           (let* ((_super5164_
                                   (_K5157_ _super5162_ _delta5154_))
                                  (_ctx+d5166_
                                   (_make-delta-context5155_
                                    _ctx5153_
                                    _super5164_)))
                             (_K5157_ _ctx+d5166_
                                      (fx- _phi5156_ _delta5154_))))
                         _$e5159_)
                        (error '"Bad context" _ctx5153_))))))
        (let _K5134_ ((_ctx5136_ _ctx5126_) (_phi5137_ _phi5127_))
          (if (fxzero? _phi5137_)
              _ctx5136_
              (if (##structure-instance-of? _ctx5136_ 'gx#context-phi::t)
                  (if (fxpositive? _phi5137_)
                      (let ((_$e5139_
                             (##structure-ref
                              _ctx5136_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e5139_
                            ((lambda (_g51415143_)
                               (_K5134_ _g51415143_ (fx- _phi5137_ '1)))
                             _$e5139_)
                            (_shift5132_
                             _ctx5136_
                             '1
                             _make-phi/up5130_
                             _phi5137_
                             _K5134_)))
                      (let ((_$e5146_
                             (##structure-ref
                              _ctx5136_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e5146_
                            ((lambda (_g51485150_)
                               (_K5134_ _g51485150_ (fx+ _phi5137_ '1)))
                             _$e5146_)
                            (_shift5132_
                             _ctx5136_
                             '-1
                             _make-phi/down5131_
                             _phi5137_
                             _K5134_))))
                  _ctx5136_))))))
  (define gx#core-context-get
    (lambda (_ctx5123_ _key5124_)
      (table-ref
       (##structure-ref _ctx5123_ '2 gx#expander-context::t '#f)
       _key5124_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx5119_ _key5120_ _val5121_)
      (table-set!
       (##structure-ref _ctx5119_ '2 gx#expander-context::t '#f)
       _key5120_
       _val5121_)))
  (define gx#core-context-resolve
    (lambda (_ctx5106_ _key5107_)
      (let _lp5109_ ((_ctx5111_ _ctx5106_))
        (let ((_$e5113_ (gx#core-context-get _ctx5111_ _key5107_)))
          (if _$e5113_
              (values _$e5113_)
              (let ((_$e5116_
                     (if (##structure-instance-of?
                          _ctx5111_
                          'gx#context-phi::t)
                         (##structure-ref _ctx5111_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e5116_ (_lp5109_ _$e5116_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx5096_ _key5097_ _val5098_ _rebind5099_)
      (let ((_$e5101_ (gx#core-context-get _ctx5096_ _key5097_)))
        (if _$e5101_
            ((lambda (_xval5104_)
               (gx#core-context-put!
                _ctx5096_
                _key5097_
                (_rebind5099_ _xval5104_)))
             _$e5101_)
            (gx#core-context-put! _ctx5096_ _key5097_ _val5098_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx5074_ _stop?5075_)
        (let _lp5077_ ((_ctx5079_ _ctx5074_))
          (if (_stop?5075_ _ctx5079_)
              _ctx5079_
              (if (##structure-instance-of? _ctx5079_ 'gx#context-phi::t)
                  (_lp5077_
                   (##structure-ref _ctx5079_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx5085_ (gx#current-expander-context))
                 (_stop?5087_ gx#top-context?))
            (gx#core-context-top__% _ctx5085_ _stop?5087_))))
      (define gx#core-context-top__1
        (lambda (_ctx5089_)
          (let ((_stop?5091_ gx#top-context?))
            (gx#core-context-top__% _ctx5089_ _stop?5091_))))
      (define gx#core-context-top
        (lambda _g7722_
          (let ((_g7721_ (length _g7722_)))
            (cond ((##fx= _g7721_ 0) (apply gx#core-context-top__0 _g7722_))
                  ((##fx= _g7721_ 1) (apply gx#core-context-top__1 _g7722_))
                  ((##fx= _g7721_ 2) (apply gx#core-context-top__% _g7722_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g7722_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx5059_)
        (let _lp5061_ ((_ctx5063_ _ctx5059_))
          (if (##structure-instance-of? _ctx5063_ 'gx#context-phi::t)
              (_lp5061_ (##structure-ref _ctx5063_ '3 gx#phi-context::t '#f))
              _ctx5063_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx5069_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx5069_))))
      (define gx#core-context-root
        (lambda _g7724_
          (let ((_g7723_ (length _g7724_)))
            (cond ((##fx= _g7723_ 0) (apply gx#core-context-root__0 _g7724_))
                  ((##fx= _g7723_ 1) (apply gx#core-context-root__% _g7724_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g7724_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx5043_ . __50405044_)
        (if (##structure-instance-of? _ctx5043_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx5043_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx5043_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx5051_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx5051_))))
      (define gx#core-context-rebind?
        (lambda _g7726_
          (let ((_g7725_ (length _g7726_)))
            (cond ((##fx= _g7725_ 0)
                   (apply gx#core-context-rebind?__0 _g7726_))
                  ((##fx= _g7725_ 1)
                   (apply gx#core-context-rebind?__% _g7726_))
                  ((##fx>= _g7725_ 1)
                   (apply gx#core-context-rebind?__% _g7726_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g7726_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx5026_)
        (let ((_$e5028_ (gx#core-context-top__1 _ctx5026_)))
          (if _$e5028_
              ((lambda (_ctx5031_)
                 (if (##structure-instance-of? _ctx5031_ 'gx#module-context::t)
                     (##structure-ref _ctx5031_ '6 gx#module-context::t '#f)
                     '#f))
               _$e5028_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx5037_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx5037_))))
      (define gx#core-context-namespace
        (lambda _g7728_
          (let ((_g7727_ (length _g7728_)))
            (cond ((##fx= _g7727_ 0)
                   (apply gx#core-context-namespace__0 _g7728_))
                  ((##fx= _g7727_ 1)
                   (apply gx#core-context-namespace__% _g7728_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g7728_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind5012_ _is?5013_)
        (if (##structure-direct-instance-of? _bind5012_ 'gx#syntax-binding::t)
            (_is?5013_
             (##direct-structure-ref _bind5012_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind5018_)
          (let ((_is?5020_ gx#expander?))
            (gx#expander-binding?__% _bind5018_ _is?5020_))))
      (define gx#expander-binding?
        (lambda _g7730_
          (let ((_g7729_ (length _g7730_)))
            (cond ((##fx= _g7729_ 1) (apply gx#expander-binding?__0 _g7730_))
                  ((##fx= _g7729_ 2) (apply gx#expander-binding?__% _g7730_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g7730_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind5009_)
      (gx#expander-binding?__% _bind5009_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind5007_)
      (gx#expander-binding?__% _bind5007_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind5001_)
      (letrec ((_direct-special-form?5003_
                (lambda (_obj5005_)
                  (##structure-direct-instance-of?
                   _obj5005_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__% _bind5001_ _direct-special-form?5003_))))
  (define gx#special-form-binding?
    (lambda (_bind4999_)
      (gx#expander-binding?__% _bind4999_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4990_)
      (letrec ((_feature?4992_
                (lambda (_e4994_)
                  (let ((_$e4996_
                         (##structure-instance-of?
                          _e4994_
                          'gx#feature-expander::t)))
                    (if _$e4996_
                        _$e4996_
                        (##structure-instance-of?
                         _e4994_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind4990_ _feature?4992_))))
  (define gx#private-feature-binding?
    (lambda (_bind4988_)
      (gx#expander-binding?__% _bind4988_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id4975_ _bound?4976_)
        (if (gx#identifier? _id4975_)
            (_bound?4976_ (gx#resolve-identifier__0 _id4975_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4981_)
          (let ((_bound?4983_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id4981_ _bound?4983_))))
      (define gx#core-bound-identifier?
        (lambda _g7732_
          (let ((_g7731_ (length _g7732_)))
            (cond ((##fx= _g7731_ 1)
                   (apply gx#core-bound-identifier?__0 _g7732_))
                  ((##fx= _g7731_ 2)
                   (apply gx#core-bound-identifier?__% _g7732_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g7732_))))))))
  (define gx#core-identifier=?
    (lambda (_x4965_ _y4966_)
      (letrec ((_y=?4968_
                (lambda (_xid4972_)
                  ((if (list? _y4966_) memq eq?) _xid4972_ _y4966_))))
        (let ((_bind4970_ (gx#resolve-identifier__0 _x4965_)))
          (if (##structure-instance-of? _bind4970_ 'gx#binding::t)
              (_y=?4968_ (##structure-ref _bind4970_ '1 gx#binding::t '#f))
              (_y=?4968_ (gx#stx-e _x4965_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4963_)
      (if (interned-symbol? _e4963_)
          (string-index (symbol->string _e4963_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx4921_ _src4922_ _ctx4923_ _marks4924_)
        (if (gx#sealed-syntax? _stx4921_)
            (gx#stx-unwrap__0 _stx4921_)
            (if (gx#identifier? _stx4921_)
                (let ((_id4926_ (gx#syntax-local-unwrap _stx4921_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4926_)
                   (let ((_$e4928_ (gx#stx-source _id4926_)))
                     (if _$e4928_ _$e4928_ _src4922_))
                   _ctx4923_
                   (##direct-structure-ref
                    _id4926_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4921_)
                    (gx#stx-e _stx4921_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4921_
                     (let ((_$e4931_ (gx#stx-source _stx4921_)))
                       (if _$e4931_ _$e4931_ _src4922_))
                     _ctx4923_
                     (reverse _marks4924_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4937_)
          (let* ((_src4939_ '#f)
                 (_ctx4941_ (gx#current-expander-context))
                 (_marks4943_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4937_
             _src4939_
             _ctx4941_
             _marks4943_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4945_ _src4946_)
          (let* ((_ctx4948_ (gx#current-expander-context))
                 (_marks4950_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4945_
             _src4946_
             _ctx4948_
             _marks4950_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4952_ _src4953_ _ctx4954_)
          (let ((_marks4956_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4952_
             _src4953_
             _ctx4954_
             _marks4956_))))
      (define gx#core-quote-syntax
        (lambda _g7734_
          (let ((_g7733_ (length _g7734_)))
            (cond ((##fx= _g7733_ 1) (apply gx#core-quote-syntax__0 _g7734_))
                  ((##fx= _g7733_ 2) (apply gx#core-quote-syntax__1 _g7734_))
                  ((##fx= _g7733_ 3) (apply gx#core-quote-syntax__2 _g7734_))
                  ((##fx= _g7733_ 4) (apply gx#core-quote-syntax__% _g7734_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g7734_))))))))
  (define gx#core-cons
    (lambda (_hd4917_ _tl4918_)
      (cons (gx#core-quote-syntax__0 _hd4917_) _tl4918_)))
  (define gx#core-list
    (lambda (_hd4914_ . _rest4915_)
      (cons (gx#core-quote-syntax__0 _hd4914_) _rest4915_)))
  (define gx#core-cons*
    (lambda (_hd4911_ . _rest4912_)
      (apply cons* (gx#core-quote-syntax__0 _hd4911_) _rest4912_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path4885_ _rel4886_)
        (let ((_path4898_ (gx#stx-e _stx-path4885_))
              (_reldir4899_
               (let _lp4888_ ((_relsrc4890_
                               (let ((_$e4895_ (gx#stx-source _stx-path4885_)))
                                 (if _$e4895_ _$e4895_ _rel4886_))))
                 (if (##structure-instance-of? _relsrc4890_ 'gerbil#AST::t)
                     (_lp4888_
                      (let ((_$e4892_ (gx#stx-source _relsrc4890_)))
                        (if _$e4892_ _$e4892_ (gx#stx-e _relsrc4890_))))
                     (if (source-location-path? _relsrc4890_)
                         (path-directory (source-location-path _relsrc4890_))
                         (if (string? _relsrc4890_)
                             (path-directory _relsrc4890_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4898_ (path-normalize _reldir4899_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4904_)
          (let ((_rel4906_ '#f))
            (gx#core-resolve-path__% _stx-path4904_ _rel4906_))))
      (define gx#core-resolve-path
        (lambda _g7736_
          (let ((_g7735_ (length _g7736_)))
            (cond ((##fx= _g7735_ 1) (apply gx#core-resolve-path__0 _g7736_))
                  ((##fx= _g7735_ 2) (apply gx#core-resolve-path__% _g7736_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g7736_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr4841_ _ctx4842_)
        (let* ((_repr48434850_ _repr4841_)
               (_E48454854_
                (lambda () (error '"No clause matching" _repr48434850_)))
               (_K48464862_
                (lambda (_subs4857_ _phi4858_)
                  (let ((_subst4860_
                         (if (not (null? _subs4857_))
                             (list->hash-table-eq _subs4857_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst4860_
                     _ctx4842_
                     _phi4858_
                     '#f)))))
          (if (##pair? _repr48434850_)
              (let ((_hd48474865_ (##car _repr48434850_))
                    (_tl48484867_ (##cdr _repr48434850_)))
                (let* ((_phi4870_ _hd48474865_) (_subs4872_ _tl48484867_))
                  (_K48464862_ _subs4872_ _phi4870_)))
              (_E48454854_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr4877_)
          (let ((_ctx4879_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr4877_ _ctx4879_))))
      (define gx#core-deserialize-mark
        (lambda _g7738_
          (let ((_g7737_ (length _g7738_)))
            (cond ((##fx= _g7737_ 1)
                   (apply gx#core-deserialize-mark__0 _g7738_))
                  ((##fx= _g7737_ 2)
                   (apply gx#core-deserialize-mark__% _g7738_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g7738_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4838_) (gx#stx-rewrap _stx4838_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4836_)
      (gx#stx-unwrap__% _stx4836_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4806_)
      (let* ((_g48074815_ (gx#current-expander-marks))
             (_else48094823_ (lambda () _stx4806_))
             (_K48114828_
              (lambda (_hd4826_) (gx#stx-apply-mark _stx4806_ _hd4826_))))
        (if (##pair? _g48074815_)
            (let* ((_hd48124831_ (##car _g48074815_)) (_hd4834_ _hd48124831_))
              (_K48114828_ _hd4834_))
            (_else48094823_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx4791_ _E4792_)
        (let ((_bind4794_ (gx#resolve-identifier__0 _stx4791_)))
          (if (##structure-direct-instance-of?
               _bind4794_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4794_ '4 gx#syntax-binding::t '#f)
              (_E4792_ _stx4791_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4799_)
          (let ((_E4801_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx4799_ _E4801_))))
      (define gx#syntax-local-e
        (lambda _g7740_
          (let ((_g7739_ (length _g7740_)))
            (cond ((##fx= _g7739_ 1) (apply gx#syntax-local-e__0 _g7740_))
                  ((##fx= _g7739_ 2) (apply gx#syntax-local-e__% _g7740_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g7740_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx4775_ _E4776_)
        (let ((_e4778_ (gx#syntax-local-e__% _stx4775_ _E4776_)))
          (if (##structure-instance-of? _e4778_ 'gx#expander::t)
              (##structure-ref _e4778_ '1 gx#expander::t '#f)
              _e4778_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4783_)
          (let ((_E4785_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx4783_ _E4785_))))
      (define gx#syntax-local-value
        (lambda _g7742_
          (let ((_g7741_ (length _g7742_)))
            (cond ((##fx= _g7741_ 1) (apply gx#syntax-local-value__0 _g7742_))
                  ((##fx= _g7741_ 2) (apply gx#syntax-local-value__% _g7742_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g7742_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4772_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4772_))))
