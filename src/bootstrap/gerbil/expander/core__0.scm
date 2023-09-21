(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1695292397)
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
    (define gx#current-expander-allow-rebind? (make-parameter '#f))
    (define gx#current-expander-compiling? (make-parameter '#f))
    (define gx#expander-context::t
      (make-struct-type
       'gx#expander-context::t
       '#f
       '2
       'expander-context
       '()
       ':init!
       '(id table)))
    (define gx#expander-context?
      (make-struct-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _$args9509_
        (apply make-struct-instance gx#expander-context::t _$args9509_)))
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
      (lambda _$args9506_
        (apply make-struct-instance gx#root-context::t _$args9506_)))
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
      (lambda _$args9503_
        (apply make-struct-instance gx#phi-context::t _$args9503_)))
    (define gx#phi-context-super
      (make-struct-field-accessor gx#phi-context::t '0))
    (define gx#phi-context-up
      (make-struct-field-accessor gx#phi-context::t '1))
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
      (lambda _$args9500_
        (apply make-struct-instance gx#top-context::t _$args9500_)))
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
      (lambda _$args9497_
        (apply make-struct-instance gx#module-context::t _$args9497_)))
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
      (lambda _$args9494_
        (apply make-struct-instance gx#prelude-context::t _$args9494_)))
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
      (lambda _$args9491_
        (apply make-struct-instance gx#local-context::t _$args9491_)))
    (define gx#phi-context:::init!__%
      (lambda (_self9475_ _id9476_ _super9477_)
        (if (##fx< '3 (##vector-length _self9475_))
            (begin
              (##vector-set! _self9475_ '1 _id9476_)
              (##vector-set! _self9475_ '2 (make-table 'test: eq?))
              (##vector-set! _self9475_ '3 _super9477_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self9475_))))
    (define gx#phi-context:::init!__0
      (lambda (_self9482_ _id9483_)
        (let ((_super9485_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self9482_ _id9483_ _super9485_))))
    (define gx#phi-context:::init!
      (lambda _g9522_
        (let ((_g9521_ (##length _g9522_)))
          (cond ((##fx= _g9521_ 2)
                 (apply (lambda (_self9482_ _id9483_)
                          (gx#phi-context:::init!__0 _self9482_ _id9483_))
                        _g9522_))
                ((##fx= _g9521_ 3)
                 (apply (lambda (_self9487_ _id9488_ _super9489_)
                          (gx#phi-context:::init!__%
                           _self9487_
                           _id9488_
                           _super9489_))
                        _g9522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g9522_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self9339_ _super9340_)
        (if (##fx< '3 (##vector-length _self9339_))
            (begin
              (##vector-set! _self9339_ '1 (gensym 'L))
              (##vector-set! _self9339_ '2 (make-table 'test: eq?))
              (##vector-set! _self9339_ '3 _super9340_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self9339_))))
    (define gx#local-context:::init!__0
      (lambda (_self9345_)
        (let ((_super9347_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self9345_ _super9347_))))
    (define gx#local-context:::init!
      (lambda _g9524_
        (let ((_g9523_ (##length _g9524_)))
          (cond ((##fx= _g9523_ 1)
                 (apply (lambda (_self9345_)
                          (gx#local-context:::init!__0 _self9345_))
                        _g9524_))
                ((##fx= _g9523_ 2)
                 (apply (lambda (_self9349_ _super9350_)
                          (gx#local-context:::init!__% _self9349_ _super9350_))
                        _g9524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g9524_))))))
    (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-struct-type
       'gx#binding::t
       '#f
       '3
       'binding
       '((transparent: . #t))
       '#f
       '(id key phi)))
    (define gx#binding? (make-struct-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _$args9213_
        (apply make-struct-instance gx#binding::t _$args9213_)))
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
       '((transparent: . #t))
       '#f
       '()))
    (define gx#runtime-binding? (make-struct-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _$args9210_
        (apply make-struct-instance gx#runtime-binding::t _$args9210_)))
    (define gx#local-binding::t
      (make-struct-type
       'gx#local-binding::t
       gx#runtime-binding::t
       '0
       'local-binding
       '((transparent: . #t))
       '#f
       '()))
    (define gx#local-binding? (make-struct-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _$args9207_
        (apply make-struct-instance gx#local-binding::t _$args9207_)))
    (define gx#top-binding::t
      (make-struct-type
       'gx#top-binding::t
       gx#runtime-binding::t
       '0
       'top-binding
       '((transparent: . #t))
       '#f
       '()))
    (define gx#top-binding? (make-struct-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _$args9204_
        (apply make-struct-instance gx#top-binding::t _$args9204_)))
    (define gx#module-binding::t
      (make-struct-type
       'gx#module-binding::t
       gx#top-binding::t
       '1
       'module-binding
       '((transparent: . #t))
       '#f
       '(context)))
    (define gx#module-binding? (make-struct-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _$args9201_
        (apply make-struct-instance gx#module-binding::t _$args9201_)))
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
       '((transparent: . #t))
       '#f
       '()))
    (define gx#extern-binding? (make-struct-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _$args9198_
        (apply make-struct-instance gx#extern-binding::t _$args9198_)))
    (define gx#syntax-binding::t
      (make-struct-type
       'gx#syntax-binding::t
       gx#binding::t
       '1
       'syntax-binding
       '((final: . #t) (transparent: . #t))
       '#f
       '(e)))
    (define gx#syntax-binding? (make-struct-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _$args9195_
        (apply make-struct-instance gx#syntax-binding::t _$args9195_)))
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
       '((final: . #t) (transparent: . #t))
       '#f
       '(e context weak?)))
    (define gx#import-binding? (make-struct-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _$args9192_
        (apply make-struct-instance gx#import-binding::t _$args9192_)))
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
       '((final: . #t) (transparent: . #t))
       '#f
       '(e)))
    (define gx#alias-binding? (make-struct-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _$args9189_
        (apply make-struct-instance gx#alias-binding::t _$args9189_)))
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
      (lambda _$args9186_
        (apply make-struct-instance gx#expander::t _$args9186_)))
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
      (lambda _$args9183_
        (apply make-struct-instance gx#core-expander::t _$args9183_)))
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
      (lambda _$args9180_
        (apply make-struct-instance gx#expression-form::t _$args9180_)))
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
      (lambda _$args9177_
        (apply make-struct-instance gx#special-form::t _$args9177_)))
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
      (lambda _$args9174_
        (apply make-struct-instance gx#definition-form::t _$args9174_)))
    (define gx#top-special-form::t
      (make-struct-type
       'gx#top-special-form::t
       gx#special-form::t
       '0
       'top-special-form
       '()
       '#f
       '()))
    (define gx#top-special-form?
      (make-struct-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _$args9171_
        (apply make-struct-instance gx#top-special-form::t _$args9171_)))
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
      (lambda _$args9168_
        (apply make-struct-instance gx#module-special-form::t _$args9168_)))
    (define gx#feature-expander::t
      (make-struct-type
       'gx#feature-expander::t
       gx#expander::t
       '0
       'feature-expander
       '()
       '#f
       '()))
    (define gx#feature-expander?
      (make-struct-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _$args9165_
        (apply make-struct-instance gx#feature-expander::t _$args9165_)))
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
      (lambda _$args9162_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args9162_)))
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
      (lambda _$args9159_
        (apply make-struct-instance gx#reserved-expander::t _$args9159_)))
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
      (lambda _$args9156_
        (apply make-struct-instance gx#macro-expander::t _$args9156_)))
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
      (lambda _$args9153_
        (apply make-struct-instance gx#rename-macro-expander::t _$args9153_)))
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
      (lambda _$args9150_
        (apply make-struct-instance gx#user-expander::t _$args9150_)))
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
      (lambda _$args9147_
        (apply make-struct-instance gx#expander-mark::t _$args9147_)))
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
    (define gx#raise-syntax-error
      (lambda (_where9142_ _message9143_ _stx9144_ . _details9145_)
        (raise (make-syntax-error
                _message9143_
                (cons _stx9144_ _details9145_)
                _where9142_
                (gx#current-expander-context)
                (gx#current-expander-marks)
                (gx#current-expander-phi)))))
    (define gx#eval-syntax__%
      (lambda (_stx9129_ _expression?9130_)
        (gx#eval-syntax* (gx#core-expand__% _stx9129_ _expression?9130_))))
    (define gx#eval-syntax__0
      (lambda (_stx9135_)
        (let ((_expression?9137_ '#f))
          (gx#eval-syntax__% _stx9135_ _expression?9137_))))
    (define gx#eval-syntax
      (lambda _g9526_
        (let ((_g9525_ (##length _g9526_)))
          (cond ((##fx= _g9525_ 1)
                 (apply (lambda (_stx9135_) (gx#eval-syntax__0 _stx9135_))
                        _g9526_))
                ((##fx= _g9525_ 2)
                 (apply (lambda (_stx9139_ _expression?9140_)
                          (gx#eval-syntax__% _stx9139_ _expression?9140_))
                        _g9526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g9526_))))))
    (define gx#eval-syntax*
      (lambda (_stx9126_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx9126_))))
    (define gx#core-expand__%
      (lambda (_stx9113_ _expression?9114_)
        (if _expression?9114_
            (gx#core-expand-expression _stx9113_)
            (gx#core-expand-top _stx9113_))))
    (define gx#core-expand__0
      (lambda (_stx9119_)
        (let ((_expression?9121_ '#f))
          (gx#core-expand__% _stx9119_ _expression?9121_))))
    (define gx#core-expand
      (lambda _g9528_
        (let ((_g9527_ (##length _g9528_)))
          (cond ((##fx= _g9527_ 1)
                 (apply (lambda (_stx9119_) (gx#core-expand__0 _stx9119_))
                        _g9528_))
                ((##fx= _g9527_ 2)
                 (apply (lambda (_stx9123_ _expression?9124_)
                          (gx#core-expand__% _stx9123_ _expression?9124_))
                        _g9528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g9528_))))))
    (define gx#core-expand-top
      (lambda (_stx9080_)
        (let* ((_stx9082_ (gx#core-expand*__0 _stx9080_))
               (_e90839090_ _stx9082_)
               (_E90859094_ (lambda () (gx#core-expand-expression _stx9082_)))
               (_E90849108_
                (lambda ()
                  (if (gx#stx-pair? _e90839090_)
                      (let ((_e90869098_ (gx#syntax-e _e90839090_)))
                        (let ((_hd90879101_ (##car _e90869098_))
                              (_tl90889103_ (##cdr _e90869098_)))
                          (let ((_form9106_ _hd90879101_))
                            (if (gx#core-bound-identifier?__0 _form9106_)
                                _stx9082_
                                (_E90859094_)))))
                      (_E90859094_)))))
          (_E90849108_))))
    (define gx#core-expand-expression
      (lambda (_stx9027_)
        (letrec ((_sealed-expression?9029_
                  (lambda (_hd9050_)
                    (if (gx#sealed-syntax? _hd9050_)
                        (let* ((_e90519058_ _hd9050_)
                               (_E90539062_ (lambda () '#f))
                               (_E90529076_
                                (lambda ()
                                  (if (gx#stx-pair? _e90519058_)
                                      (let ((_e90549066_
                                             (gx#syntax-e _e90519058_)))
                                        (let ((_hd90559069_
                                               (##car _e90549066_))
                                              (_tl90569071_
                                               (##cdr _e90549066_)))
                                          (let ((_form9074_ _hd90559069_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form9074_
                                                 gx#expression-form-binding?)
                                                (_E90539062_)))))
                                      (_E90539062_)))))
                          (_E90529076_))
                        '#f)))
                 (_illegal-expression9030_
                  (lambda (_hd9048_ . _g9529_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx9027_
                     _hd9048_)))
                 (_expand-e9031_
                  (lambda (_form9043_ _hd9044_)
                    (let ((_bind9046_
                           (if (##structure-instance-of?
                                _form9043_
                                'gx#binding::t)
                               _form9043_
                               (gx#resolve-identifier__0 _form9043_))))
                      (if (gx#core-expander-binding? _bind9046_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind9046_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd9044_
                            (gx#stx-source _stx9027_)))
                          (if (##structure-direct-instance-of?
                               _bind9046_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind9046_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd9044_
                                 (gx#stx-source _stx9027_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx9027_
                               _form9043_)))))))
          (let ((_hd9033_ (gx#core-expand-head _stx9027_)))
            (if (_sealed-expression?9029_ _hd9033_)
                _hd9033_
                (if (gx#stx-pair? _hd9033_)
                    (let* ((_form9035_ (gx#stx-car _hd9033_))
                           (_bind9037_
                            (if (gx#identifier? _form9035_)
                                (gx#resolve-identifier__0 _form9035_)
                                '#f)))
                      (if (or (not _bind9037_)
                              (not (gx#core-expander-binding? _bind9037_)))
                          (_expand-e9031_ '%%app (cons '%%app _hd9033_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind9037_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd9033_
                               _illegal-expression9030_)
                              (if (gx#expression-form-binding? _bind9037_)
                                  (_expand-e9031_ _bind9037_ _hd9033_)
                                  (if (gx#direct-special-form-binding?
                                       _bind9037_)
                                      (gx#core-expand-expression
                                       (_expand-e9031_ _bind9037_ _hd9033_))
                                      (_illegal-expression9030_ _hd9033_))))))
                    (if (gx#core-bound-identifier?__0 _hd9033_)
                        (_illegal-expression9030_ _hd9033_)
                        (if (gx#identifier? _hd9033_)
                            (_expand-e9031_
                             '%%ref
                             (cons '%%ref (cons _hd9033_ '())))
                            (if (gx#stx-datum? _hd9033_)
                                (_expand-e9031_
                                 '%#quote
                                 (cons '%#quote (cons _hd9033_ '())))
                                (_illegal-expression9030_ _hd9033_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx9022_)
        (call-with-parameters
         (lambda ()
           (let ((_stx9025_ (gx#core-expand-expression _stx9022_)))
             (values _stx9025_ (gx#eval-syntax* _stx9025_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx9003_ _stop?9004_)
        (let _lp9006_ ((_stx9008_ _stx9003_))
          (if (_stop?9004_ _stx9008_)
              _stx9008_
              (let ((_rstx9010_ (gx#core-expand1 _stx9008_)))
                (if (eq? _stx9008_ _rstx9010_)
                    _stx9008_
                    (_lp9006_ _rstx9010_)))))))
    (define gx#core-expand*__0
      (lambda (_stx9015_)
        (let ((_stop?9017_ false))
          (gx#core-expand*__% _stx9015_ _stop?9017_))))
    (define gx#core-expand*
      (lambda _g9531_
        (let ((_g9530_ (##length _g9531_)))
          (cond ((##fx= _g9530_ 1)
                 (apply (lambda (_stx9015_) (gx#core-expand*__0 _stx9015_))
                        _g9531_))
                ((##fx= _g9530_ 2)
                 (apply (lambda (_stx9019_ _stop?9020_)
                          (gx#core-expand*__% _stx9019_ _stop?9020_))
                        _g9531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g9531_))))))
    (define gx#core-expand1
      (lambda (_stx8959_)
        (letrec ((_step8961_
                  (lambda (_hd8998_)
                    (let ((_bind9000_ (gx#resolve-identifier__0 _hd8998_)))
                      (if (##structure-instance-of?
                           _bind9000_
                           'gx#runtime-binding::t)
                          _stx8959_
                          (if (##structure-direct-instance-of?
                               _bind9000_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind9000_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx8959_)
                              (if (not _bind9000_)
                                  _stx8959_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx8959_))))))))
          (let* ((_e89628970_ _stx8959_)
                 (_E89688974_ (lambda () _stx8959_))
                 (_E89648980_
                  (lambda ()
                    (let ((_hd8978_ _e89628970_))
                      (if (gx#identifier? _hd8978_)
                          (_step8961_ _hd8978_)
                          (_E89688974_)))))
                 (_E89638994_
                  (lambda ()
                    (if (gx#stx-pair? _e89628970_)
                        (let ((_e89658984_ (gx#syntax-e _e89628970_)))
                          (let ((_hd89668987_ (##car _e89658984_))
                                (_tl89678989_ (##cdr _e89658984_)))
                            (let ((_hd8992_ _hd89668987_))
                              (if (gx#identifier? _hd8992_)
                                  (_step8961_ _hd8992_)
                                  (_E89648980_)))))
                        (_E89648980_)))))
            (_E89638994_)))))
    (define gx#core-expand-head
      (lambda (_stx8925_)
        (letrec ((_stop?8927_
                  (lambda (_stx8929_)
                    (let* ((_e89308937_ _stx8929_)
                           (_E89328941_ (lambda () '#f))
                           (_E89318955_
                            (lambda ()
                              (if (gx#stx-pair? _e89308937_)
                                  (let ((_e89338945_
                                         (gx#syntax-e _e89308937_)))
                                    (let ((_hd89348948_ (##car _e89338945_))
                                          (_tl89358950_ (##cdr _e89338945_)))
                                      (let ((_hd8953_ _hd89348948_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd8953_)
                                            (_E89328941_)))))
                                  (_E89328941_)))))
                      (_E89318955_)))))
          (gx#core-expand*__% _stx8925_ _stop?8927_))))
    (define gx#core-expand-block__%
      (lambda (_stx8731_ _expand-special8732_ _begin-form8733_ _expand-e8734_)
        (letrec ((_expand-splice8736_
                  (lambda (_hd8899_ _body8900_ _rest8901_ _r8902_)
                    (if (gx#stx-list? _body8900_)
                        (_K8740_ (gx#stx-foldr cons _rest8901_ _body8900_)
                                 _r8902_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx8731_
                         _hd8899_))))
                 (_expand-cond-expand8737_
                  (lambda (_hd8895_ _rest8896_ _r8897_)
                    (_K8740_ (cons (gx#core-expand-cond-expand% _hd8895_)
                                   _rest8896_)
                             _r8897_)))
                 (_expand-include8738_
                  (lambda (_hd8844_ _rest8845_ _r8846_)
                    (let* ((_e88478857_ _hd8844_)
                           (_E88498861_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e88478857_)))
                           (_E88488891_
                            (lambda ()
                              (if (gx#stx-pair? _e88478857_)
                                  (let ((_e88508865_
                                         (gx#syntax-e _e88478857_)))
                                    (let ((_hd88518868_ (##car _e88508865_))
                                          (_tl88528870_ (##cdr _e88508865_)))
                                      (if (gx#stx-pair? _tl88528870_)
                                          (let ((_e88538873_
                                                 (gx#syntax-e _tl88528870_)))
                                            (let ((_hd88548876_
                                                   (##car _e88538873_))
                                                  (_tl88558878_
                                                   (##cdr _e88538873_)))
                                              (let ((_path8881_ _hd88548876_))
                                                (if (gx#stx-null? _tl88558878_)
                                                    (if (gx#stx-string?
                                                         _path8881_)
                                                        (let* ((_rpath8883_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path8881_
                         (gx#stx-source _hd8844_)))
                       (_block8885_
                        (gx#core-expand-include%__% _hd8844_ _rpath8883_))
                       (_rbody8888_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block8885_
                            _expand-special8732_
                            '#f
                            _expand-e8734_))
                         gx#current-expander-path
                         (cons _rpath8883_ (gx#current-expander-path)))))
                  (_K8740_ _rest8845_ (foldr1 cons _r8846_ _rbody8888_)))
                (_E88498861_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88498861_)))))
                                          (_E88498861_))))
                                  (_E88498861_)))))
                      (_E88488891_))))
                 (_expand-expression8739_
                  (lambda (_hd8840_ _rest8841_ _r8842_)
                    (_K8740_ _rest8841_
                             (cons (_expand-e8734_ _hd8840_) _r8842_))))
                 (_K8740_ (lambda (_rest8770_ _r8771_)
                            (let* ((_e87728779_ _rest8770_)
                                   (_E87748783_
                                    (lambda ()
                                      (if _begin-form8733_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form8733_
                                            (reverse _r8771_))
                                           (gx#stx-source _stx8731_))
                                          _r8771_)))
                                   (_E87738836_
                                    (lambda ()
                                      (if (gx#stx-pair? _e87728779_)
                                          (let ((_e87758787_
                                                 (gx#syntax-e _e87728779_)))
                                            (let ((_hd87768790_
                                                   (##car _e87758787_))
                                                  (_tl87778792_
                                                   (##cdr _e87758787_)))
                                              (let* ((_hd8795_ _hd87768790_)
                                                     (_rest8797_ _tl87778792_))
                                                (if '#t
                                                    (let* ((_hd8799_
                                                            (gx#core-expand-head
                                                             _hd8795_))
                                                           (_e88008807_
                                                            _hd8799_)
                                                           (_E88028811_
                                                            (lambda ()
                                                              (_expand-expression8739_
                                                               _hd8799_
                                                               _rest8797_
                                                               _r8771_)))
                                                           (_E88018832_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e88008807_)
                          (let ((_e88038815_ (gx#syntax-e _e88008807_)))
                            (let ((_hd88048818_ (##car _e88038815_))
                                  (_tl88058820_ (##cdr _e88038815_)))
                              (let* ((_form8823_ _hd88048818_)
                                     (_body8825_ _tl88058820_))
                                (if '#t
                                    (let ((_bind8827_
                                           (if (gx#identifier? _form8823_)
                                               (gx#resolve-identifier__0
                                                _form8823_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind8827_)
                                          (let ((_$e8829_
                                                 (##unchecked-structure-ref
                                                  _bind8827_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e8829_)
                                                (_expand-splice8736_
                                                 _hd8799_
                                                 _body8825_
                                                 _rest8797_
                                                 _r8771_)
                                                (if (eq? '%#cond-expand
                                                         _$e8829_)
                                                    (_expand-cond-expand8737_
                                                     _hd8799_
                                                     _rest8797_
                                                     _r8771_)
                                                    (if (eq? '%#include
                                                             _$e8829_)
                                                        (_expand-include8738_
                                                         _hd8799_
                                                         _rest8797_
                                                         _r8771_)
                                                        (_expand-special8732_
                                                         _hd8799_
                                                         _K8740_
                                                         _rest8797_
                                                         _r8771_)))))
                                          (_expand-expression8739_
                                           _hd8799_
                                           _rest8797_
                                           _r8771_)))
                                    (_E88028811_)))))
                          (_E88028811_)))))
              (_E88018832_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87748783_)))))
                                          (_E87748783_)))))
                              (_E87738836_)))))
          (let* ((_e87418748_ _stx8731_)
                 (_E87438752_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e87418748_)))
                 (_E87428766_
                  (lambda ()
                    (if (gx#stx-pair? _e87418748_)
                        (let ((_e87448756_ (gx#syntax-e _e87418748_)))
                          (let ((_hd87458759_ (##car _e87448756_))
                                (_tl87468761_ (##cdr _e87448756_)))
                            (let ((_body8764_ _tl87468761_))
                              (if (gx#stx-list? _body8764_)
                                  (_K8740_ _body8764_ '())
                                  (_E87438752_)))))
                        (_E87438752_)))))
            (_E87428766_)))))
    (define gx#core-expand-block__0
      (lambda (_stx8907_ _expand-special8908_)
        (let* ((_begin-form8910_ '%#begin)
               (_expand-e8912_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx8907_
           _expand-special8908_
           _begin-form8910_
           _expand-e8912_))))
    (define gx#core-expand-block__1
      (lambda (_stx8914_ _expand-special8915_ _begin-form8916_)
        (let ((_expand-e8918_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx8914_
           _expand-special8915_
           _begin-form8916_
           _expand-e8918_))))
    (define gx#core-expand-block
      (lambda _g9533_
        (let ((_g9532_ (##length _g9533_)))
          (cond ((##fx= _g9532_ 2)
                 (apply (lambda (_stx8907_ _expand-special8908_)
                          (gx#core-expand-block__0
                           _stx8907_
                           _expand-special8908_))
                        _g9533_))
                ((##fx= _g9532_ 3)
                 (apply (lambda (_stx8914_
                                 _expand-special8915_
                                 _begin-form8916_)
                          (gx#core-expand-block__1
                           _stx8914_
                           _expand-special8915_
                           _begin-form8916_))
                        _g9533_))
                ((##fx= _g9532_ 4)
                 (apply (lambda (_stx8920_
                                 _expand-special8921_
                                 _begin-form8922_
                                 _expand-e8923_)
                          (gx#core-expand-block__%
                           _stx8920_
                           _expand-special8921_
                           _begin-form8922_
                           _expand-e8923_))
                        _g9533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g9533_))))))
    (define gx#core-expand-block*
      (lambda (_stx8679_ _expand-special8680_)
        (let* ((_g86818692_
                (gx#core-expand-block__1 _stx8679_ _expand-special8680_ '#f))
               (_E86858696_
                (lambda () (error '"No clause matching" _g86818692_))))
          (let ((_K86908727_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx8679_)))
                (_K86878713_ (lambda (_expr8711_) _expr8711_))
                (_K86868702_
                 (lambda (_body8700_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body8700_))
                    (gx#stx-source _stx8679_)))))
            (let ((_try-match86838723_
                   (lambda ()
                     (if (##pair? _g86818692_)
                         (let ((_tl86898718_ (##cdr _g86818692_))
                               (_hd86888716_ (##car _g86818692_)))
                           (if (##null? _tl86898718_)
                               (let ((_expr8721_ _hd86888716_))
                                 (_K86878713_ _expr8721_))
                               (let ((_body8705_ _g86818692_))
                                 (_K86868702_ _body8705_))))
                         (let ((_body8705_ _g86818692_))
                           (_K86868702_ _body8705_))))))
              (if (##null? _g86818692_)
                  (_K86908727_)
                  (_try-match86838723_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx8507_)
        (letrec ((_satisfied?8509_
                  (lambda (_condition8607_)
                    (let* ((_e86088623_ _condition8607_)
                           (_E86188627_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e86088623_)))
                           (_E86118646_
                            (lambda ()
                              (if (gx#stx-pair? _e86088623_)
                                  (let ((_e86198631_
                                         (gx#syntax-e _e86088623_)))
                                    (let ((_hd86208634_ (##car _e86198631_))
                                          (_tl86218636_ (##cdr _e86198631_)))
                                      (let* ((_combinator8639_ _hd86208634_)
                                             (_body8641_ _tl86218636_))
                                        (if (gx#stx-list? _body8641_)
                                            (let ((_$e8643_
                                                   (gx#stx-e
                                                    _combinator8639_)))
                                              (if (eq? 'not _$e8643_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?8509_
                                                        _body8641_))
                                                  (if (eq? 'and _$e8643_)
                                                      (gx#stx-andmap
                                                       _satisfied?8509_
                                                       _body8641_)
                                                      (if (eq? 'or _$e8643_)
                                                          (gx#stx-ormap
                                                           _satisfied?8509_
                                                           _body8641_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e8643_)
                      (gx#stx-andmap gx#core-resolve-identifier _body8641_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _stx8507_
                       _combinator8639_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E86188627_)))))
                                  (_E86188627_))))
                           (_E86108669_
                            (lambda ()
                              (if (gx#stx-pair? _e86088623_)
                                  (let ((_e86128650_
                                         (gx#syntax-e _e86088623_)))
                                    (let ((_hd86138653_ (##car _e86128650_))
                                          (_tl86148655_ (##cdr _e86128650_)))
                                      (if (and (gx#identifier? _hd86138653_)
                                               (gx#core-identifier=?
                                                _hd86138653_
                                                'unquote))
                                          (if (gx#stx-pair? _tl86148655_)
                                              (let ((_e86158658_
                                                     (gx#syntax-e
                                                      _tl86148655_)))
                                                (let ((_hd86168661_
                                                       (##car _e86158658_))
                                                      (_tl86178663_
                                                       (##cdr _e86158658_)))
                                                  (let ((_expr8666_
                                                         _hd86168661_))
                                                    (if (gx#stx-null?
                                                         _tl86178663_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr8666_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E86118646_))
                (_E86118646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86118646_))
                                          (_E86118646_))))
                                  (_E86118646_))))
                           (_E86098675_
                            (lambda ()
                              (let ((_id8673_ _e86088623_))
                                (if (gx#identifier? _id8673_)
                                    (gx#core-bound-identifier?__%
                                     _id8673_
                                     gx#feature-binding?)
                                    (_E86108669_))))))
                      (_E86098675_))))
                 (_loop8510_
                  (lambda (_rest8540_)
                    (let* ((_e85418549_ _rest8540_)
                           (_E85478553_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e85418549_)))
                           (_E85438557_
                            (lambda ()
                              (if (gx#stx-null? _e85418549_)
                                  (if '#t '() (_E85478553_))
                                  (_E85478553_))))
                           (_E85428603_
                            (lambda ()
                              (if (gx#stx-pair? _e85418549_)
                                  (let ((_e85448561_
                                         (gx#syntax-e _e85418549_)))
                                    (let ((_hd85458564_ (##car _e85448561_))
                                          (_tl85468566_ (##cdr _e85448561_)))
                                      (let* ((_hd8569_ _hd85458564_)
                                             (_rest8571_ _tl85468566_))
                                        (if '#t
                                            (let* ((_e85728579_ _hd8569_)
                                                   (_E85748583_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _e85728579_)))
                                                   (_E85738599_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e85728579_)
                                                          (let ((_e85758587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e85728579_)))
                    (let ((_hd85768590_ (##car _e85758587_))
                          (_tl85778592_ (##cdr _e85758587_)))
                      (let* ((_condition8595_ _hd85768590_)
                             (_body8597_ _tl85778592_))
                        (if '#t
                            (if (gx#stx-eq? _condition8595_ 'else)
                                (if (gx#stx-null? _rest8571_)
                                    _body8597_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _stx8507_
                                     _hd8569_))
                                (if (_satisfied?8509_ _condition8595_)
                                    _body8597_
                                    (_loop8510_ _rest8571_)))
                            (_E85748583_)))))
                  (_E85748583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E85738599_))
                                            (_E85438557_)))))
                                  (_E85438557_)))))
                      (_E85428603_)))))
          (let* ((_e85118518_ _stx8507_)
                 (_E85138522_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e85118518_)))
                 (_E85128536_
                  (lambda ()
                    (if (gx#stx-pair? _e85118518_)
                        (let ((_e85148526_ (gx#syntax-e _e85118518_)))
                          (let ((_hd85158529_ (##car _e85148526_))
                                (_tl85168531_ (##cdr _e85148526_)))
                            (let ((_clauses8534_ _tl85168531_))
                              (if (gx#stx-list? _clauses8534_)
                                  (gx#core-cons
                                   'begin
                                   (_loop8510_ _clauses8534_))
                                  (_E85138522_)))))
                        (_E85138522_)))))
            (_E85128536_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx8450_ _rpath8451_)
        (let* ((_e84528462_ _stx8450_)
               (_E84548466_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e84528462_)))
               (_E84538493_
                (lambda ()
                  (if (gx#stx-pair? _e84528462_)
                      (let ((_e84558470_ (gx#syntax-e _e84528462_)))
                        (let ((_hd84568473_ (##car _e84558470_))
                              (_tl84578475_ (##cdr _e84558470_)))
                          (if (gx#stx-pair? _tl84578475_)
                              (let ((_e84588478_ (gx#syntax-e _tl84578475_)))
                                (let ((_hd84598481_ (##car _e84588478_))
                                      (_tl84608483_ (##cdr _e84588478_)))
                                  (let ((_path8486_ _hd84598481_))
                                    (if (gx#stx-null? _tl84608483_)
                                        (if (gx#stx-string? _path8486_)
                                            (let ((_rpath8491_
                                                   (let ((_$e8488_
                                                          _rpath8451_))
                                                     (if _$e8488_
                                                         _$e8488_
                                                         (gx#core-resolve-path__%
                                                          _path8486_
                                                          (gx#stx-source
                                                           _stx8450_))))))
                                              (if (member _rpath8491_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx8450_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath8491_))
                                                    (gx#stx-source
                                                     _stx8450_)))))
                                            (_E84548466_))
                                        (_E84548466_)))))
                              (_E84548466_))))
                      (_E84548466_)))))
          (_E84538493_))))
    (define gx#core-expand-include%__0
      (lambda (_stx8500_)
        (let ((_rpath8502_ '#f))
          (gx#core-expand-include%__% _stx8500_ _rpath8502_))))
    (define gx#core-expand-include%
      (lambda _g9535_
        (let ((_g9534_ (##length _g9535_)))
          (cond ((##fx= _g9534_ 1)
                 (apply (lambda (_stx8500_)
                          (gx#core-expand-include%__0 _stx8500_))
                        _g9535_))
                ((##fx= _g9534_ 2)
                 (apply (lambda (_stx8504_ _rpath8505_)
                          (gx#core-expand-include%__% _stx8504_ _rpath8505_))
                        _g9535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g9535_))))))
    (define gx#core-apply-expander__%
      (lambda (_K8419_ _stx8420_ _method8421_)
        (if (procedure? _K8419_)
            (let ((_$e8423_ (gx#stx-source _stx8420_)))
              (if _$e8423_
                  ((lambda (_g84258427_)
                     (gx#stx-wrap-source (_K8419_ _stx8420_) _g84258427_))
                   _$e8423_)
                  (_K8419_ _stx8420_)))
            (let ((_$e8430_ (bound-method-ref _K8419_ _method8421_)))
              (if _$e8430_
                  ((lambda (_g84328434_)
                     (gx#core-apply-expander__%
                      _g84328434_
                      _stx8420_
                      _method8421_))
                   _$e8430_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx8420_
                   _method8421_))))))
    (define gx#core-apply-expander__0
      (lambda (_K8440_ _stx8441_)
        (let ((_method8443_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K8440_ _stx8441_ _method8443_))))
    (define gx#core-apply-expander
      (lambda _g9537_
        (let ((_g9536_ (##length _g9537_)))
          (cond ((##fx= _g9536_ 2)
                 (apply (lambda (_K8440_ _stx8441_)
                          (gx#core-apply-expander__0 _K8440_ _stx8441_))
                        _g9537_))
                ((##fx= _g9536_ 3)
                 (apply (lambda (_K8445_ _stx8446_ _method8447_)
                          (gx#core-apply-expander__%
                           _K8445_
                           _stx8446_
                           _method8447_))
                        _g9537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g9537_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self8415_ _stx8416_)
        (gx#raise-syntax-error '#f '"Bad syntax" _stx8416_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self8268_ _stx8269_)
        (let* ((_self82708276_ _self8268_)
               (_E82728280_
                (lambda () (error '"No clause matching" _self82708276_)))
               (_K82738285_
                (lambda (_K8283_)
                  (gx#core-apply-expander__0 _K8283_ _stx8269_))))
          (if (##structure-instance-of? _self82708276_ 'gx#core-macro::t)
              (let* ((_e82748288_ (##vector-ref _self82708276_ '1))
                     (_K8291_ _e82748288_))
                (_K82738285_ _K8291_))
              (_E82728280_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self8121_ _stx8122_)
        (if (gx#sealed-syntax? _stx8122_)
            _stx8122_
            (let* ((_self81238129_ _self8121_)
                   (_E81258133_
                    (lambda () (error '"No clause matching" _self81238129_)))
                   (_K81268138_
                    (lambda (_K8136_)
                      (gx#core-apply-expander__0 _K8136_ _stx8122_))))
              (if (##structure-instance-of?
                   _self81238129_
                   'gx#core-expander::t)
                  (let* ((_e81278141_ (##vector-ref _self81238129_ '1))
                         (_K8144_ _e81278141_))
                    (_K81268138_ _K8144_))
                  (_E81258133_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self7983_ _stx7984_ _top?7985_)
        (if (_top?7985_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self7983_ _stx7984_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx7984_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self7990_ _stx7991_)
        (let ((_top?7993_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self7990_
           _stx7991_
           _top?7993_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g9539_
        (let ((_g9538_ (##length _g9539_)))
          (cond ((##fx= _g9538_ 2)
                 (apply (lambda (_self7990_ _stx7991_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self7990_
                           _stx7991_))
                        _g9539_))
                ((##fx= _g9538_ 3)
                 (apply (lambda (_self7995_ _stx7996_ _top?7997_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self7995_
                           _stx7996_
                           _top?7997_))
                        _g9539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g9539_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self7857_ _stx7858_)
        (gx#top-special-form::apply-macro-expander__%
         _self7857_
         _stx7858_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self7682_ _stx7683_)
        (let* ((_self76847690_ _self7682_)
               (_E76867694_
                (lambda () (error '"No clause matching" _self76847690_)))
               (_K76877727_
                (lambda (_id7697_)
                  (let* ((_e76987705_ _stx7683_)
                         (_E77007709_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e76987705_)))
                         (_E76997723_
                          (lambda ()
                            (if (gx#stx-pair? _e76987705_)
                                (let ((_e77017713_ (gx#syntax-e _e76987705_)))
                                  (let ((_hd77027716_ (##car _e77017713_))
                                        (_tl77037718_ (##cdr _e77017713_)))
                                    (let ((_body7721_ _tl77037718_))
                                      (if '#t
                                          (gx#core-cons _id7697_ _body7721_)
                                          (_E77007709_)))))
                                (_E77007709_)))))
                    (_E76997723_)))))
          (if (##structure-instance-of?
               _self76847690_
               'gx#rename-macro-expander::t)
              (let* ((_e76887730_ (##vector-ref _self76847690_ '1))
                     (_id7733_ _e76887730_))
                (_K76877727_ _id7733_))
              (_E76867694_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self7508_ _stx7509_ _method7510_)
        (let* ((_self75117519_ _self7508_)
               (_E75137523_
                (lambda () (error '"No clause matching" _self75117519_)))
               (_K75147530_
                (lambda (_phi7526_ _ctx7527_ _K7528_)
                  (gx#core-apply-user-macro
                   _K7528_
                   _stx7509_
                   _ctx7527_
                   _phi7526_
                   _method7510_))))
          (if (##structure-instance-of? _self75117519_ 'gx#macro-expander::t)
              (let* ((_e75157533_ (##vector-ref _self75117519_ '1))
                     (_K7536_ _e75157533_)
                     (_e75167538_ (##vector-ref _self75117519_ '2))
                     (_ctx7541_ _e75167538_)
                     (_e75177543_ (##vector-ref _self75117519_ '3))
                     (_phi7546_ _e75177543_))
                (_K75147530_ _phi7546_ _ctx7541_ _K7536_))
              (_E75137523_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self7551_ _stx7552_)
        (let ((_method7554_ 'apply-macro-expander))
          (gx#core-apply-user-expander__% _self7551_ _stx7552_ _method7554_))))
    (define gx#core-apply-user-expander
      (lambda _g9541_
        (let ((_g9540_ (##length _g9541_)))
          (cond ((##fx= _g9540_ 2)
                 (apply (lambda (_self7551_ _stx7552_)
                          (gx#core-apply-user-expander__0
                           _self7551_
                           _stx7552_))
                        _g9541_))
                ((##fx= _g9540_ 3)
                 (apply (lambda (_self7556_ _stx7557_ _method7558_)
                          (gx#core-apply-user-expander__%
                           _self7556_
                           _stx7557_
                           _method7558_))
                        _g9541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g9541_))))))
    (define gx#core-apply-user-macro
      (lambda (_K7498_ _stx7499_ _ctx7500_ _phi7501_ _method7502_)
        (let ((_mark7504_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx7500_
                _phi7501_
                _stx7499_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K7498_
               (gx#stx-apply-mark _stx7499_ _mark7504_)
               _method7502_)
              _mark7504_))
           gx#current-expander-marks
           (cons _mark7504_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx7350_ _phi7351_ _ctx7352_)
        (let _lp7354_ ((_bind7356_
                        (gx#core-resolve-identifier__%
                         _stx7350_
                         _phi7351_
                         _ctx7352_)))
          (if (##structure-direct-instance-of?
               _bind7356_
               'gx#import-binding::t)
              (_lp7354_
               (##unchecked-structure-ref
                _bind7356_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind7356_
                   'gx#alias-binding::t)
                  (_lp7354_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind7356_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi7351_
                    _ctx7352_))
                  _bind7356_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx7361_)
        (let* ((_phi7363_ (gx#current-expander-phi))
               (_ctx7365_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx7361_ _phi7363_ _ctx7365_))))
    (define gx#resolve-identifier__1
      (lambda (_stx7367_ _phi7368_)
        (let ((_ctx7370_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx7367_ _phi7368_ _ctx7370_))))
    (define gx#resolve-identifier
      (lambda _g9543_
        (let ((_g9542_ (##length _g9543_)))
          (cond ((##fx= _g9542_ 1)
                 (apply (lambda (_stx7361_)
                          (gx#resolve-identifier__0 _stx7361_))
                        _g9543_))
                ((##fx= _g9542_ 2)
                 (apply (lambda (_stx7367_ _phi7368_)
                          (gx#resolve-identifier__1 _stx7367_ _phi7368_))
                        _g9543_))
                ((##fx= _g9542_ 3)
                 (apply (lambda (_stx7372_ _phi7373_ _ctx7374_)
                          (gx#resolve-identifier__%
                           _stx7372_
                           _phi7373_
                           _ctx7374_))
                        _g9543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g9543_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx7308_ _val7309_ _rebind?7310_ _phi7311_ _ctx7312_)
        (let ((_rebind?7314_
               (if (not _rebind?7310_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?7310_) _rebind?7310_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx7308_)
           _val7309_
           _rebind?7314_
           _phi7311_
           _ctx7312_))))
    (define gx#bind-identifier!__0
      (lambda (_stx7319_ _val7320_)
        (let* ((_rebind?7322_ '#f)
               (_phi7324_ (gx#current-expander-phi))
               (_ctx7326_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7319_
           _val7320_
           _rebind?7322_
           _phi7324_
           _ctx7326_))))
    (define gx#bind-identifier!__1
      (lambda (_stx7328_ _val7329_ _rebind?7330_)
        (let* ((_phi7332_ (gx#current-expander-phi))
               (_ctx7334_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7328_
           _val7329_
           _rebind?7330_
           _phi7332_
           _ctx7334_))))
    (define gx#bind-identifier!__2
      (lambda (_stx7336_ _val7337_ _rebind?7338_ _phi7339_)
        (let ((_ctx7341_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7336_
           _val7337_
           _rebind?7338_
           _phi7339_
           _ctx7341_))))
    (define gx#bind-identifier!
      (lambda _g9545_
        (let ((_g9544_ (##length _g9545_)))
          (cond ((##fx= _g9544_ 2)
                 (apply (lambda (_stx7319_ _val7320_)
                          (gx#bind-identifier!__0 _stx7319_ _val7320_))
                        _g9545_))
                ((##fx= _g9544_ 3)
                 (apply (lambda (_stx7328_ _val7329_ _rebind?7330_)
                          (gx#bind-identifier!__1
                           _stx7328_
                           _val7329_
                           _rebind?7330_))
                        _g9545_))
                ((##fx= _g9544_ 4)
                 (apply (lambda (_stx7336_ _val7337_ _rebind?7338_ _phi7339_)
                          (gx#bind-identifier!__2
                           _stx7336_
                           _val7337_
                           _rebind?7338_
                           _phi7339_))
                        _g9545_))
                ((##fx= _g9544_ 5)
                 (apply (lambda (_stx7343_
                                 _val7344_
                                 _rebind?7345_
                                 _phi7346_
                                 _ctx7347_)
                          (gx#bind-identifier!__%
                           _stx7343_
                           _val7344_
                           _rebind?7345_
                           _phi7346_
                           _ctx7347_))
                        _g9545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g9545_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx7280_ _phi7281_ _ctx7282_)
        (let _lp7284_ ((_e7286_ _stx7280_)
                       (_marks7287_ (gx#current-expander-marks)))
          (if (symbol? _e7286_)
              (gx#core-resolve-binding
               _e7286_
               _phi7281_
               _phi7281_
               _ctx7282_
               (reverse _marks7287_))
              (if (gx#identifier-quote? _e7286_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e7286_ '1 gx#AST::t '#f)
                   _phi7281_
                   '0
                   (##unchecked-structure-ref
                    _e7286_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e7286_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e7286_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e7286_ '1 gx#AST::t '#f)
                       _phi7281_
                       _phi7281_
                       _ctx7282_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e7286_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks7287_))
                      (if (##structure-direct-instance-of?
                           _e7286_
                           'gx#syntax-wrap::t)
                          (_lp7284_
                           (##unchecked-structure-ref _e7286_ '1 gx#AST::t '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e7286_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks7287_))
                          (if (##structure-instance-of? _e7286_ 'gerbil#AST::t)
                              (_lp7284_
                               (##unchecked-structure-ref
                                _e7286_
                                '1
                                gx#AST::t
                                '#f)
                               _marks7287_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx7280_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx7292_)
        (let* ((_phi7294_ (gx#current-expander-phi))
               (_ctx7296_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx7292_ _phi7294_ _ctx7296_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx7298_ _phi7299_)
        (let ((_ctx7301_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx7298_ _phi7299_ _ctx7301_))))
    (define gx#core-resolve-identifier
      (lambda _g9547_
        (let ((_g9546_ (##length _g9547_)))
          (cond ((##fx= _g9546_ 1)
                 (apply (lambda (_stx7292_)
                          (gx#core-resolve-identifier__0 _stx7292_))
                        _g9547_))
                ((##fx= _g9546_ 2)
                 (apply (lambda (_stx7298_ _phi7299_)
                          (gx#core-resolve-identifier__1 _stx7298_ _phi7299_))
                        _g9547_))
                ((##fx= _g9546_ 3)
                 (apply (lambda (_stx7303_ _phi7304_ _ctx7305_)
                          (gx#core-resolve-identifier__%
                           _stx7303_
                           _phi7304_
                           _ctx7305_))
                        _g9547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g9547_))))))
    (define gx#core-resolve-binding
      (lambda (_id7193_ _phi7194_ _src-phi7195_ _ctx7196_ _marks7197_)
        (letrec ((_resolve7199_
                  (lambda (_ctx7267_ _src-phi7268_ _key7269_)
                    (let _lp7271_ ((_ctx7273_
                                    (gx#core-context-shift
                                     _ctx7267_
                                     _phi7194_))
                                   (_dphi7274_ (fx- _phi7194_ _src-phi7268_)))
                      (let ((_$e7276_
                             (gx#core-context-resolve _ctx7273_ _key7269_)))
                        (if _$e7276_
                            (values _$e7276_)
                            (if (fxzero? _dphi7274_)
                                '#f
                                (if (fxpositive? _dphi7274_)
                                    (_lp7271_
                                     (gx#core-context-shift _ctx7273_ '-1)
                                     (fx- _dphi7274_ '1))
                                    (_lp7271_
                                     (gx#core-context-shift _ctx7273_ '1)
                                     (fx+ _dphi7274_ '1))))))))))
          (let _lp7201_ ((_ctx7203_ _ctx7196_)
                         (_src-phi7204_ _src-phi7195_)
                         (_rest7205_ _marks7197_))
            (let* ((_rest72067214_ _rest7205_)
                   (_else72087222_
                    (lambda ()
                      (_resolve7199_ _ctx7203_ _src-phi7204_ _id7193_)))
                   (_K72107255_
                    (lambda (_rest7225_ _hd7226_)
                      (let* ((_hd72277233_ _hd7226_)
                             (_E72297237_
                              (lambda ()
                                (error '"No clause matching" _hd72277233_)))
                             (_K72307247_
                              (lambda (_subst7240_)
                                (let ((_$e7244_
                                       (let ((_key7242_
                                              (if _subst7240_
                                                  (table-ref
                                                   _subst7240_
                                                   _id7193_
                                                   '#f)
                                                  '#f)))
                                         (if _key7242_
                                             (_resolve7199_
                                              _ctx7203_
                                              _src-phi7204_
                                              _key7242_)
                                             '#f))))
                                  (if _$e7244_
                                      _$e7244_
                                      (_lp7201_
                                       (##unchecked-structure-ref
                                        _hd7226_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd7226_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest7225_))))))
                        (if (##structure-instance-of?
                             _hd72277233_
                             'gx#expander-mark::t)
                            (let* ((_e72317250_ (##vector-ref _hd72277233_ '1))
                                   (_subst7253_ _e72317250_))
                              (_K72307247_ _subst7253_))
                            (_E72297237_))))))
              (if (##pair? _rest72067214_)
                  (let ((_hd72117258_ (##car _rest72067214_))
                        (_tl72127260_ (##cdr _rest72067214_)))
                    (let* ((_hd7263_ _hd72117258_) (_rest7265_ _tl72127260_))
                      (_K72107255_ _rest7265_ _hd7263_)))
                  (_else72087222_)))))))
    (define gx#core-bind!__%
      (lambda (_key7069_ _val7070_ _rebind?7071_ _phi7072_ _ctx7073_)
        (letrec ((_update-binding7075_
                  (lambda (_xval7146_)
                    (if (or (_rebind?7071_ _ctx7073_ _xval7146_ _val7070_)
                            (and (##structure-direct-instance-of?
                                  _xval7146_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval7146_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val7070_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val7070_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval7146_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val7070_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val7070_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval7146_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val7070_
                        (if (and (##structure-direct-instance-of?
                                  _val7070_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val7070_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval7146_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val7070_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval7146_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval7146_
                            (if (and (##structure-direct-instance-of?
                                      _val7070_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval7146_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key7069_
                                 (cons (##unchecked-structure-ref
                                        _val7070_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val7070_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval7146_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval7146_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval7146_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval7146_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key7069_
                                 _val7070_
                                 _xval7146_))))))
                 (_gensubst7076_
                  (lambda (_subst7141_ _id7142_)
                    (let ((_eid7144_
                           (gensym (if (uninterned-symbol? _id7142_)
                                       '%
                                       _id7142_))))
                      (table-set! _subst7141_ _id7142_ _eid7144_)
                      _eid7144_)))
                 (_subst!7077_
                  (lambda (_key7079_)
                    (let* ((_key70807088_ _key7079_)
                           (_else70827096_ (lambda () _key7079_))
                           (_K70847129_
                            (lambda (_mark7099_ _id7100_)
                              (let* ((_mark71017107_ _mark7099_)
                                     (_E71037111_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark71017107_)))
                                     (_K71047121_
                                      (lambda (_subst7114_)
                                        (if (not _subst7114_)
                                            (let ((_subst7116_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark7099_
                                               _subst7116_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst7076_
                                               _subst7116_
                                               _id7100_))
                                            (let ((_$e7118_
                                                   (table-ref
                                                    _subst7114_
                                                    _id7100_
                                                    '#f)))
                                              (if _$e7118_
                                                  (values _$e7118_)
                                                  (_gensubst7076_
                                                   _subst7114_
                                                   _id7100_)))))))
                                (if (##structure-instance-of?
                                     _mark71017107_
                                     'gx#expander-mark::t)
                                    (let* ((_e71057124_
                                            (##vector-ref _mark71017107_ '1))
                                           (_subst7127_ _e71057124_))
                                      (_K71047121_ _subst7127_))
                                    (_E71037111_))))))
                      (if (##pair? _key70807088_)
                          (let ((_hd70857132_ (##car _key70807088_))
                                (_tl70867134_ (##cdr _key70807088_)))
                            (let* ((_id7137_ _hd70857132_)
                                   (_mark7139_ _tl70867134_))
                              (_K70847129_ _mark7139_ _id7137_)))
                          (_else70827096_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx7073_ _phi7072_)
           (_subst!7077_ _key7069_)
           _val7070_
           _update-binding7075_))))
    (define gx#core-bind!__0
      (lambda (_key7163_ _val7164_)
        (let* ((_rebind?7166_ false)
               (_phi7168_ (gx#current-expander-phi))
               (_ctx7170_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key7163_
           _val7164_
           _rebind?7166_
           _phi7168_
           _ctx7170_))))
    (define gx#core-bind!__1
      (lambda (_key7172_ _val7173_ _rebind?7174_)
        (let* ((_phi7176_ (gx#current-expander-phi))
               (_ctx7178_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key7172_
           _val7173_
           _rebind?7174_
           _phi7176_
           _ctx7178_))))
    (define gx#core-bind!__2
      (lambda (_key7180_ _val7181_ _rebind?7182_ _phi7183_)
        (let ((_ctx7185_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key7180_
           _val7181_
           _rebind?7182_
           _phi7183_
           _ctx7185_))))
    (define gx#core-bind!
      (lambda _g9549_
        (let ((_g9548_ (##length _g9549_)))
          (cond ((##fx= _g9548_ 2)
                 (apply (lambda (_key7163_ _val7164_)
                          (gx#core-bind!__0 _key7163_ _val7164_))
                        _g9549_))
                ((##fx= _g9548_ 3)
                 (apply (lambda (_key7172_ _val7173_ _rebind?7174_)
                          (gx#core-bind!__1 _key7172_ _val7173_ _rebind?7174_))
                        _g9549_))
                ((##fx= _g9548_ 4)
                 (apply (lambda (_key7180_ _val7181_ _rebind?7182_ _phi7183_)
                          (gx#core-bind!__2
                           _key7180_
                           _val7181_
                           _rebind?7182_
                           _phi7183_))
                        _g9549_))
                ((##fx= _g9548_ 5)
                 (apply (lambda (_key7187_
                                 _val7188_
                                 _rebind?7189_
                                 _phi7190_
                                 _ctx7191_)
                          (gx#core-bind!__%
                           _key7187_
                           _val7188_
                           _rebind?7189_
                           _phi7190_
                           _ctx7191_))
                        _g9549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g9549_))))))
    (define gx#core-identifier-key
      (lambda (_stx7003_)
        (if (symbol? _stx7003_)
            (let* ((_g70047012_ (gx#current-expander-marks))
                   (_else70067020_ (lambda () _stx7003_))
                   (_K70087025_ (lambda (_hd7023_) (cons _stx7003_ _hd7023_))))
              (if (##pair? _g70047012_)
                  (let* ((_hd70097028_ (##car _g70047012_))
                         (_hd7031_ _hd70097028_))
                    (_K70087025_ _hd7031_))
                  (_else70067020_)))
            (if (gx#identifier? _stx7003_)
                (let* ((_id7033_ (gx#syntax-local-unwrap _stx7003_))
                       (_eid7035_ (gx#stx-e _id7033_))
                       (_marks7037_ (gx#stx-identifier-marks* _id7033_)))
                  (let* ((_marks70397047_ _marks7037_)
                         (_else70417055_ (lambda () _eid7035_))
                         (_K70437060_
                          (lambda (_hd7058_) (cons _eid7035_ _hd7058_))))
                    (if (##pair? _marks70397047_)
                        (let* ((_hd70447063_ (##car _marks70397047_))
                               (_hd7066_ _hd70447063_))
                          (_K70437060_ _hd7066_))
                        (_else70417055_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx7003_)))))
    (define gx#core-context-shift
      (lambda (_ctx6948_ _phi6949_)
        (letrec ((_make-phi6951_
                  (lambda (_super7001_)
                    (let ((__obj9520 (make-object gx#phi-context::t '5)))
                      (gx#phi-context:::init!__%
                       __obj9520
                       (gensym 'phi)
                       _super7001_)
                      __obj9520)))
                 (_make-phi/up6952_
                  (lambda (_ctx6996_ _super6997_)
                    (let ((_ctx+16999_ (_make-phi6951_ _super6997_)))
                      (##unchecked-structure-set!
                       _ctx6996_
                       _ctx+16999_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+16999_
                       _ctx6996_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+16999_)))
                 (_make-phi/down6953_
                  (lambda (_ctx6991_ _super6992_)
                    (let ((_ctx-16994_ (_make-phi6951_ _super6992_)))
                      (##unchecked-structure-set!
                       _ctx-16994_
                       _ctx6991_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx6991_
                       _ctx-16994_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-16994_)))
                 (_shift6954_
                  (lambda (_ctx6975_
                           _delta6976_
                           _make-delta-context6977_
                           _phi6978_
                           _K6979_)
                    (let ((_$e6981_
                           (##unchecked-structure-ref
                            _ctx6975_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e6981_
                          ((lambda (_super6984_)
                             (let* ((_super6986_
                                     (_K6979_ _super6984_ _delta6976_))
                                    (_ctx+d6988_
                                     (_make-delta-context6977_
                                      _ctx6975_
                                      _super6986_)))
                               (_K6979_ _ctx+d6988_
                                        (fx- _phi6978_ _delta6976_))))
                           _$e6981_)
                          (error '"Bad context" _ctx6975_))))))
          (let _K6956_ ((_ctx6958_ _ctx6948_) (_phi6959_ _phi6949_))
            (if (fxzero? _phi6959_)
                _ctx6958_
                (if (fx> (##vector-length _ctx6958_) '3)
                    (if (fxpositive? _phi6959_)
                        (let ((_$e6961_
                               (##unchecked-structure-ref
                                _ctx6958_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e6961_
                              ((lambda (_g69636965_)
                                 (_K6956_ _g69636965_ (fx- _phi6959_ '1)))
                               _$e6961_)
                              (_shift6954_
                               _ctx6958_
                               '1
                               _make-phi/up6952_
                               _phi6959_
                               _K6956_)))
                        (let ((_$e6968_
                               (##unchecked-structure-ref
                                _ctx6958_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e6968_
                              ((lambda (_g69706972_)
                                 (_K6956_ _g69706972_ (fx+ _phi6959_ '1)))
                               _$e6968_)
                              (_shift6954_
                               _ctx6958_
                               '-1
                               _make-phi/down6953_
                               _phi6959_
                               _K6956_))))
                    _ctx6958_))))))
    (define gx#core-context-get
      (lambda (_ctx6945_ _key6946_)
        (table-ref
         (##unchecked-structure-ref _ctx6945_ '2 gx#expander-context::t '#f)
         _key6946_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx6941_ _key6942_ _val6943_)
        (table-set!
         (##unchecked-structure-ref _ctx6941_ '2 gx#expander-context::t '#f)
         _key6942_
         _val6943_)))
    (define gx#core-context-resolve
      (lambda (_ctx6928_ _key6929_)
        (let _lp6931_ ((_ctx6933_ _ctx6928_))
          (let ((_$e6935_ (gx#core-context-get _ctx6933_ _key6929_)))
            (if _$e6935_
                (values _$e6935_)
                (let ((_$e6938_
                       (if (fx> (##vector-length _ctx6933_) '3)
                           (##unchecked-structure-ref
                            _ctx6933_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e6938_ (_lp6931_ _$e6938_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx6918_ _key6919_ _val6920_ _rebind6921_)
        (let ((_$e6923_ (gx#core-context-get _ctx6918_ _key6919_)))
          (if _$e6923_
              ((lambda (_xval6926_)
                 (gx#core-context-put!
                  _ctx6918_
                  _key6919_
                  (_rebind6921_ _xval6926_)))
               _$e6923_)
              (gx#core-context-put! _ctx6918_ _key6919_ _val6920_)))))
    (define gx#core-context-top__%
      (lambda (_ctx6896_ _stop?6897_)
        (let _lp6899_ ((_ctx6901_ _ctx6896_))
          (if (_stop?6897_ _ctx6901_)
              _ctx6901_
              (if (##structure-instance-of? _ctx6901_ 'gx#context-phi::t)
                  (_lp6899_
                   (##unchecked-structure-ref
                    _ctx6901_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx6907_ (gx#current-expander-context))
               (_stop?6909_ gx#top-context?))
          (gx#core-context-top__% _ctx6907_ _stop?6909_))))
    (define gx#core-context-top__1
      (lambda (_ctx6911_)
        (let ((_stop?6913_ gx#top-context?))
          (gx#core-context-top__% _ctx6911_ _stop?6913_))))
    (define gx#core-context-top
      (lambda _g9551_
        (let ((_g9550_ (##length _g9551_)))
          (cond ((##fx= _g9550_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g9551_))
                ((##fx= _g9550_ 1)
                 (apply (lambda (_ctx6911_) (gx#core-context-top__1 _ctx6911_))
                        _g9551_))
                ((##fx= _g9550_ 2)
                 (apply (lambda (_ctx6915_ _stop?6916_)
                          (gx#core-context-top__% _ctx6915_ _stop?6916_))
                        _g9551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g9551_))))))
    (define gx#core-context-root__%
      (lambda (_ctx6881_)
        (let _lp6883_ ((_ctx6885_ _ctx6881_))
          (if (##structure-instance-of? _ctx6885_ 'gx#context-phi::t)
              (_lp6883_
               (##unchecked-structure-ref _ctx6885_ '3 gx#phi-context::t '#f))
              _ctx6885_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx6891_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx6891_))))
    (define gx#core-context-root
      (lambda _g9553_
        (let ((_g9552_ (##length _g9553_)))
          (cond ((##fx= _g9552_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g9553_))
                ((##fx= _g9552_ 1)
                 (apply (lambda (_ctx6893_)
                          (gx#core-context-root__% _ctx6893_))
                        _g9553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g9553_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx6862_ . __68596863_)
        (let ((_$e6866_ (gx#current-expander-allow-rebind?)))
          (if _$e6866_
              _$e6866_
              (if (##structure-instance-of? _ctx6862_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx6862_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx6862_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx6873_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx6873_))))
    (define gx#core-context-rebind?
      (lambda _g9555_
        (let ((_g9554_ (##length _g9555_)))
          (cond ((##fx= _g9554_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g9555_))
                ((##fx= _g9554_ 1)
                 (apply (lambda (_ctx6875_)
                          (gx#core-context-rebind?__% _ctx6875_))
                        _g9555_))
                ((##fx>= _g9554_ 1) (apply gx#core-context-rebind?__% _g9555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g9555_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx6845_)
        (let ((_$e6847_ (gx#core-context-top__1 _ctx6845_)))
          (if _$e6847_
              ((lambda (_ctx6850_)
                 (if (##structure-instance-of? _ctx6850_ 'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx6850_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e6847_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx6856_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx6856_))))
    (define gx#core-context-namespace
      (lambda _g9557_
        (let ((_g9556_ (##length _g9557_)))
          (cond ((##fx= _g9556_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g9557_))
                ((##fx= _g9556_ 1)
                 (apply (lambda (_ctx6858_)
                          (gx#core-context-namespace__% _ctx6858_))
                        _g9557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g9557_))))))
    (define gx#expander-binding?__%
      (lambda (_bind6831_ _is?6832_)
        (if (##structure-direct-instance-of? _bind6831_ 'gx#syntax-binding::t)
            (_is?6832_
             (##unchecked-structure-ref
              _bind6831_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind6837_)
        (let ((_is?6839_ gx#expander?))
          (gx#expander-binding?__% _bind6837_ _is?6839_))))
    (define gx#expander-binding?
      (lambda _g9559_
        (let ((_g9558_ (##length _g9559_)))
          (cond ((##fx= _g9558_ 1)
                 (apply (lambda (_bind6837_)
                          (gx#expander-binding?__0 _bind6837_))
                        _g9559_))
                ((##fx= _g9558_ 2)
                 (apply (lambda (_bind6841_ _is?6842_)
                          (gx#expander-binding?__% _bind6841_ _is?6842_))
                        _g9559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g9559_))))))
    (define gx#core-expander-binding?
      (lambda (_bind6828_)
        (gx#expander-binding?__% _bind6828_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind6826_)
        (gx#expander-binding?__% _bind6826_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind6820_)
        (letrec ((_direct-special-form?6822_
                  (lambda (_obj6824_)
                    (##structure-direct-instance-of?
                     _obj6824_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind6820_ _direct-special-form?6822_))))
    (define gx#special-form-binding?
      (lambda (_bind6818_)
        (gx#expander-binding?__% _bind6818_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind6809_)
        (letrec ((_feature?6811_
                  (lambda (_e6813_)
                    (let ((_$e6815_
                           (##structure-instance-of?
                            _e6813_
                            'gx#feature-expander::t)))
                      (if _$e6815_
                          _$e6815_
                          (##structure-instance-of?
                           _e6813_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind6809_ _feature?6811_))))
    (define gx#private-feature-binding?
      (lambda (_bind6807_)
        (gx#expander-binding?__% _bind6807_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id6794_ _bound?6795_)
        (if (gx#identifier? _id6794_)
            (_bound?6795_ (gx#resolve-identifier__0 _id6794_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id6800_)
        (let ((_bound?6802_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id6800_ _bound?6802_))))
    (define gx#core-bound-identifier?
      (lambda _g9561_
        (let ((_g9560_ (##length _g9561_)))
          (cond ((##fx= _g9560_ 1)
                 (apply (lambda (_id6800_)
                          (gx#core-bound-identifier?__0 _id6800_))
                        _g9561_))
                ((##fx= _g9560_ 2)
                 (apply (lambda (_id6804_ _bound?6805_)
                          (gx#core-bound-identifier?__% _id6804_ _bound?6805_))
                        _g9561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g9561_))))))
    (define gx#core-identifier=?
      (lambda (_x6784_ _y6785_)
        (letrec ((_y=?6787_
                  (lambda (_xid6791_)
                    ((if (list? _y6785_) memq eq?) _xid6791_ _y6785_))))
          (let ((_bind6789_ (gx#resolve-identifier__0 _x6784_)))
            (if (##structure-instance-of? _bind6789_ 'gx#binding::t)
                (_y=?6787_
                 (##unchecked-structure-ref _bind6789_ '1 gx#binding::t '#f))
                (_y=?6787_ (gx#stx-e _x6784_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e6782_)
        (if (interned-symbol? _e6782_)
            (string-index (symbol->string _e6782_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx6737_ _src6738_ _ctx6739_ _marks6740_)
        (if (##structure? _stx6737_)
            (let ((_$e6742_ (gx#sealed-syntax-unwrap _stx6737_)))
              (if _$e6742_
                  (values _$e6742_)
                  (if (gx#identifier? _stx6737_)
                      (let ((_id6745_
                             (gx#stx-unwrap__% _stx6737_ _marks6740_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id6745_ '1 gx#AST::t '#f)
                         (let ((_$e6747_
                                (##unchecked-structure-ref
                                 _id6745_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e6747_ _$e6747_ _src6738_))
                         _ctx6739_
                         (##unchecked-structure-ref
                          _id6745_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx6737_)
                       (let ((_$e6750_ (gx#stx-source _stx6737_)))
                         (if _$e6750_ _$e6750_ _src6738_))
                       _ctx6739_
                       (reverse _marks6740_)))))
            (##structure
             gx#syntax-quote::t
             _stx6737_
             _src6738_
             _ctx6739_
             (reverse _marks6740_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx6756_)
        (let* ((_src6758_ '#f)
               (_ctx6760_ (gx#current-expander-context))
               (_marks6762_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx6756_
           _src6758_
           _ctx6760_
           _marks6762_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx6764_ _src6765_)
        (let* ((_ctx6767_ (gx#current-expander-context))
               (_marks6769_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx6764_
           _src6765_
           _ctx6767_
           _marks6769_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx6771_ _src6772_ _ctx6773_)
        (let ((_marks6775_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx6771_
           _src6772_
           _ctx6773_
           _marks6775_))))
    (define gx#core-quote-syntax
      (lambda _g9563_
        (let ((_g9562_ (##length _g9563_)))
          (cond ((##fx= _g9562_ 1)
                 (apply (lambda (_stx6756_)
                          (gx#core-quote-syntax__0 _stx6756_))
                        _g9563_))
                ((##fx= _g9562_ 2)
                 (apply (lambda (_stx6764_ _src6765_)
                          (gx#core-quote-syntax__1 _stx6764_ _src6765_))
                        _g9563_))
                ((##fx= _g9562_ 3)
                 (apply (lambda (_stx6771_ _src6772_ _ctx6773_)
                          (gx#core-quote-syntax__2
                           _stx6771_
                           _src6772_
                           _ctx6773_))
                        _g9563_))
                ((##fx= _g9562_ 4)
                 (apply (lambda (_stx6777_ _src6778_ _ctx6779_ _marks6780_)
                          (gx#core-quote-syntax__%
                           _stx6777_
                           _src6778_
                           _ctx6779_
                           _marks6780_))
                        _g9563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g9563_))))))
    (define gx#core-cons
      (lambda (_hd6733_ _tl6734_)
        (cons (gx#core-quote-syntax__0 _hd6733_) _tl6734_)))
    (define gx#core-list
      (lambda (_hd6730_ . _rest6731_)
        (cons (gx#core-quote-syntax__0 _hd6730_) _rest6731_)))
    (define gx#core-cons*
      (lambda (_hd6727_ . _rest6728_)
        (apply cons* (gx#core-quote-syntax__0 _hd6727_) _rest6728_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path6701_ _rel6702_)
        (let ((_path6714_ (gx#stx-e _stx-path6701_))
              (_reldir6715_
               (let _lp6704_ ((_relsrc6706_
                               (let ((_$e6711_ (gx#stx-source _stx-path6701_)))
                                 (if _$e6711_ _$e6711_ _rel6702_))))
                 (if (##structure-instance-of? _relsrc6706_ 'gerbil#AST::t)
                     (_lp6704_
                      (let ((_$e6708_ (gx#stx-source _relsrc6706_)))
                        (if _$e6708_ _$e6708_ (gx#stx-e _relsrc6706_))))
                     (if (source-location-path? _relsrc6706_)
                         (path-directory (source-location-path _relsrc6706_))
                         (if (string? _relsrc6706_)
                             (path-directory _relsrc6706_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path6714_ (path-normalize _reldir6715_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path6720_)
        (let ((_rel6722_ '#f))
          (gx#core-resolve-path__% _stx-path6720_ _rel6722_))))
    (define gx#core-resolve-path
      (lambda _g9565_
        (let ((_g9564_ (##length _g9565_)))
          (cond ((##fx= _g9564_ 1)
                 (apply (lambda (_stx-path6720_)
                          (gx#core-resolve-path__0 _stx-path6720_))
                        _g9565_))
                ((##fx= _g9564_ 2)
                 (apply (lambda (_stx-path6724_ _rel6725_)
                          (gx#core-resolve-path__% _stx-path6724_ _rel6725_))
                        _g9565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g9565_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr6657_ _ctx6658_)
        (let* ((_repr66596666_ _repr6657_)
               (_E66616670_
                (lambda () (error '"No clause matching" _repr66596666_)))
               (_K66626678_
                (lambda (_subs6673_ _phi6674_)
                  (let ((_subst6676_
                         (if (not (null? _subs6673_))
                             (list->table _subs6673_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst6676_
                     _ctx6658_
                     _phi6674_
                     '#f)))))
          (if (##pair? _repr66596666_)
              (let ((_hd66636681_ (##car _repr66596666_))
                    (_tl66646683_ (##cdr _repr66596666_)))
                (let* ((_phi6686_ _hd66636681_) (_subs6688_ _tl66646683_))
                  (_K66626678_ _subs6688_ _phi6686_)))
              (_E66616670_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr6693_)
        (let ((_ctx6695_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr6693_ _ctx6695_))))
    (define gx#core-deserialize-mark
      (lambda _g9567_
        (let ((_g9566_ (##length _g9567_)))
          (cond ((##fx= _g9566_ 1)
                 (apply (lambda (_repr6693_)
                          (gx#core-deserialize-mark__0 _repr6693_))
                        _g9567_))
                ((##fx= _g9566_ 2)
                 (apply (lambda (_repr6697_ _ctx6698_)
                          (gx#core-deserialize-mark__% _repr6697_ _ctx6698_))
                        _g9567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g9567_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx6654_)
        (gx#stx-rewrap _stx6654_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx6652_)
        (gx#stx-unwrap__% _stx6652_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx6622_)
        (let* ((_g66236631_ (gx#current-expander-marks))
               (_else66256639_ (lambda () _stx6622_))
               (_K66276644_
                (lambda (_hd6642_) (gx#stx-apply-mark _stx6622_ _hd6642_))))
          (if (##pair? _g66236631_)
              (let* ((_hd66286647_ (##car _g66236631_))
                     (_hd6650_ _hd66286647_))
                (_K66276644_ _hd6650_))
              (_else66256639_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx6607_ _E6608_)
        (let ((_bind6610_ (gx#resolve-identifier__0 _stx6607_)))
          (if (##structure-direct-instance-of?
               _bind6610_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind6610_
               '4
               gx#syntax-binding::t
               '#f)
              (_E6608_ _stx6607_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx6615_)
        (let ((_E6617_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx6615_ _E6617_))))
    (define gx#syntax-local-e
      (lambda _g9569_
        (let ((_g9568_ (##length _g9569_)))
          (cond ((##fx= _g9568_ 1)
                 (apply (lambda (_stx6615_) (gx#syntax-local-e__0 _stx6615_))
                        _g9569_))
                ((##fx= _g9568_ 2)
                 (apply (lambda (_stx6619_ _E6620_)
                          (gx#syntax-local-e__% _stx6619_ _E6620_))
                        _g9569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g9569_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx6591_ _E6592_)
        (let ((_e6594_ (gx#syntax-local-e__% _stx6591_ _E6592_)))
          (if (##structure-instance-of? _e6594_ 'gx#expander::t)
              (##structure-ref _e6594_ '1 gx#expander::t '#f)
              _e6594_))))
    (define gx#syntax-local-value__0
      (lambda (_stx6599_)
        (let ((_E6601_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx6599_ _E6601_))))
    (define gx#syntax-local-value
      (lambda _g9571_
        (let ((_g9570_ (##length _g9571_)))
          (cond ((##fx= _g9570_ 1)
                 (apply (lambda (_stx6599_)
                          (gx#syntax-local-value__0 _stx6599_))
                        _g9571_))
                ((##fx= _g9570_ 2)
                 (apply (lambda (_stx6603_ _E6604_)
                          (gx#syntax-local-value__% _stx6603_ _E6604_))
                        _g9571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g9571_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx6588_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx6588_)))))
