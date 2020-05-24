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
  (define gx#expander-context? (make-struct-predicate gx#expander-context::t))
  (define gx#make-expander-context
    (lambda _$args9330_
      (apply make-struct-instance gx#expander-context::t _$args9330_)))
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
    (lambda _$args9327_
      (apply make-struct-instance gx#root-context::t _$args9327_)))
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
    (lambda _$args9324_
      (apply make-struct-instance gx#phi-context::t _$args9324_)))
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
    (lambda _$args9321_
      (apply make-struct-instance gx#top-context::t _$args9321_)))
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
    (lambda _$args9318_
      (apply make-struct-instance gx#module-context::t _$args9318_)))
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
    (lambda _$args9315_
      (apply make-struct-instance gx#prelude-context::t _$args9315_)))
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
    (lambda _$args9312_
      (apply make-struct-instance gx#local-context::t _$args9312_)))
  (define gx#phi-context:::init!__%
    (lambda (_self9296_ _id9297_ _super9298_)
      (if (##fx< '3 (##vector-length _self9296_))
          (begin
            (##vector-set! _self9296_ '1 _id9297_)
            (##vector-set! _self9296_ '2 (make-table 'test: eq?))
            (##vector-set! _self9296_ '3 _super9298_))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self9296_))))
  (define gx#phi-context:::init!__0
    (lambda (_self9303_ _id9304_)
      (let ((_super9306_ (gx#current-expander-context)))
        (gx#phi-context:::init!__% _self9303_ _id9304_ _super9306_))))
  (define gx#phi-context:::init!
    (lambda _g9343_
      (let ((_g9342_ (length _g9343_)))
        (cond ((##fx= _g9342_ 2) (apply gx#phi-context:::init!__0 _g9343_))
              ((##fx= _g9342_ 3) (apply gx#phi-context:::init!__% _g9343_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#phi-context:::init!
                _g9343_))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (define gx#local-context:::init!__%
    (lambda (_self9160_ _super9161_)
      (if (##fx< '3 (##vector-length _self9160_))
          (begin
            (##vector-set! _self9160_ '1 (gensym 'L))
            (##vector-set! _self9160_ '2 (make-table 'test: eq?))
            (##vector-set! _self9160_ '3 _super9161_))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self9160_))))
  (define gx#local-context:::init!__0
    (lambda (_self9166_)
      (let ((_super9168_ (gx#current-expander-context)))
        (gx#local-context:::init!__% _self9166_ _super9168_))))
  (define gx#local-context:::init!
    (lambda _g9345_
      (let ((_g9344_ (length _g9345_)))
        (cond ((##fx= _g9344_ 1) (apply gx#local-context:::init!__0 _g9345_))
              ((##fx= _g9344_ 2) (apply gx#local-context:::init!__% _g9345_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#local-context:::init!
                _g9345_))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args9034_
      (apply make-struct-instance gx#binding::t _$args9034_)))
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
    (lambda _$args9031_
      (apply make-struct-instance gx#runtime-binding::t _$args9031_)))
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
    (lambda _$args9028_
      (apply make-struct-instance gx#local-binding::t _$args9028_)))
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
    (lambda _$args9025_
      (apply make-struct-instance gx#top-binding::t _$args9025_)))
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
    (lambda _$args9022_
      (apply make-struct-instance gx#module-binding::t _$args9022_)))
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
    (lambda _$args9019_
      (apply make-struct-instance gx#extern-binding::t _$args9019_)))
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
    (lambda _$args9016_
      (apply make-struct-instance gx#syntax-binding::t _$args9016_)))
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
    (lambda _$args9013_
      (apply make-struct-instance gx#import-binding::t _$args9013_)))
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
    (lambda _$args9010_
      (apply make-struct-instance gx#alias-binding::t _$args9010_)))
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
    (lambda _$args9007_
      (apply make-struct-instance gx#expander::t _$args9007_)))
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
    (lambda _$args9004_
      (apply make-struct-instance gx#core-expander::t _$args9004_)))
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
    (lambda _$args9001_
      (apply make-struct-instance gx#expression-form::t _$args9001_)))
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
    (lambda _$args8998_
      (apply make-struct-instance gx#special-form::t _$args8998_)))
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
    (lambda _$args8995_
      (apply make-struct-instance gx#definition-form::t _$args8995_)))
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
    (lambda _$args8992_
      (apply make-struct-instance gx#top-special-form::t _$args8992_)))
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
    (lambda _$args8989_
      (apply make-struct-instance gx#module-special-form::t _$args8989_)))
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
    (lambda _$args8986_
      (apply make-struct-instance gx#feature-expander::t _$args8986_)))
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
    (lambda _$args8983_
      (apply make-struct-instance gx#private-feature-expander::t _$args8983_)))
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
    (lambda _$args8980_
      (apply make-struct-instance gx#reserved-expander::t _$args8980_)))
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
    (lambda _$args8977_
      (apply make-struct-instance gx#macro-expander::t _$args8977_)))
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
    (lambda _$args8974_
      (apply make-struct-instance gx#rename-macro-expander::t _$args8974_)))
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
    (lambda _$args8971_
      (apply make-struct-instance gx#user-expander::t _$args8971_)))
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
    (lambda _$args8968_
      (apply make-struct-instance gx#expander-mark::t _$args8968_)))
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
    (lambda _$args8965_
      (apply make-struct-instance gx#syntax-error::t _$args8965_)))
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
    (lambda (_where8960_ _message8961_ _stx8962_ . _details8963_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message8961_
              (cons _stx8962_ _details8963_)
              _where8960_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (define gx#eval-syntax__%
    (lambda (_stx8947_ _expression?8948_)
      (gx#eval-syntax* (gx#core-expand__% _stx8947_ _expression?8948_))))
  (define gx#eval-syntax__0
    (lambda (_stx8953_)
      (let ((_expression?8955_ '#f))
        (gx#eval-syntax__% _stx8953_ _expression?8955_))))
  (define gx#eval-syntax
    (lambda _g9347_
      (let ((_g9346_ (length _g9347_)))
        (cond ((##fx= _g9346_ 1) (apply gx#eval-syntax__0 _g9347_))
              ((##fx= _g9346_ 2) (apply gx#eval-syntax__% _g9347_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#eval-syntax
                _g9347_))))))
  (define gx#eval-syntax*
    (lambda (_stx8944_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx8944_))))
  (define gx#core-expand__%
    (lambda (_stx8931_ _expression?8932_)
      (if _expression?8932_
          (gx#core-expand-expression _stx8931_)
          (gx#core-expand-top _stx8931_))))
  (define gx#core-expand__0
    (lambda (_stx8937_)
      (let ((_expression?8939_ '#f))
        (gx#core-expand__% _stx8937_ _expression?8939_))))
  (define gx#core-expand
    (lambda _g9349_
      (let ((_g9348_ (length _g9349_)))
        (cond ((##fx= _g9348_ 1) (apply gx#core-expand__0 _g9349_))
              ((##fx= _g9348_ 2) (apply gx#core-expand__% _g9349_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand
                _g9349_))))))
  (define gx#core-expand-top
    (lambda (_stx8898_)
      (let* ((_stx8900_ (gx#core-expand*__0 _stx8898_))
             (_e89018908_ _stx8900_)
             (_E89038912_ (lambda () (gx#core-expand-expression _stx8900_)))
             (_E89028926_
              (lambda ()
                (if (gx#stx-pair? _e89018908_)
                    (let ((_e89048916_ (gx#syntax-e _e89018908_)))
                      (let ((_hd89058919_ (##car _e89048916_))
                            (_tl89068921_ (##cdr _e89048916_)))
                        (let ((_form8924_ _hd89058919_))
                          (if (gx#core-bound-identifier?__0 _form8924_)
                              _stx8900_
                              (_E89038912_)))))
                    (_E89038912_)))))
        (_E89028926_))))
  (define gx#core-expand-expression
    (lambda (_stx8845_)
      (letrec ((_sealed-expression?8847_
                (lambda (_hd8868_)
                  (if (gx#sealed-syntax? _hd8868_)
                      (let* ((_e88698876_ _hd8868_)
                             (_E88718880_ (lambda () '#f))
                             (_E88708894_
                              (lambda ()
                                (if (gx#stx-pair? _e88698876_)
                                    (let ((_e88728884_
                                           (gx#syntax-e _e88698876_)))
                                      (let ((_hd88738887_ (##car _e88728884_))
                                            (_tl88748889_ (##cdr _e88728884_)))
                                        (let ((_form8892_ _hd88738887_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form8892_
                                               gx#expression-form-binding?)
                                              (_E88718880_)))))
                                    (_E88718880_)))))
                        (_E88708894_))
                      '#f)))
               (_illegal-expression8848_
                (lambda (_hd8866_ . _g9350_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx8845_
                   _hd8866_)))
               (_expand-e8849_
                (lambda (_form8861_ _hd8862_)
                  (let ((_bind8864_
                         (if (##structure-instance-of?
                              _form8861_
                              'gx#binding::t)
                             _form8861_
                             (gx#resolve-identifier__0 _form8861_))))
                    (if (gx#core-expander-binding? _bind8864_)
                        (gx#core-apply-expander__0
                         (##unchecked-structure-ref
                          _bind8864_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd8862_
                          (gx#stx-source _stx8845_)))
                        (if (##structure-direct-instance-of?
                             _bind8864_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##unchecked-structure-ref
                               _bind8864_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd8862_
                               (gx#stx-source _stx8845_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx8845_
                             _form8861_)))))))
        (let ((_hd8851_ (gx#core-expand-head _stx8845_)))
          (if (_sealed-expression?8847_ _hd8851_)
              _hd8851_
              (if (gx#stx-pair? _hd8851_)
                  (let* ((_form8853_ (gx#stx-car _hd8851_))
                         (_bind8855_
                          (if (gx#identifier? _form8853_)
                              (gx#resolve-identifier__0 _form8853_)
                              '#f)))
                    (if (or (not _bind8855_)
                            (not (gx#core-expander-binding? _bind8855_)))
                        (_expand-e8849_ '%%app (cons '%%app _hd8851_))
                        (if (eq? (##unchecked-structure-ref
                                  _bind8855_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 '%#begin)
                            (gx#core-expand-block*
                             _hd8851_
                             _illegal-expression8848_)
                            (if (gx#expression-form-binding? _bind8855_)
                                (_expand-e8849_ _bind8855_ _hd8851_)
                                (if (gx#direct-special-form-binding?
                                     _bind8855_)
                                    (gx#core-expand-expression
                                     (_expand-e8849_ _bind8855_ _hd8851_))
                                    (_illegal-expression8848_ _hd8851_))))))
                  (if (gx#core-bound-identifier?__0 _hd8851_)
                      (_illegal-expression8848_ _hd8851_)
                      (if (gx#identifier? _hd8851_)
                          (_expand-e8849_
                           '%%ref
                           (cons '%%ref (cons _hd8851_ '())))
                          (if (gx#stx-datum? _hd8851_)
                              (_expand-e8849_
                               '%#quote
                               (cons '%#quote (cons _hd8851_ '())))
                              (_illegal-expression8848_ _hd8851_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx8840_)
      (call-with-parameters
       (lambda ()
         (let ((_stx8843_ (gx#core-expand-expression _stx8840_)))
           (values _stx8843_ (gx#eval-syntax* _stx8843_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gx#core-expand*__%
    (lambda (_stx8821_ _stop?8822_)
      (let _lp8824_ ((_stx8826_ _stx8821_))
        (if (_stop?8822_ _stx8826_)
            _stx8826_
            (let ((_rstx8828_ (gx#core-expand1 _stx8826_)))
              (if (eq? _stx8826_ _rstx8828_)
                  _stx8826_
                  (_lp8824_ _rstx8828_)))))))
  (define gx#core-expand*__0
    (lambda (_stx8833_)
      (let ((_stop?8835_ false)) (gx#core-expand*__% _stx8833_ _stop?8835_))))
  (define gx#core-expand*
    (lambda _g9352_
      (let ((_g9351_ (length _g9352_)))
        (cond ((##fx= _g9351_ 1) (apply gx#core-expand*__0 _g9352_))
              ((##fx= _g9351_ 2) (apply gx#core-expand*__% _g9352_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand*
                _g9352_))))))
  (define gx#core-expand1
    (lambda (_stx8777_)
      (letrec ((_step8779_
                (lambda (_hd8816_)
                  (let ((_bind8818_ (gx#resolve-identifier__0 _hd8816_)))
                    (if (##structure-instance-of?
                         _bind8818_
                         'gx#runtime-binding::t)
                        _stx8777_
                        (if (##structure-direct-instance-of?
                             _bind8818_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _bind8818_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx8777_)
                            (if (not _bind8818_)
                                _stx8777_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx8777_))))))))
        (let* ((_e87808788_ _stx8777_)
               (_E87868792_ (lambda () _stx8777_))
               (_E87828798_
                (lambda ()
                  (let ((_hd8796_ _e87808788_))
                    (if (gx#identifier? _hd8796_)
                        (_step8779_ _hd8796_)
                        (_E87868792_)))))
               (_E87818812_
                (lambda ()
                  (if (gx#stx-pair? _e87808788_)
                      (let ((_e87838802_ (gx#syntax-e _e87808788_)))
                        (let ((_hd87848805_ (##car _e87838802_))
                              (_tl87858807_ (##cdr _e87838802_)))
                          (let ((_hd8810_ _hd87848805_))
                            (if (gx#identifier? _hd8810_)
                                (_step8779_ _hd8810_)
                                (_E87828798_)))))
                      (_E87828798_)))))
          (_E87818812_)))))
  (define gx#core-expand-head
    (lambda (_stx8743_)
      (letrec ((_stop?8745_
                (lambda (_stx8747_)
                  (let* ((_e87488755_ _stx8747_)
                         (_E87508759_ (lambda () '#f))
                         (_E87498773_
                          (lambda ()
                            (if (gx#stx-pair? _e87488755_)
                                (let ((_e87518763_ (gx#syntax-e _e87488755_)))
                                  (let ((_hd87528766_ (##car _e87518763_))
                                        (_tl87538768_ (##cdr _e87518763_)))
                                    (let ((_hd8771_ _hd87528766_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd8771_)
                                          (_E87508759_)))))
                                (_E87508759_)))))
                    (_E87498773_)))))
        (gx#core-expand*__% _stx8743_ _stop?8745_))))
  (define gx#core-expand-block__%
    (lambda (_stx8549_ _expand-special8550_ _begin-form8551_ _expand-e8552_)
      (letrec ((_expand-splice8554_
                (lambda (_hd8717_ _body8718_ _rest8719_ _r8720_)
                  (if (gx#stx-list? _body8718_)
                      (_K8558_ (gx#stx-foldr cons _rest8719_ _body8718_)
                               _r8720_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _stx8549_
                       _hd8717_))))
               (_expand-cond-expand8555_
                (lambda (_hd8713_ _rest8714_ _r8715_)
                  (_K8558_ (cons (gx#core-expand-cond-expand% _hd8713_)
                                 _rest8714_)
                           _r8715_)))
               (_expand-include8556_
                (lambda (_hd8662_ _rest8663_ _r8664_)
                  (let* ((_e86658675_ _hd8662_)
                         (_E86678679_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e86658675_)))
                         (_E86668709_
                          (lambda ()
                            (if (gx#stx-pair? _e86658675_)
                                (let ((_e86688683_ (gx#syntax-e _e86658675_)))
                                  (let ((_hd86698686_ (##car _e86688683_))
                                        (_tl86708688_ (##cdr _e86688683_)))
                                    (if (gx#stx-pair? _tl86708688_)
                                        (let ((_e86718691_
                                               (gx#syntax-e _tl86708688_)))
                                          (let ((_hd86728694_
                                                 (##car _e86718691_))
                                                (_tl86738696_
                                                 (##cdr _e86718691_)))
                                            (let ((_path8699_ _hd86728694_))
                                              (if (gx#stx-null? _tl86738696_)
                                                  (if (gx#stx-string?
                                                       _path8699_)
                                                      (let* ((_rpath8701_
                                                              (gx#core-resolve-path__%
                                                               _path8699_
                                                               (gx#stx-source
                                                                _hd8662_)))
                                                             (_block8703_
                                                              (gx#core-expand-include%__%
                                                               _hd8662_
                                                               _rpath8701_))
                                                             (_rbody8706_
                                                              (call-with-parameters
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-expand-block__%
                          _block8703_
                          _expand-special8550_
                          '#f
                          _expand-e8552_))
                       gx#current-expander-path
                       (cons _rpath8701_ (gx#current-expander-path)))))
                (_K8558_ _rest8663_ (foldr1 cons _r8664_ _rbody8706_)))
              (_E86678679_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86678679_)))))
                                        (_E86678679_))))
                                (_E86678679_)))))
                    (_E86668709_))))
               (_expand-expression8557_
                (lambda (_hd8658_ _rest8659_ _r8660_)
                  (_K8558_ _rest8659_
                           (cons (_expand-e8552_ _hd8658_) _r8660_))))
               (_K8558_ (lambda (_rest8588_ _r8589_)
                          (let* ((_e85908597_ _rest8588_)
                                 (_E85928601_
                                  (lambda ()
                                    (if _begin-form8551_
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons
                                          _begin-form8551_
                                          (reverse _r8589_))
                                         (gx#stx-source _stx8549_))
                                        _r8589_)))
                                 (_E85918654_
                                  (lambda ()
                                    (if (gx#stx-pair? _e85908597_)
                                        (let ((_e85938605_
                                               (gx#syntax-e _e85908597_)))
                                          (let ((_hd85948608_
                                                 (##car _e85938605_))
                                                (_tl85958610_
                                                 (##cdr _e85938605_)))
                                            (let* ((_hd8613_ _hd85948608_)
                                                   (_rest8615_ _tl85958610_))
                                              (if '#t
                                                  (let* ((_hd8617_
                                                          (gx#core-expand-head
                                                           _hd8613_))
                                                         (_e86188625_ _hd8617_)
                                                         (_E86208629_
                                                          (lambda ()
                                                            (_expand-expression8557_
                                                             _hd8617_
                                                             _rest8615_
                                                             _r8589_)))
                                                         (_E86198650_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e86188625_)
                        (let ((_e86218633_ (gx#syntax-e _e86188625_)))
                          (let ((_hd86228636_ (##car _e86218633_))
                                (_tl86238638_ (##cdr _e86218633_)))
                            (let* ((_form8641_ _hd86228636_)
                                   (_body8643_ _tl86238638_))
                              (if '#t
                                  (let ((_bind8645_
                                         (if (gx#identifier? _form8641_)
                                             (gx#resolve-identifier__0
                                              _form8641_)
                                             '#f)))
                                    (if (gx#special-form-binding? _bind8645_)
                                        (let ((_$e8647_
                                               (##unchecked-structure-ref
                                                _bind8645_
                                                '1
                                                gx#binding::t
                                                '#f)))
                                          (if (eq? '%#begin _$e8647_)
                                              (_expand-splice8554_
                                               _hd8617_
                                               _body8643_
                                               _rest8615_
                                               _r8589_)
                                              (if (eq? '%#cond-expand _$e8647_)
                                                  (_expand-cond-expand8555_
                                                   _hd8617_
                                                   _rest8615_
                                                   _r8589_)
                                                  (if (eq? '%#include _$e8647_)
                                                      (_expand-include8556_
                                                       _hd8617_
                                                       _rest8615_
                                                       _r8589_)
                                                      (_expand-special8550_
                                                       _hd8617_
                                                       _K8558_
                                                       _rest8615_
                                                       _r8589_)))))
                                        (_expand-expression8557_
                                         _hd8617_
                                         _rest8615_
                                         _r8589_)))
                                  (_E86208629_)))))
                        (_E86208629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E86198650_))
                                                  (_E85928601_)))))
                                        (_E85928601_)))))
                            (_E85918654_)))))
        (let* ((_e85598566_ _stx8549_)
               (_E85618570_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e85598566_)))
               (_E85608584_
                (lambda ()
                  (if (gx#stx-pair? _e85598566_)
                      (let ((_e85628574_ (gx#syntax-e _e85598566_)))
                        (let ((_hd85638577_ (##car _e85628574_))
                              (_tl85648579_ (##cdr _e85628574_)))
                          (let ((_body8582_ _tl85648579_))
                            (if (gx#stx-list? _body8582_)
                                (_K8558_ _body8582_ '())
                                (_E85618570_)))))
                      (_E85618570_)))))
          (_E85608584_)))))
  (define gx#core-expand-block__0
    (lambda (_stx8725_ _expand-special8726_)
      (let* ((_begin-form8728_ '%#begin)
             (_expand-e8730_ gx#core-expand-expression))
        (gx#core-expand-block__%
         _stx8725_
         _expand-special8726_
         _begin-form8728_
         _expand-e8730_))))
  (define gx#core-expand-block__1
    (lambda (_stx8732_ _expand-special8733_ _begin-form8734_)
      (let ((_expand-e8736_ gx#core-expand-expression))
        (gx#core-expand-block__%
         _stx8732_
         _expand-special8733_
         _begin-form8734_
         _expand-e8736_))))
  (define gx#core-expand-block
    (lambda _g9354_
      (let ((_g9353_ (length _g9354_)))
        (cond ((##fx= _g9353_ 2) (apply gx#core-expand-block__0 _g9354_))
              ((##fx= _g9353_ 3) (apply gx#core-expand-block__1 _g9354_))
              ((##fx= _g9353_ 4) (apply gx#core-expand-block__% _g9354_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-block
                _g9354_))))))
  (define gx#core-expand-block*
    (lambda (_stx8497_ _expand-special8498_)
      (let* ((_g84998510_
              (gx#core-expand-block__1 _stx8497_ _expand-special8498_ '#f))
             (_E85038514_
              (lambda () (error '"No clause matching" _g84998510_))))
        (let ((_K85088545_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx8497_)))
              (_K85058531_ (lambda (_expr8529_) _expr8529_))
              (_K85048520_
               (lambda (_body8518_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body8518_))
                  (gx#stx-source _stx8497_)))))
          (let ((_try-match85018541_
                 (lambda ()
                   (if (##pair? _g84998510_)
                       (let ((_tl85078536_ (##cdr _g84998510_))
                             (_hd85068534_ (##car _g84998510_)))
                         (if (##null? _tl85078536_)
                             (let ((_expr8539_ _hd85068534_))
                               (_K85058531_ _expr8539_))
                             (let ((_body8523_ _g84998510_))
                               (_K85048520_ _body8523_))))
                       (let ((_body8523_ _g84998510_))
                         (_K85048520_ _body8523_))))))
            (if (##null? _g84998510_) (_K85088545_) (_try-match85018541_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx8325_)
      (letrec ((_satisfied?8327_
                (lambda (_condition8425_)
                  (let* ((_e84268441_ _condition8425_)
                         (_E84368445_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e84268441_)))
                         (_E84298464_
                          (lambda ()
                            (if (gx#stx-pair? _e84268441_)
                                (let ((_e84378449_ (gx#syntax-e _e84268441_)))
                                  (let ((_hd84388452_ (##car _e84378449_))
                                        (_tl84398454_ (##cdr _e84378449_)))
                                    (let* ((_combinator8457_ _hd84388452_)
                                           (_body8459_ _tl84398454_))
                                      (if (gx#stx-list? _body8459_)
                                          (let ((_$e8461_
                                                 (gx#stx-e _combinator8457_)))
                                            (if (eq? 'not _$e8461_)
                                                (not (gx#stx-ormap
                                                      _satisfied?8327_
                                                      _body8459_))
                                                (if (eq? 'and _$e8461_)
                                                    (gx#stx-andmap
                                                     _satisfied?8327_
                                                     _body8459_)
                                                    (if (eq? 'or _$e8461_)
                                                        (gx#stx-ormap
                                                         _satisfied?8327_
                                                         _body8459_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e8461_)
                    (gx#stx-andmap gx#core-resolve-identifier _body8459_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx8325_
                     _combinator8457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E84368445_)))))
                                (_E84368445_))))
                         (_E84288487_
                          (lambda ()
                            (if (gx#stx-pair? _e84268441_)
                                (let ((_e84308468_ (gx#syntax-e _e84268441_)))
                                  (let ((_hd84318471_ (##car _e84308468_))
                                        (_tl84328473_ (##cdr _e84308468_)))
                                    (if (and (gx#identifier? _hd84318471_)
                                             (gx#core-identifier=?
                                              _hd84318471_
                                              'unquote))
                                        (if (gx#stx-pair? _tl84328473_)
                                            (let ((_e84338476_
                                                   (gx#syntax-e _tl84328473_)))
                                              (let ((_hd84348479_
                                                     (##car _e84338476_))
                                                    (_tl84358481_
                                                     (##cdr _e84338476_)))
                                                (let ((_expr8484_
                                                       _hd84348479_))
                                                  (if (gx#stx-null?
                                                       _tl84358481_)
                                                      (if '#t
                                                          (call-with-parameters
                                                           (lambda ()
                                                             (gx#eval-syntax__0
                                                              _expr8484_))
                                                           gx#current-expander-phi
                                                           (fx+ (gx#current-expander-phi)
                                                                '1))
                                                          (_E84298464_))
                                                      (_E84298464_)))))
                                            (_E84298464_))
                                        (_E84298464_))))
                                (_E84298464_))))
                         (_E84278493_
                          (lambda ()
                            (let ((_id8491_ _e84268441_))
                              (if (gx#identifier? _id8491_)
                                  (gx#core-bound-identifier?__%
                                   _id8491_
                                   gx#feature-binding?)
                                  (_E84288487_))))))
                    (_E84278493_))))
               (_loop8328_
                (lambda (_rest8358_)
                  (let* ((_e83598367_ _rest8358_)
                         (_E83658371_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e83598367_)))
                         (_E83618375_
                          (lambda ()
                            (if (gx#stx-null? _e83598367_)
                                (if '#t '() (_E83658371_))
                                (_E83658371_))))
                         (_E83608421_
                          (lambda ()
                            (if (gx#stx-pair? _e83598367_)
                                (let ((_e83628379_ (gx#syntax-e _e83598367_)))
                                  (let ((_hd83638382_ (##car _e83628379_))
                                        (_tl83648384_ (##cdr _e83628379_)))
                                    (let* ((_hd8387_ _hd83638382_)
                                           (_rest8389_ _tl83648384_))
                                      (if '#t
                                          (let* ((_e83908397_ _hd8387_)
                                                 (_E83928401_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e83908397_)))
                                                 (_E83918417_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e83908397_)
                                                        (let ((_e83938405_
                                                               (gx#syntax-e
                                                                _e83908397_)))
                                                          (let ((_hd83948408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e83938405_))
                        (_tl83958410_ (##cdr _e83938405_)))
                    (let* ((_condition8413_ _hd83948408_)
                           (_body8415_ _tl83958410_))
                      (if '#t
                          (if (gx#stx-eq? _condition8413_ 'else)
                              (if (gx#stx-null? _rest8389_)
                                  _body8415_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx8325_
                                   _hd8387_))
                              (if (_satisfied?8327_ _condition8413_)
                                  _body8415_
                                  (_loop8328_ _rest8389_)))
                          (_E83928401_)))))
                (_E83928401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E83918417_))
                                          (_E83618375_)))))
                                (_E83618375_)))))
                    (_E83608421_)))))
        (let* ((_e83298336_ _stx8325_)
               (_E83318340_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e83298336_)))
               (_E83308354_
                (lambda ()
                  (if (gx#stx-pair? _e83298336_)
                      (let ((_e83328344_ (gx#syntax-e _e83298336_)))
                        (let ((_hd83338347_ (##car _e83328344_))
                              (_tl83348349_ (##cdr _e83328344_)))
                          (let ((_clauses8352_ _tl83348349_))
                            (if (gx#stx-list? _clauses8352_)
                                (gx#core-cons
                                 'begin
                                 (_loop8328_ _clauses8352_))
                                (_E83318340_)))))
                      (_E83318340_)))))
          (_E83308354_)))))
  (define gx#core-expand-include%__%
    (lambda (_stx8268_ _rpath8269_)
      (let* ((_e82708280_ _stx8268_)
             (_E82728284_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e82708280_)))
             (_E82718311_
              (lambda ()
                (if (gx#stx-pair? _e82708280_)
                    (let ((_e82738288_ (gx#syntax-e _e82708280_)))
                      (let ((_hd82748291_ (##car _e82738288_))
                            (_tl82758293_ (##cdr _e82738288_)))
                        (if (gx#stx-pair? _tl82758293_)
                            (let ((_e82768296_ (gx#syntax-e _tl82758293_)))
                              (let ((_hd82778299_ (##car _e82768296_))
                                    (_tl82788301_ (##cdr _e82768296_)))
                                (let ((_path8304_ _hd82778299_))
                                  (if (gx#stx-null? _tl82788301_)
                                      (if (gx#stx-string? _path8304_)
                                          (let ((_rpath8309_
                                                 (let ((_$e8306_ _rpath8269_))
                                                   (if _$e8306_
                                                       _$e8306_
                                                       (gx#core-resolve-path__%
                                                        _path8304_
                                                        (gx#stx-source
                                                         _stx8268_))))))
                                            (if (member _rpath8309_
                                                        (gx#current-expander-path))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; cyclic expansion"
                                                 _stx8268_)
                                                (gx#syntax-local-rewrap
                                                 (gx#stx-wrap-source
                                                  (gx#core-cons
                                                   'begin
                                                   (read-syntax-from-file
                                                    _rpath8309_))
                                                  (gx#stx-source _stx8268_)))))
                                          (_E82728284_))
                                      (_E82728284_)))))
                            (_E82728284_))))
                    (_E82728284_)))))
        (_E82718311_))))
  (define gx#core-expand-include%__0
    (lambda (_stx8318_)
      (let ((_rpath8320_ '#f))
        (gx#core-expand-include%__% _stx8318_ _rpath8320_))))
  (define gx#core-expand-include%
    (lambda _g9356_
      (let ((_g9355_ (length _g9356_)))
        (cond ((##fx= _g9355_ 1) (apply gx#core-expand-include%__0 _g9356_))
              ((##fx= _g9355_ 2) (apply gx#core-expand-include%__% _g9356_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-include%
                _g9356_))))))
  (define gx#core-apply-expander__%
    (lambda (_K8237_ _stx8238_ _method8239_)
      (if (procedure? _K8237_)
          (let ((_$e8241_ (gx#stx-source _stx8238_)))
            (if _$e8241_
                ((lambda (_g82438245_)
                   (gx#stx-wrap-source (_K8237_ _stx8238_) _g82438245_))
                 _$e8241_)
                (_K8237_ _stx8238_)))
          (let ((_$e8248_ (bound-method-ref _K8237_ _method8239_)))
            (if _$e8248_
                ((lambda (_g82508252_)
                   (gx#core-apply-expander__%
                    _g82508252_
                    _stx8238_
                    _method8239_))
                 _$e8248_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax"
                 _stx8238_
                 _method8239_))))))
  (define gx#core-apply-expander__0
    (lambda (_K8258_ _stx8259_)
      (let ((_method8261_ 'apply-macro-expander))
        (gx#core-apply-expander__% _K8258_ _stx8259_ _method8261_))))
  (define gx#core-apply-expander
    (lambda _g9358_
      (let ((_g9357_ (length _g9358_)))
        (cond ((##fx= _g9357_ 2) (apply gx#core-apply-expander__0 _g9358_))
              ((##fx= _g9357_ 3) (apply gx#core-apply-expander__% _g9358_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-apply-expander
                _g9358_))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self8233_ _stx8234_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx8234_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self8086_ _stx8087_)
      (let* ((_self80888094_ _self8086_)
             (_E80908098_
              (lambda () (error '"No clause matching" _self80888094_)))
             (_K80918103_
              (lambda (_K8101_)
                (gx#core-apply-expander__0 _K8101_ _stx8087_))))
        (if (##structure-instance-of? _self80888094_ 'gx#core-macro::t)
            (let* ((_e80928106_ (##vector-ref _self80888094_ '1))
                   (_K8109_ _e80928106_))
              (_K80918103_ _K8109_))
            (_E80908098_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self7939_ _stx7940_)
      (if (gx#sealed-syntax? _stx7940_)
          _stx7940_
          (let* ((_self79417947_ _self7939_)
                 (_E79437951_
                  (lambda () (error '"No clause matching" _self79417947_)))
                 (_K79447956_
                  (lambda (_K7954_)
                    (gx#core-apply-expander__0 _K7954_ _stx7940_))))
            (if (##structure-instance-of? _self79417947_ 'gx#core-expander::t)
                (let* ((_e79457959_ (##vector-ref _self79417947_ '1))
                       (_K7962_ _e79457959_))
                  (_K79447956_ _K7962_))
                (_E79437951_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (define gx#top-special-form::apply-macro-expander__%
    (lambda (_self7801_ _stx7802_ _top?7803_)
      (if (_top?7803_ (gx#current-expander-context))
          (gx#core-expander::apply-macro-expander _self7801_ _stx7802_)
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; illegal context"
           _stx7802_))))
  (define gx#top-special-form::apply-macro-expander__0
    (lambda (_self7808_ _stx7809_)
      (let ((_top?7811_ gx#top-context?))
        (gx#top-special-form::apply-macro-expander__%
         _self7808_
         _stx7809_
         _top?7811_))))
  (define gx#top-special-form::apply-macro-expander
    (lambda _g9360_
      (let ((_g9359_ (length _g9360_)))
        (cond ((##fx= _g9359_ 2)
               (apply gx#top-special-form::apply-macro-expander__0 _g9360_))
              ((##fx= _g9359_ 3)
               (apply gx#top-special-form::apply-macro-expander__% _g9360_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#top-special-form::apply-macro-expander
                _g9360_))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self7675_ _stx7676_)
      (gx#top-special-form::apply-macro-expander__%
       _self7675_
       _stx7676_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self7500_ _stx7501_)
      (let* ((_self75027508_ _self7500_)
             (_E75047512_
              (lambda () (error '"No clause matching" _self75027508_)))
             (_K75057545_
              (lambda (_id7515_)
                (let* ((_e75167523_ _stx7501_)
                       (_E75187527_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e75167523_)))
                       (_E75177541_
                        (lambda ()
                          (if (gx#stx-pair? _e75167523_)
                              (let ((_e75197531_ (gx#syntax-e _e75167523_)))
                                (let ((_hd75207534_ (##car _e75197531_))
                                      (_tl75217536_ (##cdr _e75197531_)))
                                  (let ((_body7539_ _tl75217536_))
                                    (if '#t
                                        (gx#core-cons _id7515_ _body7539_)
                                        (_E75187527_)))))
                              (_E75187527_)))))
                  (_E75177541_)))))
        (if (##structure-instance-of?
             _self75027508_
             'gx#rename-macro-expander::t)
            (let* ((_e75067548_ (##vector-ref _self75027508_ '1))
                   (_id7551_ _e75067548_))
              (_K75057545_ _id7551_))
            (_E75047512_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (define gx#core-apply-user-expander__%
    (lambda (_self7326_ _stx7327_ _method7328_)
      (let* ((_self73297337_ _self7326_)
             (_E73317341_
              (lambda () (error '"No clause matching" _self73297337_)))
             (_K73327348_
              (lambda (_phi7344_ _ctx7345_ _K7346_)
                (gx#core-apply-user-macro
                 _K7346_
                 _stx7327_
                 _ctx7345_
                 _phi7344_
                 _method7328_))))
        (if (##structure-instance-of? _self73297337_ 'gx#macro-expander::t)
            (let* ((_e73337351_ (##vector-ref _self73297337_ '1))
                   (_K7354_ _e73337351_)
                   (_e73347356_ (##vector-ref _self73297337_ '2))
                   (_ctx7359_ _e73347356_)
                   (_e73357361_ (##vector-ref _self73297337_ '3))
                   (_phi7364_ _e73357361_))
              (_K73327348_ _phi7364_ _ctx7359_ _K7354_))
            (_E73317341_)))))
  (define gx#core-apply-user-expander__0
    (lambda (_self7369_ _stx7370_)
      (let ((_method7372_ 'apply-macro-expander))
        (gx#core-apply-user-expander__% _self7369_ _stx7370_ _method7372_))))
  (define gx#core-apply-user-expander
    (lambda _g9362_
      (let ((_g9361_ (length _g9362_)))
        (cond ((##fx= _g9361_ 2)
               (apply gx#core-apply-user-expander__0 _g9362_))
              ((##fx= _g9361_ 3)
               (apply gx#core-apply-user-expander__% _g9362_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-apply-user-expander
                _g9362_))))))
  (define gx#core-apply-user-macro
    (lambda (_K7316_ _stx7317_ _ctx7318_ _phi7319_ _method7320_)
      (let ((_mark7322_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx7318_
              _phi7319_
              _stx7317_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__%
             _K7316_
             (gx#stx-apply-mark _stx7317_ _mark7322_)
             _method7320_)
            _mark7322_))
         gx#current-expander-marks
         (cons _mark7322_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (define gx#resolve-identifier__%
    (lambda (_stx7168_ _phi7169_ _ctx7170_)
      (let _lp7172_ ((_bind7174_
                      (gx#core-resolve-identifier__%
                       _stx7168_
                       _phi7169_
                       _ctx7170_)))
        (if (##structure-direct-instance-of? _bind7174_ 'gx#import-binding::t)
            (_lp7172_
             (##unchecked-structure-ref
              _bind7174_
              '4
              gx#import-binding::t
              '#f))
            (if (##structure-direct-instance-of?
                 _bind7174_
                 'gx#alias-binding::t)
                (_lp7172_
                 (gx#core-resolve-identifier__%
                  (##unchecked-structure-ref
                   _bind7174_
                   '4
                   gx#alias-binding::t
                   '#f)
                  _phi7169_
                  _ctx7170_))
                _bind7174_)))))
  (define gx#resolve-identifier__0
    (lambda (_stx7179_)
      (let* ((_phi7181_ (gx#current-expander-phi))
             (_ctx7183_ (gx#current-expander-context)))
        (gx#resolve-identifier__% _stx7179_ _phi7181_ _ctx7183_))))
  (define gx#resolve-identifier__1
    (lambda (_stx7185_ _phi7186_)
      (let ((_ctx7188_ (gx#current-expander-context)))
        (gx#resolve-identifier__% _stx7185_ _phi7186_ _ctx7188_))))
  (define gx#resolve-identifier
    (lambda _g9364_
      (let ((_g9363_ (length _g9364_)))
        (cond ((##fx= _g9363_ 1) (apply gx#resolve-identifier__0 _g9364_))
              ((##fx= _g9363_ 2) (apply gx#resolve-identifier__1 _g9364_))
              ((##fx= _g9363_ 3) (apply gx#resolve-identifier__% _g9364_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#resolve-identifier
                _g9364_))))))
  (define gx#bind-identifier!__%
    (lambda (_stx7126_ _val7127_ _rebind?7128_ _phi7129_ _ctx7130_)
      (let ((_rebind?7132_
             (if (not _rebind?7128_)
                 gx#core-context-rebind?
                 (if (procedure? _rebind?7128_) _rebind?7128_ true))))
        (gx#core-bind!__%
         (gx#core-identifier-key _stx7126_)
         _val7127_
         _rebind?7132_
         _phi7129_
         _ctx7130_))))
  (define gx#bind-identifier!__0
    (lambda (_stx7137_ _val7138_)
      (let* ((_rebind?7140_ '#f)
             (_phi7142_ (gx#current-expander-phi))
             (_ctx7144_ (gx#current-expander-context)))
        (gx#bind-identifier!__%
         _stx7137_
         _val7138_
         _rebind?7140_
         _phi7142_
         _ctx7144_))))
  (define gx#bind-identifier!__1
    (lambda (_stx7146_ _val7147_ _rebind?7148_)
      (let* ((_phi7150_ (gx#current-expander-phi))
             (_ctx7152_ (gx#current-expander-context)))
        (gx#bind-identifier!__%
         _stx7146_
         _val7147_
         _rebind?7148_
         _phi7150_
         _ctx7152_))))
  (define gx#bind-identifier!__2
    (lambda (_stx7154_ _val7155_ _rebind?7156_ _phi7157_)
      (let ((_ctx7159_ (gx#current-expander-context)))
        (gx#bind-identifier!__%
         _stx7154_
         _val7155_
         _rebind?7156_
         _phi7157_
         _ctx7159_))))
  (define gx#bind-identifier!
    (lambda _g9366_
      (let ((_g9365_ (length _g9366_)))
        (cond ((##fx= _g9365_ 2) (apply gx#bind-identifier!__0 _g9366_))
              ((##fx= _g9365_ 3) (apply gx#bind-identifier!__1 _g9366_))
              ((##fx= _g9365_ 4) (apply gx#bind-identifier!__2 _g9366_))
              ((##fx= _g9365_ 5) (apply gx#bind-identifier!__% _g9366_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#bind-identifier!
                _g9366_))))))
  (define gx#core-resolve-identifier__%
    (lambda (_stx7098_ _phi7099_ _ctx7100_)
      (let _lp7102_ ((_e7104_ _stx7098_)
                     (_marks7105_ (gx#current-expander-marks)))
        (if (symbol? _e7104_)
            (gx#core-resolve-binding
             _e7104_
             _phi7099_
             _phi7099_
             _ctx7100_
             (reverse _marks7105_))
            (if (gx#identifier-quote? _e7104_)
                (gx#core-resolve-binding
                 (##unchecked-structure-ref _e7104_ '1 AST::t '#f)
                 _phi7099_
                 '0
                 (##unchecked-structure-ref _e7104_ '3 gx#syntax-quote::t '#f)
                 (##unchecked-structure-ref _e7104_ '4 gx#syntax-quote::t '#f))
                (if (##structure-direct-instance-of?
                     _e7104_
                     'gx#identifier-wrap::t)
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _e7104_ '1 AST::t '#f)
                     _phi7099_
                     _phi7099_
                     _ctx7100_
                     (foldl1 gx#apply-mark
                             (##unchecked-structure-ref
                              _e7104_
                              '3
                              gx#identifier-wrap::t
                              '#f)
                             _marks7105_))
                    (if (##structure-direct-instance-of?
                         _e7104_
                         'gx#syntax-wrap::t)
                        (_lp7102_
                         (##unchecked-structure-ref _e7104_ '1 AST::t '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref
                           _e7104_
                           '3
                           gx#syntax-wrap::t
                           '#f)
                          _marks7105_))
                        (if (##structure-instance-of? _e7104_ 'gerbil#AST::t)
                            (_lp7102_
                             (##unchecked-structure-ref _e7104_ '1 AST::t '#f)
                             _marks7105_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad identifier"
                             _stx7098_)))))))))
  (define gx#core-resolve-identifier__0
    (lambda (_stx7110_)
      (let* ((_phi7112_ (gx#current-expander-phi))
             (_ctx7114_ (gx#current-expander-context)))
        (gx#core-resolve-identifier__% _stx7110_ _phi7112_ _ctx7114_))))
  (define gx#core-resolve-identifier__1
    (lambda (_stx7116_ _phi7117_)
      (let ((_ctx7119_ (gx#current-expander-context)))
        (gx#core-resolve-identifier__% _stx7116_ _phi7117_ _ctx7119_))))
  (define gx#core-resolve-identifier
    (lambda _g9368_
      (let ((_g9367_ (length _g9368_)))
        (cond ((##fx= _g9367_ 1) (apply gx#core-resolve-identifier__0 _g9368_))
              ((##fx= _g9367_ 2) (apply gx#core-resolve-identifier__1 _g9368_))
              ((##fx= _g9367_ 3) (apply gx#core-resolve-identifier__% _g9368_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-resolve-identifier
                _g9368_))))))
  (define gx#core-resolve-binding
    (lambda (_id7011_ _phi7012_ _src-phi7013_ _ctx7014_ _marks7015_)
      (letrec ((_resolve7017_
                (lambda (_ctx7085_ _src-phi7086_ _key7087_)
                  (let _lp7089_ ((_ctx7091_
                                  (gx#core-context-shift _ctx7085_ _phi7012_))
                                 (_dphi7092_ (fx- _phi7012_ _src-phi7086_)))
                    (let ((_$e7094_
                           (gx#core-context-resolve _ctx7091_ _key7087_)))
                      (if _$e7094_
                          (values _$e7094_)
                          (if (fxzero? _dphi7092_)
                              '#f
                              (if (fxpositive? _dphi7092_)
                                  (_lp7089_
                                   (gx#core-context-shift _ctx7091_ '-1)
                                   (fx- _dphi7092_ '1))
                                  (_lp7089_
                                   (gx#core-context-shift _ctx7091_ '1)
                                   (fx+ _dphi7092_ '1))))))))))
        (let _lp7019_ ((_ctx7021_ _ctx7014_)
                       (_src-phi7022_ _src-phi7013_)
                       (_rest7023_ _marks7015_))
          (let* ((_rest70247032_ _rest7023_)
                 (_else70267040_
                  (lambda () (_resolve7017_ _ctx7021_ _src-phi7022_ _id7011_)))
                 (_K70287073_
                  (lambda (_rest7043_ _hd7044_)
                    (let* ((_hd70457051_ _hd7044_)
                           (_E70477055_
                            (lambda ()
                              (error '"No clause matching" _hd70457051_)))
                           (_K70487065_
                            (lambda (_subst7058_)
                              (let ((_$e7062_
                                     (let ((_key7060_
                                            (if _subst7058_
                                                (table-ref
                                                 _subst7058_
                                                 _id7011_
                                                 '#f)
                                                '#f)))
                                       (if _key7060_
                                           (_resolve7017_
                                            _ctx7021_
                                            _src-phi7022_
                                            _key7060_)
                                           '#f))))
                                (if _$e7062_
                                    _$e7062_
                                    (_lp7019_
                                     (##unchecked-structure-ref
                                      _hd7044_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##unchecked-structure-ref
                                      _hd7044_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest7043_))))))
                      (if (##structure-instance-of?
                           _hd70457051_
                           'gx#expander-mark::t)
                          (let* ((_e70497068_ (##vector-ref _hd70457051_ '1))
                                 (_subst7071_ _e70497068_))
                            (_K70487065_ _subst7071_))
                          (_E70477055_))))))
            (if (##pair? _rest70247032_)
                (let ((_hd70297076_ (##car _rest70247032_))
                      (_tl70307078_ (##cdr _rest70247032_)))
                  (let* ((_hd7081_ _hd70297076_) (_rest7083_ _tl70307078_))
                    (_K70287073_ _rest7083_ _hd7081_)))
                (_else70267040_)))))))
  (define gx#core-bind!__%
    (lambda (_key6887_ _val6888_ _rebind?6889_ _phi6890_ _ctx6891_)
      (letrec ((_update-binding6893_
                (lambda (_xval6964_)
                  (if (or (_rebind?6889_ _ctx6891_ _xval6964_ _val6888_)
                          (and (##structure-direct-instance-of?
                                _xval6964_
                                'gx#import-binding::t)
                               (or (##unchecked-structure-ref
                                    _xval6964_
                                    '6
                                    gx#import-binding::t
                                    '#f)
                                   (and (##structure-instance-of?
                                         _val6888_
                                         'gx#binding::t)
                                        (not (##structure-direct-instance-of?
                                              _val6888_
                                              'gx#import-binding::t)))))
                          (and (##structure-instance-of?
                                _xval6964_
                                'gx#extern-binding::t)
                               (##structure-instance-of?
                                _val6888_
                                'gx#runtime-binding::t)
                               (eq? (##unchecked-structure-ref
                                     _val6888_
                                     '1
                                     gx#binding::t
                                     '#f)
                                    (##unchecked-structure-ref
                                     _xval6964_
                                     '1
                                     gx#binding::t
                                     '#f))))
                      _val6888_
                      (if (and (##structure-direct-instance-of?
                                _val6888_
                                'gx#import-binding::t)
                               (or (##unchecked-structure-ref
                                    _val6888_
                                    '6
                                    gx#import-binding::t
                                    '#f)
                                   (and (##structure-instance-of?
                                         _xval6964_
                                         'gx#binding::t)
                                        (eq? (##unchecked-structure-ref
                                              _val6888_
                                              '1
                                              gx#binding::t
                                              '#f)
                                             (##unchecked-structure-ref
                                              _xval6964_
                                              '1
                                              gx#binding::t
                                              '#f)))))
                          _xval6964_
                          (if (and (##structure-direct-instance-of?
                                    _val6888_
                                    'gx#import-binding::t)
                                   (##structure-instance-of?
                                    _xval6964_
                                    'gx#binding::t))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad binding; import conflict"
                               _key6887_
                               (cons (##unchecked-structure-ref
                                      _val6888_
                                      '1
                                      gx#binding::t
                                      '#f)
                                     (cons (##structure-ref
                                            (##unchecked-structure-ref
                                             _val6888_
                                             '5
                                             gx#import-binding::t
                                             '#f)
                                            '1
                                            gx#expander-context::t
                                            '#f)
                                           '()))
                               (cons (##unchecked-structure-ref
                                      _xval6964_
                                      '1
                                      gx#binding::t
                                      '#f)
                                     (cons (if (##structure-direct-instance-of?
                                                _xval6964_
                                                'gx#import-binding::t)
                                               (##structure-ref
                                                (##unchecked-structure-ref
                                                 _xval6964_
                                                 '5
                                                 gx#import-binding::t
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               _xval6964_)
                                           '())))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad binding; rebind conflict"
                               _key6887_
                               _val6888_
                               _xval6964_))))))
               (_gensubst6894_
                (lambda (_subst6959_ _id6960_)
                  (let ((_eid6962_
                         (gensym (if (uninterned-symbol? _id6960_)
                                     '%
                                     _id6960_))))
                    (table-set! _subst6959_ _id6960_ _eid6962_)
                    _eid6962_)))
               (_subst!6895_
                (lambda (_key6897_)
                  (let* ((_key68986906_ _key6897_)
                         (_else69006914_ (lambda () _key6897_))
                         (_K69026947_
                          (lambda (_mark6917_ _id6918_)
                            (let* ((_mark69196925_ _mark6917_)
                                   (_E69216929_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark69196925_)))
                                   (_K69226939_
                                    (lambda (_subst6932_)
                                      (if (not _subst6932_)
                                          (let ((_subst6934_
                                                 (make-table 'test: eq?)))
                                            (##unchecked-structure-set!
                                             _mark6917_
                                             _subst6934_
                                             '1
                                             gx#expander-mark::t
                                             '#f)
                                            (_gensubst6894_
                                             _subst6934_
                                             _id6918_))
                                          (let ((_$e6936_
                                                 (table-ref
                                                  _subst6932_
                                                  _id6918_
                                                  '#f)))
                                            (if _$e6936_
                                                (values _$e6936_)
                                                (_gensubst6894_
                                                 _subst6932_
                                                 _id6918_)))))))
                              (if (##structure-instance-of?
                                   _mark69196925_
                                   'gx#expander-mark::t)
                                  (let* ((_e69236942_
                                          (##vector-ref _mark69196925_ '1))
                                         (_subst6945_ _e69236942_))
                                    (_K69226939_ _subst6945_))
                                  (_E69216929_))))))
                    (if (##pair? _key68986906_)
                        (let ((_hd69036950_ (##car _key68986906_))
                              (_tl69046952_ (##cdr _key68986906_)))
                          (let* ((_id6955_ _hd69036950_)
                                 (_mark6957_ _tl69046952_))
                            (_K69026947_ _mark6957_ _id6955_)))
                        (_else69006914_))))))
        (gx#core-context-bind!
         (gx#core-context-shift _ctx6891_ _phi6890_)
         (_subst!6895_ _key6887_)
         _val6888_
         _update-binding6893_))))
  (define gx#core-bind!__0
    (lambda (_key6981_ _val6982_)
      (let* ((_rebind?6984_ false)
             (_phi6986_ (gx#current-expander-phi))
             (_ctx6988_ (gx#current-expander-context)))
        (gx#core-bind!__%
         _key6981_
         _val6982_
         _rebind?6984_
         _phi6986_
         _ctx6988_))))
  (define gx#core-bind!__1
    (lambda (_key6990_ _val6991_ _rebind?6992_)
      (let* ((_phi6994_ (gx#current-expander-phi))
             (_ctx6996_ (gx#current-expander-context)))
        (gx#core-bind!__%
         _key6990_
         _val6991_
         _rebind?6992_
         _phi6994_
         _ctx6996_))))
  (define gx#core-bind!__2
    (lambda (_key6998_ _val6999_ _rebind?7000_ _phi7001_)
      (let ((_ctx7003_ (gx#current-expander-context)))
        (gx#core-bind!__%
         _key6998_
         _val6999_
         _rebind?7000_
         _phi7001_
         _ctx7003_))))
  (define gx#core-bind!
    (lambda _g9370_
      (let ((_g9369_ (length _g9370_)))
        (cond ((##fx= _g9369_ 2) (apply gx#core-bind!__0 _g9370_))
              ((##fx= _g9369_ 3) (apply gx#core-bind!__1 _g9370_))
              ((##fx= _g9369_ 4) (apply gx#core-bind!__2 _g9370_))
              ((##fx= _g9369_ 5) (apply gx#core-bind!__% _g9370_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind!
                _g9370_))))))
  (define gx#core-identifier-key
    (lambda (_stx6821_)
      (if (symbol? _stx6821_)
          (let* ((_g68226830_ (gx#current-expander-marks))
                 (_else68246838_ (lambda () _stx6821_))
                 (_K68266843_ (lambda (_hd6841_) (cons _stx6821_ _hd6841_))))
            (if (##pair? _g68226830_)
                (let* ((_hd68276846_ (##car _g68226830_))
                       (_hd6849_ _hd68276846_))
                  (_K68266843_ _hd6849_))
                (_else68246838_)))
          (if (gx#identifier? _stx6821_)
              (let* ((_id6851_ (gx#syntax-local-unwrap _stx6821_))
                     (_eid6853_ (gx#stx-e _id6851_))
                     (_marks6855_ (gx#stx-identifier-marks* _id6851_)))
                (let* ((_marks68576865_ _marks6855_)
                       (_else68596873_ (lambda () _eid6853_))
                       (_K68616878_
                        (lambda (_hd6876_) (cons _eid6853_ _hd6876_))))
                  (if (##pair? _marks68576865_)
                      (let* ((_hd68626881_ (##car _marks68576865_))
                             (_hd6884_ _hd68626881_))
                        (_K68616878_ _hd6884_))
                      (_else68596873_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx6821_)))))
  (define gx#core-context-shift
    (lambda (_ctx6766_ _phi6767_)
      (letrec ((_make-phi6769_
                (lambda (_super6819_)
                  (let ((__obj9341 (make-object gx#phi-context::t '5)))
                    (gx#phi-context:::init!__%
                     __obj9341
                     (gensym 'phi)
                     _super6819_)
                    __obj9341)))
               (_make-phi/up6770_
                (lambda (_ctx6814_ _super6815_)
                  (let ((_ctx+16817_ (_make-phi6769_ _super6815_)))
                    (##unchecked-structure-set!
                     _ctx6814_
                     _ctx+16817_
                     '4
                     gx#phi-context::t
                     '#f)
                    (##unchecked-structure-set!
                     _ctx+16817_
                     _ctx6814_
                     '5
                     gx#phi-context::t
                     '#f)
                    _ctx+16817_)))
               (_make-phi/down6771_
                (lambda (_ctx6809_ _super6810_)
                  (let ((_ctx-16812_ (_make-phi6769_ _super6810_)))
                    (##unchecked-structure-set!
                     _ctx-16812_
                     _ctx6809_
                     '4
                     gx#phi-context::t
                     '#f)
                    (##unchecked-structure-set!
                     _ctx6809_
                     _ctx-16812_
                     '5
                     gx#phi-context::t
                     '#f)
                    _ctx-16812_)))
               (_shift6772_
                (lambda (_ctx6793_
                         _delta6794_
                         _make-delta-context6795_
                         _phi6796_
                         _K6797_)
                  (let ((_$e6799_
                         (##unchecked-structure-ref
                          _ctx6793_
                          '3
                          gx#phi-context::t
                          '#f)))
                    (if _$e6799_
                        ((lambda (_super6802_)
                           (let* ((_super6804_
                                   (_K6797_ _super6802_ _delta6794_))
                                  (_ctx+d6806_
                                   (_make-delta-context6795_
                                    _ctx6793_
                                    _super6804_)))
                             (_K6797_ _ctx+d6806_
                                      (fx- _phi6796_ _delta6794_))))
                         _$e6799_)
                        (error '"Bad context" _ctx6793_))))))
        (let _K6774_ ((_ctx6776_ _ctx6766_) (_phi6777_ _phi6767_))
          (if (fxzero? _phi6777_)
              _ctx6776_
              (if (fx> (##vector-length _ctx6776_) '3)
                  (if (fxpositive? _phi6777_)
                      (let ((_$e6779_
                             (##unchecked-structure-ref
                              _ctx6776_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e6779_
                            ((lambda (_g67816783_)
                               (_K6774_ _g67816783_ (fx- _phi6777_ '1)))
                             _$e6779_)
                            (_shift6772_
                             _ctx6776_
                             '1
                             _make-phi/up6770_
                             _phi6777_
                             _K6774_)))
                      (let ((_$e6786_
                             (##unchecked-structure-ref
                              _ctx6776_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e6786_
                            ((lambda (_g67886790_)
                               (_K6774_ _g67886790_ (fx+ _phi6777_ '1)))
                             _$e6786_)
                            (_shift6772_
                             _ctx6776_
                             '-1
                             _make-phi/down6771_
                             _phi6777_
                             _K6774_))))
                  _ctx6776_))))))
  (define gx#core-context-get
    (lambda (_ctx6763_ _key6764_)
      (table-ref
       (##unchecked-structure-ref _ctx6763_ '2 gx#expander-context::t '#f)
       _key6764_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx6759_ _key6760_ _val6761_)
      (table-set!
       (##unchecked-structure-ref _ctx6759_ '2 gx#expander-context::t '#f)
       _key6760_
       _val6761_)))
  (define gx#core-context-resolve
    (lambda (_ctx6746_ _key6747_)
      (let _lp6749_ ((_ctx6751_ _ctx6746_))
        (let ((_$e6753_ (gx#core-context-get _ctx6751_ _key6747_)))
          (if _$e6753_
              (values _$e6753_)
              (let ((_$e6756_
                     (if (fx> (##vector-length _ctx6751_) '3)
                         (##unchecked-structure-ref
                          _ctx6751_
                          '3
                          gx#phi-context::t
                          '#f)
                         '#f)))
                (if _$e6756_ (_lp6749_ _$e6756_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx6736_ _key6737_ _val6738_ _rebind6739_)
      (let ((_$e6741_ (gx#core-context-get _ctx6736_ _key6737_)))
        (if _$e6741_
            ((lambda (_xval6744_)
               (gx#core-context-put!
                _ctx6736_
                _key6737_
                (_rebind6739_ _xval6744_)))
             _$e6741_)
            (gx#core-context-put! _ctx6736_ _key6737_ _val6738_)))))
  (define gx#core-context-top__%
    (lambda (_ctx6714_ _stop?6715_)
      (let _lp6717_ ((_ctx6719_ _ctx6714_))
        (if (_stop?6715_ _ctx6719_)
            _ctx6719_
            (if (##structure-instance-of? _ctx6719_ 'gx#context-phi::t)
                (_lp6717_
                 (##unchecked-structure-ref
                  _ctx6719_
                  '3
                  gx#phi-context::t
                  '#f))
                '#f)))))
  (define gx#core-context-top__0
    (lambda ()
      (let* ((_ctx6725_ (gx#current-expander-context))
             (_stop?6727_ gx#top-context?))
        (gx#core-context-top__% _ctx6725_ _stop?6727_))))
  (define gx#core-context-top__1
    (lambda (_ctx6729_)
      (let ((_stop?6731_ gx#top-context?))
        (gx#core-context-top__% _ctx6729_ _stop?6731_))))
  (define gx#core-context-top
    (lambda _g9372_
      (let ((_g9371_ (length _g9372_)))
        (cond ((##fx= _g9371_ 0) (apply gx#core-context-top__0 _g9372_))
              ((##fx= _g9371_ 1) (apply gx#core-context-top__1 _g9372_))
              ((##fx= _g9371_ 2) (apply gx#core-context-top__% _g9372_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-top
                _g9372_))))))
  (define gx#core-context-root__%
    (lambda (_ctx6699_)
      (let _lp6701_ ((_ctx6703_ _ctx6699_))
        (if (##structure-instance-of? _ctx6703_ 'gx#context-phi::t)
            (_lp6701_
             (##unchecked-structure-ref _ctx6703_ '3 gx#phi-context::t '#f))
            _ctx6703_))))
  (define gx#core-context-root__0
    (lambda ()
      (let ((_ctx6709_ (gx#current-expander-context)))
        (gx#core-context-root__% _ctx6709_))))
  (define gx#core-context-root
    (lambda _g9374_
      (let ((_g9373_ (length _g9374_)))
        (cond ((##fx= _g9373_ 0) (apply gx#core-context-root__0 _g9374_))
              ((##fx= _g9373_ 1) (apply gx#core-context-root__% _g9374_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-root
                _g9374_))))))
  (define gx#core-context-rebind?__%
    (lambda (_ctx6680_ . __66776681_)
      (let ((_$e6684_ (gx#current-expander-allow-rebind?)))
        (if _$e6684_
            _$e6684_
            (if (##structure-instance-of? _ctx6680_ 'gx#top-context::t)
                (if (not (##structure-instance-of?
                          _ctx6680_
                          'gx#module-context::t))
                    (not (##structure-instance-of?
                          _ctx6680_
                          'gx#prelude-context::t))
                    '#f)
                '#f)))))
  (define gx#core-context-rebind?__0
    (lambda ()
      (let ((_ctx6691_ (gx#current-expander-context)))
        (gx#core-context-rebind?__% _ctx6691_))))
  (define gx#core-context-rebind?
    (lambda _g9376_
      (let ((_g9375_ (length _g9376_)))
        (cond ((##fx= _g9375_ 0) (apply gx#core-context-rebind?__0 _g9376_))
              ((##fx= _g9375_ 1) (apply gx#core-context-rebind?__% _g9376_))
              ((##fx>= _g9375_ 1) (apply gx#core-context-rebind?__% _g9376_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-rebind?
                _g9376_))))))
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
  (define gx#core-context-namespace__0
    (lambda ()
      (let ((_ctx6674_ (gx#current-expander-context)))
        (gx#core-context-namespace__% _ctx6674_))))
  (define gx#core-context-namespace
    (lambda _g9378_
      (let ((_g9377_ (length _g9378_)))
        (cond ((##fx= _g9377_ 0) (apply gx#core-context-namespace__0 _g9378_))
              ((##fx= _g9377_ 1) (apply gx#core-context-namespace__% _g9378_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-namespace
                _g9378_))))))
  (define gx#expander-binding?__%
    (lambda (_bind6649_ _is?6650_)
      (if (##structure-direct-instance-of? _bind6649_ 'gx#syntax-binding::t)
          (_is?6650_
           (##unchecked-structure-ref _bind6649_ '4 gx#syntax-binding::t '#f))
          '#f)))
  (define gx#expander-binding?__0
    (lambda (_bind6655_)
      (let ((_is?6657_ gx#expander?))
        (gx#expander-binding?__% _bind6655_ _is?6657_))))
  (define gx#expander-binding?
    (lambda _g9380_
      (let ((_g9379_ (length _g9380_)))
        (cond ((##fx= _g9379_ 1) (apply gx#expander-binding?__0 _g9380_))
              ((##fx= _g9379_ 2) (apply gx#expander-binding?__% _g9380_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-binding?
                _g9380_))))))
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
                  (##structure-direct-instance-of?
                   _obj6642_
                   (##type-id gx#special-form::t)))))
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
  (define gx#core-bound-identifier?__%
    (lambda (_id6612_ _bound?6613_)
      (if (gx#identifier? _id6612_)
          (_bound?6613_ (gx#resolve-identifier__0 _id6612_))
          '#f)))
  (define gx#core-bound-identifier?__0
    (lambda (_id6618_)
      (let ((_bound?6620_ gx#core-expander-binding?))
        (gx#core-bound-identifier?__% _id6618_ _bound?6620_))))
  (define gx#core-bound-identifier?
    (lambda _g9382_
      (let ((_g9381_ (length _g9382_)))
        (cond ((##fx= _g9381_ 1) (apply gx#core-bound-identifier?__0 _g9382_))
              ((##fx= _g9381_ 2) (apply gx#core-bound-identifier?__% _g9382_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bound-identifier?
                _g9382_))))))
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
  (define gx#core-quote-syntax__%
    (lambda (_stx6555_ _src6556_ _ctx6557_ _marks6558_)
      (if (##structure? _stx6555_)
          (let ((_$e6560_ (gx#sealed-syntax-unwrap _stx6555_)))
            (if _$e6560_
                (values _$e6560_)
                (if (gx#identifier? _stx6555_)
                    (let ((_id6563_ (gx#stx-unwrap__% _stx6555_ _marks6558_)))
                      (##structure
                       gx#syntax-quote::t
                       (##unchecked-structure-ref _id6563_ '1 AST::t '#f)
                       (let ((_$e6565_
                              (##unchecked-structure-ref
                               _id6563_
                               '2
                               AST::t
                               '#f)))
                         (if _$e6565_ _$e6565_ _src6556_))
                       _ctx6557_
                       (##unchecked-structure-ref
                        _id6563_
                        '3
                        gx#identifier-wrap::t
                        '#f)))
                    (##structure
                     gx#syntax-quote::t
                     (gx#stx-e _stx6555_)
                     (let ((_$e6568_ (gx#stx-source _stx6555_)))
                       (if _$e6568_ _$e6568_ _src6556_))
                     _ctx6557_
                     (reverse _marks6558_)))))
          (##structure
           gx#syntax-quote::t
           _stx6555_
           _src6556_
           _ctx6557_
           (reverse _marks6558_)))))
  (define gx#core-quote-syntax__0
    (lambda (_stx6574_)
      (let* ((_src6576_ '#f)
             (_ctx6578_ (gx#current-expander-context))
             (_marks6580_ (gx#current-expander-marks)))
        (gx#core-quote-syntax__% _stx6574_ _src6576_ _ctx6578_ _marks6580_))))
  (define gx#core-quote-syntax__1
    (lambda (_stx6582_ _src6583_)
      (let* ((_ctx6585_ (gx#current-expander-context))
             (_marks6587_ (gx#current-expander-marks)))
        (gx#core-quote-syntax__% _stx6582_ _src6583_ _ctx6585_ _marks6587_))))
  (define gx#core-quote-syntax__2
    (lambda (_stx6589_ _src6590_ _ctx6591_)
      (let ((_marks6593_ (gx#current-expander-marks)))
        (gx#core-quote-syntax__% _stx6589_ _src6590_ _ctx6591_ _marks6593_))))
  (define gx#core-quote-syntax
    (lambda _g9384_
      (let ((_g9383_ (length _g9384_)))
        (cond ((##fx= _g9383_ 1) (apply gx#core-quote-syntax__0 _g9384_))
              ((##fx= _g9383_ 2) (apply gx#core-quote-syntax__1 _g9384_))
              ((##fx= _g9383_ 3) (apply gx#core-quote-syntax__2 _g9384_))
              ((##fx= _g9383_ 4) (apply gx#core-quote-syntax__% _g9384_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-quote-syntax
                _g9384_))))))
  (define gx#core-cons
    (lambda (_hd6551_ _tl6552_)
      (cons (gx#core-quote-syntax__0 _hd6551_) _tl6552_)))
  (define gx#core-list
    (lambda (_hd6548_ . _rest6549_)
      (cons (gx#core-quote-syntax__0 _hd6548_) _rest6549_)))
  (define gx#core-cons*
    (lambda (_hd6545_ . _rest6546_)
      (apply cons* (gx#core-quote-syntax__0 _hd6545_) _rest6546_)))
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
  (define gx#core-resolve-path__0
    (lambda (_stx-path6538_)
      (let ((_rel6540_ '#f))
        (gx#core-resolve-path__% _stx-path6538_ _rel6540_))))
  (define gx#core-resolve-path
    (lambda _g9386_
      (let ((_g9385_ (length _g9386_)))
        (cond ((##fx= _g9385_ 1) (apply gx#core-resolve-path__0 _g9386_))
              ((##fx= _g9385_ 2) (apply gx#core-resolve-path__% _g9386_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-resolve-path
                _g9386_))))))
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
  (define gx#core-deserialize-mark__0
    (lambda (_repr6511_)
      (let ((_ctx6513_ (gx#current-expander-context)))
        (gx#core-deserialize-mark__% _repr6511_ _ctx6513_))))
  (define gx#core-deserialize-mark
    (lambda _g9388_
      (let ((_g9387_ (length _g9388_)))
        (cond ((##fx= _g9387_ 1) (apply gx#core-deserialize-mark__0 _g9388_))
              ((##fx= _g9387_ 2) (apply gx#core-deserialize-mark__% _g9388_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-deserialize-mark
                _g9388_))))))
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
  (define gx#syntax-local-e__%
    (lambda (_stx6425_ _E6426_)
      (let ((_bind6428_ (gx#resolve-identifier__0 _stx6425_)))
        (if (##structure-direct-instance-of? _bind6428_ 'gx#syntax-binding::t)
            (##unchecked-structure-ref _bind6428_ '4 gx#syntax-binding::t '#f)
            (_E6426_ _stx6425_)))))
  (define gx#syntax-local-e__0
    (lambda (_stx6433_)
      (let ((_E6435_ gx#raise-syntax-ref-error))
        (gx#syntax-local-e__% _stx6433_ _E6435_))))
  (define gx#syntax-local-e
    (lambda _g9390_
      (let ((_g9389_ (length _g9390_)))
        (cond ((##fx= _g9389_ 1) (apply gx#syntax-local-e__0 _g9390_))
              ((##fx= _g9389_ 2) (apply gx#syntax-local-e__% _g9390_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#syntax-local-e
                _g9390_))))))
  (define gx#syntax-local-value__%
    (lambda (_stx6409_ _E6410_)
      (let ((_e6412_ (gx#syntax-local-e__% _stx6409_ _E6410_)))
        (if (##structure-instance-of? _e6412_ 'gx#expander::t)
            (##structure-ref _e6412_ '1 gx#expander::t '#f)
            _e6412_))))
  (define gx#syntax-local-value__0
    (lambda (_stx6417_)
      (let ((_E6419_ gx#raise-syntax-ref-error))
        (gx#syntax-local-value__% _stx6417_ _E6419_))))
  (define gx#syntax-local-value
    (lambda _g9392_
      (let ((_g9391_ (length _g9392_)))
        (cond ((##fx= _g9391_ 1) (apply gx#syntax-local-value__0 _g9392_))
              ((##fx= _g9391_ 2) (apply gx#syntax-local-value__% _g9392_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#syntax-local-value
                _g9392_))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx6406_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx6406_))))
