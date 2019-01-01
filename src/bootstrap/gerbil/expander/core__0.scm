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
    (lambda _$args9327_
      (apply make-struct-instance gx#expander-context::t _$args9327_)))
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
    (lambda _$args9324_
      (apply make-struct-instance gx#root-context::t _$args9324_)))
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
    (lambda _$args9321_
      (apply make-struct-instance gx#phi-context::t _$args9321_)))
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
    (lambda _$args9318_
      (apply make-struct-instance gx#top-context::t _$args9318_)))
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
    (lambda _$args9315_
      (apply make-struct-instance gx#module-context::t _$args9315_)))
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
    (lambda _$args9312_
      (apply make-struct-instance gx#prelude-context::t _$args9312_)))
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
    (lambda _$args9309_
      (apply make-struct-instance gx#local-context::t _$args9309_)))
  (define gx#phi-context:::init!__%
    (lambda (_self9293_ _id9294_ _super9295_)
      (if (##fx< '3 (##vector-length _self9293_))
          (begin
            (##vector-set! _self9293_ '1 _id9294_)
            (##vector-set! _self9293_ '2 (make-table 'test: eq?))
            (##vector-set! _self9293_ '3 _super9295_))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self9293_))))
  (define gx#phi-context:::init!__0
    (lambda (_self9300_ _id9301_)
      (let ((_super9303_ (gx#current-expander-context)))
        (gx#phi-context:::init!__% _self9300_ _id9301_ _super9303_))))
  (define gx#phi-context:::init!
    (lambda _g9340_
      (let ((_g9339_ (length _g9340_)))
        (cond ((##fx= _g9339_ 2) (apply gx#phi-context:::init!__0 _g9340_))
              ((##fx= _g9339_ 3) (apply gx#phi-context:::init!__% _g9340_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#phi-context:::init!
                _g9340_))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (define gx#local-context:::init!__%
    (lambda (_self9157_ _super9158_)
      (if (##fx< '3 (##vector-length _self9157_))
          (begin
            (##vector-set! _self9157_ '1 (gensym 'L))
            (##vector-set! _self9157_ '2 (make-table 'test: eq?))
            (##vector-set! _self9157_ '3 _super9158_))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self9157_))))
  (define gx#local-context:::init!__0
    (lambda (_self9163_)
      (let ((_super9165_ (gx#current-expander-context)))
        (gx#local-context:::init!__% _self9163_ _super9165_))))
  (define gx#local-context:::init!
    (lambda _g9342_
      (let ((_g9341_ (length _g9342_)))
        (cond ((##fx= _g9341_ 1) (apply gx#local-context:::init!__0 _g9342_))
              ((##fx= _g9341_ 2) (apply gx#local-context:::init!__% _g9342_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#local-context:::init!
                _g9342_))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f '(id key phi)))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args9031_
      (apply make-struct-instance gx#binding::t _$args9031_)))
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
    (lambda _$args9028_
      (apply make-struct-instance gx#runtime-binding::t _$args9028_)))
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
    (lambda _$args9025_
      (apply make-struct-instance gx#local-binding::t _$args9025_)))
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
    (lambda _$args9022_
      (apply make-struct-instance gx#top-binding::t _$args9022_)))
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
    (lambda _$args9019_
      (apply make-struct-instance gx#module-binding::t _$args9019_)))
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
    (lambda _$args9016_
      (apply make-struct-instance gx#extern-binding::t _$args9016_)))
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
    (lambda _$args9013_
      (apply make-struct-instance gx#syntax-binding::t _$args9013_)))
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
    (lambda _$args9010_
      (apply make-struct-instance gx#import-binding::t _$args9010_)))
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
    (lambda _$args9007_
      (apply make-struct-instance gx#alias-binding::t _$args9007_)))
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
    (lambda _$args9004_
      (apply make-struct-instance gx#expander::t _$args9004_)))
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
    (lambda _$args9001_
      (apply make-struct-instance gx#core-expander::t _$args9001_)))
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
    (lambda _$args8998_
      (apply make-struct-instance gx#expression-form::t _$args8998_)))
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
    (lambda _$args8995_
      (apply make-struct-instance gx#special-form::t _$args8995_)))
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
    (lambda _$args8992_
      (apply make-struct-instance gx#definition-form::t _$args8992_)))
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
    (lambda _$args8989_
      (apply make-struct-instance gx#top-special-form::t _$args8989_)))
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
    (lambda _$args8986_
      (apply make-struct-instance gx#module-special-form::t _$args8986_)))
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
    (lambda _$args8983_
      (apply make-struct-instance gx#feature-expander::t _$args8983_)))
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
    (lambda _$args8980_
      (apply make-struct-instance gx#private-feature-expander::t _$args8980_)))
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
    (lambda _$args8977_
      (apply make-struct-instance gx#reserved-expander::t _$args8977_)))
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
    (lambda _$args8974_
      (apply make-struct-instance gx#macro-expander::t _$args8974_)))
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
    (lambda _$args8971_
      (apply make-struct-instance gx#rename-macro-expander::t _$args8971_)))
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
    (lambda _$args8968_
      (apply make-struct-instance gx#user-expander::t _$args8968_)))
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
    (lambda _$args8965_
      (apply make-struct-instance gx#expander-mark::t _$args8965_)))
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
    (lambda _$args8962_
      (apply make-struct-instance gx#syntax-error::t _$args8962_)))
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
    (lambda (_where8957_ _message8958_ _stx8959_ . _details8960_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message8958_
              (cons _stx8959_ _details8960_)
              _where8957_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (define gx#eval-syntax__%
    (lambda (_stx8944_ _expression?8945_)
      (gx#eval-syntax* (gx#core-expand__% _stx8944_ _expression?8945_))))
  (define gx#eval-syntax__0
    (lambda (_stx8950_)
      (let ((_expression?8952_ '#f))
        (gx#eval-syntax__% _stx8950_ _expression?8952_))))
  (define gx#eval-syntax
    (lambda _g9344_
      (let ((_g9343_ (length _g9344_)))
        (cond ((##fx= _g9343_ 1) (apply gx#eval-syntax__0 _g9344_))
              ((##fx= _g9343_ 2) (apply gx#eval-syntax__% _g9344_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#eval-syntax
                _g9344_))))))
  (define gx#eval-syntax*
    (lambda (_stx8941_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx8941_))))
  (define gx#core-expand__%
    (lambda (_stx8928_ _expression?8929_)
      (if _expression?8929_
          (gx#core-expand-expression _stx8928_)
          (gx#core-expand-top _stx8928_))))
  (define gx#core-expand__0
    (lambda (_stx8934_)
      (let ((_expression?8936_ '#f))
        (gx#core-expand__% _stx8934_ _expression?8936_))))
  (define gx#core-expand
    (lambda _g9346_
      (let ((_g9345_ (length _g9346_)))
        (cond ((##fx= _g9345_ 1) (apply gx#core-expand__0 _g9346_))
              ((##fx= _g9345_ 2) (apply gx#core-expand__% _g9346_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand
                _g9346_))))))
  (define gx#core-expand-top
    (lambda (_stx8895_)
      (let* ((_stx8897_ (gx#core-expand*__0 _stx8895_))
             (_e88988905_ _stx8897_)
             (_E89008909_ (lambda () (gx#core-expand-expression _stx8897_)))
             (_E88998923_
              (lambda ()
                (if (gx#stx-pair? _e88988905_)
                    (let ((_e89018913_ (gx#syntax-e _e88988905_)))
                      (let ((_hd89028916_ (##car _e89018913_))
                            (_tl89038918_ (##cdr _e89018913_)))
                        (let ((_form8921_ _hd89028916_))
                          (if (gx#core-bound-identifier?__0 _form8921_)
                              _stx8897_
                              (_E89008909_)))))
                    (_E89008909_)))))
        (_E88998923_))))
  (define gx#core-expand-expression
    (lambda (_stx8842_)
      (letrec ((_sealed-expression?8844_
                (lambda (_hd8865_)
                  (if (gx#sealed-syntax? _hd8865_)
                      (let* ((_e88668873_ _hd8865_)
                             (_E88688877_ (lambda () '#f))
                             (_E88678891_
                              (lambda ()
                                (if (gx#stx-pair? _e88668873_)
                                    (let ((_e88698881_
                                           (gx#syntax-e _e88668873_)))
                                      (let ((_hd88708884_ (##car _e88698881_))
                                            (_tl88718886_ (##cdr _e88698881_)))
                                        (let ((_form8889_ _hd88708884_))
                                          (if '#t
                                              (gx#core-bound-identifier?__%
                                               _form8889_
                                               gx#expression-form-binding?)
                                              (_E88688877_)))))
                                    (_E88688877_)))))
                        (_E88678891_))
                      '#f)))
               (_illegal-expression8845_
                (lambda (_hd8863_ . _g9347_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx8842_
                   _hd8863_)))
               (_expand-e8846_
                (lambda (_form8858_ _hd8859_)
                  (let ((_bind8861_
                         (if (##structure-instance-of?
                              _form8858_
                              'gx#binding::t)
                             _form8858_
                             (gx#resolve-identifier__0 _form8858_))))
                    (if (gx#core-expander-binding? _bind8861_)
                        (gx#core-apply-expander__0
                         (##unchecked-structure-ref
                          _bind8861_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd8859_
                          (gx#stx-source _stx8842_)))
                        (if (##structure-direct-instance-of?
                             _bind8861_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##unchecked-structure-ref
                               _bind8861_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd8859_
                               (gx#stx-source _stx8842_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx8842_
                             _form8858_)))))))
        (let ((_hd8848_ (gx#core-expand-head _stx8842_)))
          (if (_sealed-expression?8844_ _hd8848_)
              _hd8848_
              (if (gx#stx-pair? _hd8848_)
                  (let* ((_form8850_ (gx#stx-car _hd8848_))
                         (_bind8852_
                          (if (gx#identifier? _form8850_)
                              (gx#resolve-identifier__0 _form8850_)
                              '#f)))
                    (if (or (not _bind8852_)
                            (not (gx#core-expander-binding? _bind8852_)))
                        (_expand-e8846_ '%%app (cons '%%app _hd8848_))
                        (if (eq? (##unchecked-structure-ref
                                  _bind8852_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 '%#begin)
                            (gx#core-expand-block*
                             _hd8848_
                             _illegal-expression8845_)
                            (if (gx#expression-form-binding? _bind8852_)
                                (_expand-e8846_ _bind8852_ _hd8848_)
                                (if (gx#direct-special-form-binding?
                                     _bind8852_)
                                    (gx#core-expand-expression
                                     (_expand-e8846_ _bind8852_ _hd8848_))
                                    (_illegal-expression8845_ _hd8848_))))))
                  (if (gx#core-bound-identifier?__0 _hd8848_)
                      (_illegal-expression8845_ _hd8848_)
                      (if (gx#identifier? _hd8848_)
                          (_expand-e8846_
                           '%%ref
                           (cons '%%ref (cons _hd8848_ '())))
                          (if (gx#stx-datum? _hd8848_)
                              (_expand-e8846_
                               '%#quote
                               (cons '%#quote (cons _hd8848_ '())))
                              (_illegal-expression8845_ _hd8848_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx8837_)
      (call-with-parameters
       (lambda ()
         (let ((_stx8840_ (gx#core-expand-expression _stx8837_)))
           (values _stx8840_ (gx#eval-syntax* _stx8840_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gx#core-expand*__%
    (lambda (_stx8818_ _stop?8819_)
      (let _lp8821_ ((_stx8823_ _stx8818_))
        (if (_stop?8819_ _stx8823_)
            _stx8823_
            (let ((_rstx8825_ (gx#core-expand1 _stx8823_)))
              (if (eq? _stx8823_ _rstx8825_)
                  _stx8823_
                  (_lp8821_ _rstx8825_)))))))
  (define gx#core-expand*__0
    (lambda (_stx8830_)
      (let ((_stop?8832_ false)) (gx#core-expand*__% _stx8830_ _stop?8832_))))
  (define gx#core-expand*
    (lambda _g9349_
      (let ((_g9348_ (length _g9349_)))
        (cond ((##fx= _g9348_ 1) (apply gx#core-expand*__0 _g9349_))
              ((##fx= _g9348_ 2) (apply gx#core-expand*__% _g9349_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand*
                _g9349_))))))
  (define gx#core-expand1
    (lambda (_stx8774_)
      (letrec ((_step8776_
                (lambda (_hd8813_)
                  (let ((_bind8815_ (gx#resolve-identifier__0 _hd8813_)))
                    (if (##structure-instance-of?
                         _bind8815_
                         'gx#runtime-binding::t)
                        _stx8774_
                        (if (##structure-direct-instance-of?
                             _bind8815_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _bind8815_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx8774_)
                            (if (not _bind8815_)
                                _stx8774_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx8774_))))))))
        (let* ((_e87778785_ _stx8774_)
               (_E87838789_ (lambda () _stx8774_))
               (_E87798795_
                (lambda ()
                  (let ((_hd8793_ _e87778785_))
                    (if (gx#identifier? _hd8793_)
                        (_step8776_ _hd8793_)
                        (_E87838789_)))))
               (_E87788809_
                (lambda ()
                  (if (gx#stx-pair? _e87778785_)
                      (let ((_e87808799_ (gx#syntax-e _e87778785_)))
                        (let ((_hd87818802_ (##car _e87808799_))
                              (_tl87828804_ (##cdr _e87808799_)))
                          (let ((_hd8807_ _hd87818802_))
                            (if (gx#identifier? _hd8807_)
                                (_step8776_ _hd8807_)
                                (_E87798795_)))))
                      (_E87798795_)))))
          (_E87788809_)))))
  (define gx#core-expand-head
    (lambda (_stx8740_)
      (letrec ((_stop?8742_
                (lambda (_stx8744_)
                  (let* ((_e87458752_ _stx8744_)
                         (_E87478756_ (lambda () '#f))
                         (_E87468770_
                          (lambda ()
                            (if (gx#stx-pair? _e87458752_)
                                (let ((_e87488760_ (gx#syntax-e _e87458752_)))
                                  (let ((_hd87498763_ (##car _e87488760_))
                                        (_tl87508765_ (##cdr _e87488760_)))
                                    (let ((_hd8768_ _hd87498763_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd8768_)
                                          (_E87478756_)))))
                                (_E87478756_)))))
                    (_E87468770_)))))
        (gx#core-expand*__% _stx8740_ _stop?8742_))))
  (define gx#core-expand-block__%
    (lambda (_stx8546_ _expand-special8547_ _begin-form8548_ _expand-e8549_)
      (letrec ((_expand-splice8551_
                (lambda (_hd8714_ _body8715_ _rest8716_ _r8717_)
                  (if (gx#stx-list? _body8715_)
                      (_K8555_ (gx#stx-foldr cons _rest8716_ _body8715_)
                               _r8717_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _stx8546_
                       _hd8714_))))
               (_expand-cond-expand8552_
                (lambda (_hd8710_ _rest8711_ _r8712_)
                  (_K8555_ (cons (gx#core-expand-cond-expand% _hd8710_)
                                 _rest8711_)
                           _r8712_)))
               (_expand-include8553_
                (lambda (_hd8659_ _rest8660_ _r8661_)
                  (let* ((_e86628672_ _hd8659_)
                         (_E86648676_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e86628672_)))
                         (_E86638706_
                          (lambda ()
                            (if (gx#stx-pair? _e86628672_)
                                (let ((_e86658680_ (gx#syntax-e _e86628672_)))
                                  (let ((_hd86668683_ (##car _e86658680_))
                                        (_tl86678685_ (##cdr _e86658680_)))
                                    (if (gx#stx-pair? _tl86678685_)
                                        (let ((_e86688688_
                                               (gx#syntax-e _tl86678685_)))
                                          (let ((_hd86698691_
                                                 (##car _e86688688_))
                                                (_tl86708693_
                                                 (##cdr _e86688688_)))
                                            (let ((_path8696_ _hd86698691_))
                                              (if (gx#stx-null? _tl86708693_)
                                                  (if (gx#stx-string?
                                                       _path8696_)
                                                      (let* ((_rpath8698_
                                                              (gx#core-resolve-path__%
                                                               _path8696_
                                                               (gx#stx-source
                                                                _hd8659_)))
                                                             (_block8700_
                                                              (gx#core-expand-include%__%
                                                               _hd8659_
                                                               _rpath8698_))
                                                             (_rbody8703_
                                                              (call-with-parameters
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-expand-block__%
                          _block8700_
                          _expand-special8547_
                          '#f
                          _expand-e8549_))
                       gx#current-expander-path
                       (cons _rpath8698_ (gx#current-expander-path)))))
                (_K8555_ _rest8660_ (foldr1 cons _r8661_ _rbody8703_)))
              (_E86648676_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86648676_)))))
                                        (_E86648676_))))
                                (_E86648676_)))))
                    (_E86638706_))))
               (_expand-expression8554_
                (lambda (_hd8655_ _rest8656_ _r8657_)
                  (_K8555_ _rest8656_
                           (cons (_expand-e8549_ _hd8655_) _r8657_))))
               (_K8555_ (lambda (_rest8585_ _r8586_)
                          (let* ((_e85878594_ _rest8585_)
                                 (_E85898598_
                                  (lambda ()
                                    (if _begin-form8548_
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons
                                          _begin-form8548_
                                          (reverse _r8586_))
                                         (gx#stx-source _stx8546_))
                                        _r8586_)))
                                 (_E85888651_
                                  (lambda ()
                                    (if (gx#stx-pair? _e85878594_)
                                        (let ((_e85908602_
                                               (gx#syntax-e _e85878594_)))
                                          (let ((_hd85918605_
                                                 (##car _e85908602_))
                                                (_tl85928607_
                                                 (##cdr _e85908602_)))
                                            (let* ((_hd8610_ _hd85918605_)
                                                   (_rest8612_ _tl85928607_))
                                              (if '#t
                                                  (let* ((_hd8614_
                                                          (gx#core-expand-head
                                                           _hd8610_))
                                                         (_e86158622_ _hd8614_)
                                                         (_E86178626_
                                                          (lambda ()
                                                            (_expand-expression8554_
                                                             _hd8614_
                                                             _rest8612_
                                                             _r8586_)))
                                                         (_E86168647_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e86158622_)
                        (let ((_e86188630_ (gx#syntax-e _e86158622_)))
                          (let ((_hd86198633_ (##car _e86188630_))
                                (_tl86208635_ (##cdr _e86188630_)))
                            (let* ((_form8638_ _hd86198633_)
                                   (_body8640_ _tl86208635_))
                              (if '#t
                                  (let ((_bind8642_
                                         (if (gx#identifier? _form8638_)
                                             (gx#resolve-identifier__0
                                              _form8638_)
                                             '#f)))
                                    (if (gx#special-form-binding? _bind8642_)
                                        (let ((_$e8644_
                                               (##unchecked-structure-ref
                                                _bind8642_
                                                '1
                                                gx#binding::t
                                                '#f)))
                                          (if (eq? '%#begin _$e8644_)
                                              (_expand-splice8551_
                                               _hd8614_
                                               _body8640_
                                               _rest8612_
                                               _r8586_)
                                              (if (eq? '%#cond-expand _$e8644_)
                                                  (_expand-cond-expand8552_
                                                   _hd8614_
                                                   _rest8612_
                                                   _r8586_)
                                                  (if (eq? '%#include _$e8644_)
                                                      (_expand-include8553_
                                                       _hd8614_
                                                       _rest8612_
                                                       _r8586_)
                                                      (_expand-special8547_
                                                       _hd8614_
                                                       _K8555_
                                                       _rest8612_
                                                       _r8586_)))))
                                        (_expand-expression8554_
                                         _hd8614_
                                         _rest8612_
                                         _r8586_)))
                                  (_E86178626_)))))
                        (_E86178626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E86168647_))
                                                  (_E85898598_)))))
                                        (_E85898598_)))))
                            (_E85888651_)))))
        (let* ((_e85568563_ _stx8546_)
               (_E85588567_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e85568563_)))
               (_E85578581_
                (lambda ()
                  (if (gx#stx-pair? _e85568563_)
                      (let ((_e85598571_ (gx#syntax-e _e85568563_)))
                        (let ((_hd85608574_ (##car _e85598571_))
                              (_tl85618576_ (##cdr _e85598571_)))
                          (let ((_body8579_ _tl85618576_))
                            (if (gx#stx-list? _body8579_)
                                (_K8555_ _body8579_ '())
                                (_E85588567_)))))
                      (_E85588567_)))))
          (_E85578581_)))))
  (define gx#core-expand-block__0
    (lambda (_stx8722_ _expand-special8723_)
      (let* ((_begin-form8725_ '%#begin)
             (_expand-e8727_ gx#core-expand-expression))
        (gx#core-expand-block__%
         _stx8722_
         _expand-special8723_
         _begin-form8725_
         _expand-e8727_))))
  (define gx#core-expand-block__1
    (lambda (_stx8729_ _expand-special8730_ _begin-form8731_)
      (let ((_expand-e8733_ gx#core-expand-expression))
        (gx#core-expand-block__%
         _stx8729_
         _expand-special8730_
         _begin-form8731_
         _expand-e8733_))))
  (define gx#core-expand-block
    (lambda _g9351_
      (let ((_g9350_ (length _g9351_)))
        (cond ((##fx= _g9350_ 2) (apply gx#core-expand-block__0 _g9351_))
              ((##fx= _g9350_ 3) (apply gx#core-expand-block__1 _g9351_))
              ((##fx= _g9350_ 4) (apply gx#core-expand-block__% _g9351_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-block
                _g9351_))))))
  (define gx#core-expand-block*
    (lambda (_stx8494_ _expand-special8495_)
      (let* ((_g84968507_
              (gx#core-expand-block__1 _stx8494_ _expand-special8495_ '#f))
             (_E85008511_
              (lambda () (error '"No clause matching" _g84968507_))))
        (let ((_K85058542_
               (lambda ()
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; empty block"
                  _stx8494_)))
              (_K85028528_ (lambda (_expr8526_) _expr8526_))
              (_K85018517_
               (lambda (_body8515_)
                 (gx#core-quote-syntax__1
                  (gx#core-cons '%#begin (reverse _body8515_))
                  (gx#stx-source _stx8494_)))))
          (let ((_try-match84988538_
                 (lambda ()
                   (if (##pair? _g84968507_)
                       (let ((_tl85048533_ (##cdr _g84968507_))
                             (_hd85038531_ (##car _g84968507_)))
                         (if (##null? _tl85048533_)
                             (let ((_expr8536_ _hd85038531_))
                               (_K85028528_ _expr8536_))
                             (let ((_body8520_ _g84968507_))
                               (_K85018517_ _body8520_))))
                       (let ((_body8520_ _g84968507_))
                         (_K85018517_ _body8520_))))))
            (if (##null? _g84968507_) (_K85058542_) (_try-match84988538_)))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx8322_)
      (letrec ((_satisfied?8324_
                (lambda (_condition8422_)
                  (let* ((_e84238438_ _condition8422_)
                         (_E84338442_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e84238438_)))
                         (_E84268461_
                          (lambda ()
                            (if (gx#stx-pair? _e84238438_)
                                (let ((_e84348446_ (gx#syntax-e _e84238438_)))
                                  (let ((_hd84358449_ (##car _e84348446_))
                                        (_tl84368451_ (##cdr _e84348446_)))
                                    (let* ((_combinator8454_ _hd84358449_)
                                           (_body8456_ _tl84368451_))
                                      (if (gx#stx-list? _body8456_)
                                          (let ((_$e8458_
                                                 (gx#stx-e _combinator8454_)))
                                            (if (eq? 'not _$e8458_)
                                                (not (gx#stx-ormap
                                                      _satisfied?8324_
                                                      _body8456_))
                                                (if (eq? 'and _$e8458_)
                                                    (gx#stx-andmap
                                                     _satisfied?8324_
                                                     _body8456_)
                                                    (if (eq? 'or _$e8458_)
                                                        (gx#stx-ormap
                                                         _satisfied?8324_
                                                         _body8456_)
                                                        (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e8458_)
                    (gx#stx-andmap gx#core-resolve-identifier _body8456_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx8322_
                     _combinator8454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E84338442_)))))
                                (_E84338442_))))
                         (_E84258484_
                          (lambda ()
                            (if (gx#stx-pair? _e84238438_)
                                (let ((_e84278465_ (gx#syntax-e _e84238438_)))
                                  (let ((_hd84288468_ (##car _e84278465_))
                                        (_tl84298470_ (##cdr _e84278465_)))
                                    (if (and (gx#identifier? _hd84288468_)
                                             (gx#core-identifier=?
                                              _hd84288468_
                                              'unquote))
                                        (if (gx#stx-pair? _tl84298470_)
                                            (let ((_e84308473_
                                                   (gx#syntax-e _tl84298470_)))
                                              (let ((_hd84318476_
                                                     (##car _e84308473_))
                                                    (_tl84328478_
                                                     (##cdr _e84308473_)))
                                                (let ((_expr8481_
                                                       _hd84318476_))
                                                  (if (gx#stx-null?
                                                       _tl84328478_)
                                                      (if '#t
                                                          (call-with-parameters
                                                           (lambda ()
                                                             (gx#eval-syntax__0
                                                              _expr8481_))
                                                           gx#current-expander-phi
                                                           (fx+ (gx#current-expander-phi)
                                                                '1))
                                                          (_E84268461_))
                                                      (_E84268461_)))))
                                            (_E84268461_))
                                        (_E84268461_))))
                                (_E84268461_))))
                         (_E84248490_
                          (lambda ()
                            (let ((_id8488_ _e84238438_))
                              (if (gx#identifier? _id8488_)
                                  (gx#core-bound-identifier?__%
                                   _id8488_
                                   gx#feature-binding?)
                                  (_E84258484_))))))
                    (_E84248490_))))
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
                                                 (let ((_$e8303_ _rpath8266_))
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
                                                  (gx#stx-source _stx8265_)))))
                                          (_E82698281_))
                                      (_E82698281_)))))
                            (_E82698281_))))
                    (_E82698281_)))))
        (_E82688308_))))
  (define gx#core-expand-include%__0
    (lambda (_stx8315_)
      (let ((_rpath8317_ '#f))
        (gx#core-expand-include%__% _stx8315_ _rpath8317_))))
  (define gx#core-expand-include%
    (lambda _g9353_
      (let ((_g9352_ (length _g9353_)))
        (cond ((##fx= _g9352_ 1) (apply gx#core-expand-include%__0 _g9353_))
              ((##fx= _g9352_ 2) (apply gx#core-expand-include%__% _g9353_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-expand-include%
                _g9353_))))))
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
  (define gx#core-apply-expander__0
    (lambda (_K8255_ _stx8256_)
      (let ((_method8258_ 'apply-macro-expander))
        (gx#core-apply-expander__% _K8255_ _stx8256_ _method8258_))))
  (define gx#core-apply-expander
    (lambda _g9355_
      (let ((_g9354_ (length _g9355_)))
        (cond ((##fx= _g9354_ 2) (apply gx#core-apply-expander__0 _g9355_))
              ((##fx= _g9354_ 3) (apply gx#core-apply-expander__% _g9355_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-apply-expander
                _g9355_))))))
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
  (define gx#top-special-form::apply-macro-expander__%
    (lambda (_self7798_ _stx7799_ _top?7800_)
      (if (_top?7800_ (gx#current-expander-context))
          (gx#core-expander::apply-macro-expander _self7798_ _stx7799_)
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; illegal context"
           _stx7799_))))
  (define gx#top-special-form::apply-macro-expander__0
    (lambda (_self7805_ _stx7806_)
      (let ((_top?7808_ gx#top-context?))
        (gx#top-special-form::apply-macro-expander__%
         _self7805_
         _stx7806_
         _top?7808_))))
  (define gx#top-special-form::apply-macro-expander
    (lambda _g9357_
      (let ((_g9356_ (length _g9357_)))
        (cond ((##fx= _g9356_ 2)
               (apply gx#top-special-form::apply-macro-expander__0 _g9357_))
              ((##fx= _g9356_ 3)
               (apply gx#top-special-form::apply-macro-expander__% _g9357_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#top-special-form::apply-macro-expander
                _g9357_))))))
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
  (define gx#core-apply-user-expander__0
    (lambda (_self7366_ _stx7367_)
      (let ((_method7369_ 'apply-macro-expander))
        (gx#core-apply-user-expander__% _self7366_ _stx7367_ _method7369_))))
  (define gx#core-apply-user-expander
    (lambda _g9359_
      (let ((_g9358_ (length _g9359_)))
        (cond ((##fx= _g9358_ 2)
               (apply gx#core-apply-user-expander__0 _g9359_))
              ((##fx= _g9358_ 3)
               (apply gx#core-apply-user-expander__% _g9359_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-apply-user-expander
                _g9359_))))))
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
  (define gx#resolve-identifier__%
    (lambda (_stx7165_ _phi7166_ _ctx7167_)
      (let _lp7169_ ((_bind7171_
                      (gx#core-resolve-identifier__%
                       _stx7165_
                       _phi7166_
                       _ctx7167_)))
        (if (##structure-direct-instance-of? _bind7171_ 'gx#import-binding::t)
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
    (lambda _g9361_
      (let ((_g9360_ (length _g9361_)))
        (cond ((##fx= _g9360_ 1) (apply gx#resolve-identifier__0 _g9361_))
              ((##fx= _g9360_ 2) (apply gx#resolve-identifier__1 _g9361_))
              ((##fx= _g9360_ 3) (apply gx#resolve-identifier__% _g9361_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#resolve-identifier
                _g9361_))))))
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
    (lambda _g9363_
      (let ((_g9362_ (length _g9363_)))
        (cond ((##fx= _g9362_ 2) (apply gx#bind-identifier!__0 _g9363_))
              ((##fx= _g9362_ 3) (apply gx#bind-identifier!__1 _g9363_))
              ((##fx= _g9362_ 4) (apply gx#bind-identifier!__2 _g9363_))
              ((##fx= _g9362_ 5) (apply gx#bind-identifier!__% _g9363_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#bind-identifier!
                _g9363_))))))
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
                 (##unchecked-structure-ref _e7101_ '3 gx#syntax-quote::t '#f)
                 (##unchecked-structure-ref _e7101_ '4 gx#syntax-quote::t '#f))
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
                             (##unchecked-structure-ref _e7101_ '1 AST::t '#f)
                             _marks7102_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad identifier"
                             _stx7095_)))))))))
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
    (lambda _g9365_
      (let ((_g9364_ (length _g9365_)))
        (cond ((##fx= _g9364_ 1) (apply gx#core-resolve-identifier__0 _g9365_))
              ((##fx= _g9364_ 2) (apply gx#core-resolve-identifier__1 _g9365_))
              ((##fx= _g9364_ 3) (apply gx#core-resolve-identifier__% _g9365_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-resolve-identifier
                _g9365_))))))
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
                                  (_lp7086_
                                   (gx#core-context-shift _ctx7088_ '1)
                                   (fx+ _dphi7089_ '1))))))))))
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
  (define gx#core-bind!__%
    (lambda (_key6884_ _val6885_ _rebind?6886_ _phi6887_ _ctx6888_)
      (letrec ((_update-binding6890_
                (lambda (_xval6961_)
                  (if (or (_rebind?6886_ _ctx6888_ _xval6961_ _val6885_)
                          (and (##structure-direct-instance-of?
                                _xval6961_
                                'gx#import-binding::t)
                               (or (##unchecked-structure-ref
                                    _xval6961_
                                    '6
                                    gx#import-binding::t
                                    '#f)
                                   (and (##structure-instance-of?
                                         _val6885_
                                         'gx#binding::t)
                                        (not (##structure-direct-instance-of?
                                              _val6885_
                                              'gx#import-binding::t)))))
                          (and (##structure-instance-of?
                                _xval6961_
                                'gx#extern-binding::t)
                               (##structure-instance-of?
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
                                     '#f))))
                      _val6885_
                      (if (and (##structure-direct-instance-of?
                                _val6885_
                                'gx#import-binding::t)
                               (or (##unchecked-structure-ref
                                    _val6885_
                                    '6
                                    gx#import-binding::t
                                    '#f)
                                   (and (##structure-instance-of?
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
                                              '#f)))))
                          _xval6961_
                          (if (and (##structure-direct-instance-of?
                                    _val6885_
                                    'gx#import-binding::t)
                                   (##structure-instance-of?
                                    _xval6961_
                                    'gx#binding::t))
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
                    (table-set! _subst6956_ _id6957_ _eid6959_)
                    _eid6959_)))
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
                                            (##unchecked-structure-set!
                                             _mark6914_
                                             _subst6931_
                                             '1
                                             gx#expander-mark::t
                                             '#f)
                                            (_gensubst6891_
                                             _subst6931_
                                             _id6915_))
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
    (lambda _g9367_
      (let ((_g9366_ (length _g9367_)))
        (cond ((##fx= _g9366_ 2) (apply gx#core-bind!__0 _g9367_))
              ((##fx= _g9366_ 3) (apply gx#core-bind!__1 _g9367_))
              ((##fx= _g9366_ 4) (apply gx#core-bind!__2 _g9367_))
              ((##fx= _g9366_ 5) (apply gx#core-bind!__% _g9367_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bind!
                _g9367_))))))
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
                  (let ((__obj9338 (make-object gx#phi-context::t '5)))
                    (gx#phi-context:::init!__%
                     __obj9338
                     (gensym 'phi)
                     _super6816_)
                    __obj9338)))
               (_make-phi/up6767_
                (lambda (_ctx6811_ _super6812_)
                  (let ((_ctx+16814_ (_make-phi6766_ _super6812_)))
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
                    _ctx+16814_)))
               (_make-phi/down6768_
                (lambda (_ctx6806_ _super6807_)
                  (let ((_ctx-16809_ (_make-phi6766_ _super6807_)))
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
                    _ctx-16809_)))
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
    (lambda _g9369_
      (let ((_g9368_ (length _g9369_)))
        (cond ((##fx= _g9368_ 0) (apply gx#core-context-top__0 _g9369_))
              ((##fx= _g9368_ 1) (apply gx#core-context-top__1 _g9369_))
              ((##fx= _g9368_ 2) (apply gx#core-context-top__% _g9369_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-top
                _g9369_))))))
  (define gx#core-context-root__%
    (lambda (_ctx6696_)
      (let _lp6698_ ((_ctx6700_ _ctx6696_))
        (if (##structure-instance-of? _ctx6700_ 'gx#context-phi::t)
            (_lp6698_
             (##unchecked-structure-ref _ctx6700_ '3 gx#phi-context::t '#f))
            _ctx6700_))))
  (define gx#core-context-root__0
    (lambda ()
      (let ((_ctx6706_ (gx#current-expander-context)))
        (gx#core-context-root__% _ctx6706_))))
  (define gx#core-context-root
    (lambda _g9371_
      (let ((_g9370_ (length _g9371_)))
        (cond ((##fx= _g9370_ 0) (apply gx#core-context-root__0 _g9371_))
              ((##fx= _g9370_ 1) (apply gx#core-context-root__% _g9371_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-root
                _g9371_))))))
  (define gx#core-context-rebind?__%
    (lambda (_ctx6680_ . __66776681_)
      (if (##structure-instance-of? _ctx6680_ 'gx#top-context::t)
          (if (not (##structure-instance-of? _ctx6680_ 'gx#module-context::t))
              (not (##structure-instance-of? _ctx6680_ 'gx#prelude-context::t))
              '#f)
          '#f)))
  (define gx#core-context-rebind?__0
    (lambda ()
      (let ((_ctx6688_ (gx#current-expander-context)))
        (gx#core-context-rebind?__% _ctx6688_))))
  (define gx#core-context-rebind?
    (lambda _g9373_
      (let ((_g9372_ (length _g9373_)))
        (cond ((##fx= _g9372_ 0) (apply gx#core-context-rebind?__0 _g9373_))
              ((##fx= _g9372_ 1) (apply gx#core-context-rebind?__% _g9373_))
              ((##fx>= _g9372_ 1) (apply gx#core-context-rebind?__% _g9373_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-rebind?
                _g9373_))))))
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
    (lambda _g9375_
      (let ((_g9374_ (length _g9375_)))
        (cond ((##fx= _g9374_ 0) (apply gx#core-context-namespace__0 _g9375_))
              ((##fx= _g9374_ 1) (apply gx#core-context-namespace__% _g9375_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-context-namespace
                _g9375_))))))
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
    (lambda _g9377_
      (let ((_g9376_ (length _g9377_)))
        (cond ((##fx= _g9376_ 1) (apply gx#expander-binding?__0 _g9377_))
              ((##fx= _g9376_ 2) (apply gx#expander-binding?__% _g9377_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#expander-binding?
                _g9377_))))))
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
    (lambda _g9379_
      (let ((_g9378_ (length _g9379_)))
        (cond ((##fx= _g9378_ 1) (apply gx#core-bound-identifier?__0 _g9379_))
              ((##fx= _g9378_ 2) (apply gx#core-bound-identifier?__% _g9379_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-bound-identifier?
                _g9379_))))))
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
    (lambda _g9381_
      (let ((_g9380_ (length _g9381_)))
        (cond ((##fx= _g9380_ 1) (apply gx#core-quote-syntax__0 _g9381_))
              ((##fx= _g9380_ 2) (apply gx#core-quote-syntax__1 _g9381_))
              ((##fx= _g9380_ 3) (apply gx#core-quote-syntax__2 _g9381_))
              ((##fx= _g9380_ 4) (apply gx#core-quote-syntax__% _g9381_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-quote-syntax
                _g9381_))))))
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
    (lambda _g9383_
      (let ((_g9382_ (length _g9383_)))
        (cond ((##fx= _g9382_ 1) (apply gx#core-resolve-path__0 _g9383_))
              ((##fx= _g9382_ 2) (apply gx#core-resolve-path__% _g9383_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-resolve-path
                _g9383_))))))
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
    (lambda _g9385_
      (let ((_g9384_ (length _g9385_)))
        (cond ((##fx= _g9384_ 1) (apply gx#core-deserialize-mark__0 _g9385_))
              ((##fx= _g9384_ 2) (apply gx#core-deserialize-mark__% _g9385_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#core-deserialize-mark
                _g9385_))))))
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
    (lambda _g9387_
      (let ((_g9386_ (length _g9387_)))
        (cond ((##fx= _g9386_ 1) (apply gx#syntax-local-e__0 _g9387_))
              ((##fx= _g9386_ 2) (apply gx#syntax-local-e__% _g9387_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#syntax-local-e
                _g9387_))))))
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
    (lambda _g9389_
      (let ((_g9388_ (length _g9389_)))
        (cond ((##fx= _g9388_ 1) (apply gx#syntax-local-value__0 _g9389_))
              ((##fx= _g9388_ 2) (apply gx#syntax-local-value__% _g9389_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#syntax-local-value
                _g9389_))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx6406_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx6406_))))
