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
    (lambda _$args9262_
      (apply make-struct-instance gx#expander-context::t _$args9262_)))
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
    (lambda _$args9259_
      (apply make-struct-instance gx#root-context::t _$args9259_)))
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
    (lambda _$args9256_
      (apply make-struct-instance gx#phi-context::t _$args9256_)))
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
    (lambda _$args9253_
      (apply make-struct-instance gx#top-context::t _$args9253_)))
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
    (lambda _$args9250_
      (apply make-struct-instance gx#module-context::t _$args9250_)))
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
    (lambda _$args9247_
      (apply make-struct-instance gx#prelude-context::t _$args9247_)))
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
    (lambda _$args9244_
      (apply make-struct-instance gx#local-context::t _$args9244_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self9228_ _id9229_ _super9230_)
        (struct-instance-init!
         _self9228_
         _id9229_
         (make-table 'test: eq?)
         _super9230_)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self9235_ _id9236_)
          (let ((_super9238_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self9235_ _id9236_ _super9238_))))
      (define gx#phi-context:::init!
        (lambda _g9275_
          (let ((_g9274_ (length _g9275_)))
            (cond ((##fx= _g9274_ 2) (apply gx#phi-context:::init!__0 _g9275_))
                  ((##fx= _g9274_ 3) (apply gx#phi-context:::init!__% _g9275_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g9275_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self9092_ _super9093_)
        (struct-instance-init!
         _self9092_
         (gensym 'L)
         (make-table 'test: eq?)
         _super9093_)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self9098_)
          (let ((_super9100_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self9098_ _super9100_))))
      (define gx#local-context:::init!
        (lambda _g9277_
          (let ((_g9276_ (length _g9277_)))
            (cond ((##fx= _g9276_ 1)
                   (apply gx#local-context:::init!__0 _g9277_))
                  ((##fx= _g9276_ 2)
                   (apply gx#local-context:::init!__% _g9277_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g9277_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args8966_
      (apply make-struct-instance gx#binding::t _$args8966_)))
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
    (lambda _$args8963_
      (apply make-struct-instance gx#runtime-binding::t _$args8963_)))
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
    (lambda _$args8960_
      (apply make-struct-instance gx#local-binding::t _$args8960_)))
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
    (lambda _$args8957_
      (apply make-struct-instance gx#top-binding::t _$args8957_)))
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
    (lambda _$args8954_
      (apply make-struct-instance gx#module-binding::t _$args8954_)))
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
    (lambda _$args8951_
      (apply make-struct-instance gx#extern-binding::t _$args8951_)))
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
    (lambda _$args8948_
      (apply make-struct-instance gx#syntax-binding::t _$args8948_)))
  (define gx#syntax-binding-e
    (make-struct-field-accessor gx#syntax-binding::t '0))
  (define gx#syntax-binding-e-set!
    (make-struct-field-mutator gx#syntax-binding::t '0))
  (define gx#&syntax-binding-e
    (make-struct-field-unchecked-accessor gx#syntax-binding::t '0))
  (define gx#&syntax-binding-e-set!
    (make-struct-field-unchecked-mutator gx#syntax-binding::t '0))
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
    (lambda _$args8945_
      (apply make-struct-instance gx#import-binding::t _$args8945_)))
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
  (define gx#&import-binding-e
    (make-struct-field-unchecked-accessor gx#import-binding::t '0))
  (define gx#&import-binding-context
    (make-struct-field-unchecked-accessor gx#import-binding::t '1))
  (define gx#&import-binding-weak?
    (make-struct-field-unchecked-accessor gx#import-binding::t '2))
  (define gx#&import-binding-e-set!
    (make-struct-field-unchecked-mutator gx#import-binding::t '0))
  (define gx#&import-binding-context-set!
    (make-struct-field-unchecked-mutator gx#import-binding::t '1))
  (define gx#&import-binding-weak?-set!
    (make-struct-field-unchecked-mutator gx#import-binding::t '2))
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
    (lambda _$args8942_
      (apply make-struct-instance gx#alias-binding::t _$args8942_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#&alias-binding-e
    (make-struct-field-unchecked-accessor gx#alias-binding::t '0))
  (define gx#&alias-binding-e-set!
    (make-struct-field-unchecked-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f '(e)))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args8939_
      (apply make-struct-instance gx#expander::t _$args8939_)))
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
    (lambda _$args8936_
      (apply make-struct-instance gx#core-expander::t _$args8936_)))
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
    (lambda _$args8933_
      (apply make-struct-instance gx#expression-form::t _$args8933_)))
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
    (lambda _$args8930_
      (apply make-struct-instance gx#special-form::t _$args8930_)))
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
    (lambda _$args8927_
      (apply make-struct-instance gx#definition-form::t _$args8927_)))
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
    (lambda _$args8924_
      (apply make-struct-instance gx#top-special-form::t _$args8924_)))
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
    (lambda _$args8921_
      (apply make-struct-instance gx#module-special-form::t _$args8921_)))
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
    (lambda _$args8918_
      (apply make-struct-instance gx#feature-expander::t _$args8918_)))
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
    (lambda _$args8915_
      (apply make-struct-instance gx#private-feature-expander::t _$args8915_)))
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
    (lambda _$args8912_
      (apply make-struct-instance gx#reserved-expander::t _$args8912_)))
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
    (lambda _$args8909_
      (apply make-struct-instance gx#macro-expander::t _$args8909_)))
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
    (lambda _$args8906_
      (apply make-struct-instance gx#rename-macro-expander::t _$args8906_)))
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
    (lambda _$args8903_
      (apply make-struct-instance gx#user-expander::t _$args8903_)))
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
    (lambda _$args8900_
      (apply make-struct-instance gx#expander-mark::t _$args8900_)))
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
    (lambda _$args8897_
      (apply make-struct-instance gx#syntax-error::t _$args8897_)))
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
    (lambda (_where8892_ _message8893_ _stx8894_ . _details8895_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message8893_
              (cons _stx8894_ _details8895_)
              _where8892_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx8879_ _expression?8880_)
        (gx#eval-syntax* (gx#core-expand__% _stx8879_ _expression?8880_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx8885_)
          (let ((_expression?8887_ '#f))
            (gx#eval-syntax__% _stx8885_ _expression?8887_))))
      (define gx#eval-syntax
        (lambda _g9279_
          (let ((_g9278_ (length _g9279_)))
            (cond ((##fx= _g9278_ 1) (apply gx#eval-syntax__0 _g9279_))
                  ((##fx= _g9278_ 2) (apply gx#eval-syntax__% _g9279_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g9279_))))))))
  (define gx#eval-syntax*
    (lambda (_stx8876_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx8876_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx8863_ _expression?8864_)
        (if _expression?8864_
            (gx#core-expand-expression _stx8863_)
            (gx#core-expand-top _stx8863_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx8869_)
          (let ((_expression?8871_ '#f))
            (gx#core-expand__% _stx8869_ _expression?8871_))))
      (define gx#core-expand
        (lambda _g9281_
          (let ((_g9280_ (length _g9281_)))
            (cond ((##fx= _g9280_ 1) (apply gx#core-expand__0 _g9281_))
                  ((##fx= _g9280_ 2) (apply gx#core-expand__% _g9281_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g9281_))))))))
  (define gx#core-expand-top
    (lambda (_stx8830_)
      (let* ((_stx8832_ (gx#core-expand*__0 _stx8830_))
             (_e88338840_ _stx8832_)
             (_E88358844_ (lambda () (gx#core-expand-expression _stx8832_)))
             (_E88348858_
              (lambda ()
                (if (gx#stx-pair? _e88338840_)
                    (let ((_e88368848_ (gx#syntax-e _e88338840_)))
                      (let ((_hd88378851_ (##car _e88368848_))
                            (_tl88388853_ (##cdr _e88368848_)))
                        (let ((_form8856_ _hd88378851_))
                          (if (gx#core-bound-identifier?__0 _form8856_)
                              _stx8832_
                              (_E88358844_)))))
                    (_E88358844_)))))
        (_E88348858_))))
  (define gx#core-expand-expression
    (lambda (_stx8752_)
      (letrec ((_sealed-expression?8754_
                (lambda (_hd8800_)
                  (if (gx#sealed-syntax? _hd8800_)
                      (let* ((_e88018808_ _hd8800_)
                             (_E88038812_ (lambda () '#f))
                             (_E88028826_
                              (lambda ()
                                (if (gx#stx-pair? _e88018808_)
                                    (let ((_e88048816_
                                           (gx#syntax-e _e88018808_)))
                                      (let ((_hd88058819_ (##car _e88048816_))
                                            (_tl88068821_ (##cdr _e88048816_)))
                                        (let ((_form8824_ _hd88058819_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form8824_
                                               gx#expression-form-binding?)
                                              (_E88038812_)))))
                                    (_E88038812_)))))
                        (_E88028826_))
                      '#f)))
               (_illegal-expression8755_
                (lambda (_hd8798_ . _g9282_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx8752_
                   _hd8798_)))
               (_expand-e8756_
                (lambda (_form8793_ _hd8794_)
                  (let ((_bind8796_
                         (if (##structure-instance-of?
                              _form8793_
                              'gx#binding::t)
                             _form8793_
                             (gx#resolve-identifier__0 _form8793_))))
                    (if (gx#core-expander-binding? _bind8796_)
                        (gx#core-apply-expander__0
                         (##unchecked-structure-ref
                          _bind8796_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd8794_
                          (gx#stx-source _stx8752_)))
                        (if (##structure-direct-instance-of?
                             _bind8796_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##unchecked-structure-ref
                               _bind8796_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd8794_
                               (gx#stx-source _stx8752_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx8752_
                             _form8793_)))))))
        (let ((_hd8758_ (gx#core-expand-head _stx8752_)))
          (if (_sealed-expression?8754_ _hd8758_)
              _hd8758_
              (if (gx#stx-pair? _hd8758_)
                  (let* ((_e87598766_ _hd8758_)
                         (_E87618770_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e87598766_)))
                         (_E87608789_
                          (lambda ()
                            (if (gx#stx-pair? _e87598766_)
                                (let ((_e87628774_ (gx#syntax-e _e87598766_)))
                                  (let ((_hd87638777_ (##car _e87628774_))
                                        (_tl87648779_ (##cdr _e87628774_)))
                                    (let ((_form8782_ _hd87638777_))
                                      (if '#t
                                          (let ((_bind8784_
                                                 (if (gx#identifier?
                                                      _form8782_)
                                                     (gx#resolve-identifier__0
                                                      _form8782_)
                                                     '#f)))
                                            (if (let ((_$e8786_
                                                       (not _bind8784_)))
                                                  (if _$e8786_
                                                      _$e8786_
                                                      (not (gx#core-expander-binding?
                                                            _bind8784_))))
                                                (_expand-e8756_
                                                 '%%app
                                                 (cons '%%app _hd8758_))
                                                (if (eq? (##unchecked-structure-ref
                                                          _bind8784_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd8758_
                                                     _illegal-expression8755_)
                                                    (if (gx#expression-form-binding?
                                                         _bind8784_)
                                                        (_expand-e8756_
                                                         _bind8784_
                                                         _hd8758_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind8784_)
                                                            (gx#core-expand-expression
                                                             (_expand-e8756_
                                                              _bind8784_
                                                              _hd8758_))
                                                            (_illegal-expression8755_
                                                             _hd8758_))))))
                                          (_E87618770_)))))
                                (_E87618770_)))))
                    (_E87608789_))
                  (if (gx#core-bound-identifier?__0 _hd8758_)
                      (_illegal-expression8755_ _hd8758_)
                      (if (gx#identifier? _hd8758_)
                          (_expand-e8756_
                           '%%ref
                           (cons '%%ref (cons _hd8758_ '())))
                          (if (gx#stx-datum? _hd8758_)
                              (_expand-e8756_
                               '%#quote
                               (cons '%#quote (cons _hd8758_ '())))
                              (_illegal-expression8755_ _hd8758_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx8747_)
      (call-with-parameters
       (lambda ()
         (let ((_stx8750_ (gx#core-expand-expression _stx8747_)))
           (values _stx8750_ (gx#eval-syntax* _stx8750_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx8728_ _stop?8729_)
        (let _lp8731_ ((_stx8733_ _stx8728_))
          (if (_stop?8729_ _stx8733_)
              _stx8733_
              (let ((_rstx8735_ (gx#core-expand1 _stx8733_)))
                (if (eq? _stx8733_ _rstx8735_)
                    _stx8733_
                    (_lp8731_ _rstx8735_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx8740_)
          (let ((_stop?8742_ false))
            (gx#core-expand*__% _stx8740_ _stop?8742_))))
      (define gx#core-expand*
        (lambda _g9284_
          (let ((_g9283_ (length _g9284_)))
            (cond ((##fx= _g9283_ 1) (apply gx#core-expand*__0 _g9284_))
                  ((##fx= _g9283_ 2) (apply gx#core-expand*__% _g9284_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g9284_))))))))
  (define gx#core-expand1
    (lambda (_stx8684_)
      (letrec ((_step8686_
                (lambda (_hd8723_)
                  (let ((_bind8725_ (gx#resolve-identifier__0 _hd8723_)))
                    (if (##structure-instance-of?
                         _bind8725_
                         'gx#runtime-binding::t)
                        _stx8684_
                        (if (##structure-direct-instance-of?
                             _bind8725_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _bind8725_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx8684_)
                            (if (not _bind8725_)
                                _stx8684_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx8684_))))))))
        (let* ((_e86878695_ _stx8684_)
               (_E86938699_ (lambda () _stx8684_))
               (_E86898705_
                (lambda ()
                  (let ((_hd8703_ _e86878695_))
                    (if (gx#identifier? _hd8703_)
                        (_step8686_ _hd8703_)
                        (_E86938699_)))))
               (_E86888719_
                (lambda ()
                  (if (gx#stx-pair? _e86878695_)
                      (let ((_e86908709_ (gx#syntax-e _e86878695_)))
                        (let ((_hd86918712_ (##car _e86908709_))
                              (_tl86928714_ (##cdr _e86908709_)))
                          (let ((_hd8717_ _hd86918712_))
                            (if (gx#identifier? _hd8717_)
                                (_step8686_ _hd8717_)
                                (_E86898705_)))))
                      (_E86898705_)))))
          (_E86888719_)))))
  (define gx#core-expand-head
    (lambda (_stx8650_)
      (letrec ((_stop?8652_
                (lambda (_stx8654_)
                  (let* ((_e86558662_ _stx8654_)
                         (_E86578666_ (lambda () '#f))
                         (_E86568680_
                          (lambda ()
                            (if (gx#stx-pair? _e86558662_)
                                (let ((_e86588670_ (gx#syntax-e _e86558662_)))
                                  (let ((_hd86598673_ (##car _e86588670_))
                                        (_tl86608675_ (##cdr _e86588670_)))
                                    (let ((_hd8678_ _hd86598673_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd8678_)
                                          (_E86578666_)))))
                                (_E86578666_)))))
                    (_E86568680_)))))
        (gx#core-expand*__% _stx8650_ _stop?8652_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx8456_ _expand-special8457_ _begin-form8458_ _expand-e8459_)
        (letrec ((_expand-splice8461_
                  (lambda (_hd8624_ _body8625_ _rest8626_ _r8627_)
                    (if (gx#stx-list? _body8625_)
                        (_K8465_ (gx#stx-foldr cons _rest8626_ _body8625_)
                                 _r8627_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx8456_
                         _hd8624_))))
                 (_expand-cond-expand8462_
                  (lambda (_hd8620_ _rest8621_ _r8622_)
                    (_K8465_ (cons (gx#core-expand-cond-expand% _hd8620_)
                                   _rest8621_)
                             _r8622_)))
                 (_expand-include8463_
                  (lambda (_hd8569_ _rest8570_ _r8571_)
                    (let* ((_e85728582_ _hd8569_)
                           (_E85748586_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e85728582_)))
                           (_E85738616_
                            (lambda ()
                              (if (gx#stx-pair? _e85728582_)
                                  (let ((_e85758590_
                                         (gx#syntax-e _e85728582_)))
                                    (let ((_hd85768593_ (##car _e85758590_))
                                          (_tl85778595_ (##cdr _e85758590_)))
                                      (if (gx#stx-pair? _tl85778595_)
                                          (let ((_e85788598_
                                                 (gx#syntax-e _tl85778595_)))
                                            (let ((_hd85798601_
                                                   (##car _e85788598_))
                                                  (_tl85808603_
                                                   (##cdr _e85788598_)))
                                              (let ((_path8606_ _hd85798601_))
                                                (if (gx#stx-null? _tl85808603_)
                                                    (if (gx#stx-string?
                                                         _path8606_)
                                                        (let* ((_rpath8608_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path8606_
                         (gx#stx-source _hd8569_)))
                       (_block8610_
                        (gx#core-expand-include%__% _hd8569_ _rpath8608_))
                       (_rbody8613_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block8610_
                            _expand-special8457_
                            '#f
                            _expand-e8459_))
                         gx#current-expander-path
                         (cons _rpath8608_ (gx#current-expander-path)))))
                  (_K8465_ _rest8570_ (foldr1 cons _r8571_ _rbody8613_)))
                (_E85748586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85748586_)))))
                                          (_E85748586_))))
                                  (_E85748586_)))))
                      (_E85738616_))))
                 (_expand-expression8464_
                  (lambda (_hd8565_ _rest8566_ _r8567_)
                    (_K8465_ _rest8566_
                             (cons (_expand-e8459_ _hd8565_) _r8567_))))
                 (_K8465_ (lambda (_rest8495_ _r8496_)
                            (let* ((_e84978504_ _rest8495_)
                                   (_E84998508_
                                    (lambda ()
                                      (if _begin-form8458_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form8458_
                                            (reverse _r8496_))
                                           (gx#stx-source _stx8456_))
                                          _r8496_)))
                                   (_E84988561_
                                    (lambda ()
                                      (if (gx#stx-pair? _e84978504_)
                                          (let ((_e85008512_
                                                 (gx#syntax-e _e84978504_)))
                                            (let ((_hd85018515_
                                                   (##car _e85008512_))
                                                  (_tl85028517_
                                                   (##cdr _e85008512_)))
                                              (let* ((_hd8520_ _hd85018515_)
                                                     (_rest8522_ _tl85028517_))
                                                (if '#t
                                                    (let* ((_hd8524_
                                                            (gx#core-expand-head
                                                             _hd8520_))
                                                           (_e85258532_
                                                            _hd8524_)
                                                           (_E85278536_
                                                            (lambda ()
                                                              (_expand-expression8464_
                                                               _hd8524_
                                                               _rest8522_
                                                               _r8496_)))
                                                           (_E85268557_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e85258532_)
                          (let ((_e85288540_ (gx#syntax-e _e85258532_)))
                            (let ((_hd85298543_ (##car _e85288540_))
                                  (_tl85308545_ (##cdr _e85288540_)))
                              (let* ((_form8548_ _hd85298543_)
                                     (_body8550_ _tl85308545_))
                                (if '#t
                                    (let ((_bind8552_
                                           (if (gx#identifier? _form8548_)
                                               (gx#resolve-identifier__0
                                                _form8548_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind8552_)
                                          (let ((_$e8554_
                                                 (##unchecked-structure-ref
                                                  _bind8552_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e8554_)
                                                (_expand-splice8461_
                                                 _hd8524_
                                                 _body8550_
                                                 _rest8522_
                                                 _r8496_)
                                                (if (eq? '%#cond-expand
                                                         _$e8554_)
                                                    (_expand-cond-expand8462_
                                                     _hd8524_
                                                     _rest8522_
                                                     _r8496_)
                                                    (if (eq? '%#include
                                                             _$e8554_)
                                                        (_expand-include8463_
                                                         _hd8524_
                                                         _rest8522_
                                                         _r8496_)
                                                        (_expand-special8457_
                                                         _hd8524_
                                                         _K8465_
                                                         _rest8522_
                                                         _r8496_)))))
                                          (_expand-expression8464_
                                           _hd8524_
                                           _rest8522_
                                           _r8496_)))
                                    (_E85278536_)))))
                          (_E85278536_)))))
              (_E85268557_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E84998508_)))))
                                          (_E84998508_)))))
                              (_E84988561_)))))
          (let* ((_e84668473_ _stx8456_)
                 (_E84688477_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e84668473_)))
                 (_E84678491_
                  (lambda ()
                    (if (gx#stx-pair? _e84668473_)
                        (let ((_e84698481_ (gx#syntax-e _e84668473_)))
                          (let ((_hd84708484_ (##car _e84698481_))
                                (_tl84718486_ (##cdr _e84698481_)))
                            (let ((_body8489_ _tl84718486_))
                              (if (gx#stx-list? _body8489_)
                                  (_K8465_ _body8489_ '())
                                  (_E84688477_)))))
                        (_E84688477_)))))
            (_E84678491_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx8632_ _expand-special8633_)
          (let* ((_begin-form8635_ '%#begin)
                 (_expand-e8637_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8632_
             _expand-special8633_
             _begin-form8635_
             _expand-e8637_))))
      (define gx#core-expand-block__1
        (lambda (_stx8639_ _expand-special8640_ _begin-form8641_)
          (let ((_expand-e8643_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8639_
             _expand-special8640_
             _begin-form8641_
             _expand-e8643_))))
      (define gx#core-expand-block
        (lambda _g9286_
          (let ((_g9285_ (length _g9286_)))
            (cond ((##fx= _g9285_ 2) (apply gx#core-expand-block__0 _g9286_))
                  ((##fx= _g9285_ 3) (apply gx#core-expand-block__1 _g9286_))
                  ((##fx= _g9285_ 4) (apply gx#core-expand-block__% _g9286_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g9286_))))))))
  (define gx#core-expand-block*
    (lambda (_stx8404_ _expand-special8405_)
      (let* ((_g84068417_
              (gx#core-expand-block__1 _stx8404_ _expand-special8405_ '#f))
             (_E84108421_
              (lambda () (error '"No clause matching" _g84068417_))))
        (let ((_K84158452_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx8404_)))
              (_K84128438_ (lambda (_expr8436_) _expr8436_))
              (_K84118427_
               (lambda (_body8425_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body8425_))
                  (gx#stx-source _stx8404_)))))
          (let ((_try-match84088448_
                 (lambda ()
                   (if (##pair? _g84068417_)
                       (let ((_tl84148443_ (##cdr _g84068417_))
                             (_hd84138441_ (##car _g84068417_)))
                         (if (##null? _tl84148443_)
                             (let ((_expr8446_ _hd84138441_))
                               (_K84128438_ _expr8446_))
                             (let ((_body8430_ _g84068417_))
                               (_K84118427_ _body8430_))))
                       (let ((_body8430_ _g84068417_))
                         (_K84118427_ _body8430_))))))
            (if (##null? _g84068417_) (_K84158452_) (_try-match84088448_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx8262_)
      (letrec ((_satisfied?8264_
                (lambda (_condition8362_)
                  (let* ((_e83638371_ _condition8362_)
                         (_E83668375_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e83638371_)))
                         (_E83658394_
                          (lambda ()
                            (if (gx#stx-pair? _e83638371_)
                                (let ((_e83678379_ (gx#syntax-e _e83638371_)))
                                  (let ((_hd83688382_ (##car _e83678379_))
                                        (_tl83698384_ (##cdr _e83678379_)))
                                    (let* ((_combinator8387_ _hd83688382_)
                                           (_body8389_ _tl83698384_))
                                      (if (gx#stx-list? _body8389_)
                                          (let ((_$e8391_
                                                 (gx#stx-e _combinator8387_)))
                                            (if (eq? 'not _$e8391_)
                                                (not (gx#stx-ormap
                                                      _satisfied?8264_
                                                      _body8389_))
                                                (if (eq? 'and _$e8391_)
                                                    (gx#stx-andmap
                                                     _satisfied?8264_
                                                     _body8389_)
                                                    (if (eq? 'or _$e8391_)
                                                        (gx#stx-ormap
                                                         _satisfied?8264_
                                                         _body8389_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e8391_)
                    (gx#stx-andmap gx#core-resolve-identifier _body8389_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx8262_
                     _combinator8387_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E83668375_)))))
                                (_E83668375_))))
                         (_E83648400_
                          (lambda ()
                            (let ((_id8398_ _e83638371_))
                              (if (gx#identifier? _id8398_)
                                  (gx#core-bound-identifier?__%
                                   _id8398_
                                   gx#feature-binding?)
                                  (_E83658394_))))))
                    (_E83648400_))))
               (_loop8265_
                (lambda (_rest8295_)
                  (let* ((_e82968304_ _rest8295_)
                         (_E83028308_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e82968304_)))
                         (_E82988312_
                          (lambda ()
                            (if (gx#stx-null? _e82968304_)
                                (if '#t '() (_E83028308_))
                                (_E83028308_))))
                         (_E82978358_
                          (lambda ()
                            (if (gx#stx-pair? _e82968304_)
                                (let ((_e82998316_ (gx#syntax-e _e82968304_)))
                                  (let ((_hd83008319_ (##car _e82998316_))
                                        (_tl83018321_ (##cdr _e82998316_)))
                                    (let* ((_hd8324_ _hd83008319_)
                                           (_rest8326_ _tl83018321_))
                                      (if '#t
                                          (let* ((_e83278334_ _hd8324_)
                                                 (_E83298338_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e83278334_)))
                                                 (_E83288354_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e83278334_)
                                                        (let ((_e83308342_
                                                               (gx#syntax-e
                                                                _e83278334_)))
                                                          (let ((_hd83318345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e83308342_))
                        (_tl83328347_ (##cdr _e83308342_)))
                    (let* ((_condition8350_ _hd83318345_)
                           (_body8352_ _tl83328347_))
                      (if '#t
                          (if (gx#stx-eq? _condition8350_ 'else)
                              (if (gx#stx-null? _rest8326_)
                                  _body8352_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx8262_
                                   _hd8324_))
                              (if (_satisfied?8264_ _condition8350_)
                                  _body8352_
                                  (_loop8265_ _rest8326_)))
                          (_E83298338_)))))
                (_E83298338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E83288354_))
                                          (_E82988312_)))))
                                (_E82988312_)))))
                    (_E82978358_)))))
        (let* ((_e82668273_ _stx8262_)
               (_E82688277_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e82668273_)))
               (_E82678291_
                (lambda ()
                  (if (gx#stx-pair? _e82668273_)
                      (let ((_e82698281_ (gx#syntax-e _e82668273_)))
                        (let ((_hd82708284_ (##car _e82698281_))
                              (_tl82718286_ (##cdr _e82698281_)))
                          (let ((_clauses8289_ _tl82718286_))
                            (if (gx#stx-list? _clauses8289_)
                                (gx#core-cons
                                 'begin
                                 (_loop8265_ _clauses8289_))
                                (_E82688277_)))))
                      (_E82688277_)))))
          (_E82678291_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx8205_ _rpath8206_)
        (let* ((_e82078217_ _stx8205_)
               (_E82098221_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e82078217_)))
               (_E82088248_
                (lambda ()
                  (if (gx#stx-pair? _e82078217_)
                      (let ((_e82108225_ (gx#syntax-e _e82078217_)))
                        (let ((_hd82118228_ (##car _e82108225_))
                              (_tl82128230_ (##cdr _e82108225_)))
                          (if (gx#stx-pair? _tl82128230_)
                              (let ((_e82138233_ (gx#syntax-e _tl82128230_)))
                                (let ((_hd82148236_ (##car _e82138233_))
                                      (_tl82158238_ (##cdr _e82138233_)))
                                  (let ((_path8241_ _hd82148236_))
                                    (if (gx#stx-null? _tl82158238_)
                                        (if (gx#stx-string? _path8241_)
                                            (let ((_rpath8246_
                                                   (let ((_$e8243_
                                                          _rpath8206_))
                                                     (if _$e8243_
                                                         _$e8243_
                                                         (gx#core-resolve-path__%
                                                          _path8241_
                                                          (gx#stx-source
                                                           _stx8205_))))))
                                              (if (member _rpath8246_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx8205_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath8246_))
                                                    (gx#stx-source
                                                     _stx8205_)))))
                                            (_E82098221_))
                                        (_E82098221_)))))
                              (_E82098221_))))
                      (_E82098221_)))))
          (_E82088248_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx8255_)
          (let ((_rpath8257_ '#f))
            (gx#core-expand-include%__% _stx8255_ _rpath8257_))))
      (define gx#core-expand-include%
        (lambda _g9288_
          (let ((_g9287_ (length _g9288_)))
            (cond ((##fx= _g9287_ 1)
                   (apply gx#core-expand-include%__0 _g9288_))
                  ((##fx= _g9287_ 2)
                   (apply gx#core-expand-include%__% _g9288_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g9288_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K8173_ _stx8174_ _method8175_)
        (begin
          (declare (not safe))
          (if (procedure? _K8173_)
              (let ((_$e8178_ (gx#stx-source _stx8174_)))
                (if _$e8178_
                    ((lambda (_g81808182_)
                       (gx#stx-wrap-source (_K8173_ _stx8174_) _g81808182_))
                     _$e8178_)
                    (_K8173_ _stx8174_)))
              (let ((_$e8185_ (bound-method-ref _K8173_ _method8175_)))
                (if _$e8185_
                    ((lambda (_g81878189_)
                       (gx#core-apply-expander__%
                        _g81878189_
                        _stx8174_
                        _method8175_))
                     _$e8185_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx8174_
                     _method8175_)))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K8195_ _stx8196_)
          (let ((_method8198_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K8195_ _stx8196_ _method8198_))))
      (define gx#core-apply-expander
        (lambda _g9290_
          (let ((_g9289_ (length _g9290_)))
            (cond ((##fx= _g9289_ 2) (apply gx#core-apply-expander__0 _g9290_))
                  ((##fx= _g9289_ 3) (apply gx#core-apply-expander__% _g9290_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g9290_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self8169_ _stx8170_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx8170_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self8022_ _stx8023_)
      (let* ((_self80248030_ _self8022_)
             (_E80268034_
              (lambda () (error '"No clause matching" _self80248030_)))
             (_K80278039_
              (lambda (_K8037_)
                (gx#core-apply-expander__0 _K8037_ _stx8023_))))
        (if (##structure-instance-of? _self80248030_ 'gx#core-macro::t)
            (let* ((_e80288042_ (##vector-ref _self80248030_ '1))
                   (_K8045_ _e80288042_))
              (_K80278039_ _K8045_))
            (_E80268034_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self7875_ _stx7876_)
      (if (gx#sealed-syntax? _stx7876_)
          _stx7876_
          (let* ((_self78777883_ _self7875_)
                 (_E78797887_
                  (lambda () (error '"No clause matching" _self78777883_)))
                 (_K78807892_
                  (lambda (_K7890_)
                    (gx#core-apply-expander__0 _K7890_ _stx7876_))))
            (if (##structure-instance-of? _self78777883_ 'gx#core-expander::t)
                (let* ((_e78817895_ (##vector-ref _self78777883_ '1))
                       (_K7898_ _e78817895_))
                  (_K78807892_ _K7898_))
                (_E78797887_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self7737_ _stx7738_ _top?7739_)
        (if (_top?7739_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self7737_ _stx7738_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx7738_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self7744_ _stx7745_)
          (let ((_top?7747_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self7744_
             _stx7745_
             _top?7747_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g9292_
          (let ((_g9291_ (length _g9292_)))
            (cond ((##fx= _g9291_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g9292_))
                  ((##fx= _g9291_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g9292_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g9292_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self7611_ _stx7612_)
      (gx#top-special-form::apply-macro-expander__%
       _self7611_
       _stx7612_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self7436_ _stx7437_)
      (let* ((_self74387444_ _self7436_)
             (_E74407448_
              (lambda () (error '"No clause matching" _self74387444_)))
             (_K74417481_
              (lambda (_id7451_)
                (let* ((_e74527459_ _stx7437_)
                       (_E74547463_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e74527459_)))
                       (_E74537477_
                        (lambda ()
                          (if (gx#stx-pair? _e74527459_)
                              (let ((_e74557467_ (gx#syntax-e _e74527459_)))
                                (let ((_hd74567470_ (##car _e74557467_))
                                      (_tl74577472_ (##cdr _e74557467_)))
                                  (let ((_body7475_ _tl74577472_))
                                    (if '#t
                                        (gx#core-cons _id7451_ _body7475_)
                                        (_E74547463_)))))
                              (_E74547463_)))))
                  (_E74537477_)))))
        (if (##structure-instance-of?
             _self74387444_
             'gx#rename-macro-expander::t)
            (let* ((_e74427484_ (##vector-ref _self74387444_ '1))
                   (_id7487_ _e74427484_))
              (_K74417481_ _id7487_))
            (_E74407448_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self7262_ _stx7263_ _method7264_)
        (let* ((_self72657273_ _self7262_)
               (_E72677277_
                (lambda () (error '"No clause matching" _self72657273_)))
               (_K72687284_
                (lambda (_phi7280_ _ctx7281_ _K7282_)
                  (gx#core-apply-user-macro
                   _K7282_
                   _stx7263_
                   _ctx7281_
                   _phi7280_
                   _method7264_))))
          (if (##structure-instance-of? _self72657273_ 'gx#macro-expander::t)
              (let* ((_e72697287_ (##vector-ref _self72657273_ '1))
                     (_K7290_ _e72697287_)
                     (_e72707292_ (##vector-ref _self72657273_ '2))
                     (_ctx7295_ _e72707292_)
                     (_e72717297_ (##vector-ref _self72657273_ '3))
                     (_phi7300_ _e72717297_))
                (_K72687284_ _phi7300_ _ctx7295_ _K7290_))
              (_E72677277_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self7305_ _stx7306_)
          (let ((_method7308_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self7305_
             _stx7306_
             _method7308_))))
      (define gx#core-apply-user-expander
        (lambda _g9294_
          (let ((_g9293_ (length _g9294_)))
            (cond ((##fx= _g9293_ 2)
                   (apply gx#core-apply-user-expander__0 _g9294_))
                  ((##fx= _g9293_ 3)
                   (apply gx#core-apply-user-expander__% _g9294_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g9294_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K7252_ _stx7253_ _ctx7254_ _phi7255_ _method7256_)
      (let ((_mark7258_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx7254_
              _phi7255_
              _stx7253_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K7252_
             (gx#stx-apply-mark _stx7253_ _mark7258_)
             _method7256_)
            _mark7258_))
         gx#current-expander-marks
         (cons _mark7258_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx7103_ _phi7104_ _ctx7105_)
        (let _lp7107_ ((_bind7109_
                        (gx#core-resolve-identifier__%
                         _stx7103_
                         _phi7104_
                         _ctx7105_)))
          (if (##structure-direct-instance-of?
               _bind7109_
               'gx#import-binding::t)
              (_lp7107_
               (##unchecked-structure-ref
                _bind7109_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind7109_
                   'gx#alias-binding::t)
                  (_lp7107_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind7109_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi7104_
                    _ctx7105_))
                  _bind7109_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx7114_)
          (let* ((_phi7116_ (gx#current-expander-phi))
                 (_ctx7118_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7114_ _phi7116_ _ctx7118_))))
      (define gx#resolve-identifier__1
        (lambda (_stx7120_ _phi7121_)
          (let ((_ctx7123_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7120_ _phi7121_ _ctx7123_))))
      (define gx#resolve-identifier
        (lambda _g9296_
          (let ((_g9295_ (length _g9296_)))
            (cond ((##fx= _g9295_ 1) (apply gx#resolve-identifier__0 _g9296_))
                  ((##fx= _g9295_ 2) (apply gx#resolve-identifier__1 _g9296_))
                  ((##fx= _g9295_ 3) (apply gx#resolve-identifier__% _g9296_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g9296_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx7061_ _val7062_ _rebind?7063_ _phi7064_ _ctx7065_)
        (let ((_rebind?7067_
               (if (not _rebind?7063_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?7063_) _rebind?7063_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx7061_)
           _val7062_
           _rebind?7067_
           _phi7064_
           _ctx7065_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx7072_ _val7073_)
          (let* ((_rebind?7075_ '#f)
                 (_phi7077_ (gx#current-expander-phi))
                 (_ctx7079_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7072_
             _val7073_
             _rebind?7075_
             _phi7077_
             _ctx7079_))))
      (define gx#bind-identifier!__1
        (lambda (_stx7081_ _val7082_ _rebind?7083_)
          (let* ((_phi7085_ (gx#current-expander-phi))
                 (_ctx7087_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7081_
             _val7082_
             _rebind?7083_
             _phi7085_
             _ctx7087_))))
      (define gx#bind-identifier!__2
        (lambda (_stx7089_ _val7090_ _rebind?7091_ _phi7092_)
          (let ((_ctx7094_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7089_
             _val7090_
             _rebind?7091_
             _phi7092_
             _ctx7094_))))
      (define gx#bind-identifier!
        (lambda _g9298_
          (let ((_g9297_ (length _g9298_)))
            (cond ((##fx= _g9297_ 2) (apply gx#bind-identifier!__0 _g9298_))
                  ((##fx= _g9297_ 3) (apply gx#bind-identifier!__1 _g9298_))
                  ((##fx= _g9297_ 4) (apply gx#bind-identifier!__2 _g9298_))
                  ((##fx= _g9297_ 5) (apply gx#bind-identifier!__% _g9298_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g9298_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx7032_ _phi7033_ _ctx7034_)
        (begin
          (declare (not safe))
          (let _lp7037_ ((_e7039_ _stx7032_)
                         (_marks7040_ (gx#current-expander-marks)))
            (if (symbol? _e7039_)
                (gx#core-resolve-binding
                 _e7039_
                 _phi7033_
                 _phi7033_
                 _ctx7034_
                 (reverse _marks7040_))
                (if (gx#identifier-quote? _e7039_)
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _e7039_ '1 AST::t '#f)
                     _phi7033_
                     '0
                     (##unchecked-structure-ref
                      _e7039_
                      '3
                      gx#syntax-quote::t
                      '#f)
                     (##unchecked-structure-ref
                      _e7039_
                      '4
                      gx#syntax-quote::t
                      '#f))
                    (if (##structure-direct-instance-of?
                         _e7039_
                         'gx#identifier-wrap::t)
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _e7039_ '1 AST::t '#f)
                         _phi7033_
                         _phi7033_
                         _ctx7034_
                         (foldl1 gx#apply-mark
                                 (##unchecked-structure-ref
                                  _e7039_
                                  '3
                                  gx#identifier-wrap::t
                                  '#f)
                                 _marks7040_))
                        (if (##structure-direct-instance-of?
                             _e7039_
                             'gx#syntax-wrap::t)
                            (_lp7037_
                             (##unchecked-structure-ref _e7039_ '1 AST::t '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _e7039_
                               '3
                               gx#syntax-wrap::t
                               '#f)
                              _marks7040_))
                            (if (##structure-instance-of?
                                 _e7039_
                                 'gerbil#AST::t)
                                (_lp7037_
                                 (##unchecked-structure-ref
                                  _e7039_
                                  '1
                                  AST::t
                                  '#f)
                                 _marks7040_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _stx7032_))))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx7045_)
          (let* ((_phi7047_ (gx#current-expander-phi))
                 (_ctx7049_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx7045_ _phi7047_ _ctx7049_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx7051_ _phi7052_)
          (let ((_ctx7054_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx7051_ _phi7052_ _ctx7054_))))
      (define gx#core-resolve-identifier
        (lambda _g9300_
          (let ((_g9299_ (length _g9300_)))
            (cond ((##fx= _g9299_ 1)
                   (apply gx#core-resolve-identifier__0 _g9300_))
                  ((##fx= _g9299_ 2)
                   (apply gx#core-resolve-identifier__1 _g9300_))
                  ((##fx= _g9299_ 3)
                   (apply gx#core-resolve-identifier__% _g9300_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g9300_))))))))
  (define gx#core-resolve-binding
    (lambda (_id6945_ _phi6946_ _src-phi6947_ _ctx6948_ _marks6949_)
      (begin
        (declare (not safe))
        (letrec ((_resolve6951_
                  (lambda (_ctx7019_ _src-phi7020_ _key7021_)
                    (let _lp7023_ ((_ctx7025_
                                    (gx#core-context-shift
                                     _ctx7019_
                                     _phi6946_))
                                   (_dphi7026_ (fx- _phi6946_ _src-phi7020_)))
                      (let ((_$e7028_
                             (gx#core-context-resolve _ctx7025_ _key7021_)))
                        (if _$e7028_
                            (values _$e7028_)
                            (if (fxzero? _dphi7026_)
                                '#f
                                (if (fxpositive? _dphi7026_)
                                    (_lp7023_
                                     (gx#core-context-shift _ctx7025_ '-1)
                                     (fx- _dphi7026_ '1))
                                    (if (fxnegative? _dphi7026_)
                                        (_lp7023_
                                         (gx#core-context-shift _ctx7025_ '1)
                                         (fx+ _dphi7026_ '1))
                                        '#!void)))))))))
          (let _lp6953_ ((_ctx6955_ _ctx6948_)
                         (_src-phi6956_ _src-phi6947_)
                         (_rest6957_ _marks6949_))
            (let* ((_rest69586966_ _rest6957_)
                   (_else69606974_
                    (lambda ()
                      (_resolve6951_ _ctx6955_ _src-phi6956_ _id6945_)))
                   (_K69627007_
                    (lambda (_rest6977_ _hd6978_)
                      (let* ((_hd69796985_ _hd6978_)
                             (_E69816989_
                              (lambda ()
                                (error '"No clause matching" _hd69796985_)))
                             (_K69826999_
                              (lambda (_subst6992_)
                                (let ((_$e6996_
                                       (let ((_key6994_
                                              (if _subst6992_
                                                  (table-ref
                                                   _subst6992_
                                                   _id6945_
                                                   '#f)
                                                  '#f)))
                                         (if _key6994_
                                             (_resolve6951_
                                              _ctx6955_
                                              _src-phi6956_
                                              _key6994_)
                                             '#f))))
                                  (if _$e6996_
                                      _$e6996_
                                      (_lp6953_
                                       (##unchecked-structure-ref
                                        _hd6978_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd6978_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest6977_))))))
                        (if (##structure-instance-of?
                             _hd69796985_
                             'gx#expander-mark::t)
                            (let* ((_e69837002_ (##vector-ref _hd69796985_ '1))
                                   (_subst7005_ _e69837002_))
                              (_K69826999_ _subst7005_))
                            (_E69816989_))))))
              (if (##pair? _rest69586966_)
                  (let ((_hd69637010_ (##car _rest69586966_))
                        (_tl69647012_ (##cdr _rest69586966_)))
                    (let* ((_hd7015_ _hd69637010_) (_rest7017_ _tl69647012_))
                      (_K69627007_ _rest7017_ _hd7015_)))
                  (_else69606974_))))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key6821_ _val6822_ _rebind?6823_ _phi6824_ _ctx6825_)
        (letrec ((_update-binding6827_
                  (lambda (_xval6898_)
                    (if (let ((_$e6900_
                               (_rebind?6823_ _ctx6825_ _xval6898_ _val6822_)))
                          (if _$e6900_
                              _$e6900_
                              (let ((_$e6906_
                                     (if (##structure-direct-instance-of?
                                          _xval6898_
                                          'gx#import-binding::t)
                                         (let ((_$e6903_
                                                (##unchecked-structure-ref
                                                 _xval6898_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e6903_
                                               _$e6903_
                                               (if (##structure-instance-of?
                                                    _val6822_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val6822_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e6906_
                                    _$e6906_
                                    (if (##structure-instance-of?
                                         _xval6898_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val6822_
                                             'gx#runtime-binding::t)
                                            (eq? (##unchecked-structure-ref
                                                  _val6822_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##unchecked-structure-ref
                                                  _xval6898_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val6822_
                        (if (if (##structure-direct-instance-of?
                                 _val6822_
                                 'gx#import-binding::t)
                                (let ((_$e6909_
                                       (##unchecked-structure-ref
                                        _val6822_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e6909_
                                      _$e6909_
                                      (if (##structure-instance-of?
                                           _xval6898_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val6822_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval6898_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval6898_
                            (if (if (##structure-direct-instance-of?
                                     _val6822_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval6898_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key6821_
                                 (cons (##unchecked-structure-ref
                                        _val6822_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val6822_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval6898_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval6898_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval6898_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval6898_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key6821_
                                 _val6822_
                                 _xval6898_))))))
                 (_gensubst6828_
                  (lambda (_subst6893_ _id6894_)
                    (let ((_eid6896_
                           (gensym (if (uninterned-symbol? _id6894_)
                                       '%
                                       _id6894_))))
                      (begin
                        (table-set! _subst6893_ _id6894_ _eid6896_)
                        _eid6896_))))
                 (_subst!6829_
                  (lambda (_key6831_)
                    (let* ((_key68326840_ _key6831_)
                           (_else68346848_ (lambda () _key6831_))
                           (_K68366881_
                            (lambda (_mark6851_ _id6852_)
                              (let* ((_mark68536859_ _mark6851_)
                                     (_E68556863_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark68536859_)))
                                     (_K68566873_
                                      (lambda (_subst6866_)
                                        (if (not _subst6866_)
                                            (let ((_subst6868_
                                                   (make-table 'test: eq?)))
                                              (begin
                                                (##unchecked-structure-set!
                                                 _mark6851_
                                                 _subst6868_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst6828_
                                                 _subst6868_
                                                 _id6852_)))
                                            (let ((_$e6870_
                                                   (table-ref
                                                    _subst6866_
                                                    _id6852_
                                                    '#f)))
                                              (if _$e6870_
                                                  (values _$e6870_)
                                                  (_gensubst6828_
                                                   _subst6866_
                                                   _id6852_)))))))
                                (if (##structure-instance-of?
                                     _mark68536859_
                                     'gx#expander-mark::t)
                                    (let* ((_e68576876_
                                            (##vector-ref _mark68536859_ '1))
                                           (_subst6879_ _e68576876_))
                                      (_K68566873_ _subst6879_))
                                    (_E68556863_))))))
                      (if (##pair? _key68326840_)
                          (let ((_hd68376884_ (##car _key68326840_))
                                (_tl68386886_ (##cdr _key68326840_)))
                            (let* ((_id6889_ _hd68376884_)
                                   (_mark6891_ _tl68386886_))
                              (_K68366881_ _mark6891_ _id6889_)))
                          (_else68346848_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx6825_ _phi6824_)
           (_subst!6829_ _key6821_)
           _val6822_
           _update-binding6827_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key6915_ _val6916_)
          (let* ((_rebind?6918_ false)
                 (_phi6920_ (gx#current-expander-phi))
                 (_ctx6922_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6915_
             _val6916_
             _rebind?6918_
             _phi6920_
             _ctx6922_))))
      (define gx#core-bind!__1
        (lambda (_key6924_ _val6925_ _rebind?6926_)
          (let* ((_phi6928_ (gx#current-expander-phi))
                 (_ctx6930_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6924_
             _val6925_
             _rebind?6926_
             _phi6928_
             _ctx6930_))))
      (define gx#core-bind!__2
        (lambda (_key6932_ _val6933_ _rebind?6934_ _phi6935_)
          (let ((_ctx6937_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6932_
             _val6933_
             _rebind?6934_
             _phi6935_
             _ctx6937_))))
      (define gx#core-bind!
        (lambda _g9302_
          (let ((_g9301_ (length _g9302_)))
            (cond ((##fx= _g9301_ 2) (apply gx#core-bind!__0 _g9302_))
                  ((##fx= _g9301_ 3) (apply gx#core-bind!__1 _g9302_))
                  ((##fx= _g9301_ 4) (apply gx#core-bind!__2 _g9302_))
                  ((##fx= _g9301_ 5) (apply gx#core-bind!__% _g9302_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g9302_))))))))
  (define gx#core-identifier-key
    (lambda (_stx6754_)
      (begin
        (declare (not safe))
        (if (symbol? _stx6754_)
            (let* ((_g67566764_ (gx#current-expander-marks))
                   (_else67586772_ (lambda () _stx6754_))
                   (_K67606777_ (lambda (_hd6775_) (cons _stx6754_ _hd6775_))))
              (if (##pair? _g67566764_)
                  (let* ((_hd67616780_ (##car _g67566764_))
                         (_hd6783_ _hd67616780_))
                    (_K67606777_ _hd6783_))
                  (_else67586772_)))
            (if (gx#identifier? _stx6754_)
                (let* ((_id6785_ (gx#syntax-local-unwrap _stx6754_))
                       (_eid6787_ (gx#stx-e _id6785_))
                       (_marks6789_ (gx#stx-identifier-marks* _id6785_)))
                  (let* ((_marks67916799_ _marks6789_)
                         (_else67936807_ (lambda () _eid6787_))
                         (_K67956812_
                          (lambda (_hd6810_) (cons _eid6787_ _hd6810_))))
                    (if (##pair? _marks67916799_)
                        (let* ((_hd67966815_ (##car _marks67916799_))
                               (_hd6818_ _hd67966815_))
                          (_K67956812_ _hd6818_))
                        (_else67936807_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx6754_))))))
  (define gx#core-context-shift
    (lambda (_ctx6699_ _phi6700_)
      (begin
        (declare (not safe))
        (letrec ((_make-phi6702_
                  (lambda (_super6752_)
                    (let ((__obj9273 (make-object gx#phi-context::t '5)))
                      (begin
                        (gx#phi-context:::init!__%
                         __obj9273
                         (gensym 'phi)
                         _super6752_)
                        __obj9273))))
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
        (lambda _g9304_
          (let ((_g9303_ (length _g9304_)))
            (cond ((##fx= _g9303_ 0) (apply gx#core-context-top__0 _g9304_))
                  ((##fx= _g9303_ 1) (apply gx#core-context-top__1 _g9304_))
                  ((##fx= _g9303_ 2) (apply gx#core-context-top__% _g9304_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g9304_))))))))
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
        (lambda _g9306_
          (let ((_g9305_ (length _g9306_)))
            (cond ((##fx= _g9305_ 0) (apply gx#core-context-root__0 _g9306_))
                  ((##fx= _g9305_ 1) (apply gx#core-context-root__% _g9306_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g9306_))))))))
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
        (lambda _g9308_
          (let ((_g9307_ (length _g9308_)))
            (cond ((##fx= _g9307_ 0)
                   (apply gx#core-context-rebind?__0 _g9308_))
                  ((##fx= _g9307_ 1)
                   (apply gx#core-context-rebind?__% _g9308_))
                  ((##fx>= _g9307_ 1)
                   (apply gx#core-context-rebind?__% _g9308_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g9308_))))))))
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
        (lambda _g9310_
          (let ((_g9309_ (length _g9310_)))
            (cond ((##fx= _g9309_ 0)
                   (apply gx#core-context-namespace__0 _g9310_))
                  ((##fx= _g9309_ 1)
                   (apply gx#core-context-namespace__% _g9310_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g9310_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind6585_ _is?6586_)
        (if (##structure-direct-instance-of? _bind6585_ 'gx#syntax-binding::t)
            (_is?6586_
             (##unchecked-structure-ref
              _bind6585_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind6591_)
          (let ((_is?6593_ gx#expander?))
            (gx#expander-binding?__% _bind6591_ _is?6593_))))
      (define gx#expander-binding?
        (lambda _g9312_
          (let ((_g9311_ (length _g9312_)))
            (cond ((##fx= _g9311_ 1) (apply gx#expander-binding?__0 _g9312_))
                  ((##fx= _g9311_ 2) (apply gx#expander-binding?__% _g9312_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g9312_))))))))
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
        (lambda _g9314_
          (let ((_g9313_ (length _g9314_)))
            (cond ((##fx= _g9313_ 1)
                   (apply gx#core-bound-identifier?__0 _g9314_))
                  ((##fx= _g9313_ 2)
                   (apply gx#core-bound-identifier?__% _g9314_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g9314_))))))))
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
        (lambda _g9316_
          (let ((_g9315_ (length _g9316_)))
            (cond ((##fx= _g9315_ 1) (apply gx#core-quote-syntax__0 _g9316_))
                  ((##fx= _g9315_ 2) (apply gx#core-quote-syntax__1 _g9316_))
                  ((##fx= _g9315_ 3) (apply gx#core-quote-syntax__2 _g9316_))
                  ((##fx= _g9315_ 4) (apply gx#core-quote-syntax__% _g9316_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g9316_))))))))
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
        (lambda _g9318_
          (let ((_g9317_ (length _g9318_)))
            (cond ((##fx= _g9317_ 1) (apply gx#core-resolve-path__0 _g9318_))
                  ((##fx= _g9317_ 2) (apply gx#core-resolve-path__% _g9318_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g9318_))))))))
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
        (lambda _g9320_
          (let ((_g9319_ (length _g9320_)))
            (cond ((##fx= _g9319_ 1)
                   (apply gx#core-deserialize-mark__0 _g9320_))
                  ((##fx= _g9319_ 2)
                   (apply gx#core-deserialize-mark__% _g9320_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g9320_))))))))
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
              (##unchecked-structure-ref
               _bind6364_
               '4
               gx#syntax-binding::t
               '#f)
              (_E6362_ _stx6361_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx6369_)
          (let ((_E6371_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx6369_ _E6371_))))
      (define gx#syntax-local-e
        (lambda _g9322_
          (let ((_g9321_ (length _g9322_)))
            (cond ((##fx= _g9321_ 1) (apply gx#syntax-local-e__0 _g9322_))
                  ((##fx= _g9321_ 2) (apply gx#syntax-local-e__% _g9322_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g9322_))))))))
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
        (lambda _g9324_
          (let ((_g9323_ (length _g9324_)))
            (cond ((##fx= _g9323_ 1) (apply gx#syntax-local-value__0 _g9324_))
                  ((##fx= _g9323_ 2) (apply gx#syntax-local-value__% _g9324_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g9324_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx6342_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx6342_))))
