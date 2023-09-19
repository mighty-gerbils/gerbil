(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1695117494)
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
      (lambda _$args9318_
        (apply make-struct-instance gx#expander-context::t _$args9318_)))
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
      (lambda _$args9315_
        (apply make-struct-instance gx#root-context::t _$args9315_)))
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
      (lambda _$args9312_
        (apply make-struct-instance gx#phi-context::t _$args9312_)))
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
      (lambda _$args9309_
        (apply make-struct-instance gx#top-context::t _$args9309_)))
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
      (lambda _$args9306_
        (apply make-struct-instance gx#module-context::t _$args9306_)))
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
      (lambda _$args9303_
        (apply make-struct-instance gx#prelude-context::t _$args9303_)))
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
      (lambda _$args9300_
        (apply make-struct-instance gx#local-context::t _$args9300_)))
    (define gx#phi-context:::init!__%
      (lambda (_self9284_ _id9285_ _super9286_)
        (if (##fx< '3 (##vector-length _self9284_))
            (begin
              (##vector-set! _self9284_ '1 _id9285_)
              (##vector-set! _self9284_ '2 (make-table 'test: eq?))
              (##vector-set! _self9284_ '3 _super9286_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self9284_))))
    (define gx#phi-context:::init!__0
      (lambda (_self9291_ _id9292_)
        (let ((_super9294_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self9291_ _id9292_ _super9294_))))
    (define gx#phi-context:::init!
      (lambda _g9331_
        (let ((_g9330_ (##length _g9331_)))
          (cond ((##fx= _g9330_ 2) (apply gx#phi-context:::init!__0 _g9331_))
                ((##fx= _g9330_ 3) (apply gx#phi-context:::init!__% _g9331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g9331_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self9148_ _super9149_)
        (if (##fx< '3 (##vector-length _self9148_))
            (begin
              (##vector-set! _self9148_ '1 (gensym 'L))
              (##vector-set! _self9148_ '2 (make-table 'test: eq?))
              (##vector-set! _self9148_ '3 _super9149_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self9148_))))
    (define gx#local-context:::init!__0
      (lambda (_self9154_)
        (let ((_super9156_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self9154_ _super9156_))))
    (define gx#local-context:::init!
      (lambda _g9333_
        (let ((_g9332_ (##length _g9333_)))
          (cond ((##fx= _g9332_ 1) (apply gx#local-context:::init!__0 _g9333_))
                ((##fx= _g9332_ 2) (apply gx#local-context:::init!__% _g9333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g9333_))))))
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
      (lambda _$args9022_
        (apply make-struct-instance gx#binding::t _$args9022_)))
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
      (lambda _$args9019_
        (apply make-struct-instance gx#runtime-binding::t _$args9019_)))
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
      (lambda _$args9016_
        (apply make-struct-instance gx#local-binding::t _$args9016_)))
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
      (lambda _$args9013_
        (apply make-struct-instance gx#top-binding::t _$args9013_)))
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
      (lambda _$args9010_
        (apply make-struct-instance gx#module-binding::t _$args9010_)))
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
      (lambda _$args9007_
        (apply make-struct-instance gx#extern-binding::t _$args9007_)))
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
      (lambda _$args9004_
        (apply make-struct-instance gx#syntax-binding::t _$args9004_)))
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
      (lambda _$args9001_
        (apply make-struct-instance gx#import-binding::t _$args9001_)))
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
      (lambda _$args8998_
        (apply make-struct-instance gx#alias-binding::t _$args8998_)))
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
      (lambda _$args8995_
        (apply make-struct-instance gx#expander::t _$args8995_)))
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
      (lambda _$args8992_
        (apply make-struct-instance gx#core-expander::t _$args8992_)))
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
      (lambda _$args8989_
        (apply make-struct-instance gx#expression-form::t _$args8989_)))
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
      (lambda _$args8986_
        (apply make-struct-instance gx#special-form::t _$args8986_)))
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
      (lambda _$args8983_
        (apply make-struct-instance gx#definition-form::t _$args8983_)))
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
      (lambda _$args8980_
        (apply make-struct-instance gx#top-special-form::t _$args8980_)))
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
      (lambda _$args8977_
        (apply make-struct-instance gx#module-special-form::t _$args8977_)))
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
      (lambda _$args8974_
        (apply make-struct-instance gx#feature-expander::t _$args8974_)))
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
      (lambda _$args8971_
        (apply make-struct-instance
               gx#private-feature-expander::t
               _$args8971_)))
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
      (lambda _$args8968_
        (apply make-struct-instance gx#reserved-expander::t _$args8968_)))
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
      (lambda _$args8965_
        (apply make-struct-instance gx#macro-expander::t _$args8965_)))
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
      (lambda _$args8962_
        (apply make-struct-instance gx#rename-macro-expander::t _$args8962_)))
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
      (lambda _$args8959_
        (apply make-struct-instance gx#user-expander::t _$args8959_)))
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
      (lambda _$args8956_
        (apply make-struct-instance gx#expander-mark::t _$args8956_)))
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
      (lambda (_where8951_ _message8952_ _stx8953_ . _details8954_)
        (raise (make-syntax-error
                _message8952_
                (cons _stx8953_ _details8954_)
                _where8951_
                (gx#current-expander-context)
                (gx#current-expander-marks)
                (gx#current-expander-phi)))))
    (define gx#eval-syntax__%
      (lambda (_stx8938_ _expression?8939_)
        (gx#eval-syntax* (gx#core-expand__% _stx8938_ _expression?8939_))))
    (define gx#eval-syntax__0
      (lambda (_stx8944_)
        (let ((_expression?8946_ '#f))
          (gx#eval-syntax__% _stx8944_ _expression?8946_))))
    (define gx#eval-syntax
      (lambda _g9335_
        (let ((_g9334_ (##length _g9335_)))
          (cond ((##fx= _g9334_ 1) (apply gx#eval-syntax__0 _g9335_))
                ((##fx= _g9334_ 2) (apply gx#eval-syntax__% _g9335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g9335_))))))
    (define gx#eval-syntax*
      (lambda (_stx8935_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx8935_))))
    (define gx#core-expand__%
      (lambda (_stx8922_ _expression?8923_)
        (if _expression?8923_
            (gx#core-expand-expression _stx8922_)
            (gx#core-expand-top _stx8922_))))
    (define gx#core-expand__0
      (lambda (_stx8928_)
        (let ((_expression?8930_ '#f))
          (gx#core-expand__% _stx8928_ _expression?8930_))))
    (define gx#core-expand
      (lambda _g9337_
        (let ((_g9336_ (##length _g9337_)))
          (cond ((##fx= _g9336_ 1) (apply gx#core-expand__0 _g9337_))
                ((##fx= _g9336_ 2) (apply gx#core-expand__% _g9337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g9337_))))))
    (define gx#core-expand-top
      (lambda (_stx8889_)
        (let* ((_stx8891_ (gx#core-expand*__0 _stx8889_))
               (_e88928899_ _stx8891_)
               (_E88948903_ (lambda () (gx#core-expand-expression _stx8891_)))
               (_E88938917_
                (lambda ()
                  (if (gx#stx-pair? _e88928899_)
                      (let ((_e88958907_ (gx#syntax-e _e88928899_)))
                        (let ((_hd88968910_ (##car _e88958907_))
                              (_tl88978912_ (##cdr _e88958907_)))
                          (let ((_form8915_ _hd88968910_))
                            (if (gx#core-bound-identifier?__0 _form8915_)
                                _stx8891_
                                (_E88948903_)))))
                      (_E88948903_)))))
          (_E88938917_))))
    (define gx#core-expand-expression
      (lambda (_stx8836_)
        (letrec ((_sealed-expression?8838_
                  (lambda (_hd8859_)
                    (if (gx#sealed-syntax? _hd8859_)
                        (let* ((_e88608867_ _hd8859_)
                               (_E88628871_ (lambda () '#f))
                               (_E88618885_
                                (lambda ()
                                  (if (gx#stx-pair? _e88608867_)
                                      (let ((_e88638875_
                                             (gx#syntax-e _e88608867_)))
                                        (let ((_hd88648878_
                                               (##car _e88638875_))
                                              (_tl88658880_
                                               (##cdr _e88638875_)))
                                          (let ((_form8883_ _hd88648878_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form8883_
                                                 gx#expression-form-binding?)
                                                (_E88628871_)))))
                                      (_E88628871_)))))
                          (_E88618885_))
                        '#f)))
                 (_illegal-expression8839_
                  (lambda (_hd8857_ . _g9338_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx8836_
                     _hd8857_)))
                 (_expand-e8840_
                  (lambda (_form8852_ _hd8853_)
                    (let ((_bind8855_
                           (if (##structure-instance-of?
                                _form8852_
                                'gx#binding::t)
                               _form8852_
                               (gx#resolve-identifier__0 _form8852_))))
                      (if (gx#core-expander-binding? _bind8855_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind8855_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd8853_
                            (gx#stx-source _stx8836_)))
                          (if (##structure-direct-instance-of?
                               _bind8855_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind8855_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd8853_
                                 (gx#stx-source _stx8836_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx8836_
                               _form8852_)))))))
          (let ((_hd8842_ (gx#core-expand-head _stx8836_)))
            (if (_sealed-expression?8838_ _hd8842_)
                _hd8842_
                (if (gx#stx-pair? _hd8842_)
                    (let* ((_form8844_ (gx#stx-car _hd8842_))
                           (_bind8846_
                            (if (gx#identifier? _form8844_)
                                (gx#resolve-identifier__0 _form8844_)
                                '#f)))
                      (if (or (not _bind8846_)
                              (not (gx#core-expander-binding? _bind8846_)))
                          (_expand-e8840_ '%%app (cons '%%app _hd8842_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind8846_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd8842_
                               _illegal-expression8839_)
                              (if (gx#expression-form-binding? _bind8846_)
                                  (_expand-e8840_ _bind8846_ _hd8842_)
                                  (if (gx#direct-special-form-binding?
                                       _bind8846_)
                                      (gx#core-expand-expression
                                       (_expand-e8840_ _bind8846_ _hd8842_))
                                      (_illegal-expression8839_ _hd8842_))))))
                    (if (gx#core-bound-identifier?__0 _hd8842_)
                        (_illegal-expression8839_ _hd8842_)
                        (if (gx#identifier? _hd8842_)
                            (_expand-e8840_
                             '%%ref
                             (cons '%%ref (cons _hd8842_ '())))
                            (if (gx#stx-datum? _hd8842_)
                                (_expand-e8840_
                                 '%#quote
                                 (cons '%#quote (cons _hd8842_ '())))
                                (_illegal-expression8839_ _hd8842_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx8831_)
        (call-with-parameters
         (lambda ()
           (let ((_stx8834_ (gx#core-expand-expression _stx8831_)))
             (values _stx8834_ (gx#eval-syntax* _stx8834_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx8812_ _stop?8813_)
        (let _lp8815_ ((_stx8817_ _stx8812_))
          (if (_stop?8813_ _stx8817_)
              _stx8817_
              (let ((_rstx8819_ (gx#core-expand1 _stx8817_)))
                (if (eq? _stx8817_ _rstx8819_)
                    _stx8817_
                    (_lp8815_ _rstx8819_)))))))
    (define gx#core-expand*__0
      (lambda (_stx8824_)
        (let ((_stop?8826_ false))
          (gx#core-expand*__% _stx8824_ _stop?8826_))))
    (define gx#core-expand*
      (lambda _g9340_
        (let ((_g9339_ (##length _g9340_)))
          (cond ((##fx= _g9339_ 1) (apply gx#core-expand*__0 _g9340_))
                ((##fx= _g9339_ 2) (apply gx#core-expand*__% _g9340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g9340_))))))
    (define gx#core-expand1
      (lambda (_stx8768_)
        (letrec ((_step8770_
                  (lambda (_hd8807_)
                    (let ((_bind8809_ (gx#resolve-identifier__0 _hd8807_)))
                      (if (##structure-instance-of?
                           _bind8809_
                           'gx#runtime-binding::t)
                          _stx8768_
                          (if (##structure-direct-instance-of?
                               _bind8809_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind8809_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx8768_)
                              (if (not _bind8809_)
                                  _stx8768_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx8768_))))))))
          (let* ((_e87718779_ _stx8768_)
                 (_E87778783_ (lambda () _stx8768_))
                 (_E87738789_
                  (lambda ()
                    (let ((_hd8787_ _e87718779_))
                      (if (gx#identifier? _hd8787_)
                          (_step8770_ _hd8787_)
                          (_E87778783_)))))
                 (_E87728803_
                  (lambda ()
                    (if (gx#stx-pair? _e87718779_)
                        (let ((_e87748793_ (gx#syntax-e _e87718779_)))
                          (let ((_hd87758796_ (##car _e87748793_))
                                (_tl87768798_ (##cdr _e87748793_)))
                            (let ((_hd8801_ _hd87758796_))
                              (if (gx#identifier? _hd8801_)
                                  (_step8770_ _hd8801_)
                                  (_E87738789_)))))
                        (_E87738789_)))))
            (_E87728803_)))))
    (define gx#core-expand-head
      (lambda (_stx8734_)
        (letrec ((_stop?8736_
                  (lambda (_stx8738_)
                    (let* ((_e87398746_ _stx8738_)
                           (_E87418750_ (lambda () '#f))
                           (_E87408764_
                            (lambda ()
                              (if (gx#stx-pair? _e87398746_)
                                  (let ((_e87428754_
                                         (gx#syntax-e _e87398746_)))
                                    (let ((_hd87438757_ (##car _e87428754_))
                                          (_tl87448759_ (##cdr _e87428754_)))
                                      (let ((_hd8762_ _hd87438757_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd8762_)
                                            (_E87418750_)))))
                                  (_E87418750_)))))
                      (_E87408764_)))))
          (gx#core-expand*__% _stx8734_ _stop?8736_))))
    (define gx#core-expand-block__%
      (lambda (_stx8540_ _expand-special8541_ _begin-form8542_ _expand-e8543_)
        (letrec ((_expand-splice8545_
                  (lambda (_hd8708_ _body8709_ _rest8710_ _r8711_)
                    (if (gx#stx-list? _body8709_)
                        (_K8549_ (gx#stx-foldr cons _rest8710_ _body8709_)
                                 _r8711_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx8540_
                         _hd8708_))))
                 (_expand-cond-expand8546_
                  (lambda (_hd8704_ _rest8705_ _r8706_)
                    (_K8549_ (cons (gx#core-expand-cond-expand% _hd8704_)
                                   _rest8705_)
                             _r8706_)))
                 (_expand-include8547_
                  (lambda (_hd8653_ _rest8654_ _r8655_)
                    (let* ((_e86568666_ _hd8653_)
                           (_E86588670_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e86568666_)))
                           (_E86578700_
                            (lambda ()
                              (if (gx#stx-pair? _e86568666_)
                                  (let ((_e86598674_
                                         (gx#syntax-e _e86568666_)))
                                    (let ((_hd86608677_ (##car _e86598674_))
                                          (_tl86618679_ (##cdr _e86598674_)))
                                      (if (gx#stx-pair? _tl86618679_)
                                          (let ((_e86628682_
                                                 (gx#syntax-e _tl86618679_)))
                                            (let ((_hd86638685_
                                                   (##car _e86628682_))
                                                  (_tl86648687_
                                                   (##cdr _e86628682_)))
                                              (let ((_path8690_ _hd86638685_))
                                                (if (gx#stx-null? _tl86648687_)
                                                    (if (gx#stx-string?
                                                         _path8690_)
                                                        (let* ((_rpath8692_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path8690_
                         (gx#stx-source _hd8653_)))
                       (_block8694_
                        (gx#core-expand-include%__% _hd8653_ _rpath8692_))
                       (_rbody8697_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block8694_
                            _expand-special8541_
                            '#f
                            _expand-e8543_))
                         gx#current-expander-path
                         (cons _rpath8692_ (gx#current-expander-path)))))
                  (_K8549_ _rest8654_ (foldr1 cons _r8655_ _rbody8697_)))
                (_E86588670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E86588670_)))))
                                          (_E86588670_))))
                                  (_E86588670_)))))
                      (_E86578700_))))
                 (_expand-expression8548_
                  (lambda (_hd8649_ _rest8650_ _r8651_)
                    (_K8549_ _rest8650_
                             (cons (_expand-e8543_ _hd8649_) _r8651_))))
                 (_K8549_ (lambda (_rest8579_ _r8580_)
                            (let* ((_e85818588_ _rest8579_)
                                   (_E85838592_
                                    (lambda ()
                                      (if _begin-form8542_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form8542_
                                            (reverse _r8580_))
                                           (gx#stx-source _stx8540_))
                                          _r8580_)))
                                   (_E85828645_
                                    (lambda ()
                                      (if (gx#stx-pair? _e85818588_)
                                          (let ((_e85848596_
                                                 (gx#syntax-e _e85818588_)))
                                            (let ((_hd85858599_
                                                   (##car _e85848596_))
                                                  (_tl85868601_
                                                   (##cdr _e85848596_)))
                                              (let* ((_hd8604_ _hd85858599_)
                                                     (_rest8606_ _tl85868601_))
                                                (if '#t
                                                    (let* ((_hd8608_
                                                            (gx#core-expand-head
                                                             _hd8604_))
                                                           (_e86098616_
                                                            _hd8608_)
                                                           (_E86118620_
                                                            (lambda ()
                                                              (_expand-expression8548_
                                                               _hd8608_
                                                               _rest8606_
                                                               _r8580_)))
                                                           (_E86108641_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e86098616_)
                          (let ((_e86128624_ (gx#syntax-e _e86098616_)))
                            (let ((_hd86138627_ (##car _e86128624_))
                                  (_tl86148629_ (##cdr _e86128624_)))
                              (let* ((_form8632_ _hd86138627_)
                                     (_body8634_ _tl86148629_))
                                (if '#t
                                    (let ((_bind8636_
                                           (if (gx#identifier? _form8632_)
                                               (gx#resolve-identifier__0
                                                _form8632_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind8636_)
                                          (let ((_$e8638_
                                                 (##unchecked-structure-ref
                                                  _bind8636_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? '%#begin _$e8638_)
                                                (_expand-splice8545_
                                                 _hd8608_
                                                 _body8634_
                                                 _rest8606_
                                                 _r8580_)
                                                (if (eq? '%#cond-expand
                                                         _$e8638_)
                                                    (_expand-cond-expand8546_
                                                     _hd8608_
                                                     _rest8606_
                                                     _r8580_)
                                                    (if (eq? '%#include
                                                             _$e8638_)
                                                        (_expand-include8547_
                                                         _hd8608_
                                                         _rest8606_
                                                         _r8580_)
                                                        (_expand-special8541_
                                                         _hd8608_
                                                         _K8549_
                                                         _rest8606_
                                                         _r8580_)))))
                                          (_expand-expression8548_
                                           _hd8608_
                                           _rest8606_
                                           _r8580_)))
                                    (_E86118620_)))))
                          (_E86118620_)))))
              (_E86108641_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85838592_)))))
                                          (_E85838592_)))))
                              (_E85828645_)))))
          (let* ((_e85508557_ _stx8540_)
                 (_E85528561_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e85508557_)))
                 (_E85518575_
                  (lambda ()
                    (if (gx#stx-pair? _e85508557_)
                        (let ((_e85538565_ (gx#syntax-e _e85508557_)))
                          (let ((_hd85548568_ (##car _e85538565_))
                                (_tl85558570_ (##cdr _e85538565_)))
                            (let ((_body8573_ _tl85558570_))
                              (if (gx#stx-list? _body8573_)
                                  (_K8549_ _body8573_ '())
                                  (_E85528561_)))))
                        (_E85528561_)))))
            (_E85518575_)))))
    (define gx#core-expand-block__0
      (lambda (_stx8716_ _expand-special8717_)
        (let* ((_begin-form8719_ '%#begin)
               (_expand-e8721_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx8716_
           _expand-special8717_
           _begin-form8719_
           _expand-e8721_))))
    (define gx#core-expand-block__1
      (lambda (_stx8723_ _expand-special8724_ _begin-form8725_)
        (let ((_expand-e8727_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx8723_
           _expand-special8724_
           _begin-form8725_
           _expand-e8727_))))
    (define gx#core-expand-block
      (lambda _g9342_
        (let ((_g9341_ (##length _g9342_)))
          (cond ((##fx= _g9341_ 2) (apply gx#core-expand-block__0 _g9342_))
                ((##fx= _g9341_ 3) (apply gx#core-expand-block__1 _g9342_))
                ((##fx= _g9341_ 4) (apply gx#core-expand-block__% _g9342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g9342_))))))
    (define gx#core-expand-block*
      (lambda (_stx8488_ _expand-special8489_)
        (let* ((_g84908501_
                (gx#core-expand-block__1 _stx8488_ _expand-special8489_ '#f))
               (_E84948505_
                (lambda () (error '"No clause matching" _g84908501_))))
          (let ((_K84998536_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx8488_)))
                (_K84968522_ (lambda (_expr8520_) _expr8520_))
                (_K84958511_
                 (lambda (_body8509_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body8509_))
                    (gx#stx-source _stx8488_)))))
            (let ((_try-match84928532_
                   (lambda ()
                     (if (##pair? _g84908501_)
                         (let ((_tl84988527_ (##cdr _g84908501_))
                               (_hd84978525_ (##car _g84908501_)))
                           (if (##null? _tl84988527_)
                               (let ((_expr8530_ _hd84978525_))
                                 (_K84968522_ _expr8530_))
                               (let ((_body8514_ _g84908501_))
                                 (_K84958511_ _body8514_))))
                         (let ((_body8514_ _g84908501_))
                           (_K84958511_ _body8514_))))))
              (if (##null? _g84908501_)
                  (_K84998536_)
                  (_try-match84928532_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx8316_)
        (letrec ((_satisfied?8318_
                  (lambda (_condition8416_)
                    (let* ((_e84178432_ _condition8416_)
                           (_E84278436_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e84178432_)))
                           (_E84208455_
                            (lambda ()
                              (if (gx#stx-pair? _e84178432_)
                                  (let ((_e84288440_
                                         (gx#syntax-e _e84178432_)))
                                    (let ((_hd84298443_ (##car _e84288440_))
                                          (_tl84308445_ (##cdr _e84288440_)))
                                      (let* ((_combinator8448_ _hd84298443_)
                                             (_body8450_ _tl84308445_))
                                        (if (gx#stx-list? _body8450_)
                                            (let ((_$e8452_
                                                   (gx#stx-e
                                                    _combinator8448_)))
                                              (if (eq? 'not _$e8452_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?8318_
                                                        _body8450_))
                                                  (if (eq? 'and _$e8452_)
                                                      (gx#stx-andmap
                                                       _satisfied?8318_
                                                       _body8450_)
                                                      (if (eq? 'or _$e8452_)
                                                          (gx#stx-ormap
                                                           _satisfied?8318_
                                                           _body8450_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e8452_)
                      (gx#stx-andmap gx#core-resolve-identifier _body8450_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _stx8316_
                       _combinator8448_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E84278436_)))))
                                  (_E84278436_))))
                           (_E84198478_
                            (lambda ()
                              (if (gx#stx-pair? _e84178432_)
                                  (let ((_e84218459_
                                         (gx#syntax-e _e84178432_)))
                                    (let ((_hd84228462_ (##car _e84218459_))
                                          (_tl84238464_ (##cdr _e84218459_)))
                                      (if (and (gx#identifier? _hd84228462_)
                                               (gx#core-identifier=?
                                                _hd84228462_
                                                'unquote))
                                          (if (gx#stx-pair? _tl84238464_)
                                              (let ((_e84248467_
                                                     (gx#syntax-e
                                                      _tl84238464_)))
                                                (let ((_hd84258470_
                                                       (##car _e84248467_))
                                                      (_tl84268472_
                                                       (##cdr _e84248467_)))
                                                  (let ((_expr8475_
                                                         _hd84258470_))
                                                    (if (gx#stx-null?
                                                         _tl84268472_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr8475_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E84208455_))
                (_E84208455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E84208455_))
                                          (_E84208455_))))
                                  (_E84208455_))))
                           (_E84188484_
                            (lambda ()
                              (let ((_id8482_ _e84178432_))
                                (if (gx#identifier? _id8482_)
                                    (gx#core-bound-identifier?__%
                                     _id8482_
                                     gx#feature-binding?)
                                    (_E84198478_))))))
                      (_E84188484_))))
                 (_loop8319_
                  (lambda (_rest8349_)
                    (let* ((_e83508358_ _rest8349_)
                           (_E83568362_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e83508358_)))
                           (_E83528366_
                            (lambda ()
                              (if (gx#stx-null? _e83508358_)
                                  (if '#t '() (_E83568362_))
                                  (_E83568362_))))
                           (_E83518412_
                            (lambda ()
                              (if (gx#stx-pair? _e83508358_)
                                  (let ((_e83538370_
                                         (gx#syntax-e _e83508358_)))
                                    (let ((_hd83548373_ (##car _e83538370_))
                                          (_tl83558375_ (##cdr _e83538370_)))
                                      (let* ((_hd8378_ _hd83548373_)
                                             (_rest8380_ _tl83558375_))
                                        (if '#t
                                            (let* ((_e83818388_ _hd8378_)
                                                   (_E83838392_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _e83818388_)))
                                                   (_E83828408_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e83818388_)
                                                          (let ((_e83848396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e83818388_)))
                    (let ((_hd83858399_ (##car _e83848396_))
                          (_tl83868401_ (##cdr _e83848396_)))
                      (let* ((_condition8404_ _hd83858399_)
                             (_body8406_ _tl83868401_))
                        (if '#t
                            (if (gx#stx-eq? _condition8404_ 'else)
                                (if (gx#stx-null? _rest8380_)
                                    _body8406_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _stx8316_
                                     _hd8378_))
                                (if (_satisfied?8318_ _condition8404_)
                                    _body8406_
                                    (_loop8319_ _rest8380_)))
                            (_E83838392_)))))
                  (_E83838392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E83828408_))
                                            (_E83528366_)))))
                                  (_E83528366_)))))
                      (_E83518412_)))))
          (let* ((_e83208327_ _stx8316_)
                 (_E83228331_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e83208327_)))
                 (_E83218345_
                  (lambda ()
                    (if (gx#stx-pair? _e83208327_)
                        (let ((_e83238335_ (gx#syntax-e _e83208327_)))
                          (let ((_hd83248338_ (##car _e83238335_))
                                (_tl83258340_ (##cdr _e83238335_)))
                            (let ((_clauses8343_ _tl83258340_))
                              (if (gx#stx-list? _clauses8343_)
                                  (gx#core-cons
                                   'begin
                                   (_loop8319_ _clauses8343_))
                                  (_E83228331_)))))
                        (_E83228331_)))))
            (_E83218345_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx8259_ _rpath8260_)
        (let* ((_e82618271_ _stx8259_)
               (_E82638275_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e82618271_)))
               (_E82628302_
                (lambda ()
                  (if (gx#stx-pair? _e82618271_)
                      (let ((_e82648279_ (gx#syntax-e _e82618271_)))
                        (let ((_hd82658282_ (##car _e82648279_))
                              (_tl82668284_ (##cdr _e82648279_)))
                          (if (gx#stx-pair? _tl82668284_)
                              (let ((_e82678287_ (gx#syntax-e _tl82668284_)))
                                (let ((_hd82688290_ (##car _e82678287_))
                                      (_tl82698292_ (##cdr _e82678287_)))
                                  (let ((_path8295_ _hd82688290_))
                                    (if (gx#stx-null? _tl82698292_)
                                        (if (gx#stx-string? _path8295_)
                                            (let ((_rpath8300_
                                                   (let ((_$e8297_
                                                          _rpath8260_))
                                                     (if _$e8297_
                                                         _$e8297_
                                                         (gx#core-resolve-path__%
                                                          _path8295_
                                                          (gx#stx-source
                                                           _stx8259_))))))
                                              (if (member _rpath8300_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx8259_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath8300_))
                                                    (gx#stx-source
                                                     _stx8259_)))))
                                            (_E82638275_))
                                        (_E82638275_)))))
                              (_E82638275_))))
                      (_E82638275_)))))
          (_E82628302_))))
    (define gx#core-expand-include%__0
      (lambda (_stx8309_)
        (let ((_rpath8311_ '#f))
          (gx#core-expand-include%__% _stx8309_ _rpath8311_))))
    (define gx#core-expand-include%
      (lambda _g9344_
        (let ((_g9343_ (##length _g9344_)))
          (cond ((##fx= _g9343_ 1) (apply gx#core-expand-include%__0 _g9344_))
                ((##fx= _g9343_ 2) (apply gx#core-expand-include%__% _g9344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g9344_))))))
    (define gx#core-apply-expander__%
      (lambda (_K8228_ _stx8229_ _method8230_)
        (if (procedure? _K8228_)
            (let ((_$e8232_ (gx#stx-source _stx8229_)))
              (if _$e8232_
                  ((lambda (_g82348236_)
                     (gx#stx-wrap-source (_K8228_ _stx8229_) _g82348236_))
                   _$e8232_)
                  (_K8228_ _stx8229_)))
            (let ((_$e8239_ (bound-method-ref _K8228_ _method8230_)))
              (if _$e8239_
                  ((lambda (_g82418243_)
                     (gx#core-apply-expander__%
                      _g82418243_
                      _stx8229_
                      _method8230_))
                   _$e8239_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx8229_
                   _method8230_))))))
    (define gx#core-apply-expander__0
      (lambda (_K8249_ _stx8250_)
        (let ((_method8252_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K8249_ _stx8250_ _method8252_))))
    (define gx#core-apply-expander
      (lambda _g9346_
        (let ((_g9345_ (##length _g9346_)))
          (cond ((##fx= _g9345_ 2) (apply gx#core-apply-expander__0 _g9346_))
                ((##fx= _g9345_ 3) (apply gx#core-apply-expander__% _g9346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g9346_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self8224_ _stx8225_)
        (gx#raise-syntax-error '#f '"Bad syntax" _stx8225_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self8077_ _stx8078_)
        (let* ((_self80798085_ _self8077_)
               (_E80818089_
                (lambda () (error '"No clause matching" _self80798085_)))
               (_K80828094_
                (lambda (_K8092_)
                  (gx#core-apply-expander__0 _K8092_ _stx8078_))))
          (if (##structure-instance-of? _self80798085_ 'gx#core-macro::t)
              (let* ((_e80838097_ (##vector-ref _self80798085_ '1))
                     (_K8100_ _e80838097_))
                (_K80828094_ _K8100_))
              (_E80818089_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self7930_ _stx7931_)
        (if (gx#sealed-syntax? _stx7931_)
            _stx7931_
            (let* ((_self79327938_ _self7930_)
                   (_E79347942_
                    (lambda () (error '"No clause matching" _self79327938_)))
                   (_K79357947_
                    (lambda (_K7945_)
                      (gx#core-apply-expander__0 _K7945_ _stx7931_))))
              (if (##structure-instance-of?
                   _self79327938_
                   'gx#core-expander::t)
                  (let* ((_e79367950_ (##vector-ref _self79327938_ '1))
                         (_K7953_ _e79367950_))
                    (_K79357947_ _K7953_))
                  (_E79347942_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self7792_ _stx7793_ _top?7794_)
        (if (_top?7794_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self7792_ _stx7793_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx7793_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self7799_ _stx7800_)
        (let ((_top?7802_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self7799_
           _stx7800_
           _top?7802_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g9348_
        (let ((_g9347_ (##length _g9348_)))
          (cond ((##fx= _g9347_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0 _g9348_))
                ((##fx= _g9347_ 3)
                 (apply gx#top-special-form::apply-macro-expander__% _g9348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g9348_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self7666_ _stx7667_)
        (gx#top-special-form::apply-macro-expander__%
         _self7666_
         _stx7667_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self7491_ _stx7492_)
        (let* ((_self74937499_ _self7491_)
               (_E74957503_
                (lambda () (error '"No clause matching" _self74937499_)))
               (_K74967536_
                (lambda (_id7506_)
                  (let* ((_e75077514_ _stx7492_)
                         (_E75097518_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e75077514_)))
                         (_E75087532_
                          (lambda ()
                            (if (gx#stx-pair? _e75077514_)
                                (let ((_e75107522_ (gx#syntax-e _e75077514_)))
                                  (let ((_hd75117525_ (##car _e75107522_))
                                        (_tl75127527_ (##cdr _e75107522_)))
                                    (let ((_body7530_ _tl75127527_))
                                      (if '#t
                                          (gx#core-cons _id7506_ _body7530_)
                                          (_E75097518_)))))
                                (_E75097518_)))))
                    (_E75087532_)))))
          (if (##structure-instance-of?
               _self74937499_
               'gx#rename-macro-expander::t)
              (let* ((_e74977539_ (##vector-ref _self74937499_ '1))
                     (_id7542_ _e74977539_))
                (_K74967536_ _id7542_))
              (_E74957503_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self7317_ _stx7318_ _method7319_)
        (let* ((_self73207328_ _self7317_)
               (_E73227332_
                (lambda () (error '"No clause matching" _self73207328_)))
               (_K73237339_
                (lambda (_phi7335_ _ctx7336_ _K7337_)
                  (gx#core-apply-user-macro
                   _K7337_
                   _stx7318_
                   _ctx7336_
                   _phi7335_
                   _method7319_))))
          (if (##structure-instance-of? _self73207328_ 'gx#macro-expander::t)
              (let* ((_e73247342_ (##vector-ref _self73207328_ '1))
                     (_K7345_ _e73247342_)
                     (_e73257347_ (##vector-ref _self73207328_ '2))
                     (_ctx7350_ _e73257347_)
                     (_e73267352_ (##vector-ref _self73207328_ '3))
                     (_phi7355_ _e73267352_))
                (_K73237339_ _phi7355_ _ctx7350_ _K7345_))
              (_E73227332_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self7360_ _stx7361_)
        (let ((_method7363_ 'apply-macro-expander))
          (gx#core-apply-user-expander__% _self7360_ _stx7361_ _method7363_))))
    (define gx#core-apply-user-expander
      (lambda _g9350_
        (let ((_g9349_ (##length _g9350_)))
          (cond ((##fx= _g9349_ 2)
                 (apply gx#core-apply-user-expander__0 _g9350_))
                ((##fx= _g9349_ 3)
                 (apply gx#core-apply-user-expander__% _g9350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g9350_))))))
    (define gx#core-apply-user-macro
      (lambda (_K7307_ _stx7308_ _ctx7309_ _phi7310_ _method7311_)
        (let ((_mark7313_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx7309_
                _phi7310_
                _stx7308_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K7307_
               (gx#stx-apply-mark _stx7308_ _mark7313_)
               _method7311_)
              _mark7313_))
           gx#current-expander-marks
           (cons _mark7313_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx7159_ _phi7160_ _ctx7161_)
        (let _lp7163_ ((_bind7165_
                        (gx#core-resolve-identifier__%
                         _stx7159_
                         _phi7160_
                         _ctx7161_)))
          (if (##structure-direct-instance-of?
               _bind7165_
               'gx#import-binding::t)
              (_lp7163_
               (##unchecked-structure-ref
                _bind7165_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind7165_
                   'gx#alias-binding::t)
                  (_lp7163_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind7165_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi7160_
                    _ctx7161_))
                  _bind7165_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx7170_)
        (let* ((_phi7172_ (gx#current-expander-phi))
               (_ctx7174_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx7170_ _phi7172_ _ctx7174_))))
    (define gx#resolve-identifier__1
      (lambda (_stx7176_ _phi7177_)
        (let ((_ctx7179_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx7176_ _phi7177_ _ctx7179_))))
    (define gx#resolve-identifier
      (lambda _g9352_
        (let ((_g9351_ (##length _g9352_)))
          (cond ((##fx= _g9351_ 1) (apply gx#resolve-identifier__0 _g9352_))
                ((##fx= _g9351_ 2) (apply gx#resolve-identifier__1 _g9352_))
                ((##fx= _g9351_ 3) (apply gx#resolve-identifier__% _g9352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g9352_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx7117_ _val7118_ _rebind?7119_ _phi7120_ _ctx7121_)
        (let ((_rebind?7123_
               (if (not _rebind?7119_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?7119_) _rebind?7119_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx7117_)
           _val7118_
           _rebind?7123_
           _phi7120_
           _ctx7121_))))
    (define gx#bind-identifier!__0
      (lambda (_stx7128_ _val7129_)
        (let* ((_rebind?7131_ '#f)
               (_phi7133_ (gx#current-expander-phi))
               (_ctx7135_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7128_
           _val7129_
           _rebind?7131_
           _phi7133_
           _ctx7135_))))
    (define gx#bind-identifier!__1
      (lambda (_stx7137_ _val7138_ _rebind?7139_)
        (let* ((_phi7141_ (gx#current-expander-phi))
               (_ctx7143_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7137_
           _val7138_
           _rebind?7139_
           _phi7141_
           _ctx7143_))))
    (define gx#bind-identifier!__2
      (lambda (_stx7145_ _val7146_ _rebind?7147_ _phi7148_)
        (let ((_ctx7150_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx7145_
           _val7146_
           _rebind?7147_
           _phi7148_
           _ctx7150_))))
    (define gx#bind-identifier!
      (lambda _g9354_
        (let ((_g9353_ (##length _g9354_)))
          (cond ((##fx= _g9353_ 2) (apply gx#bind-identifier!__0 _g9354_))
                ((##fx= _g9353_ 3) (apply gx#bind-identifier!__1 _g9354_))
                ((##fx= _g9353_ 4) (apply gx#bind-identifier!__2 _g9354_))
                ((##fx= _g9353_ 5) (apply gx#bind-identifier!__% _g9354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g9354_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx7089_ _phi7090_ _ctx7091_)
        (let _lp7093_ ((_e7095_ _stx7089_)
                       (_marks7096_ (gx#current-expander-marks)))
          (if (symbol? _e7095_)
              (gx#core-resolve-binding
               _e7095_
               _phi7090_
               _phi7090_
               _ctx7091_
               (reverse _marks7096_))
              (if (gx#identifier-quote? _e7095_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e7095_ '1 gx#AST::t '#f)
                   _phi7090_
                   '0
                   (##unchecked-structure-ref
                    _e7095_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e7095_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e7095_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e7095_ '1 gx#AST::t '#f)
                       _phi7090_
                       _phi7090_
                       _ctx7091_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e7095_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks7096_))
                      (if (##structure-direct-instance-of?
                           _e7095_
                           'gx#syntax-wrap::t)
                          (_lp7093_
                           (##unchecked-structure-ref _e7095_ '1 gx#AST::t '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e7095_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks7096_))
                          (if (##structure-instance-of? _e7095_ 'gerbil#AST::t)
                              (_lp7093_
                               (##unchecked-structure-ref
                                _e7095_
                                '1
                                gx#AST::t
                                '#f)
                               _marks7096_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx7089_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx7101_)
        (let* ((_phi7103_ (gx#current-expander-phi))
               (_ctx7105_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx7101_ _phi7103_ _ctx7105_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx7107_ _phi7108_)
        (let ((_ctx7110_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx7107_ _phi7108_ _ctx7110_))))
    (define gx#core-resolve-identifier
      (lambda _g9356_
        (let ((_g9355_ (##length _g9356_)))
          (cond ((##fx= _g9355_ 1)
                 (apply gx#core-resolve-identifier__0 _g9356_))
                ((##fx= _g9355_ 2)
                 (apply gx#core-resolve-identifier__1 _g9356_))
                ((##fx= _g9355_ 3)
                 (apply gx#core-resolve-identifier__% _g9356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g9356_))))))
    (define gx#core-resolve-binding
      (lambda (_id7002_ _phi7003_ _src-phi7004_ _ctx7005_ _marks7006_)
        (letrec ((_resolve7008_
                  (lambda (_ctx7076_ _src-phi7077_ _key7078_)
                    (let _lp7080_ ((_ctx7082_
                                    (gx#core-context-shift
                                     _ctx7076_
                                     _phi7003_))
                                   (_dphi7083_ (fx- _phi7003_ _src-phi7077_)))
                      (let ((_$e7085_
                             (gx#core-context-resolve _ctx7082_ _key7078_)))
                        (if _$e7085_
                            (values _$e7085_)
                            (if (fxzero? _dphi7083_)
                                '#f
                                (if (fxpositive? _dphi7083_)
                                    (_lp7080_
                                     (gx#core-context-shift _ctx7082_ '-1)
                                     (fx- _dphi7083_ '1))
                                    (_lp7080_
                                     (gx#core-context-shift _ctx7082_ '1)
                                     (fx+ _dphi7083_ '1))))))))))
          (let _lp7010_ ((_ctx7012_ _ctx7005_)
                         (_src-phi7013_ _src-phi7004_)
                         (_rest7014_ _marks7006_))
            (let* ((_rest70157023_ _rest7014_)
                   (_else70177031_
                    (lambda ()
                      (_resolve7008_ _ctx7012_ _src-phi7013_ _id7002_)))
                   (_K70197064_
                    (lambda (_rest7034_ _hd7035_)
                      (let* ((_hd70367042_ _hd7035_)
                             (_E70387046_
                              (lambda ()
                                (error '"No clause matching" _hd70367042_)))
                             (_K70397056_
                              (lambda (_subst7049_)
                                (let ((_$e7053_
                                       (let ((_key7051_
                                              (if _subst7049_
                                                  (table-ref
                                                   _subst7049_
                                                   _id7002_
                                                   '#f)
                                                  '#f)))
                                         (if _key7051_
                                             (_resolve7008_
                                              _ctx7012_
                                              _src-phi7013_
                                              _key7051_)
                                             '#f))))
                                  (if _$e7053_
                                      _$e7053_
                                      (_lp7010_
                                       (##unchecked-structure-ref
                                        _hd7035_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd7035_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest7034_))))))
                        (if (##structure-instance-of?
                             _hd70367042_
                             'gx#expander-mark::t)
                            (let* ((_e70407059_ (##vector-ref _hd70367042_ '1))
                                   (_subst7062_ _e70407059_))
                              (_K70397056_ _subst7062_))
                            (_E70387046_))))))
              (if (##pair? _rest70157023_)
                  (let ((_hd70207067_ (##car _rest70157023_))
                        (_tl70217069_ (##cdr _rest70157023_)))
                    (let* ((_hd7072_ _hd70207067_) (_rest7074_ _tl70217069_))
                      (_K70197064_ _rest7074_ _hd7072_)))
                  (_else70177031_)))))))
    (define gx#core-bind!__%
      (lambda (_key6878_ _val6879_ _rebind?6880_ _phi6881_ _ctx6882_)
        (letrec ((_update-binding6884_
                  (lambda (_xval6955_)
                    (if (or (_rebind?6880_ _ctx6882_ _xval6955_ _val6879_)
                            (and (##structure-direct-instance-of?
                                  _xval6955_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval6955_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val6879_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val6879_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval6955_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val6879_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val6879_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval6955_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val6879_
                        (if (and (##structure-direct-instance-of?
                                  _val6879_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val6879_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval6955_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val6879_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval6955_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval6955_
                            (if (and (##structure-direct-instance-of?
                                      _val6879_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval6955_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key6878_
                                 (cons (##unchecked-structure-ref
                                        _val6879_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val6879_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval6955_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval6955_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval6955_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval6955_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key6878_
                                 _val6879_
                                 _xval6955_))))))
                 (_gensubst6885_
                  (lambda (_subst6950_ _id6951_)
                    (let ((_eid6953_
                           (gensym (if (uninterned-symbol? _id6951_)
                                       '%
                                       _id6951_))))
                      (table-set! _subst6950_ _id6951_ _eid6953_)
                      _eid6953_)))
                 (_subst!6886_
                  (lambda (_key6888_)
                    (let* ((_key68896897_ _key6888_)
                           (_else68916905_ (lambda () _key6888_))
                           (_K68936938_
                            (lambda (_mark6908_ _id6909_)
                              (let* ((_mark69106916_ _mark6908_)
                                     (_E69126920_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark69106916_)))
                                     (_K69136930_
                                      (lambda (_subst6923_)
                                        (if (not _subst6923_)
                                            (let ((_subst6925_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark6908_
                                               _subst6925_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst6885_
                                               _subst6925_
                                               _id6909_))
                                            (let ((_$e6927_
                                                   (table-ref
                                                    _subst6923_
                                                    _id6909_
                                                    '#f)))
                                              (if _$e6927_
                                                  (values _$e6927_)
                                                  (_gensubst6885_
                                                   _subst6923_
                                                   _id6909_)))))))
                                (if (##structure-instance-of?
                                     _mark69106916_
                                     'gx#expander-mark::t)
                                    (let* ((_e69146933_
                                            (##vector-ref _mark69106916_ '1))
                                           (_subst6936_ _e69146933_))
                                      (_K69136930_ _subst6936_))
                                    (_E69126920_))))))
                      (if (##pair? _key68896897_)
                          (let ((_hd68946941_ (##car _key68896897_))
                                (_tl68956943_ (##cdr _key68896897_)))
                            (let* ((_id6946_ _hd68946941_)
                                   (_mark6948_ _tl68956943_))
                              (_K68936938_ _mark6948_ _id6946_)))
                          (_else68916905_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx6882_ _phi6881_)
           (_subst!6886_ _key6878_)
           _val6879_
           _update-binding6884_))))
    (define gx#core-bind!__0
      (lambda (_key6972_ _val6973_)
        (let* ((_rebind?6975_ false)
               (_phi6977_ (gx#current-expander-phi))
               (_ctx6979_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key6972_
           _val6973_
           _rebind?6975_
           _phi6977_
           _ctx6979_))))
    (define gx#core-bind!__1
      (lambda (_key6981_ _val6982_ _rebind?6983_)
        (let* ((_phi6985_ (gx#current-expander-phi))
               (_ctx6987_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key6981_
           _val6982_
           _rebind?6983_
           _phi6985_
           _ctx6987_))))
    (define gx#core-bind!__2
      (lambda (_key6989_ _val6990_ _rebind?6991_ _phi6992_)
        (let ((_ctx6994_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key6989_
           _val6990_
           _rebind?6991_
           _phi6992_
           _ctx6994_))))
    (define gx#core-bind!
      (lambda _g9358_
        (let ((_g9357_ (##length _g9358_)))
          (cond ((##fx= _g9357_ 2) (apply gx#core-bind!__0 _g9358_))
                ((##fx= _g9357_ 3) (apply gx#core-bind!__1 _g9358_))
                ((##fx= _g9357_ 4) (apply gx#core-bind!__2 _g9358_))
                ((##fx= _g9357_ 5) (apply gx#core-bind!__% _g9358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g9358_))))))
    (define gx#core-identifier-key
      (lambda (_stx6812_)
        (if (symbol? _stx6812_)
            (let* ((_g68136821_ (gx#current-expander-marks))
                   (_else68156829_ (lambda () _stx6812_))
                   (_K68176834_ (lambda (_hd6832_) (cons _stx6812_ _hd6832_))))
              (if (##pair? _g68136821_)
                  (let* ((_hd68186837_ (##car _g68136821_))
                         (_hd6840_ _hd68186837_))
                    (_K68176834_ _hd6840_))
                  (_else68156829_)))
            (if (gx#identifier? _stx6812_)
                (let* ((_id6842_ (gx#syntax-local-unwrap _stx6812_))
                       (_eid6844_ (gx#stx-e _id6842_))
                       (_marks6846_ (gx#stx-identifier-marks* _id6842_)))
                  (let* ((_marks68486856_ _marks6846_)
                         (_else68506864_ (lambda () _eid6844_))
                         (_K68526869_
                          (lambda (_hd6867_) (cons _eid6844_ _hd6867_))))
                    (if (##pair? _marks68486856_)
                        (let* ((_hd68536872_ (##car _marks68486856_))
                               (_hd6875_ _hd68536872_))
                          (_K68526869_ _hd6875_))
                        (_else68506864_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx6812_)))))
    (define gx#core-context-shift
      (lambda (_ctx6757_ _phi6758_)
        (letrec ((_make-phi6760_
                  (lambda (_super6810_)
                    (let ((__obj9329 (make-object gx#phi-context::t '5)))
                      (gx#phi-context:::init!__%
                       __obj9329
                       (gensym 'phi)
                       _super6810_)
                      __obj9329)))
                 (_make-phi/up6761_
                  (lambda (_ctx6805_ _super6806_)
                    (let ((_ctx+16808_ (_make-phi6760_ _super6806_)))
                      (##unchecked-structure-set!
                       _ctx6805_
                       _ctx+16808_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+16808_
                       _ctx6805_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+16808_)))
                 (_make-phi/down6762_
                  (lambda (_ctx6800_ _super6801_)
                    (let ((_ctx-16803_ (_make-phi6760_ _super6801_)))
                      (##unchecked-structure-set!
                       _ctx-16803_
                       _ctx6800_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx6800_
                       _ctx-16803_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-16803_)))
                 (_shift6763_
                  (lambda (_ctx6784_
                           _delta6785_
                           _make-delta-context6786_
                           _phi6787_
                           _K6788_)
                    (let ((_$e6790_
                           (##unchecked-structure-ref
                            _ctx6784_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e6790_
                          ((lambda (_super6793_)
                             (let* ((_super6795_
                                     (_K6788_ _super6793_ _delta6785_))
                                    (_ctx+d6797_
                                     (_make-delta-context6786_
                                      _ctx6784_
                                      _super6795_)))
                               (_K6788_ _ctx+d6797_
                                        (fx- _phi6787_ _delta6785_))))
                           _$e6790_)
                          (error '"Bad context" _ctx6784_))))))
          (let _K6765_ ((_ctx6767_ _ctx6757_) (_phi6768_ _phi6758_))
            (if (fxzero? _phi6768_)
                _ctx6767_
                (if (fx> (##vector-length _ctx6767_) '3)
                    (if (fxpositive? _phi6768_)
                        (let ((_$e6770_
                               (##unchecked-structure-ref
                                _ctx6767_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e6770_
                              ((lambda (_g67726774_)
                                 (_K6765_ _g67726774_ (fx- _phi6768_ '1)))
                               _$e6770_)
                              (_shift6763_
                               _ctx6767_
                               '1
                               _make-phi/up6761_
                               _phi6768_
                               _K6765_)))
                        (let ((_$e6777_
                               (##unchecked-structure-ref
                                _ctx6767_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e6777_
                              ((lambda (_g67796781_)
                                 (_K6765_ _g67796781_ (fx+ _phi6768_ '1)))
                               _$e6777_)
                              (_shift6763_
                               _ctx6767_
                               '-1
                               _make-phi/down6762_
                               _phi6768_
                               _K6765_))))
                    _ctx6767_))))))
    (define gx#core-context-get
      (lambda (_ctx6754_ _key6755_)
        (table-ref
         (##unchecked-structure-ref _ctx6754_ '2 gx#expander-context::t '#f)
         _key6755_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx6750_ _key6751_ _val6752_)
        (table-set!
         (##unchecked-structure-ref _ctx6750_ '2 gx#expander-context::t '#f)
         _key6751_
         _val6752_)))
    (define gx#core-context-resolve
      (lambda (_ctx6737_ _key6738_)
        (let _lp6740_ ((_ctx6742_ _ctx6737_))
          (let ((_$e6744_ (gx#core-context-get _ctx6742_ _key6738_)))
            (if _$e6744_
                (values _$e6744_)
                (let ((_$e6747_
                       (if (fx> (##vector-length _ctx6742_) '3)
                           (##unchecked-structure-ref
                            _ctx6742_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e6747_ (_lp6740_ _$e6747_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx6727_ _key6728_ _val6729_ _rebind6730_)
        (let ((_$e6732_ (gx#core-context-get _ctx6727_ _key6728_)))
          (if _$e6732_
              ((lambda (_xval6735_)
                 (gx#core-context-put!
                  _ctx6727_
                  _key6728_
                  (_rebind6730_ _xval6735_)))
               _$e6732_)
              (gx#core-context-put! _ctx6727_ _key6728_ _val6729_)))))
    (define gx#core-context-top__%
      (lambda (_ctx6705_ _stop?6706_)
        (let _lp6708_ ((_ctx6710_ _ctx6705_))
          (if (_stop?6706_ _ctx6710_)
              _ctx6710_
              (if (##structure-instance-of? _ctx6710_ 'gx#context-phi::t)
                  (_lp6708_
                   (##unchecked-structure-ref
                    _ctx6710_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx6716_ (gx#current-expander-context))
               (_stop?6718_ gx#top-context?))
          (gx#core-context-top__% _ctx6716_ _stop?6718_))))
    (define gx#core-context-top__1
      (lambda (_ctx6720_)
        (let ((_stop?6722_ gx#top-context?))
          (gx#core-context-top__% _ctx6720_ _stop?6722_))))
    (define gx#core-context-top
      (lambda _g9360_
        (let ((_g9359_ (##length _g9360_)))
          (cond ((##fx= _g9359_ 0) (apply gx#core-context-top__0 _g9360_))
                ((##fx= _g9359_ 1) (apply gx#core-context-top__1 _g9360_))
                ((##fx= _g9359_ 2) (apply gx#core-context-top__% _g9360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g9360_))))))
    (define gx#core-context-root__%
      (lambda (_ctx6690_)
        (let _lp6692_ ((_ctx6694_ _ctx6690_))
          (if (##structure-instance-of? _ctx6694_ 'gx#context-phi::t)
              (_lp6692_
               (##unchecked-structure-ref _ctx6694_ '3 gx#phi-context::t '#f))
              _ctx6694_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx6700_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx6700_))))
    (define gx#core-context-root
      (lambda _g9362_
        (let ((_g9361_ (##length _g9362_)))
          (cond ((##fx= _g9361_ 0) (apply gx#core-context-root__0 _g9362_))
                ((##fx= _g9361_ 1) (apply gx#core-context-root__% _g9362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g9362_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx6671_ . __66686672_)
        (let ((_$e6675_ (gx#current-expander-allow-rebind?)))
          (if _$e6675_
              _$e6675_
              (if (##structure-instance-of? _ctx6671_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx6671_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx6671_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx6682_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx6682_))))
    (define gx#core-context-rebind?
      (lambda _g9364_
        (let ((_g9363_ (##length _g9364_)))
          (cond ((##fx= _g9363_ 0) (apply gx#core-context-rebind?__0 _g9364_))
                ((##fx= _g9363_ 1) (apply gx#core-context-rebind?__% _g9364_))
                ((##fx>= _g9363_ 1) (apply gx#core-context-rebind?__% _g9364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g9364_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx6654_)
        (let ((_$e6656_ (gx#core-context-top__1 _ctx6654_)))
          (if _$e6656_
              ((lambda (_ctx6659_)
                 (if (##structure-instance-of? _ctx6659_ 'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx6659_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e6656_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx6665_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx6665_))))
    (define gx#core-context-namespace
      (lambda _g9366_
        (let ((_g9365_ (##length _g9366_)))
          (cond ((##fx= _g9365_ 0)
                 (apply gx#core-context-namespace__0 _g9366_))
                ((##fx= _g9365_ 1)
                 (apply gx#core-context-namespace__% _g9366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g9366_))))))
    (define gx#expander-binding?__%
      (lambda (_bind6640_ _is?6641_)
        (if (##structure-direct-instance-of? _bind6640_ 'gx#syntax-binding::t)
            (_is?6641_
             (##unchecked-structure-ref
              _bind6640_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind6646_)
        (let ((_is?6648_ gx#expander?))
          (gx#expander-binding?__% _bind6646_ _is?6648_))))
    (define gx#expander-binding?
      (lambda _g9368_
        (let ((_g9367_ (##length _g9368_)))
          (cond ((##fx= _g9367_ 1) (apply gx#expander-binding?__0 _g9368_))
                ((##fx= _g9367_ 2) (apply gx#expander-binding?__% _g9368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g9368_))))))
    (define gx#core-expander-binding?
      (lambda (_bind6637_)
        (gx#expander-binding?__% _bind6637_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind6635_)
        (gx#expander-binding?__% _bind6635_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind6629_)
        (letrec ((_direct-special-form?6631_
                  (lambda (_obj6633_)
                    (##structure-direct-instance-of?
                     _obj6633_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind6629_ _direct-special-form?6631_))))
    (define gx#special-form-binding?
      (lambda (_bind6627_)
        (gx#expander-binding?__% _bind6627_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind6618_)
        (letrec ((_feature?6620_
                  (lambda (_e6622_)
                    (let ((_$e6624_
                           (##structure-instance-of?
                            _e6622_
                            'gx#feature-expander::t)))
                      (if _$e6624_
                          _$e6624_
                          (##structure-instance-of?
                           _e6622_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind6618_ _feature?6620_))))
    (define gx#private-feature-binding?
      (lambda (_bind6616_)
        (gx#expander-binding?__% _bind6616_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id6603_ _bound?6604_)
        (if (gx#identifier? _id6603_)
            (_bound?6604_ (gx#resolve-identifier__0 _id6603_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id6609_)
        (let ((_bound?6611_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id6609_ _bound?6611_))))
    (define gx#core-bound-identifier?
      (lambda _g9370_
        (let ((_g9369_ (##length _g9370_)))
          (cond ((##fx= _g9369_ 1)
                 (apply gx#core-bound-identifier?__0 _g9370_))
                ((##fx= _g9369_ 2)
                 (apply gx#core-bound-identifier?__% _g9370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g9370_))))))
    (define gx#core-identifier=?
      (lambda (_x6593_ _y6594_)
        (letrec ((_y=?6596_
                  (lambda (_xid6600_)
                    ((if (list? _y6594_) memq eq?) _xid6600_ _y6594_))))
          (let ((_bind6598_ (gx#resolve-identifier__0 _x6593_)))
            (if (##structure-instance-of? _bind6598_ 'gx#binding::t)
                (_y=?6596_
                 (##unchecked-structure-ref _bind6598_ '1 gx#binding::t '#f))
                (_y=?6596_ (gx#stx-e _x6593_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e6591_)
        (if (interned-symbol? _e6591_)
            (string-index (symbol->string _e6591_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx6546_ _src6547_ _ctx6548_ _marks6549_)
        (if (##structure? _stx6546_)
            (let ((_$e6551_ (gx#sealed-syntax-unwrap _stx6546_)))
              (if _$e6551_
                  (values _$e6551_)
                  (if (gx#identifier? _stx6546_)
                      (let ((_id6554_
                             (gx#stx-unwrap__% _stx6546_ _marks6549_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id6554_ '1 gx#AST::t '#f)
                         (let ((_$e6556_
                                (##unchecked-structure-ref
                                 _id6554_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e6556_ _$e6556_ _src6547_))
                         _ctx6548_
                         (##unchecked-structure-ref
                          _id6554_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx6546_)
                       (let ((_$e6559_ (gx#stx-source _stx6546_)))
                         (if _$e6559_ _$e6559_ _src6547_))
                       _ctx6548_
                       (reverse _marks6549_)))))
            (##structure
             gx#syntax-quote::t
             _stx6546_
             _src6547_
             _ctx6548_
             (reverse _marks6549_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx6565_)
        (let* ((_src6567_ '#f)
               (_ctx6569_ (gx#current-expander-context))
               (_marks6571_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx6565_
           _src6567_
           _ctx6569_
           _marks6571_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx6573_ _src6574_)
        (let* ((_ctx6576_ (gx#current-expander-context))
               (_marks6578_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx6573_
           _src6574_
           _ctx6576_
           _marks6578_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx6580_ _src6581_ _ctx6582_)
        (let ((_marks6584_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx6580_
           _src6581_
           _ctx6582_
           _marks6584_))))
    (define gx#core-quote-syntax
      (lambda _g9372_
        (let ((_g9371_ (##length _g9372_)))
          (cond ((##fx= _g9371_ 1) (apply gx#core-quote-syntax__0 _g9372_))
                ((##fx= _g9371_ 2) (apply gx#core-quote-syntax__1 _g9372_))
                ((##fx= _g9371_ 3) (apply gx#core-quote-syntax__2 _g9372_))
                ((##fx= _g9371_ 4) (apply gx#core-quote-syntax__% _g9372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g9372_))))))
    (define gx#core-cons
      (lambda (_hd6542_ _tl6543_)
        (cons (gx#core-quote-syntax__0 _hd6542_) _tl6543_)))
    (define gx#core-list
      (lambda (_hd6539_ . _rest6540_)
        (cons (gx#core-quote-syntax__0 _hd6539_) _rest6540_)))
    (define gx#core-cons*
      (lambda (_hd6536_ . _rest6537_)
        (apply cons* (gx#core-quote-syntax__0 _hd6536_) _rest6537_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path6510_ _rel6511_)
        (let ((_path6523_ (gx#stx-e _stx-path6510_))
              (_reldir6524_
               (let _lp6513_ ((_relsrc6515_
                               (let ((_$e6520_ (gx#stx-source _stx-path6510_)))
                                 (if _$e6520_ _$e6520_ _rel6511_))))
                 (if (##structure-instance-of? _relsrc6515_ 'gerbil#AST::t)
                     (_lp6513_
                      (let ((_$e6517_ (gx#stx-source _relsrc6515_)))
                        (if _$e6517_ _$e6517_ (gx#stx-e _relsrc6515_))))
                     (if (source-location-path? _relsrc6515_)
                         (path-directory (source-location-path _relsrc6515_))
                         (if (string? _relsrc6515_)
                             (path-directory _relsrc6515_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path6523_ (path-normalize _reldir6524_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path6529_)
        (let ((_rel6531_ '#f))
          (gx#core-resolve-path__% _stx-path6529_ _rel6531_))))
    (define gx#core-resolve-path
      (lambda _g9374_
        (let ((_g9373_ (##length _g9374_)))
          (cond ((##fx= _g9373_ 1) (apply gx#core-resolve-path__0 _g9374_))
                ((##fx= _g9373_ 2) (apply gx#core-resolve-path__% _g9374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g9374_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr6466_ _ctx6467_)
        (let* ((_repr64686475_ _repr6466_)
               (_E64706479_
                (lambda () (error '"No clause matching" _repr64686475_)))
               (_K64716487_
                (lambda (_subs6482_ _phi6483_)
                  (let ((_subst6485_
                         (if (not (null? _subs6482_))
                             (list->table _subs6482_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst6485_
                     _ctx6467_
                     _phi6483_
                     '#f)))))
          (if (##pair? _repr64686475_)
              (let ((_hd64726490_ (##car _repr64686475_))
                    (_tl64736492_ (##cdr _repr64686475_)))
                (let* ((_phi6495_ _hd64726490_) (_subs6497_ _tl64736492_))
                  (_K64716487_ _subs6497_ _phi6495_)))
              (_E64706479_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr6502_)
        (let ((_ctx6504_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr6502_ _ctx6504_))))
    (define gx#core-deserialize-mark
      (lambda _g9376_
        (let ((_g9375_ (##length _g9376_)))
          (cond ((##fx= _g9375_ 1) (apply gx#core-deserialize-mark__0 _g9376_))
                ((##fx= _g9375_ 2) (apply gx#core-deserialize-mark__% _g9376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g9376_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx6463_)
        (gx#stx-rewrap _stx6463_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx6461_)
        (gx#stx-unwrap__% _stx6461_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx6431_)
        (let* ((_g64326440_ (gx#current-expander-marks))
               (_else64346448_ (lambda () _stx6431_))
               (_K64366453_
                (lambda (_hd6451_) (gx#stx-apply-mark _stx6431_ _hd6451_))))
          (if (##pair? _g64326440_)
              (let* ((_hd64376456_ (##car _g64326440_))
                     (_hd6459_ _hd64376456_))
                (_K64366453_ _hd6459_))
              (_else64346448_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx6416_ _E6417_)
        (let ((_bind6419_ (gx#resolve-identifier__0 _stx6416_)))
          (if (##structure-direct-instance-of?
               _bind6419_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind6419_
               '4
               gx#syntax-binding::t
               '#f)
              (_E6417_ _stx6416_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx6424_)
        (let ((_E6426_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx6424_ _E6426_))))
    (define gx#syntax-local-e
      (lambda _g9378_
        (let ((_g9377_ (##length _g9378_)))
          (cond ((##fx= _g9377_ 1) (apply gx#syntax-local-e__0 _g9378_))
                ((##fx= _g9377_ 2) (apply gx#syntax-local-e__% _g9378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g9378_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx6400_ _E6401_)
        (let ((_e6403_ (gx#syntax-local-e__% _stx6400_ _E6401_)))
          (if (##structure-instance-of? _e6403_ 'gx#expander::t)
              (##structure-ref _e6403_ '1 gx#expander::t '#f)
              _e6403_))))
    (define gx#syntax-local-value__0
      (lambda (_stx6408_)
        (let ((_E6410_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx6408_ _E6410_))))
    (define gx#syntax-local-value
      (lambda _g9380_
        (let ((_g9379_ (##length _g9380_)))
          (cond ((##fx= _g9379_ 1) (apply gx#syntax-local-value__0 _g9380_))
                ((##fx= _g9379_ 2) (apply gx#syntax-local-value__% _g9380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g9380_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx6397_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx6397_)))))
