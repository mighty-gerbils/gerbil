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
    (lambda _$args7435_
      (apply make-struct-instance gx#expander-context::t _$args7435_)))
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
    (lambda _$args7432_
      (apply make-struct-instance gx#root-context::t _$args7432_)))
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
    (lambda _$args7429_
      (apply make-struct-instance gx#phi-context::t _$args7429_)))
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
    (lambda _$args7426_
      (apply make-struct-instance gx#top-context::t _$args7426_)))
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
    (lambda _$args7423_
      (apply make-struct-instance gx#module-context::t _$args7423_)))
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
    (lambda _$args7420_
      (apply make-struct-instance gx#prelude-context::t _$args7420_)))
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
    (lambda _$args7417_
      (apply make-struct-instance gx#local-context::t _$args7417_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self7401_ _id7402_ _super7403_)
        (if (##fx< '5 (##vector-length _self7401_))
            (begin
              (##vector-set! _self7401_ '1 _id7402_)
              (##vector-set! _self7401_ '2 (make-hash-table-eq))
              (##vector-set! _self7401_ '3 _super7403_)
              (##vector-set! _self7401_ '4 '#f)
              (##vector-set! _self7401_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7401_))))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self7408_ _id7409_)
          (let ((_super7411_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self7408_ _id7409_ _super7411_))))
      (define gx#phi-context:::init!
        (lambda _g7439_
          (let ((_g7438_ (length _g7439_)))
            (cond ((fx= _g7438_ 2) (apply gx#phi-context:::init!__0 _g7439_))
                  ((fx= _g7438_ 3) (apply gx#phi-context:::init!__% _g7439_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g7439_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self7265_ _super7266_)
        (if (##fx< '5 (##vector-length _self7265_))
            (begin
              (##vector-set! _self7265_ '1 (gensym 'L))
              (##vector-set! _self7265_ '2 (make-hash-table-eq))
              (##vector-set! _self7265_ '3 _super7266_)
              (##vector-set! _self7265_ '4 '#f)
              (##vector-set! _self7265_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7265_))))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self7271_)
          (let ((_super7273_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self7271_ _super7273_))))
      (define gx#local-context:::init!
        (lambda _g7441_
          (let ((_g7440_ (length _g7441_)))
            (cond ((fx= _g7440_ 1) (apply gx#local-context:::init!__0 _g7441_))
                  ((fx= _g7440_ 2) (apply gx#local-context:::init!__% _g7441_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g7441_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args7139_
      (apply make-struct-instance gx#binding::t _$args7139_)))
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
    (lambda _$args7136_
      (apply make-struct-instance gx#runtime-binding::t _$args7136_)))
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
    (lambda _$args7133_
      (apply make-struct-instance gx#local-binding::t _$args7133_)))
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
    (lambda _$args7130_
      (apply make-struct-instance gx#top-binding::t _$args7130_)))
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
    (lambda _$args7127_
      (apply make-struct-instance gx#module-binding::t _$args7127_)))
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
    (lambda _$args7124_
      (apply make-struct-instance gx#extern-binding::t _$args7124_)))
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
    (lambda _$args7121_
      (apply make-struct-instance gx#syntax-binding::t _$args7121_)))
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
    (lambda _$args7118_
      (apply make-struct-instance gx#import-binding::t _$args7118_)))
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
    (lambda _$args7115_
      (apply make-struct-instance gx#alias-binding::t _$args7115_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args7112_
      (apply make-struct-instance gx#expander::t _$args7112_)))
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
    (lambda _$args7109_
      (apply make-struct-instance gx#core-expander::t _$args7109_)))
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
    (lambda _$args7106_
      (apply make-struct-instance gx#expression-form::t _$args7106_)))
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
    (lambda _$args7103_
      (apply make-struct-instance gx#special-form::t _$args7103_)))
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
    (lambda _$args7100_
      (apply make-struct-instance gx#definition-form::t _$args7100_)))
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
    (lambda _$args7097_
      (apply make-struct-instance gx#top-special-form::t _$args7097_)))
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
    (lambda _$args7094_
      (apply make-struct-instance gx#module-special-form::t _$args7094_)))
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
    (lambda _$args7091_
      (apply make-struct-instance gx#feature-expander::t _$args7091_)))
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
    (lambda _$args7088_
      (apply make-struct-instance gx#private-feature-expander::t _$args7088_)))
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
    (lambda _$args7085_
      (apply make-struct-instance gx#reserved-expander::t _$args7085_)))
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
    (lambda _$args7082_
      (apply make-struct-instance gx#macro-expander::t _$args7082_)))
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
    (lambda _$args7079_
      (apply make-struct-instance gx#rename-macro-expander::t _$args7079_)))
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
    (lambda _$args7076_
      (apply make-struct-instance gx#user-expander::t _$args7076_)))
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
    (lambda _$args7073_
      (apply make-struct-instance gx#expander-mark::t _$args7073_)))
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
    (lambda _$args7070_
      (apply make-struct-instance gx#syntax-error::t _$args7070_)))
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
    (lambda (_where7065_ _message7066_ _stx7067_ . _details7068_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message7066_
              (cons _stx7067_ _details7068_)
              _where7065_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx7052_ _expression?7053_)
        (gx#eval-syntax* (gx#core-expand__% _stx7052_ _expression?7053_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx7058_)
          (let ((_expression?7060_ '#f))
            (gx#eval-syntax__% _stx7058_ _expression?7060_))))
      (define gx#eval-syntax
        (lambda _g7443_
          (let ((_g7442_ (length _g7443_)))
            (cond ((fx= _g7442_ 1) (apply gx#eval-syntax__0 _g7443_))
                  ((fx= _g7442_ 2) (apply gx#eval-syntax__% _g7443_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g7443_))))))))
  (define gx#eval-syntax*
    (lambda (_stx7049_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx7049_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx7036_ _expression?7037_)
        (if _expression?7037_
            (gx#core-expand-expression _stx7036_)
            (gx#core-expand-top _stx7036_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx7042_)
          (let ((_expression?7044_ '#f))
            (gx#core-expand__% _stx7042_ _expression?7044_))))
      (define gx#core-expand
        (lambda _g7445_
          (let ((_g7444_ (length _g7445_)))
            (cond ((fx= _g7444_ 1) (apply gx#core-expand__0 _g7445_))
                  ((fx= _g7444_ 2) (apply gx#core-expand__% _g7445_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g7445_))))))))
  (define gx#core-expand-top
    (lambda (_stx7003_)
      (let* ((_stx7005_ (gx#core-expand*__0 _stx7003_))
             (_e70067013_ _stx7005_)
             (_E70087017_ (lambda () (gx#core-expand-expression _stx7005_)))
             (_E70077031_
              (lambda ()
                (if (gx#stx-pair? _e70067013_)
                    (let ((_e70097021_ (gx#syntax-e _e70067013_)))
                      (let ((_hd70107024_ (##car _e70097021_))
                            (_tl70117026_ (##cdr _e70097021_)))
                        (let ((_form7029_ _hd70107024_))
                          (if (gx#core-bound-identifier?__0 _form7029_)
                              _stx7005_
                              (_E70087017_)))))
                    (_E70087017_)))))
        (_E70077031_))))
  (define gx#core-expand-expression
    (lambda (_stx6925_)
      (letrec ((_sealed-expression?6927_
                (lambda (_hd6973_)
                  (if (gx#sealed-syntax? _hd6973_)
                      (let* ((_e69746981_ _hd6973_)
                             (_E69766985_ (lambda () '#f))
                             (_E69756999_
                              (lambda ()
                                (if (gx#stx-pair? _e69746981_)
                                    (let ((_e69776989_
                                           (gx#syntax-e _e69746981_)))
                                      (let ((_hd69786992_ (##car _e69776989_))
                                            (_tl69796994_ (##cdr _e69776989_)))
                                        (let ((_form6997_ _hd69786992_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form6997_
                                               gx#expression-form-binding?)
                                              (_E69766985_)))))
                                    (_E69766985_)))))
                        (_E69756999_))
                      '#f)))
               (_illegal-expression6928_
                (lambda (_hd6971_ . _g7446_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx6925_
                   _hd6971_)))
               (_expand-e6929_
                (lambda (_form6966_ _hd6967_)
                  (let ((_bind6969_
                         (if (##structure-instance-of?
                              _form6966_
                              'gx#binding::t)
                             _form6966_
                             (gx#resolve-identifier__0 _form6966_))))
                    (if (gx#core-expander-binding? _bind6969_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind6969_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd6967_
                          (gx#stx-source _stx6925_)))
                        (if (##structure-direct-instance-of?
                             _bind6969_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind6969_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd6967_
                               (gx#stx-source _stx6925_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx6925_
                             _form6966_)))))))
        (let ((_hd6931_ (gx#core-expand-head _stx6925_)))
          (if (_sealed-expression?6927_ _hd6931_)
              _hd6931_
              (if (gx#stx-pair? _hd6931_)
                  (let* ((_e69326939_ _hd6931_)
                         (_E69346943_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e69326939_)))
                         (_E69336962_
                          (lambda ()
                            (if (gx#stx-pair? _e69326939_)
                                (let ((_e69356947_ (gx#syntax-e _e69326939_)))
                                  (let ((_hd69366950_ (##car _e69356947_))
                                        (_tl69376952_ (##cdr _e69356947_)))
                                    (let ((_form6955_ _hd69366950_))
                                      (if '#t
                                          (let ((_bind6957_
                                                 (if (gx#identifier?
                                                      _form6955_)
                                                     (gx#resolve-identifier__0
                                                      _form6955_)
                                                     '#f)))
                                            (if (let ((_$e6959_
                                                       (not _bind6957_)))
                                                  (if _$e6959_
                                                      _$e6959_
                                                      (not (gx#core-expander-binding?
                                                            _bind6957_))))
                                                (_expand-e6929_
                                                 '%%app
                                                 (cons '%%app _hd6931_))
                                                (if (eq? (##structure-ref
                                                          _bind6957_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd6931_
                                                     _illegal-expression6928_)
                                                    (if (gx#expression-form-binding?
                                                         _bind6957_)
                                                        (_expand-e6929_
                                                         _bind6957_
                                                         _hd6931_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind6957_)
                                                            (gx#core-expand-expression
                                                             (_expand-e6929_
                                                              _bind6957_
                                                              _hd6931_))
                                                            (_illegal-expression6928_
                                                             _hd6931_))))))
                                          (_E69346943_)))))
                                (_E69346943_)))))
                    (_E69336962_))
                  (if (gx#core-bound-identifier?__0 _hd6931_)
                      (_illegal-expression6928_ _hd6931_)
                      (if (gx#identifier? _hd6931_)
                          (_expand-e6929_
                           '%%ref
                           (cons '%%ref (cons _hd6931_ '())))
                          (if (gx#stx-datum? _hd6931_)
                              (_expand-e6929_
                               '%#quote
                               (cons '%#quote (cons _hd6931_ '())))
                              (_illegal-expression6928_ _hd6931_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx6920_)
      (call-with-parameters
       (lambda ()
         (let ((_stx6923_ (gx#core-expand-expression _stx6920_)))
           (values _stx6923_ (gx#eval-syntax* _stx6923_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx6901_ _stop?6902_)
        (let _lp6904_ ((_stx6906_ _stx6901_))
          (if (_stop?6902_ _stx6906_)
              _stx6906_
              (let ((_rstx6908_ (gx#core-expand1 _stx6906_)))
                (if (eq? _stx6906_ _rstx6908_)
                    _stx6906_
                    (_lp6904_ _rstx6908_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx6913_)
          (let ((_stop?6915_ false))
            (gx#core-expand*__% _stx6913_ _stop?6915_))))
      (define gx#core-expand*
        (lambda _g7448_
          (let ((_g7447_ (length _g7448_)))
            (cond ((fx= _g7447_ 1) (apply gx#core-expand*__0 _g7448_))
                  ((fx= _g7447_ 2) (apply gx#core-expand*__% _g7448_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g7448_))))))))
  (define gx#core-expand1
    (lambda (_stx6857_)
      (letrec ((_step6859_
                (lambda (_hd6896_)
                  (let ((_bind6898_ (gx#resolve-identifier__0 _hd6896_)))
                    (if (##structure-instance-of?
                         _bind6898_
                         'gx#runtime-binding::t)
                        _stx6857_
                        (if (##structure-direct-instance-of?
                             _bind6898_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind6898_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx6857_)
                            (if (not _bind6898_)
                                _stx6857_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx6857_))))))))
        (let* ((_e68606868_ _stx6857_)
               (_E68666872_ (lambda () _stx6857_))
               (_E68626878_
                (lambda ()
                  (let ((_hd6876_ _e68606868_))
                    (if (gx#identifier? _hd6876_)
                        (_step6859_ _hd6876_)
                        (_E68666872_)))))
               (_E68616892_
                (lambda ()
                  (if (gx#stx-pair? _e68606868_)
                      (let ((_e68636882_ (gx#syntax-e _e68606868_)))
                        (let ((_hd68646885_ (##car _e68636882_))
                              (_tl68656887_ (##cdr _e68636882_)))
                          (let ((_hd6890_ _hd68646885_))
                            (if (gx#identifier? _hd6890_)
                                (_step6859_ _hd6890_)
                                (_E68626878_)))))
                      (_E68626878_)))))
          (_E68616892_)))))
  (define gx#core-expand-head
    (lambda (_stx6823_)
      (letrec ((_stop?6825_
                (lambda (_stx6827_)
                  (let* ((_e68286835_ _stx6827_)
                         (_E68306839_ (lambda () '#f))
                         (_E68296853_
                          (lambda ()
                            (if (gx#stx-pair? _e68286835_)
                                (let ((_e68316843_ (gx#syntax-e _e68286835_)))
                                  (let ((_hd68326846_ (##car _e68316843_))
                                        (_tl68336848_ (##cdr _e68316843_)))
                                    (let ((_hd6851_ _hd68326846_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd6851_)
                                          (_E68306839_)))))
                                (_E68306839_)))))
                    (_E68296853_)))))
        (gx#core-expand*__% _stx6823_ _stop?6825_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx6629_ _expand-special6630_ _begin-form6631_ _expand-e6632_)
        (letrec ((_expand-splice6634_
                  (lambda (_hd6797_ _body6798_ _rest6799_ _r6800_)
                    (if (gx#stx-list? _body6798_)
                        (_K6638_ (gx#stx-foldr cons _rest6799_ _body6798_)
                                 _r6800_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx6629_
                         _hd6797_))))
                 (_expand-cond-expand6635_
                  (lambda (_hd6793_ _rest6794_ _r6795_)
                    (_K6638_ (cons (gx#core-expand-cond-expand% _hd6793_)
                                   _rest6794_)
                             _r6795_)))
                 (_expand-include6636_
                  (lambda (_hd6742_ _rest6743_ _r6744_)
                    (let* ((_e67456755_ _hd6742_)
                           (_E67476759_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e67456755_)))
                           (_E67466789_
                            (lambda ()
                              (if (gx#stx-pair? _e67456755_)
                                  (let ((_e67486763_
                                         (gx#syntax-e _e67456755_)))
                                    (let ((_hd67496766_ (##car _e67486763_))
                                          (_tl67506768_ (##cdr _e67486763_)))
                                      (if (gx#stx-pair? _tl67506768_)
                                          (let ((_e67516771_
                                                 (gx#syntax-e _tl67506768_)))
                                            (let ((_hd67526774_
                                                   (##car _e67516771_))
                                                  (_tl67536776_
                                                   (##cdr _e67516771_)))
                                              (let ((_path6779_ _hd67526774_))
                                                (if (gx#stx-null? _tl67536776_)
                                                    (if (gx#stx-string?
                                                         _path6779_)
                                                        (let* ((_rpath6781_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path6779_
                         (gx#stx-source _hd6742_)))
                       (_block6783_
                        (gx#core-expand-include%__% _hd6742_ _rpath6781_))
                       (_rbody6786_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block6783_
                            _expand-special6630_
                            '#f
                            _expand-e6632_))
                         gx#current-expander-path
                         (cons _rpath6781_ (gx#current-expander-path)))))
                  (_K6638_ _rest6743_ (foldr1 cons _r6744_ _rbody6786_)))
                (_E67476759_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E67476759_)))))
                                          (_E67476759_))))
                                  (_E67476759_)))))
                      (_E67466789_))))
                 (_expand-expression6637_
                  (lambda (_hd6738_ _rest6739_ _r6740_)
                    (_K6638_ _rest6739_
                             (cons (_expand-e6632_ _hd6738_) _r6740_))))
                 (_K6638_ (lambda (_rest6668_ _r6669_)
                            (let* ((_e66706677_ _rest6668_)
                                   (_E66726681_
                                    (lambda ()
                                      (if _begin-form6631_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form6631_
                                            (reverse _r6669_))
                                           (gx#stx-source _stx6629_))
                                          _r6669_)))
                                   (_E66716734_
                                    (lambda ()
                                      (if (gx#stx-pair? _e66706677_)
                                          (let ((_e66736685_
                                                 (gx#syntax-e _e66706677_)))
                                            (let ((_hd66746688_
                                                   (##car _e66736685_))
                                                  (_tl66756690_
                                                   (##cdr _e66736685_)))
                                              (let* ((_hd6693_ _hd66746688_)
                                                     (_rest6695_ _tl66756690_))
                                                (if '#t
                                                    (let* ((_hd6697_
                                                            (gx#core-expand-head
                                                             _hd6693_))
                                                           (_e66986705_
                                                            _hd6697_)
                                                           (_E67006709_
                                                            (lambda ()
                                                              (_expand-expression6637_
                                                               _hd6697_
                                                               _rest6695_
                                                               _r6669_)))
                                                           (_E66996730_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e66986705_)
                          (let ((_e67016713_ (gx#syntax-e _e66986705_)))
                            (let ((_hd67026716_ (##car _e67016713_))
                                  (_tl67036718_ (##cdr _e67016713_)))
                              (let* ((_form6721_ _hd67026716_)
                                     (_body6723_ _tl67036718_))
                                (if '#t
                                    (let ((_bind6725_
                                           (if (gx#identifier? _form6721_)
                                               (gx#resolve-identifier__0
                                                _form6721_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind6725_)
                                          (let ((_$e6727_
                                                 (##structure-ref
                                                  _bind6725_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e6727_)
                                                (_expand-splice6634_
                                                 _hd6697_
                                                 _body6723_
                                                 _rest6695_
                                                 _r6669_)
                                                (if (eq? '%#cond-expand
                                                         _$e6727_)
                                                    (_expand-cond-expand6635_
                                                     _hd6697_
                                                     _rest6695_
                                                     _r6669_)
                                                    (if (eq? '%#include
                                                             _$e6727_)
                                                        (_expand-include6636_
                                                         _hd6697_
                                                         _rest6695_
                                                         _r6669_)
                                                        (_expand-special6630_
                                                         _hd6697_
                                                         _K6638_
                                                         _rest6695_
                                                         _r6669_)))))
                                          (_expand-expression6637_
                                           _hd6697_
                                           _rest6695_
                                           _r6669_)))
                                    (_E67006709_)))))
                          (_E67006709_)))))
              (_E66996730_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E66726681_)))))
                                          (_E66726681_)))))
                              (_E66716734_)))))
          (let* ((_e66396646_ _stx6629_)
                 (_E66416650_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e66396646_)))
                 (_E66406664_
                  (lambda ()
                    (if (gx#stx-pair? _e66396646_)
                        (let ((_e66426654_ (gx#syntax-e _e66396646_)))
                          (let ((_hd66436657_ (##car _e66426654_))
                                (_tl66446659_ (##cdr _e66426654_)))
                            (let ((_body6662_ _tl66446659_))
                              (if (gx#stx-list? _body6662_)
                                  (_K6638_ _body6662_ '())
                                  (_E66416650_)))))
                        (_E66416650_)))))
            (_E66406664_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx6805_ _expand-special6806_)
          (let* ((_begin-form6808_ '%#begin)
                 (_expand-e6810_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx6805_
             _expand-special6806_
             _begin-form6808_
             _expand-e6810_))))
      (define gx#core-expand-block__1
        (lambda (_stx6812_ _expand-special6813_ _begin-form6814_)
          (let ((_expand-e6816_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx6812_
             _expand-special6813_
             _begin-form6814_
             _expand-e6816_))))
      (define gx#core-expand-block
        (lambda _g7450_
          (let ((_g7449_ (length _g7450_)))
            (cond ((fx= _g7449_ 2) (apply gx#core-expand-block__0 _g7450_))
                  ((fx= _g7449_ 3) (apply gx#core-expand-block__1 _g7450_))
                  ((fx= _g7449_ 4) (apply gx#core-expand-block__% _g7450_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g7450_))))))))
  (define gx#core-expand-block*
    (lambda (_stx6577_ _expand-special6578_)
      (let* ((_g65796590_
              (gx#core-expand-block__1 _stx6577_ _expand-special6578_ '#f))
             (_E65836594_
              (lambda () (error '"No clause matching" _g65796590_)))
             (_try-match65826605_
              (lambda ()
                (let* ((_K65846600_
                        (lambda (_body6598_)
                          (gx#core-quote-syntax__1
                           (gx#core-cons '%#begin (reverse _body6598_))
                           (gx#stx-source _stx6577_))))
                       (_body6603_ _g65796590_))
                  (_K65846600_ _body6603_))))
             (_try-match65816621_
              (lambda ()
                (let ((_K65856611_ (lambda (_expr6609_) _expr6609_)))
                  (if (##pair? _g65796590_)
                      (let ((_hd65866614_ (##car _g65796590_))
                            (_tl65876616_ (##cdr _g65796590_)))
                        (let ((_expr6619_ _hd65866614_))
                          (if (##null? _tl65876616_)
                              (_K65856611_ _expr6619_)
                              (_try-match65826605_))))
                      (_try-match65826605_)))))
             (_K65886625_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; empty block"
                 _stx6577_))))
        (if (##null? _g65796590_) (_K65886625_) (_try-match65816621_)))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx6435_)
      (letrec ((_satisfied?6437_
                (lambda (_condition6535_)
                  (let* ((_e65366544_ _condition6535_)
                         (_E65396548_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e65366544_)))
                         (_E65386567_
                          (lambda ()
                            (if (gx#stx-pair? _e65366544_)
                                (let ((_e65406552_ (gx#syntax-e _e65366544_)))
                                  (let ((_hd65416555_ (##car _e65406552_))
                                        (_tl65426557_ (##cdr _e65406552_)))
                                    (let* ((_combinator6560_ _hd65416555_)
                                           (_body6562_ _tl65426557_))
                                      (if (gx#stx-list? _body6562_)
                                          (let ((_$e6564_
                                                 (gx#stx-e _combinator6560_)))
                                            (if (eq? 'not _$e6564_)
                                                (not (gx#stx-ormap
                                                      _satisfied?6437_
                                                      _body6562_))
                                                (if (eq? 'and _$e6564_)
                                                    (gx#stx-andmap
                                                     _satisfied?6437_
                                                     _body6562_)
                                                    (if (eq? 'or _$e6564_)
                                                        (gx#stx-ormap
                                                         _satisfied?6437_
                                                         _body6562_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e6564_)
                    (gx#stx-andmap gx#core-resolve-identifier _body6562_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx6435_
                     _combinator6560_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E65396548_)))))
                                (_E65396548_))))
                         (_E65376573_
                          (lambda ()
                            (let ((_id6571_ _e65366544_))
                              (if (gx#identifier? _id6571_)
                                  (gx#core-bound-identifier?__%
                                   _id6571_
                                   gx#feature-binding?)
                                  (_E65386567_))))))
                    (_E65376573_))))
               (_loop6438_
                (lambda (_rest6468_)
                  (let* ((_e64696477_ _rest6468_)
                         (_E64756481_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e64696477_)))
                         (_E64716485_
                          (lambda ()
                            (if (gx#stx-null? _e64696477_)
                                (if '#t '() (_E64756481_))
                                (_E64756481_))))
                         (_E64706531_
                          (lambda ()
                            (if (gx#stx-pair? _e64696477_)
                                (let ((_e64726489_ (gx#syntax-e _e64696477_)))
                                  (let ((_hd64736492_ (##car _e64726489_))
                                        (_tl64746494_ (##cdr _e64726489_)))
                                    (let* ((_hd6497_ _hd64736492_)
                                           (_rest6499_ _tl64746494_))
                                      (if '#t
                                          (let* ((_e65006507_ _hd6497_)
                                                 (_E65026511_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e65006507_)))
                                                 (_E65016527_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e65006507_)
                                                        (let ((_e65036515_
                                                               (gx#syntax-e
                                                                _e65006507_)))
                                                          (let ((_hd65046518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e65036515_))
                        (_tl65056520_ (##cdr _e65036515_)))
                    (let* ((_condition6523_ _hd65046518_)
                           (_body6525_ _tl65056520_))
                      (if '#t
                          (if (gx#stx-eq? _condition6523_ 'else)
                              (if (gx#stx-null? _rest6499_)
                                  _body6525_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx6435_
                                   _hd6497_))
                              (if (_satisfied?6437_ _condition6523_)
                                  _body6525_
                                  (_loop6438_ _rest6499_)))
                          (_E65026511_)))))
                (_E65026511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E65016527_))
                                          (_E64716485_)))))
                                (_E64716485_)))))
                    (_E64706531_)))))
        (let* ((_e64396446_ _stx6435_)
               (_E64416450_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e64396446_)))
               (_E64406464_
                (lambda ()
                  (if (gx#stx-pair? _e64396446_)
                      (let ((_e64426454_ (gx#syntax-e _e64396446_)))
                        (let ((_hd64436457_ (##car _e64426454_))
                              (_tl64446459_ (##cdr _e64426454_)))
                          (let ((_clauses6462_ _tl64446459_))
                            (if (gx#stx-list? _clauses6462_)
                                (gx#core-cons
                                 'begin
                                 (_loop6438_ _clauses6462_))
                                (_E64416450_)))))
                      (_E64416450_)))))
          (_E64406464_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx6378_ _rpath6379_)
        (let* ((_e63806390_ _stx6378_)
               (_E63826394_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e63806390_)))
               (_E63816421_
                (lambda ()
                  (if (gx#stx-pair? _e63806390_)
                      (let ((_e63836398_ (gx#syntax-e _e63806390_)))
                        (let ((_hd63846401_ (##car _e63836398_))
                              (_tl63856403_ (##cdr _e63836398_)))
                          (if (gx#stx-pair? _tl63856403_)
                              (let ((_e63866406_ (gx#syntax-e _tl63856403_)))
                                (let ((_hd63876409_ (##car _e63866406_))
                                      (_tl63886411_ (##cdr _e63866406_)))
                                  (let ((_path6414_ _hd63876409_))
                                    (if (gx#stx-null? _tl63886411_)
                                        (if (gx#stx-string? _path6414_)
                                            (let ((_rpath6419_
                                                   (let ((_$e6416_
                                                          _rpath6379_))
                                                     (if _$e6416_
                                                         _$e6416_
                                                         (gx#core-resolve-path__%
                                                          _path6414_
                                                          (gx#stx-source
                                                           _stx6378_))))))
                                              (if (member _rpath6419_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx6378_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath6419_))
                                                    (gx#stx-source
                                                     _stx6378_)))))
                                            (_E63826394_))
                                        (_E63826394_)))))
                              (_E63826394_))))
                      (_E63826394_)))))
          (_E63816421_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx6428_)
          (let ((_rpath6430_ '#f))
            (gx#core-expand-include%__% _stx6428_ _rpath6430_))))
      (define gx#core-expand-include%
        (lambda _g7452_
          (let ((_g7451_ (length _g7452_)))
            (cond ((fx= _g7451_ 1) (apply gx#core-expand-include%__0 _g7452_))
                  ((fx= _g7451_ 2) (apply gx#core-expand-include%__% _g7452_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g7452_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K6347_ _stx6348_ _method6349_)
        (if (procedure? _K6347_)
            (let ((_$e6351_ (gx#stx-source _stx6348_)))
              (if _$e6351_
                  ((lambda (_g63536355_)
                     (gx#stx-wrap-source (_K6347_ _stx6348_) _g63536355_))
                   _$e6351_)
                  (_K6347_ _stx6348_)))
            (let ((_$e6358_ (bound-method-ref _K6347_ _method6349_)))
              (if _$e6358_
                  ((lambda (_g63606362_)
                     (gx#core-apply-expander__%
                      _g63606362_
                      _stx6348_
                      _method6349_))
                   _$e6358_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx6348_
                   _method6349_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K6368_ _stx6369_)
          (let ((_method6371_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K6368_ _stx6369_ _method6371_))))
      (define gx#core-apply-expander
        (lambda _g7454_
          (let ((_g7453_ (length _g7454_)))
            (cond ((fx= _g7453_ 2) (apply gx#core-apply-expander__0 _g7454_))
                  ((fx= _g7453_ 3) (apply gx#core-apply-expander__% _g7454_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g7454_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self6343_ _stx6344_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx6344_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self6196_ _stx6197_)
      (let* ((_self61986204_ _self6196_)
             (_E62006208_
              (lambda () (error '"No clause matching" _self61986204_)))
             (_K62016213_
              (lambda (_K6211_)
                (gx#core-apply-expander__0 _K6211_ _stx6197_))))
        (if (##structure-instance-of?
             _self61986204_
             (##type-id gx#macro-expander::t))
            (let* ((_e62026216_ (##vector-ref _self61986204_ '1))
                   (_K6219_ _e62026216_))
              (_K62016213_ _K6219_))
            (_E62006208_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self6049_ _stx6050_)
      (if (gx#sealed-syntax? _stx6050_)
          _stx6050_
          (let* ((_self60516057_ _self6049_)
                 (_E60536061_
                  (lambda () (error '"No clause matching" _self60516057_)))
                 (_K60546066_
                  (lambda (_K6064_)
                    (gx#core-apply-expander__0 _K6064_ _stx6050_))))
            (if (##structure-instance-of?
                 _self60516057_
                 (##type-id gx#core-expander::t))
                (let* ((_e60556069_ (##vector-ref _self60516057_ '1))
                       (_K6072_ _e60556069_))
                  (_K60546066_ _K6072_))
                (_E60536061_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self5911_ _stx5912_ _top?5913_)
        (if (_top?5913_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self5911_ _stx5912_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx5912_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self5918_ _stx5919_)
          (let ((_top?5921_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self5918_
             _stx5919_
             _top?5921_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g7456_
          (let ((_g7455_ (length _g7456_)))
            (cond ((fx= _g7455_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g7456_))
                  ((fx= _g7455_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g7456_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g7456_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self5785_ _stx5786_)
      (gx#top-special-form::apply-macro-expander__%
       _self5785_
       _stx5786_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self5610_ _stx5611_)
      (let* ((_self56125618_ _self5610_)
             (_E56145622_
              (lambda () (error '"No clause matching" _self56125618_)))
             (_K56155655_
              (lambda (_id5625_)
                (let* ((_e56265633_ _stx5611_)
                       (_E56285637_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e56265633_)))
                       (_E56275651_
                        (lambda ()
                          (if (gx#stx-pair? _e56265633_)
                              (let ((_e56295641_ (gx#syntax-e _e56265633_)))
                                (let ((_hd56305644_ (##car _e56295641_))
                                      (_tl56315646_ (##cdr _e56295641_)))
                                  (let ((_body5649_ _tl56315646_))
                                    (if '#t
                                        (gx#core-cons _id5625_ _body5649_)
                                        (_E56285637_)))))
                              (_E56285637_)))))
                  (_E56275651_)))))
        (if (##structure-instance-of?
             _self56125618_
             (##type-id gx#rename-macro-expander::t))
            (let* ((_e56165658_ (##vector-ref _self56125618_ '1))
                   (_id5661_ _e56165658_))
              (_K56155655_ _id5661_))
            (_E56145622_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self5436_ _stx5437_ _method5438_)
        (let* ((_self54395447_ _self5436_)
               (_E54415451_
                (lambda () (error '"No clause matching" _self54395447_)))
               (_K54425458_
                (lambda (_phi5454_ _ctx5455_ _K5456_)
                  (gx#core-apply-user-macro
                   _K5456_
                   _stx5437_
                   _ctx5455_
                   _phi5454_
                   _method5438_))))
          (if (##structure-instance-of?
               _self54395447_
               (##type-id gx#user-expander::t))
              (let* ((_e54435461_ (##vector-ref _self54395447_ '1))
                     (_K5464_ _e54435461_)
                     (_e54445466_ (##vector-ref _self54395447_ '2))
                     (_ctx5469_ _e54445466_)
                     (_e54455471_ (##vector-ref _self54395447_ '3))
                     (_phi5474_ _e54455471_))
                (_K54425458_ _phi5474_ _ctx5469_ _K5464_))
              (_E54415451_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self5479_ _stx5480_)
          (let ((_method5482_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self5479_
             _stx5480_
             _method5482_))))
      (define gx#core-apply-user-expander
        (lambda _g7458_
          (let ((_g7457_ (length _g7458_)))
            (cond ((fx= _g7457_ 2)
                   (apply gx#core-apply-user-expander__0 _g7458_))
                  ((fx= _g7457_ 3)
                   (apply gx#core-apply-user-expander__% _g7458_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g7458_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K5426_ _stx5427_ _ctx5428_ _phi5429_ _method5430_)
      (let ((_mark5432_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx5428_
              _phi5429_
              _stx5427_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K5426_
             (gx#stx-apply-mark _stx5427_ _mark5432_)
             _method5430_)
            _mark5432_))
         gx#current-expander-marks
         (cons _mark5432_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx5277_ _phi5278_ _ctx5279_)
        (let _lp5281_ ((_bind5283_
                        (gx#core-resolve-identifier__%
                         _stx5277_
                         _phi5278_
                         _ctx5279_)))
          (if (##structure-direct-instance-of?
               _bind5283_
               'gx#import-binding::t)
              (_lp5281_
               (##direct-structure-ref _bind5283_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind5283_
                   'gx#alias-binding::t)
                  (_lp5281_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind5283_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi5278_
                    _ctx5279_))
                  _bind5283_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx5288_)
          (let* ((_phi5290_ (gx#current-expander-phi))
                 (_ctx5292_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5288_ _phi5290_ _ctx5292_))))
      (define gx#resolve-identifier__1
        (lambda (_stx5294_ _phi5295_)
          (let ((_ctx5297_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5294_ _phi5295_ _ctx5297_))))
      (define gx#resolve-identifier
        (lambda _g7460_
          (let ((_g7459_ (length _g7460_)))
            (cond ((fx= _g7459_ 1) (apply gx#resolve-identifier__0 _g7460_))
                  ((fx= _g7459_ 2) (apply gx#resolve-identifier__1 _g7460_))
                  ((fx= _g7459_ 3) (apply gx#resolve-identifier__% _g7460_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g7460_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx5235_ _val5236_ _rebind?5237_ _phi5238_ _ctx5239_)
        (let ((_rebind?5241_
               (if (not _rebind?5237_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?5237_) _rebind?5237_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx5235_)
           _val5236_
           _rebind?5241_
           _phi5238_
           _ctx5239_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx5246_ _val5247_)
          (let* ((_rebind?5249_ '#f)
                 (_phi5251_ (gx#current-expander-phi))
                 (_ctx5253_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5246_
             _val5247_
             _rebind?5249_
             _phi5251_
             _ctx5253_))))
      (define gx#bind-identifier!__1
        (lambda (_stx5255_ _val5256_ _rebind?5257_)
          (let* ((_phi5259_ (gx#current-expander-phi))
                 (_ctx5261_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5255_
             _val5256_
             _rebind?5257_
             _phi5259_
             _ctx5261_))))
      (define gx#bind-identifier!__2
        (lambda (_stx5263_ _val5264_ _rebind?5265_ _phi5266_)
          (let ((_ctx5268_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5263_
             _val5264_
             _rebind?5265_
             _phi5266_
             _ctx5268_))))
      (define gx#bind-identifier!
        (lambda _g7462_
          (let ((_g7461_ (length _g7462_)))
            (cond ((fx= _g7461_ 2) (apply gx#bind-identifier!__0 _g7462_))
                  ((fx= _g7461_ 3) (apply gx#bind-identifier!__1 _g7462_))
                  ((fx= _g7461_ 4) (apply gx#bind-identifier!__2 _g7462_))
                  ((fx= _g7461_ 5) (apply gx#bind-identifier!__% _g7462_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g7462_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx5207_ _phi5208_ _ctx5209_)
        (let _lp5211_ ((_e5213_ _stx5207_)
                       (_marks5214_ (gx#current-expander-marks)))
          (if (symbol? _e5213_)
              (gx#core-resolve-binding
               _e5213_
               _phi5208_
               _phi5208_
               _ctx5209_
               (reverse _marks5214_))
              (if (gx#identifier-quote? _e5213_)
                  (gx#core-resolve-binding
                   (##structure-ref _e5213_ '1 AST::t '#f)
                   _phi5208_
                   '0
                   (##direct-structure-ref _e5213_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e5213_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e5213_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e5213_ '1 AST::t '#f)
                       _phi5208_
                       _phi5208_
                       _ctx5209_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e5213_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks5214_))
                      (if (##structure-direct-instance-of?
                           _e5213_
                           'gx#syntax-wrap::t)
                          (_lp5211_
                           (##structure-ref _e5213_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e5213_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks5214_))
                          (if (##structure-instance-of? _e5213_ 'gerbil#AST::t)
                              (_lp5211_
                               (##structure-ref _e5213_ '1 AST::t '#f)
                               _marks5214_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx5207_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx5219_)
          (let* ((_phi5221_ (gx#current-expander-phi))
                 (_ctx5223_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5219_ _phi5221_ _ctx5223_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx5225_ _phi5226_)
          (let ((_ctx5228_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5225_ _phi5226_ _ctx5228_))))
      (define gx#core-resolve-identifier
        (lambda _g7464_
          (let ((_g7463_ (length _g7464_)))
            (cond ((fx= _g7463_ 1)
                   (apply gx#core-resolve-identifier__0 _g7464_))
                  ((fx= _g7463_ 2)
                   (apply gx#core-resolve-identifier__1 _g7464_))
                  ((fx= _g7463_ 3)
                   (apply gx#core-resolve-identifier__% _g7464_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g7464_))))))))
  (define gx#core-resolve-binding
    (lambda (_id5120_ _phi5121_ _src-phi5122_ _ctx5123_ _marks5124_)
      (letrec ((_resolve5126_
                (lambda (_ctx5194_ _src-phi5195_ _key5196_)
                  (let _lp5198_ ((_ctx5200_
                                  (gx#core-context-shift _ctx5194_ _phi5121_))
                                 (_dphi5201_ (fx- _phi5121_ _src-phi5195_)))
                    (let ((_$e5203_
                           (gx#core-context-resolve _ctx5200_ _key5196_)))
                      (if _$e5203_
                          (values _$e5203_)
                          (if (fxzero? _dphi5201_)
                              '#f
                              (if (fxpositive? _dphi5201_)
                                  (_lp5198_
                                   (gx#core-context-shift _ctx5200_ '-1)
                                   (fx- _dphi5201_ '1))
                                  (if (fxnegative? _dphi5201_)
                                      (_lp5198_
                                       (gx#core-context-shift _ctx5200_ '1)
                                       (fx+ _dphi5201_ '1))
                                      '#!void)))))))))
        (let _lp5128_ ((_ctx5130_ _ctx5123_)
                       (_src-phi5131_ _src-phi5122_)
                       (_rest5132_ _marks5124_))
          (let* ((_rest51335141_ _rest5132_)
                 (_E51365145_
                  (lambda () (error '"No clause matching" _rest51335141_)))
                 (_else51355149_
                  (lambda () (_resolve5126_ _ctx5130_ _src-phi5131_ _id5120_)))
                 (_K51375182_
                  (lambda (_rest5152_ _hd5153_)
                    (let* ((_hd51545160_ _hd5153_)
                           (_E51565164_
                            (lambda ()
                              (error '"No clause matching" _hd51545160_)))
                           (_K51575174_
                            (lambda (_subst5167_)
                              (let ((_$e5171_
                                     (let ((_key5169_
                                            (if _subst5167_
                                                (table-ref
                                                 _subst5167_
                                                 _id5120_
                                                 '#f)
                                                '#f)))
                                       (if _key5169_
                                           (_resolve5126_
                                            _ctx5130_
                                            _src-phi5131_
                                            _key5169_)
                                           '#f))))
                                (if _$e5171_
                                    _$e5171_
                                    (_lp5128_
                                     (##structure-ref
                                      _hd5153_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd5153_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest5152_))))))
                      (if (##structure-instance-of?
                           _hd51545160_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e51585177_ (##vector-ref _hd51545160_ '1))
                                 (_subst5180_ _e51585177_))
                            (_K51575174_ _subst5180_))
                          (_E51565164_))))))
            (if (##pair? _rest51335141_)
                (let ((_hd51385185_ (##car _rest51335141_))
                      (_tl51395187_ (##cdr _rest51335141_)))
                  (let* ((_hd5190_ _hd51385185_) (_rest5192_ _tl51395187_))
                    (_K51375182_ _rest5192_ _hd5190_)))
                (_else51355149_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key4996_ _val4997_ _rebind?4998_ _phi4999_ _ctx5000_)
        (letrec ((_update-binding5002_
                  (lambda (_xval5073_)
                    (if (let ((_$e5075_
                               (_rebind?4998_ _ctx5000_ _xval5073_ _val4997_)))
                          (if _$e5075_
                              _$e5075_
                              (let ((_$e5081_
                                     (if (##structure-direct-instance-of?
                                          _xval5073_
                                          'gx#import-binding::t)
                                         (let ((_$e5078_
                                                (##direct-structure-ref
                                                 _xval5073_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e5078_
                                               _$e5078_
                                               (if (##structure-instance-of?
                                                    _val4997_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val4997_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e5081_
                                    _$e5081_
                                    (if (##structure-instance-of?
                                         _xval5073_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val4997_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val4997_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval5073_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val4997_
                        (if (if (##structure-direct-instance-of?
                                 _val4997_
                                 'gx#import-binding::t)
                                (let ((_$e5084_
                                       (##direct-structure-ref
                                        _val4997_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e5084_
                                      _$e5084_
                                      (if (##structure-instance-of?
                                           _xval5073_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val4997_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval5073_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval5073_
                            (if (if (##structure-direct-instance-of?
                                     _val4997_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval5073_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key4996_
                                 (cons (##structure-ref
                                        _val4997_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val4997_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval5073_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval5073_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval5073_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval5073_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key4996_
                                 _val4997_
                                 _xval5073_))))))
                 (_gensubst5003_
                  (lambda (_subst5068_ _id5069_)
                    (let ((_eid5071_
                           (gensym (if (uninterned-symbol? _id5069_)
                                       '%
                                       _id5069_))))
                      (begin
                        (table-set! _subst5068_ _id5069_ _eid5071_)
                        _eid5071_))))
                 (_subst!5004_
                  (lambda (_key5006_)
                    (let* ((_key50075015_ _key5006_)
                           (_E50105019_
                            (lambda ()
                              (error '"No clause matching" _key50075015_)))
                           (_else50095023_ (lambda () _key5006_))
                           (_K50115056_
                            (lambda (_mark5026_ _id5027_)
                              (let* ((_mark50285034_ _mark5026_)
                                     (_E50305038_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark50285034_)))
                                     (_K50315048_
                                      (lambda (_subst5041_)
                                        (if (not _subst5041_)
                                            (let ((_subst5043_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark5026_
                                                 _subst5043_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst5003_
                                                 _subst5043_
                                                 _id5027_)))
                                            (let ((_$e5045_
                                                   (table-ref
                                                    _subst5041_
                                                    _id5027_
                                                    '#f)))
                                              (if _$e5045_
                                                  (values _$e5045_)
                                                  (_gensubst5003_
                                                   _subst5041_
                                                   _id5027_)))))))
                                (if (##structure-instance-of?
                                     _mark50285034_
                                     (##type-id gx#expander-mark::t))
                                    (let* ((_e50325051_
                                            (##vector-ref _mark50285034_ '1))
                                           (_subst5054_ _e50325051_))
                                      (_K50315048_ _subst5054_))
                                    (_E50305038_))))))
                      (if (##pair? _key50075015_)
                          (let ((_hd50125059_ (##car _key50075015_))
                                (_tl50135061_ (##cdr _key50075015_)))
                            (let* ((_id5064_ _hd50125059_)
                                   (_mark5066_ _tl50135061_))
                              (_K50115056_ _mark5066_ _id5064_)))
                          (_else50095023_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx5000_ _phi4999_)
           (_subst!5004_ _key4996_)
           _val4997_
           _update-binding5002_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key5090_ _val5091_)
          (let* ((_rebind?5093_ false)
                 (_phi5095_ (gx#current-expander-phi))
                 (_ctx5097_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5090_
             _val5091_
             _rebind?5093_
             _phi5095_
             _ctx5097_))))
      (define gx#core-bind!__1
        (lambda (_key5099_ _val5100_ _rebind?5101_)
          (let* ((_phi5103_ (gx#current-expander-phi))
                 (_ctx5105_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5099_
             _val5100_
             _rebind?5101_
             _phi5103_
             _ctx5105_))))
      (define gx#core-bind!__2
        (lambda (_key5107_ _val5108_ _rebind?5109_ _phi5110_)
          (let ((_ctx5112_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5107_
             _val5108_
             _rebind?5109_
             _phi5110_
             _ctx5112_))))
      (define gx#core-bind!
        (lambda _g7466_
          (let ((_g7465_ (length _g7466_)))
            (cond ((fx= _g7465_ 2) (apply gx#core-bind!__0 _g7466_))
                  ((fx= _g7465_ 3) (apply gx#core-bind!__1 _g7466_))
                  ((fx= _g7465_ 4) (apply gx#core-bind!__2 _g7466_))
                  ((fx= _g7465_ 5) (apply gx#core-bind!__% _g7466_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g7466_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4926_)
      (if (symbol? _stx4926_)
          (let* ((_g49274935_ (gx#current-expander-marks))
                 (_E49304939_
                  (lambda () (error '"No clause matching" _g49274935_)))
                 (_else49294943_ (lambda () _stx4926_))
                 (_K49314948_ (lambda (_hd4946_) (cons _stx4926_ _hd4946_))))
            (if (##pair? _g49274935_)
                (let ((_hd49324951_ (##car _g49274935_))
                      (_tl49334953_ (##cdr _g49274935_)))
                  (let ((_hd4956_ _hd49324951_)) (_K49314948_ _hd4956_)))
                (_else49294943_)))
          (if (gx#identifier? _stx4926_)
              (let* ((_id4958_ (gx#syntax-local-unwrap _stx4926_))
                     (_eid4960_ (gx#stx-e _id4958_))
                     (_marks4962_ (gx#stx-identifier-marks _id4958_)))
                (let* ((_marks49644972_ _marks4962_)
                       (_E49674976_
                        (lambda ()
                          (error '"No clause matching" _marks49644972_)))
                       (_else49664980_ (lambda () _eid4960_))
                       (_K49684985_
                        (lambda (_hd4983_) (cons _eid4960_ _hd4983_))))
                  (if (##pair? _marks49644972_)
                      (let ((_hd49694988_ (##car _marks49644972_))
                            (_tl49704990_ (##cdr _marks49644972_)))
                        (let ((_hd4993_ _hd49694988_)) (_K49684985_ _hd4993_)))
                      (_else49664980_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4926_)))))
  (define gx#core-context-shift
    (lambda (_ctx4871_ _phi4872_)
      (letrec ((_make-phi4874_
                (lambda (_super4924_)
                  (let ((__obj7437 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj7437
                       (gensym 'phi)
                       _super4924_)
                      __obj7437))))
               (_make-phi/up4875_
                (lambda (_ctx4919_ _super4920_)
                  (let ((_ctx+14922_ (_make-phi4874_ _super4920_)))
                    (begin
                      (##structure-set!
                       _ctx4919_
                       _ctx+14922_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+14922_
                       _ctx4919_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+14922_))))
               (_make-phi/down4876_
                (lambda (_ctx4914_ _super4915_)
                  (let ((_ctx-14917_ (_make-phi4874_ _super4915_)))
                    (begin
                      (##structure-set!
                       _ctx-14917_
                       _ctx4914_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx4914_
                       _ctx-14917_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-14917_))))
               (_shift4877_
                (lambda (_ctx4898_
                         _delta4899_
                         _make-delta-context4900_
                         _phi4901_
                         _K4902_)
                  (let ((_$e4904_
                         (##structure-ref _ctx4898_ '3 gx#phi-context::t '#f)))
                    (if _$e4904_
                        ((lambda (_super4907_)
                           (let* ((_super4909_
                                   (_K4902_ _super4907_ _delta4899_))
                                  (_ctx+d4911_
                                   (_make-delta-context4900_
                                    _ctx4898_
                                    _super4909_)))
                             (_K4902_ _ctx+d4911_
                                      (fx- _phi4901_ _delta4899_))))
                         _$e4904_)
                        (error '"Bad context" _ctx4898_))))))
        (let _K4879_ ((_ctx4881_ _ctx4871_) (_phi4882_ _phi4872_))
          (if (fxzero? _phi4882_)
              _ctx4881_
              (if (##structure-instance-of? _ctx4881_ 'gx#context-phi::t)
                  (if (fxpositive? _phi4882_)
                      (let ((_$e4884_
                             (##structure-ref
                              _ctx4881_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e4884_
                            ((lambda (_g48864888_)
                               (_K4879_ _g48864888_ (fx- _phi4882_ '1)))
                             _$e4884_)
                            (_shift4877_
                             _ctx4881_
                             '1
                             _make-phi/up4875_
                             _phi4882_
                             _K4879_)))
                      (let ((_$e4891_
                             (##structure-ref
                              _ctx4881_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e4891_
                            ((lambda (_g48934895_)
                               (_K4879_ _g48934895_ (fx+ _phi4882_ '1)))
                             _$e4891_)
                            (_shift4877_
                             _ctx4881_
                             '-1
                             _make-phi/down4876_
                             _phi4882_
                             _K4879_))))
                  _ctx4881_))))))
  (define gx#core-context-get
    (lambda (_ctx4868_ _key4869_)
      (table-ref
       (##structure-ref _ctx4868_ '2 gx#expander-context::t '#f)
       _key4869_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4864_ _key4865_ _val4866_)
      (table-set!
       (##structure-ref _ctx4864_ '2 gx#expander-context::t '#f)
       _key4865_
       _val4866_)))
  (define gx#core-context-resolve
    (lambda (_ctx4851_ _key4852_)
      (let _lp4854_ ((_ctx4856_ _ctx4851_))
        (let ((_$e4858_ (gx#core-context-get _ctx4856_ _key4852_)))
          (if _$e4858_
              (values _$e4858_)
              (let ((_$e4861_
                     (if (##structure-instance-of?
                          _ctx4856_
                          'gx#context-phi::t)
                         (##structure-ref _ctx4856_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e4861_ (_lp4854_ _$e4861_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx4841_ _key4842_ _val4843_ _rebind4844_)
      (let ((_$e4846_ (gx#core-context-get _ctx4841_ _key4842_)))
        (if _$e4846_
            ((lambda (_xval4849_)
               (gx#core-context-put!
                _ctx4841_
                _key4842_
                (_rebind4844_ _xval4849_)))
             _$e4846_)
            (gx#core-context-put! _ctx4841_ _key4842_ _val4843_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx4819_ _stop?4820_)
        (let _lp4822_ ((_ctx4824_ _ctx4819_))
          (if (_stop?4820_ _ctx4824_)
              _ctx4824_
              (if (##structure-instance-of? _ctx4824_ 'gx#context-phi::t)
                  (_lp4822_
                   (##structure-ref _ctx4824_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx4830_ (gx#current-expander-context))
                 (_stop?4832_ gx#top-context?))
            (gx#core-context-top__% _ctx4830_ _stop?4832_))))
      (define gx#core-context-top__1
        (lambda (_ctx4834_)
          (let ((_stop?4836_ gx#top-context?))
            (gx#core-context-top__% _ctx4834_ _stop?4836_))))
      (define gx#core-context-top
        (lambda _g7468_
          (let ((_g7467_ (length _g7468_)))
            (cond ((fx= _g7467_ 0) (apply gx#core-context-top__0 _g7468_))
                  ((fx= _g7467_ 1) (apply gx#core-context-top__1 _g7468_))
                  ((fx= _g7467_ 2) (apply gx#core-context-top__% _g7468_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g7468_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx4804_)
        (let _lp4806_ ((_ctx4808_ _ctx4804_))
          (if (##structure-instance-of? _ctx4808_ 'gx#context-phi::t)
              (_lp4806_ (##structure-ref _ctx4808_ '3 gx#phi-context::t '#f))
              _ctx4808_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4814_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx4814_))))
      (define gx#core-context-root
        (lambda _g7470_
          (let ((_g7469_ (length _g7470_)))
            (cond ((fx= _g7469_ 0) (apply gx#core-context-root__0 _g7470_))
                  ((fx= _g7469_ 1) (apply gx#core-context-root__% _g7470_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g7470_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx4788_ . __47854789_)
        (if (##structure-instance-of? _ctx4788_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4788_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4788_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4796_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx4796_))))
      (define gx#core-context-rebind?
        (lambda _g7472_
          (let ((_g7471_ (length _g7472_)))
            (cond ((fx= _g7471_ 0) (apply gx#core-context-rebind?__0 _g7472_))
                  ((fx= _g7471_ 1) (apply gx#core-context-rebind?__% _g7472_))
                  ((fx>= _g7471_ 1) (apply gx#core-context-rebind?__% _g7472_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g7472_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx4771_)
        (let ((_$e4773_ (gx#core-context-top__1 _ctx4771_)))
          (if _$e4773_
              ((lambda (_ctx4776_)
                 (if (##structure-instance-of? _ctx4776_ 'gx#module-context::t)
                     (##structure-ref _ctx4776_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4773_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4782_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx4782_))))
      (define gx#core-context-namespace
        (lambda _g7474_
          (let ((_g7473_ (length _g7474_)))
            (cond ((fx= _g7473_ 0)
                   (apply gx#core-context-namespace__0 _g7474_))
                  ((fx= _g7473_ 1)
                   (apply gx#core-context-namespace__% _g7474_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g7474_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind4757_ _is?4758_)
        (if (##structure-direct-instance-of? _bind4757_ 'gx#syntax-binding::t)
            (_is?4758_
             (##direct-structure-ref _bind4757_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4763_)
          (let ((_is?4765_ gx#expander?))
            (gx#expander-binding?__% _bind4763_ _is?4765_))))
      (define gx#expander-binding?
        (lambda _g7476_
          (let ((_g7475_ (length _g7476_)))
            (cond ((fx= _g7475_ 1) (apply gx#expander-binding?__0 _g7476_))
                  ((fx= _g7475_ 2) (apply gx#expander-binding?__% _g7476_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g7476_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4754_)
      (gx#expander-binding?__% _bind4754_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4752_)
      (gx#expander-binding?__% _bind4752_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4746_)
      (letrec ((_direct-special-form?4748_
                (lambda (_obj4750_)
                  (##structure-direct-instance-of?
                   _obj4750_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__% _bind4746_ _direct-special-form?4748_))))
  (define gx#special-form-binding?
    (lambda (_bind4744_)
      (gx#expander-binding?__% _bind4744_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4735_)
      (letrec ((_feature?4737_
                (lambda (_e4739_)
                  (let ((_$e4741_
                         (##structure-instance-of?
                          _e4739_
                          'gx#feature-expander::t)))
                    (if _$e4741_
                        _$e4741_
                        (##structure-instance-of?
                         _e4739_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind4735_ _feature?4737_))))
  (define gx#private-feature-binding?
    (lambda (_bind4733_)
      (gx#expander-binding?__% _bind4733_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id4720_ _bound?4721_)
        (if (gx#identifier? _id4720_)
            (_bound?4721_ (gx#resolve-identifier__0 _id4720_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4726_)
          (let ((_bound?4728_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id4726_ _bound?4728_))))
      (define gx#core-bound-identifier?
        (lambda _g7478_
          (let ((_g7477_ (length _g7478_)))
            (cond ((fx= _g7477_ 1)
                   (apply gx#core-bound-identifier?__0 _g7478_))
                  ((fx= _g7477_ 2)
                   (apply gx#core-bound-identifier?__% _g7478_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g7478_))))))))
  (define gx#core-identifier=?
    (lambda (_x4710_ _y4711_)
      (letrec ((_y=?4713_
                (lambda (_xid4717_)
                  ((if (list? _y4711_) memq eq?) _xid4717_ _y4711_))))
        (let ((_bind4715_ (gx#resolve-identifier__0 _x4710_)))
          (if (##structure-instance-of? _bind4715_ 'gx#binding::t)
              (_y=?4713_ (##structure-ref _bind4715_ '1 gx#binding::t '#f))
              (_y=?4713_ (gx#stx-e _x4710_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4708_)
      (if (interned-symbol? _e4708_)
          (string-index (symbol->string _e4708_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx4666_ _src4667_ _ctx4668_ _marks4669_)
        (if (gx#sealed-syntax? _stx4666_)
            (gx#stx-unwrap__0 _stx4666_)
            (if (gx#identifier? _stx4666_)
                (let ((_id4671_ (gx#syntax-local-unwrap _stx4666_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4671_)
                   (let ((_$e4673_ (gx#stx-source _id4671_)))
                     (if _$e4673_ _$e4673_ _src4667_))
                   _ctx4668_
                   (##direct-structure-ref
                    _id4671_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4666_)
                    (gx#stx-e _stx4666_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4666_
                     (let ((_$e4676_ (gx#stx-source _stx4666_)))
                       (if _$e4676_ _$e4676_ _src4667_))
                     _ctx4668_
                     (reverse _marks4669_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4682_)
          (let* ((_src4684_ '#f)
                 (_ctx4686_ (gx#current-expander-context))
                 (_marks4688_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4682_
             _src4684_
             _ctx4686_
             _marks4688_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4690_ _src4691_)
          (let* ((_ctx4693_ (gx#current-expander-context))
                 (_marks4695_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4690_
             _src4691_
             _ctx4693_
             _marks4695_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4697_ _src4698_ _ctx4699_)
          (let ((_marks4701_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4697_
             _src4698_
             _ctx4699_
             _marks4701_))))
      (define gx#core-quote-syntax
        (lambda _g7480_
          (let ((_g7479_ (length _g7480_)))
            (cond ((fx= _g7479_ 1) (apply gx#core-quote-syntax__0 _g7480_))
                  ((fx= _g7479_ 2) (apply gx#core-quote-syntax__1 _g7480_))
                  ((fx= _g7479_ 3) (apply gx#core-quote-syntax__2 _g7480_))
                  ((fx= _g7479_ 4) (apply gx#core-quote-syntax__% _g7480_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g7480_))))))))
  (define gx#core-cons
    (lambda (_hd4662_ _tl4663_)
      (cons (gx#core-quote-syntax__0 _hd4662_) _tl4663_)))
  (define gx#core-list
    (lambda (_hd4659_ . _rest4660_)
      (cons (gx#core-quote-syntax__0 _hd4659_) _rest4660_)))
  (define gx#core-cons*
    (lambda (_hd4656_ . _rest4657_)
      (apply cons* (gx#core-quote-syntax__0 _hd4656_) _rest4657_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path4630_ _rel4631_)
        (let ((_path4643_ (gx#stx-e _stx-path4630_))
              (_reldir4644_
               (let _lp4633_ ((_relsrc4635_
                               (let ((_$e4640_ (gx#stx-source _stx-path4630_)))
                                 (if _$e4640_ _$e4640_ _rel4631_))))
                 (if (##structure-instance-of? _relsrc4635_ 'gerbil#AST::t)
                     (_lp4633_
                      (let ((_$e4637_ (gx#stx-source _relsrc4635_)))
                        (if _$e4637_ _$e4637_ (gx#stx-e _relsrc4635_))))
                     (if (source-location-path? _relsrc4635_)
                         (path-directory (source-location-path _relsrc4635_))
                         (if (string? _relsrc4635_)
                             (path-directory _relsrc4635_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4643_ (path-normalize _reldir4644_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4649_)
          (let ((_rel4651_ '#f))
            (gx#core-resolve-path__% _stx-path4649_ _rel4651_))))
      (define gx#core-resolve-path
        (lambda _g7482_
          (let ((_g7481_ (length _g7482_)))
            (cond ((fx= _g7481_ 1) (apply gx#core-resolve-path__0 _g7482_))
                  ((fx= _g7481_ 2) (apply gx#core-resolve-path__% _g7482_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g7482_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr4586_ _ctx4587_)
        (let* ((_repr45884595_ _repr4586_)
               (_E45904599_
                (lambda () (error '"No clause matching" _repr45884595_)))
               (_K45914607_
                (lambda (_subs4602_ _phi4603_)
                  (let ((_subst4605_
                         (if (not (null? _subs4602_))
                             (list->hash-table-eq _subs4602_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst4605_
                     _ctx4587_
                     _phi4603_
                     '#f)))))
          (if (##pair? _repr45884595_)
              (let ((_hd45924610_ (##car _repr45884595_))
                    (_tl45934612_ (##cdr _repr45884595_)))
                (let* ((_phi4615_ _hd45924610_) (_subs4617_ _tl45934612_))
                  (_K45914607_ _subs4617_ _phi4615_)))
              (_E45904599_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr4622_)
          (let ((_ctx4624_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr4622_ _ctx4624_))))
      (define gx#core-deserialize-mark
        (lambda _g7484_
          (let ((_g7483_ (length _g7484_)))
            (cond ((fx= _g7483_ 1) (apply gx#core-deserialize-mark__0 _g7484_))
                  ((fx= _g7483_ 2) (apply gx#core-deserialize-mark__% _g7484_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g7484_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4583_) (gx#stx-rewrap _stx4583_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4581_)
      (gx#stx-unwrap__% _stx4581_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4549_)
      (let* ((_g45504558_ (gx#current-expander-marks))
             (_E45534562_
              (lambda () (error '"No clause matching" _g45504558_)))
             (_else45524566_ (lambda () _stx4549_))
             (_K45544571_
              (lambda (_hd4569_) (gx#stx-apply-mark _stx4549_ _hd4569_))))
        (if (##pair? _g45504558_)
            (let ((_hd45554574_ (##car _g45504558_))
                  (_tl45564576_ (##cdr _g45504558_)))
              (let ((_hd4579_ _hd45554574_)) (_K45544571_ _hd4579_)))
            (_else45524566_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx4534_ _E4535_)
        (let ((_bind4537_ (gx#resolve-identifier__0 _stx4534_)))
          (if (##structure-direct-instance-of?
               _bind4537_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4537_ '4 gx#syntax-binding::t '#f)
              (_E4535_ _stx4534_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4542_)
          (let ((_E4544_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx4542_ _E4544_))))
      (define gx#syntax-local-e
        (lambda _g7486_
          (let ((_g7485_ (length _g7486_)))
            (cond ((fx= _g7485_ 1) (apply gx#syntax-local-e__0 _g7486_))
                  ((fx= _g7485_ 2) (apply gx#syntax-local-e__% _g7486_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g7486_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx4518_ _E4519_)
        (let ((_e4521_ (gx#syntax-local-e__% _stx4518_ _E4519_)))
          (if (##structure-instance-of? _e4521_ 'gx#expander::t)
              (##structure-ref _e4521_ '1 gx#expander::t '#f)
              _e4521_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4526_)
          (let ((_E4528_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx4526_ _E4528_))))
      (define gx#syntax-local-value
        (lambda _g7488_
          (let ((_g7487_ (length _g7488_)))
            (cond ((fx= _g7487_ 1) (apply gx#syntax-local-value__0 _g7488_))
                  ((fx= _g7487_ 2) (apply gx#syntax-local-value__% _g7488_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g7488_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4515_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4515_))))
