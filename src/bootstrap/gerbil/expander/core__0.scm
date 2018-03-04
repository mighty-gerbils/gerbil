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
    (lambda _$args7414_
      (apply make-struct-instance gx#expander-context::t _$args7414_)))
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
    (lambda _$args7411_
      (apply make-struct-instance gx#root-context::t _$args7411_)))
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
    (lambda _$args7408_
      (apply make-struct-instance gx#phi-context::t _$args7408_)))
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
    (lambda _$args7405_
      (apply make-struct-instance gx#top-context::t _$args7405_)))
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
    (lambda _$args7402_
      (apply make-struct-instance gx#module-context::t _$args7402_)))
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
    (lambda _$args7399_
      (apply make-struct-instance gx#prelude-context::t _$args7399_)))
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
    (lambda _$args7396_
      (apply make-struct-instance gx#local-context::t _$args7396_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self7380_ _id7381_ _super7382_)
        (if (##fx< '5 (##vector-length _self7380_))
            (begin
              (##vector-set! _self7380_ '1 _id7381_)
              (##vector-set! _self7380_ '2 (make-hash-table-eq))
              (##vector-set! _self7380_ '3 _super7382_)
              (##vector-set! _self7380_ '4 '#f)
              (##vector-set! _self7380_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7380_))))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self7387_ _id7388_)
          (let ((_super7390_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self7387_ _id7388_ _super7390_))))
      (define gx#phi-context:::init!
        (lambda _g7418_
          (let ((_g7417_ (length _g7418_)))
            (cond ((fx= _g7417_ 2) (apply gx#phi-context:::init!__0 _g7418_))
                  ((fx= _g7417_ 3) (apply gx#phi-context:::init!__% _g7418_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g7418_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self7244_ _super7245_)
        (if (##fx< '5 (##vector-length _self7244_))
            (begin
              (##vector-set! _self7244_ '1 (gensym 'L))
              (##vector-set! _self7244_ '2 (make-hash-table-eq))
              (##vector-set! _self7244_ '3 _super7245_)
              (##vector-set! _self7244_ '4 '#f)
              (##vector-set! _self7244_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self7244_))))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self7250_)
          (let ((_super7252_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self7250_ _super7252_))))
      (define gx#local-context:::init!
        (lambda _g7420_
          (let ((_g7419_ (length _g7420_)))
            (cond ((fx= _g7419_ 1) (apply gx#local-context:::init!__0 _g7420_))
                  ((fx= _g7419_ 2) (apply gx#local-context:::init!__% _g7420_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g7420_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args7118_
      (apply make-struct-instance gx#binding::t _$args7118_)))
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
    (lambda _$args7115_
      (apply make-struct-instance gx#runtime-binding::t _$args7115_)))
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
    (lambda _$args7112_
      (apply make-struct-instance gx#local-binding::t _$args7112_)))
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
    (lambda _$args7109_
      (apply make-struct-instance gx#top-binding::t _$args7109_)))
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
    (lambda _$args7106_
      (apply make-struct-instance gx#module-binding::t _$args7106_)))
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
    (lambda _$args7103_
      (apply make-struct-instance gx#extern-binding::t _$args7103_)))
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
    (lambda _$args7100_
      (apply make-struct-instance gx#syntax-binding::t _$args7100_)))
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
    (lambda _$args7097_
      (apply make-struct-instance gx#import-binding::t _$args7097_)))
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
    (lambda _$args7094_
      (apply make-struct-instance gx#alias-binding::t _$args7094_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args7091_
      (apply make-struct-instance gx#expander::t _$args7091_)))
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
    (lambda _$args7088_
      (apply make-struct-instance gx#core-expander::t _$args7088_)))
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
    (lambda _$args7085_
      (apply make-struct-instance gx#expression-form::t _$args7085_)))
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
    (lambda _$args7082_
      (apply make-struct-instance gx#special-form::t _$args7082_)))
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
    (lambda _$args7079_
      (apply make-struct-instance gx#definition-form::t _$args7079_)))
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
    (lambda _$args7076_
      (apply make-struct-instance gx#top-special-form::t _$args7076_)))
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
    (lambda _$args7073_
      (apply make-struct-instance gx#module-special-form::t _$args7073_)))
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
    (lambda _$args7070_
      (apply make-struct-instance gx#feature-expander::t _$args7070_)))
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
    (lambda _$args7067_
      (apply make-struct-instance gx#private-feature-expander::t _$args7067_)))
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
    (lambda _$args7064_
      (apply make-struct-instance gx#reserved-expander::t _$args7064_)))
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
    (lambda _$args7061_
      (apply make-struct-instance gx#macro-expander::t _$args7061_)))
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
    (lambda _$args7058_
      (apply make-struct-instance gx#rename-macro-expander::t _$args7058_)))
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
    (lambda _$args7055_
      (apply make-struct-instance gx#user-expander::t _$args7055_)))
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
    (lambda _$args7052_
      (apply make-struct-instance gx#expander-mark::t _$args7052_)))
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
    (lambda _$args7049_
      (apply make-struct-instance gx#syntax-error::t _$args7049_)))
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
    (lambda (_where7044_ _message7045_ _stx7046_ . _details7047_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message7045_
              (cons _stx7046_ _details7047_)
              _where7044_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx7031_ _expression?7032_)
        (gx#eval-syntax* (gx#core-expand__% _stx7031_ _expression?7032_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx7037_)
          (let ((_expression?7039_ '#f))
            (gx#eval-syntax__% _stx7037_ _expression?7039_))))
      (define gx#eval-syntax
        (lambda _g7422_
          (let ((_g7421_ (length _g7422_)))
            (cond ((fx= _g7421_ 1) (apply gx#eval-syntax__0 _g7422_))
                  ((fx= _g7421_ 2) (apply gx#eval-syntax__% _g7422_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g7422_))))))))
  (define gx#eval-syntax*
    (lambda (_stx7028_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx7028_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx7015_ _expression?7016_)
        (if _expression?7016_
            (gx#core-expand-expression _stx7015_)
            (gx#core-expand-top _stx7015_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx7021_)
          (let ((_expression?7023_ '#f))
            (gx#core-expand__% _stx7021_ _expression?7023_))))
      (define gx#core-expand
        (lambda _g7424_
          (let ((_g7423_ (length _g7424_)))
            (cond ((fx= _g7423_ 1) (apply gx#core-expand__0 _g7424_))
                  ((fx= _g7423_ 2) (apply gx#core-expand__% _g7424_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g7424_))))))))
  (define gx#core-expand-top
    (lambda (_stx6982_)
      (let* ((_stx6984_ (gx#core-expand*__0 _stx6982_))
             (_e69856992_ _stx6984_)
             (_E69876996_ (lambda () (gx#core-expand-expression _stx6984_)))
             (_E69867010_
              (lambda ()
                (if (gx#stx-pair? _e69856992_)
                    (let ((_e69887000_ (gx#syntax-e _e69856992_)))
                      (let ((_hd69897003_ (##car _e69887000_))
                            (_tl69907005_ (##cdr _e69887000_)))
                        (let ((_form7008_ _hd69897003_))
                          (if (gx#core-bound-identifier?__0 _form7008_)
                              _stx6984_
                              (_E69876996_)))))
                    (_E69876996_)))))
        (_E69867010_))))
  (define gx#core-expand-expression
    (lambda (_stx6904_)
      (letrec ((_sealed-expression?6906_
                (lambda (_hd6952_)
                  (if (gx#sealed-syntax? _hd6952_)
                      (let* ((_e69536960_ _hd6952_)
                             (_E69556964_ (lambda () '#f))
                             (_E69546978_
                              (lambda ()
                                (if (gx#stx-pair? _e69536960_)
                                    (let ((_e69566968_
                                           (gx#syntax-e _e69536960_)))
                                      (let ((_hd69576971_ (##car _e69566968_))
                                            (_tl69586973_ (##cdr _e69566968_)))
                                        (let ((_form6976_ _hd69576971_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form6976_
                                               gx#expression-form-binding?)
                                              (_E69556964_)))))
                                    (_E69556964_)))))
                        (_E69546978_))
                      '#f)))
               (_illegal-expression6907_
                (lambda (_hd6950_ . _g7425_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx6904_
                   _hd6950_)))
               (_expand-e6908_
                (lambda (_form6945_ _hd6946_)
                  (let ((_bind6948_
                         (if (##structure-instance-of?
                              _form6945_
                              'gx#binding::t)
                             _form6945_
                             (gx#resolve-identifier__0 _form6945_))))
                    (if (gx#core-expander-binding? _bind6948_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind6948_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd6946_
                          (gx#stx-source _stx6904_)))
                        (if (##structure-direct-instance-of?
                             _bind6948_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind6948_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd6946_
                               (gx#stx-source _stx6904_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx6904_
                             _form6945_)))))))
        (let ((_hd6910_ (gx#core-expand-head _stx6904_)))
          (if (_sealed-expression?6906_ _hd6910_)
              _hd6910_
              (if (gx#stx-pair? _hd6910_)
                  (let* ((_e69116918_ _hd6910_)
                         (_E69136922_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e69116918_)))
                         (_E69126941_
                          (lambda ()
                            (if (gx#stx-pair? _e69116918_)
                                (let ((_e69146926_ (gx#syntax-e _e69116918_)))
                                  (let ((_hd69156929_ (##car _e69146926_))
                                        (_tl69166931_ (##cdr _e69146926_)))
                                    (let ((_form6934_ _hd69156929_))
                                      (if '#t
                                          (let ((_bind6936_
                                                 (if (gx#identifier?
                                                      _form6934_)
                                                     (gx#resolve-identifier__0
                                                      _form6934_)
                                                     '#f)))
                                            (if (let ((_$e6938_
                                                       (not _bind6936_)))
                                                  (if _$e6938_
                                                      _$e6938_
                                                      (not (gx#core-expander-binding?
                                                            _bind6936_))))
                                                (_expand-e6908_
                                                 '%%app
                                                 (cons '%%app _hd6910_))
                                                (if (eq? (##structure-ref
                                                          _bind6936_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd6910_
                                                     _illegal-expression6907_)
                                                    (if (gx#expression-form-binding?
                                                         _bind6936_)
                                                        (_expand-e6908_
                                                         _bind6936_
                                                         _hd6910_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind6936_)
                                                            (gx#core-expand-expression
                                                             (_expand-e6908_
                                                              _bind6936_
                                                              _hd6910_))
                                                            (_illegal-expression6907_
                                                             _hd6910_))))))
                                          (_E69136922_)))))
                                (_E69136922_)))))
                    (_E69126941_))
                  (if (gx#core-bound-identifier?__0 _hd6910_)
                      (_illegal-expression6907_ _hd6910_)
                      (if (gx#identifier? _hd6910_)
                          (_expand-e6908_
                           '%%ref
                           (cons '%%ref (cons _hd6910_ '())))
                          (if (gx#stx-datum? _hd6910_)
                              (_expand-e6908_
                               '%#quote
                               (cons '%#quote (cons _hd6910_ '())))
                              (_illegal-expression6907_ _hd6910_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx6899_)
      (call-with-parameters
       (lambda ()
         (let ((_stx6902_ (gx#core-expand-expression _stx6899_)))
           (values _stx6902_ (gx#eval-syntax* _stx6902_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx6880_ _stop?6881_)
        (let _lp6883_ ((_stx6885_ _stx6880_))
          (if (_stop?6881_ _stx6885_)
              _stx6885_
              (let ((_rstx6887_ (gx#core-expand1 _stx6885_)))
                (if (eq? _stx6885_ _rstx6887_)
                    _stx6885_
                    (_lp6883_ _rstx6887_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx6892_)
          (let ((_stop?6894_ false))
            (gx#core-expand*__% _stx6892_ _stop?6894_))))
      (define gx#core-expand*
        (lambda _g7427_
          (let ((_g7426_ (length _g7427_)))
            (cond ((fx= _g7426_ 1) (apply gx#core-expand*__0 _g7427_))
                  ((fx= _g7426_ 2) (apply gx#core-expand*__% _g7427_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g7427_))))))))
  (define gx#core-expand1
    (lambda (_stx6836_)
      (letrec ((_step6838_
                (lambda (_hd6875_)
                  (let ((_bind6877_ (gx#resolve-identifier__0 _hd6875_)))
                    (if (##structure-instance-of?
                         _bind6877_
                         'gx#runtime-binding::t)
                        _stx6836_
                        (if (##structure-direct-instance-of?
                             _bind6877_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind6877_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx6836_)
                            (if (not _bind6877_)
                                _stx6836_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx6836_))))))))
        (let* ((_e68396847_ _stx6836_)
               (_E68456851_ (lambda () _stx6836_))
               (_E68416857_
                (lambda ()
                  (let ((_hd6855_ _e68396847_))
                    (if (gx#identifier? _hd6855_)
                        (_step6838_ _hd6855_)
                        (_E68456851_)))))
               (_E68406871_
                (lambda ()
                  (if (gx#stx-pair? _e68396847_)
                      (let ((_e68426861_ (gx#syntax-e _e68396847_)))
                        (let ((_hd68436864_ (##car _e68426861_))
                              (_tl68446866_ (##cdr _e68426861_)))
                          (let ((_hd6869_ _hd68436864_))
                            (if (gx#identifier? _hd6869_)
                                (_step6838_ _hd6869_)
                                (_E68416857_)))))
                      (_E68416857_)))))
          (_E68406871_)))))
  (define gx#core-expand-head
    (lambda (_stx6802_)
      (letrec ((_stop?6804_
                (lambda (_stx6806_)
                  (let* ((_e68076814_ _stx6806_)
                         (_E68096818_ (lambda () '#f))
                         (_E68086832_
                          (lambda ()
                            (if (gx#stx-pair? _e68076814_)
                                (let ((_e68106822_ (gx#syntax-e _e68076814_)))
                                  (let ((_hd68116825_ (##car _e68106822_))
                                        (_tl68126827_ (##cdr _e68106822_)))
                                    (let ((_hd6830_ _hd68116825_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd6830_)
                                          (_E68096818_)))))
                                (_E68096818_)))))
                    (_E68086832_)))))
        (gx#core-expand*__% _stx6802_ _stop?6804_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx6608_ _expand-special6609_ _begin-form6610_ _expand-e6611_)
        (letrec ((_expand-splice6613_
                  (lambda (_hd6776_ _body6777_ _rest6778_ _r6779_)
                    (if (gx#stx-list? _body6777_)
                        (_K6617_ (gx#stx-foldr cons _rest6778_ _body6777_)
                                 _r6779_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx6608_
                         _hd6776_))))
                 (_expand-cond-expand6614_
                  (lambda (_hd6772_ _rest6773_ _r6774_)
                    (_K6617_ (cons (gx#core-expand-cond-expand% _hd6772_)
                                   _rest6773_)
                             _r6774_)))
                 (_expand-include6615_
                  (lambda (_hd6721_ _rest6722_ _r6723_)
                    (let* ((_e67246734_ _hd6721_)
                           (_E67266738_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e67246734_)))
                           (_E67256768_
                            (lambda ()
                              (if (gx#stx-pair? _e67246734_)
                                  (let ((_e67276742_
                                         (gx#syntax-e _e67246734_)))
                                    (let ((_hd67286745_ (##car _e67276742_))
                                          (_tl67296747_ (##cdr _e67276742_)))
                                      (if (gx#stx-pair? _tl67296747_)
                                          (let ((_e67306750_
                                                 (gx#syntax-e _tl67296747_)))
                                            (let ((_hd67316753_
                                                   (##car _e67306750_))
                                                  (_tl67326755_
                                                   (##cdr _e67306750_)))
                                              (let ((_path6758_ _hd67316753_))
                                                (if (gx#stx-null? _tl67326755_)
                                                    (if (gx#stx-string?
                                                         _path6758_)
                                                        (let* ((_rpath6760_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path6758_
                         (gx#stx-source _hd6721_)))
                       (_block6762_
                        (gx#core-expand-include%__% _hd6721_ _rpath6760_))
                       (_rbody6765_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block6762_
                            _expand-special6609_
                            '#f
                            _expand-e6611_))
                         gx#current-expander-path
                         (cons _rpath6760_ (gx#current-expander-path)))))
                  (_K6617_ _rest6722_ (foldr1 cons _r6723_ _rbody6765_)))
                (_E67266738_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E67266738_)))))
                                          (_E67266738_))))
                                  (_E67266738_)))))
                      (_E67256768_))))
                 (_expand-expression6616_
                  (lambda (_hd6717_ _rest6718_ _r6719_)
                    (_K6617_ _rest6718_
                             (cons (_expand-e6611_ _hd6717_) _r6719_))))
                 (_K6617_ (lambda (_rest6647_ _r6648_)
                            (let* ((_e66496656_ _rest6647_)
                                   (_E66516660_
                                    (lambda ()
                                      (if _begin-form6610_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form6610_
                                            (reverse _r6648_))
                                           (gx#stx-source _stx6608_))
                                          _r6648_)))
                                   (_E66506713_
                                    (lambda ()
                                      (if (gx#stx-pair? _e66496656_)
                                          (let ((_e66526664_
                                                 (gx#syntax-e _e66496656_)))
                                            (let ((_hd66536667_
                                                   (##car _e66526664_))
                                                  (_tl66546669_
                                                   (##cdr _e66526664_)))
                                              (let* ((_hd6672_ _hd66536667_)
                                                     (_rest6674_ _tl66546669_))
                                                (if '#t
                                                    (let* ((_hd6676_
                                                            (gx#core-expand-head
                                                             _hd6672_))
                                                           (_e66776684_
                                                            _hd6676_)
                                                           (_E66796688_
                                                            (lambda ()
                                                              (_expand-expression6616_
                                                               _hd6676_
                                                               _rest6674_
                                                               _r6648_)))
                                                           (_E66786709_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e66776684_)
                          (let ((_e66806692_ (gx#syntax-e _e66776684_)))
                            (let ((_hd66816695_ (##car _e66806692_))
                                  (_tl66826697_ (##cdr _e66806692_)))
                              (let* ((_form6700_ _hd66816695_)
                                     (_body6702_ _tl66826697_))
                                (if '#t
                                    (let ((_bind6704_
                                           (if (gx#identifier? _form6700_)
                                               (gx#resolve-identifier__0
                                                _form6700_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind6704_)
                                          (let ((_$e6706_
                                                 (##structure-ref
                                                  _bind6704_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? _$e6706_ '%#begin)
                                                (_expand-splice6613_
                                                 _hd6676_
                                                 _body6702_
                                                 _rest6674_
                                                 _r6648_)
                                                (if (eq? _$e6706_
                                                         '%#cond-expand)
                                                    (_expand-cond-expand6614_
                                                     _hd6676_
                                                     _rest6674_
                                                     _r6648_)
                                                    (if (eq? _$e6706_
                                                             '%#include)
                                                        (_expand-include6615_
                                                         _hd6676_
                                                         _rest6674_
                                                         _r6648_)
                                                        (_expand-special6609_
                                                         _hd6676_
                                                         _K6617_
                                                         _rest6674_
                                                         _r6648_)))))
                                          (_expand-expression6616_
                                           _hd6676_
                                           _rest6674_
                                           _r6648_)))
                                    (_E66796688_)))))
                          (_E66796688_)))))
              (_E66786709_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E66516660_)))))
                                          (_E66516660_)))))
                              (_E66506713_)))))
          (let* ((_e66186625_ _stx6608_)
                 (_E66206629_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e66186625_)))
                 (_E66196643_
                  (lambda ()
                    (if (gx#stx-pair? _e66186625_)
                        (let ((_e66216633_ (gx#syntax-e _e66186625_)))
                          (let ((_hd66226636_ (##car _e66216633_))
                                (_tl66236638_ (##cdr _e66216633_)))
                            (let ((_body6641_ _tl66236638_))
                              (if (gx#stx-list? _body6641_)
                                  (_K6617_ _body6641_ '())
                                  (_E66206629_)))))
                        (_E66206629_)))))
            (_E66196643_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx6784_ _expand-special6785_)
          (let* ((_begin-form6787_ '%#begin)
                 (_expand-e6789_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx6784_
             _expand-special6785_
             _begin-form6787_
             _expand-e6789_))))
      (define gx#core-expand-block__1
        (lambda (_stx6791_ _expand-special6792_ _begin-form6793_)
          (let ((_expand-e6795_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx6791_
             _expand-special6792_
             _begin-form6793_
             _expand-e6795_))))
      (define gx#core-expand-block
        (lambda _g7429_
          (let ((_g7428_ (length _g7429_)))
            (cond ((fx= _g7428_ 2) (apply gx#core-expand-block__0 _g7429_))
                  ((fx= _g7428_ 3) (apply gx#core-expand-block__1 _g7429_))
                  ((fx= _g7428_ 4) (apply gx#core-expand-block__% _g7429_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g7429_))))))))
  (define gx#core-expand-block*
    (lambda (_stx6556_ _expand-special6557_)
      (let* ((_g65586569_
              (gx#core-expand-block__1 _stx6556_ _expand-special6557_ '#f))
             (_E65626573_
              (lambda () (error '"No clause matching" _g65586569_)))
             (_try-match65616584_
              (lambda ()
                (let* ((_K65636579_
                        (lambda (_body6577_)
                          (gx#core-quote-syntax__1
                           (gx#core-cons '%#begin (reverse _body6577_))
                           (gx#stx-source _stx6556_))))
                       (_body6582_ _g65586569_))
                  (_K65636579_ _body6582_))))
             (_try-match65606600_
              (lambda ()
                (let ((_K65646590_ (lambda (_expr6588_) _expr6588_)))
                  (if (##pair? _g65586569_)
                      (let ((_hd65656593_ (##car _g65586569_))
                            (_tl65666595_ (##cdr _g65586569_)))
                        (let ((_expr6598_ _hd65656593_))
                          (if (##null? _tl65666595_)
                              (_K65646590_ _expr6598_)
                              (_try-match65616584_))))
                      (_try-match65616584_)))))
             (_K65676604_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; empty block"
                 _stx6556_))))
        (if (##null? _g65586569_) (_K65676604_) (_try-match65606600_)))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx6414_)
      (letrec ((_satisfied?6416_
                (lambda (_condition6514_)
                  (let* ((_e65156523_ _condition6514_)
                         (_E65186527_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e65156523_)))
                         (_E65176546_
                          (lambda ()
                            (if (gx#stx-pair? _e65156523_)
                                (let ((_e65196531_ (gx#syntax-e _e65156523_)))
                                  (let ((_hd65206534_ (##car _e65196531_))
                                        (_tl65216536_ (##cdr _e65196531_)))
                                    (let* ((_combinator6539_ _hd65206534_)
                                           (_body6541_ _tl65216536_))
                                      (if (gx#stx-list? _body6541_)
                                          (let ((_$e6543_
                                                 (gx#stx-e _combinator6539_)))
                                            (if (eq? _$e6543_ 'not)
                                                (not (gx#stx-ormap
                                                      _satisfied?6416_
                                                      _body6541_))
                                                (if (eq? _$e6543_ 'and)
                                                    (gx#stx-andmap
                                                     _satisfied?6416_
                                                     _body6541_)
                                                    (if (eq? _$e6543_ 'or)
                                                        (gx#stx-ormap
                                                         _satisfied?6416_
                                                         _body6541_)
                                                        (if (eq? _$e6543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'defined)
                    (gx#stx-andmap gx#core-resolve-identifier _body6541_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx6414_
                     _combinator6539_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E65186527_)))))
                                (_E65186527_))))
                         (_E65166552_
                          (lambda ()
                            (let ((_id6550_ _e65156523_))
                              (if (gx#identifier? _id6550_)
                                  (gx#core-bound-identifier?__%
                                   _id6550_
                                   gx#feature-binding?)
                                  (_E65176546_))))))
                    (_E65166552_))))
               (_loop6417_
                (lambda (_rest6447_)
                  (let* ((_e64486456_ _rest6447_)
                         (_E64546460_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e64486456_)))
                         (_E64506464_
                          (lambda ()
                            (if (gx#stx-null? _e64486456_)
                                (if '#t '() (_E64546460_))
                                (_E64546460_))))
                         (_E64496510_
                          (lambda ()
                            (if (gx#stx-pair? _e64486456_)
                                (let ((_e64516468_ (gx#syntax-e _e64486456_)))
                                  (let ((_hd64526471_ (##car _e64516468_))
                                        (_tl64536473_ (##cdr _e64516468_)))
                                    (let* ((_hd6476_ _hd64526471_)
                                           (_rest6478_ _tl64536473_))
                                      (if '#t
                                          (let* ((_e64796486_ _hd6476_)
                                                 (_E64816490_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e64796486_)))
                                                 (_E64806506_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e64796486_)
                                                        (let ((_e64826494_
                                                               (gx#syntax-e
                                                                _e64796486_)))
                                                          (let ((_hd64836497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e64826494_))
                        (_tl64846499_ (##cdr _e64826494_)))
                    (let* ((_condition6502_ _hd64836497_)
                           (_body6504_ _tl64846499_))
                      (if '#t
                          (if (gx#stx-eq? _condition6502_ 'else)
                              (if (gx#stx-null? _rest6478_)
                                  _body6504_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx6414_
                                   _hd6476_))
                              (if (_satisfied?6416_ _condition6502_)
                                  _body6504_
                                  (_loop6417_ _rest6478_)))
                          (_E64816490_)))))
                (_E64816490_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E64806506_))
                                          (_E64506464_)))))
                                (_E64506464_)))))
                    (_E64496510_)))))
        (let* ((_e64186425_ _stx6414_)
               (_E64206429_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e64186425_)))
               (_E64196443_
                (lambda ()
                  (if (gx#stx-pair? _e64186425_)
                      (let ((_e64216433_ (gx#syntax-e _e64186425_)))
                        (let ((_hd64226436_ (##car _e64216433_))
                              (_tl64236438_ (##cdr _e64216433_)))
                          (let ((_clauses6441_ _tl64236438_))
                            (if (gx#stx-list? _clauses6441_)
                                (gx#core-cons
                                 'begin
                                 (_loop6417_ _clauses6441_))
                                (_E64206429_)))))
                      (_E64206429_)))))
          (_E64196443_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx6357_ _rpath6358_)
        (let* ((_e63596369_ _stx6357_)
               (_E63616373_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e63596369_)))
               (_E63606400_
                (lambda ()
                  (if (gx#stx-pair? _e63596369_)
                      (let ((_e63626377_ (gx#syntax-e _e63596369_)))
                        (let ((_hd63636380_ (##car _e63626377_))
                              (_tl63646382_ (##cdr _e63626377_)))
                          (if (gx#stx-pair? _tl63646382_)
                              (let ((_e63656385_ (gx#syntax-e _tl63646382_)))
                                (let ((_hd63666388_ (##car _e63656385_))
                                      (_tl63676390_ (##cdr _e63656385_)))
                                  (let ((_path6393_ _hd63666388_))
                                    (if (gx#stx-null? _tl63676390_)
                                        (if (gx#stx-string? _path6393_)
                                            (let ((_rpath6398_
                                                   (let ((_$e6395_
                                                          _rpath6358_))
                                                     (if _$e6395_
                                                         _$e6395_
                                                         (gx#core-resolve-path__%
                                                          _path6393_
                                                          (gx#stx-source
                                                           _stx6357_))))))
                                              (if (member _rpath6398_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx6357_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath6398_))
                                                    (gx#stx-source
                                                     _stx6357_)))))
                                            (_E63616373_))
                                        (_E63616373_)))))
                              (_E63616373_))))
                      (_E63616373_)))))
          (_E63606400_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx6407_)
          (let ((_rpath6409_ '#f))
            (gx#core-expand-include%__% _stx6407_ _rpath6409_))))
      (define gx#core-expand-include%
        (lambda _g7431_
          (let ((_g7430_ (length _g7431_)))
            (cond ((fx= _g7430_ 1) (apply gx#core-expand-include%__0 _g7431_))
                  ((fx= _g7430_ 2) (apply gx#core-expand-include%__% _g7431_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g7431_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K6326_ _stx6327_ _method6328_)
        (if (procedure? _K6326_)
            (let ((_$e6330_ (gx#stx-source _stx6327_)))
              (if _$e6330_
                  ((lambda (_g63326334_)
                     (gx#stx-wrap-source (_K6326_ _stx6327_) _g63326334_))
                   _$e6330_)
                  (_K6326_ _stx6327_)))
            (let ((_$e6337_ (bound-method-ref _K6326_ _method6328_)))
              (if _$e6337_
                  ((lambda (_g63396341_)
                     (gx#core-apply-expander__%
                      _g63396341_
                      _stx6327_
                      _method6328_))
                   _$e6337_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx6327_
                   _method6328_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K6347_ _stx6348_)
          (let ((_method6350_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K6347_ _stx6348_ _method6350_))))
      (define gx#core-apply-expander
        (lambda _g7433_
          (let ((_g7432_ (length _g7433_)))
            (cond ((fx= _g7432_ 2) (apply gx#core-apply-expander__0 _g7433_))
                  ((fx= _g7432_ 3) (apply gx#core-apply-expander__% _g7433_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g7433_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self6322_ _stx6323_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx6323_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self6175_ _stx6176_)
      (let* ((_self61776183_ _self6175_)
             (_E61796187_
              (lambda () (error '"No clause matching" _self61776183_)))
             (_K61806192_
              (lambda (_K6190_)
                (gx#core-apply-expander__0 _K6190_ _stx6176_))))
        (if (##structure-instance-of?
             _self61776183_
             (##type-id gx#macro-expander::t))
            (let* ((_e61816195_ (##vector-ref _self61776183_ '1))
                   (_K6198_ _e61816195_))
              (_K61806192_ _K6198_))
            (_E61796187_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self6028_ _stx6029_)
      (if (gx#sealed-syntax? _stx6029_)
          _stx6029_
          (let* ((_self60306036_ _self6028_)
                 (_E60326040_
                  (lambda () (error '"No clause matching" _self60306036_)))
                 (_K60336045_
                  (lambda (_K6043_)
                    (gx#core-apply-expander__0 _K6043_ _stx6029_))))
            (if (##structure-instance-of?
                 _self60306036_
                 (##type-id gx#core-expander::t))
                (let* ((_e60346048_ (##vector-ref _self60306036_ '1))
                       (_K6051_ _e60346048_))
                  (_K60336045_ _K6051_))
                (_E60326040_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self5890_ _stx5891_ _top?5892_)
        (if (_top?5892_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self5890_ _stx5891_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx5891_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self5897_ _stx5898_)
          (let ((_top?5900_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self5897_
             _stx5898_
             _top?5900_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g7435_
          (let ((_g7434_ (length _g7435_)))
            (cond ((fx= _g7434_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g7435_))
                  ((fx= _g7434_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g7435_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g7435_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self5764_ _stx5765_)
      (gx#top-special-form::apply-macro-expander__%
       _self5764_
       _stx5765_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self5589_ _stx5590_)
      (let* ((_self55915597_ _self5589_)
             (_E55935601_
              (lambda () (error '"No clause matching" _self55915597_)))
             (_K55945634_
              (lambda (_id5604_)
                (let* ((_e56055612_ _stx5590_)
                       (_E56075616_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e56055612_)))
                       (_E56065630_
                        (lambda ()
                          (if (gx#stx-pair? _e56055612_)
                              (let ((_e56085620_ (gx#syntax-e _e56055612_)))
                                (let ((_hd56095623_ (##car _e56085620_))
                                      (_tl56105625_ (##cdr _e56085620_)))
                                  (let ((_body5628_ _tl56105625_))
                                    (if '#t
                                        (gx#core-cons _id5604_ _body5628_)
                                        (_E56075616_)))))
                              (_E56075616_)))))
                  (_E56065630_)))))
        (if (##structure-instance-of?
             _self55915597_
             (##type-id gx#rename-macro-expander::t))
            (let* ((_e55955637_ (##vector-ref _self55915597_ '1))
                   (_id5640_ _e55955637_))
              (_K55945634_ _id5640_))
            (_E55935601_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self5415_ _stx5416_ _method5417_)
        (let* ((_self54185426_ _self5415_)
               (_E54205430_
                (lambda () (error '"No clause matching" _self54185426_)))
               (_K54215437_
                (lambda (_phi5433_ _ctx5434_ _K5435_)
                  (gx#core-apply-user-macro
                   _K5435_
                   _stx5416_
                   _ctx5434_
                   _phi5433_
                   _method5417_))))
          (if (##structure-instance-of?
               _self54185426_
               (##type-id gx#user-expander::t))
              (let* ((_e54225440_ (##vector-ref _self54185426_ '1))
                     (_K5443_ _e54225440_)
                     (_e54235445_ (##vector-ref _self54185426_ '2))
                     (_ctx5448_ _e54235445_)
                     (_e54245450_ (##vector-ref _self54185426_ '3))
                     (_phi5453_ _e54245450_))
                (_K54215437_ _phi5453_ _ctx5448_ _K5443_))
              (_E54205430_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self5458_ _stx5459_)
          (let ((_method5461_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self5458_
             _stx5459_
             _method5461_))))
      (define gx#core-apply-user-expander
        (lambda _g7437_
          (let ((_g7436_ (length _g7437_)))
            (cond ((fx= _g7436_ 2)
                   (apply gx#core-apply-user-expander__0 _g7437_))
                  ((fx= _g7436_ 3)
                   (apply gx#core-apply-user-expander__% _g7437_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g7437_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K5405_ _stx5406_ _ctx5407_ _phi5408_ _method5409_)
      (let ((_mark5411_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx5407_
              _phi5408_
              _stx5406_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K5405_
             (gx#stx-apply-mark _stx5406_ _mark5411_)
             _method5409_)
            _mark5411_))
         gx#current-expander-marks
         (cons _mark5411_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx5256_ _phi5257_ _ctx5258_)
        (let _lp5260_ ((_bind5262_
                        (gx#core-resolve-identifier__%
                         _stx5256_
                         _phi5257_
                         _ctx5258_)))
          (if (##structure-direct-instance-of?
               _bind5262_
               'gx#import-binding::t)
              (_lp5260_
               (##direct-structure-ref _bind5262_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind5262_
                   'gx#alias-binding::t)
                  (_lp5260_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind5262_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi5257_
                    _ctx5258_))
                  _bind5262_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx5267_)
          (let* ((_phi5269_ (gx#current-expander-phi))
                 (_ctx5271_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5267_ _phi5269_ _ctx5271_))))
      (define gx#resolve-identifier__1
        (lambda (_stx5273_ _phi5274_)
          (let ((_ctx5276_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx5273_ _phi5274_ _ctx5276_))))
      (define gx#resolve-identifier
        (lambda _g7439_
          (let ((_g7438_ (length _g7439_)))
            (cond ((fx= _g7438_ 1) (apply gx#resolve-identifier__0 _g7439_))
                  ((fx= _g7438_ 2) (apply gx#resolve-identifier__1 _g7439_))
                  ((fx= _g7438_ 3) (apply gx#resolve-identifier__% _g7439_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g7439_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx5214_ _val5215_ _rebind?5216_ _phi5217_ _ctx5218_)
        (let ((_rebind?5220_
               (if (not _rebind?5216_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?5216_) _rebind?5216_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx5214_)
           _val5215_
           _rebind?5220_
           _phi5217_
           _ctx5218_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx5225_ _val5226_)
          (let* ((_rebind?5228_ '#f)
                 (_phi5230_ (gx#current-expander-phi))
                 (_ctx5232_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5225_
             _val5226_
             _rebind?5228_
             _phi5230_
             _ctx5232_))))
      (define gx#bind-identifier!__1
        (lambda (_stx5234_ _val5235_ _rebind?5236_)
          (let* ((_phi5238_ (gx#current-expander-phi))
                 (_ctx5240_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5234_
             _val5235_
             _rebind?5236_
             _phi5238_
             _ctx5240_))))
      (define gx#bind-identifier!__2
        (lambda (_stx5242_ _val5243_ _rebind?5244_ _phi5245_)
          (let ((_ctx5247_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx5242_
             _val5243_
             _rebind?5244_
             _phi5245_
             _ctx5247_))))
      (define gx#bind-identifier!
        (lambda _g7441_
          (let ((_g7440_ (length _g7441_)))
            (cond ((fx= _g7440_ 2) (apply gx#bind-identifier!__0 _g7441_))
                  ((fx= _g7440_ 3) (apply gx#bind-identifier!__1 _g7441_))
                  ((fx= _g7440_ 4) (apply gx#bind-identifier!__2 _g7441_))
                  ((fx= _g7440_ 5) (apply gx#bind-identifier!__% _g7441_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g7441_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx5186_ _phi5187_ _ctx5188_)
        (let _lp5190_ ((_e5192_ _stx5186_)
                       (_marks5193_ (gx#current-expander-marks)))
          (if (symbol? _e5192_)
              (gx#core-resolve-binding
               _e5192_
               _phi5187_
               _phi5187_
               _ctx5188_
               (reverse _marks5193_))
              (if (gx#identifier-quote? _e5192_)
                  (gx#core-resolve-binding
                   (##structure-ref _e5192_ '1 AST::t '#f)
                   _phi5187_
                   '0
                   (##direct-structure-ref _e5192_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e5192_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e5192_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e5192_ '1 AST::t '#f)
                       _phi5187_
                       _phi5187_
                       _ctx5188_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e5192_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks5193_))
                      (if (##structure-direct-instance-of?
                           _e5192_
                           'gx#syntax-wrap::t)
                          (_lp5190_
                           (##structure-ref _e5192_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e5192_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks5193_))
                          (if (##structure-instance-of? _e5192_ 'gerbil#AST::t)
                              (_lp5190_
                               (##structure-ref _e5192_ '1 AST::t '#f)
                               _marks5193_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx5186_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx5198_)
          (let* ((_phi5200_ (gx#current-expander-phi))
                 (_ctx5202_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5198_ _phi5200_ _ctx5202_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx5204_ _phi5205_)
          (let ((_ctx5207_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx5204_ _phi5205_ _ctx5207_))))
      (define gx#core-resolve-identifier
        (lambda _g7443_
          (let ((_g7442_ (length _g7443_)))
            (cond ((fx= _g7442_ 1)
                   (apply gx#core-resolve-identifier__0 _g7443_))
                  ((fx= _g7442_ 2)
                   (apply gx#core-resolve-identifier__1 _g7443_))
                  ((fx= _g7442_ 3)
                   (apply gx#core-resolve-identifier__% _g7443_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g7443_))))))))
  (define gx#core-resolve-binding
    (lambda (_id5099_ _phi5100_ _src-phi5101_ _ctx5102_ _marks5103_)
      (letrec ((_resolve5105_
                (lambda (_ctx5173_ _src-phi5174_ _key5175_)
                  (let _lp5177_ ((_ctx5179_
                                  (gx#core-context-shift _ctx5173_ _phi5100_))
                                 (_dphi5180_ (fx- _phi5100_ _src-phi5174_)))
                    (let ((_$e5182_
                           (gx#core-context-resolve _ctx5179_ _key5175_)))
                      (if _$e5182_
                          (values _$e5182_)
                          (if (fxzero? _dphi5180_)
                              '#f
                              (if (fxpositive? _dphi5180_)
                                  (_lp5177_
                                   (gx#core-context-shift _ctx5179_ '-1)
                                   (fx- _dphi5180_ '1))
                                  (if (fxnegative? _dphi5180_)
                                      (_lp5177_
                                       (gx#core-context-shift _ctx5179_ '1)
                                       (fx+ _dphi5180_ '1))
                                      '#!void)))))))))
        (let _lp5107_ ((_ctx5109_ _ctx5102_)
                       (_src-phi5110_ _src-phi5101_)
                       (_rest5111_ _marks5103_))
          (let* ((_rest51125120_ _rest5111_)
                 (_E51155124_
                  (lambda () (error '"No clause matching" _rest51125120_)))
                 (_else51145128_
                  (lambda () (_resolve5105_ _ctx5109_ _src-phi5110_ _id5099_)))
                 (_K51165161_
                  (lambda (_rest5131_ _hd5132_)
                    (let* ((_hd51335139_ _hd5132_)
                           (_E51355143_
                            (lambda ()
                              (error '"No clause matching" _hd51335139_)))
                           (_K51365153_
                            (lambda (_subst5146_)
                              (let ((_$e5150_
                                     (let ((_key5148_
                                            (if _subst5146_
                                                (table-ref
                                                 _subst5146_
                                                 _id5099_
                                                 '#f)
                                                '#f)))
                                       (if _key5148_
                                           (_resolve5105_
                                            _ctx5109_
                                            _src-phi5110_
                                            _key5148_)
                                           '#f))))
                                (if _$e5150_
                                    _$e5150_
                                    (_lp5107_
                                     (##structure-ref
                                      _hd5132_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd5132_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest5131_))))))
                      (if (##structure-instance-of?
                           _hd51335139_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e51375156_ (##vector-ref _hd51335139_ '1))
                                 (_subst5159_ _e51375156_))
                            (_K51365153_ _subst5159_))
                          (_E51355143_))))))
            (if (##pair? _rest51125120_)
                (let ((_hd51175164_ (##car _rest51125120_))
                      (_tl51185166_ (##cdr _rest51125120_)))
                  (let* ((_hd5169_ _hd51175164_) (_rest5171_ _tl51185166_))
                    (_K51165161_ _rest5171_ _hd5169_)))
                (_else51145128_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key4975_ _val4976_ _rebind?4977_ _phi4978_ _ctx4979_)
        (letrec ((_update-binding4981_
                  (lambda (_xval5052_)
                    (if (let ((_$e5054_
                               (_rebind?4977_ _ctx4979_ _xval5052_ _val4976_)))
                          (if _$e5054_
                              _$e5054_
                              (let ((_$e5060_
                                     (if (##structure-direct-instance-of?
                                          _xval5052_
                                          'gx#import-binding::t)
                                         (let ((_$e5057_
                                                (##direct-structure-ref
                                                 _xval5052_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e5057_
                                               _$e5057_
                                               (if (##structure-instance-of?
                                                    _val4976_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val4976_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e5060_
                                    _$e5060_
                                    (if (##structure-instance-of?
                                         _xval5052_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val4976_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val4976_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval5052_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val4976_
                        (if (if (##structure-direct-instance-of?
                                 _val4976_
                                 'gx#import-binding::t)
                                (let ((_$e5063_
                                       (##direct-structure-ref
                                        _val4976_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e5063_
                                      _$e5063_
                                      (if (##structure-instance-of?
                                           _xval5052_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val4976_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval5052_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval5052_
                            (if (if (##structure-direct-instance-of?
                                     _val4976_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval5052_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key4975_
                                 (cons (##structure-ref
                                        _val4976_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val4976_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval5052_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval5052_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval5052_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval5052_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key4975_
                                 _val4976_
                                 _xval5052_))))))
                 (_gensubst4982_
                  (lambda (_subst5047_ _id5048_)
                    (let ((_eid5050_
                           (gensym (if (uninterned-symbol? _id5048_)
                                       '%
                                       _id5048_))))
                      (begin
                        (table-set! _subst5047_ _id5048_ _eid5050_)
                        _eid5050_))))
                 (_subst!4983_
                  (lambda (_key4985_)
                    (let* ((_key49864994_ _key4985_)
                           (_E49894998_
                            (lambda ()
                              (error '"No clause matching" _key49864994_)))
                           (_else49885002_ (lambda () _key4985_))
                           (_K49905035_
                            (lambda (_mark5005_ _id5006_)
                              (let* ((_mark50075013_ _mark5005_)
                                     (_E50095017_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark50075013_)))
                                     (_K50105027_
                                      (lambda (_subst5020_)
                                        (if (not _subst5020_)
                                            (let ((_subst5022_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark5005_
                                                 _subst5022_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst4982_
                                                 _subst5022_
                                                 _id5006_)))
                                            (let ((_$e5024_
                                                   (table-ref
                                                    _subst5020_
                                                    _id5006_
                                                    '#f)))
                                              (if _$e5024_
                                                  (values _$e5024_)
                                                  (_gensubst4982_
                                                   _subst5020_
                                                   _id5006_)))))))
                                (if (##structure-instance-of?
                                     _mark50075013_
                                     (##type-id gx#expander-mark::t))
                                    (let* ((_e50115030_
                                            (##vector-ref _mark50075013_ '1))
                                           (_subst5033_ _e50115030_))
                                      (_K50105027_ _subst5033_))
                                    (_E50095017_))))))
                      (if (##pair? _key49864994_)
                          (let ((_hd49915038_ (##car _key49864994_))
                                (_tl49925040_ (##cdr _key49864994_)))
                            (let* ((_id5043_ _hd49915038_)
                                   (_mark5045_ _tl49925040_))
                              (_K49905035_ _mark5045_ _id5043_)))
                          (_else49885002_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx4979_ _phi4978_)
           (_subst!4983_ _key4975_)
           _val4976_
           _update-binding4981_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key5069_ _val5070_)
          (let* ((_rebind?5072_ false)
                 (_phi5074_ (gx#current-expander-phi))
                 (_ctx5076_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5069_
             _val5070_
             _rebind?5072_
             _phi5074_
             _ctx5076_))))
      (define gx#core-bind!__1
        (lambda (_key5078_ _val5079_ _rebind?5080_)
          (let* ((_phi5082_ (gx#current-expander-phi))
                 (_ctx5084_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5078_
             _val5079_
             _rebind?5080_
             _phi5082_
             _ctx5084_))))
      (define gx#core-bind!__2
        (lambda (_key5086_ _val5087_ _rebind?5088_ _phi5089_)
          (let ((_ctx5091_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key5086_
             _val5087_
             _rebind?5088_
             _phi5089_
             _ctx5091_))))
      (define gx#core-bind!
        (lambda _g7445_
          (let ((_g7444_ (length _g7445_)))
            (cond ((fx= _g7444_ 2) (apply gx#core-bind!__0 _g7445_))
                  ((fx= _g7444_ 3) (apply gx#core-bind!__1 _g7445_))
                  ((fx= _g7444_ 4) (apply gx#core-bind!__2 _g7445_))
                  ((fx= _g7444_ 5) (apply gx#core-bind!__% _g7445_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g7445_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4905_)
      (if (symbol? _stx4905_)
          (let* ((_g49064914_ (gx#current-expander-marks))
                 (_E49094918_
                  (lambda () (error '"No clause matching" _g49064914_)))
                 (_else49084922_ (lambda () _stx4905_))
                 (_K49104927_ (lambda (_hd4925_) (cons _stx4905_ _hd4925_))))
            (if (##pair? _g49064914_)
                (let ((_hd49114930_ (##car _g49064914_))
                      (_tl49124932_ (##cdr _g49064914_)))
                  (let ((_hd4935_ _hd49114930_)) (_K49104927_ _hd4935_)))
                (_else49084922_)))
          (if (gx#identifier? _stx4905_)
              (let* ((_id4937_ (gx#syntax-local-unwrap _stx4905_))
                     (_eid4939_ (gx#stx-e _id4937_))
                     (_marks4941_ (gx#stx-identifier-marks _id4937_)))
                (let* ((_marks49434951_ _marks4941_)
                       (_E49464955_
                        (lambda ()
                          (error '"No clause matching" _marks49434951_)))
                       (_else49454959_ (lambda () _eid4939_))
                       (_K49474964_
                        (lambda (_hd4962_) (cons _eid4939_ _hd4962_))))
                  (if (##pair? _marks49434951_)
                      (let ((_hd49484967_ (##car _marks49434951_))
                            (_tl49494969_ (##cdr _marks49434951_)))
                        (let ((_hd4972_ _hd49484967_)) (_K49474964_ _hd4972_)))
                      (_else49454959_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4905_)))))
  (define gx#core-context-shift
    (lambda (_ctx4850_ _phi4851_)
      (letrec ((_make-phi4853_
                (lambda (_super4903_)
                  (let ((__obj7416 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj7416
                       (gensym 'phi)
                       _super4903_)
                      __obj7416))))
               (_make-phi/up4854_
                (lambda (_ctx4898_ _super4899_)
                  (let ((_ctx+14901_ (_make-phi4853_ _super4899_)))
                    (begin
                      (##structure-set!
                       _ctx4898_
                       _ctx+14901_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+14901_
                       _ctx4898_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+14901_))))
               (_make-phi/down4855_
                (lambda (_ctx4893_ _super4894_)
                  (let ((_ctx-14896_ (_make-phi4853_ _super4894_)))
                    (begin
                      (##structure-set!
                       _ctx-14896_
                       _ctx4893_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx4893_
                       _ctx-14896_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-14896_))))
               (_shift4856_
                (lambda (_ctx4877_
                         _delta4878_
                         _make-delta-context4879_
                         _phi4880_
                         _K4881_)
                  (let ((_$e4883_
                         (##structure-ref _ctx4877_ '3 gx#phi-context::t '#f)))
                    (if _$e4883_
                        ((lambda (_super4886_)
                           (let* ((_super4888_
                                   (_K4881_ _super4886_ _delta4878_))
                                  (_ctx+d4890_
                                   (_make-delta-context4879_
                                    _ctx4877_
                                    _super4888_)))
                             (_K4881_ _ctx+d4890_
                                      (fx- _phi4880_ _delta4878_))))
                         _$e4883_)
                        (error '"Bad context" _ctx4877_))))))
        (let _K4858_ ((_ctx4860_ _ctx4850_) (_phi4861_ _phi4851_))
          (if (fxzero? _phi4861_)
              _ctx4860_
              (if (##structure-instance-of? _ctx4860_ 'gx#context-phi::t)
                  (if (fxpositive? _phi4861_)
                      (let ((_$e4863_
                             (##structure-ref
                              _ctx4860_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e4863_
                            ((lambda (_g48654867_)
                               (_K4858_ _g48654867_ (fx- _phi4861_ '1)))
                             _$e4863_)
                            (_shift4856_
                             _ctx4860_
                             '1
                             _make-phi/up4854_
                             _phi4861_
                             _K4858_)))
                      (let ((_$e4870_
                             (##structure-ref
                              _ctx4860_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e4870_
                            ((lambda (_g48724874_)
                               (_K4858_ _g48724874_ (fx+ _phi4861_ '1)))
                             _$e4870_)
                            (_shift4856_
                             _ctx4860_
                             '-1
                             _make-phi/down4855_
                             _phi4861_
                             _K4858_))))
                  _ctx4860_))))))
  (define gx#core-context-get
    (lambda (_ctx4847_ _key4848_)
      (table-ref
       (##structure-ref _ctx4847_ '2 gx#expander-context::t '#f)
       _key4848_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4843_ _key4844_ _val4845_)
      (table-set!
       (##structure-ref _ctx4843_ '2 gx#expander-context::t '#f)
       _key4844_
       _val4845_)))
  (define gx#core-context-resolve
    (lambda (_ctx4830_ _key4831_)
      (let _lp4833_ ((_ctx4835_ _ctx4830_))
        (let ((_$e4837_ (gx#core-context-get _ctx4835_ _key4831_)))
          (if _$e4837_
              (values _$e4837_)
              (let ((_$e4840_
                     (if (##structure-instance-of?
                          _ctx4835_
                          'gx#context-phi::t)
                         (##structure-ref _ctx4835_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e4840_ (_lp4833_ _$e4840_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx4820_ _key4821_ _val4822_ _rebind4823_)
      (let ((_$e4825_ (gx#core-context-get _ctx4820_ _key4821_)))
        (if _$e4825_
            ((lambda (_xval4828_)
               (gx#core-context-put!
                _ctx4820_
                _key4821_
                (_rebind4823_ _xval4828_)))
             _$e4825_)
            (gx#core-context-put! _ctx4820_ _key4821_ _val4822_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx4798_ _stop?4799_)
        (let _lp4801_ ((_ctx4803_ _ctx4798_))
          (if (_stop?4799_ _ctx4803_)
              _ctx4803_
              (if (##structure-instance-of? _ctx4803_ 'gx#context-phi::t)
                  (_lp4801_
                   (##structure-ref _ctx4803_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx4809_ (gx#current-expander-context))
                 (_stop?4811_ gx#top-context?))
            (gx#core-context-top__% _ctx4809_ _stop?4811_))))
      (define gx#core-context-top__1
        (lambda (_ctx4813_)
          (let ((_stop?4815_ gx#top-context?))
            (gx#core-context-top__% _ctx4813_ _stop?4815_))))
      (define gx#core-context-top
        (lambda _g7447_
          (let ((_g7446_ (length _g7447_)))
            (cond ((fx= _g7446_ 0) (apply gx#core-context-top__0 _g7447_))
                  ((fx= _g7446_ 1) (apply gx#core-context-top__1 _g7447_))
                  ((fx= _g7446_ 2) (apply gx#core-context-top__% _g7447_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g7447_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx4783_)
        (let _lp4785_ ((_ctx4787_ _ctx4783_))
          (if (##structure-instance-of? _ctx4787_ 'gx#context-phi::t)
              (_lp4785_ (##structure-ref _ctx4787_ '3 gx#phi-context::t '#f))
              _ctx4787_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4793_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx4793_))))
      (define gx#core-context-root
        (lambda _g7449_
          (let ((_g7448_ (length _g7449_)))
            (cond ((fx= _g7448_ 0) (apply gx#core-context-root__0 _g7449_))
                  ((fx= _g7448_ 1) (apply gx#core-context-root__% _g7449_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g7449_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx4767_ . __47644768_)
        (if (##structure-instance-of? _ctx4767_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4767_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4767_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4775_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx4775_))))
      (define gx#core-context-rebind?
        (lambda _g7451_
          (let ((_g7450_ (length _g7451_)))
            (cond ((fx= _g7450_ 0) (apply gx#core-context-rebind?__0 _g7451_))
                  ((fx= _g7450_ 1) (apply gx#core-context-rebind?__% _g7451_))
                  ((fx>= _g7450_ 1) (apply gx#core-context-rebind?__% _g7451_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g7451_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx4750_)
        (let ((_$e4752_ (gx#core-context-top__1 _ctx4750_)))
          (if _$e4752_
              ((lambda (_ctx4755_)
                 (if (##structure-instance-of? _ctx4755_ 'gx#module-context::t)
                     (##structure-ref _ctx4755_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4752_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4761_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx4761_))))
      (define gx#core-context-namespace
        (lambda _g7453_
          (let ((_g7452_ (length _g7453_)))
            (cond ((fx= _g7452_ 0)
                   (apply gx#core-context-namespace__0 _g7453_))
                  ((fx= _g7452_ 1)
                   (apply gx#core-context-namespace__% _g7453_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g7453_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind4736_ _is?4737_)
        (if (##structure-direct-instance-of? _bind4736_ 'gx#syntax-binding::t)
            (_is?4737_
             (##direct-structure-ref _bind4736_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4742_)
          (let ((_is?4744_ gx#expander?))
            (gx#expander-binding?__% _bind4742_ _is?4744_))))
      (define gx#expander-binding?
        (lambda _g7455_
          (let ((_g7454_ (length _g7455_)))
            (cond ((fx= _g7454_ 1) (apply gx#expander-binding?__0 _g7455_))
                  ((fx= _g7454_ 2) (apply gx#expander-binding?__% _g7455_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g7455_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4733_)
      (gx#expander-binding?__% _bind4733_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4731_)
      (gx#expander-binding?__% _bind4731_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4725_)
      (letrec ((_direct-special-form?4727_
                (lambda (_obj4729_)
                  (##structure-direct-instance-of?
                   _obj4729_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__% _bind4725_ _direct-special-form?4727_))))
  (define gx#special-form-binding?
    (lambda (_bind4723_)
      (gx#expander-binding?__% _bind4723_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4714_)
      (letrec ((_feature?4716_
                (lambda (_e4718_)
                  (let ((_$e4720_
                         (##structure-instance-of?
                          _e4718_
                          'gx#feature-expander::t)))
                    (if _$e4720_
                        _$e4720_
                        (##structure-instance-of?
                         _e4718_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind4714_ _feature?4716_))))
  (define gx#private-feature-binding?
    (lambda (_bind4712_)
      (gx#expander-binding?__% _bind4712_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id4699_ _bound?4700_)
        (if (gx#identifier? _id4699_)
            (_bound?4700_ (gx#resolve-identifier__0 _id4699_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4705_)
          (let ((_bound?4707_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id4705_ _bound?4707_))))
      (define gx#core-bound-identifier?
        (lambda _g7457_
          (let ((_g7456_ (length _g7457_)))
            (cond ((fx= _g7456_ 1)
                   (apply gx#core-bound-identifier?__0 _g7457_))
                  ((fx= _g7456_ 2)
                   (apply gx#core-bound-identifier?__% _g7457_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g7457_))))))))
  (define gx#core-identifier=?
    (lambda (_x4689_ _y4690_)
      (letrec ((_y=?4692_
                (lambda (_xid4696_)
                  ((if (list? _y4690_) memq eq?) _xid4696_ _y4690_))))
        (let ((_bind4694_ (gx#resolve-identifier__0 _x4689_)))
          (if (##structure-instance-of? _bind4694_ 'gx#binding::t)
              (_y=?4692_ (##structure-ref _bind4694_ '1 gx#binding::t '#f))
              (_y=?4692_ (gx#stx-e _x4689_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4687_)
      (if (interned-symbol? _e4687_)
          (string-index (symbol->string _e4687_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx4645_ _src4646_ _ctx4647_ _marks4648_)
        (if (gx#sealed-syntax? _stx4645_)
            (gx#stx-unwrap__0 _stx4645_)
            (if (gx#identifier? _stx4645_)
                (let ((_id4650_ (gx#syntax-local-unwrap _stx4645_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4650_)
                   (let ((_$e4652_ (gx#stx-source _id4650_)))
                     (if _$e4652_ _$e4652_ _src4646_))
                   _ctx4647_
                   (##direct-structure-ref
                    _id4650_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4645_)
                    (gx#stx-e _stx4645_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4645_
                     (let ((_$e4655_ (gx#stx-source _stx4645_)))
                       (if _$e4655_ _$e4655_ _src4646_))
                     _ctx4647_
                     (reverse _marks4648_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4661_)
          (let* ((_src4663_ '#f)
                 (_ctx4665_ (gx#current-expander-context))
                 (_marks4667_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4661_
             _src4663_
             _ctx4665_
             _marks4667_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4669_ _src4670_)
          (let* ((_ctx4672_ (gx#current-expander-context))
                 (_marks4674_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4669_
             _src4670_
             _ctx4672_
             _marks4674_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4676_ _src4677_ _ctx4678_)
          (let ((_marks4680_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx4676_
             _src4677_
             _ctx4678_
             _marks4680_))))
      (define gx#core-quote-syntax
        (lambda _g7459_
          (let ((_g7458_ (length _g7459_)))
            (cond ((fx= _g7458_ 1) (apply gx#core-quote-syntax__0 _g7459_))
                  ((fx= _g7458_ 2) (apply gx#core-quote-syntax__1 _g7459_))
                  ((fx= _g7458_ 3) (apply gx#core-quote-syntax__2 _g7459_))
                  ((fx= _g7458_ 4) (apply gx#core-quote-syntax__% _g7459_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g7459_))))))))
  (define gx#core-cons
    (lambda (_hd4641_ _tl4642_)
      (cons (gx#core-quote-syntax__0 _hd4641_) _tl4642_)))
  (define gx#core-list
    (lambda (_hd4638_ . _rest4639_)
      (cons (gx#core-quote-syntax__0 _hd4638_) _rest4639_)))
  (define gx#core-cons*
    (lambda (_hd4635_ . _rest4636_)
      (apply cons* (gx#core-quote-syntax__0 _hd4635_) _rest4636_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path4609_ _rel4610_)
        (let ((_path4622_ (gx#stx-e _stx-path4609_))
              (_reldir4623_
               (let _lp4612_ ((_relsrc4614_
                               (let ((_$e4619_ (gx#stx-source _stx-path4609_)))
                                 (if _$e4619_ _$e4619_ _rel4610_))))
                 (if (##structure-instance-of? _relsrc4614_ 'gerbil#AST::t)
                     (_lp4612_
                      (let ((_$e4616_ (gx#stx-source _relsrc4614_)))
                        (if _$e4616_ _$e4616_ (gx#stx-e _relsrc4614_))))
                     (if (source-location-path? _relsrc4614_)
                         (path-directory (source-location-path _relsrc4614_))
                         (if (string? _relsrc4614_)
                             (path-directory _relsrc4614_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4622_ (path-normalize _reldir4623_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4628_)
          (let ((_rel4630_ '#f))
            (gx#core-resolve-path__% _stx-path4628_ _rel4630_))))
      (define gx#core-resolve-path
        (lambda _g7461_
          (let ((_g7460_ (length _g7461_)))
            (cond ((fx= _g7460_ 1) (apply gx#core-resolve-path__0 _g7461_))
                  ((fx= _g7460_ 2) (apply gx#core-resolve-path__% _g7461_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g7461_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr4565_ _ctx4566_)
        (let* ((_repr45674574_ _repr4565_)
               (_E45694578_
                (lambda () (error '"No clause matching" _repr45674574_)))
               (_K45704586_
                (lambda (_subs4581_ _phi4582_)
                  (let ((_subst4584_
                         (if (not (null? _subs4581_))
                             (list->hash-table-eq _subs4581_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst4584_
                     _ctx4566_
                     _phi4582_
                     '#f)))))
          (if (##pair? _repr45674574_)
              (let ((_hd45714589_ (##car _repr45674574_))
                    (_tl45724591_ (##cdr _repr45674574_)))
                (let* ((_phi4594_ _hd45714589_) (_subs4596_ _tl45724591_))
                  (_K45704586_ _subs4596_ _phi4594_)))
              (_E45694578_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr4601_)
          (let ((_ctx4603_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr4601_ _ctx4603_))))
      (define gx#core-deserialize-mark
        (lambda _g7463_
          (let ((_g7462_ (length _g7463_)))
            (cond ((fx= _g7462_ 1) (apply gx#core-deserialize-mark__0 _g7463_))
                  ((fx= _g7462_ 2) (apply gx#core-deserialize-mark__% _g7463_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g7463_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4562_) (gx#stx-rewrap _stx4562_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4560_)
      (gx#stx-unwrap__% _stx4560_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4528_)
      (let* ((_g45294537_ (gx#current-expander-marks))
             (_E45324541_
              (lambda () (error '"No clause matching" _g45294537_)))
             (_else45314545_ (lambda () _stx4528_))
             (_K45334550_
              (lambda (_hd4548_) (gx#stx-apply-mark _stx4528_ _hd4548_))))
        (if (##pair? _g45294537_)
            (let ((_hd45344553_ (##car _g45294537_))
                  (_tl45354555_ (##cdr _g45294537_)))
              (let ((_hd4558_ _hd45344553_)) (_K45334550_ _hd4558_)))
            (_else45314545_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx4513_ _E4514_)
        (let ((_bind4516_ (gx#resolve-identifier__0 _stx4513_)))
          (if (##structure-direct-instance-of?
               _bind4516_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4516_ '4 gx#syntax-binding::t '#f)
              (_E4514_ _stx4513_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4521_)
          (let ((_E4523_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx4521_ _E4523_))))
      (define gx#syntax-local-e
        (lambda _g7465_
          (let ((_g7464_ (length _g7465_)))
            (cond ((fx= _g7464_ 1) (apply gx#syntax-local-e__0 _g7465_))
                  ((fx= _g7464_ 2) (apply gx#syntax-local-e__% _g7465_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g7465_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx4497_ _E4498_)
        (let ((_e4500_ (gx#syntax-local-e__% _stx4497_ _E4498_)))
          (if (##structure-instance-of? _e4500_ 'gx#expander::t)
              (##structure-ref _e4500_ '1 gx#expander::t '#f)
              _e4500_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4505_)
          (let ((_E4507_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx4505_ _E4507_))))
      (define gx#syntax-local-value
        (lambda _g7467_
          (let ((_g7466_ (length _g7467_)))
            (cond ((fx= _g7466_ 1) (apply gx#syntax-local-value__0 _g7467_))
                  ((fx= _g7466_ 2) (apply gx#syntax-local-value__% _g7467_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g7467_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4494_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4494_))))
