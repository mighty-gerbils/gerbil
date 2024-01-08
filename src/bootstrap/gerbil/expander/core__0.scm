(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1704735491)
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
      (lambda _$args10106_
        (apply make-struct-instance gx#expander-context::t _$args10106_)))
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
      (lambda _$args10103_
        (apply make-struct-instance gx#root-context::t _$args10103_)))
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
      (lambda _$args10100_
        (apply make-struct-instance gx#phi-context::t _$args10100_)))
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
      (lambda _$args10097_
        (apply make-struct-instance gx#top-context::t _$args10097_)))
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
      (lambda _$args10094_
        (apply make-struct-instance gx#module-context::t _$args10094_)))
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
      (lambda _$args10091_
        (apply make-struct-instance gx#prelude-context::t _$args10091_)))
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
    (define gx#&prelude-context-path
      (make-struct-field-unchecked-accessor gx#prelude-context::t '0))
    (define gx#&prelude-context-import
      (make-struct-field-unchecked-accessor gx#prelude-context::t '1))
    (define gx#&prelude-context-e
      (make-struct-field-unchecked-accessor gx#prelude-context::t '2))
    (define gx#&prelude-context-path-set!
      (make-struct-field-unchecked-mutator gx#prelude-context::t '0))
    (define gx#&prelude-context-import-set!
      (make-struct-field-unchecked-mutator gx#prelude-context::t '1))
    (define gx#&prelude-context-e-set!
      (make-struct-field-unchecked-mutator gx#prelude-context::t '2))
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
      (lambda _$args10088_
        (apply make-struct-instance gx#local-context::t _$args10088_)))
    (define gx#phi-context:::init!__%
      (lambda (_self10072_ _id10073_ _super10074_)
        (if (##fx< '3 (##vector-length _self10072_))
            (begin
              (##vector-set! _self10072_ '1 _id10073_)
              (##vector-set! _self10072_ '2 (make-table 'test: eq?))
              (##vector-set! _self10072_ '3 _super10074_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self10072_
                   '3
                   (##vector-length _self10072_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self10079_ _id10080_)
        (let ((_super10082_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self10079_ _id10080_ _super10082_))))
    (define gx#phi-context:::init!
      (lambda _g10119_
        (let ((_g10118_ (##length _g10119_)))
          (cond ((##fx= _g10118_ 2)
                 (apply (lambda (_self10079_ _id10080_)
                          (gx#phi-context:::init!__0 _self10079_ _id10080_))
                        _g10119_))
                ((##fx= _g10118_ 3)
                 (apply (lambda (_self10084_ _id10085_ _super10086_)
                          (gx#phi-context:::init!__%
                           _self10084_
                           _id10085_
                           _super10086_))
                        _g10119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g10119_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self9936_ _super9937_)
        (if (##fx< '3 (##vector-length _self9936_))
            (begin
              (##vector-set! _self9936_ '1 (gensym 'L))
              (##vector-set! _self9936_ '2 (make-table 'test: eq?))
              (##vector-set! _self9936_ '3 _super9937_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self9936_
                   '3
                   (##vector-length _self9936_)))))
    (define gx#local-context:::init!__0
      (lambda (_self9942_)
        (let ((_super9944_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self9942_ _super9944_))))
    (define gx#local-context:::init!
      (lambda _g10121_
        (let ((_g10120_ (##length _g10121_)))
          (cond ((##fx= _g10120_ 1)
                 (apply (lambda (_self9942_)
                          (gx#local-context:::init!__0 _self9942_))
                        _g10121_))
                ((##fx= _g10120_ 2)
                 (apply (lambda (_self9946_ _super9947_)
                          (gx#local-context:::init!__% _self9946_ _super9947_))
                        _g10121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g10121_))))))
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
      (lambda _$args9810_
        (apply make-struct-instance gx#binding::t _$args9810_)))
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
      (lambda _$args9807_
        (apply make-struct-instance gx#runtime-binding::t _$args9807_)))
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
      (lambda _$args9804_
        (apply make-struct-instance gx#local-binding::t _$args9804_)))
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
      (lambda _$args9801_
        (apply make-struct-instance gx#top-binding::t _$args9801_)))
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
      (lambda _$args9798_
        (apply make-struct-instance gx#module-binding::t _$args9798_)))
    (define gx#module-binding-context
      (make-struct-field-accessor gx#module-binding::t '0))
    (define gx#module-binding-context-set!
      (make-struct-field-mutator gx#module-binding::t '0))
    (define gx#&module-binding-context
      (make-struct-field-unchecked-accessor gx#module-binding::t '0))
    (define gx#&module-binding-context-set!
      (make-struct-field-unchecked-mutator gx#module-binding::t '0))
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
      (lambda _$args9795_
        (apply make-struct-instance gx#extern-binding::t _$args9795_)))
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
      (lambda _$args9792_
        (apply make-struct-instance gx#syntax-binding::t _$args9792_)))
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
      (lambda _$args9789_
        (apply make-struct-instance gx#import-binding::t _$args9789_)))
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
      (lambda _$args9786_
        (apply make-struct-instance gx#alias-binding::t _$args9786_)))
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
      (lambda _$args9783_
        (apply make-struct-instance gx#expander::t _$args9783_)))
    (define gx#expander-e (make-struct-field-accessor gx#expander::t '0))
    (define gx#expander-e-set! (make-struct-field-mutator gx#expander::t '0))
    (define gx#&expander-e
      (make-struct-field-unchecked-accessor gx#expander::t '0))
    (define gx#&expander-e-set!
      (make-struct-field-unchecked-mutator gx#expander::t '0))
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
      (lambda _$args9780_
        (apply make-struct-instance gx#core-expander::t _$args9780_)))
    (define gx#core-expander-id
      (make-struct-field-accessor gx#core-expander::t '0))
    (define gx#core-expander-compile-top
      (make-struct-field-accessor gx#core-expander::t '1))
    (define gx#core-expander-id-set!
      (make-struct-field-mutator gx#core-expander::t '0))
    (define gx#core-expander-compile-top-set!
      (make-struct-field-mutator gx#core-expander::t '1))
    (define gx#&core-expander-id
      (make-struct-field-unchecked-accessor gx#core-expander::t '0))
    (define gx#&core-expander-compile-top
      (make-struct-field-unchecked-accessor gx#core-expander::t '1))
    (define gx#&core-expander-id-set!
      (make-struct-field-unchecked-mutator gx#core-expander::t '0))
    (define gx#&core-expander-compile-top-set!
      (make-struct-field-unchecked-mutator gx#core-expander::t '1))
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
      (lambda _$args9777_
        (apply make-struct-instance gx#expression-form::t _$args9777_)))
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
      (lambda _$args9774_
        (apply make-struct-instance gx#special-form::t _$args9774_)))
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
      (lambda _$args9771_
        (apply make-struct-instance gx#definition-form::t _$args9771_)))
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
      (lambda _$args9768_
        (apply make-struct-instance gx#top-special-form::t _$args9768_)))
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
      (lambda _$args9765_
        (apply make-struct-instance gx#module-special-form::t _$args9765_)))
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
      (lambda _$args9762_
        (apply make-struct-instance gx#feature-expander::t _$args9762_)))
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
      (lambda _$args9759_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args9759_)))
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
      (lambda _$args9756_
        (apply make-struct-instance gx#reserved-expander::t _$args9756_)))
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
      (lambda _$args9753_
        (apply make-struct-instance gx#macro-expander::t _$args9753_)))
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
      (lambda _$args9750_
        (apply make-struct-instance gx#rename-macro-expander::t _$args9750_)))
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
      (lambda _$args9747_
        (apply make-struct-instance gx#user-expander::t _$args9747_)))
    (define gx#user-expander-context
      (make-struct-field-accessor gx#user-expander::t '0))
    (define gx#user-expander-phi
      (make-struct-field-accessor gx#user-expander::t '1))
    (define gx#user-expander-context-set!
      (make-struct-field-mutator gx#user-expander::t '0))
    (define gx#user-expander-phi-set!
      (make-struct-field-mutator gx#user-expander::t '1))
    (define gx#&user-expander-context
      (make-struct-field-unchecked-accessor gx#user-expander::t '0))
    (define gx#&user-expander-phi
      (make-struct-field-unchecked-accessor gx#user-expander::t '1))
    (define gx#&user-expander-context-set!
      (make-struct-field-unchecked-mutator gx#user-expander::t '0))
    (define gx#&user-expander-phi-set!
      (make-struct-field-unchecked-mutator gx#user-expander::t '1))
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
      (lambda _$args9744_
        (apply make-struct-instance gx#expander-mark::t _$args9744_)))
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
      (lambda (_where9739_ _message9740_ _stx9741_ . _details9742_)
        (raise (make-syntax-error
                _message9740_
                (cons _stx9741_ _details9742_)
                _where9739_
                (gx#current-expander-context)
                (gx#current-expander-marks)
                (gx#current-expander-phi)))))
    (define gx#eval-syntax__%
      (lambda (_stx9726_ _expression?9727_)
        (gx#eval-syntax* (gx#core-expand__% _stx9726_ _expression?9727_))))
    (define gx#eval-syntax__0
      (lambda (_stx9732_)
        (let ((_expression?9734_ '#f))
          (gx#eval-syntax__% _stx9732_ _expression?9734_))))
    (define gx#eval-syntax
      (lambda _g10123_
        (let ((_g10122_ (##length _g10123_)))
          (cond ((##fx= _g10122_ 1)
                 (apply (lambda (_stx9732_) (gx#eval-syntax__0 _stx9732_))
                        _g10123_))
                ((##fx= _g10122_ 2)
                 (apply (lambda (_stx9736_ _expression?9737_)
                          (gx#eval-syntax__% _stx9736_ _expression?9737_))
                        _g10123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g10123_))))))
    (define gx#eval-syntax*
      (lambda (_stx9723_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx9723_))))
    (define gx#core-expand__%
      (lambda (_stx9710_ _expression?9711_)
        (if _expression?9711_
            (gx#core-expand-expression _stx9710_)
            (gx#core-expand-top _stx9710_))))
    (define gx#core-expand__0
      (lambda (_stx9716_)
        (let ((_expression?9718_ '#f))
          (gx#core-expand__% _stx9716_ _expression?9718_))))
    (define gx#core-expand
      (lambda _g10125_
        (let ((_g10124_ (##length _g10125_)))
          (cond ((##fx= _g10124_ 1)
                 (apply (lambda (_stx9716_) (gx#core-expand__0 _stx9716_))
                        _g10125_))
                ((##fx= _g10124_ 2)
                 (apply (lambda (_stx9720_ _expression?9721_)
                          (gx#core-expand__% _stx9720_ _expression?9721_))
                        _g10125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g10125_))))))
    (define gx#core-expand-top
      (lambda (_stx9677_)
        (let* ((_stx9679_ (gx#core-expand*__0 _stx9677_))
               (_e96809687_ _stx9679_)
               (_E96829691_ (lambda () (gx#core-expand-expression _stx9679_)))
               (_E96819705_
                (lambda ()
                  (if (gx#stx-pair? _e96809687_)
                      (let ((_e96839695_ (gx#syntax-e _e96809687_)))
                        (let ((_hd96849698_ (##car _e96839695_))
                              (_tl96859700_ (##cdr _e96839695_)))
                          (let ((_form9703_ _hd96849698_))
                            (if (gx#core-bound-identifier?__0 _form9703_)
                                _stx9679_
                                (_E96829691_)))))
                      (_E96829691_)))))
          (_E96819705_))))
    (define gx#core-expand-expression
      (lambda (_stx9624_)
        (letrec ((_sealed-expression?9626_
                  (lambda (_hd9647_)
                    (if (gx#sealed-syntax? _hd9647_)
                        (let* ((_e96489655_ _hd9647_)
                               (_E96509659_ (lambda () '#f))
                               (_E96499673_
                                (lambda ()
                                  (if (gx#stx-pair? _e96489655_)
                                      (let ((_e96519663_
                                             (gx#syntax-e _e96489655_)))
                                        (let ((_hd96529666_
                                               (##car _e96519663_))
                                              (_tl96539668_
                                               (##cdr _e96519663_)))
                                          (let ((_form9671_ _hd96529666_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form9671_
                                                 gx#expression-form-binding?)
                                                (_E96509659_)))))
                                      (_E96509659_)))))
                          (_E96499673_))
                        '#f)))
                 (_illegal-expression9627_
                  (lambda (_hd9645_ . _g10126_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx9624_
                     _hd9645_)))
                 (_expand-e9628_
                  (lambda (_form9640_ _hd9641_)
                    (let ((_bind9643_
                           (if (##structure-instance-of?
                                _form9640_
                                'gx#binding::t)
                               _form9640_
                               (gx#resolve-identifier__0 _form9640_))))
                      (if (gx#core-expander-binding? _bind9643_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind9643_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd9641_
                            (gx#stx-source _stx9624_)))
                          (if (##structure-direct-instance-of?
                               _bind9643_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind9643_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd9641_
                                 (gx#stx-source _stx9624_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx9624_
                               _form9640_)))))))
          (let ((_hd9630_ (gx#core-expand-head _stx9624_)))
            (if (_sealed-expression?9626_ _hd9630_)
                _hd9630_
                (if (gx#stx-pair? _hd9630_)
                    (let* ((_form9632_ (gx#stx-car _hd9630_))
                           (_bind9634_
                            (if (gx#identifier? _form9632_)
                                (gx#resolve-identifier__0 _form9632_)
                                '#f)))
                      (if (or (not _bind9634_)
                              (not (gx#core-expander-binding? _bind9634_)))
                          (_expand-e9628_ '%%app (cons '%%app _hd9630_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind9634_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd9630_
                               _illegal-expression9627_)
                              (if (gx#expression-form-binding? _bind9634_)
                                  (_expand-e9628_ _bind9634_ _hd9630_)
                                  (if (gx#direct-special-form-binding?
                                       _bind9634_)
                                      (gx#core-expand-expression
                                       (_expand-e9628_ _bind9634_ _hd9630_))
                                      (_illegal-expression9627_ _hd9630_))))))
                    (if (gx#core-bound-identifier?__0 _hd9630_)
                        (_illegal-expression9627_ _hd9630_)
                        (if (gx#identifier? _hd9630_)
                            (_expand-e9628_
                             '%%ref
                             (cons '%%ref (cons _hd9630_ '())))
                            (if (gx#stx-datum? _hd9630_)
                                (_expand-e9628_
                                 '%#quote
                                 (cons '%#quote (cons _hd9630_ '())))
                                (_illegal-expression9627_ _hd9630_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx9619_)
        (call-with-parameters
         (lambda ()
           (let ((_stx9622_ (gx#core-expand-expression _stx9619_)))
             (values _stx9622_ (gx#eval-syntax* _stx9622_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx9600_ _stop?9601_)
        (let _lp9603_ ((_stx9605_ _stx9600_))
          (if (_stop?9601_ _stx9605_)
              _stx9605_
              (let ((_rstx9607_ (gx#core-expand1 _stx9605_)))
                (if (eq? _stx9605_ _rstx9607_)
                    _stx9605_
                    (_lp9603_ _rstx9607_)))))))
    (define gx#core-expand*__0
      (lambda (_stx9612_)
        (let ((_stop?9614_ false))
          (gx#core-expand*__% _stx9612_ _stop?9614_))))
    (define gx#core-expand*
      (lambda _g10128_
        (let ((_g10127_ (##length _g10128_)))
          (cond ((##fx= _g10127_ 1)
                 (apply (lambda (_stx9612_) (gx#core-expand*__0 _stx9612_))
                        _g10128_))
                ((##fx= _g10127_ 2)
                 (apply (lambda (_stx9616_ _stop?9617_)
                          (gx#core-expand*__% _stx9616_ _stop?9617_))
                        _g10128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g10128_))))))
    (define gx#core-expand1
      (lambda (_stx9556_)
        (letrec ((_step9558_
                  (lambda (_hd9595_)
                    (let ((_bind9597_ (gx#resolve-identifier__0 _hd9595_)))
                      (if (##structure-instance-of?
                           _bind9597_
                           'gx#runtime-binding::t)
                          _stx9556_
                          (if (##structure-direct-instance-of?
                               _bind9597_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind9597_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx9556_)
                              (if (not _bind9597_)
                                  _stx9556_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx9556_))))))))
          (let* ((_e95599567_ _stx9556_)
                 (_E95659571_ (lambda () _stx9556_))
                 (_E95619577_
                  (lambda ()
                    (let ((_hd9575_ _e95599567_))
                      (if (gx#identifier? _hd9575_)
                          (_step9558_ _hd9575_)
                          (_E95659571_)))))
                 (_E95609591_
                  (lambda ()
                    (if (gx#stx-pair? _e95599567_)
                        (let ((_e95629581_ (gx#syntax-e _e95599567_)))
                          (let ((_hd95639584_ (##car _e95629581_))
                                (_tl95649586_ (##cdr _e95629581_)))
                            (let ((_hd9589_ _hd95639584_))
                              (if (gx#identifier? _hd9589_)
                                  (_step9558_ _hd9589_)
                                  (_E95619577_)))))
                        (_E95619577_)))))
            (_E95609591_)))))
    (define gx#core-expand-head
      (lambda (_stx9522_)
        (letrec ((_stop?9524_
                  (lambda (_stx9526_)
                    (let* ((_e95279534_ _stx9526_)
                           (_E95299538_ (lambda () '#f))
                           (_E95289552_
                            (lambda ()
                              (if (gx#stx-pair? _e95279534_)
                                  (let ((_e95309542_
                                         (gx#syntax-e _e95279534_)))
                                    (let ((_hd95319545_ (##car _e95309542_))
                                          (_tl95329547_ (##cdr _e95309542_)))
                                      (let ((_hd9550_ _hd95319545_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd9550_)
                                            (_E95299538_)))))
                                  (_E95299538_)))))
                      (_E95289552_)))))
          (gx#core-expand*__% _stx9522_ _stop?9524_))))
    (define gx#core-expand-block__%
      (lambda (_stx9328_ _expand-special9329_ _begin-form9330_ _expand-e9331_)
        (letrec ((_expand-splice9333_
                  (lambda (_hd9496_ _body9497_ _rest9498_ _r9499_)
                    (if (gx#stx-list? _body9497_)
                        (_K9337_ (gx#stx-foldr cons _rest9498_ _body9497_)
                                 _r9499_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx9328_
                         _hd9496_))))
                 (_expand-cond-expand9334_
                  (lambda (_hd9492_ _rest9493_ _r9494_)
                    (_K9337_ (cons (gx#core-expand-cond-expand% _hd9492_)
                                   _rest9493_)
                             _r9494_)))
                 (_expand-include9335_
                  (lambda (_hd9441_ _rest9442_ _r9443_)
                    (let* ((_e94449454_ _hd9441_)
                           (_E94469458_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e94449454_)))
                           (_E94459488_
                            (lambda ()
                              (if (gx#stx-pair? _e94449454_)
                                  (let ((_e94479462_
                                         (gx#syntax-e _e94449454_)))
                                    (let ((_hd94489465_ (##car _e94479462_))
                                          (_tl94499467_ (##cdr _e94479462_)))
                                      (if (gx#stx-pair? _tl94499467_)
                                          (let ((_e94509470_
                                                 (gx#syntax-e _tl94499467_)))
                                            (let ((_hd94519473_
                                                   (##car _e94509470_))
                                                  (_tl94529475_
                                                   (##cdr _e94509470_)))
                                              (let ((_path9478_ _hd94519473_))
                                                (if (gx#stx-null? _tl94529475_)
                                                    (if (gx#stx-string?
                                                         _path9478_)
                                                        (let* ((_rpath9480_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path9478_
                         (gx#stx-source _hd9441_)))
                       (_block9482_
                        (gx#core-expand-include%__% _hd9441_ _rpath9480_))
                       (_rbody9485_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block9482_
                            _expand-special9329_
                            '#f
                            _expand-e9331_))
                         gx#current-expander-path
                         (cons _rpath9480_ (gx#current-expander-path)))))
                  (_K9337_ _rest9442_ (foldr1 cons _r9443_ _rbody9485_)))
                (_E94469458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E94469458_)))))
                                          (_E94469458_))))
                                  (_E94469458_)))))
                      (_E94459488_))))
                 (_expand-expression9336_
                  (lambda (_hd9437_ _rest9438_ _r9439_)
                    (_K9337_ _rest9438_
                             (cons (_expand-e9331_ _hd9437_) _r9439_))))
                 (_K9337_ (lambda (_rest9367_ _r9368_)
                            (let* ((_e93699376_ _rest9367_)
                                   (_E93719380_
                                    (lambda ()
                                      (if _begin-form9330_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form9330_
                                            (reverse _r9368_))
                                           (gx#stx-source _stx9328_))
                                          _r9368_)))
                                   (_E93709433_
                                    (lambda ()
                                      (if (gx#stx-pair? _e93699376_)
                                          (let ((_e93729384_
                                                 (gx#syntax-e _e93699376_)))
                                            (let ((_hd93739387_
                                                   (##car _e93729384_))
                                                  (_tl93749389_
                                                   (##cdr _e93729384_)))
                                              (let* ((_hd9392_ _hd93739387_)
                                                     (_rest9394_ _tl93749389_))
                                                (if '#t
                                                    (let* ((_hd9396_
                                                            (gx#core-expand-head
                                                             _hd9392_))
                                                           (_e93979404_
                                                            _hd9396_)
                                                           (_E93999408_
                                                            (lambda ()
                                                              (_expand-expression9336_
                                                               _hd9396_
                                                               _rest9394_
                                                               _r9368_)))
                                                           (_E93989429_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e93979404_)
                          (let ((_e94009412_ (gx#syntax-e _e93979404_)))
                            (let ((_hd94019415_ (##car _e94009412_))
                                  (_tl94029417_ (##cdr _e94009412_)))
                              (let* ((_form9420_ _hd94019415_)
                                     (_body9422_ _tl94029417_))
                                (if '#t
                                    (let ((_bind9424_
                                           (if (gx#identifier? _form9420_)
                                               (gx#resolve-identifier__0
                                                _form9420_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind9424_)
                                          (let ((_$e9426_
                                                 (##unchecked-structure-ref
                                                  _bind9424_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e9426_)
                                                (_expand-splice9333_
                                                 _hd9396_
                                                 _body9422_
                                                 _rest9394_
                                                 _r9368_)
                                                (if (eq? '%#cond-expand
                                                         _$e9426_)
                                                    (_expand-cond-expand9334_
                                                     _hd9396_
                                                     _rest9394_
                                                     _r9368_)
                                                    (if (eq? '%#include
                                                             _$e9426_)
                                                        (_expand-include9335_
                                                         _hd9396_
                                                         _rest9394_
                                                         _r9368_)
                                                        (_expand-special9329_
                                                         _hd9396_
                                                         _K9337_
                                                         _rest9394_
                                                         _r9368_)))))
                                          (_expand-expression9336_
                                           _hd9396_
                                           _rest9394_
                                           _r9368_)))
                                    (_E93999408_)))))
                          (_E93999408_)))))
              (_E93989429_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E93719380_)))))
                                          (_E93719380_)))))
                              (_E93709433_)))))
          (let* ((_e93389345_ _stx9328_)
                 (_E93409349_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e93389345_)))
                 (_E93399363_
                  (lambda ()
                    (if (gx#stx-pair? _e93389345_)
                        (let ((_e93419353_ (gx#syntax-e _e93389345_)))
                          (let ((_hd93429356_ (##car _e93419353_))
                                (_tl93439358_ (##cdr _e93419353_)))
                            (let ((_body9361_ _tl93439358_))
                              (if (gx#stx-list? _body9361_)
                                  (_K9337_ _body9361_ '())
                                  (_E93409349_)))))
                        (_E93409349_)))))
            (_E93399363_)))))
    (define gx#core-expand-block__0
      (lambda (_stx9504_ _expand-special9505_)
        (let* ((_begin-form9507_ '%#begin)
               (_expand-e9509_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx9504_
           _expand-special9505_
           _begin-form9507_
           _expand-e9509_))))
    (define gx#core-expand-block__1
      (lambda (_stx9511_ _expand-special9512_ _begin-form9513_)
        (let ((_expand-e9515_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx9511_
           _expand-special9512_
           _begin-form9513_
           _expand-e9515_))))
    (define gx#core-expand-block
      (lambda _g10130_
        (let ((_g10129_ (##length _g10130_)))
          (cond ((##fx= _g10129_ 2)
                 (apply (lambda (_stx9504_ _expand-special9505_)
                          (gx#core-expand-block__0
                           _stx9504_
                           _expand-special9505_))
                        _g10130_))
                ((##fx= _g10129_ 3)
                 (apply (lambda (_stx9511_
                                 _expand-special9512_
                                 _begin-form9513_)
                          (gx#core-expand-block__1
                           _stx9511_
                           _expand-special9512_
                           _begin-form9513_))
                        _g10130_))
                ((##fx= _g10129_ 4)
                 (apply (lambda (_stx9517_
                                 _expand-special9518_
                                 _begin-form9519_
                                 _expand-e9520_)
                          (gx#core-expand-block__%
                           _stx9517_
                           _expand-special9518_
                           _begin-form9519_
                           _expand-e9520_))
                        _g10130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g10130_))))))
    (define gx#core-expand-block*
      (lambda (_stx9276_ _expand-special9277_)
        (let* ((_g92789289_
                (gx#core-expand-block__1 _stx9276_ _expand-special9277_ '#f))
               (_E92829293_
                (lambda () (error '"No clause matching" _g92789289_))))
          (let ((_K92879324_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx9276_)))
                (_K92849310_ (lambda (_expr9308_) _expr9308_))
                (_K92839299_
                 (lambda (_body9297_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body9297_))
                    (gx#stx-source _stx9276_)))))
            (let ((_try-match92809320_
                   (lambda ()
                     (if (##pair? _g92789289_)
                         (let ((_tl92869315_ (##cdr _g92789289_))
                               (_hd92859313_ (##car _g92789289_)))
                           (if (##null? _tl92869315_)
                               (let ((_expr9318_ _hd92859313_))
                                 (_K92849310_ _expr9318_))
                               (let ((_body9302_ _g92789289_))
                                 (_K92839299_ _body9302_))))
                         (let ((_body9302_ _g92789289_))
                           (_K92839299_ _body9302_))))))
              (if (##null? _g92789289_)
                  (_K92879324_)
                  (_try-match92809320_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx9104_)
        (letrec ((_satisfied?9106_
                  (lambda (_condition9204_)
                    (let* ((_e92059220_ _condition9204_)
                           (_E92159224_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e92059220_)))
                           (_E92089243_
                            (lambda ()
                              (if (gx#stx-pair? _e92059220_)
                                  (let ((_e92169228_
                                         (gx#syntax-e _e92059220_)))
                                    (let ((_hd92179231_ (##car _e92169228_))
                                          (_tl92189233_ (##cdr _e92169228_)))
                                      (let* ((_combinator9236_ _hd92179231_)
                                             (_body9238_ _tl92189233_))
                                        (if (gx#stx-list? _body9238_)
                                            (let ((_$e9240_
                                                   (gx#stx-e
                                                    _combinator9236_)))
                                              (if (eq? 'not _$e9240_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?9106_
                                                        _body9238_))
                                                  (if (eq? 'and _$e9240_)
                                                      (gx#stx-andmap
                                                       _satisfied?9106_
                                                       _body9238_)
                                                      (if (eq? 'or _$e9240_)
                                                          (gx#stx-ormap
                                                           _satisfied?9106_
                                                           _body9238_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e9240_)
                      (gx#stx-andmap gx#core-resolve-identifier _body9238_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx9104_
                       _combinator9236_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E92159224_)))))
                                  (_E92159224_))))
                           (_E92079266_
                            (lambda ()
                              (if (gx#stx-pair? _e92059220_)
                                  (let ((_e92099247_
                                         (gx#syntax-e _e92059220_)))
                                    (let ((_hd92109250_ (##car _e92099247_))
                                          (_tl92119252_ (##cdr _e92099247_)))
                                      (if (and (gx#identifier? _hd92109250_)
                                               (gx#core-identifier=?
                                                _hd92109250_
                                                'unquote))
                                          (if (gx#stx-pair? _tl92119252_)
                                              (let ((_e92129255_
                                                     (gx#syntax-e
                                                      _tl92119252_)))
                                                (let ((_hd92139258_
                                                       (##car _e92129255_))
                                                      (_tl92149260_
                                                       (##cdr _e92129255_)))
                                                  (let ((_expr9263_
                                                         _hd92139258_))
                                                    (if (gx#stx-null?
                                                         _tl92149260_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr9263_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E92089243_))
                (_E92089243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E92089243_))
                                          (_E92089243_))))
                                  (_E92089243_))))
                           (_E92069272_
                            (lambda ()
                              (let ((_id9270_ _e92059220_))
                                (if (gx#identifier? _id9270_)
                                    (gx#core-bound-identifier?__%
                                     _id9270_
                                     gx#feature-binding?)
                                    (_E92079266_))))))
                      (_E92069272_))))
                 (_loop9107_
                  (lambda (_rest9137_)
                    (let* ((_e91389146_ _rest9137_)
                           (_E91449150_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e91389146_)))
                           (_E91409154_
                            (lambda ()
                              (if (gx#stx-null? _e91389146_)
                                  (if '#t '() (_E91449150_))
                                  (_E91449150_))))
                           (_E91399200_
                            (lambda ()
                              (if (gx#stx-pair? _e91389146_)
                                  (let ((_e91419158_
                                         (gx#syntax-e _e91389146_)))
                                    (let ((_hd91429161_ (##car _e91419158_))
                                          (_tl91439163_ (##cdr _e91419158_)))
                                      (let* ((_hd9166_ _hd91429161_)
                                             (_rest9168_ _tl91439163_))
                                        (if '#t
                                            (let* ((_e91699176_ _hd9166_)
                                                   (_E91719180_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e91699176_)))
                                                   (_E91709196_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e91699176_)
                                                          (let ((_e91729184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e91699176_)))
                    (let ((_hd91739187_ (##car _e91729184_))
                          (_tl91749189_ (##cdr _e91729184_)))
                      (let* ((_condition9192_ _hd91739187_)
                             (_body9194_ _tl91749189_))
                        (if '#t
                            (if (gx#stx-eq? _condition9192_ 'else)
                                (if (gx#stx-null? _rest9168_)
                                    _body9194_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx9104_
                                     _hd9166_))
                                (if (_satisfied?9106_ _condition9192_)
                                    _body9194_
                                    (_loop9107_ _rest9168_)))
                            (_E91719180_)))))
                  (_E91719180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E91709196_))
                                            (_E91409154_)))))
                                  (_E91409154_)))))
                      (_E91399200_)))))
          (let* ((_e91089115_ _stx9104_)
                 (_E91109119_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e91089115_)))
                 (_E91099133_
                  (lambda ()
                    (if (gx#stx-pair? _e91089115_)
                        (let ((_e91119123_ (gx#syntax-e _e91089115_)))
                          (let ((_hd91129126_ (##car _e91119123_))
                                (_tl91139128_ (##cdr _e91119123_)))
                            (let ((_clauses9131_ _tl91139128_))
                              (if (gx#stx-list? _clauses9131_)
                                  (gx#core-cons
                                   'begin
                                   (_loop9107_ _clauses9131_))
                                  (_E91109119_)))))
                        (_E91109119_)))))
            (_E91099133_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx9047_ _rpath9048_)
        (let* ((_e90499059_ _stx9047_)
               (_E90519063_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e90499059_)))
               (_E90509090_
                (lambda ()
                  (if (gx#stx-pair? _e90499059_)
                      (let ((_e90529067_ (gx#syntax-e _e90499059_)))
                        (let ((_hd90539070_ (##car _e90529067_))
                              (_tl90549072_ (##cdr _e90529067_)))
                          (if (gx#stx-pair? _tl90549072_)
                              (let ((_e90559075_ (gx#syntax-e _tl90549072_)))
                                (let ((_hd90569078_ (##car _e90559075_))
                                      (_tl90579080_ (##cdr _e90559075_)))
                                  (let ((_path9083_ _hd90569078_))
                                    (if (gx#stx-null? _tl90579080_)
                                        (if (gx#stx-string? _path9083_)
                                            (let ((_rpath9088_
                                                   (let ((_$e9085_
                                                          _rpath9048_))
                                                     (if _$e9085_
                                                         _$e9085_
                                                         (gx#core-resolve-path__%
                                                          _path9083_
                                                          (gx#stx-source
                                                           _stx9047_))))))
                                              (if (member _rpath9088_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx9047_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath9088_))
                                                    (gx#stx-source
                                                     _stx9047_)))))
                                            (_E90519063_))
                                        (_E90519063_)))))
                              (_E90519063_))))
                      (_E90519063_)))))
          (_E90509090_))))
    (define gx#core-expand-include%__0
      (lambda (_stx9097_)
        (let ((_rpath9099_ '#f))
          (gx#core-expand-include%__% _stx9097_ _rpath9099_))))
    (define gx#core-expand-include%
      (lambda _g10132_
        (let ((_g10131_ (##length _g10132_)))
          (cond ((##fx= _g10131_ 1)
                 (apply (lambda (_stx9097_)
                          (gx#core-expand-include%__0 _stx9097_))
                        _g10132_))
                ((##fx= _g10131_ 2)
                 (apply (lambda (_stx9101_ _rpath9102_)
                          (gx#core-expand-include%__% _stx9101_ _rpath9102_))
                        _g10132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g10132_))))))
    (define gx#core-apply-expander__%
      (lambda (_K9016_ _stx9017_ _method9018_)
        (if (procedure? _K9016_)
            (let ((_$e9020_ (gx#stx-source _stx9017_)))
              (if _$e9020_
                  ((lambda (_g90229024_)
                     (gx#stx-wrap-source (_K9016_ _stx9017_) _g90229024_))
                   _$e9020_)
                  (_K9016_ _stx9017_)))
            (let ((_$e9027_ (bound-method-ref _K9016_ _method9018_)))
              (if _$e9027_
                  ((lambda (_g90299031_)
                     (gx#core-apply-expander__%
                      _g90299031_
                      _stx9017_
                      _method9018_))
                   _$e9027_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx9017_
                   _method9018_))))))
    (define gx#core-apply-expander__0
      (lambda (_K9037_ _stx9038_)
        (let ((_method9040_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K9037_ _stx9038_ _method9040_))))
    (define gx#core-apply-expander
      (lambda _g10134_
        (let ((_g10133_ (##length _g10134_)))
          (cond ((##fx= _g10133_ 2)
                 (apply (lambda (_K9037_ _stx9038_)
                          (gx#core-apply-expander__0 _K9037_ _stx9038_))
                        _g10134_))
                ((##fx= _g10133_ 3)
                 (apply (lambda (_K9042_ _stx9043_ _method9044_)
                          (gx#core-apply-expander__%
                           _K9042_
                           _stx9043_
                           _method9044_))
                        _g10134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g10134_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self9012_ _stx9013_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx9013_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self8865_ _stx8866_)
        (let* ((_self88678873_ _self8865_)
               (_E88698877_
                (lambda () (error '"No clause matching" _self88678873_)))
               (_K88708882_
                (lambda (_K8880_)
                  (gx#core-apply-expander__0 _K8880_ _stx8866_))))
          (if (##structure-instance-of? _self88678873_ 'gx#core-macro::t)
              (let* ((_e88718885_ (##vector-ref _self88678873_ '1))
                     (_K8888_ _e88718885_))
                (_K88708882_ _K8888_))
              (_E88698877_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self8718_ _stx8719_)
        (if (gx#sealed-syntax? _stx8719_)
            _stx8719_
            (let* ((_self87208726_ _self8718_)
                   (_E87228730_
                    (lambda () (error '"No clause matching" _self87208726_)))
                   (_K87238735_
                    (lambda (_K8733_)
                      (gx#core-apply-expander__0 _K8733_ _stx8719_))))
              (if (##structure-instance-of?
                   _self87208726_
                   'gx#core-expander::t)
                  (let* ((_e87248738_ (##vector-ref _self87208726_ '1))
                         (_K8741_ _e87248738_))
                    (_K87238735_ _K8741_))
                  (_E87228730_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self8580_ _stx8581_ _top?8582_)
        (if (_top?8582_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self8580_ _stx8581_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx8581_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self8587_ _stx8588_)
        (let ((_top?8590_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self8587_
           _stx8588_
           _top?8590_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g10136_
        (let ((_g10135_ (##length _g10136_)))
          (cond ((##fx= _g10135_ 2)
                 (apply (lambda (_self8587_ _stx8588_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self8587_
                           _stx8588_))
                        _g10136_))
                ((##fx= _g10135_ 3)
                 (apply (lambda (_self8592_ _stx8593_ _top?8594_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self8592_
                           _stx8593_
                           _top?8594_))
                        _g10136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g10136_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self8454_ _stx8455_)
        (gx#top-special-form::apply-macro-expander__%
         _self8454_
         _stx8455_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self8279_ _stx8280_)
        (let* ((_self82818287_ _self8279_)
               (_E82838291_
                (lambda () (error '"No clause matching" _self82818287_)))
               (_K82848324_
                (lambda (_id8294_)
                  (let* ((_e82958302_ _stx8280_)
                         (_E82978306_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e82958302_)))
                         (_E82968320_
                          (lambda ()
                            (if (gx#stx-pair? _e82958302_)
                                (let ((_e82988310_ (gx#syntax-e _e82958302_)))
                                  (let ((_hd82998313_ (##car _e82988310_))
                                        (_tl83008315_ (##cdr _e82988310_)))
                                    (let ((_body8318_ _tl83008315_))
                                      (if '#t
                                          (gx#core-cons _id8294_ _body8318_)
                                          (_E82978306_)))))
                                (_E82978306_)))))
                    (_E82968320_)))))
          (if (##structure-instance-of?
               _self82818287_
               'gx#rename-macro-expander::t)
              (let* ((_e82858327_ (##vector-ref _self82818287_ '1))
                     (_id8330_ _e82858327_))
                (_K82848324_ _id8330_))
              (_E82838291_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self8105_ _stx8106_ _method8107_)
        (let* ((_self81088116_ _self8105_)
               (_E81108120_
                (lambda () (error '"No clause matching" _self81088116_)))
               (_K81118127_
                (lambda (_phi8123_ _ctx8124_ _K8125_)
                  (gx#core-apply-user-macro
                   _K8125_
                   _stx8106_
                   _ctx8124_
                   _phi8123_
                   _method8107_))))
          (if (##structure-instance-of? _self81088116_ 'gx#macro-expander::t)
              (let* ((_e81128130_ (##vector-ref _self81088116_ '1))
                     (_K8133_ _e81128130_)
                     (_e81138135_ (##vector-ref _self81088116_ '2))
                     (_ctx8138_ _e81138135_)
                     (_e81148140_ (##vector-ref _self81088116_ '3))
                     (_phi8143_ _e81148140_))
                (_K81118127_ _phi8143_ _ctx8138_ _K8133_))
              (_E81108120_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self8148_ _stx8149_)
        (let ((_method8151_ 'apply-macro-expander))
          (gx#core-apply-user-expander__% _self8148_ _stx8149_ _method8151_))))
    (define gx#core-apply-user-expander
      (lambda _g10138_
        (let ((_g10137_ (##length _g10138_)))
          (cond ((##fx= _g10137_ 2)
                 (apply (lambda (_self8148_ _stx8149_)
                          (gx#core-apply-user-expander__0
                           _self8148_
                           _stx8149_))
                        _g10138_))
                ((##fx= _g10137_ 3)
                 (apply (lambda (_self8153_ _stx8154_ _method8155_)
                          (gx#core-apply-user-expander__%
                           _self8153_
                           _stx8154_
                           _method8155_))
                        _g10138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g10138_))))))
    (define gx#core-apply-user-macro
      (lambda (_K8095_ _stx8096_ _ctx8097_ _phi8098_ _method8099_)
        (let ((_mark8101_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx8097_
                _phi8098_
                _stx8096_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K8095_
               (gx#stx-apply-mark _stx8096_ _mark8101_)
               _method8099_)
              _mark8101_))
           gx#current-expander-marks
           (cons _mark8101_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx7947_ _phi7948_ _ctx7949_)
        (let _lp7951_ ((_bind7953_
                        (gx#core-resolve-identifier__%
                         _stx7947_
                         _phi7948_
                         _ctx7949_)))
          (if (##structure-direct-instance-of?
               _bind7953_
               'gx#import-binding::t)
              (_lp7951_
               (##unchecked-structure-ref
                _bind7953_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind7953_
                   'gx#alias-binding::t)
                  (_lp7951_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind7953_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi7948_
                    _ctx7949_))
                  _bind7953_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx7958_)
        (let* ((_phi7960_ (gx#current-expander-phi))
               (_ctx7962_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx7958_ _phi7960_ _ctx7962_))))
    (define gx#resolve-identifier__1
      (lambda (_stx7964_ _phi7965_)
        (let ((_ctx7967_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx7964_ _phi7965_ _ctx7967_))))
    (define gx#resolve-identifier
      (lambda _g10140_
        (let ((_g10139_ (##length _g10140_)))
          (cond ((##fx= _g10139_ 1)
                 (apply (lambda (_stx7958_)
                          (gx#resolve-identifier__0 _stx7958_))
                        _g10140_))
                ((##fx= _g10139_ 2)
                 (apply (lambda (_stx7964_ _phi7965_)
                          (gx#resolve-identifier__1 _stx7964_ _phi7965_))
                        _g10140_))
                ((##fx= _g10139_ 3)
                 (apply (lambda (_stx7969_ _phi7970_ _ctx7971_)
                          (gx#resolve-identifier__%
                           _stx7969_
                           _phi7970_
                           _ctx7971_))
                        _g10140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g10140_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx7905_ _val7906_ _rebind?7907_ _phi7908_ _ctx7909_)
        (let ((_rebind?7911_
               (if (not _rebind?7907_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?7907_) _rebind?7907_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx7905_)
           _val7906_
           _rebind?7911_
           _phi7908_
           _ctx7909_))))
    (define gx#bind-identifier!__0
      (lambda (_stx7916_ _val7917_)
        (let* ((_rebind?7919_ '#f)
               (_phi7921_ (gx#current-expander-phi))
               (_ctx7923_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7916_
           _val7917_
           _rebind?7919_
           _phi7921_
           _ctx7923_))))
    (define gx#bind-identifier!__1
      (lambda (_stx7925_ _val7926_ _rebind?7927_)
        (let* ((_phi7929_ (gx#current-expander-phi))
               (_ctx7931_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7925_
           _val7926_
           _rebind?7927_
           _phi7929_
           _ctx7931_))))
    (define gx#bind-identifier!__2
      (lambda (_stx7933_ _val7934_ _rebind?7935_ _phi7936_)
        (let ((_ctx7938_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7933_
           _val7934_
           _rebind?7935_
           _phi7936_
           _ctx7938_))))
    (define gx#bind-identifier!
      (lambda _g10142_
        (let ((_g10141_ (##length _g10142_)))
          (cond ((##fx= _g10141_ 2)
                 (apply (lambda (_stx7916_ _val7917_)
                          (gx#bind-identifier!__0 _stx7916_ _val7917_))
                        _g10142_))
                ((##fx= _g10141_ 3)
                 (apply (lambda (_stx7925_ _val7926_ _rebind?7927_)
                          (gx#bind-identifier!__1
                           _stx7925_
                           _val7926_
                           _rebind?7927_))
                        _g10142_))
                ((##fx= _g10141_ 4)
                 (apply (lambda (_stx7933_ _val7934_ _rebind?7935_ _phi7936_)
                          (gx#bind-identifier!__2
                           _stx7933_
                           _val7934_
                           _rebind?7935_
                           _phi7936_))
                        _g10142_))
                ((##fx= _g10141_ 5)
                 (apply (lambda (_stx7940_
                                 _val7941_
                                 _rebind?7942_
                                 _phi7943_
                                 _ctx7944_)
                          (gx#bind-identifier!__%
                           _stx7940_
                           _val7941_
                           _rebind?7942_
                           _phi7943_
                           _ctx7944_))
                        _g10142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g10142_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx7877_ _phi7878_ _ctx7879_)
        (let _lp7881_ ((_e7883_ _stx7877_)
                       (_marks7884_ (gx#current-expander-marks)))
          (if (symbol? _e7883_)
              (gx#core-resolve-binding
               _e7883_
               _phi7878_
               _phi7878_
               _ctx7879_
               (reverse _marks7884_))
              (if (gx#identifier-quote? _e7883_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e7883_ '1 gx#AST::t '#f)
                   _phi7878_
                   '0
                   (##unchecked-structure-ref
                    _e7883_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e7883_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e7883_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e7883_ '1 gx#AST::t '#f)
                       _phi7878_
                       _phi7878_
                       _ctx7879_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e7883_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks7884_))
                      (if (##structure-direct-instance-of?
                           _e7883_
                           'gx#syntax-wrap::t)
                          (_lp7881_
                           (##unchecked-structure-ref _e7883_ '1 gx#AST::t '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e7883_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks7884_))
                          (if (##structure-instance-of? _e7883_ 'gerbil#AST::t)
                              (_lp7881_
                               (##unchecked-structure-ref
                                _e7883_
                                '1
                                gx#AST::t
                                '#f)
                               _marks7884_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx7877_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx7889_)
        (let* ((_phi7891_ (gx#current-expander-phi))
               (_ctx7893_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx7889_ _phi7891_ _ctx7893_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx7895_ _phi7896_)
        (let ((_ctx7898_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx7895_ _phi7896_ _ctx7898_))))
    (define gx#core-resolve-identifier
      (lambda _g10144_
        (let ((_g10143_ (##length _g10144_)))
          (cond ((##fx= _g10143_ 1)
                 (apply (lambda (_stx7889_)
                          (gx#core-resolve-identifier__0 _stx7889_))
                        _g10144_))
                ((##fx= _g10143_ 2)
                 (apply (lambda (_stx7895_ _phi7896_)
                          (gx#core-resolve-identifier__1 _stx7895_ _phi7896_))
                        _g10144_))
                ((##fx= _g10143_ 3)
                 (apply (lambda (_stx7900_ _phi7901_ _ctx7902_)
                          (gx#core-resolve-identifier__%
                           _stx7900_
                           _phi7901_
                           _ctx7902_))
                        _g10144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g10144_))))))
    (define gx#core-resolve-binding
      (lambda (_id7790_ _phi7791_ _src-phi7792_ _ctx7793_ _marks7794_)
        (letrec ((_resolve7796_
                  (lambda (_ctx7864_ _src-phi7865_ _key7866_)
                    (let _lp7868_ ((_ctx7870_
                                    (gx#core-context-shift
                                     _ctx7864_
                                     _phi7791_))
                                   (_dphi7871_ (fx- _phi7791_ _src-phi7865_)))
                      (let ((_$e7873_
                             (gx#core-context-resolve _ctx7870_ _key7866_)))
                        (if _$e7873_
                            (values _$e7873_)
                            (if (fxzero? _dphi7871_)
                                '#f
                                (if (fxpositive? _dphi7871_)
                                    (_lp7868_
                                     (gx#core-context-shift _ctx7870_ '-1)
                                     (fx- _dphi7871_ '1))
                                    (_lp7868_
                                     (gx#core-context-shift _ctx7870_ '1)
                                     (fx+ _dphi7871_ '1))))))))))
          (let _lp7798_ ((_ctx7800_ _ctx7793_)
                         (_src-phi7801_ _src-phi7792_)
                         (_rest7802_ _marks7794_))
            (let* ((_rest78037811_ _rest7802_)
                   (_else78057819_
                    (lambda ()
                      (_resolve7796_ _ctx7800_ _src-phi7801_ _id7790_)))
                   (_K78077852_
                    (lambda (_rest7822_ _hd7823_)
                      (let* ((_hd78247830_ _hd7823_)
                             (_E78267834_
                              (lambda ()
                                (error '"No clause matching" _hd78247830_)))
                             (_K78277844_
                              (lambda (_subst7837_)
                                (let ((_$e7841_
                                       (let ((_key7839_
                                              (if _subst7837_
                                                  (table-ref
                                                   _subst7837_
                                                   _id7790_
                                                   '#f)
                                                  '#f)))
                                         (if _key7839_
                                             (_resolve7796_
                                              _ctx7800_
                                              _src-phi7801_
                                              _key7839_)
                                             '#f))))
                                  (if _$e7841_
                                      _$e7841_
                                      (_lp7798_
                                       (##unchecked-structure-ref
                                        _hd7823_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd7823_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest7822_))))))
                        (if (##structure-instance-of?
                             _hd78247830_
                             'gx#expander-mark::t)
                            (let* ((_e78287847_ (##vector-ref _hd78247830_ '1))
                                   (_subst7850_ _e78287847_))
                              (_K78277844_ _subst7850_))
                            (_E78267834_))))))
              (if (##pair? _rest78037811_)
                  (let ((_hd78087855_ (##car _rest78037811_))
                        (_tl78097857_ (##cdr _rest78037811_)))
                    (let* ((_hd7860_ _hd78087855_) (_rest7862_ _tl78097857_))
                      (_K78077852_ _rest7862_ _hd7860_)))
                  (_else78057819_)))))))
    (define gx#core-bind!__%
      (lambda (_key7666_ _val7667_ _rebind?7668_ _phi7669_ _ctx7670_)
        (letrec ((_update-binding7672_
                  (lambda (_xval7743_)
                    (if (or (_rebind?7668_ _ctx7670_ _xval7743_ _val7667_)
                            (and (##structure-direct-instance-of?
                                  _xval7743_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval7743_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val7667_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val7667_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval7743_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val7667_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val7667_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval7743_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val7667_
                        (if (and (##structure-direct-instance-of?
                                  _val7667_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val7667_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval7743_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val7667_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval7743_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval7743_
                            (if (and (##structure-direct-instance-of?
                                      _val7667_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval7743_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key7666_
                                 (cons (##unchecked-structure-ref
                                        _val7667_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val7667_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval7743_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval7743_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval7743_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval7743_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key7666_
                                 _val7667_
                                 _xval7743_))))))
                 (_gensubst7673_
                  (lambda (_subst7738_ _id7739_)
                    (let ((_eid7741_
                           (gensym (if (uninterned-symbol? _id7739_)
                                       '%
                                       _id7739_))))
                      (table-set! _subst7738_ _id7739_ _eid7741_)
                      _eid7741_)))
                 (_subst!7674_
                  (lambda (_key7676_)
                    (let* ((_key76777685_ _key7676_)
                           (_else76797693_ (lambda () _key7676_))
                           (_K76817726_
                            (lambda (_mark7696_ _id7697_)
                              (let* ((_mark76987704_ _mark7696_)
                                     (_E77007708_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark76987704_)))
                                     (_K77017718_
                                      (lambda (_subst7711_)
                                        (if (not _subst7711_)
                                            (let ((_subst7713_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark7696_
                                               _subst7713_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst7673_
                                               _subst7713_
                                               _id7697_))
                                            (let ((_$e7715_
                                                   (table-ref
                                                    _subst7711_
                                                    _id7697_
                                                    '#f)))
                                              (if _$e7715_
                                                  (values _$e7715_)
                                                  (_gensubst7673_
                                                   _subst7711_
                                                   _id7697_)))))))
                                (if (##structure-instance-of?
                                     _mark76987704_
                                     'gx#expander-mark::t)
                                    (let* ((_e77027721_
                                            (##vector-ref _mark76987704_ '1))
                                           (_subst7724_ _e77027721_))
                                      (_K77017718_ _subst7724_))
                                    (_E77007708_))))))
                      (if (##pair? _key76777685_)
                          (let ((_hd76827729_ (##car _key76777685_))
                                (_tl76837731_ (##cdr _key76777685_)))
                            (let* ((_id7734_ _hd76827729_)
                                   (_mark7736_ _tl76837731_))
                              (_K76817726_ _mark7736_ _id7734_)))
                          (_else76797693_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx7670_ _phi7669_)
           (_subst!7674_ _key7666_)
           _val7667_
           _update-binding7672_))))
    (define gx#core-bind!__0
      (lambda (_key7760_ _val7761_)
        (let* ((_rebind?7763_ false)
               (_phi7765_ (gx#current-expander-phi))
               (_ctx7767_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key7760_
           _val7761_
           _rebind?7763_
           _phi7765_
           _ctx7767_))))
    (define gx#core-bind!__1
      (lambda (_key7769_ _val7770_ _rebind?7771_)
        (let* ((_phi7773_ (gx#current-expander-phi))
               (_ctx7775_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key7769_
           _val7770_
           _rebind?7771_
           _phi7773_
           _ctx7775_))))
    (define gx#core-bind!__2
      (lambda (_key7777_ _val7778_ _rebind?7779_ _phi7780_)
        (let ((_ctx7782_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key7777_
           _val7778_
           _rebind?7779_
           _phi7780_
           _ctx7782_))))
    (define gx#core-bind!
      (lambda _g10146_
        (let ((_g10145_ (##length _g10146_)))
          (cond ((##fx= _g10145_ 2)
                 (apply (lambda (_key7760_ _val7761_)
                          (gx#core-bind!__0 _key7760_ _val7761_))
                        _g10146_))
                ((##fx= _g10145_ 3)
                 (apply (lambda (_key7769_ _val7770_ _rebind?7771_)
                          (gx#core-bind!__1 _key7769_ _val7770_ _rebind?7771_))
                        _g10146_))
                ((##fx= _g10145_ 4)
                 (apply (lambda (_key7777_ _val7778_ _rebind?7779_ _phi7780_)
                          (gx#core-bind!__2
                           _key7777_
                           _val7778_
                           _rebind?7779_
                           _phi7780_))
                        _g10146_))
                ((##fx= _g10145_ 5)
                 (apply (lambda (_key7784_
                                 _val7785_
                                 _rebind?7786_
                                 _phi7787_
                                 _ctx7788_)
                          (gx#core-bind!__%
                           _key7784_
                           _val7785_
                           _rebind?7786_
                           _phi7787_
                           _ctx7788_))
                        _g10146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g10146_))))))
    (define gx#core-identifier-key
      (lambda (_stx7600_)
        (if (symbol? _stx7600_)
            (let* ((_g76017609_ (gx#current-expander-marks))
                   (_else76037617_ (lambda () _stx7600_))
                   (_K76057622_ (lambda (_hd7620_) (cons _stx7600_ _hd7620_))))
              (if (##pair? _g76017609_)
                  (let* ((_hd76067625_ (##car _g76017609_))
                         (_hd7628_ _hd76067625_))
                    (_K76057622_ _hd7628_))
                  (_else76037617_)))
            (if (gx#identifier? _stx7600_)
                (let* ((_id7630_ (gx#syntax-local-unwrap _stx7600_))
                       (_eid7632_ (gx#stx-e _id7630_))
                       (_marks7634_ (gx#stx-identifier-marks* _id7630_)))
                  (let* ((_marks76367644_ _marks7634_)
                         (_else76387652_ (lambda () _eid7632_))
                         (_K76407657_
                          (lambda (_hd7655_) (cons _eid7632_ _hd7655_))))
                    (if (##pair? _marks76367644_)
                        (let* ((_hd76417660_ (##car _marks76367644_))
                               (_hd7663_ _hd76417660_))
                          (_K76407657_ _hd7663_))
                        (_else76387652_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx7600_)))))
    (define gx#core-context-shift
      (lambda (_ctx7545_ _phi7546_)
        (letrec ((_make-phi7548_
                  (lambda (_super7598_)
                    (let ((__obj10117 (make-object gx#phi-context::t '5)))
                      (gx#phi-context:::init!__%
                       __obj10117
                       (gensym 'phi)
                       _super7598_)
                      __obj10117)))
                 (_make-phi/up7549_
                  (lambda (_ctx7593_ _super7594_)
                    (let ((_ctx+17596_ (_make-phi7548_ _super7594_)))
                      (##unchecked-structure-set!
                       _ctx7593_
                       _ctx+17596_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+17596_
                       _ctx7593_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+17596_)))
                 (_make-phi/down7550_
                  (lambda (_ctx7588_ _super7589_)
                    (let ((_ctx-17591_ (_make-phi7548_ _super7589_)))
                      (##unchecked-structure-set!
                       _ctx-17591_
                       _ctx7588_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx7588_
                       _ctx-17591_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-17591_)))
                 (_shift7551_
                  (lambda (_ctx7572_
                           _delta7573_
                           _make-delta-context7574_
                           _phi7575_
                           _K7576_)
                    (let ((_$e7578_
                           (##unchecked-structure-ref
                            _ctx7572_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e7578_
                          ((lambda (_super7581_)
                             (let* ((_super7583_
                                     (_K7576_ _super7581_ _delta7573_))
                                    (_ctx+d7585_
                                     (_make-delta-context7574_
                                      _ctx7572_
                                      _super7583_)))
                               (_K7576_ _ctx+d7585_
                                        (fx- _phi7575_ _delta7573_))))
                           _$e7578_)
                          (error '"Bad context" _ctx7572_))))))
          (let _K7553_ ((_ctx7555_ _ctx7545_) (_phi7556_ _phi7546_))
            (if (fxzero? _phi7556_)
                _ctx7555_
                (if (fx> (##vector-length _ctx7555_) '3)
                    (if (fxpositive? _phi7556_)
                        (let ((_$e7558_
                               (##unchecked-structure-ref
                                _ctx7555_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e7558_
                              ((lambda (_g75607562_)
                                 (_K7553_ _g75607562_ (fx- _phi7556_ '1)))
                               _$e7558_)
                              (_shift7551_
                               _ctx7555_
                               '1
                               _make-phi/up7549_
                               _phi7556_
                               _K7553_)))
                        (let ((_$e7565_
                               (##unchecked-structure-ref
                                _ctx7555_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e7565_
                              ((lambda (_g75677569_)
                                 (_K7553_ _g75677569_ (fx+ _phi7556_ '1)))
                               _$e7565_)
                              (_shift7551_
                               _ctx7555_
                               '-1
                               _make-phi/down7550_
                               _phi7556_
                               _K7553_))))
                    _ctx7555_))))))
    (define gx#core-context-get
      (lambda (_ctx7542_ _key7543_)
        (table-ref
         (##unchecked-structure-ref _ctx7542_ '2 gx#expander-context::t '#f)
         _key7543_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx7538_ _key7539_ _val7540_)
        (table-set!
         (##unchecked-structure-ref _ctx7538_ '2 gx#expander-context::t '#f)
         _key7539_
         _val7540_)))
    (define gx#core-context-resolve
      (lambda (_ctx7525_ _key7526_)
        (let _lp7528_ ((_ctx7530_ _ctx7525_))
          (let ((_$e7532_ (gx#core-context-get _ctx7530_ _key7526_)))
            (if _$e7532_
                (values _$e7532_)
                (let ((_$e7535_
                       (if (fx> (##vector-length _ctx7530_) '3)
                           (##unchecked-structure-ref
                            _ctx7530_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e7535_ (_lp7528_ _$e7535_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx7515_ _key7516_ _val7517_ _rebind7518_)
        (let ((_$e7520_ (gx#core-context-get _ctx7515_ _key7516_)))
          (if _$e7520_
              ((lambda (_xval7523_)
                 (gx#core-context-put!
                  _ctx7515_
                  _key7516_
                  (_rebind7518_ _xval7523_)))
               _$e7520_)
              (gx#core-context-put! _ctx7515_ _key7516_ _val7517_)))))
    (define gx#core-context-top__%
      (lambda (_ctx7493_ _stop?7494_)
        (let _lp7496_ ((_ctx7498_ _ctx7493_))
          (if (_stop?7494_ _ctx7498_)
              _ctx7498_
              (if (##structure-instance-of? _ctx7498_ 'gx#context-phi::t)
                  (_lp7496_
                   (##unchecked-structure-ref
                    _ctx7498_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx7504_ (gx#current-expander-context))
               (_stop?7506_ gx#top-context?))
          (gx#core-context-top__% _ctx7504_ _stop?7506_))))
    (define gx#core-context-top__1
      (lambda (_ctx7508_)
        (let ((_stop?7510_ gx#top-context?))
          (gx#core-context-top__% _ctx7508_ _stop?7510_))))
    (define gx#core-context-top
      (lambda _g10148_
        (let ((_g10147_ (##length _g10148_)))
          (cond ((##fx= _g10147_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g10148_))
                ((##fx= _g10147_ 1)
                 (apply (lambda (_ctx7508_) (gx#core-context-top__1 _ctx7508_))
                        _g10148_))
                ((##fx= _g10147_ 2)
                 (apply (lambda (_ctx7512_ _stop?7513_)
                          (gx#core-context-top__% _ctx7512_ _stop?7513_))
                        _g10148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g10148_))))))
    (define gx#core-context-root__%
      (lambda (_ctx7478_)
        (let _lp7480_ ((_ctx7482_ _ctx7478_))
          (if (##structure-instance-of? _ctx7482_ 'gx#context-phi::t)
              (_lp7480_
               (##unchecked-structure-ref _ctx7482_ '3 gx#phi-context::t '#f))
              _ctx7482_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx7488_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx7488_))))
    (define gx#core-context-root
      (lambda _g10150_
        (let ((_g10149_ (##length _g10150_)))
          (cond ((##fx= _g10149_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g10150_))
                ((##fx= _g10149_ 1)
                 (apply (lambda (_ctx7490_)
                          (gx#core-context-root__% _ctx7490_))
                        _g10150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g10150_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx7459_ . __74567460_)
        (let ((_$e7463_ (gx#current-expander-allow-rebind?)))
          (if _$e7463_
              _$e7463_
              (if (##structure-instance-of? _ctx7459_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx7459_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx7459_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx7470_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx7470_))))
    (define gx#core-context-rebind?
      (lambda _g10152_
        (let ((_g10151_ (##length _g10152_)))
          (cond ((##fx= _g10151_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g10152_))
                ((##fx= _g10151_ 1)
                 (apply (lambda (_ctx7472_)
                          (gx#core-context-rebind?__% _ctx7472_))
                        _g10152_))
                ((##fx>= _g10151_ 1)
                 (apply gx#core-context-rebind?__% _g10152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g10152_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx7442_)
        (let ((_$e7444_ (gx#core-context-top__1 _ctx7442_)))
          (if _$e7444_
              ((lambda (_ctx7447_)
                 (if (##structure-instance-of? _ctx7447_ 'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx7447_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e7444_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx7453_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx7453_))))
    (define gx#core-context-namespace
      (lambda _g10154_
        (let ((_g10153_ (##length _g10154_)))
          (cond ((##fx= _g10153_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g10154_))
                ((##fx= _g10153_ 1)
                 (apply (lambda (_ctx7455_)
                          (gx#core-context-namespace__% _ctx7455_))
                        _g10154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g10154_))))))
    (define gx#expander-binding?__%
      (lambda (_bind7428_ _is?7429_)
        (if (##structure-direct-instance-of? _bind7428_ 'gx#syntax-binding::t)
            (_is?7429_
             (##unchecked-structure-ref
              _bind7428_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind7434_)
        (let ((_is?7436_ gx#expander?))
          (gx#expander-binding?__% _bind7434_ _is?7436_))))
    (define gx#expander-binding?
      (lambda _g10156_
        (let ((_g10155_ (##length _g10156_)))
          (cond ((##fx= _g10155_ 1)
                 (apply (lambda (_bind7434_)
                          (gx#expander-binding?__0 _bind7434_))
                        _g10156_))
                ((##fx= _g10155_ 2)
                 (apply (lambda (_bind7438_ _is?7439_)
                          (gx#expander-binding?__% _bind7438_ _is?7439_))
                        _g10156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g10156_))))))
    (define gx#core-expander-binding?
      (lambda (_bind7425_)
        (gx#expander-binding?__% _bind7425_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind7423_)
        (gx#expander-binding?__% _bind7423_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind7417_)
        (letrec ((_direct-special-form?7419_
                  (lambda (_obj7421_)
                    (##structure-direct-instance-of?
                     _obj7421_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind7417_ _direct-special-form?7419_))))
    (define gx#special-form-binding?
      (lambda (_bind7415_)
        (gx#expander-binding?__% _bind7415_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind7406_)
        (letrec ((_feature?7408_
                  (lambda (_e7410_)
                    (let ((_$e7412_
                           (##structure-instance-of?
                            _e7410_
                            'gx#feature-expander::t)))
                      (if _$e7412_
                          _$e7412_
                          (##structure-instance-of?
                           _e7410_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind7406_ _feature?7408_))))
    (define gx#private-feature-binding?
      (lambda (_bind7404_)
        (gx#expander-binding?__% _bind7404_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id7391_ _bound?7392_)
        (if (gx#identifier? _id7391_)
            (_bound?7392_ (gx#resolve-identifier__0 _id7391_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id7397_)
        (let ((_bound?7399_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id7397_ _bound?7399_))))
    (define gx#core-bound-identifier?
      (lambda _g10158_
        (let ((_g10157_ (##length _g10158_)))
          (cond ((##fx= _g10157_ 1)
                 (apply (lambda (_id7397_)
                          (gx#core-bound-identifier?__0 _id7397_))
                        _g10158_))
                ((##fx= _g10157_ 2)
                 (apply (lambda (_id7401_ _bound?7402_)
                          (gx#core-bound-identifier?__% _id7401_ _bound?7402_))
                        _g10158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g10158_))))))
    (define gx#core-identifier=?
      (lambda (_x7381_ _y7382_)
        (letrec ((_y=?7384_
                  (lambda (_xid7388_)
                    ((if (list? _y7382_) memq eq?) _xid7388_ _y7382_))))
          (let ((_bind7386_ (gx#resolve-identifier__0 _x7381_)))
            (if (##structure-instance-of? _bind7386_ 'gx#binding::t)
                (_y=?7384_
                 (##unchecked-structure-ref _bind7386_ '1 gx#binding::t '#f))
                (_y=?7384_ (gx#stx-e _x7381_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e7379_)
        (if (interned-symbol? _e7379_)
            (string-index (symbol->string _e7379_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx7334_ _src7335_ _ctx7336_ _marks7337_)
        (if (##structure? _stx7334_)
            (let ((_$e7339_ (gx#sealed-syntax-unwrap _stx7334_)))
              (if _$e7339_
                  (values _$e7339_)
                  (if (gx#identifier? _stx7334_)
                      (let ((_id7342_
                             (gx#stx-unwrap__% _stx7334_ _marks7337_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id7342_ '1 gx#AST::t '#f)
                         (let ((_$e7344_
                                (##unchecked-structure-ref
                                 _id7342_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e7344_ _$e7344_ _src7335_))
                         _ctx7336_
                         (##unchecked-structure-ref
                          _id7342_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx7334_)
                       (let ((_$e7347_ (gx#stx-source _stx7334_)))
                         (if _$e7347_ _$e7347_ _src7335_))
                       _ctx7336_
                       (reverse _marks7337_)))))
            (##structure
             gx#syntax-quote::t
             _stx7334_
             _src7335_
             _ctx7336_
             (reverse _marks7337_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx7353_)
        (let* ((_src7355_ '#f)
               (_ctx7357_ (gx#current-expander-context))
               (_marks7359_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx7353_
           _src7355_
           _ctx7357_
           _marks7359_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx7361_ _src7362_)
        (let* ((_ctx7364_ (gx#current-expander-context))
               (_marks7366_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx7361_
           _src7362_
           _ctx7364_
           _marks7366_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx7368_ _src7369_ _ctx7370_)
        (let ((_marks7372_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx7368_
           _src7369_
           _ctx7370_
           _marks7372_))))
    (define gx#core-quote-syntax
      (lambda _g10160_
        (let ((_g10159_ (##length _g10160_)))
          (cond ((##fx= _g10159_ 1)
                 (apply (lambda (_stx7353_)
                          (gx#core-quote-syntax__0 _stx7353_))
                        _g10160_))
                ((##fx= _g10159_ 2)
                 (apply (lambda (_stx7361_ _src7362_)
                          (gx#core-quote-syntax__1 _stx7361_ _src7362_))
                        _g10160_))
                ((##fx= _g10159_ 3)
                 (apply (lambda (_stx7368_ _src7369_ _ctx7370_)
                          (gx#core-quote-syntax__2
                           _stx7368_
                           _src7369_
                           _ctx7370_))
                        _g10160_))
                ((##fx= _g10159_ 4)
                 (apply (lambda (_stx7374_ _src7375_ _ctx7376_ _marks7377_)
                          (gx#core-quote-syntax__%
                           _stx7374_
                           _src7375_
                           _ctx7376_
                           _marks7377_))
                        _g10160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g10160_))))))
    (define gx#core-cons
      (lambda (_hd7330_ _tl7331_)
        (cons (gx#core-quote-syntax__0 _hd7330_) _tl7331_)))
    (define gx#core-list
      (lambda (_hd7327_ . _rest7328_)
        (cons (gx#core-quote-syntax__0 _hd7327_) _rest7328_)))
    (define gx#core-cons*
      (lambda (_hd7324_ . _rest7325_)
        (apply cons* (gx#core-quote-syntax__0 _hd7324_) _rest7325_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path7298_ _rel7299_)
        (let ((_path7311_ (gx#stx-e _stx-path7298_))
              (_reldir7312_
               (let _lp7301_ ((_relsrc7303_
                               (let ((_$e7308_ (gx#stx-source _stx-path7298_)))
                                 (if _$e7308_ _$e7308_ _rel7299_))))
                 (if (##structure-instance-of? _relsrc7303_ 'gerbil#AST::t)
                     (_lp7301_
                      (let ((_$e7305_ (gx#stx-source _relsrc7303_)))
                        (if _$e7305_ _$e7305_ (gx#stx-e _relsrc7303_))))
                     (if (source-location-path? _relsrc7303_)
                         (path-directory (source-location-path _relsrc7303_))
                         (if (string? _relsrc7303_)
                             (path-directory _relsrc7303_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path7311_ (path-normalize _reldir7312_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path7317_)
        (let ((_rel7319_ '#f))
          (gx#core-resolve-path__% _stx-path7317_ _rel7319_))))
    (define gx#core-resolve-path
      (lambda _g10162_
        (let ((_g10161_ (##length _g10162_)))
          (cond ((##fx= _g10161_ 1)
                 (apply (lambda (_stx-path7317_)
                          (gx#core-resolve-path__0 _stx-path7317_))
                        _g10162_))
                ((##fx= _g10161_ 2)
                 (apply (lambda (_stx-path7321_ _rel7322_)
                          (gx#core-resolve-path__% _stx-path7321_ _rel7322_))
                        _g10162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g10162_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr7254_ _ctx7255_)
        (let* ((_repr72567263_ _repr7254_)
               (_E72587267_
                (lambda () (error '"No clause matching" _repr72567263_)))
               (_K72597275_
                (lambda (_subs7270_ _phi7271_)
                  (let ((_subst7273_
                         (if (not (null? _subs7270_))
                             (list->table _subs7270_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst7273_
                     _ctx7255_
                     _phi7271_
                     '#f)))))
          (if (##pair? _repr72567263_)
              (let ((_hd72607278_ (##car _repr72567263_))
                    (_tl72617280_ (##cdr _repr72567263_)))
                (let* ((_phi7283_ _hd72607278_) (_subs7285_ _tl72617280_))
                  (_K72597275_ _subs7285_ _phi7283_)))
              (_E72587267_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr7290_)
        (let ((_ctx7292_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr7290_ _ctx7292_))))
    (define gx#core-deserialize-mark
      (lambda _g10164_
        (let ((_g10163_ (##length _g10164_)))
          (cond ((##fx= _g10163_ 1)
                 (apply (lambda (_repr7290_)
                          (gx#core-deserialize-mark__0 _repr7290_))
                        _g10164_))
                ((##fx= _g10163_ 2)
                 (apply (lambda (_repr7294_ _ctx7295_)
                          (gx#core-deserialize-mark__% _repr7294_ _ctx7295_))
                        _g10164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g10164_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx7251_)
        (gx#stx-rewrap _stx7251_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx7249_)
        (gx#stx-unwrap__% _stx7249_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx7219_)
        (let* ((_g72207228_ (gx#current-expander-marks))
               (_else72227236_ (lambda () _stx7219_))
               (_K72247241_
                (lambda (_hd7239_) (gx#stx-apply-mark _stx7219_ _hd7239_))))
          (if (##pair? _g72207228_)
              (let* ((_hd72257244_ (##car _g72207228_))
                     (_hd7247_ _hd72257244_))
                (_K72247241_ _hd7247_))
              (_else72227236_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx7204_ _E7205_)
        (let ((_bind7207_ (gx#resolve-identifier__0 _stx7204_)))
          (if (##structure-direct-instance-of?
               _bind7207_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind7207_
               '4
               gx#syntax-binding::t
               '#f)
              (_E7205_ _stx7204_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx7212_)
        (let ((_E7214_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx7212_ _E7214_))))
    (define gx#syntax-local-e
      (lambda _g10166_
        (let ((_g10165_ (##length _g10166_)))
          (cond ((##fx= _g10165_ 1)
                 (apply (lambda (_stx7212_) (gx#syntax-local-e__0 _stx7212_))
                        _g10166_))
                ((##fx= _g10165_ 2)
                 (apply (lambda (_stx7216_ _E7217_)
                          (gx#syntax-local-e__% _stx7216_ _E7217_))
                        _g10166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g10166_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx7188_ _E7189_)
        (let ((_e7191_ (gx#syntax-local-e__% _stx7188_ _E7189_)))
          (if (##structure-instance-of? _e7191_ 'gx#expander::t)
              (##structure-ref _e7191_ '1 gx#expander::t '#f)
              _e7191_))))
    (define gx#syntax-local-value__0
      (lambda (_stx7196_)
        (let ((_E7198_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx7196_ _E7198_))))
    (define gx#syntax-local-value
      (lambda _g10168_
        (let ((_g10167_ (##length _g10168_)))
          (cond ((##fx= _g10167_ 1)
                 (apply (lambda (_stx7196_)
                          (gx#syntax-local-value__0 _stx7196_))
                        _g10168_))
                ((##fx= _g10167_ 2)
                 (apply (lambda (_stx7200_ _E7201_)
                          (gx#syntax-local-value__% _stx7200_ _E7201_))
                        _g10168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g10168_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx7185_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx7185_)))))
