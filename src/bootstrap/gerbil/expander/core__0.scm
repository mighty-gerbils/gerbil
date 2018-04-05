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
    (lambda _$args9259_
      (apply make-struct-instance gx#expander-context::t _$args9259_)))
  (define gx#expander-context-id
    (make-struct-field-accessor gx#expander-context::t '0))
  (define gx#expander-context-table
    (make-struct-field-accessor gx#expander-context::t '1))
  (define gx#expander-context-id-set!
    (make-struct-field-mutator gx#expander-context::t '0))
  (define gx#expander-context-table-set!
    (make-struct-field-mutator gx#expander-context::t '1))
  (define gx#&expander-context-id
    (make-struct-field-unchecked-accessor gx#expander-context::t '0))
  (define gx#&expander-context-table
    (make-struct-field-unchecked-accessor gx#expander-context::t '1))
  (define gx#&expander-context-id-set!
    (make-struct-field-unchecked-mutator gx#expander-context::t '0))
  (define gx#&expander-context-table-set!
    (make-struct-field-unchecked-mutator gx#expander-context::t '1))
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
    (lambda _$args9256_
      (apply make-struct-instance gx#root-context::t _$args9256_)))
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
    (lambda _$args9253_
      (apply make-struct-instance gx#phi-context::t _$args9253_)))
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
  (define gx#&phi-context-super
    (make-struct-field-unchecked-accessor gx#phi-context::t '0))
  (define gx#&phi-context-up
    (make-struct-field-unchecked-accessor gx#phi-context::t '1))
  (define gx#&phi-context-down
    (make-struct-field-unchecked-accessor gx#phi-context::t '2))
  (define gx#&phi-context-super-set!
    (make-struct-field-unchecked-mutator gx#phi-context::t '0))
  (define gx#&phi-context-up-set!
    (make-struct-field-unchecked-mutator gx#phi-context::t '1))
  (define gx#&phi-context-down-set!
    (make-struct-field-unchecked-mutator gx#phi-context::t '2))
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
    (lambda _$args9250_
      (apply make-struct-instance gx#top-context::t _$args9250_)))
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
    (lambda _$args9247_
      (apply make-struct-instance gx#module-context::t _$args9247_)))
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
  (define gx#&module-context-ns
    (make-struct-field-unchecked-accessor gx#module-context::t '0))
  (define gx#&module-context-path
    (make-struct-field-unchecked-accessor gx#module-context::t '1))
  (define gx#&module-context-import
    (make-struct-field-unchecked-accessor gx#module-context::t '2))
  (define gx#&module-context-export
    (make-struct-field-unchecked-accessor gx#module-context::t '3))
  (define gx#&module-context-e
    (make-struct-field-unchecked-accessor gx#module-context::t '4))
  (define gx#&module-context-code
    (make-struct-field-unchecked-accessor gx#module-context::t '5))
  (define gx#&module-context-ns-set!
    (make-struct-field-unchecked-mutator gx#module-context::t '0))
  (define gx#&module-context-path-set!
    (make-struct-field-unchecked-mutator gx#module-context::t '1))
  (define gx#&module-context-import-set!
    (make-struct-field-unchecked-mutator gx#module-context::t '2))
  (define gx#&module-context-export-set!
    (make-struct-field-unchecked-mutator gx#module-context::t '3))
  (define gx#&module-context-e-set!
    (make-struct-field-unchecked-mutator gx#module-context::t '4))
  (define gx#&module-context-code-set!
    (make-struct-field-unchecked-mutator gx#module-context::t '5))
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
    (lambda _$args9244_
      (apply make-struct-instance gx#prelude-context::t _$args9244_)))
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
    (lambda _$args9241_
      (apply make-struct-instance gx#local-context::t _$args9241_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self9225_ _id9226_ _super9227_)
        (struct-instance-init!
         _self9225_
         _id9226_
         (make-table 'test: eq?)
         _super9227_
         '#f
         '#f)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self9232_ _id9233_)
          (let ((_super9235_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self9232_ _id9233_ _super9235_))))
      (define gx#phi-context:::init!
        (lambda _g9272_
          (let ((_g9271_ (length _g9272_)))
            (cond ((##fx= _g9271_ 2) (apply gx#phi-context:::init!__0 _g9272_))
                  ((##fx= _g9271_ 3) (apply gx#phi-context:::init!__% _g9272_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g9272_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self9089_ _super9090_)
        (struct-instance-init!
         _self9089_
         (gensym 'L)
         (make-table 'test: eq?)
         _super9090_
         '#f
         '#f)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self9095_)
          (let ((_super9097_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self9095_ _super9097_))))
      (define gx#local-context:::init!
        (lambda _g9274_
          (let ((_g9273_ (length _g9274_)))
            (cond ((##fx= _g9273_ 1)
                   (apply gx#local-context:::init!__0 _g9274_))
                  ((##fx= _g9273_ 2)
                   (apply gx#local-context:::init!__% _g9274_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g9274_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args8963_
      (apply make-struct-instance gx#binding::t _$args8963_)))
  (define gx#binding-id (make-struct-field-accessor gx#binding::t '0))
  (define gx#binding-key (make-struct-field-accessor gx#binding::t '1))
  (define gx#binding-phi (make-struct-field-accessor gx#binding::t '2))
  (define gx#binding-id-set! (make-struct-field-mutator gx#binding::t '0))
  (define gx#binding-key-set! (make-struct-field-mutator gx#binding::t '1))
  (define gx#binding-phi-set! (make-struct-field-mutator gx#binding::t '2))
  (define gx#&binding-id
    (make-struct-field-unchecked-accessor gx#binding::t '0))
  (define gx#&binding-key
    (make-struct-field-unchecked-accessor gx#binding::t '1))
  (define gx#&binding-phi
    (make-struct-field-unchecked-accessor gx#binding::t '2))
  (define gx#&binding-id-set!
    (make-struct-field-unchecked-mutator gx#binding::t '0))
  (define gx#&binding-key-set!
    (make-struct-field-unchecked-mutator gx#binding::t '1))
  (define gx#&binding-phi-set!
    (make-struct-field-unchecked-mutator gx#binding::t '2))
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
    (lambda _$args8960_
      (apply make-struct-instance gx#runtime-binding::t _$args8960_)))
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
    (lambda _$args8957_
      (apply make-struct-instance gx#local-binding::t _$args8957_)))
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
    (lambda _$args8954_
      (apply make-struct-instance gx#top-binding::t _$args8954_)))
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
    (lambda _$args8951_
      (apply make-struct-instance gx#module-binding::t _$args8951_)))
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
    (lambda _$args8948_
      (apply make-struct-instance gx#extern-binding::t _$args8948_)))
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
    (lambda _$args8945_
      (apply make-struct-instance gx#syntax-binding::t _$args8945_)))
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
    (lambda _$args8942_
      (apply make-struct-instance gx#import-binding::t _$args8942_)))
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
    (lambda _$args8939_
      (apply make-struct-instance gx#alias-binding::t _$args8939_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args8936_
      (apply make-struct-instance gx#expander::t _$args8936_)))
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
    (lambda _$args8933_
      (apply make-struct-instance gx#core-expander::t _$args8933_)))
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
    (lambda _$args8930_
      (apply make-struct-instance gx#expression-form::t _$args8930_)))
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
    (lambda _$args8927_
      (apply make-struct-instance gx#special-form::t _$args8927_)))
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
    (lambda _$args8924_
      (apply make-struct-instance gx#definition-form::t _$args8924_)))
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
    (lambda _$args8921_
      (apply make-struct-instance gx#top-special-form::t _$args8921_)))
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
    (lambda _$args8918_
      (apply make-struct-instance gx#module-special-form::t _$args8918_)))
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
    (lambda _$args8915_
      (apply make-struct-instance gx#feature-expander::t _$args8915_)))
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
    (lambda _$args8912_
      (apply make-struct-instance gx#private-feature-expander::t _$args8912_)))
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
    (lambda _$args8909_
      (apply make-struct-instance gx#reserved-expander::t _$args8909_)))
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
    (lambda _$args8906_
      (apply make-struct-instance gx#macro-expander::t _$args8906_)))
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
    (lambda _$args8903_
      (apply make-struct-instance gx#rename-macro-expander::t _$args8903_)))
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
    (lambda _$args8900_
      (apply make-struct-instance gx#user-expander::t _$args8900_)))
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
    (lambda _$args8897_
      (apply make-struct-instance gx#expander-mark::t _$args8897_)))
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
  (define gx#&expander-mark-subst
    (make-struct-field-unchecked-accessor gx#expander-mark::t '0))
  (define gx#&expander-mark-context
    (make-struct-field-unchecked-accessor gx#expander-mark::t '1))
  (define gx#&expander-mark-phi
    (make-struct-field-unchecked-accessor gx#expander-mark::t '2))
  (define gx#&expander-mark-trace
    (make-struct-field-unchecked-accessor gx#expander-mark::t '3))
  (define gx#&expander-mark-subst-set!
    (make-struct-field-unchecked-mutator gx#expander-mark::t '0))
  (define gx#&expander-mark-context-set!
    (make-struct-field-unchecked-mutator gx#expander-mark::t '1))
  (define gx#&expander-mark-phi-set!
    (make-struct-field-unchecked-mutator gx#expander-mark::t '2))
  (define gx#&expander-mark-trace-set!
    (make-struct-field-unchecked-mutator gx#expander-mark::t '3))
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
    (lambda _$args8894_
      (apply make-struct-instance gx#syntax-error::t _$args8894_)))
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
    (lambda (_where8889_ _message8890_ _stx8891_ . _details8892_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message8890_
              (cons _stx8891_ _details8892_)
              _where8889_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx8876_ _expression?8877_)
        (gx#eval-syntax* (gx#core-expand__% _stx8876_ _expression?8877_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx8882_)
          (let ((_expression?8884_ '#f))
            (gx#eval-syntax__% _stx8882_ _expression?8884_))))
      (define gx#eval-syntax
        (lambda _g9276_
          (let ((_g9275_ (length _g9276_)))
            (cond ((##fx= _g9275_ 1) (apply gx#eval-syntax__0 _g9276_))
                  ((##fx= _g9275_ 2) (apply gx#eval-syntax__% _g9276_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g9276_))))))))
  (define gx#eval-syntax*
    (lambda (_stx8873_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx8873_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx8860_ _expression?8861_)
        (if _expression?8861_
            (gx#core-expand-expression _stx8860_)
            (gx#core-expand-top _stx8860_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx8866_)
          (let ((_expression?8868_ '#f))
            (gx#core-expand__% _stx8866_ _expression?8868_))))
      (define gx#core-expand
        (lambda _g9278_
          (let ((_g9277_ (length _g9278_)))
            (cond ((##fx= _g9277_ 1) (apply gx#core-expand__0 _g9278_))
                  ((##fx= _g9277_ 2) (apply gx#core-expand__% _g9278_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g9278_))))))))
  (define gx#core-expand-top
    (lambda (_stx8827_)
      (let* ((_stx8829_ (gx#core-expand*__0 _stx8827_))
             (_e88308837_ _stx8829_)
             (_E88328841_ (lambda () (gx#core-expand-expression _stx8829_)))
             (_E88318855_
              (lambda ()
                (if (gx#stx-pair? _e88308837_)
                    (let ((_e88338845_ (gx#syntax-e _e88308837_)))
                      (let ((_hd88348848_ (##car _e88338845_))
                            (_tl88358850_ (##cdr _e88338845_)))
                        (let ((_form8853_ _hd88348848_))
                          (if (gx#core-bound-identifier?__0 _form8853_)
                              _stx8829_
                              (_E88328841_)))))
                    (_E88328841_)))))
        (_E88318855_))))
  (define gx#core-expand-expression
    (lambda (_stx8749_)
      (letrec ((_sealed-expression?8751_
                (lambda (_hd8797_)
                  (if (gx#sealed-syntax? _hd8797_)
                      (let* ((_e87988805_ _hd8797_)
                             (_E88008809_ (lambda () '#f))
                             (_E87998823_
                              (lambda ()
                                (if (gx#stx-pair? _e87988805_)
                                    (let ((_e88018813_
                                           (gx#syntax-e _e87988805_)))
                                      (let ((_hd88028816_ (##car _e88018813_))
                                            (_tl88038818_ (##cdr _e88018813_)))
                                        (let ((_form8821_ _hd88028816_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form8821_
                                               gx#expression-form-binding?)
                                              (_E88008809_)))))
                                    (_E88008809_)))))
                        (_E87998823_))
                      '#f)))
               (_illegal-expression8752_
                (lambda (_hd8795_ . _g9279_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx8749_
                   _hd8795_)))
               (_expand-e8753_
                (lambda (_form8790_ _hd8791_)
                  (let ((_bind8793_
                         (if (##structure-instance-of?
                              _form8790_
                              'gx#binding::t)
                             _form8790_
                             (gx#resolve-identifier__0 _form8790_))))
                    (if (gx#core-expander-binding? _bind8793_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind8793_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd8791_
                          (gx#stx-source _stx8749_)))
                        (if (##structure-direct-instance-of?
                             _bind8793_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind8793_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd8791_
                               (gx#stx-source _stx8749_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx8749_
                             _form8790_)))))))
        (let ((_hd8755_ (gx#core-expand-head _stx8749_)))
          (if (_sealed-expression?8751_ _hd8755_)
              _hd8755_
              (if (gx#stx-pair? _hd8755_)
                  (let* ((_e87568763_ _hd8755_)
                         (_E87588767_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e87568763_)))
                         (_E87578786_
                          (lambda ()
                            (if (gx#stx-pair? _e87568763_)
                                (let ((_e87598771_ (gx#syntax-e _e87568763_)))
                                  (let ((_hd87608774_ (##car _e87598771_))
                                        (_tl87618776_ (##cdr _e87598771_)))
                                    (let ((_form8779_ _hd87608774_))
                                      (if '#t
                                          (let ((_bind8781_
                                                 (if (gx#identifier?
                                                      _form8779_)
                                                     (gx#resolve-identifier__0
                                                      _form8779_)
                                                     '#f)))
                                            (if (let ((_$e8783_
                                                       (not _bind8781_)))
                                                  (if _$e8783_
                                                      _$e8783_
                                                      (not (gx#core-expander-binding?
                                                            _bind8781_))))
                                                (_expand-e8753_
                                                 '%%app
                                                 (cons '%%app _hd8755_))
                                                (if (eq? (##unchecked-structure-ref
                                                          _bind8781_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd8755_
                                                     _illegal-expression8752_)
                                                    (if (gx#expression-form-binding?
                                                         _bind8781_)
                                                        (_expand-e8753_
                                                         _bind8781_
                                                         _hd8755_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind8781_)
                                                            (gx#core-expand-expression
                                                             (_expand-e8753_
                                                              _bind8781_
                                                              _hd8755_))
                                                            (_illegal-expression8752_
                                                             _hd8755_))))))
                                          (_E87588767_)))))
                                (_E87588767_)))))
                    (_E87578786_))
                  (if (gx#core-bound-identifier?__0 _hd8755_)
                      (_illegal-expression8752_ _hd8755_)
                      (if (gx#identifier? _hd8755_)
                          (_expand-e8753_
                           '%%ref
                           (cons '%%ref (cons _hd8755_ '())))
                          (if (gx#stx-datum? _hd8755_)
                              (_expand-e8753_
                               '%#quote
                               (cons '%#quote (cons _hd8755_ '())))
                              (_illegal-expression8752_ _hd8755_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx8744_)
      (call-with-parameters
       (lambda ()
         (let ((_stx8747_ (gx#core-expand-expression _stx8744_)))
           (values _stx8747_ (gx#eval-syntax* _stx8747_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx8725_ _stop?8726_)
        (let _lp8728_ ((_stx8730_ _stx8725_))
          (if (_stop?8726_ _stx8730_)
              _stx8730_
              (let ((_rstx8732_ (gx#core-expand1 _stx8730_)))
                (if (eq? _stx8730_ _rstx8732_)
                    _stx8730_
                    (_lp8728_ _rstx8732_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx8737_)
          (let ((_stop?8739_ false))
            (gx#core-expand*__% _stx8737_ _stop?8739_))))
      (define gx#core-expand*
        (lambda _g9281_
          (let ((_g9280_ (length _g9281_)))
            (cond ((##fx= _g9280_ 1) (apply gx#core-expand*__0 _g9281_))
                  ((##fx= _g9280_ 2) (apply gx#core-expand*__% _g9281_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g9281_))))))))
  (define gx#core-expand1
    (lambda (_stx8681_)
      (letrec ((_step8683_
                (lambda (_hd8720_)
                  (let ((_bind8722_ (gx#resolve-identifier__0 _hd8720_)))
                    (if (##structure-instance-of?
                         _bind8722_
                         'gx#runtime-binding::t)
                        _stx8681_
                        (if (##structure-direct-instance-of?
                             _bind8722_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind8722_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx8681_)
                            (if (not _bind8722_)
                                _stx8681_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx8681_))))))))
        (let* ((_e86848692_ _stx8681_)
               (_E86908696_ (lambda () _stx8681_))
               (_E86868702_
                (lambda ()
                  (let ((_hd8700_ _e86848692_))
                    (if (gx#identifier? _hd8700_)
                        (_step8683_ _hd8700_)
                        (_E86908696_)))))
               (_E86858716_
                (lambda ()
                  (if (gx#stx-pair? _e86848692_)
                      (let ((_e86878706_ (gx#syntax-e _e86848692_)))
                        (let ((_hd86888709_ (##car _e86878706_))
                              (_tl86898711_ (##cdr _e86878706_)))
                          (let ((_hd8714_ _hd86888709_))
                            (if (gx#identifier? _hd8714_)
                                (_step8683_ _hd8714_)
                                (_E86868702_)))))
                      (_E86868702_)))))
          (_E86858716_)))))
  (define gx#core-expand-head
    (lambda (_stx8647_)
      (letrec ((_stop?8649_
                (lambda (_stx8651_)
                  (let* ((_e86528659_ _stx8651_)
                         (_E86548663_ (lambda () '#f))
                         (_E86538677_
                          (lambda ()
                            (if (gx#stx-pair? _e86528659_)
                                (let ((_e86558667_ (gx#syntax-e _e86528659_)))
                                  (let ((_hd86568670_ (##car _e86558667_))
                                        (_tl86578672_ (##cdr _e86558667_)))
                                    (let ((_hd8675_ _hd86568670_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd8675_)
                                          (_E86548663_)))))
                                (_E86548663_)))))
                    (_E86538677_)))))
        (gx#core-expand*__% _stx8647_ _stop?8649_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx8453_ _expand-special8454_ _begin-form8455_ _expand-e8456_)
        (letrec ((_expand-splice8458_
                  (lambda (_hd8621_ _body8622_ _rest8623_ _r8624_)
                    (if (gx#stx-list? _body8622_)
                        (_K8462_ (gx#stx-foldr cons _rest8623_ _body8622_)
                                 _r8624_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx8453_
                         _hd8621_))))
                 (_expand-cond-expand8459_
                  (lambda (_hd8617_ _rest8618_ _r8619_)
                    (_K8462_ (cons (gx#core-expand-cond-expand% _hd8617_)
                                   _rest8618_)
                             _r8619_)))
                 (_expand-include8460_
                  (lambda (_hd8566_ _rest8567_ _r8568_)
                    (let* ((_e85698579_ _hd8566_)
                           (_E85718583_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e85698579_)))
                           (_E85708613_
                            (lambda ()
                              (if (gx#stx-pair? _e85698579_)
                                  (let ((_e85728587_
                                         (gx#syntax-e _e85698579_)))
                                    (let ((_hd85738590_ (##car _e85728587_))
                                          (_tl85748592_ (##cdr _e85728587_)))
                                      (if (gx#stx-pair? _tl85748592_)
                                          (let ((_e85758595_
                                                 (gx#syntax-e _tl85748592_)))
                                            (let ((_hd85768598_
                                                   (##car _e85758595_))
                                                  (_tl85778600_
                                                   (##cdr _e85758595_)))
                                              (let ((_path8603_ _hd85768598_))
                                                (if (gx#stx-null? _tl85778600_)
                                                    (if (gx#stx-string?
                                                         _path8603_)
                                                        (let* ((_rpath8605_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path8603_
                         (gx#stx-source _hd8566_)))
                       (_block8607_
                        (gx#core-expand-include%__% _hd8566_ _rpath8605_))
                       (_rbody8610_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block8607_
                            _expand-special8454_
                            '#f
                            _expand-e8456_))
                         gx#current-expander-path
                         (cons _rpath8605_ (gx#current-expander-path)))))
                  (_K8462_ _rest8567_ (foldr1 cons _r8568_ _rbody8610_)))
                (_E85718583_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85718583_)))))
                                          (_E85718583_))))
                                  (_E85718583_)))))
                      (_E85708613_))))
                 (_expand-expression8461_
                  (lambda (_hd8562_ _rest8563_ _r8564_)
                    (_K8462_ _rest8563_
                             (cons (_expand-e8456_ _hd8562_) _r8564_))))
                 (_K8462_ (lambda (_rest8492_ _r8493_)
                            (let* ((_e84948501_ _rest8492_)
                                   (_E84968505_
                                    (lambda ()
                                      (if _begin-form8455_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form8455_
                                            (reverse _r8493_))
                                           (gx#stx-source _stx8453_))
                                          _r8493_)))
                                   (_E84958558_
                                    (lambda ()
                                      (if (gx#stx-pair? _e84948501_)
                                          (let ((_e84978509_
                                                 (gx#syntax-e _e84948501_)))
                                            (let ((_hd84988512_
                                                   (##car _e84978509_))
                                                  (_tl84998514_
                                                   (##cdr _e84978509_)))
                                              (let* ((_hd8517_ _hd84988512_)
                                                     (_rest8519_ _tl84998514_))
                                                (if '#t
                                                    (let* ((_hd8521_
                                                            (gx#core-expand-head
                                                             _hd8517_))
                                                           (_e85228529_
                                                            _hd8521_)
                                                           (_E85248533_
                                                            (lambda ()
                                                              (_expand-expression8461_
                                                               _hd8521_
                                                               _rest8519_
                                                               _r8493_)))
                                                           (_E85238554_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e85228529_)
                          (let ((_e85258537_ (gx#syntax-e _e85228529_)))
                            (let ((_hd85268540_ (##car _e85258537_))
                                  (_tl85278542_ (##cdr _e85258537_)))
                              (let* ((_form8545_ _hd85268540_)
                                     (_body8547_ _tl85278542_))
                                (if '#t
                                    (let ((_bind8549_
                                           (if (gx#identifier? _form8545_)
                                               (gx#resolve-identifier__0
                                                _form8545_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind8549_)
                                          (let ((_$e8551_
                                                 (##unchecked-structure-ref
                                                  _bind8549_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e8551_)
                                                (_expand-splice8458_
                                                 _hd8521_
                                                 _body8547_
                                                 _rest8519_
                                                 _r8493_)
                                                (if (eq? '%#cond-expand
                                                         _$e8551_)
                                                    (_expand-cond-expand8459_
                                                     _hd8521_
                                                     _rest8519_
                                                     _r8493_)
                                                    (if (eq? '%#include
                                                             _$e8551_)
                                                        (_expand-include8460_
                                                         _hd8521_
                                                         _rest8519_
                                                         _r8493_)
                                                        (_expand-special8454_
                                                         _hd8521_
                                                         _K8462_
                                                         _rest8519_
                                                         _r8493_)))))
                                          (_expand-expression8461_
                                           _hd8521_
                                           _rest8519_
                                           _r8493_)))
                                    (_E85248533_)))))
                          (_E85248533_)))))
              (_E85238554_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E84968505_)))))
                                          (_E84968505_)))))
                              (_E84958558_)))))
          (let* ((_e84638470_ _stx8453_)
                 (_E84658474_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e84638470_)))
                 (_E84648488_
                  (lambda ()
                    (if (gx#stx-pair? _e84638470_)
                        (let ((_e84668478_ (gx#syntax-e _e84638470_)))
                          (let ((_hd84678481_ (##car _e84668478_))
                                (_tl84688483_ (##cdr _e84668478_)))
                            (let ((_body8486_ _tl84688483_))
                              (if (gx#stx-list? _body8486_)
                                  (_K8462_ _body8486_ '())
                                  (_E84658474_)))))
                        (_E84658474_)))))
            (_E84648488_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx8629_ _expand-special8630_)
          (let* ((_begin-form8632_ '%#begin)
                 (_expand-e8634_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8629_
             _expand-special8630_
             _begin-form8632_
             _expand-e8634_))))
      (define gx#core-expand-block__1
        (lambda (_stx8636_ _expand-special8637_ _begin-form8638_)
          (let ((_expand-e8640_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8636_
             _expand-special8637_
             _begin-form8638_
             _expand-e8640_))))
      (define gx#core-expand-block
        (lambda _g9283_
          (let ((_g9282_ (length _g9283_)))
            (cond ((##fx= _g9282_ 2) (apply gx#core-expand-block__0 _g9283_))
                  ((##fx= _g9282_ 3) (apply gx#core-expand-block__1 _g9283_))
                  ((##fx= _g9282_ 4) (apply gx#core-expand-block__% _g9283_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g9283_))))))))
  (define gx#core-expand-block*
    (lambda (_stx8401_ _expand-special8402_)
      (let* ((_g84038414_
              (gx#core-expand-block__1 _stx8401_ _expand-special8402_ '#f))
             (_E84078418_
              (lambda () (error '"No clause matching" _g84038414_))))
        (let ((_K84128449_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx8401_)))
              (_K84098435_ (lambda (_expr8433_) _expr8433_))
              (_K84088424_
               (lambda (_body8422_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body8422_))
                  (gx#stx-source _stx8401_)))))
          (let ((_try-match84058445_
                 (lambda ()
                   (if (##pair? _g84038414_)
                       (let ((_tl84118440_ (##cdr _g84038414_))
                             (_hd84108438_ (##car _g84038414_)))
                         (if (##null? _tl84118440_)
                             (let ((_expr8443_ _hd84108438_))
                               (_K84098435_ _expr8443_))
                             (let ((_body8427_ _g84038414_))
                               (_K84088424_ _body8427_))))
                       (let ((_body8427_ _g84038414_))
                         (_K84088424_ _body8427_))))))
            (if (##null? _g84038414_) (_K84128449_) (_try-match84058445_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx8259_)
      (letrec ((_satisfied?8261_
                (lambda (_condition8359_)
                  (let* ((_e83608368_ _condition8359_)
                         (_E83638372_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e83608368_)))
                         (_E83628391_
                          (lambda ()
                            (if (gx#stx-pair? _e83608368_)
                                (let ((_e83648376_ (gx#syntax-e _e83608368_)))
                                  (let ((_hd83658379_ (##car _e83648376_))
                                        (_tl83668381_ (##cdr _e83648376_)))
                                    (let* ((_combinator8384_ _hd83658379_)
                                           (_body8386_ _tl83668381_))
                                      (if (gx#stx-list? _body8386_)
                                          (let ((_$e8388_
                                                 (gx#stx-e _combinator8384_)))
                                            (if (eq? 'not _$e8388_)
                                                (not (gx#stx-ormap
                                                      _satisfied?8261_
                                                      _body8386_))
                                                (if (eq? 'and _$e8388_)
                                                    (gx#stx-andmap
                                                     _satisfied?8261_
                                                     _body8386_)
                                                    (if (eq? 'or _$e8388_)
                                                        (gx#stx-ormap
                                                         _satisfied?8261_
                                                         _body8386_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e8388_)
                    (gx#stx-andmap gx#core-resolve-identifier _body8386_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx8259_
                     _combinator8384_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E83638372_)))))
                                (_E83638372_))))
                         (_E83618397_
                          (lambda ()
                            (let ((_id8395_ _e83608368_))
                              (if (gx#identifier? _id8395_)
                                  (gx#core-bound-identifier?__%
                                   _id8395_
                                   gx#feature-binding?)
                                  (_E83628391_))))))
                    (_E83618397_))))
               (_loop8262_
                (lambda (_rest8292_)
                  (let* ((_e82938301_ _rest8292_)
                         (_E82998305_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e82938301_)))
                         (_E82958309_
                          (lambda ()
                            (if (gx#stx-null? _e82938301_)
                                (if '#t '() (_E82998305_))
                                (_E82998305_))))
                         (_E82948355_
                          (lambda ()
                            (if (gx#stx-pair? _e82938301_)
                                (let ((_e82968313_ (gx#syntax-e _e82938301_)))
                                  (let ((_hd82978316_ (##car _e82968313_))
                                        (_tl82988318_ (##cdr _e82968313_)))
                                    (let* ((_hd8321_ _hd82978316_)
                                           (_rest8323_ _tl82988318_))
                                      (if '#t
                                          (let* ((_e83248331_ _hd8321_)
                                                 (_E83268335_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e83248331_)))
                                                 (_E83258351_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e83248331_)
                                                        (let ((_e83278339_
                                                               (gx#syntax-e
                                                                _e83248331_)))
                                                          (let ((_hd83288342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e83278339_))
                        (_tl83298344_ (##cdr _e83278339_)))
                    (let* ((_condition8347_ _hd83288342_)
                           (_body8349_ _tl83298344_))
                      (if '#t
                          (if (gx#stx-eq? _condition8347_ 'else)
                              (if (gx#stx-null? _rest8323_)
                                  _body8349_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx8259_
                                   _hd8321_))
                              (if (_satisfied?8261_ _condition8347_)
                                  _body8349_
                                  (_loop8262_ _rest8323_)))
                          (_E83268335_)))))
                (_E83268335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E83258351_))
                                          (_E82958309_)))))
                                (_E82958309_)))))
                    (_E82948355_)))))
        (let* ((_e82638270_ _stx8259_)
               (_E82658274_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e82638270_)))
               (_E82648288_
                (lambda ()
                  (if (gx#stx-pair? _e82638270_)
                      (let ((_e82668278_ (gx#syntax-e _e82638270_)))
                        (let ((_hd82678281_ (##car _e82668278_))
                              (_tl82688283_ (##cdr _e82668278_)))
                          (let ((_clauses8286_ _tl82688283_))
                            (if (gx#stx-list? _clauses8286_)
                                (gx#core-cons
                                 'begin
                                 (_loop8262_ _clauses8286_))
                                (_E82658274_)))))
                      (_E82658274_)))))
          (_E82648288_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx8202_ _rpath8203_)
        (let* ((_e82048214_ _stx8202_)
               (_E82068218_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e82048214_)))
               (_E82058245_
                (lambda ()
                  (if (gx#stx-pair? _e82048214_)
                      (let ((_e82078222_ (gx#syntax-e _e82048214_)))
                        (let ((_hd82088225_ (##car _e82078222_))
                              (_tl82098227_ (##cdr _e82078222_)))
                          (if (gx#stx-pair? _tl82098227_)
                              (let ((_e82108230_ (gx#syntax-e _tl82098227_)))
                                (let ((_hd82118233_ (##car _e82108230_))
                                      (_tl82128235_ (##cdr _e82108230_)))
                                  (let ((_path8238_ _hd82118233_))
                                    (if (gx#stx-null? _tl82128235_)
                                        (if (gx#stx-string? _path8238_)
                                            (let ((_rpath8243_
                                                   (let ((_$e8240_
                                                          _rpath8203_))
                                                     (if _$e8240_
                                                         _$e8240_
                                                         (gx#core-resolve-path__%
                                                          _path8238_
                                                          (gx#stx-source
                                                           _stx8202_))))))
                                              (if (member _rpath8243_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx8202_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath8243_))
                                                    (gx#stx-source
                                                     _stx8202_)))))
                                            (_E82068218_))
                                        (_E82068218_)))))
                              (_E82068218_))))
                      (_E82068218_)))))
          (_E82058245_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx8252_)
          (let ((_rpath8254_ '#f))
            (gx#core-expand-include%__% _stx8252_ _rpath8254_))))
      (define gx#core-expand-include%
        (lambda _g9285_
          (let ((_g9284_ (length _g9285_)))
            (cond ((##fx= _g9284_ 1)
                   (apply gx#core-expand-include%__0 _g9285_))
                  ((##fx= _g9284_ 2)
                   (apply gx#core-expand-include%__% _g9285_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g9285_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K8171_ _stx8172_ _method8173_)
        (if (procedure? _K8171_)
            (let ((_$e8175_ (gx#stx-source _stx8172_)))
              (if _$e8175_
                  ((lambda (_g81778179_)
                     (gx#stx-wrap-source (_K8171_ _stx8172_) _g81778179_))
                   _$e8175_)
                  (_K8171_ _stx8172_)))
            (let ((_$e8182_ (bound-method-ref _K8171_ _method8173_)))
              (if _$e8182_
                  ((lambda (_g81848186_)
                     (gx#core-apply-expander__%
                      _g81848186_
                      _stx8172_
                      _method8173_))
                   _$e8182_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx8172_
                   _method8173_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K8192_ _stx8193_)
          (let ((_method8195_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K8192_ _stx8193_ _method8195_))))
      (define gx#core-apply-expander
        (lambda _g9287_
          (let ((_g9286_ (length _g9287_)))
            (cond ((##fx= _g9286_ 2) (apply gx#core-apply-expander__0 _g9287_))
                  ((##fx= _g9286_ 3) (apply gx#core-apply-expander__% _g9287_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g9287_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self8167_ _stx8168_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx8168_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self8020_ _stx8021_)
      (let* ((_self80228028_ _self8020_)
             (_E80248032_
              (lambda () (error '"No clause matching" _self80228028_)))
             (_K80258037_
              (lambda (_K8035_)
                (gx#core-apply-expander__0 _K8035_ _stx8021_))))
        (if (##structure-instance-of? _self80228028_ 'gx#core-macro::t)
            (let* ((_e80268040_ (##vector-ref _self80228028_ '1))
                   (_K8043_ _e80268040_))
              (_K80258037_ _K8043_))
            (_E80248032_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self7873_ _stx7874_)
      (if (gx#sealed-syntax? _stx7874_)
          _stx7874_
          (let* ((_self78757881_ _self7873_)
                 (_E78777885_
                  (lambda () (error '"No clause matching" _self78757881_)))
                 (_K78787890_
                  (lambda (_K7888_)
                    (gx#core-apply-expander__0 _K7888_ _stx7874_))))
            (if (##structure-instance-of? _self78757881_ 'gx#core-expander::t)
                (let* ((_e78797893_ (##vector-ref _self78757881_ '1))
                       (_K7896_ _e78797893_))
                  (_K78787890_ _K7896_))
                (_E78777885_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self7735_ _stx7736_ _top?7737_)
        (if (_top?7737_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self7735_ _stx7736_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx7736_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self7742_ _stx7743_)
          (let ((_top?7745_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self7742_
             _stx7743_
             _top?7745_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g9289_
          (let ((_g9288_ (length _g9289_)))
            (cond ((##fx= _g9288_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g9289_))
                  ((##fx= _g9288_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g9289_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g9289_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self7609_ _stx7610_)
      (gx#top-special-form::apply-macro-expander__%
       _self7609_
       _stx7610_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self7434_ _stx7435_)
      (let* ((_self74367442_ _self7434_)
             (_E74387446_
              (lambda () (error '"No clause matching" _self74367442_)))
             (_K74397479_
              (lambda (_id7449_)
                (let* ((_e74507457_ _stx7435_)
                       (_E74527461_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e74507457_)))
                       (_E74517475_
                        (lambda ()
                          (if (gx#stx-pair? _e74507457_)
                              (let ((_e74537465_ (gx#syntax-e _e74507457_)))
                                (let ((_hd74547468_ (##car _e74537465_))
                                      (_tl74557470_ (##cdr _e74537465_)))
                                  (let ((_body7473_ _tl74557470_))
                                    (if '#t
                                        (gx#core-cons _id7449_ _body7473_)
                                        (_E74527461_)))))
                              (_E74527461_)))))
                  (_E74517475_)))))
        (if (##structure-instance-of?
             _self74367442_
             'gx#rename-macro-expander::t)
            (let* ((_e74407482_ (##vector-ref _self74367442_ '1))
                   (_id7485_ _e74407482_))
              (_K74397479_ _id7485_))
            (_E74387446_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self7260_ _stx7261_ _method7262_)
        (let* ((_self72637271_ _self7260_)
               (_E72657275_
                (lambda () (error '"No clause matching" _self72637271_)))
               (_K72667282_
                (lambda (_phi7278_ _ctx7279_ _K7280_)
                  (gx#core-apply-user-macro
                   _K7280_
                   _stx7261_
                   _ctx7279_
                   _phi7278_
                   _method7262_))))
          (if (##structure-instance-of? _self72637271_ 'gx#macro-expander::t)
              (let* ((_e72677285_ (##vector-ref _self72637271_ '1))
                     (_K7288_ _e72677285_)
                     (_e72687290_ (##vector-ref _self72637271_ '2))
                     (_ctx7293_ _e72687290_)
                     (_e72697295_ (##vector-ref _self72637271_ '3))
                     (_phi7298_ _e72697295_))
                (_K72667282_ _phi7298_ _ctx7293_ _K7288_))
              (_E72657275_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self7303_ _stx7304_)
          (let ((_method7306_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self7303_
             _stx7304_
             _method7306_))))
      (define gx#core-apply-user-expander
        (lambda _g9291_
          (let ((_g9290_ (length _g9291_)))
            (cond ((##fx= _g9290_ 2)
                   (apply gx#core-apply-user-expander__0 _g9291_))
                  ((##fx= _g9290_ 3)
                   (apply gx#core-apply-user-expander__% _g9291_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g9291_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K7250_ _stx7251_ _ctx7252_ _phi7253_ _method7254_)
      (let ((_mark7256_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx7252_
              _phi7253_
              _stx7251_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K7250_
             (gx#stx-apply-mark _stx7251_ _mark7256_)
             _method7254_)
            _mark7256_))
         gx#current-expander-marks
         (cons _mark7256_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx7101_ _phi7102_ _ctx7103_)
        (let _lp7105_ ((_bind7107_
                        (gx#core-resolve-identifier__%
                         _stx7101_
                         _phi7102_
                         _ctx7103_)))
          (if (##structure-direct-instance-of?
               _bind7107_
               'gx#import-binding::t)
              (_lp7105_
               (##direct-structure-ref _bind7107_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind7107_
                   'gx#alias-binding::t)
                  (_lp7105_
                   (gx#core-resolve-identifier__%
                    (##direct-structure-ref
                     _bind7107_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi7102_
                    _ctx7103_))
                  _bind7107_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx7112_)
          (let* ((_phi7114_ (gx#current-expander-phi))
                 (_ctx7116_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7112_ _phi7114_ _ctx7116_))))
      (define gx#resolve-identifier__1
        (lambda (_stx7118_ _phi7119_)
          (let ((_ctx7121_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7118_ _phi7119_ _ctx7121_))))
      (define gx#resolve-identifier
        (lambda _g9293_
          (let ((_g9292_ (length _g9293_)))
            (cond ((##fx= _g9292_ 1) (apply gx#resolve-identifier__0 _g9293_))
                  ((##fx= _g9292_ 2) (apply gx#resolve-identifier__1 _g9293_))
                  ((##fx= _g9292_ 3) (apply gx#resolve-identifier__% _g9293_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g9293_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx7059_ _val7060_ _rebind?7061_ _phi7062_ _ctx7063_)
        (let ((_rebind?7065_
               (if (not _rebind?7061_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?7061_) _rebind?7061_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx7059_)
           _val7060_
           _rebind?7065_
           _phi7062_
           _ctx7063_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx7070_ _val7071_)
          (let* ((_rebind?7073_ '#f)
                 (_phi7075_ (gx#current-expander-phi))
                 (_ctx7077_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7070_
             _val7071_
             _rebind?7073_
             _phi7075_
             _ctx7077_))))
      (define gx#bind-identifier!__1
        (lambda (_stx7079_ _val7080_ _rebind?7081_)
          (let* ((_phi7083_ (gx#current-expander-phi))
                 (_ctx7085_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7079_
             _val7080_
             _rebind?7081_
             _phi7083_
             _ctx7085_))))
      (define gx#bind-identifier!__2
        (lambda (_stx7087_ _val7088_ _rebind?7089_ _phi7090_)
          (let ((_ctx7092_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7087_
             _val7088_
             _rebind?7089_
             _phi7090_
             _ctx7092_))))
      (define gx#bind-identifier!
        (lambda _g9295_
          (let ((_g9294_ (length _g9295_)))
            (cond ((##fx= _g9294_ 2) (apply gx#bind-identifier!__0 _g9295_))
                  ((##fx= _g9294_ 3) (apply gx#bind-identifier!__1 _g9295_))
                  ((##fx= _g9294_ 4) (apply gx#bind-identifier!__2 _g9295_))
                  ((##fx= _g9294_ 5) (apply gx#bind-identifier!__% _g9295_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g9295_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx7031_ _phi7032_ _ctx7033_)
        (let _lp7035_ ((_e7037_ _stx7031_)
                       (_marks7038_ (gx#current-expander-marks)))
          (if (symbol? _e7037_)
              (gx#core-resolve-binding
               _e7037_
               _phi7032_
               _phi7032_
               _ctx7033_
               (reverse _marks7038_))
              (if (gx#identifier-quote? _e7037_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e7037_ '1 AST::t '#f)
                   _phi7032_
                   '0
                   (##unchecked-structure-ref
                    _e7037_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e7037_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e7037_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e7037_ '1 AST::t '#f)
                       _phi7032_
                       _phi7032_
                       _ctx7033_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e7037_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks7038_))
                      (if (##structure-direct-instance-of?
                           _e7037_
                           'gx#syntax-wrap::t)
                          (_lp7035_
                           (##unchecked-structure-ref _e7037_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e7037_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks7038_))
                          (if (##structure-instance-of? _e7037_ 'gerbil#AST::t)
                              (_lp7035_
                               (##unchecked-structure-ref
                                _e7037_
                                '1
                                AST::t
                                '#f)
                               _marks7038_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx7031_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx7043_)
          (let* ((_phi7045_ (gx#current-expander-phi))
                 (_ctx7047_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx7043_ _phi7045_ _ctx7047_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx7049_ _phi7050_)
          (let ((_ctx7052_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx7049_ _phi7050_ _ctx7052_))))
      (define gx#core-resolve-identifier
        (lambda _g9297_
          (let ((_g9296_ (length _g9297_)))
            (cond ((##fx= _g9296_ 1)
                   (apply gx#core-resolve-identifier__0 _g9297_))
                  ((##fx= _g9296_ 2)
                   (apply gx#core-resolve-identifier__1 _g9297_))
                  ((##fx= _g9296_ 3)
                   (apply gx#core-resolve-identifier__% _g9297_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g9297_))))))))
  (define gx#core-resolve-binding
    (lambda (_id6944_ _phi6945_ _src-phi6946_ _ctx6947_ _marks6948_)
      (begin
        (declare (not safe))
        (letrec ((_resolve6950_
                  (lambda (_ctx7018_ _src-phi7019_ _key7020_)
                    (let _lp7022_ ((_ctx7024_
                                    (gx#core-context-shift
                                     _ctx7018_
                                     _phi6945_))
                                   (_dphi7025_ (fx- _phi6945_ _src-phi7019_)))
                      (let ((_$e7027_
                             (gx#core-context-resolve _ctx7024_ _key7020_)))
                        (if _$e7027_
                            (values _$e7027_)
                            (if (fxzero? _dphi7025_)
                                '#f
                                (if (fxpositive? _dphi7025_)
                                    (_lp7022_
                                     (gx#core-context-shift _ctx7024_ '-1)
                                     (fx- _dphi7025_ '1))
                                    (if (fxnegative? _dphi7025_)
                                        (_lp7022_
                                         (gx#core-context-shift _ctx7024_ '1)
                                         (fx+ _dphi7025_ '1))
                                        '#!void)))))))))
          (let _lp6952_ ((_ctx6954_ _ctx6947_)
                         (_src-phi6955_ _src-phi6946_)
                         (_rest6956_ _marks6948_))
            (let* ((_rest69576965_ _rest6956_)
                   (_else69596973_
                    (lambda ()
                      (_resolve6950_ _ctx6954_ _src-phi6955_ _id6944_)))
                   (_K69617006_
                    (lambda (_rest6976_ _hd6977_)
                      (let* ((_hd69786984_ _hd6977_)
                             (_E69806988_
                              (lambda ()
                                (error '"No clause matching" _hd69786984_)))
                             (_K69816998_
                              (lambda (_subst6991_)
                                (let ((_$e6995_
                                       (let ((_key6993_
                                              (if _subst6991_
                                                  (table-ref
                                                   _subst6991_
                                                   _id6944_
                                                   '#f)
                                                  '#f)))
                                         (if _key6993_
                                             (_resolve6950_
                                              _ctx6954_
                                              _src-phi6955_
                                              _key6993_)
                                             '#f))))
                                  (if _$e6995_
                                      _$e6995_
                                      (_lp6952_
                                       (##unchecked-structure-ref
                                        _hd6977_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd6977_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest6976_))))))
                        (if (##structure-instance-of?
                             _hd69786984_
                             'gx#expander-mark::t)
                            (let* ((_e69827001_ (##vector-ref _hd69786984_ '1))
                                   (_subst7004_ _e69827001_))
                              (_K69816998_ _subst7004_))
                            (_E69806988_))))))
              (if (##pair? _rest69576965_)
                  (let ((_hd69627009_ (##car _rest69576965_))
                        (_tl69637011_ (##cdr _rest69576965_)))
                    (let* ((_hd7014_ _hd69627009_) (_rest7016_ _tl69637011_))
                      (_K69617006_ _rest7016_ _hd7014_)))
                  (_else69596973_))))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key6820_ _val6821_ _rebind?6822_ _phi6823_ _ctx6824_)
        (letrec ((_update-binding6826_
                  (lambda (_xval6897_)
                    (if (let ((_$e6899_
                               (_rebind?6822_ _ctx6824_ _xval6897_ _val6821_)))
                          (if _$e6899_
                              _$e6899_
                              (let ((_$e6905_
                                     (if (##structure-direct-instance-of?
                                          _xval6897_
                                          'gx#import-binding::t)
                                         (let ((_$e6902_
                                                (##direct-structure-ref
                                                 _xval6897_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e6902_
                                               _$e6902_
                                               (if (##structure-instance-of?
                                                    _val6821_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val6821_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e6905_
                                    _$e6905_
                                    (if (##structure-instance-of?
                                         _xval6897_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val6821_
                                             'gx#runtime-binding::t)
                                            (eq? (##unchecked-structure-ref
                                                  _val6821_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##unchecked-structure-ref
                                                  _xval6897_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val6821_
                        (if (if (##structure-direct-instance-of?
                                 _val6821_
                                 'gx#import-binding::t)
                                (let ((_$e6908_
                                       (##direct-structure-ref
                                        _val6821_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e6908_
                                      _$e6908_
                                      (if (##structure-instance-of?
                                           _xval6897_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val6821_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval6897_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval6897_
                            (if (if (##structure-direct-instance-of?
                                     _val6821_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval6897_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key6820_
                                 (cons (##unchecked-structure-ref
                                        _val6821_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val6821_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval6897_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval6897_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval6897_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval6897_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key6820_
                                 _val6821_
                                 _xval6897_))))))
                 (_gensubst6827_
                  (lambda (_subst6892_ _id6893_)
                    (let ((_eid6895_
                           (gensym (if (uninterned-symbol? _id6893_)
                                       '%
                                       _id6893_))))
                      (begin
                        (table-set! _subst6892_ _id6893_ _eid6895_)
                        _eid6895_))))
                 (_subst!6828_
                  (lambda (_key6830_)
                    (let* ((_key68316839_ _key6830_)
                           (_else68336847_ (lambda () _key6830_))
                           (_K68356880_
                            (lambda (_mark6850_ _id6851_)
                              (let* ((_mark68526858_ _mark6850_)
                                     (_E68546862_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark68526858_)))
                                     (_K68556872_
                                      (lambda (_subst6865_)
                                        (if (not _subst6865_)
                                            (let ((_subst6867_
                                                   (make-table 'test: eq?)))
                                              (begin
                                                (##unchecked-structure-set!
                                                 _mark6850_
                                                 _subst6867_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst6827_
                                                 _subst6867_
                                                 _id6851_)))
                                            (let ((_$e6869_
                                                   (table-ref
                                                    _subst6865_
                                                    _id6851_
                                                    '#f)))
                                              (if _$e6869_
                                                  (values _$e6869_)
                                                  (_gensubst6827_
                                                   _subst6865_
                                                   _id6851_)))))))
                                (if (##structure-instance-of?
                                     _mark68526858_
                                     'gx#expander-mark::t)
                                    (let* ((_e68566875_
                                            (##vector-ref _mark68526858_ '1))
                                           (_subst6878_ _e68566875_))
                                      (_K68556872_ _subst6878_))
                                    (_E68546862_))))))
                      (if (##pair? _key68316839_)
                          (let ((_hd68366883_ (##car _key68316839_))
                                (_tl68376885_ (##cdr _key68316839_)))
                            (let* ((_id6888_ _hd68366883_)
                                   (_mark6890_ _tl68376885_))
                              (_K68356880_ _mark6890_ _id6888_)))
                          (_else68336847_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx6824_ _phi6823_)
           (_subst!6828_ _key6820_)
           _val6821_
           _update-binding6826_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key6914_ _val6915_)
          (let* ((_rebind?6917_ false)
                 (_phi6919_ (gx#current-expander-phi))
                 (_ctx6921_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6914_
             _val6915_
             _rebind?6917_
             _phi6919_
             _ctx6921_))))
      (define gx#core-bind!__1
        (lambda (_key6923_ _val6924_ _rebind?6925_)
          (let* ((_phi6927_ (gx#current-expander-phi))
                 (_ctx6929_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6923_
             _val6924_
             _rebind?6925_
             _phi6927_
             _ctx6929_))))
      (define gx#core-bind!__2
        (lambda (_key6931_ _val6932_ _rebind?6933_ _phi6934_)
          (let ((_ctx6936_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6931_
             _val6932_
             _rebind?6933_
             _phi6934_
             _ctx6936_))))
      (define gx#core-bind!
        (lambda _g9299_
          (let ((_g9298_ (length _g9299_)))
            (cond ((##fx= _g9298_ 2) (apply gx#core-bind!__0 _g9299_))
                  ((##fx= _g9298_ 3) (apply gx#core-bind!__1 _g9299_))
                  ((##fx= _g9298_ 4) (apply gx#core-bind!__2 _g9299_))
                  ((##fx= _g9298_ 5) (apply gx#core-bind!__% _g9299_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g9299_))))))))
  (define gx#core-identifier-key
    (lambda (_stx6754_)
      (if (symbol? _stx6754_)
          (let* ((_g67556763_ (gx#current-expander-marks))
                 (_else67576771_ (lambda () _stx6754_))
                 (_K67596776_ (lambda (_hd6774_) (cons _stx6754_ _hd6774_))))
            (if (##pair? _g67556763_)
                (let* ((_hd67606779_ (##car _g67556763_))
                       (_hd6782_ _hd67606779_))
                  (_K67596776_ _hd6782_))
                (_else67576771_)))
          (if (gx#identifier? _stx6754_)
              (let* ((_id6784_ (gx#syntax-local-unwrap _stx6754_))
                     (_eid6786_ (gx#stx-e _id6784_))
                     (_marks6788_ (gx#stx-identifier-marks _id6784_)))
                (let* ((_marks67906798_ _marks6788_)
                       (_else67926806_ (lambda () _eid6786_))
                       (_K67946811_
                        (lambda (_hd6809_) (cons _eid6786_ _hd6809_))))
                  (if (##pair? _marks67906798_)
                      (let* ((_hd67956814_ (##car _marks67906798_))
                             (_hd6817_ _hd67956814_))
                        (_K67946811_ _hd6817_))
                      (_else67926806_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx6754_)))))
  (define gx#core-context-shift
    (lambda (_ctx6699_ _phi6700_)
      (begin
        (declare (not safe))
        (letrec ((_make-phi6702_
                  (lambda (_super6752_)
                    (let ((__obj9270 (make-object gx#phi-context::t '5)))
                      (begin
                        (gx#phi-context:::init!__%
                         __obj9270
                         (gensym 'phi)
                         _super6752_)
                        __obj9270))))
                 (_make-phi/up6703_
                  (lambda (_ctx6747_ _super6748_)
                    (let ((_ctx+16750_ (_make-phi6702_ _super6748_)))
                      (begin
                        (##unchecked-structure-set!
                         _ctx6747_
                         _ctx+16750_
                         '4
                         gx#phi-context::t
                         '#f)
                        (##unchecked-structure-set!
                         _ctx+16750_
                         _ctx6747_
                         '5
                         gx#phi-context::t
                         '#f)
                        _ctx+16750_))))
                 (_make-phi/down6704_
                  (lambda (_ctx6742_ _super6743_)
                    (let ((_ctx-16745_ (_make-phi6702_ _super6743_)))
                      (begin
                        (##unchecked-structure-set!
                         _ctx-16745_
                         _ctx6742_
                         '4
                         gx#phi-context::t
                         '#f)
                        (##unchecked-structure-set!
                         _ctx6742_
                         _ctx-16745_
                         '5
                         gx#phi-context::t
                         '#f)
                        _ctx-16745_))))
                 (_shift6705_
                  (lambda (_ctx6726_
                           _delta6727_
                           _make-delta-context6728_
                           _phi6729_
                           _K6730_)
                    (let ((_$e6732_
                           (##unchecked-structure-ref
                            _ctx6726_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e6732_
                          ((lambda (_super6735_)
                             (let* ((_super6737_
                                     (_K6730_ _super6735_ _delta6727_))
                                    (_ctx+d6739_
                                     (_make-delta-context6728_
                                      _ctx6726_
                                      _super6737_)))
                               (_K6730_ _ctx+d6739_
                                        (fx- _phi6729_ _delta6727_))))
                           _$e6732_)
                          (error '"Bad context" _ctx6726_))))))
          (let _K6707_ ((_ctx6709_ _ctx6699_) (_phi6710_ _phi6700_))
            (if (fxzero? _phi6710_)
                _ctx6709_
                (if (##structure-instance-of? _ctx6709_ 'gx#context-phi::t)
                    (if (fxpositive? _phi6710_)
                        (let ((_$e6712_
                               (##unchecked-structure-ref
                                _ctx6709_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e6712_
                              ((lambda (_g67146716_)
                                 (_K6707_ _g67146716_ (fx- _phi6710_ '1)))
                               _$e6712_)
                              (_shift6705_
                               _ctx6709_
                               '1
                               _make-phi/up6703_
                               _phi6710_
                               _K6707_)))
                        (let ((_$e6719_
                               (##unchecked-structure-ref
                                _ctx6709_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e6719_
                              ((lambda (_g67216723_)
                                 (_K6707_ _g67216723_ (fx+ _phi6710_ '1)))
                               _$e6719_)
                              (_shift6705_
                               _ctx6709_
                               '-1
                               _make-phi/down6704_
                               _phi6710_
                               _K6707_))))
                    _ctx6709_)))))))
  (define gx#core-context-get
    (lambda (_ctx6696_ _key6697_)
      (table-ref
       (##unchecked-structure-ref _ctx6696_ '2 gx#expander-context::t '#f)
       _key6697_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx6692_ _key6693_ _val6694_)
      (table-set!
       (##unchecked-structure-ref _ctx6692_ '2 gx#expander-context::t '#f)
       _key6693_
       _val6694_)))
  (define gx#core-context-resolve
    (lambda (_ctx6679_ _key6680_)
      (let _lp6682_ ((_ctx6684_ _ctx6679_))
        (let ((_$e6686_ (gx#core-context-get _ctx6684_ _key6680_)))
          (if _$e6686_
              (values _$e6686_)
              (let ((_$e6689_
                     (if (##structure-instance-of?
                          _ctx6684_
                          'gx#context-phi::t)
                         (##unchecked-structure-ref
                          _ctx6684_
                          '3
                          gx#phi-context::t
                          '#f)
                         '#f)))
                (if _$e6689_ (_lp6682_ _$e6689_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx6669_ _key6670_ _val6671_ _rebind6672_)
      (let ((_$e6674_ (gx#core-context-get _ctx6669_ _key6670_)))
        (if _$e6674_
            ((lambda (_xval6677_)
               (gx#core-context-put!
                _ctx6669_
                _key6670_
                (_rebind6672_ _xval6677_)))
             _$e6674_)
            (gx#core-context-put! _ctx6669_ _key6670_ _val6671_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx6647_ _stop?6648_)
        (let _lp6650_ ((_ctx6652_ _ctx6647_))
          (if (_stop?6648_ _ctx6652_)
              _ctx6652_
              (if (##structure-instance-of? _ctx6652_ 'gx#context-phi::t)
                  (_lp6650_
                   (##unchecked-structure-ref
                    _ctx6652_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx6658_ (gx#current-expander-context))
                 (_stop?6660_ gx#top-context?))
            (gx#core-context-top__% _ctx6658_ _stop?6660_))))
      (define gx#core-context-top__1
        (lambda (_ctx6662_)
          (let ((_stop?6664_ gx#top-context?))
            (gx#core-context-top__% _ctx6662_ _stop?6664_))))
      (define gx#core-context-top
        (lambda _g9301_
          (let ((_g9300_ (length _g9301_)))
            (cond ((##fx= _g9300_ 0) (apply gx#core-context-top__0 _g9301_))
                  ((##fx= _g9300_ 1) (apply gx#core-context-top__1 _g9301_))
                  ((##fx= _g9300_ 2) (apply gx#core-context-top__% _g9301_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g9301_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx6632_)
        (let _lp6634_ ((_ctx6636_ _ctx6632_))
          (if (##structure-instance-of? _ctx6636_ 'gx#context-phi::t)
              (_lp6634_ (##structure-ref _ctx6636_ '3 gx#phi-context::t '#f))
              _ctx6636_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx6642_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx6642_))))
      (define gx#core-context-root
        (lambda _g9303_
          (let ((_g9302_ (length _g9303_)))
            (cond ((##fx= _g9302_ 0) (apply gx#core-context-root__0 _g9303_))
                  ((##fx= _g9302_ 1) (apply gx#core-context-root__% _g9303_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g9303_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx6616_ . __66136617_)
        (if (##structure-instance-of? _ctx6616_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx6616_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx6616_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx6624_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx6624_))))
      (define gx#core-context-rebind?
        (lambda _g9305_
          (let ((_g9304_ (length _g9305_)))
            (cond ((##fx= _g9304_ 0)
                   (apply gx#core-context-rebind?__0 _g9305_))
                  ((##fx= _g9304_ 1)
                   (apply gx#core-context-rebind?__% _g9305_))
                  ((##fx>= _g9304_ 1)
                   (apply gx#core-context-rebind?__% _g9305_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g9305_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx6599_)
        (let ((_$e6601_ (gx#core-context-top__1 _ctx6599_)))
          (if _$e6601_
              ((lambda (_ctx6604_)
                 (if (##structure-instance-of? _ctx6604_ 'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx6604_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e6601_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx6610_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx6610_))))
      (define gx#core-context-namespace
        (lambda _g9307_
          (let ((_g9306_ (length _g9307_)))
            (cond ((##fx= _g9306_ 0)
                   (apply gx#core-context-namespace__0 _g9307_))
                  ((##fx= _g9306_ 1)
                   (apply gx#core-context-namespace__% _g9307_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g9307_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind6585_ _is?6586_)
        (if (##structure-direct-instance-of? _bind6585_ 'gx#syntax-binding::t)
            (_is?6586_
             (##direct-structure-ref _bind6585_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind6591_)
          (let ((_is?6593_ gx#expander?))
            (gx#expander-binding?__% _bind6591_ _is?6593_))))
      (define gx#expander-binding?
        (lambda _g9309_
          (let ((_g9308_ (length _g9309_)))
            (cond ((##fx= _g9308_ 1) (apply gx#expander-binding?__0 _g9309_))
                  ((##fx= _g9308_ 2) (apply gx#expander-binding?__% _g9309_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g9309_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind6582_)
      (gx#expander-binding?__% _bind6582_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind6580_)
      (gx#expander-binding?__% _bind6580_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind6574_)
      (letrec ((_direct-special-form?6576_
                (lambda (_obj6578_)
                  (direct-struct-instance? gx#special-form::t _obj6578_))))
        (gx#expander-binding?__% _bind6574_ _direct-special-form?6576_))))
  (define gx#special-form-binding?
    (lambda (_bind6572_)
      (gx#expander-binding?__% _bind6572_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind6563_)
      (letrec ((_feature?6565_
                (lambda (_e6567_)
                  (let ((_$e6569_
                         (##structure-instance-of?
                          _e6567_
                          'gx#feature-expander::t)))
                    (if _$e6569_
                        _$e6569_
                        (##structure-instance-of?
                         _e6567_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind6563_ _feature?6565_))))
  (define gx#private-feature-binding?
    (lambda (_bind6561_)
      (gx#expander-binding?__% _bind6561_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id6548_ _bound?6549_)
        (if (gx#identifier? _id6548_)
            (_bound?6549_ (gx#resolve-identifier__0 _id6548_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id6554_)
          (let ((_bound?6556_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id6554_ _bound?6556_))))
      (define gx#core-bound-identifier?
        (lambda _g9311_
          (let ((_g9310_ (length _g9311_)))
            (cond ((##fx= _g9310_ 1)
                   (apply gx#core-bound-identifier?__0 _g9311_))
                  ((##fx= _g9310_ 2)
                   (apply gx#core-bound-identifier?__% _g9311_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g9311_))))))))
  (define gx#core-identifier=?
    (lambda (_x6538_ _y6539_)
      (letrec ((_y=?6541_
                (lambda (_xid6545_)
                  ((if (list? _y6539_) memq eq?) _xid6545_ _y6539_))))
        (let ((_bind6543_ (gx#resolve-identifier__0 _x6538_)))
          (if (##structure-instance-of? _bind6543_ 'gx#binding::t)
              (_y=?6541_
               (##unchecked-structure-ref _bind6543_ '1 gx#binding::t '#f))
              (_y=?6541_ (gx#stx-e _x6538_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e6536_)
      (if (interned-symbol? _e6536_)
          (string-index (symbol->string _e6536_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx6491_ _src6492_ _ctx6493_ _marks6494_)
        (let ((_$e6496_ (gx#sealed-syntax-unwrap _stx6491_)))
          (if _$e6496_
              (values _$e6496_)
              (if (gx#identifier? _stx6491_)
                  (let ((_id6499_ (gx#syntax-local-unwrap _stx6491_)))
                    (##structure
                     gx#syntax-quote::t
                     (gx#stx-e _id6499_)
                     (let ((_$e6501_ (gx#stx-source _id6499_)))
                       (if _$e6501_ _$e6501_ _src6492_))
                     _ctx6493_
                     (##unchecked-structure-ref
                      _id6499_
                      '3
                      gx#identifier-wrap::t
                      '#f)))
                  (if (gx#stx-datum? _stx6491_)
                      (gx#stx-e _stx6491_)
                      (##structure
                       gx#syntax-quote::t
                       _stx6491_
                       (let ((_$e6504_ (gx#stx-source _stx6491_)))
                         (if _$e6504_ _$e6504_ _src6492_))
                       _ctx6493_
                       (reverse _marks6494_))))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx6510_)
          (let* ((_src6512_ '#f)
                 (_ctx6514_ (gx#current-expander-context))
                 (_marks6516_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6510_
             _src6512_
             _ctx6514_
             _marks6516_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx6518_ _src6519_)
          (let* ((_ctx6521_ (gx#current-expander-context))
                 (_marks6523_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6518_
             _src6519_
             _ctx6521_
             _marks6523_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx6525_ _src6526_ _ctx6527_)
          (let ((_marks6529_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6525_
             _src6526_
             _ctx6527_
             _marks6529_))))
      (define gx#core-quote-syntax
        (lambda _g9313_
          (let ((_g9312_ (length _g9313_)))
            (cond ((##fx= _g9312_ 1) (apply gx#core-quote-syntax__0 _g9313_))
                  ((##fx= _g9312_ 2) (apply gx#core-quote-syntax__1 _g9313_))
                  ((##fx= _g9312_ 3) (apply gx#core-quote-syntax__2 _g9313_))
                  ((##fx= _g9312_ 4) (apply gx#core-quote-syntax__% _g9313_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g9313_))))))))
  (define gx#core-cons
    (lambda (_hd6487_ _tl6488_)
      (cons (gx#core-quote-syntax__0 _hd6487_) _tl6488_)))
  (define gx#core-list
    (lambda (_hd6484_ . _rest6485_)
      (cons (gx#core-quote-syntax__0 _hd6484_) _rest6485_)))
  (define gx#core-cons*
    (lambda (_hd6481_ . _rest6482_)
      (apply cons* (gx#core-quote-syntax__0 _hd6481_) _rest6482_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path6455_ _rel6456_)
        (let ((_path6468_ (gx#stx-e _stx-path6455_))
              (_reldir6469_
               (let _lp6458_ ((_relsrc6460_
                               (let ((_$e6465_ (gx#stx-source _stx-path6455_)))
                                 (if _$e6465_ _$e6465_ _rel6456_))))
                 (if (##structure-instance-of? _relsrc6460_ 'gerbil#AST::t)
                     (_lp6458_
                      (let ((_$e6462_ (gx#stx-source _relsrc6460_)))
                        (if _$e6462_ _$e6462_ (gx#stx-e _relsrc6460_))))
                     (if (source-location-path? _relsrc6460_)
                         (path-directory (source-location-path _relsrc6460_))
                         (if (string? _relsrc6460_)
                             (path-directory _relsrc6460_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path6468_ (path-normalize _reldir6469_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path6474_)
          (let ((_rel6476_ '#f))
            (gx#core-resolve-path__% _stx-path6474_ _rel6476_))))
      (define gx#core-resolve-path
        (lambda _g9315_
          (let ((_g9314_ (length _g9315_)))
            (cond ((##fx= _g9314_ 1) (apply gx#core-resolve-path__0 _g9315_))
                  ((##fx= _g9314_ 2) (apply gx#core-resolve-path__% _g9315_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g9315_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr6411_ _ctx6412_)
        (let* ((_repr64136420_ _repr6411_)
               (_E64156424_
                (lambda () (error '"No clause matching" _repr64136420_)))
               (_K64166432_
                (lambda (_subs6427_ _phi6428_)
                  (let ((_subst6430_
                         (if (not (null? _subs6427_))
                             (list->table _subs6427_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst6430_
                     _ctx6412_
                     _phi6428_
                     '#f)))))
          (if (##pair? _repr64136420_)
              (let ((_hd64176435_ (##car _repr64136420_))
                    (_tl64186437_ (##cdr _repr64136420_)))
                (let* ((_phi6440_ _hd64176435_) (_subs6442_ _tl64186437_))
                  (_K64166432_ _subs6442_ _phi6440_)))
              (_E64156424_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr6447_)
          (let ((_ctx6449_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr6447_ _ctx6449_))))
      (define gx#core-deserialize-mark
        (lambda _g9317_
          (let ((_g9316_ (length _g9317_)))
            (cond ((##fx= _g9316_ 1)
                   (apply gx#core-deserialize-mark__0 _g9317_))
                  ((##fx= _g9316_ 2)
                   (apply gx#core-deserialize-mark__% _g9317_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g9317_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx6408_) (gx#stx-rewrap _stx6408_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx6406_)
      (gx#stx-unwrap__% _stx6406_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx6376_)
      (let* ((_g63776385_ (gx#current-expander-marks))
             (_else63796393_ (lambda () _stx6376_))
             (_K63816398_
              (lambda (_hd6396_) (gx#stx-apply-mark _stx6376_ _hd6396_))))
        (if (##pair? _g63776385_)
            (let* ((_hd63826401_ (##car _g63776385_)) (_hd6404_ _hd63826401_))
              (_K63816398_ _hd6404_))
            (_else63796393_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx6361_ _E6362_)
        (let ((_bind6364_ (gx#resolve-identifier__0 _stx6361_)))
          (if (##structure-direct-instance-of?
               _bind6364_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind6364_ '4 gx#syntax-binding::t '#f)
              (_E6362_ _stx6361_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx6369_)
          (let ((_E6371_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx6369_ _E6371_))))
      (define gx#syntax-local-e
        (lambda _g9319_
          (let ((_g9318_ (length _g9319_)))
            (cond ((##fx= _g9318_ 1) (apply gx#syntax-local-e__0 _g9319_))
                  ((##fx= _g9318_ 2) (apply gx#syntax-local-e__% _g9319_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g9319_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx6345_ _E6346_)
        (let ((_e6348_ (gx#syntax-local-e__% _stx6345_ _E6346_)))
          (if (##structure-instance-of? _e6348_ 'gx#expander::t)
              (##structure-ref _e6348_ '1 gx#expander::t '#f)
              _e6348_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx6353_)
          (let ((_E6355_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx6353_ _E6355_))))
      (define gx#syntax-local-value
        (lambda _g9321_
          (let ((_g9320_ (length _g9321_)))
            (cond ((##fx= _g9320_ 1) (apply gx#syntax-local-value__0 _g9321_))
                  ((##fx= _g9320_ 2) (apply gx#syntax-local-value__% _g9321_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g9321_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx6342_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx6342_))))
