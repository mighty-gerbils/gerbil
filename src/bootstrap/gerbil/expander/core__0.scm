(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (not safe))
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
    (lambda _$args9297_
      (apply make-struct-instance gx#expander-context::t _$args9297_)))
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
    (lambda _$args9294_
      (apply make-struct-instance gx#root-context::t _$args9294_)))
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
    (lambda _$args9291_
      (apply make-struct-instance gx#phi-context::t _$args9291_)))
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
    (lambda _$args9288_
      (apply make-struct-instance gx#top-context::t _$args9288_)))
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
    (lambda _$args9285_
      (apply make-struct-instance gx#module-context::t _$args9285_)))
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
    (lambda _$args9282_
      (apply make-struct-instance gx#prelude-context::t _$args9282_)))
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
    (lambda _$args9279_
      (apply make-struct-instance gx#local-context::t _$args9279_)))
  (begin
    (define gx#phi-context:::init!__%
      (lambda (_self9263_ _id9264_ _super9265_)
        (struct-instance-init!
         _self9263_
         _id9264_
         (make-table 'test: eq?)
         _super9265_)))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self9270_ _id9271_)
          (let ((_super9273_ (gx#current-expander-context)))
            (gx#phi-context:::init!__% _self9270_ _id9271_ _super9273_))))
      (define gx#phi-context:::init!
        (lambda _g9310_
          (let ((_g9309_ (length _g9310_)))
            (cond ((##fx= _g9309_ 2) (apply gx#phi-context:::init!__0 _g9310_))
                  ((##fx= _g9309_ 3) (apply gx#phi-context:::init!__% _g9310_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g9310_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__%
      (lambda (_self9127_ _super9128_)
        (struct-instance-init!
         _self9127_
         (gensym 'L)
         (make-table 'test: eq?)
         _super9128_)))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self9133_)
          (let ((_super9135_ (gx#current-expander-context)))
            (gx#local-context:::init!__% _self9133_ _super9135_))))
      (define gx#local-context:::init!
        (lambda _g9312_
          (let ((_g9311_ (length _g9312_)))
            (cond ((##fx= _g9311_ 1)
                   (apply gx#local-context:::init!__0 _g9312_))
                  ((##fx= _g9311_ 2)
                   (apply gx#local-context:::init!__% _g9312_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g9312_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args9001_
      (apply make-struct-instance gx#binding::t _$args9001_)))
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
    (lambda _$args8998_
      (apply make-struct-instance gx#runtime-binding::t _$args8998_)))
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
    (lambda _$args8995_
      (apply make-struct-instance gx#local-binding::t _$args8995_)))
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
    (lambda _$args8992_
      (apply make-struct-instance gx#top-binding::t _$args8992_)))
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
    (lambda _$args8989_
      (apply make-struct-instance gx#module-binding::t _$args8989_)))
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
    (lambda _$args8986_
      (apply make-struct-instance gx#extern-binding::t _$args8986_)))
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
    (lambda _$args8983_
      (apply make-struct-instance gx#syntax-binding::t _$args8983_)))
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
    (lambda _$args8980_
      (apply make-struct-instance gx#import-binding::t _$args8980_)))
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
    (lambda _$args8977_
      (apply make-struct-instance gx#alias-binding::t _$args8977_)))
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
    (lambda _$args8974_
      (apply make-struct-instance gx#expander::t _$args8974_)))
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
    (lambda _$args8971_
      (apply make-struct-instance gx#core-expander::t _$args8971_)))
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
    (lambda _$args8968_
      (apply make-struct-instance gx#expression-form::t _$args8968_)))
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
    (lambda _$args8965_
      (apply make-struct-instance gx#special-form::t _$args8965_)))
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
    (lambda _$args8962_
      (apply make-struct-instance gx#definition-form::t _$args8962_)))
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
    (lambda _$args8959_
      (apply make-struct-instance gx#top-special-form::t _$args8959_)))
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
    (lambda _$args8956_
      (apply make-struct-instance gx#module-special-form::t _$args8956_)))
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
    (lambda _$args8953_
      (apply make-struct-instance gx#feature-expander::t _$args8953_)))
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
    (lambda _$args8950_
      (apply make-struct-instance gx#private-feature-expander::t _$args8950_)))
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
    (lambda _$args8947_
      (apply make-struct-instance gx#reserved-expander::t _$args8947_)))
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
    (lambda _$args8944_
      (apply make-struct-instance gx#macro-expander::t _$args8944_)))
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
    (lambda _$args8941_
      (apply make-struct-instance gx#rename-macro-expander::t _$args8941_)))
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
    (lambda _$args8938_
      (apply make-struct-instance gx#user-expander::t _$args8938_)))
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
    (lambda _$args8935_
      (apply make-struct-instance gx#expander-mark::t _$args8935_)))
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
    (lambda _$args8932_
      (apply make-struct-instance gx#syntax-error::t _$args8932_)))
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
    (lambda (_where8927_ _message8928_ _stx8929_ . _details8930_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message8928_
              (cons _stx8929_ _details8930_)
              _where8927_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__%
      (lambda (_stx8914_ _expression?8915_)
        (gx#eval-syntax* (gx#core-expand__% _stx8914_ _expression?8915_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx8920_)
          (let ((_expression?8922_ '#f))
            (gx#eval-syntax__% _stx8920_ _expression?8922_))))
      (define gx#eval-syntax
        (lambda _g9314_
          (let ((_g9313_ (length _g9314_)))
            (cond ((##fx= _g9313_ 1) (apply gx#eval-syntax__0 _g9314_))
                  ((##fx= _g9313_ 2) (apply gx#eval-syntax__% _g9314_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g9314_))))))))
  (define gx#eval-syntax*
    (lambda (_stx8911_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx8911_))))
  (begin
    (define gx#core-expand__%
      (lambda (_stx8898_ _expression?8899_)
        (if _expression?8899_
            (gx#core-expand-expression _stx8898_)
            (gx#core-expand-top _stx8898_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx8904_)
          (let ((_expression?8906_ '#f))
            (gx#core-expand__% _stx8904_ _expression?8906_))))
      (define gx#core-expand
        (lambda _g9316_
          (let ((_g9315_ (length _g9316_)))
            (cond ((##fx= _g9315_ 1) (apply gx#core-expand__0 _g9316_))
                  ((##fx= _g9315_ 2) (apply gx#core-expand__% _g9316_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g9316_))))))))
  (define gx#core-expand-top
    (lambda (_stx8865_)
      (let* ((_stx8867_ (gx#core-expand*__0 _stx8865_))
             (_e88688875_ _stx8867_)
             (_E88708879_ (lambda () (gx#core-expand-expression _stx8867_)))
             (_E88698893_
              (lambda ()
                (if (gx#stx-pair? _e88688875_)
                    (let ((_e88718883_ (gx#syntax-e _e88688875_)))
                      (let ((_hd88728886_ (##car _e88718883_))
                            (_tl88738888_ (##cdr _e88718883_)))
                        (let ((_form8891_ _hd88728886_))
                          (if (gx#core-bound-identifier?__0 _form8891_)
                              _stx8867_
                              (_E88708879_)))))
                    (_E88708879_)))))
        (_E88698893_))))
  (define gx#core-expand-expression
    (lambda (_stx8812_)
      (letrec ((_sealed-expression?8814_
                (lambda (_hd8835_)
                  (if (gx#sealed-syntax? _hd8835_)
                      (let* ((_e88368843_ _hd8835_)
                             (_E88388847_ (lambda () '#f))
                             (_E88378861_
                              (lambda ()
                                (if (gx#stx-pair? _e88368843_)
                                    (let ((_e88398851_
                                           (gx#syntax-e _e88368843_)))
                                      (let ((_hd88408854_ (##car _e88398851_))
                                            (_tl88418856_ (##cdr _e88398851_)))
                                        (let ((_form8859_ _hd88408854_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form8859_
                                               gx#expression-form-binding?)
                                              (_E88388847_)))))
                                    (_E88388847_)))))
                        (_E88378861_))
                      '#f)))
               (_illegal-expression8815_
                (lambda (_hd8833_ . _g9317_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx8812_
                   _hd8833_)))
               (_expand-e8816_
                (lambda (_form8828_ _hd8829_)
                  (let ((_bind8831_
                         (if (##structure-instance-of?
                              _form8828_
                              'gx#binding::t)
                             _form8828_
                             (gx#resolve-identifier__0 _form8828_))))
                    (if (gx#core-expander-binding? _bind8831_)
                        (gx#core-apply-expander__0
                         (##unchecked-structure-ref
                          _bind8831_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd8829_
                          (gx#stx-source _stx8812_)))
                        (if (##structure-direct-instance-of?
                             _bind8831_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##unchecked-structure-ref
                               _bind8831_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd8829_
                               (gx#stx-source _stx8812_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx8812_
                             _form8828_)))))))
        (let ((_hd8818_ (gx#core-expand-head _stx8812_)))
          (if (_sealed-expression?8814_ _hd8818_)
              _hd8818_
              (if (gx#stx-pair? _hd8818_)
                  (let* ((_form8820_ (gx#stx-car _hd8818_))
                         (_bind8822_
                          (if (gx#identifier? _form8820_)
                              (gx#resolve-identifier__0 _form8820_)
                              '#f)))
                    (if (let ((_$e8825_ (not _bind8822_)))
                          (if _$e8825_
                              _$e8825_
                              (not (gx#core-expander-binding? _bind8822_))))
                        (_expand-e8816_ '%%app (cons '%%app _hd8818_))
                        (if (eq? (##unchecked-structure-ref
                                  _bind8822_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 '%#begin)
                            (gx#core-expand-block*
                             _hd8818_
                             _illegal-expression8815_)
                            (if (gx#expression-form-binding? _bind8822_)
                                (_expand-e8816_ _bind8822_ _hd8818_)
                                (if (gx#direct-special-form-binding?
                                     _bind8822_)
                                    (gx#core-expand-expression
                                     (_expand-e8816_ _bind8822_ _hd8818_))
                                    (_illegal-expression8815_ _hd8818_))))))
                  (if (gx#core-bound-identifier?__0 _hd8818_)
                      (_illegal-expression8815_ _hd8818_)
                      (if (gx#identifier? _hd8818_)
                          (_expand-e8816_
                           '%%ref
                           (cons '%%ref (cons _hd8818_ '())))
                          (if (gx#stx-datum? _hd8818_)
                              (_expand-e8816_
                               '%#quote
                               (cons '%#quote (cons _hd8818_ '())))
                              (_illegal-expression8815_ _hd8818_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx8807_)
      (call-with-parameters
       (lambda ()
         (let ((_stx8810_ (gx#core-expand-expression _stx8807_)))
           (values _stx8810_ (gx#eval-syntax* _stx8810_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__%
      (lambda (_stx8788_ _stop?8789_)
        (let _lp8791_ ((_stx8793_ _stx8788_))
          (if (_stop?8789_ _stx8793_)
              _stx8793_
              (let ((_rstx8795_ (gx#core-expand1 _stx8793_)))
                (if (eq? _stx8793_ _rstx8795_)
                    _stx8793_
                    (_lp8791_ _rstx8795_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx8800_)
          (let ((_stop?8802_ false))
            (gx#core-expand*__% _stx8800_ _stop?8802_))))
      (define gx#core-expand*
        (lambda _g9319_
          (let ((_g9318_ (length _g9319_)))
            (cond ((##fx= _g9318_ 1) (apply gx#core-expand*__0 _g9319_))
                  ((##fx= _g9318_ 2) (apply gx#core-expand*__% _g9319_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g9319_))))))))
  (define gx#core-expand1
    (lambda (_stx8744_)
      (letrec ((_step8746_
                (lambda (_hd8783_)
                  (let ((_bind8785_ (gx#resolve-identifier__0 _hd8783_)))
                    (if (##structure-instance-of?
                         _bind8785_
                         'gx#runtime-binding::t)
                        _stx8744_
                        (if (##structure-direct-instance-of?
                             _bind8785_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _bind8785_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx8744_)
                            (if (not _bind8785_)
                                _stx8744_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx8744_))))))))
        (let* ((_e87478755_ _stx8744_)
               (_E87538759_ (lambda () _stx8744_))
               (_E87498765_
                (lambda ()
                  (let ((_hd8763_ _e87478755_))
                    (if (gx#identifier? _hd8763_)
                        (_step8746_ _hd8763_)
                        (_E87538759_)))))
               (_E87488779_
                (lambda ()
                  (if (gx#stx-pair? _e87478755_)
                      (let ((_e87508769_ (gx#syntax-e _e87478755_)))
                        (let ((_hd87518772_ (##car _e87508769_))
                              (_tl87528774_ (##cdr _e87508769_)))
                          (let ((_hd8777_ _hd87518772_))
                            (if (gx#identifier? _hd8777_)
                                (_step8746_ _hd8777_)
                                (_E87498765_)))))
                      (_E87498765_)))))
          (_E87488779_)))))
  (define gx#core-expand-head
    (lambda (_stx8710_)
      (letrec ((_stop?8712_
                (lambda (_stx8714_)
                  (let* ((_e87158722_ _stx8714_)
                         (_E87178726_ (lambda () '#f))
                         (_E87168740_
                          (lambda ()
                            (if (gx#stx-pair? _e87158722_)
                                (let ((_e87188730_ (gx#syntax-e _e87158722_)))
                                  (let ((_hd87198733_ (##car _e87188730_))
                                        (_tl87208735_ (##cdr _e87188730_)))
                                    (let ((_hd8738_ _hd87198733_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd8738_)
                                          (_E87178726_)))))
                                (_E87178726_)))))
                    (_E87168740_)))))
        (gx#core-expand*__% _stx8710_ _stop?8712_))))
  (begin
    (define gx#core-expand-block__%
      (lambda (_stx8516_ _expand-special8517_ _begin-form8518_ _expand-e8519_)
        (letrec ((_expand-splice8521_
                  (lambda (_hd8684_ _body8685_ _rest8686_ _r8687_)
                    (if (gx#stx-list? _body8685_)
                        (_K8525_ (gx#stx-foldr cons _rest8686_ _body8685_)
                                 _r8687_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx8516_
                         _hd8684_))))
                 (_expand-cond-expand8522_
                  (lambda (_hd8680_ _rest8681_ _r8682_)
                    (_K8525_ (cons (gx#core-expand-cond-expand% _hd8680_)
                                   _rest8681_)
                             _r8682_)))
                 (_expand-include8523_
                  (lambda (_hd8629_ _rest8630_ _r8631_)
                    (let* ((_e86328642_ _hd8629_)
                           (_E86348646_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e86328642_)))
                           (_E86338676_
                            (lambda ()
                              (if (gx#stx-pair? _e86328642_)
                                  (let ((_e86358650_
                                         (gx#syntax-e _e86328642_)))
                                    (let ((_hd86368653_ (##car _e86358650_))
                                          (_tl86378655_ (##cdr _e86358650_)))
                                      (if (gx#stx-pair? _tl86378655_)
                                          (let ((_e86388658_
                                                 (gx#syntax-e _tl86378655_)))
                                            (let ((_hd86398661_
                                                   (##car _e86388658_))
                                                  (_tl86408663_
                                                   (##cdr _e86388658_)))
                                              (let ((_path8666_ _hd86398661_))
                                                (if (gx#stx-null? _tl86408663_)
                                                    (if (gx#stx-string?
                                                         _path8666_)
                                                        (let* ((_rpath8668_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path8666_
                         (gx#stx-source _hd8629_)))
                       (_block8670_
                        (gx#core-expand-include%__% _hd8629_ _rpath8668_))
                       (_rbody8673_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block8670_
                            _expand-special8517_
                            '#f
                            _expand-e8519_))
                         gx#current-expander-path
                         (cons _rpath8668_ (gx#current-expander-path)))))
                  (_K8525_ _rest8630_ (foldr1 cons _r8631_ _rbody8673_)))
                (_E86348646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E86348646_)))))
                                          (_E86348646_))))
                                  (_E86348646_)))))
                      (_E86338676_))))
                 (_expand-expression8524_
                  (lambda (_hd8625_ _rest8626_ _r8627_)
                    (_K8525_ _rest8626_
                             (cons (_expand-e8519_ _hd8625_) _r8627_))))
                 (_K8525_ (lambda (_rest8555_ _r8556_)
                            (let* ((_e85578564_ _rest8555_)
                                   (_E85598568_
                                    (lambda ()
                                      (if _begin-form8518_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form8518_
                                            (reverse _r8556_))
                                           (gx#stx-source _stx8516_))
                                          _r8556_)))
                                   (_E85588621_
                                    (lambda ()
                                      (if (gx#stx-pair? _e85578564_)
                                          (let ((_e85608572_
                                                 (gx#syntax-e _e85578564_)))
                                            (let ((_hd85618575_
                                                   (##car _e85608572_))
                                                  (_tl85628577_
                                                   (##cdr _e85608572_)))
                                              (let* ((_hd8580_ _hd85618575_)
                                                     (_rest8582_ _tl85628577_))
                                                (if '#t
                                                    (let* ((_hd8584_
                                                            (gx#core-expand-head
                                                             _hd8580_))
                                                           (_e85858592_
                                                            _hd8584_)
                                                           (_E85878596_
                                                            (lambda ()
                                                              (_expand-expression8524_
                                                               _hd8584_
                                                               _rest8582_
                                                               _r8556_)))
                                                           (_E85868617_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e85858592_)
                          (let ((_e85888600_ (gx#syntax-e _e85858592_)))
                            (let ((_hd85898603_ (##car _e85888600_))
                                  (_tl85908605_ (##cdr _e85888600_)))
                              (let* ((_form8608_ _hd85898603_)
                                     (_body8610_ _tl85908605_))
                                (if '#t
                                    (let ((_bind8612_
                                           (if (gx#identifier? _form8608_)
                                               (gx#resolve-identifier__0
                                                _form8608_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind8612_)
                                          (let ((_$e8614_
                                                 (##unchecked-structure-ref
                                                  _bind8612_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e8614_)
                                                (_expand-splice8521_
                                                 _hd8584_
                                                 _body8610_
                                                 _rest8582_
                                                 _r8556_)
                                                (if (eq? '%#cond-expand
                                                         _$e8614_)
                                                    (_expand-cond-expand8522_
                                                     _hd8584_
                                                     _rest8582_
                                                     _r8556_)
                                                    (if (eq? '%#include
                                                             _$e8614_)
                                                        (_expand-include8523_
                                                         _hd8584_
                                                         _rest8582_
                                                         _r8556_)
                                                        (_expand-special8517_
                                                         _hd8584_
                                                         _K8525_
                                                         _rest8582_
                                                         _r8556_)))))
                                          (_expand-expression8524_
                                           _hd8584_
                                           _rest8582_
                                           _r8556_)))
                                    (_E85878596_)))))
                          (_E85878596_)))))
              (_E85868617_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85598568_)))))
                                          (_E85598568_)))))
                              (_E85588621_)))))
          (let* ((_e85268533_ _stx8516_)
                 (_E85288537_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e85268533_)))
                 (_E85278551_
                  (lambda ()
                    (if (gx#stx-pair? _e85268533_)
                        (let ((_e85298541_ (gx#syntax-e _e85268533_)))
                          (let ((_hd85308544_ (##car _e85298541_))
                                (_tl85318546_ (##cdr _e85298541_)))
                            (let ((_body8549_ _tl85318546_))
                              (if (gx#stx-list? _body8549_)
                                  (_K8525_ _body8549_ '())
                                  (_E85288537_)))))
                        (_E85288537_)))))
            (_E85278551_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx8692_ _expand-special8693_)
          (let* ((_begin-form8695_ '%#begin)
                 (_expand-e8697_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8692_
             _expand-special8693_
             _begin-form8695_
             _expand-e8697_))))
      (define gx#core-expand-block__1
        (lambda (_stx8699_ _expand-special8700_ _begin-form8701_)
          (let ((_expand-e8703_ gx#core-expand-expression))
            (gx#core-expand-block__%
             _stx8699_
             _expand-special8700_
             _begin-form8701_
             _expand-e8703_))))
      (define gx#core-expand-block
        (lambda _g9321_
          (let ((_g9320_ (length _g9321_)))
            (cond ((##fx= _g9320_ 2) (apply gx#core-expand-block__0 _g9321_))
                  ((##fx= _g9320_ 3) (apply gx#core-expand-block__1 _g9321_))
                  ((##fx= _g9320_ 4) (apply gx#core-expand-block__% _g9321_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g9321_))))))))
  (define gx#core-expand-block*
    (lambda (_stx8464_ _expand-special8465_)
      (let* ((_g84668477_
              (gx#core-expand-block__1 _stx8464_ _expand-special8465_ '#f))
             (_E84708481_
              (lambda () (error '"No clause matching" _g84668477_))))
        (let ((_K84758512_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx8464_)))
              (_K84728498_ (lambda (_expr8496_) _expr8496_))
              (_K84718487_
               (lambda (_body8485_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body8485_))
                  (gx#stx-source _stx8464_)))))
          (let ((_try-match84688508_
                 (lambda ()
                   (if (##pair? _g84668477_)
                       (let ((_tl84748503_ (##cdr _g84668477_))
                             (_hd84738501_ (##car _g84668477_)))
                         (if (##null? _tl84748503_)
                             (let ((_expr8506_ _hd84738501_))
                               (_K84728498_ _expr8506_))
                             (let ((_body8490_ _g84668477_))
                               (_K84718487_ _body8490_))))
                       (let ((_body8490_ _g84668477_))
                         (_K84718487_ _body8490_))))))
            (if (##null? _g84668477_) (_K84758512_) (_try-match84688508_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx8322_)
      (letrec ((_satisfied?8324_
                (lambda (_condition8422_)
                  (let* ((_e84238431_ _condition8422_)
                         (_E84268435_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e84238431_)))
                         (_E84258454_
                          (lambda ()
                            (if (gx#stx-pair? _e84238431_)
                                (let ((_e84278439_ (gx#syntax-e _e84238431_)))
                                  (let ((_hd84288442_ (##car _e84278439_))
                                        (_tl84298444_ (##cdr _e84278439_)))
                                    (let* ((_combinator8447_ _hd84288442_)
                                           (_body8449_ _tl84298444_))
                                      (if (gx#stx-list? _body8449_)
                                          (let ((_$e8451_
                                                 (gx#stx-e _combinator8447_)))
                                            (if (eq? 'not _$e8451_)
                                                (not (gx#stx-ormap
                                                      _satisfied?8324_
                                                      _body8449_))
                                                (if (eq? 'and _$e8451_)
                                                    (gx#stx-andmap
                                                     _satisfied?8324_
                                                     _body8449_)
                                                    (if (eq? 'or _$e8451_)
                                                        (gx#stx-ormap
                                                         _satisfied?8324_
                                                         _body8449_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e8451_)
                    (gx#stx-andmap gx#core-resolve-identifier _body8449_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx8322_
                     _combinator8447_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E84268435_)))))
                                (_E84268435_))))
                         (_E84248460_
                          (lambda ()
                            (let ((_id8458_ _e84238431_))
                              (if (gx#identifier? _id8458_)
                                  (gx#core-bound-identifier?__%
                                   _id8458_
                                   gx#feature-binding?)
                                  (_E84258454_))))))
                    (_E84248460_))))
               (_loop8325_
                (lambda (_rest8355_)
                  (let* ((_e83568364_ _rest8355_)
                         (_E83628368_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e83568364_)))
                         (_E83588372_
                          (lambda ()
                            (if (gx#stx-null? _e83568364_)
                                (if '#t '() (_E83628368_))
                                (_E83628368_))))
                         (_E83578418_
                          (lambda ()
                            (if (gx#stx-pair? _e83568364_)
                                (let ((_e83598376_ (gx#syntax-e _e83568364_)))
                                  (let ((_hd83608379_ (##car _e83598376_))
                                        (_tl83618381_ (##cdr _e83598376_)))
                                    (let* ((_hd8384_ _hd83608379_)
                                           (_rest8386_ _tl83618381_))
                                      (if '#t
                                          (let* ((_e83878394_ _hd8384_)
                                                 (_E83898398_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e83878394_)))
                                                 (_E83888414_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e83878394_)
                                                        (let ((_e83908402_
                                                               (gx#syntax-e
                                                                _e83878394_)))
                                                          (let ((_hd83918405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e83908402_))
                        (_tl83928407_ (##cdr _e83908402_)))
                    (let* ((_condition8410_ _hd83918405_)
                           (_body8412_ _tl83928407_))
                      (if '#t
                          (if (gx#stx-eq? _condition8410_ 'else)
                              (if (gx#stx-null? _rest8386_)
                                  _body8412_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx8322_
                                   _hd8384_))
                              (if (_satisfied?8324_ _condition8410_)
                                  _body8412_
                                  (_loop8325_ _rest8386_)))
                          (_E83898398_)))))
                (_E83898398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E83888414_))
                                          (_E83588372_)))))
                                (_E83588372_)))))
                    (_E83578418_)))))
        (let* ((_e83268333_ _stx8322_)
               (_E83288337_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e83268333_)))
               (_E83278351_
                (lambda ()
                  (if (gx#stx-pair? _e83268333_)
                      (let ((_e83298341_ (gx#syntax-e _e83268333_)))
                        (let ((_hd83308344_ (##car _e83298341_))
                              (_tl83318346_ (##cdr _e83298341_)))
                          (let ((_clauses8349_ _tl83318346_))
                            (if (gx#stx-list? _clauses8349_)
                                (gx#core-cons
                                 'begin
                                 (_loop8325_ _clauses8349_))
                                (_E83288337_)))))
                      (_E83288337_)))))
          (_E83278351_)))))
  (begin
    (define gx#core-expand-include%__%
      (lambda (_stx8265_ _rpath8266_)
        (let* ((_e82678277_ _stx8265_)
               (_E82698281_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e82678277_)))
               (_E82688308_
                (lambda ()
                  (if (gx#stx-pair? _e82678277_)
                      (let ((_e82708285_ (gx#syntax-e _e82678277_)))
                        (let ((_hd82718288_ (##car _e82708285_))
                              (_tl82728290_ (##cdr _e82708285_)))
                          (if (gx#stx-pair? _tl82728290_)
                              (let ((_e82738293_ (gx#syntax-e _tl82728290_)))
                                (let ((_hd82748296_ (##car _e82738293_))
                                      (_tl82758298_ (##cdr _e82738293_)))
                                  (let ((_path8301_ _hd82748296_))
                                    (if (gx#stx-null? _tl82758298_)
                                        (if (gx#stx-string? _path8301_)
                                            (let ((_rpath8306_
                                                   (let ((_$e8303_
                                                          _rpath8266_))
                                                     (if _$e8303_
                                                         _$e8303_
                                                         (gx#core-resolve-path__%
                                                          _path8301_
                                                          (gx#stx-source
                                                           _stx8265_))))))
                                              (if (member _rpath8306_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx8265_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath8306_))
                                                    (gx#stx-source
                                                     _stx8265_)))))
                                            (_E82698281_))
                                        (_E82698281_)))))
                              (_E82698281_))))
                      (_E82698281_)))))
          (_E82688308_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx8315_)
          (let ((_rpath8317_ '#f))
            (gx#core-expand-include%__% _stx8315_ _rpath8317_))))
      (define gx#core-expand-include%
        (lambda _g9323_
          (let ((_g9322_ (length _g9323_)))
            (cond ((##fx= _g9322_ 1)
                   (apply gx#core-expand-include%__0 _g9323_))
                  ((##fx= _g9322_ 2)
                   (apply gx#core-expand-include%__% _g9323_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g9323_))))))))
  (begin
    (define gx#core-apply-expander__%
      (lambda (_K8234_ _stx8235_ _method8236_)
        (if (procedure? _K8234_)
            (let ((_$e8238_ (gx#stx-source _stx8235_)))
              (if _$e8238_
                  ((lambda (_g82408242_)
                     (gx#stx-wrap-source (_K8234_ _stx8235_) _g82408242_))
                   _$e8238_)
                  (_K8234_ _stx8235_)))
            (let ((_$e8245_ (bound-method-ref _K8234_ _method8236_)))
              (if _$e8245_
                  ((lambda (_g82478249_)
                     (gx#core-apply-expander__%
                      _g82478249_
                      _stx8235_
                      _method8236_))
                   _$e8245_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx8235_
                   _method8236_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K8255_ _stx8256_)
          (let ((_method8258_ 'apply-macro-expander))
            (gx#core-apply-expander__% _K8255_ _stx8256_ _method8258_))))
      (define gx#core-apply-expander
        (lambda _g9325_
          (let ((_g9324_ (length _g9325_)))
            (cond ((##fx= _g9324_ 2) (apply gx#core-apply-expander__0 _g9325_))
                  ((##fx= _g9324_ 3) (apply gx#core-apply-expander__% _g9325_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g9325_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self8230_ _stx8231_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx8231_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self8083_ _stx8084_)
      (let* ((_self80858091_ _self8083_)
             (_E80878095_
              (lambda () (error '"No clause matching" _self80858091_)))
             (_K80888100_
              (lambda (_K8098_)
                (gx#core-apply-expander__0 _K8098_ _stx8084_))))
        (if (##structure-instance-of? _self80858091_ 'gx#core-macro::t)
            (let* ((_e80898103_ (##vector-ref _self80858091_ '1))
                   (_K8106_ _e80898103_))
              (_K80888100_ _K8106_))
            (_E80878095_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self7936_ _stx7937_)
      (if (gx#sealed-syntax? _stx7937_)
          _stx7937_
          (let* ((_self79387944_ _self7936_)
                 (_E79407948_
                  (lambda () (error '"No clause matching" _self79387944_)))
                 (_K79417953_
                  (lambda (_K7951_)
                    (gx#core-apply-expander__0 _K7951_ _stx7937_))))
            (if (##structure-instance-of? _self79387944_ 'gx#core-expander::t)
                (let* ((_e79427956_ (##vector-ref _self79387944_ '1))
                       (_K7959_ _e79427956_))
                  (_K79417953_ _K7959_))
                (_E79407948_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self7798_ _stx7799_ _top?7800_)
        (if (_top?7800_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self7798_ _stx7799_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx7799_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self7805_ _stx7806_)
          (let ((_top?7808_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__%
             _self7805_
             _stx7806_
             _top?7808_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g9327_
          (let ((_g9326_ (length _g9327_)))
            (cond ((##fx= _g9326_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g9327_))
                  ((##fx= _g9326_ 3)
                   (apply gx#top-special-form::apply-macro-expander__%
                          _g9327_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g9327_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self7672_ _stx7673_)
      (gx#top-special-form::apply-macro-expander__%
       _self7672_
       _stx7673_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self7497_ _stx7498_)
      (let* ((_self74997505_ _self7497_)
             (_E75017509_
              (lambda () (error '"No clause matching" _self74997505_)))
             (_K75027542_
              (lambda (_id7512_)
                (let* ((_e75137520_ _stx7498_)
                       (_E75157524_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e75137520_)))
                       (_E75147538_
                        (lambda ()
                          (if (gx#stx-pair? _e75137520_)
                              (let ((_e75167528_ (gx#syntax-e _e75137520_)))
                                (let ((_hd75177531_ (##car _e75167528_))
                                      (_tl75187533_ (##cdr _e75167528_)))
                                  (let ((_body7536_ _tl75187533_))
                                    (if '#t
                                        (gx#core-cons _id7512_ _body7536_)
                                        (_E75157524_)))))
                              (_E75157524_)))))
                  (_E75147538_)))))
        (if (##structure-instance-of?
             _self74997505_
             'gx#rename-macro-expander::t)
            (let* ((_e75037545_ (##vector-ref _self74997505_ '1))
                   (_id7548_ _e75037545_))
              (_K75027542_ _id7548_))
            (_E75017509_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__%
      (lambda (_self7323_ _stx7324_ _method7325_)
        (let* ((_self73267334_ _self7323_)
               (_E73287338_
                (lambda () (error '"No clause matching" _self73267334_)))
               (_K73297345_
                (lambda (_phi7341_ _ctx7342_ _K7343_)
                  (gx#core-apply-user-macro
                   _K7343_
                   _stx7324_
                   _ctx7342_
                   _phi7341_
                   _method7325_))))
          (if (##structure-instance-of? _self73267334_ 'gx#macro-expander::t)
              (let* ((_e73307348_ (##vector-ref _self73267334_ '1))
                     (_K7351_ _e73307348_)
                     (_e73317353_ (##vector-ref _self73267334_ '2))
                     (_ctx7356_ _e73317353_)
                     (_e73327358_ (##vector-ref _self73267334_ '3))
                     (_phi7361_ _e73327358_))
                (_K73297345_ _phi7361_ _ctx7356_ _K7351_))
              (_E73287338_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self7366_ _stx7367_)
          (let ((_method7369_ 'apply-macro-expander))
            (gx#core-apply-user-expander__%
             _self7366_
             _stx7367_
             _method7369_))))
      (define gx#core-apply-user-expander
        (lambda _g9329_
          (let ((_g9328_ (length _g9329_)))
            (cond ((##fx= _g9328_ 2)
                   (apply gx#core-apply-user-expander__0 _g9329_))
                  ((##fx= _g9328_ 3)
                   (apply gx#core-apply-user-expander__% _g9329_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g9329_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K7313_ _stx7314_ _ctx7315_ _phi7316_ _method7317_)
      (let ((_mark7319_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx7315_
              _phi7316_
              _stx7314_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K7313_
             (gx#stx-apply-mark _stx7314_ _mark7319_)
             _method7317_)
            _mark7319_))
         gx#current-expander-marks
         (cons _mark7319_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__%
      (lambda (_stx7165_ _phi7166_ _ctx7167_)
        (let _lp7169_ ((_bind7171_
                        (gx#core-resolve-identifier__%
                         _stx7165_
                         _phi7166_
                         _ctx7167_)))
          (if (##structure-direct-instance-of?
               _bind7171_
               'gx#import-binding::t)
              (_lp7169_
               (##unchecked-structure-ref
                _bind7171_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind7171_
                   'gx#alias-binding::t)
                  (_lp7169_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind7171_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi7166_
                    _ctx7167_))
                  _bind7171_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx7176_)
          (let* ((_phi7178_ (gx#current-expander-phi))
                 (_ctx7180_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7176_ _phi7178_ _ctx7180_))))
      (define gx#resolve-identifier__1
        (lambda (_stx7182_ _phi7183_)
          (let ((_ctx7185_ (gx#current-expander-context)))
            (gx#resolve-identifier__% _stx7182_ _phi7183_ _ctx7185_))))
      (define gx#resolve-identifier
        (lambda _g9331_
          (let ((_g9330_ (length _g9331_)))
            (cond ((##fx= _g9330_ 1) (apply gx#resolve-identifier__0 _g9331_))
                  ((##fx= _g9330_ 2) (apply gx#resolve-identifier__1 _g9331_))
                  ((##fx= _g9330_ 3) (apply gx#resolve-identifier__% _g9331_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g9331_))))))))
  (begin
    (define gx#bind-identifier!__%
      (lambda (_stx7123_ _val7124_ _rebind?7125_ _phi7126_ _ctx7127_)
        (let ((_rebind?7129_
               (if (not _rebind?7125_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?7125_) _rebind?7125_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx7123_)
           _val7124_
           _rebind?7129_
           _phi7126_
           _ctx7127_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx7134_ _val7135_)
          (let* ((_rebind?7137_ '#f)
                 (_phi7139_ (gx#current-expander-phi))
                 (_ctx7141_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7134_
             _val7135_
             _rebind?7137_
             _phi7139_
             _ctx7141_))))
      (define gx#bind-identifier!__1
        (lambda (_stx7143_ _val7144_ _rebind?7145_)
          (let* ((_phi7147_ (gx#current-expander-phi))
                 (_ctx7149_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7143_
             _val7144_
             _rebind?7145_
             _phi7147_
             _ctx7149_))))
      (define gx#bind-identifier!__2
        (lambda (_stx7151_ _val7152_ _rebind?7153_ _phi7154_)
          (let ((_ctx7156_ (gx#current-expander-context)))
            (gx#bind-identifier!__%
             _stx7151_
             _val7152_
             _rebind?7153_
             _phi7154_
             _ctx7156_))))
      (define gx#bind-identifier!
        (lambda _g9333_
          (let ((_g9332_ (length _g9333_)))
            (cond ((##fx= _g9332_ 2) (apply gx#bind-identifier!__0 _g9333_))
                  ((##fx= _g9332_ 3) (apply gx#bind-identifier!__1 _g9333_))
                  ((##fx= _g9332_ 4) (apply gx#bind-identifier!__2 _g9333_))
                  ((##fx= _g9332_ 5) (apply gx#bind-identifier!__% _g9333_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g9333_))))))))
  (begin
    (define gx#core-resolve-identifier__%
      (lambda (_stx7095_ _phi7096_ _ctx7097_)
        (let _lp7099_ ((_e7101_ _stx7095_)
                       (_marks7102_ (gx#current-expander-marks)))
          (if (symbol? _e7101_)
              (gx#core-resolve-binding
               _e7101_
               _phi7096_
               _phi7096_
               _ctx7097_
               (reverse _marks7102_))
              (if (gx#identifier-quote? _e7101_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e7101_ '1 AST::t '#f)
                   _phi7096_
                   '0
                   (##unchecked-structure-ref
                    _e7101_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e7101_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e7101_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e7101_ '1 AST::t '#f)
                       _phi7096_
                       _phi7096_
                       _ctx7097_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e7101_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks7102_))
                      (if (##structure-direct-instance-of?
                           _e7101_
                           'gx#syntax-wrap::t)
                          (_lp7099_
                           (##unchecked-structure-ref _e7101_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e7101_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks7102_))
                          (if (##structure-instance-of? _e7101_ 'gerbil#AST::t)
                              (_lp7099_
                               (##unchecked-structure-ref
                                _e7101_
                                '1
                                AST::t
                                '#f)
                               _marks7102_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx7095_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx7107_)
          (let* ((_phi7109_ (gx#current-expander-phi))
                 (_ctx7111_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx7107_ _phi7109_ _ctx7111_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx7113_ _phi7114_)
          (let ((_ctx7116_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__% _stx7113_ _phi7114_ _ctx7116_))))
      (define gx#core-resolve-identifier
        (lambda _g9335_
          (let ((_g9334_ (length _g9335_)))
            (cond ((##fx= _g9334_ 1)
                   (apply gx#core-resolve-identifier__0 _g9335_))
                  ((##fx= _g9334_ 2)
                   (apply gx#core-resolve-identifier__1 _g9335_))
                  ((##fx= _g9334_ 3)
                   (apply gx#core-resolve-identifier__% _g9335_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g9335_))))))))
  (define gx#core-resolve-binding
    (lambda (_id7008_ _phi7009_ _src-phi7010_ _ctx7011_ _marks7012_)
      (letrec ((_resolve7014_
                (lambda (_ctx7082_ _src-phi7083_ _key7084_)
                  (let _lp7086_ ((_ctx7088_
                                  (gx#core-context-shift _ctx7082_ _phi7009_))
                                 (_dphi7089_ (fx- _phi7009_ _src-phi7083_)))
                    (let ((_$e7091_
                           (gx#core-context-resolve _ctx7088_ _key7084_)))
                      (if _$e7091_
                          (values _$e7091_)
                          (if (fxzero? _dphi7089_)
                              '#f
                              (if (fxpositive? _dphi7089_)
                                  (_lp7086_
                                   (gx#core-context-shift _ctx7088_ '-1)
                                   (fx- _dphi7089_ '1))
                                  (if (fxnegative? _dphi7089_)
                                      (_lp7086_
                                       (gx#core-context-shift _ctx7088_ '1)
                                       (fx+ _dphi7089_ '1))
                                      '#!void)))))))))
        (let _lp7016_ ((_ctx7018_ _ctx7011_)
                       (_src-phi7019_ _src-phi7010_)
                       (_rest7020_ _marks7012_))
          (let* ((_rest70217029_ _rest7020_)
                 (_else70237037_
                  (lambda () (_resolve7014_ _ctx7018_ _src-phi7019_ _id7008_)))
                 (_K70257070_
                  (lambda (_rest7040_ _hd7041_)
                    (let* ((_hd70427048_ _hd7041_)
                           (_E70447052_
                            (lambda ()
                              (error '"No clause matching" _hd70427048_)))
                           (_K70457062_
                            (lambda (_subst7055_)
                              (let ((_$e7059_
                                     (let ((_key7057_
                                            (if _subst7055_
                                                (table-ref
                                                 _subst7055_
                                                 _id7008_
                                                 '#f)
                                                '#f)))
                                       (if _key7057_
                                           (_resolve7014_
                                            _ctx7018_
                                            _src-phi7019_
                                            _key7057_)
                                           '#f))))
                                (if _$e7059_
                                    _$e7059_
                                    (_lp7016_
                                     (##unchecked-structure-ref
                                      _hd7041_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##unchecked-structure-ref
                                      _hd7041_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest7040_))))))
                      (if (##structure-instance-of?
                           _hd70427048_
                           'gx#expander-mark::t)
                          (let* ((_e70467065_ (##vector-ref _hd70427048_ '1))
                                 (_subst7068_ _e70467065_))
                            (_K70457062_ _subst7068_))
                          (_E70447052_))))))
            (if (##pair? _rest70217029_)
                (let ((_hd70267073_ (##car _rest70217029_))
                      (_tl70277075_ (##cdr _rest70217029_)))
                  (let* ((_hd7078_ _hd70267073_) (_rest7080_ _tl70277075_))
                    (_K70257070_ _rest7080_ _hd7078_)))
                (_else70237037_)))))))
  (begin
    (define gx#core-bind!__%
      (lambda (_key6884_ _val6885_ _rebind?6886_ _phi6887_ _ctx6888_)
        (letrec ((_update-binding6890_
                  (lambda (_xval6961_)
                    (if (let ((_$e6963_
                               (_rebind?6886_ _ctx6888_ _xval6961_ _val6885_)))
                          (if _$e6963_
                              _$e6963_
                              (let ((_$e6969_
                                     (if (##structure-direct-instance-of?
                                          _xval6961_
                                          'gx#import-binding::t)
                                         (let ((_$e6966_
                                                (##unchecked-structure-ref
                                                 _xval6961_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e6966_
                                               _$e6966_
                                               (if (##structure-instance-of?
                                                    _val6885_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val6885_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e6969_
                                    _$e6969_
                                    (if (##structure-instance-of?
                                         _xval6961_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val6885_
                                             'gx#runtime-binding::t)
                                            (eq? (##unchecked-structure-ref
                                                  _val6885_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##unchecked-structure-ref
                                                  _xval6961_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val6885_
                        (if (if (##structure-direct-instance-of?
                                 _val6885_
                                 'gx#import-binding::t)
                                (let ((_$e6972_
                                       (##unchecked-structure-ref
                                        _val6885_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e6972_
                                      _$e6972_
                                      (if (##structure-instance-of?
                                           _xval6961_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val6885_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval6961_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval6961_
                            (if (if (##structure-direct-instance-of?
                                     _val6885_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval6961_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key6884_
                                 (cons (##unchecked-structure-ref
                                        _val6885_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val6885_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval6961_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval6961_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval6961_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval6961_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key6884_
                                 _val6885_
                                 _xval6961_))))))
                 (_gensubst6891_
                  (lambda (_subst6956_ _id6957_)
                    (let ((_eid6959_
                           (gensym (if (uninterned-symbol? _id6957_)
                                       '%
                                       _id6957_))))
                      (begin
                        (table-set! _subst6956_ _id6957_ _eid6959_)
                        _eid6959_))))
                 (_subst!6892_
                  (lambda (_key6894_)
                    (let* ((_key68956903_ _key6894_)
                           (_else68976911_ (lambda () _key6894_))
                           (_K68996944_
                            (lambda (_mark6914_ _id6915_)
                              (let* ((_mark69166922_ _mark6914_)
                                     (_E69186926_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark69166922_)))
                                     (_K69196936_
                                      (lambda (_subst6929_)
                                        (if (not _subst6929_)
                                            (let ((_subst6931_
                                                   (make-table 'test: eq?)))
                                              (begin
                                                (##unchecked-structure-set!
                                                 _mark6914_
                                                 _subst6931_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst6891_
                                                 _subst6931_
                                                 _id6915_)))
                                            (let ((_$e6933_
                                                   (table-ref
                                                    _subst6929_
                                                    _id6915_
                                                    '#f)))
                                              (if _$e6933_
                                                  (values _$e6933_)
                                                  (_gensubst6891_
                                                   _subst6929_
                                                   _id6915_)))))))
                                (if (##structure-instance-of?
                                     _mark69166922_
                                     'gx#expander-mark::t)
                                    (let* ((_e69206939_
                                            (##vector-ref _mark69166922_ '1))
                                           (_subst6942_ _e69206939_))
                                      (_K69196936_ _subst6942_))
                                    (_E69186926_))))))
                      (if (##pair? _key68956903_)
                          (let ((_hd69006947_ (##car _key68956903_))
                                (_tl69016949_ (##cdr _key68956903_)))
                            (let* ((_id6952_ _hd69006947_)
                                   (_mark6954_ _tl69016949_))
                              (_K68996944_ _mark6954_ _id6952_)))
                          (_else68976911_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx6888_ _phi6887_)
           (_subst!6892_ _key6884_)
           _val6885_
           _update-binding6890_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key6978_ _val6979_)
          (let* ((_rebind?6981_ false)
                 (_phi6983_ (gx#current-expander-phi))
                 (_ctx6985_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6978_
             _val6979_
             _rebind?6981_
             _phi6983_
             _ctx6985_))))
      (define gx#core-bind!__1
        (lambda (_key6987_ _val6988_ _rebind?6989_)
          (let* ((_phi6991_ (gx#current-expander-phi))
                 (_ctx6993_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6987_
             _val6988_
             _rebind?6989_
             _phi6991_
             _ctx6993_))))
      (define gx#core-bind!__2
        (lambda (_key6995_ _val6996_ _rebind?6997_ _phi6998_)
          (let ((_ctx7000_ (gx#current-expander-context)))
            (gx#core-bind!__%
             _key6995_
             _val6996_
             _rebind?6997_
             _phi6998_
             _ctx7000_))))
      (define gx#core-bind!
        (lambda _g9337_
          (let ((_g9336_ (length _g9337_)))
            (cond ((##fx= _g9336_ 2) (apply gx#core-bind!__0 _g9337_))
                  ((##fx= _g9336_ 3) (apply gx#core-bind!__1 _g9337_))
                  ((##fx= _g9336_ 4) (apply gx#core-bind!__2 _g9337_))
                  ((##fx= _g9336_ 5) (apply gx#core-bind!__% _g9337_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g9337_))))))))
  (define gx#core-identifier-key
    (lambda (_stx6818_)
      (if (symbol? _stx6818_)
          (let* ((_g68196827_ (gx#current-expander-marks))
                 (_else68216835_ (lambda () _stx6818_))
                 (_K68236840_ (lambda (_hd6838_) (cons _stx6818_ _hd6838_))))
            (if (##pair? _g68196827_)
                (let* ((_hd68246843_ (##car _g68196827_))
                       (_hd6846_ _hd68246843_))
                  (_K68236840_ _hd6846_))
                (_else68216835_)))
          (if (gx#identifier? _stx6818_)
              (let* ((_id6848_ (gx#syntax-local-unwrap _stx6818_))
                     (_eid6850_ (gx#stx-e _id6848_))
                     (_marks6852_ (gx#stx-identifier-marks* _id6848_)))
                (let* ((_marks68546862_ _marks6852_)
                       (_else68566870_ (lambda () _eid6850_))
                       (_K68586875_
                        (lambda (_hd6873_) (cons _eid6850_ _hd6873_))))
                  (if (##pair? _marks68546862_)
                      (let* ((_hd68596878_ (##car _marks68546862_))
                             (_hd6881_ _hd68596878_))
                        (_K68586875_ _hd6881_))
                      (_else68566870_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx6818_)))))
  (define gx#core-context-shift
    (lambda (_ctx6763_ _phi6764_)
      (letrec ((_make-phi6766_
                (lambda (_super6816_)
                  (let ((__obj9308 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__%
                       __obj9308
                       (gensym 'phi)
                       _super6816_)
                      __obj9308))))
               (_make-phi/up6767_
                (lambda (_ctx6811_ _super6812_)
                  (let ((_ctx+16814_ (_make-phi6766_ _super6812_)))
                    (begin
                      (##unchecked-structure-set!
                       _ctx6811_
                       _ctx+16814_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+16814_
                       _ctx6811_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+16814_))))
               (_make-phi/down6768_
                (lambda (_ctx6806_ _super6807_)
                  (let ((_ctx-16809_ (_make-phi6766_ _super6807_)))
                    (begin
                      (##unchecked-structure-set!
                       _ctx-16809_
                       _ctx6806_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx6806_
                       _ctx-16809_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-16809_))))
               (_shift6769_
                (lambda (_ctx6790_
                         _delta6791_
                         _make-delta-context6792_
                         _phi6793_
                         _K6794_)
                  (let ((_$e6796_
                         (##unchecked-structure-ref
                          _ctx6790_
                          '3
                          gx#phi-context::t
                          '#f)))
                    (if _$e6796_
                        ((lambda (_super6799_)
                           (let* ((_super6801_
                                   (_K6794_ _super6799_ _delta6791_))
                                  (_ctx+d6803_
                                   (_make-delta-context6792_
                                    _ctx6790_
                                    _super6801_)))
                             (_K6794_ _ctx+d6803_
                                      (fx- _phi6793_ _delta6791_))))
                         _$e6796_)
                        (error '"Bad context" _ctx6790_))))))
        (let _K6771_ ((_ctx6773_ _ctx6763_) (_phi6774_ _phi6764_))
          (if (fxzero? _phi6774_)
              _ctx6773_
              (if (fx> (##vector-length _ctx6773_) '3)
                  (if (fxpositive? _phi6774_)
                      (let ((_$e6776_
                             (##unchecked-structure-ref
                              _ctx6773_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e6776_
                            ((lambda (_g67786780_)
                               (_K6771_ _g67786780_ (fx- _phi6774_ '1)))
                             _$e6776_)
                            (_shift6769_
                             _ctx6773_
                             '1
                             _make-phi/up6767_
                             _phi6774_
                             _K6771_)))
                      (let ((_$e6783_
                             (##unchecked-structure-ref
                              _ctx6773_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e6783_
                            ((lambda (_g67856787_)
                               (_K6771_ _g67856787_ (fx+ _phi6774_ '1)))
                             _$e6783_)
                            (_shift6769_
                             _ctx6773_
                             '-1
                             _make-phi/down6768_
                             _phi6774_
                             _K6771_))))
                  _ctx6773_))))))
  (define gx#core-context-get
    (lambda (_ctx6760_ _key6761_)
      (table-ref
       (##unchecked-structure-ref _ctx6760_ '2 gx#expander-context::t '#f)
       _key6761_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx6756_ _key6757_ _val6758_)
      (table-set!
       (##unchecked-structure-ref _ctx6756_ '2 gx#expander-context::t '#f)
       _key6757_
       _val6758_)))
  (define gx#core-context-resolve
    (lambda (_ctx6743_ _key6744_)
      (let _lp6746_ ((_ctx6748_ _ctx6743_))
        (let ((_$e6750_ (gx#core-context-get _ctx6748_ _key6744_)))
          (if _$e6750_
              (values _$e6750_)
              (let ((_$e6753_
                     (if (fx> (##vector-length _ctx6748_) '3)
                         (##unchecked-structure-ref
                          _ctx6748_
                          '3
                          gx#phi-context::t
                          '#f)
                         '#f)))
                (if _$e6753_ (_lp6746_ _$e6753_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx6733_ _key6734_ _val6735_ _rebind6736_)
      (let ((_$e6738_ (gx#core-context-get _ctx6733_ _key6734_)))
        (if _$e6738_
            ((lambda (_xval6741_)
               (gx#core-context-put!
                _ctx6733_
                _key6734_
                (_rebind6736_ _xval6741_)))
             _$e6738_)
            (gx#core-context-put! _ctx6733_ _key6734_ _val6735_)))))
  (begin
    (define gx#core-context-top__%
      (lambda (_ctx6711_ _stop?6712_)
        (let _lp6714_ ((_ctx6716_ _ctx6711_))
          (if (_stop?6712_ _ctx6716_)
              _ctx6716_
              (if (##structure-instance-of? _ctx6716_ 'gx#context-phi::t)
                  (_lp6714_
                   (##unchecked-structure-ref
                    _ctx6716_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx6722_ (gx#current-expander-context))
                 (_stop?6724_ gx#top-context?))
            (gx#core-context-top__% _ctx6722_ _stop?6724_))))
      (define gx#core-context-top__1
        (lambda (_ctx6726_)
          (let ((_stop?6728_ gx#top-context?))
            (gx#core-context-top__% _ctx6726_ _stop?6728_))))
      (define gx#core-context-top
        (lambda _g9339_
          (let ((_g9338_ (length _g9339_)))
            (cond ((##fx= _g9338_ 0) (apply gx#core-context-top__0 _g9339_))
                  ((##fx= _g9338_ 1) (apply gx#core-context-top__1 _g9339_))
                  ((##fx= _g9338_ 2) (apply gx#core-context-top__% _g9339_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g9339_))))))))
  (begin
    (define gx#core-context-root__%
      (lambda (_ctx6696_)
        (let _lp6698_ ((_ctx6700_ _ctx6696_))
          (if (##structure-instance-of? _ctx6700_ 'gx#context-phi::t)
              (_lp6698_
               (##unchecked-structure-ref _ctx6700_ '3 gx#phi-context::t '#f))
              _ctx6700_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx6706_ (gx#current-expander-context)))
            (gx#core-context-root__% _ctx6706_))))
      (define gx#core-context-root
        (lambda _g9341_
          (let ((_g9340_ (length _g9341_)))
            (cond ((##fx= _g9340_ 0) (apply gx#core-context-root__0 _g9341_))
                  ((##fx= _g9340_ 1) (apply gx#core-context-root__% _g9341_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g9341_))))))))
  (begin
    (define gx#core-context-rebind?__%
      (lambda (_ctx6680_ . __66776681_)
        (if (##structure-instance-of? _ctx6680_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx6680_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx6680_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx6688_ (gx#current-expander-context)))
            (gx#core-context-rebind?__% _ctx6688_))))
      (define gx#core-context-rebind?
        (lambda _g9343_
          (let ((_g9342_ (length _g9343_)))
            (cond ((##fx= _g9342_ 0)
                   (apply gx#core-context-rebind?__0 _g9343_))
                  ((##fx= _g9342_ 1)
                   (apply gx#core-context-rebind?__% _g9343_))
                  ((##fx>= _g9342_ 1)
                   (apply gx#core-context-rebind?__% _g9343_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g9343_))))))))
  (begin
    (define gx#core-context-namespace__%
      (lambda (_ctx6663_)
        (let ((_$e6665_ (gx#core-context-top__1 _ctx6663_)))
          (if _$e6665_
              ((lambda (_ctx6668_)
                 (if (##structure-instance-of? _ctx6668_ 'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx6668_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e6665_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx6674_ (gx#current-expander-context)))
            (gx#core-context-namespace__% _ctx6674_))))
      (define gx#core-context-namespace
        (lambda _g9345_
          (let ((_g9344_ (length _g9345_)))
            (cond ((##fx= _g9344_ 0)
                   (apply gx#core-context-namespace__0 _g9345_))
                  ((##fx= _g9344_ 1)
                   (apply gx#core-context-namespace__% _g9345_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g9345_))))))))
  (begin
    (define gx#expander-binding?__%
      (lambda (_bind6649_ _is?6650_)
        (if (##structure-direct-instance-of? _bind6649_ 'gx#syntax-binding::t)
            (_is?6650_
             (##unchecked-structure-ref
              _bind6649_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind6655_)
          (let ((_is?6657_ gx#expander?))
            (gx#expander-binding?__% _bind6655_ _is?6657_))))
      (define gx#expander-binding?
        (lambda _g9347_
          (let ((_g9346_ (length _g9347_)))
            (cond ((##fx= _g9346_ 1) (apply gx#expander-binding?__0 _g9347_))
                  ((##fx= _g9346_ 2) (apply gx#expander-binding?__% _g9347_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g9347_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind6646_)
      (gx#expander-binding?__% _bind6646_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind6644_)
      (gx#expander-binding?__% _bind6644_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind6638_)
      (letrec ((_direct-special-form?6640_
                (lambda (_obj6642_)
                  (direct-struct-instance? gx#special-form::t _obj6642_))))
        (gx#expander-binding?__% _bind6638_ _direct-special-form?6640_))))
  (define gx#special-form-binding?
    (lambda (_bind6636_)
      (gx#expander-binding?__% _bind6636_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind6627_)
      (letrec ((_feature?6629_
                (lambda (_e6631_)
                  (let ((_$e6633_
                         (##structure-instance-of?
                          _e6631_
                          'gx#feature-expander::t)))
                    (if _$e6633_
                        _$e6633_
                        (##structure-instance-of?
                         _e6631_
                         'gx#module-context::t))))))
        (gx#expander-binding?__% _bind6627_ _feature?6629_))))
  (define gx#private-feature-binding?
    (lambda (_bind6625_)
      (gx#expander-binding?__% _bind6625_ gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__%
      (lambda (_id6612_ _bound?6613_)
        (if (gx#identifier? _id6612_)
            (_bound?6613_ (gx#resolve-identifier__0 _id6612_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id6618_)
          (let ((_bound?6620_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__% _id6618_ _bound?6620_))))
      (define gx#core-bound-identifier?
        (lambda _g9349_
          (let ((_g9348_ (length _g9349_)))
            (cond ((##fx= _g9348_ 1)
                   (apply gx#core-bound-identifier?__0 _g9349_))
                  ((##fx= _g9348_ 2)
                   (apply gx#core-bound-identifier?__% _g9349_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g9349_))))))))
  (define gx#core-identifier=?
    (lambda (_x6602_ _y6603_)
      (letrec ((_y=?6605_
                (lambda (_xid6609_)
                  ((if (list? _y6603_) memq eq?) _xid6609_ _y6603_))))
        (let ((_bind6607_ (gx#resolve-identifier__0 _x6602_)))
          (if (##structure-instance-of? _bind6607_ 'gx#binding::t)
              (_y=?6605_
               (##unchecked-structure-ref _bind6607_ '1 gx#binding::t '#f))
              (_y=?6605_ (gx#stx-e _x6602_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e6600_)
      (if (interned-symbol? _e6600_)
          (string-index (symbol->string _e6600_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__%
      (lambda (_stx6555_ _src6556_ _ctx6557_ _marks6558_)
        (let ((_$e6560_ (gx#sealed-syntax-unwrap _stx6555_)))
          (if _$e6560_
              (values _$e6560_)
              (if (gx#identifier? _stx6555_)
                  (let ((_id6563_ (gx#syntax-local-unwrap _stx6555_)))
                    (##structure
                     gx#syntax-quote::t
                     (gx#stx-e _id6563_)
                     (let ((_$e6565_ (gx#stx-source _id6563_)))
                       (if _$e6565_ _$e6565_ _src6556_))
                     _ctx6557_
                     (##unchecked-structure-ref
                      _id6563_
                      '3
                      gx#identifier-wrap::t
                      '#f)))
                  (if (gx#stx-datum? _stx6555_)
                      (gx#stx-e _stx6555_)
                      (##structure
                       gx#syntax-quote::t
                       _stx6555_
                       (let ((_$e6568_ (gx#stx-source _stx6555_)))
                         (if _$e6568_ _$e6568_ _src6556_))
                       _ctx6557_
                       (reverse _marks6558_))))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx6574_)
          (let* ((_src6576_ '#f)
                 (_ctx6578_ (gx#current-expander-context))
                 (_marks6580_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6574_
             _src6576_
             _ctx6578_
             _marks6580_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx6582_ _src6583_)
          (let* ((_ctx6585_ (gx#current-expander-context))
                 (_marks6587_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6582_
             _src6583_
             _ctx6585_
             _marks6587_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx6589_ _src6590_ _ctx6591_)
          (let ((_marks6593_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__%
             _stx6589_
             _src6590_
             _ctx6591_
             _marks6593_))))
      (define gx#core-quote-syntax
        (lambda _g9351_
          (let ((_g9350_ (length _g9351_)))
            (cond ((##fx= _g9350_ 1) (apply gx#core-quote-syntax__0 _g9351_))
                  ((##fx= _g9350_ 2) (apply gx#core-quote-syntax__1 _g9351_))
                  ((##fx= _g9350_ 3) (apply gx#core-quote-syntax__2 _g9351_))
                  ((##fx= _g9350_ 4) (apply gx#core-quote-syntax__% _g9351_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g9351_))))))))
  (define gx#core-cons
    (lambda (_hd6551_ _tl6552_)
      (cons (gx#core-quote-syntax__0 _hd6551_) _tl6552_)))
  (define gx#core-list
    (lambda (_hd6548_ . _rest6549_)
      (cons (gx#core-quote-syntax__0 _hd6548_) _rest6549_)))
  (define gx#core-cons*
    (lambda (_hd6545_ . _rest6546_)
      (apply cons* (gx#core-quote-syntax__0 _hd6545_) _rest6546_)))
  (begin
    (define gx#core-resolve-path__%
      (lambda (_stx-path6519_ _rel6520_)
        (let ((_path6532_ (gx#stx-e _stx-path6519_))
              (_reldir6533_
               (let _lp6522_ ((_relsrc6524_
                               (let ((_$e6529_ (gx#stx-source _stx-path6519_)))
                                 (if _$e6529_ _$e6529_ _rel6520_))))
                 (if (##structure-instance-of? _relsrc6524_ 'gerbil#AST::t)
                     (_lp6522_
                      (let ((_$e6526_ (gx#stx-source _relsrc6524_)))
                        (if _$e6526_ _$e6526_ (gx#stx-e _relsrc6524_))))
                     (if (source-location-path? _relsrc6524_)
                         (path-directory (source-location-path _relsrc6524_))
                         (if (string? _relsrc6524_)
                             (path-directory _relsrc6524_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path6532_ (path-normalize _reldir6533_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path6538_)
          (let ((_rel6540_ '#f))
            (gx#core-resolve-path__% _stx-path6538_ _rel6540_))))
      (define gx#core-resolve-path
        (lambda _g9353_
          (let ((_g9352_ (length _g9353_)))
            (cond ((##fx= _g9352_ 1) (apply gx#core-resolve-path__0 _g9353_))
                  ((##fx= _g9352_ 2) (apply gx#core-resolve-path__% _g9353_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g9353_))))))))
  (begin
    (define gx#core-deserialize-mark__%
      (lambda (_repr6475_ _ctx6476_)
        (let* ((_repr64776484_ _repr6475_)
               (_E64796488_
                (lambda () (error '"No clause matching" _repr64776484_)))
               (_K64806496_
                (lambda (_subs6491_ _phi6492_)
                  (let ((_subst6494_
                         (if (not (null? _subs6491_))
                             (list->table _subs6491_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst6494_
                     _ctx6476_
                     _phi6492_
                     '#f)))))
          (if (##pair? _repr64776484_)
              (let ((_hd64816499_ (##car _repr64776484_))
                    (_tl64826501_ (##cdr _repr64776484_)))
                (let* ((_phi6504_ _hd64816499_) (_subs6506_ _tl64826501_))
                  (_K64806496_ _subs6506_ _phi6504_)))
              (_E64796488_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr6511_)
          (let ((_ctx6513_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__% _repr6511_ _ctx6513_))))
      (define gx#core-deserialize-mark
        (lambda _g9355_
          (let ((_g9354_ (length _g9355_)))
            (cond ((##fx= _g9354_ 1)
                   (apply gx#core-deserialize-mark__0 _g9355_))
                  ((##fx= _g9354_ 2)
                   (apply gx#core-deserialize-mark__% _g9355_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g9355_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx6472_) (gx#stx-rewrap _stx6472_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx6470_)
      (gx#stx-unwrap__% _stx6470_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx6440_)
      (let* ((_g64416449_ (gx#current-expander-marks))
             (_else64436457_ (lambda () _stx6440_))
             (_K64456462_
              (lambda (_hd6460_) (gx#stx-apply-mark _stx6440_ _hd6460_))))
        (if (##pair? _g64416449_)
            (let* ((_hd64466465_ (##car _g64416449_)) (_hd6468_ _hd64466465_))
              (_K64456462_ _hd6468_))
            (_else64436457_)))))
  (begin
    (define gx#syntax-local-e__%
      (lambda (_stx6425_ _E6426_)
        (let ((_bind6428_ (gx#resolve-identifier__0 _stx6425_)))
          (if (##structure-direct-instance-of?
               _bind6428_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind6428_
               '4
               gx#syntax-binding::t
               '#f)
              (_E6426_ _stx6425_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx6433_)
          (let ((_E6435_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__% _stx6433_ _E6435_))))
      (define gx#syntax-local-e
        (lambda _g9357_
          (let ((_g9356_ (length _g9357_)))
            (cond ((##fx= _g9356_ 1) (apply gx#syntax-local-e__0 _g9357_))
                  ((##fx= _g9356_ 2) (apply gx#syntax-local-e__% _g9357_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g9357_))))))))
  (begin
    (define gx#syntax-local-value__%
      (lambda (_stx6409_ _E6410_)
        (let ((_e6412_ (gx#syntax-local-e__% _stx6409_ _E6410_)))
          (if (##structure-instance-of? _e6412_ 'gx#expander::t)
              (##structure-ref _e6412_ '1 gx#expander::t '#f)
              _e6412_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx6417_)
          (let ((_E6419_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__% _stx6417_ _E6419_))))
      (define gx#syntax-local-value
        (lambda _g9359_
          (let ((_g9358_ (length _g9359_)))
            (cond ((##fx= _g9358_ 1) (apply gx#syntax-local-value__0 _g9359_))
                  ((##fx= _g9358_ 2) (apply gx#syntax-local-value__% _g9359_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g9359_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx6406_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx6406_))))
