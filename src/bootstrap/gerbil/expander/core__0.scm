(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1693679894)
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
      (lambda _$args9313_
        (apply make-struct-instance gx#expander-context::t _$args9313_)))
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
      (lambda _$args9310_
        (apply make-struct-instance gx#root-context::t _$args9310_)))
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
      (lambda _$args9307_
        (apply make-struct-instance gx#phi-context::t _$args9307_)))
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
      (lambda _$args9304_
        (apply make-struct-instance gx#top-context::t _$args9304_)))
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
      (lambda _$args9301_
        (apply make-struct-instance gx#module-context::t _$args9301_)))
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
      (lambda _$args9298_
        (apply make-struct-instance gx#prelude-context::t _$args9298_)))
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
      (lambda _$args9295_
        (apply make-struct-instance gx#local-context::t _$args9295_)))
    (define gx#phi-context:::init!__%
      (lambda (_self9279_ _id9280_ _super9281_)
        (if (##fx< '3 (##vector-length _self9279_))
            (begin
              (##vector-set! _self9279_ '1 _id9280_)
              (##vector-set! _self9279_ '2 (make-table 'test: eq?))
              (##vector-set! _self9279_ '3 _super9281_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self9279_))))
    (define gx#phi-context:::init!__0
      (lambda (_self9286_ _id9287_)
        (let ((_super9289_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self9286_ _id9287_ _super9289_))))
    (define gx#phi-context:::init!
      (lambda _g9326_
        (let ((_g9325_ (##length _g9326_)))
          (cond ((##fx= _g9325_ 2) (apply gx#phi-context:::init!__0 _g9326_))
                ((##fx= _g9325_ 3) (apply gx#phi-context:::init!__% _g9326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g9326_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self9143_ _super9144_)
        (if (##fx< '3 (##vector-length _self9143_))
            (begin
              (##vector-set! _self9143_ '1 (gensym 'L))
              (##vector-set! _self9143_ '2 (make-table 'test: eq?))
              (##vector-set! _self9143_ '3 _super9144_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self9143_))))
    (define gx#local-context:::init!__0
      (lambda (_self9149_)
        (let ((_super9151_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self9149_ _super9151_))))
    (define gx#local-context:::init!
      (lambda _g9328_
        (let ((_g9327_ (##length _g9328_)))
          (cond ((##fx= _g9327_ 1) (apply gx#local-context:::init!__0 _g9328_))
                ((##fx= _g9327_ 2) (apply gx#local-context:::init!__% _g9328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g9328_))))))
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
      (lambda _$args9017_
        (apply make-struct-instance gx#binding::t _$args9017_)))
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
      (lambda _$args9014_
        (apply make-struct-instance gx#runtime-binding::t _$args9014_)))
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
      (lambda _$args9011_
        (apply make-struct-instance gx#local-binding::t _$args9011_)))
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
      (lambda _$args9008_
        (apply make-struct-instance gx#top-binding::t _$args9008_)))
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
      (lambda _$args9005_
        (apply make-struct-instance gx#module-binding::t _$args9005_)))
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
      (lambda _$args9002_
        (apply make-struct-instance gx#extern-binding::t _$args9002_)))
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
      (lambda _$args8999_
        (apply make-struct-instance gx#syntax-binding::t _$args8999_)))
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
      (lambda _$args8996_
        (apply make-struct-instance gx#import-binding::t _$args8996_)))
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
      (lambda _$args8993_
        (apply make-struct-instance gx#alias-binding::t _$args8993_)))
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
      (lambda _$args8990_
        (apply make-struct-instance gx#expander::t _$args8990_)))
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
      (lambda _$args8987_
        (apply make-struct-instance gx#core-expander::t _$args8987_)))
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
      (lambda _$args8984_
        (apply make-struct-instance gx#expression-form::t _$args8984_)))
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
      (lambda _$args8981_
        (apply make-struct-instance gx#special-form::t _$args8981_)))
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
      (lambda _$args8978_
        (apply make-struct-instance gx#definition-form::t _$args8978_)))
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
      (lambda _$args8975_
        (apply make-struct-instance gx#top-special-form::t _$args8975_)))
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
      (lambda _$args8972_
        (apply make-struct-instance gx#module-special-form::t _$args8972_)))
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
      (lambda _$args8969_
        (apply make-struct-instance gx#feature-expander::t _$args8969_)))
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
      (lambda _$args8966_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args8966_)))
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
      (lambda _$args8963_
        (apply make-struct-instance gx#reserved-expander::t _$args8963_)))
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
      (lambda _$args8960_
        (apply make-struct-instance gx#macro-expander::t _$args8960_)))
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
      (lambda _$args8957_
        (apply make-struct-instance gx#rename-macro-expander::t _$args8957_)))
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
      (lambda _$args8954_
        (apply make-struct-instance gx#user-expander::t _$args8954_)))
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
      (lambda _$args8951_
        (apply make-struct-instance gx#expander-mark::t _$args8951_)))
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
      (lambda _$args8948_
        (apply make-struct-instance gx#syntax-error::t _$args8948_)))
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
      (lambda (_where8943_ _message8944_ _stx8945_ . _details8946_)
        (raise (make-struct-instance
                gx#syntax-error::t
                _message8944_
                (cons _stx8945_ _details8946_)
                _where8943_
                (gx#current-expander-context)
                (gx#current-expander-marks)
                (gx#current-expander-phi)))))
    (define gx#eval-syntax__%
      (lambda (_stx8930_ _expression?8931_)
        (gx#eval-syntax* (gx#core-expand__% _stx8930_ _expression?8931_))))
    (define gx#eval-syntax__0
      (lambda (_stx8936_)
        (let ((_expression?8938_ '#f))
          (gx#eval-syntax__% _stx8936_ _expression?8938_))))
    (define gx#eval-syntax
      (lambda _g9330_
        (let ((_g9329_ (##length _g9330_)))
          (cond ((##fx= _g9329_ 1) (apply gx#eval-syntax__0 _g9330_))
                ((##fx= _g9329_ 2) (apply gx#eval-syntax__% _g9330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g9330_))))))
    (define gx#eval-syntax*
      (lambda (_stx8927_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx8927_))))
    (define gx#core-expand__%
      (lambda (_stx8914_ _expression?8915_)
        (if _expression?8915_
            (gx#core-expand-expression _stx8914_)
            (gx#core-expand-top _stx8914_))))
    (define gx#core-expand__0
      (lambda (_stx8920_)
        (let ((_expression?8922_ '#f))
          (gx#core-expand__% _stx8920_ _expression?8922_))))
    (define gx#core-expand
      (lambda _g9332_
        (let ((_g9331_ (##length _g9332_)))
          (cond ((##fx= _g9331_ 1) (apply gx#core-expand__0 _g9332_))
                ((##fx= _g9331_ 2) (apply gx#core-expand__% _g9332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g9332_))))))
    (define gx#core-expand-top
      (lambda (_stx8881_)
        (let* ((_stx8883_ (gx#core-expand*__0 _stx8881_))
               (_e88848891_ _stx8883_)
               (_E88868895_ (lambda () (gx#core-expand-expression _stx8883_)))
               (_E88858909_
                (lambda ()
                  (if (gx#stx-pair? _e88848891_)
                      (let ((_e88878899_ (gx#syntax-e _e88848891_)))
                        (let ((_hd88888902_ (##car _e88878899_))
                              (_tl88898904_ (##cdr _e88878899_)))
                          (let ((_form8907_ _hd88888902_))
                            (if (gx#core-bound-identifier?__0 _form8907_)
                                _stx8883_
                                (_E88868895_)))))
                      (_E88868895_)))))
          (_E88858909_))))
    (define gx#core-expand-expression
      (lambda (_stx8828_)
        (letrec ((_sealed-expression?8830_
                  (lambda (_hd8851_)
                    (if (gx#sealed-syntax? _hd8851_)
                        (let* ((_e88528859_ _hd8851_)
                               (_E88548863_ (lambda () '#f))
                               (_E88538877_
                                (lambda ()
                                  (if (gx#stx-pair? _e88528859_)
                                      (let ((_e88558867_
                                             (gx#syntax-e _e88528859_)))
                                        (let ((_hd88568870_
                                               (##car _e88558867_))
                                              (_tl88578872_
                                               (##cdr _e88558867_)))
                                          (let ((_form8875_ _hd88568870_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form8875_
                                                 gx#expression-form-binding?)
                                                (_E88548863_)))))
                                      (_E88548863_)))))
                          (_E88538877_))
                        '#f)))
                 (_illegal-expression8831_
                  (lambda (_hd8849_ . _g9333_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx8828_
                     _hd8849_)))
                 (_expand-e8832_
                  (lambda (_form8844_ _hd8845_)
                    (let ((_bind8847_
                           (if (##structure-instance-of?
                                _form8844_
                                'gx#binding::t)
                               _form8844_
                               (gx#resolve-identifier__0 _form8844_))))
                      (if (gx#core-expander-binding? _bind8847_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind8847_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd8845_
                            (gx#stx-source _stx8828_)))
                          (if (##structure-direct-instance-of?
                               _bind8847_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind8847_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd8845_
                                 (gx#stx-source _stx8828_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx8828_
                               _form8844_)))))))
          (let ((_hd8834_ (gx#core-expand-head _stx8828_)))
            (if (_sealed-expression?8830_ _hd8834_)
                _hd8834_
                (if (gx#stx-pair? _hd8834_)
                    (let* ((_form8836_ (gx#stx-car _hd8834_))
                           (_bind8838_
                            (if (gx#identifier? _form8836_)
                                (gx#resolve-identifier__0 _form8836_)
                                '#f)))
                      (if (or (not _bind8838_)
                              (not (gx#core-expander-binding? _bind8838_)))
                          (_expand-e8832_ '%%app (cons '%%app _hd8834_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind8838_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd8834_
                               _illegal-expression8831_)
                              (if (gx#expression-form-binding? _bind8838_)
                                  (_expand-e8832_ _bind8838_ _hd8834_)
                                  (if (gx#direct-special-form-binding?
                                       _bind8838_)
                                      (gx#core-expand-expression
                                       (_expand-e8832_ _bind8838_ _hd8834_))
                                      (_illegal-expression8831_ _hd8834_))))))
                    (if (gx#core-bound-identifier?__0 _hd8834_)
                        (_illegal-expression8831_ _hd8834_)
                        (if (gx#identifier? _hd8834_)
                            (_expand-e8832_
                             '%%ref
                             (cons '%%ref (cons _hd8834_ '())))
                            (if (gx#stx-datum? _hd8834_)
                                (_expand-e8832_
                                 '%#quote
                                 (cons '%#quote (cons _hd8834_ '())))
                                (_illegal-expression8831_ _hd8834_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx8823_)
        (call-with-parameters
         (lambda ()
           (let ((_stx8826_ (gx#core-expand-expression _stx8823_)))
             (values _stx8826_ (gx#eval-syntax* _stx8826_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx8804_ _stop?8805_)
        (let _lp8807_ ((_stx8809_ _stx8804_))
          (if (_stop?8805_ _stx8809_)
              _stx8809_
              (let ((_rstx8811_ (gx#core-expand1 _stx8809_)))
                (if (eq? _stx8809_ _rstx8811_)
                    _stx8809_
                    (_lp8807_ _rstx8811_)))))))
    (define gx#core-expand*__0
      (lambda (_stx8816_)
        (let ((_stop?8818_ false))
          (gx#core-expand*__% _stx8816_ _stop?8818_))))
    (define gx#core-expand*
      (lambda _g9335_
        (let ((_g9334_ (##length _g9335_)))
          (cond ((##fx= _g9334_ 1) (apply gx#core-expand*__0 _g9335_))
                ((##fx= _g9334_ 2) (apply gx#core-expand*__% _g9335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g9335_))))))
    (define gx#core-expand1
      (lambda (_stx8760_)
        (letrec ((_step8762_
                  (lambda (_hd8799_)
                    (let ((_bind8801_ (gx#resolve-identifier__0 _hd8799_)))
                      (if (##structure-instance-of?
                           _bind8801_
                           'gx#runtime-binding::t)
                          _stx8760_
                          (if (##structure-direct-instance-of?
                               _bind8801_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind8801_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx8760_)
                              (if (not _bind8801_)
                                  _stx8760_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx8760_))))))))
          (let* ((_e87638771_ _stx8760_)
                 (_E87698775_ (lambda () _stx8760_))
                 (_E87658781_
                  (lambda ()
                    (let ((_hd8779_ _e87638771_))
                      (if (gx#identifier? _hd8779_)
                          (_step8762_ _hd8779_)
                          (_E87698775_)))))
                 (_E87648795_
                  (lambda ()
                    (if (gx#stx-pair? _e87638771_)
                        (let ((_e87668785_ (gx#syntax-e _e87638771_)))
                          (let ((_hd87678788_ (##car _e87668785_))
                                (_tl87688790_ (##cdr _e87668785_)))
                            (let ((_hd8793_ _hd87678788_))
                              (if (gx#identifier? _hd8793_)
                                  (_step8762_ _hd8793_)
                                  (_E87658781_)))))
                        (_E87658781_)))))
            (_E87648795_)))))
    (define gx#core-expand-head
      (lambda (_stx8726_)
        (letrec ((_stop?8728_
                  (lambda (_stx8730_)
                    (let* ((_e87318738_ _stx8730_)
                           (_E87338742_ (lambda () '#f))
                           (_E87328756_
                            (lambda ()
                              (if (gx#stx-pair? _e87318738_)
                                  (let ((_e87348746_
                                         (gx#syntax-e _e87318738_)))
                                    (let ((_hd87358749_ (##car _e87348746_))
                                          (_tl87368751_ (##cdr _e87348746_)))
                                      (let ((_hd8754_ _hd87358749_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd8754_)
                                            (_E87338742_)))))
                                  (_E87338742_)))))
                      (_E87328756_)))))
          (gx#core-expand*__% _stx8726_ _stop?8728_))))
    (define gx#core-expand-block__%
      (lambda (_stx8532_ _expand-special8533_ _begin-form8534_ _expand-e8535_)
        (letrec ((_expand-splice8537_
                  (lambda (_hd8700_ _body8701_ _rest8702_ _r8703_)
                    (if (gx#stx-list? _body8701_)
                        (_K8541_ (gx#stx-foldr cons _rest8702_ _body8701_)
                                 _r8703_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx8532_
                         _hd8700_))))
                 (_expand-cond-expand8538_
                  (lambda (_hd8696_ _rest8697_ _r8698_)
                    (_K8541_ (cons (gx#core-expand-cond-expand% _hd8696_)
                                   _rest8697_)
                             _r8698_)))
                 (_expand-include8539_
                  (lambda (_hd8645_ _rest8646_ _r8647_)
                    (let* ((_e86488658_ _hd8645_)
                           (_E86508662_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e86488658_)))
                           (_E86498692_
                            (lambda ()
                              (if (gx#stx-pair? _e86488658_)
                                  (let ((_e86518666_
                                         (gx#syntax-e _e86488658_)))
                                    (let ((_hd86528669_ (##car _e86518666_))
                                          (_tl86538671_ (##cdr _e86518666_)))
                                      (if (gx#stx-pair? _tl86538671_)
                                          (let ((_e86548674_
                                                 (gx#syntax-e _tl86538671_)))
                                            (let ((_hd86558677_
                                                   (##car _e86548674_))
                                                  (_tl86568679_
                                                   (##cdr _e86548674_)))
                                              (let ((_path8682_ _hd86558677_))
                                                (if (gx#stx-null? _tl86568679_)
                                                    (if (gx#stx-string?
                                                         _path8682_)
                                                        (let* ((_rpath8684_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path8682_
                         (gx#stx-source _hd8645_)))
                       (_block8686_
                        (gx#core-expand-include%__% _hd8645_ _rpath8684_))
                       (_rbody8689_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block8686_
                            _expand-special8533_
                            '#f
                            _expand-e8535_))
                         gx#current-expander-path
                         (cons _rpath8684_ (gx#current-expander-path)))))
                  (_K8541_ _rest8646_ (foldr1 cons _r8647_ _rbody8689_)))
                (_E86508662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E86508662_)))))
                                          (_E86508662_))))
                                  (_E86508662_)))))
                      (_E86498692_))))
                 (_expand-expression8540_
                  (lambda (_hd8641_ _rest8642_ _r8643_)
                    (_K8541_ _rest8642_
                             (cons (_expand-e8535_ _hd8641_) _r8643_))))
                 (_K8541_ (lambda (_rest8571_ _r8572_)
                            (let* ((_e85738580_ _rest8571_)
                                   (_E85758584_
                                    (lambda ()
                                      (if _begin-form8534_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form8534_
                                            (reverse _r8572_))
                                           (gx#stx-source _stx8532_))
                                          _r8572_)))
                                   (_E85748637_
                                    (lambda ()
                                      (if (gx#stx-pair? _e85738580_)
                                          (let ((_e85768588_
                                                 (gx#syntax-e _e85738580_)))
                                            (let ((_hd85778591_
                                                   (##car _e85768588_))
                                                  (_tl85788593_
                                                   (##cdr _e85768588_)))
                                              (let* ((_hd8596_ _hd85778591_)
                                                     (_rest8598_ _tl85788593_))
                                                (if '#t
                                                    (let* ((_hd8600_
                                                            (gx#core-expand-head
                                                             _hd8596_))
                                                           (_e86018608_
                                                            _hd8600_)
                                                           (_E86038612_
                                                            (lambda ()
                                                              (_expand-expression8540_
                                                               _hd8600_
                                                               _rest8598_
                                                               _r8572_)))
                                                           (_E86028633_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e86018608_)
                          (let ((_e86048616_ (gx#syntax-e _e86018608_)))
                            (let ((_hd86058619_ (##car _e86048616_))
                                  (_tl86068621_ (##cdr _e86048616_)))
                              (let* ((_form8624_ _hd86058619_)
                                     (_body8626_ _tl86068621_))
                                (if '#t
                                    (let ((_bind8628_
                                           (if (gx#identifier? _form8624_)
                                               (gx#resolve-identifier__0
                                                _form8624_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind8628_)
                                          (let ((_$e8630_
                                                 (##unchecked-structure-ref
                                                  _bind8628_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e8630_)
                                                (_expand-splice8537_
                                                 _hd8600_
                                                 _body8626_
                                                 _rest8598_
                                                 _r8572_)
                                                (if (eq? '%#cond-expand
                                                         _$e8630_)
                                                    (_expand-cond-expand8538_
                                                     _hd8600_
                                                     _rest8598_
                                                     _r8572_)
                                                    (if (eq? '%#include
                                                             _$e8630_)
                                                        (_expand-include8539_
                                                         _hd8600_
                                                         _rest8598_
                                                         _r8572_)
                                                        (_expand-special8533_
                                                         _hd8600_
                                                         _K8541_
                                                         _rest8598_
                                                         _r8572_)))))
                                          (_expand-expression8540_
                                           _hd8600_
                                           _rest8598_
                                           _r8572_)))
                                    (_E86038612_)))))
                          (_E86038612_)))))
              (_E86028633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85758584_)))))
                                          (_E85758584_)))))
                              (_E85748637_)))))
          (let* ((_e85428549_ _stx8532_)
                 (_E85448553_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e85428549_)))
                 (_E85438567_
                  (lambda ()
                    (if (gx#stx-pair? _e85428549_)
                        (let ((_e85458557_ (gx#syntax-e _e85428549_)))
                          (let ((_hd85468560_ (##car _e85458557_))
                                (_tl85478562_ (##cdr _e85458557_)))
                            (let ((_body8565_ _tl85478562_))
                              (if (gx#stx-list? _body8565_)
                                  (_K8541_ _body8565_ '())
                                  (_E85448553_)))))
                        (_E85448553_)))))
            (_E85438567_)))))
    (define gx#core-expand-block__0
      (lambda (_stx8708_ _expand-special8709_)
        (let* ((_begin-form8711_ '%#begin)
               (_expand-e8713_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx8708_
           _expand-special8709_
           _begin-form8711_
           _expand-e8713_))))
    (define gx#core-expand-block__1
      (lambda (_stx8715_ _expand-special8716_ _begin-form8717_)
        (let ((_expand-e8719_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx8715_
           _expand-special8716_
           _begin-form8717_
           _expand-e8719_))))
    (define gx#core-expand-block
      (lambda _g9337_
        (let ((_g9336_ (##length _g9337_)))
          (cond ((##fx= _g9336_ 2) (apply gx#core-expand-block__0 _g9337_))
                ((##fx= _g9336_ 3) (apply gx#core-expand-block__1 _g9337_))
                ((##fx= _g9336_ 4) (apply gx#core-expand-block__% _g9337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g9337_))))))
    (define gx#core-expand-block*
      (lambda (_stx8480_ _expand-special8481_)
        (let* ((_g84828493_
                (gx#core-expand-block__1 _stx8480_ _expand-special8481_ '#f))
               (_E84868497_
                (lambda () (error '"No clause matching" _g84828493_))))
          (let ((_K84918528_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx8480_)))
                (_K84888514_ (lambda (_expr8512_) _expr8512_))
                (_K84878503_
                 (lambda (_body8501_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body8501_))
                    (gx#stx-source _stx8480_)))))
            (let ((_try-match84848524_
                   (lambda ()
                     (if (##pair? _g84828493_)
                         (let ((_tl84908519_ (##cdr _g84828493_))
                               (_hd84898517_ (##car _g84828493_)))
                           (if (##null? _tl84908519_)
                               (let ((_expr8522_ _hd84898517_))
                                 (_K84888514_ _expr8522_))
                               (let ((_body8506_ _g84828493_))
                                 (_K84878503_ _body8506_))))
                         (let ((_body8506_ _g84828493_))
                           (_K84878503_ _body8506_))))))
              (if (##null? _g84828493_)
                  (_K84918528_)
                  (_try-match84848524_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx8308_)
        (letrec ((_satisfied?8310_
                  (lambda (_condition8408_)
                    (let* ((_e84098424_ _condition8408_)
                           (_E84198428_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e84098424_)))
                           (_E84128447_
                            (lambda ()
                              (if (gx#stx-pair? _e84098424_)
                                  (let ((_e84208432_
                                         (gx#syntax-e _e84098424_)))
                                    (let ((_hd84218435_ (##car _e84208432_))
                                          (_tl84228437_ (##cdr _e84208432_)))
                                      (let* ((_combinator8440_ _hd84218435_)
                                             (_body8442_ _tl84228437_))
                                        (if (gx#stx-list? _body8442_)
                                            (let ((_$e8444_
                                                   (gx#stx-e
                                                    _combinator8440_)))
                                              (if (eq? 'not _$e8444_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?8310_
                                                        _body8442_))
                                                  (if (eq? 'and _$e8444_)
                                                      (gx#stx-andmap
                                                       _satisfied?8310_
                                                       _body8442_)
                                                      (if (eq? 'or _$e8444_)
                                                          (gx#stx-ormap
                                                           _satisfied?8310_
                                                           _body8442_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e8444_)
                      (gx#stx-andmap gx#core-resolve-identifier _body8442_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _stx8308_
                       _combinator8440_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E84198428_)))))
                                  (_E84198428_))))
                           (_E84118470_
                            (lambda ()
                              (if (gx#stx-pair? _e84098424_)
                                  (let ((_e84138451_
                                         (gx#syntax-e _e84098424_)))
                                    (let ((_hd84148454_ (##car _e84138451_))
                                          (_tl84158456_ (##cdr _e84138451_)))
                                      (if (and (gx#identifier? _hd84148454_)
                                               (gx#core-identifier=?
                                                _hd84148454_
                                                'unquote))
                                          (if (gx#stx-pair? _tl84158456_)
                                              (let ((_e84168459_
                                                     (gx#syntax-e
                                                      _tl84158456_)))
                                                (let ((_hd84178462_
                                                       (##car _e84168459_))
                                                      (_tl84188464_
                                                       (##cdr _e84168459_)))
                                                  (let ((_expr8467_
                                                         _hd84178462_))
                                                    (if (gx#stx-null?
                                                         _tl84188464_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr8467_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E84128447_))
                (_E84128447_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E84128447_))
                                          (_E84128447_))))
                                  (_E84128447_))))
                           (_E84108476_
                            (lambda ()
                              (let ((_id8474_ _e84098424_))
                                (if (gx#identifier? _id8474_)
                                    (gx#core-bound-identifier?__%
                                     _id8474_
                                     gx#feature-binding?)
                                    (_E84118470_))))))
                      (_E84108476_))))
                 (_loop8311_
                  (lambda (_rest8341_)
                    (let* ((_e83428350_ _rest8341_)
                           (_E83488354_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e83428350_)))
                           (_E83448358_
                            (lambda ()
                              (if (gx#stx-null? _e83428350_)
                                  (if '#t '() (_E83488354_))
                                  (_E83488354_))))
                           (_E83438404_
                            (lambda ()
                              (if (gx#stx-pair? _e83428350_)
                                  (let ((_e83458362_
                                         (gx#syntax-e _e83428350_)))
                                    (let ((_hd83468365_ (##car _e83458362_))
                                          (_tl83478367_ (##cdr _e83458362_)))
                                      (let* ((_hd8370_ _hd83468365_)
                                             (_rest8372_ _tl83478367_))
                                        (if '#t
                                            (let* ((_e83738380_ _hd8370_)
                                                   (_E83758384_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _e83738380_)))
                                                   (_E83748400_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e83738380_)
                                                          (let ((_e83768388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e83738380_)))
                    (let ((_hd83778391_ (##car _e83768388_))
                          (_tl83788393_ (##cdr _e83768388_)))
                      (let* ((_condition8396_ _hd83778391_)
                             (_body8398_ _tl83788393_))
                        (if '#t
                            (if (gx#stx-eq? _condition8396_ 'else)
                                (if (gx#stx-null? _rest8372_)
                                    _body8398_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _stx8308_
                                     _hd8370_))
                                (if (_satisfied?8310_ _condition8396_)
                                    _body8398_
                                    (_loop8311_ _rest8372_)))
                            (_E83758384_)))))
                  (_E83758384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E83748400_))
                                            (_E83448358_)))))
                                  (_E83448358_)))))
                      (_E83438404_)))))
          (let* ((_e83128319_ _stx8308_)
                 (_E83148323_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e83128319_)))
                 (_E83138337_
                  (lambda ()
                    (if (gx#stx-pair? _e83128319_)
                        (let ((_e83158327_ (gx#syntax-e _e83128319_)))
                          (let ((_hd83168330_ (##car _e83158327_))
                                (_tl83178332_ (##cdr _e83158327_)))
                            (let ((_clauses8335_ _tl83178332_))
                              (if (gx#stx-list? _clauses8335_)
                                  (gx#core-cons
                                   'begin
                                   (_loop8311_ _clauses8335_))
                                  (_E83148323_)))))
                        (_E83148323_)))))
            (_E83138337_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx8251_ _rpath8252_)
        (let* ((_e82538263_ _stx8251_)
               (_E82558267_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e82538263_)))
               (_E82548294_
                (lambda ()
                  (if (gx#stx-pair? _e82538263_)
                      (let ((_e82568271_ (gx#syntax-e _e82538263_)))
                        (let ((_hd82578274_ (##car _e82568271_))
                              (_tl82588276_ (##cdr _e82568271_)))
                          (if (gx#stx-pair? _tl82588276_)
                              (let ((_e82598279_ (gx#syntax-e _tl82588276_)))
                                (let ((_hd82608282_ (##car _e82598279_))
                                      (_tl82618284_ (##cdr _e82598279_)))
                                  (let ((_path8287_ _hd82608282_))
                                    (if (gx#stx-null? _tl82618284_)
                                        (if (gx#stx-string? _path8287_)
                                            (let ((_rpath8292_
                                                   (let ((_$e8289_
                                                          _rpath8252_))
                                                     (if _$e8289_
                                                         _$e8289_
                                                         (gx#core-resolve-path__%
                                                          _path8287_
                                                          (gx#stx-source
                                                           _stx8251_))))))
                                              (if (member _rpath8292_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx8251_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath8292_))
                                                    (gx#stx-source
                                                     _stx8251_)))))
                                            (_E82558267_))
                                        (_E82558267_)))))
                              (_E82558267_))))
                      (_E82558267_)))))
          (_E82548294_))))
    (define gx#core-expand-include%__0
      (lambda (_stx8301_)
        (let ((_rpath8303_ '#f))
          (gx#core-expand-include%__% _stx8301_ _rpath8303_))))
    (define gx#core-expand-include%
      (lambda _g9339_
        (let ((_g9338_ (##length _g9339_)))
          (cond ((##fx= _g9338_ 1) (apply gx#core-expand-include%__0 _g9339_))
                ((##fx= _g9338_ 2) (apply gx#core-expand-include%__% _g9339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g9339_))))))
    (define gx#core-apply-expander__%
      (lambda (_K8220_ _stx8221_ _method8222_)
        (if (procedure? _K8220_)
            (let ((_$e8224_ (gx#stx-source _stx8221_)))
              (if _$e8224_
                  ((lambda (_g82268228_)
                     (gx#stx-wrap-source (_K8220_ _stx8221_) _g82268228_))
                   _$e8224_)
                  (_K8220_ _stx8221_)))
            (let ((_$e8231_ (bound-method-ref _K8220_ _method8222_)))
              (if _$e8231_
                  ((lambda (_g82338235_)
                     (gx#core-apply-expander__%
                      _g82338235_
                      _stx8221_
                      _method8222_))
                   _$e8231_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx8221_
                   _method8222_))))))
    (define gx#core-apply-expander__0
      (lambda (_K8241_ _stx8242_)
        (let ((_method8244_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K8241_ _stx8242_ _method8244_))))
    (define gx#core-apply-expander
      (lambda _g9341_
        (let ((_g9340_ (##length _g9341_)))
          (cond ((##fx= _g9340_ 2) (apply gx#core-apply-expander__0 _g9341_))
                ((##fx= _g9340_ 3) (apply gx#core-apply-expander__% _g9341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g9341_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self8216_ _stx8217_)
        (gx#raise-syntax-error '#f '"Bad syntax" _stx8217_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self8069_ _stx8070_)
        (let* ((_self80718077_ _self8069_)
               (_E80738081_
                (lambda () (error '"No clause matching" _self80718077_)))
               (_K80748086_
                (lambda (_K8084_)
                  (gx#core-apply-expander__0 _K8084_ _stx8070_))))
          (if (##structure-instance-of? _self80718077_ 'gx#core-macro::t)
              (let* ((_e80758089_ (##vector-ref _self80718077_ '1))
                     (_K8092_ _e80758089_))
                (_K80748086_ _K8092_))
              (_E80738081_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self7922_ _stx7923_)
        (if (gx#sealed-syntax? _stx7923_)
            _stx7923_
            (let* ((_self79247930_ _self7922_)
                   (_E79267934_
                    (lambda () (error '"No clause matching" _self79247930_)))
                   (_K79277939_
                    (lambda (_K7937_)
                      (gx#core-apply-expander__0 _K7937_ _stx7923_))))
              (if (##structure-instance-of?
                   _self79247930_
                   'gx#core-expander::t)
                  (let* ((_e79287942_ (##vector-ref _self79247930_ '1))
                         (_K7945_ _e79287942_))
                    (_K79277939_ _K7945_))
                  (_E79267934_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self7784_ _stx7785_ _top?7786_)
        (if (_top?7786_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self7784_ _stx7785_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx7785_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self7791_ _stx7792_)
        (let ((_top?7794_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self7791_
           _stx7792_
           _top?7794_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g9343_
        (let ((_g9342_ (##length _g9343_)))
          (cond ((##fx= _g9342_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0 _g9343_))
                ((##fx= _g9342_ 3)
                 (apply gx#top-special-form::apply-macro-expander__% _g9343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g9343_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self7658_ _stx7659_)
        (gx#top-special-form::apply-macro-expander__%
         _self7658_
         _stx7659_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self7483_ _stx7484_)
        (let* ((_self74857491_ _self7483_)
               (_E74877495_
                (lambda () (error '"No clause matching" _self74857491_)))
               (_K74887528_
                (lambda (_id7498_)
                  (let* ((_e74997506_ _stx7484_)
                         (_E75017510_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e74997506_)))
                         (_E75007524_
                          (lambda ()
                            (if (gx#stx-pair? _e74997506_)
                                (let ((_e75027514_ (gx#syntax-e _e74997506_)))
                                  (let ((_hd75037517_ (##car _e75027514_))
                                        (_tl75047519_ (##cdr _e75027514_)))
                                    (let ((_body7522_ _tl75047519_))
                                      (if '#t
                                          (gx#core-cons _id7498_ _body7522_)
                                          (_E75017510_)))))
                                (_E75017510_)))))
                    (_E75007524_)))))
          (if (##structure-instance-of?
               _self74857491_
               'gx#rename-macro-expander::t)
              (let* ((_e74897531_ (##vector-ref _self74857491_ '1))
                     (_id7534_ _e74897531_))
                (_K74887528_ _id7534_))
              (_E74877495_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self7309_ _stx7310_ _method7311_)
        (let* ((_self73127320_ _self7309_)
               (_E73147324_
                (lambda () (error '"No clause matching" _self73127320_)))
               (_K73157331_
                (lambda (_phi7327_ _ctx7328_ _K7329_)
                  (gx#core-apply-user-macro
                   _K7329_
                   _stx7310_
                   _ctx7328_
                   _phi7327_
                   _method7311_))))
          (if (##structure-instance-of? _self73127320_ 'gx#macro-expander::t)
              (let* ((_e73167334_ (##vector-ref _self73127320_ '1))
                     (_K7337_ _e73167334_)
                     (_e73177339_ (##vector-ref _self73127320_ '2))
                     (_ctx7342_ _e73177339_)
                     (_e73187344_ (##vector-ref _self73127320_ '3))
                     (_phi7347_ _e73187344_))
                (_K73157331_ _phi7347_ _ctx7342_ _K7337_))
              (_E73147324_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self7352_ _stx7353_)
        (let ((_method7355_ 'apply-macro-expander))
          (gx#core-apply-user-expander__% _self7352_ _stx7353_ _method7355_))))
    (define gx#core-apply-user-expander
      (lambda _g9345_
        (let ((_g9344_ (##length _g9345_)))
          (cond ((##fx= _g9344_ 2)
                 (apply gx#core-apply-user-expander__0 _g9345_))
                ((##fx= _g9344_ 3)
                 (apply gx#core-apply-user-expander__% _g9345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g9345_))))))
    (define gx#core-apply-user-macro
      (lambda (_K7299_ _stx7300_ _ctx7301_ _phi7302_ _method7303_)
        (let ((_mark7305_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx7301_
                _phi7302_
                _stx7300_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K7299_
               (gx#stx-apply-mark _stx7300_ _mark7305_)
               _method7303_)
              _mark7305_))
           gx#current-expander-marks
           (cons _mark7305_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx7151_ _phi7152_ _ctx7153_)
        (let _lp7155_ ((_bind7157_
                        (gx#core-resolve-identifier__%
                         _stx7151_
                         _phi7152_
                         _ctx7153_)))
          (if (##structure-direct-instance-of?
               _bind7157_
               'gx#import-binding::t)
              (_lp7155_
               (##unchecked-structure-ref
                _bind7157_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind7157_
                   'gx#alias-binding::t)
                  (_lp7155_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind7157_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi7152_
                    _ctx7153_))
                  _bind7157_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx7162_)
        (let* ((_phi7164_ (gx#current-expander-phi))
               (_ctx7166_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx7162_ _phi7164_ _ctx7166_))))
    (define gx#resolve-identifier__1
      (lambda (_stx7168_ _phi7169_)
        (let ((_ctx7171_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx7168_ _phi7169_ _ctx7171_))))
    (define gx#resolve-identifier
      (lambda _g9347_
        (let ((_g9346_ (##length _g9347_)))
          (cond ((##fx= _g9346_ 1) (apply gx#resolve-identifier__0 _g9347_))
                ((##fx= _g9346_ 2) (apply gx#resolve-identifier__1 _g9347_))
                ((##fx= _g9346_ 3) (apply gx#resolve-identifier__% _g9347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g9347_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx7109_ _val7110_ _rebind?7111_ _phi7112_ _ctx7113_)
        (let ((_rebind?7115_
               (if (not _rebind?7111_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?7111_) _rebind?7111_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx7109_)
           _val7110_
           _rebind?7115_
           _phi7112_
           _ctx7113_))))
    (define gx#bind-identifier!__0
      (lambda (_stx7120_ _val7121_)
        (let* ((_rebind?7123_ '#f)
               (_phi7125_ (gx#current-expander-phi))
               (_ctx7127_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7120_
           _val7121_
           _rebind?7123_
           _phi7125_
           _ctx7127_))))
    (define gx#bind-identifier!__1
      (lambda (_stx7129_ _val7130_ _rebind?7131_)
        (let* ((_phi7133_ (gx#current-expander-phi))
               (_ctx7135_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7129_
           _val7130_
           _rebind?7131_
           _phi7133_
           _ctx7135_))))
    (define gx#bind-identifier!__2
      (lambda (_stx7137_ _val7138_ _rebind?7139_ _phi7140_)
        (let ((_ctx7142_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7137_
           _val7138_
           _rebind?7139_
           _phi7140_
           _ctx7142_))))
    (define gx#bind-identifier!
      (lambda _g9349_
        (let ((_g9348_ (##length _g9349_)))
          (cond ((##fx= _g9348_ 2) (apply gx#bind-identifier!__0 _g9349_))
                ((##fx= _g9348_ 3) (apply gx#bind-identifier!__1 _g9349_))
                ((##fx= _g9348_ 4) (apply gx#bind-identifier!__2 _g9349_))
                ((##fx= _g9348_ 5) (apply gx#bind-identifier!__% _g9349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g9349_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx7081_ _phi7082_ _ctx7083_)
        (let _lp7085_ ((_e7087_ _stx7081_)
                       (_marks7088_ (gx#current-expander-marks)))
          (if (symbol? _e7087_)
              (gx#core-resolve-binding
               _e7087_
               _phi7082_
               _phi7082_
               _ctx7083_
               (reverse _marks7088_))
              (if (gx#identifier-quote? _e7087_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e7087_ '1 AST::t '#f)
                   _phi7082_
                   '0
                   (##unchecked-structure-ref
                    _e7087_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e7087_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e7087_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e7087_ '1 AST::t '#f)
                       _phi7082_
                       _phi7082_
                       _ctx7083_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e7087_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks7088_))
                      (if (##structure-direct-instance-of?
                           _e7087_
                           'gx#syntax-wrap::t)
                          (_lp7085_
                           (##unchecked-structure-ref _e7087_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e7087_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks7088_))
                          (if (##structure-instance-of? _e7087_ 'gerbil#AST::t)
                              (_lp7085_
                               (##unchecked-structure-ref
                                _e7087_
                                '1
                                AST::t
                                '#f)
                               _marks7088_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx7081_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx7093_)
        (let* ((_phi7095_ (gx#current-expander-phi))
               (_ctx7097_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx7093_ _phi7095_ _ctx7097_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx7099_ _phi7100_)
        (let ((_ctx7102_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx7099_ _phi7100_ _ctx7102_))))
    (define gx#core-resolve-identifier
      (lambda _g9351_
        (let ((_g9350_ (##length _g9351_)))
          (cond ((##fx= _g9350_ 1)
                 (apply gx#core-resolve-identifier__0 _g9351_))
                ((##fx= _g9350_ 2)
                 (apply gx#core-resolve-identifier__1 _g9351_))
                ((##fx= _g9350_ 3)
                 (apply gx#core-resolve-identifier__% _g9351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g9351_))))))
    (define gx#core-resolve-binding
      (lambda (_id6994_ _phi6995_ _src-phi6996_ _ctx6997_ _marks6998_)
        (letrec ((_resolve7000_
                  (lambda (_ctx7068_ _src-phi7069_ _key7070_)
                    (let _lp7072_ ((_ctx7074_
                                    (gx#core-context-shift
                                     _ctx7068_
                                     _phi6995_))
                                   (_dphi7075_ (fx- _phi6995_ _src-phi7069_)))
                      (let ((_$e7077_
                             (gx#core-context-resolve _ctx7074_ _key7070_)))
                        (if _$e7077_
                            (values _$e7077_)
                            (if (fxzero? _dphi7075_)
                                '#f
                                (if (fxpositive? _dphi7075_)
                                    (_lp7072_
                                     (gx#core-context-shift _ctx7074_ '-1)
                                     (fx- _dphi7075_ '1))
                                    (_lp7072_
                                     (gx#core-context-shift _ctx7074_ '1)
                                     (fx+ _dphi7075_ '1))))))))))
          (let _lp7002_ ((_ctx7004_ _ctx6997_)
                         (_src-phi7005_ _src-phi6996_)
                         (_rest7006_ _marks6998_))
            (let* ((_rest70077015_ _rest7006_)
                   (_else70097023_
                    (lambda ()
                      (_resolve7000_ _ctx7004_ _src-phi7005_ _id6994_)))
                   (_K70117056_
                    (lambda (_rest7026_ _hd7027_)
                      (let* ((_hd70287034_ _hd7027_)
                             (_E70307038_
                              (lambda ()
                                (error '"No clause matching" _hd70287034_)))
                             (_K70317048_
                              (lambda (_subst7041_)
                                (let ((_$e7045_
                                       (let ((_key7043_
                                              (if _subst7041_
                                                  (table-ref
                                                   _subst7041_
                                                   _id6994_
                                                   '#f)
                                                  '#f)))
                                         (if _key7043_
                                             (_resolve7000_
                                              _ctx7004_
                                              _src-phi7005_
                                              _key7043_)
                                             '#f))))
                                  (if _$e7045_
                                      _$e7045_
                                      (_lp7002_
                                       (##unchecked-structure-ref
                                        _hd7027_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd7027_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest7026_))))))
                        (if (##structure-instance-of?
                             _hd70287034_
                             'gx#expander-mark::t)
                            (let* ((_e70327051_ (##vector-ref _hd70287034_ '1))
                                   (_subst7054_ _e70327051_))
                              (_K70317048_ _subst7054_))
                            (_E70307038_))))))
              (if (##pair? _rest70077015_)
                  (let ((_hd70127059_ (##car _rest70077015_))
                        (_tl70137061_ (##cdr _rest70077015_)))
                    (let* ((_hd7064_ _hd70127059_) (_rest7066_ _tl70137061_))
                      (_K70117056_ _rest7066_ _hd7064_)))
                  (_else70097023_)))))))
    (define gx#core-bind!__%
      (lambda (_key6870_ _val6871_ _rebind?6872_ _phi6873_ _ctx6874_)
        (letrec ((_update-binding6876_
                  (lambda (_xval6947_)
                    (if (or (_rebind?6872_ _ctx6874_ _xval6947_ _val6871_)
                            (and (##structure-direct-instance-of?
                                  _xval6947_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval6947_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val6871_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val6871_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval6947_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val6871_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val6871_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval6947_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val6871_
                        (if (and (##structure-direct-instance-of?
                                  _val6871_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val6871_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval6947_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val6871_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval6947_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval6947_
                            (if (and (##structure-direct-instance-of?
                                      _val6871_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval6947_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key6870_
                                 (cons (##unchecked-structure-ref
                                        _val6871_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val6871_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval6947_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval6947_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval6947_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval6947_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key6870_
                                 _val6871_
                                 _xval6947_))))))
                 (_gensubst6877_
                  (lambda (_subst6942_ _id6943_)
                    (let ((_eid6945_
                           (gensym (if (uninterned-symbol? _id6943_)
                                       '%
                                       _id6943_))))
                      (table-set! _subst6942_ _id6943_ _eid6945_)
                      _eid6945_)))
                 (_subst!6878_
                  (lambda (_key6880_)
                    (let* ((_key68816889_ _key6880_)
                           (_else68836897_ (lambda () _key6880_))
                           (_K68856930_
                            (lambda (_mark6900_ _id6901_)
                              (let* ((_mark69026908_ _mark6900_)
                                     (_E69046912_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark69026908_)))
                                     (_K69056922_
                                      (lambda (_subst6915_)
                                        (if (not _subst6915_)
                                            (let ((_subst6917_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark6900_
                                               _subst6917_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst6877_
                                               _subst6917_
                                               _id6901_))
                                            (let ((_$e6919_
                                                   (table-ref
                                                    _subst6915_
                                                    _id6901_
                                                    '#f)))
                                              (if _$e6919_
                                                  (values _$e6919_)
                                                  (_gensubst6877_
                                                   _subst6915_
                                                   _id6901_)))))))
                                (if (##structure-instance-of?
                                     _mark69026908_
                                     'gx#expander-mark::t)
                                    (let* ((_e69066925_
                                            (##vector-ref _mark69026908_ '1))
                                           (_subst6928_ _e69066925_))
                                      (_K69056922_ _subst6928_))
                                    (_E69046912_))))))
                      (if (##pair? _key68816889_)
                          (let ((_hd68866933_ (##car _key68816889_))
                                (_tl68876935_ (##cdr _key68816889_)))
                            (let* ((_id6938_ _hd68866933_)
                                   (_mark6940_ _tl68876935_))
                              (_K68856930_ _mark6940_ _id6938_)))
                          (_else68836897_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx6874_ _phi6873_)
           (_subst!6878_ _key6870_)
           _val6871_
           _update-binding6876_))))
    (define gx#core-bind!__0
      (lambda (_key6964_ _val6965_)
        (let* ((_rebind?6967_ false)
               (_phi6969_ (gx#current-expander-phi))
               (_ctx6971_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key6964_
           _val6965_
           _rebind?6967_
           _phi6969_
           _ctx6971_))))
    (define gx#core-bind!__1
      (lambda (_key6973_ _val6974_ _rebind?6975_)
        (let* ((_phi6977_ (gx#current-expander-phi))
               (_ctx6979_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key6973_
           _val6974_
           _rebind?6975_
           _phi6977_
           _ctx6979_))))
    (define gx#core-bind!__2
      (lambda (_key6981_ _val6982_ _rebind?6983_ _phi6984_)
        (let ((_ctx6986_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key6981_
           _val6982_
           _rebind?6983_
           _phi6984_
           _ctx6986_))))
    (define gx#core-bind!
      (lambda _g9353_
        (let ((_g9352_ (##length _g9353_)))
          (cond ((##fx= _g9352_ 2) (apply gx#core-bind!__0 _g9353_))
                ((##fx= _g9352_ 3) (apply gx#core-bind!__1 _g9353_))
                ((##fx= _g9352_ 4) (apply gx#core-bind!__2 _g9353_))
                ((##fx= _g9352_ 5) (apply gx#core-bind!__% _g9353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g9353_))))))
    (define gx#core-identifier-key
      (lambda (_stx6804_)
        (if (symbol? _stx6804_)
            (let* ((_g68056813_ (gx#current-expander-marks))
                   (_else68076821_ (lambda () _stx6804_))
                   (_K68096826_ (lambda (_hd6824_) (cons _stx6804_ _hd6824_))))
              (if (##pair? _g68056813_)
                  (let* ((_hd68106829_ (##car _g68056813_))
                         (_hd6832_ _hd68106829_))
                    (_K68096826_ _hd6832_))
                  (_else68076821_)))
            (if (gx#identifier? _stx6804_)
                (let* ((_id6834_ (gx#syntax-local-unwrap _stx6804_))
                       (_eid6836_ (gx#stx-e _id6834_))
                       (_marks6838_ (gx#stx-identifier-marks* _id6834_)))
                  (let* ((_marks68406848_ _marks6838_)
                         (_else68426856_ (lambda () _eid6836_))
                         (_K68446861_
                          (lambda (_hd6859_) (cons _eid6836_ _hd6859_))))
                    (if (##pair? _marks68406848_)
                        (let* ((_hd68456864_ (##car _marks68406848_))
                               (_hd6867_ _hd68456864_))
                          (_K68446861_ _hd6867_))
                        (_else68426856_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx6804_)))))
    (define gx#core-context-shift
      (lambda (_ctx6749_ _phi6750_)
        (letrec ((_make-phi6752_
                  (lambda (_super6802_)
                    (let ((__obj9324 (make-object gx#phi-context::t '5)))
                      (gx#phi-context:::init!__%
                       __obj9324
                       (gensym 'phi)
                       _super6802_)
                      __obj9324)))
                 (_make-phi/up6753_
                  (lambda (_ctx6797_ _super6798_)
                    (let ((_ctx+16800_ (_make-phi6752_ _super6798_)))
                      (##unchecked-structure-set!
                       _ctx6797_
                       _ctx+16800_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+16800_
                       _ctx6797_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+16800_)))
                 (_make-phi/down6754_
                  (lambda (_ctx6792_ _super6793_)
                    (let ((_ctx-16795_ (_make-phi6752_ _super6793_)))
                      (##unchecked-structure-set!
                       _ctx-16795_
                       _ctx6792_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx6792_
                       _ctx-16795_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-16795_)))
                 (_shift6755_
                  (lambda (_ctx6776_
                           _delta6777_
                           _make-delta-context6778_
                           _phi6779_
                           _K6780_)
                    (let ((_$e6782_
                           (##unchecked-structure-ref
                            _ctx6776_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e6782_
                          ((lambda (_super6785_)
                             (let* ((_super6787_
                                     (_K6780_ _super6785_ _delta6777_))
                                    (_ctx+d6789_
                                     (_make-delta-context6778_
                                      _ctx6776_
                                      _super6787_)))
                               (_K6780_ _ctx+d6789_
                                        (fx- _phi6779_ _delta6777_))))
                           _$e6782_)
                          (error '"Bad context" _ctx6776_))))))
          (let _K6757_ ((_ctx6759_ _ctx6749_) (_phi6760_ _phi6750_))
            (if (fxzero? _phi6760_)
                _ctx6759_
                (if (fx> (##vector-length _ctx6759_) '3)
                    (if (fxpositive? _phi6760_)
                        (let ((_$e6762_
                               (##unchecked-structure-ref
                                _ctx6759_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e6762_
                              ((lambda (_g67646766_)
                                 (_K6757_ _g67646766_ (fx- _phi6760_ '1)))
                               _$e6762_)
                              (_shift6755_
                               _ctx6759_
                               '1
                               _make-phi/up6753_
                               _phi6760_
                               _K6757_)))
                        (let ((_$e6769_
                               (##unchecked-structure-ref
                                _ctx6759_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e6769_
                              ((lambda (_g67716773_)
                                 (_K6757_ _g67716773_ (fx+ _phi6760_ '1)))
                               _$e6769_)
                              (_shift6755_
                               _ctx6759_
                               '-1
                               _make-phi/down6754_
                               _phi6760_
                               _K6757_))))
                    _ctx6759_))))))
    (define gx#core-context-get
      (lambda (_ctx6746_ _key6747_)
        (table-ref
         (##unchecked-structure-ref _ctx6746_ '2 gx#expander-context::t '#f)
         _key6747_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx6742_ _key6743_ _val6744_)
        (table-set!
         (##unchecked-structure-ref _ctx6742_ '2 gx#expander-context::t '#f)
         _key6743_
         _val6744_)))
    (define gx#core-context-resolve
      (lambda (_ctx6729_ _key6730_)
        (let _lp6732_ ((_ctx6734_ _ctx6729_))
          (let ((_$e6736_ (gx#core-context-get _ctx6734_ _key6730_)))
            (if _$e6736_
                (values _$e6736_)
                (let ((_$e6739_
                       (if (fx> (##vector-length _ctx6734_) '3)
                           (##unchecked-structure-ref
                            _ctx6734_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e6739_ (_lp6732_ _$e6739_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx6719_ _key6720_ _val6721_ _rebind6722_)
        (let ((_$e6724_ (gx#core-context-get _ctx6719_ _key6720_)))
          (if _$e6724_
              ((lambda (_xval6727_)
                 (gx#core-context-put!
                  _ctx6719_
                  _key6720_
                  (_rebind6722_ _xval6727_)))
               _$e6724_)
              (gx#core-context-put! _ctx6719_ _key6720_ _val6721_)))))
    (define gx#core-context-top__%
      (lambda (_ctx6697_ _stop?6698_)
        (let _lp6700_ ((_ctx6702_ _ctx6697_))
          (if (_stop?6698_ _ctx6702_)
              _ctx6702_
              (if (##structure-instance-of? _ctx6702_ 'gx#context-phi::t)
                  (_lp6700_
                   (##unchecked-structure-ref
                    _ctx6702_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx6708_ (gx#current-expander-context))
               (_stop?6710_ gx#top-context?))
          (gx#core-context-top__% _ctx6708_ _stop?6710_))))
    (define gx#core-context-top__1
      (lambda (_ctx6712_)
        (let ((_stop?6714_ gx#top-context?))
          (gx#core-context-top__% _ctx6712_ _stop?6714_))))
    (define gx#core-context-top
      (lambda _g9355_
        (let ((_g9354_ (##length _g9355_)))
          (cond ((##fx= _g9354_ 0) (apply gx#core-context-top__0 _g9355_))
                ((##fx= _g9354_ 1) (apply gx#core-context-top__1 _g9355_))
                ((##fx= _g9354_ 2) (apply gx#core-context-top__% _g9355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g9355_))))))
    (define gx#core-context-root__%
      (lambda (_ctx6682_)
        (let _lp6684_ ((_ctx6686_ _ctx6682_))
          (if (##structure-instance-of? _ctx6686_ 'gx#context-phi::t)
              (_lp6684_
               (##unchecked-structure-ref _ctx6686_ '3 gx#phi-context::t '#f))
              _ctx6686_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx6692_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx6692_))))
    (define gx#core-context-root
      (lambda _g9357_
        (let ((_g9356_ (##length _g9357_)))
          (cond ((##fx= _g9356_ 0) (apply gx#core-context-root__0 _g9357_))
                ((##fx= _g9356_ 1) (apply gx#core-context-root__% _g9357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g9357_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx6663_ . __66606664_)
        (let ((_$e6667_ (gx#current-expander-allow-rebind?)))
          (if _$e6667_
              _$e6667_
              (if (##structure-instance-of? _ctx6663_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx6663_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx6663_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx6674_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx6674_))))
    (define gx#core-context-rebind?
      (lambda _g9359_
        (let ((_g9358_ (##length _g9359_)))
          (cond ((##fx= _g9358_ 0) (apply gx#core-context-rebind?__0 _g9359_))
                ((##fx= _g9358_ 1) (apply gx#core-context-rebind?__% _g9359_))
                ((##fx>= _g9358_ 1) (apply gx#core-context-rebind?__% _g9359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g9359_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx6646_)
        (let ((_$e6648_ (gx#core-context-top__1 _ctx6646_)))
          (if _$e6648_
              ((lambda (_ctx6651_)
                 (if (##structure-instance-of? _ctx6651_ 'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx6651_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e6648_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx6657_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx6657_))))
    (define gx#core-context-namespace
      (lambda _g9361_
        (let ((_g9360_ (##length _g9361_)))
          (cond ((##fx= _g9360_ 0)
                 (apply gx#core-context-namespace__0 _g9361_))
                ((##fx= _g9360_ 1)
                 (apply gx#core-context-namespace__% _g9361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g9361_))))))
    (define gx#expander-binding?__%
      (lambda (_bind6632_ _is?6633_)
        (if (##structure-direct-instance-of? _bind6632_ 'gx#syntax-binding::t)
            (_is?6633_
             (##unchecked-structure-ref
              _bind6632_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind6638_)
        (let ((_is?6640_ gx#expander?))
          (gx#expander-binding?__% _bind6638_ _is?6640_))))
    (define gx#expander-binding?
      (lambda _g9363_
        (let ((_g9362_ (##length _g9363_)))
          (cond ((##fx= _g9362_ 1) (apply gx#expander-binding?__0 _g9363_))
                ((##fx= _g9362_ 2) (apply gx#expander-binding?__% _g9363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g9363_))))))
    (define gx#core-expander-binding?
      (lambda (_bind6629_)
        (gx#expander-binding?__% _bind6629_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind6627_)
        (gx#expander-binding?__% _bind6627_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind6621_)
        (letrec ((_direct-special-form?6623_
                  (lambda (_obj6625_)
                    (##structure-direct-instance-of?
                     _obj6625_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind6621_ _direct-special-form?6623_))))
    (define gx#special-form-binding?
      (lambda (_bind6619_)
        (gx#expander-binding?__% _bind6619_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind6610_)
        (letrec ((_feature?6612_
                  (lambda (_e6614_)
                    (let ((_$e6616_
                           (##structure-instance-of?
                            _e6614_
                            'gx#feature-expander::t)))
                      (if _$e6616_
                          _$e6616_
                          (##structure-instance-of?
                           _e6614_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind6610_ _feature?6612_))))
    (define gx#private-feature-binding?
      (lambda (_bind6608_)
        (gx#expander-binding?__% _bind6608_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id6595_ _bound?6596_)
        (if (gx#identifier? _id6595_)
            (_bound?6596_ (gx#resolve-identifier__0 _id6595_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id6601_)
        (let ((_bound?6603_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id6601_ _bound?6603_))))
    (define gx#core-bound-identifier?
      (lambda _g9365_
        (let ((_g9364_ (##length _g9365_)))
          (cond ((##fx= _g9364_ 1)
                 (apply gx#core-bound-identifier?__0 _g9365_))
                ((##fx= _g9364_ 2)
                 (apply gx#core-bound-identifier?__% _g9365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g9365_))))))
    (define gx#core-identifier=?
      (lambda (_x6585_ _y6586_)
        (letrec ((_y=?6588_
                  (lambda (_xid6592_)
                    ((if (list? _y6586_) memq eq?) _xid6592_ _y6586_))))
          (let ((_bind6590_ (gx#resolve-identifier__0 _x6585_)))
            (if (##structure-instance-of? _bind6590_ 'gx#binding::t)
                (_y=?6588_
                 (##unchecked-structure-ref _bind6590_ '1 gx#binding::t '#f))
                (_y=?6588_ (gx#stx-e _x6585_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e6583_)
        (if (interned-symbol? _e6583_)
            (string-index (symbol->string _e6583_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx6538_ _src6539_ _ctx6540_ _marks6541_)
        (if (##structure? _stx6538_)
            (let ((_$e6543_ (gx#sealed-syntax-unwrap _stx6538_)))
              (if _$e6543_
                  (values _$e6543_)
                  (if (gx#identifier? _stx6538_)
                      (let ((_id6546_
                             (gx#stx-unwrap__% _stx6538_ _marks6541_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id6546_ '1 AST::t '#f)
                         (let ((_$e6548_
                                (##unchecked-structure-ref
                                 _id6546_
                                 '2
                                 AST::t
                                 '#f)))
                           (if _$e6548_ _$e6548_ _src6539_))
                         _ctx6540_
                         (##unchecked-structure-ref
                          _id6546_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx6538_)
                       (let ((_$e6551_ (gx#stx-source _stx6538_)))
                         (if _$e6551_ _$e6551_ _src6539_))
                       _ctx6540_
                       (reverse _marks6541_)))))
            (##structure
             gx#syntax-quote::t
             _stx6538_
             _src6539_
             _ctx6540_
             (reverse _marks6541_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx6557_)
        (let* ((_src6559_ '#f)
               (_ctx6561_ (gx#current-expander-context))
               (_marks6563_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx6557_
           _src6559_
           _ctx6561_
           _marks6563_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx6565_ _src6566_)
        (let* ((_ctx6568_ (gx#current-expander-context))
               (_marks6570_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx6565_
           _src6566_
           _ctx6568_
           _marks6570_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx6572_ _src6573_ _ctx6574_)
        (let ((_marks6576_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx6572_
           _src6573_
           _ctx6574_
           _marks6576_))))
    (define gx#core-quote-syntax
      (lambda _g9367_
        (let ((_g9366_ (##length _g9367_)))
          (cond ((##fx= _g9366_ 1) (apply gx#core-quote-syntax__0 _g9367_))
                ((##fx= _g9366_ 2) (apply gx#core-quote-syntax__1 _g9367_))
                ((##fx= _g9366_ 3) (apply gx#core-quote-syntax__2 _g9367_))
                ((##fx= _g9366_ 4) (apply gx#core-quote-syntax__% _g9367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g9367_))))))
    (define gx#core-cons
      (lambda (_hd6534_ _tl6535_)
        (cons (gx#core-quote-syntax__0 _hd6534_) _tl6535_)))
    (define gx#core-list
      (lambda (_hd6531_ . _rest6532_)
        (cons (gx#core-quote-syntax__0 _hd6531_) _rest6532_)))
    (define gx#core-cons*
      (lambda (_hd6528_ . _rest6529_)
        (apply cons* (gx#core-quote-syntax__0 _hd6528_) _rest6529_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path6502_ _rel6503_)
        (let ((_path6515_ (gx#stx-e _stx-path6502_))
              (_reldir6516_
               (let _lp6505_ ((_relsrc6507_
                               (let ((_$e6512_ (gx#stx-source _stx-path6502_)))
                                 (if _$e6512_ _$e6512_ _rel6503_))))
                 (if (##structure-instance-of? _relsrc6507_ 'gerbil#AST::t)
                     (_lp6505_
                      (let ((_$e6509_ (gx#stx-source _relsrc6507_)))
                        (if _$e6509_ _$e6509_ (gx#stx-e _relsrc6507_))))
                     (if (source-location-path? _relsrc6507_)
                         (path-directory (source-location-path _relsrc6507_))
                         (if (string? _relsrc6507_)
                             (path-directory _relsrc6507_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path6515_ (path-normalize _reldir6516_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path6521_)
        (let ((_rel6523_ '#f))
          (gx#core-resolve-path__% _stx-path6521_ _rel6523_))))
    (define gx#core-resolve-path
      (lambda _g9369_
        (let ((_g9368_ (##length _g9369_)))
          (cond ((##fx= _g9368_ 1) (apply gx#core-resolve-path__0 _g9369_))
                ((##fx= _g9368_ 2) (apply gx#core-resolve-path__% _g9369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g9369_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr6458_ _ctx6459_)
        (let* ((_repr64606467_ _repr6458_)
               (_E64626471_
                (lambda () (error '"No clause matching" _repr64606467_)))
               (_K64636479_
                (lambda (_subs6474_ _phi6475_)
                  (let ((_subst6477_
                         (if (not (null? _subs6474_))
                             (list->table _subs6474_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst6477_
                     _ctx6459_
                     _phi6475_
                     '#f)))))
          (if (##pair? _repr64606467_)
              (let ((_hd64646482_ (##car _repr64606467_))
                    (_tl64656484_ (##cdr _repr64606467_)))
                (let* ((_phi6487_ _hd64646482_) (_subs6489_ _tl64656484_))
                  (_K64636479_ _subs6489_ _phi6487_)))
              (_E64626471_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr6494_)
        (let ((_ctx6496_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr6494_ _ctx6496_))))
    (define gx#core-deserialize-mark
      (lambda _g9371_
        (let ((_g9370_ (##length _g9371_)))
          (cond ((##fx= _g9370_ 1) (apply gx#core-deserialize-mark__0 _g9371_))
                ((##fx= _g9370_ 2) (apply gx#core-deserialize-mark__% _g9371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g9371_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx6455_)
        (gx#stx-rewrap _stx6455_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx6453_)
        (gx#stx-unwrap__% _stx6453_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx6423_)
        (let* ((_g64246432_ (gx#current-expander-marks))
               (_else64266440_ (lambda () _stx6423_))
               (_K64286445_
                (lambda (_hd6443_) (gx#stx-apply-mark _stx6423_ _hd6443_))))
          (if (##pair? _g64246432_)
              (let* ((_hd64296448_ (##car _g64246432_))
                     (_hd6451_ _hd64296448_))
                (_K64286445_ _hd6451_))
              (_else64266440_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx6408_ _E6409_)
        (let ((_bind6411_ (gx#resolve-identifier__0 _stx6408_)))
          (if (##structure-direct-instance-of?
               _bind6411_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind6411_
               '4
               gx#syntax-binding::t
               '#f)
              (_E6409_ _stx6408_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx6416_)
        (let ((_E6418_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx6416_ _E6418_))))
    (define gx#syntax-local-e
      (lambda _g9373_
        (let ((_g9372_ (##length _g9373_)))
          (cond ((##fx= _g9372_ 1) (apply gx#syntax-local-e__0 _g9373_))
                ((##fx= _g9372_ 2) (apply gx#syntax-local-e__% _g9373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g9373_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx6392_ _E6393_)
        (let ((_e6395_ (gx#syntax-local-e__% _stx6392_ _E6393_)))
          (if (##structure-instance-of? _e6395_ 'gx#expander::t)
              (##structure-ref _e6395_ '1 gx#expander::t '#f)
              _e6395_))))
    (define gx#syntax-local-value__0
      (lambda (_stx6400_)
        (let ((_E6402_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx6400_ _E6402_))))
    (define gx#syntax-local-value
      (lambda _g9375_
        (let ((_g9374_ (##length _g9375_)))
          (cond ((##fx= _g9374_ 1) (apply gx#syntax-local-value__0 _g9375_))
                ((##fx= _g9374_ 2) (apply gx#syntax-local-value__% _g9375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g9375_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx6389_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx6389_)))))
