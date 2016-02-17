(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
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
  (define gx#expander-context::t
    (make-struct-type
     'gx#expander-context::t
     '#f
     '2
     'expander-context
     '()
     ':init!))
  (define gx#expander-context? (make-struct-predicate gx#expander-context::t))
  (define gx#make-expander-context
    (lambda _$args32380_
      (apply make-struct-instance gx#expander-context::t _$args32380_)))
  (define gx#expander-context-id
    (make-struct-field-accessor gx#expander-context::t '0))
  (define gx#expander-context-table
    (make-struct-field-accessor gx#expander-context::t '1))
  (define gx#expander-context-id-set!
    (make-struct-field-mutator gx#expander-context::t '0))
  (define gx#expander-context-table-set!
    (make-struct-field-mutator gx#expander-context::t '1))
  (begin)
  (define gx#root-context::t
    (make-struct-type
     'gx#root-context::t
     gx#expander-context::t
     '0
     'root-context
     '()
     '#f))
  (define gx#root-context? (make-struct-predicate gx#root-context::t))
  (define gx#make-root-context
    (lambda _$args32377_
      (apply make-struct-instance gx#root-context::t _$args32377_)))
  (begin)
  (define gx#phi-context::t
    (make-struct-type
     'gx#context-phi::t
     gx#expander-context::t
     '3
     'phi-context
     '()
     '#f))
  (define gx#phi-context? (make-struct-predicate gx#phi-context::t))
  (define gx#make-phi-context
    (lambda _$args32374_
      (apply make-struct-instance gx#phi-context::t _$args32374_)))
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
  (begin)
  (define gx#top-context::t
    (make-struct-type
     'gx#top-context::t
     gx#phi-context::t
     '0
     'top-context
     '()
     '#f))
  (define gx#top-context? (make-struct-predicate gx#top-context::t))
  (define gx#make-top-context
    (lambda _$args32371_
      (apply make-struct-instance gx#top-context::t _$args32371_)))
  (begin)
  (define gx#module-context::t
    (make-struct-type
     'gx#module-context::t
     gx#top-context::t
     '6
     'module-context
     '()
     '#f))
  (define gx#module-context? (make-struct-predicate gx#module-context::t))
  (define gx#make-module-context
    (lambda _$args32368_
      (apply make-struct-instance gx#module-context::t _$args32368_)))
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
  (begin)
  (define gx#prelude-context::t
    (make-struct-type
     'gx#prelude-context::t
     gx#top-context::t
     '3
     'prelude-context
     '()
     '#f))
  (define gx#prelude-context? (make-struct-predicate gx#prelude-context::t))
  (define gx#make-prelude-context
    (lambda _$args32365_
      (apply make-struct-instance gx#prelude-context::t _$args32365_)))
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
  (begin)
  (define gx#local-context::t
    (make-struct-type
     'gx#local-context::t
     gx#phi-context::t
     '0
     'local-context
     '()
     '#f))
  (define gx#local-context? (make-struct-predicate gx#local-context::t))
  (define gx#make-local-context
    (lambda _$args32362_
      (apply make-struct-instance gx#local-context::t _$args32362_)))
  (begin)
  (define gx#phi-context:::init!
    (let ((_opt-lambda3234432350_
           (lambda (_self32346_ _id32347_ _super32348_)
             (direct-struct-instance-init!
              _self32346_
              _id32347_
              (make-hash-table-eq)
              _super32348_
              '#f
              '#f))))
      (lambda _g40120_
        (let ((_g40119_ (length _g40120_)))
          (cond ((fx= _g40119_ 2)
                 (apply (lambda (_self32353_ _id32354_)
                          (let ((_super32356_ (gx#current-expander-context)))
                            (_opt-lambda3234432350_
                             _self32353_
                             _id32354_
                             _super32356_)))
                        _g40120_))
                ((fx= _g40119_ 3)
                 (apply (lambda (_self32358_ _id32359_ _super32360_)
                          (_opt-lambda3234432350_
                           _self32358_
                           _id32359_
                           _super32360_))
                        _g40120_))
                (else (error "No clause matching arguments" _g40120_)))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (define gx#local-context:::init!
    (let ((_opt-lambda3233032335_
           (lambda (_self32332_ _super32333_)
             (direct-struct-instance-init!
              _self32332_
              (gensym 'L)
              (make-hash-table-eq)
              _super32333_
              '#f
              '#f))))
      (lambda _g40122_
        (let ((_g40121_ (length _g40122_)))
          (cond ((fx= _g40121_ 1)
                 (apply (lambda (_self32338_)
                          (let ((_super32340_ (gx#current-expander-context)))
                            (_opt-lambda3233032335_ _self32338_ _super32340_)))
                        _g40122_))
                ((fx= _g40121_ 2)
                 (apply (lambda (_self32342_ _super32343_)
                          (_opt-lambda3233032335_ _self32342_ _super32343_))
                        _g40122_))
                (else (error "No clause matching arguments" _g40122_)))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args32328_
      (apply make-struct-instance gx#binding::t _$args32328_)))
  (define gx#binding-id (make-struct-field-accessor gx#binding::t '0))
  (define gx#binding-key (make-struct-field-accessor gx#binding::t '1))
  (define gx#binding-phi (make-struct-field-accessor gx#binding::t '2))
  (define gx#binding-id-set! (make-struct-field-mutator gx#binding::t '0))
  (define gx#binding-key-set! (make-struct-field-mutator gx#binding::t '1))
  (define gx#binding-phi-set! (make-struct-field-mutator gx#binding::t '2))
  (begin)
  (define gx#runtime-binding::t
    (make-struct-type
     'gx#runtime-binding::t
     gx#binding::t
     '0
     'runtime-binding
     '()
     '#f))
  (define gx#runtime-binding? (make-struct-predicate gx#runtime-binding::t))
  (define gx#make-runtime-binding
    (lambda _$args32325_
      (apply make-struct-instance gx#runtime-binding::t _$args32325_)))
  (begin)
  (define gx#local-binding::t
    (make-struct-type
     'gx#local-binding::t
     gx#runtime-binding::t
     '0
     'local-binding
     '()
     '#f))
  (define gx#local-binding? (make-struct-predicate gx#local-binding::t))
  (define gx#make-local-binding
    (lambda _$args32322_
      (apply make-struct-instance gx#local-binding::t _$args32322_)))
  (begin)
  (define gx#top-binding::t
    (make-struct-type
     'gx#top-binding::t
     gx#runtime-binding::t
     '0
     'top-binding
     '()
     '#f))
  (define gx#top-binding? (make-struct-predicate gx#top-binding::t))
  (define gx#make-top-binding
    (lambda _$args32319_
      (apply make-struct-instance gx#top-binding::t _$args32319_)))
  (begin)
  (define gx#module-binding::t
    (make-struct-type
     'gx#module-binding::t
     gx#top-binding::t
     '1
     'module-binding
     '()
     '#f))
  (define gx#module-binding? (make-struct-predicate gx#module-binding::t))
  (define gx#make-module-binding
    (lambda _$args32316_
      (apply make-struct-instance gx#module-binding::t _$args32316_)))
  (define gx#module-binding-context
    (make-struct-field-accessor gx#module-binding::t '0))
  (define gx#module-binding-context-set!
    (make-struct-field-mutator gx#module-binding::t '0))
  (begin)
  (define gx#extern-binding::t
    (make-struct-type
     'gx#extern-binding::t
     gx#top-binding::t
     '0
     'extern-binding
     '()
     '#f))
  (define gx#extern-binding? (make-struct-predicate gx#extern-binding::t))
  (define gx#make-extern-binding
    (lambda _$args32313_
      (apply make-struct-instance gx#extern-binding::t _$args32313_)))
  (begin)
  (define gx#syntax-binding::t
    (make-struct-type
     'gx#syntax-binding::t
     gx#binding::t
     '1
     'syntax-binding
     '((final: . #t))
     '#f))
  (define gx#syntax-binding? (make-struct-predicate gx#syntax-binding::t))
  (define gx#make-syntax-binding
    (lambda _$args32310_
      (apply make-struct-instance gx#syntax-binding::t _$args32310_)))
  (define gx#syntax-binding-e
    (make-struct-field-accessor gx#syntax-binding::t '0))
  (define gx#syntax-binding-e-set!
    (make-struct-field-mutator gx#syntax-binding::t '0))
  (begin)
  (define gx#import-binding::t
    (make-struct-type
     'gx#import-binding::t
     gx#binding::t
     '3
     'import-binding
     '((final: . #t))
     '#f))
  (define gx#import-binding? (make-struct-predicate gx#import-binding::t))
  (define gx#make-import-binding
    (lambda _$args32307_
      (apply make-struct-instance gx#import-binding::t _$args32307_)))
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
  (begin)
  (define gx#alias-binding::t
    (make-struct-type
     'gx#alias-binding::t
     gx#binding::t
     '1
     'alias-binding
     '((final: . #t))
     '#f))
  (define gx#alias-binding? (make-struct-predicate gx#alias-binding::t))
  (define gx#make-alias-binding
    (lambda _$args32304_
      (apply make-struct-instance gx#alias-binding::t _$args32304_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (begin)
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args32301_
      (apply make-struct-instance gx#expander::t _$args32301_)))
  (define gx#expander-e (make-struct-field-accessor gx#expander::t '0))
  (define gx#expander-e-set! (make-struct-field-mutator gx#expander::t '0))
  (begin)
  (define gx#core-expander::t
    (make-struct-type
     'gx#core-expander::t
     gx#expander::t
     '2
     'core-expander
     '()
     '#f))
  (define gx#core-expander? (make-struct-predicate gx#core-expander::t))
  (define gx#make-core-expander
    (lambda _$args32298_
      (apply make-struct-instance gx#core-expander::t _$args32298_)))
  (define gx#core-expander-id
    (make-struct-field-accessor gx#core-expander::t '0))
  (define gx#core-expander-compile-top
    (make-struct-field-accessor gx#core-expander::t '1))
  (define gx#core-expander-id-set!
    (make-struct-field-mutator gx#core-expander::t '0))
  (define gx#core-expander-compile-top-set!
    (make-struct-field-mutator gx#core-expander::t '1))
  (begin)
  (define gx#expression-form::t
    (make-struct-type
     'gx#expression-form::t
     gx#core-expander::t
     '0
     'expression-form
     '()
     '#f))
  (define gx#expression-form? (make-struct-predicate gx#expression-form::t))
  (define gx#make-expression-form
    (lambda _$args32295_
      (apply make-struct-instance gx#expression-form::t _$args32295_)))
  (begin)
  (define gx#special-form::t
    (make-struct-type
     'gx#special-form::t
     gx#core-expander::t
     '0
     'special-form
     '()
     '#f))
  (define gx#special-form? (make-struct-predicate gx#special-form::t))
  (define gx#make-special-form
    (lambda _$args32292_
      (apply make-struct-instance gx#special-form::t _$args32292_)))
  (begin)
  (define gx#definition-form::t
    (make-struct-type
     'gx#definition-form::t
     gx#special-form::t
     '0
     'definition-form
     '()
     '#f))
  (define gx#definition-form? (make-struct-predicate gx#definition-form::t))
  (define gx#make-definition-form
    (lambda _$args32289_
      (apply make-struct-instance gx#definition-form::t _$args32289_)))
  (begin)
  (define gx#top-special-form::t
    (make-struct-type
     'gx#top-special-form::t
     gx#special-form::t
     '0
     'top-special-form
     '()
     '#f))
  (define gx#top-special-form? (make-struct-predicate gx#top-special-form::t))
  (define gx#make-top-special-form
    (lambda _$args32286_
      (apply make-struct-instance gx#top-special-form::t _$args32286_)))
  (begin)
  (define gx#module-special-form::t
    (make-struct-type
     'gx#module-special-form::t
     gx#top-special-form::t
     '0
     'module-special-form
     '()
     '#f))
  (define gx#module-special-form?
    (make-struct-predicate gx#module-special-form::t))
  (define gx#make-module-special-form
    (lambda _$args32283_
      (apply make-struct-instance gx#module-special-form::t _$args32283_)))
  (begin)
  (define gx#feature-expander::t
    (make-struct-type
     'gx#feature-expander::t
     gx#expander::t
     '0
     'feature-expander
     '()
     '#f))
  (define gx#feature-expander? (make-struct-predicate gx#feature-expander::t))
  (define gx#make-feature-expander
    (lambda _$args32280_
      (apply make-struct-instance gx#feature-expander::t _$args32280_)))
  (begin)
  (define gx#private-feature-expander::t
    (make-struct-type
     'gx#private-feature-expander::t
     gx#feature-expander::t
     '0
     'private-feature-expander
     '()
     '#f))
  (define gx#private-feature-expander?
    (make-struct-predicate gx#private-feature-expander::t))
  (define gx#make-private-feature-expander
    (lambda _$args32277_
      (apply make-struct-instance
             gx#private-feature-expander::t
             _$args32277_)))
  (begin)
  (define gx#reserved-expander::t
    (make-struct-type
     'gx#reserved-expander::t
     gx#expander::t
     '0
     'reserved-expander
     '()
     '#f))
  (define gx#reserved-expander?
    (make-struct-predicate gx#reserved-expander::t))
  (define gx#make-reserved-expander
    (lambda _$args32274_
      (apply make-struct-instance gx#reserved-expander::t _$args32274_)))
  (begin)
  (define gx#macro-expander::t
    (make-struct-type
     'gx#core-macro::t
     gx#expander::t
     '0
     'macro-expander
     '()
     '#f))
  (define gx#macro-expander? (make-struct-predicate gx#macro-expander::t))
  (define gx#make-macro-expander
    (lambda _$args32271_
      (apply make-struct-instance gx#macro-expander::t _$args32271_)))
  (begin)
  (define gx#rename-macro-expander::t
    (make-struct-type
     'gx#rename-macro-expander::t
     gx#macro-expander::t
     '0
     'rename-macro-expander
     '()
     '#f))
  (define gx#rename-macro-expander?
    (make-struct-predicate gx#rename-macro-expander::t))
  (define gx#make-rename-macro-expander
    (lambda _$args32268_
      (apply make-struct-instance gx#rename-macro-expander::t _$args32268_)))
  (begin)
  (define gx#user-expander::t
    (make-struct-type
     'gx#macro-expander::t
     gx#macro-expander::t
     '2
     'user-expander
     '()
     '#f))
  (define gx#user-expander? (make-struct-predicate gx#user-expander::t))
  (define gx#make-user-expander
    (lambda _$args32265_
      (apply make-struct-instance gx#user-expander::t _$args32265_)))
  (define gx#user-expander-context
    (make-struct-field-accessor gx#user-expander::t '0))
  (define gx#user-expander-phi
    (make-struct-field-accessor gx#user-expander::t '1))
  (define gx#user-expander-context-set!
    (make-struct-field-mutator gx#user-expander::t '0))
  (define gx#user-expander-phi-set!
    (make-struct-field-mutator gx#user-expander::t '1))
  (begin)
  (define gx#expander-mark::t
    (make-struct-type 'gx#expander-mark::t '#f '4 'expander-mark '() '#f))
  (define gx#expander-mark? (make-struct-predicate gx#expander-mark::t))
  (define gx#make-expander-mark
    (lambda _$args32262_
      (apply make-struct-instance gx#expander-mark::t _$args32262_)))
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
  (begin)
  (define gx#syntax-error::t
    (make-struct-type 'gx#syntax-error::t error::t '3 'syntax-error '() '#f))
  (define gx#syntax-error? (make-struct-predicate gx#syntax-error::t))
  (define gx#make-syntax-error
    (lambda _$args32259_
      (apply make-struct-instance gx#syntax-error::t _$args32259_)))
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
  (begin)
  (define gx#raise-syntax-error
    (lambda (_where32254_ _message32255_ _stx32256_ . _details32257_)
      (raise (gx#make-syntax-error
              _where32254_
              _message32255_
              (cons _stx32256_ _details32257_)
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (define gx#eval-syntax
    (let ((_opt-lambda3223932244_
           (lambda (_stx32241_ _expression?32242_)
             (gx#eval-syntax*
              (gx#core-expand _stx32241_ _expression?32242_)))))
      (lambda _g40124_
        (let ((_g40123_ (length _g40124_)))
          (cond ((fx= _g40123_ 1)
                 (apply (lambda (_stx32247_)
                          (let ((_expression?32249_ '#f))
                            (_opt-lambda3223932244_
                             _stx32247_
                             _expression?32249_)))
                        _g40124_))
                ((fx= _g40123_ 2)
                 (apply (lambda (_stx32251_ _expression?32252_)
                          (_opt-lambda3223932244_
                           _stx32251_
                           _expression?32252_))
                        _g40124_))
                (else (error "No clause matching arguments" _g40124_)))))))
  (define gx#eval-syntax*
    (lambda (_stx32238_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx32238_))))
  (define gx#core-expand
    (let ((_opt-lambda3222332228_
           (lambda (_stx32225_ _expression?32226_)
             (if _expression?32226_
                 (gx#core-expand-expression _stx32225_)
                 (gx#core-expand-top _stx32225_)))))
      (lambda _g40126_
        (let ((_g40125_ (length _g40126_)))
          (cond ((fx= _g40125_ 1)
                 (apply (lambda (_stx32231_)
                          (let ((_expression?32233_ '#f))
                            (_opt-lambda3222332228_
                             _stx32231_
                             _expression?32233_)))
                        _g40126_))
                ((fx= _g40125_ 2)
                 (apply (lambda (_stx32235_ _expression?32236_)
                          (_opt-lambda3222332228_
                           _stx32235_
                           _expression?32236_))
                        _g40126_))
                (else (error "No clause matching arguments" _g40126_)))))))
  (define gx#core-expand-top
    (lambda (_stx32192_)
      (let ((_stx32194_ (gx#core-expand* _stx32192_)))
        (let ((_e3219532202_ _stx32194_))
          (let ((_E3219732206_
                 (lambda () (gx#core-expand-expression _stx32194_))))
            (let ((_E3219632220_
                   (lambda ()
                     (if (gx#stx-pair? _e3219532202_)
                         (let ((_e3219832210_ (gx#syntax-e _e3219532202_)))
                           (let ((_hd3219932213_ (##car _e3219832210_))
                                 (_tl3220032215_ (##cdr _e3219832210_)))
                             (let ((_form32218_ _hd3219932213_))
                               (if (gx#core-bound-identifier? _form32218_)
                                   _stx32194_
                                   (_E3219732206_)))))
                         (_E3219732206_)))))
              (let () (_E3219632220_))))))))
  (define gx#core-expand-expression
    (lambda (_stx32114_)
      (let ((_sealed-expression?32116_
             (lambda (_hd32162_)
               (if (gx#sealed-syntax? _hd32162_)
                   (let ((_e3216332170_ _hd32162_))
                     (let ((_E3216532174_ (lambda () '#f)))
                       (let ((_E3216432188_
                              (lambda ()
                                (if (gx#stx-pair? _e3216332170_)
                                    (let ((_e3216632178_
                                           (gx#syntax-e _e3216332170_)))
                                      (let ((_hd3216732181_
                                             (##car _e3216632178_))
                                            (_tl3216832183_
                                             (##cdr _e3216632178_)))
                                        (let ((_form32186_ _hd3216732181_))
                                          (if '#t
                                              (gx#core-bound-identifier?
                                               _form32186_
                                               gx#expression-form-binding?)
                                              (_E3216532174_)))))
                                    (_E3216532174_)))))
                         (let () (_E3216432188_)))))
                   '#f))))
        (let ((_illegal-expression32117_
               (lambda (_hd32160_ . _g40127_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal expression"
                  _stx32114_
                  _hd32160_))))
          (let ((_expand-e32118_
                 (lambda (_form32155_ _hd32156_)
                   (let ((_bind32158_
                          (if (gx#binding? _form32155_)
                              _form32155_
                              (gx#resolve-identifier _form32155_))))
                     (if (gx#core-expander-binding? _bind32158_)
                         (gx#core-apply-expander
                          (gx#syntax-binding-e _bind32158_)
                          (gx#stx-wrap-source
                           _hd32156_
                           (gx#stx-source _stx32114_)))
                         (if (gx#syntax-binding? _bind32158_)
                             (gx#core-expand-expression
                              (gx#core-apply-expander
                               (gx#syntax-binding-e _bind32158_)
                               (gx#stx-wrap-source
                                _hd32156_
                                (gx#stx-source _stx32114_))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; missing expander"
                              _stx32114_
                              _form32155_)))))))
            (let ((_hd32120_ (gx#core-expand-head _stx32114_)))
              (if (_sealed-expression?32116_ _hd32120_)
                  _hd32120_
                  (if (gx#stx-pair? _hd32120_)
                      (let ((_e3212132128_ _hd32120_))
                        (let ((_E3212332132_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _e3212132128_))))
                          (let ((_E3212232151_
                                 (lambda ()
                                   (if (gx#stx-pair? _e3212132128_)
                                       (let ((_e3212432136_
                                              (gx#syntax-e _e3212132128_)))
                                         (let ((_hd3212532139_
                                                (##car _e3212432136_))
                                               (_tl3212632141_
                                                (##cdr _e3212432136_)))
                                           (let ((_form32144_ _hd3212532139_))
                                             (if '#t
                                                 (let ((_bind32146_
                                                        (if (gx#identifier?
                                                             _form32144_)
                                                            (gx#resolve-identifier
                                                             _form32144_)
                                                            '#f)))
                                                   (if (let ((_$e32148_
                                                              (not _bind32146_)))
                                                         (if _$e32148_
                                                             _$e32148_
                                                             (not (gx#core-expander-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _bind32146_))))
               (_expand-e32118_ '%#call (cons '%#call _hd32120_))
               (if (eq? (gx#binding-id _bind32146_) '%#begin)
                   (gx#core-expand-block* _hd32120_ _illegal-expression32117_)
                   (if (gx#expression-form-binding? _bind32146_)
                       (_expand-e32118_ _bind32146_ _hd32120_)
                       (_illegal-expression32117_ _hd32120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E3212332132_)))))
                                       (_E3212332132_)))))
                            (let () (_E3212232151_)))))
                      (if (gx#core-bound-identifier? _hd32120_)
                          (_illegal-expression32117_ _hd32120_)
                          (if (gx#identifier? _hd32120_)
                              (_expand-e32118_
                               '%#ref
                               (cons '%#ref (cons _hd32120_ '())))
                              (if (gx#stx-datum? _hd32120_)
                                  (_expand-e32118_
                                   '%#quote
                                   (cons '%#quote (cons _hd32120_ '())))
                                  (_illegal-expression32117_
                                   _hd32120_))))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx32109_)
      (call-with-parameters
       (lambda ()
         (let ((_stx32112_ (gx#core-expand-expression _stx32109_)))
           (values _stx32112_ (gx#eval-syntax* _stx32112_))))
       gx#current-expander-phi
       (fx1+ (gx#current-expander-phi)))))
  (define gx#core-expand*
    (let ((_opt-lambda3208832099_
           (lambda (_stx32090_ _stop?32091_)
             ((letrec ((_lp32093_
                        (lambda (_stx32095_)
                          (if (_stop?32091_ _stx32095_)
                              _stx32095_
                              (let ((_rstx32097_ (gx#core-expand1 _stx32095_)))
                                (if (eq? _stx32095_ _rstx32097_)
                                    _stx32095_
                                    (_lp32093_ _rstx32097_)))))))
                _lp32093_)
              _stx32090_))))
      (lambda _g40129_
        (let ((_g40128_ (length _g40129_)))
          (cond ((fx= _g40128_ 1)
                 (apply (lambda (_stx32102_)
                          (let ((_stop?32104_ false))
                            (_opt-lambda3208832099_ _stx32102_ _stop?32104_)))
                        _g40129_))
                ((fx= _g40128_ 2)
                 (apply (lambda (_stx32106_ _stop?32107_)
                          (_opt-lambda3208832099_ _stx32106_ _stop?32107_))
                        _g40129_))
                (else (error "No clause matching arguments" _g40129_)))))))
  (define gx#core-expand1
    (lambda (_stx32040_)
      (let ((_step32042_
             (lambda (_hd32079_)
               (let ((_bind32081_ (gx#resolve-identifier _hd32079_)))
                 (if (gx#runtime-binding? _bind32081_)
                     _stx32040_
                     (if (gx#syntax-binding? _bind32081_)
                         (gx#core-apply-expander
                          (gx#syntax-binding-e _bind32081_)
                          _stx32040_)
                         (if (not _bind32081_)
                             (begin
                               (if (let ((_$e32083_
                                          (fxpositive?
                                           (gx#current-expander-phi))))
                                     (if _$e32083_
                                         _$e32083_
                                         (let ((_$e32086_
                                                (gx#core-context-rebind?
                                                 (gx#core-context-top))))
                                           (if _$e32086_
                                               _$e32086_
                                               (gx#core-extern-symbol?
                                                (gx#stx-e _hd32079_))))))
                                   '#!void
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Reference to unbound identifier"
                                    _stx32040_
                                    _hd32079_))
                               _stx32040_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx32040_))))))))
        (let ((_e3204332051_ _stx32040_))
          (let ((_E3204932055_ (lambda () _stx32040_)))
            (let ((_E3204532061_
                   (lambda ()
                     (let ((_hd32059_ _e3204332051_))
                       (if (gx#identifier? _hd32059_)
                           (_step32042_ _hd32059_)
                           (_E3204932055_))))))
              (let ((_E3204432075_
                     (lambda ()
                       (if (gx#stx-pair? _e3204332051_)
                           (let ((_e3204632065_ (gx#syntax-e _e3204332051_)))
                             (let ((_hd3204732068_ (##car _e3204632065_))
                                   (_tl3204832070_ (##cdr _e3204632065_)))
                               (let ((_hd32073_ _hd3204732068_))
                                 (if (gx#identifier? _hd32073_)
                                     (_step32042_ _hd32073_)
                                     (_E3204532061_)))))
                           (_E3204532061_)))))
                (let () (_E3204432075_)))))))))
  (define gx#core-expand-head
    (lambda (_stx32006_)
      (let ((_stop?32008_
             (lambda (_stx32010_)
               (let ((_e3201132018_ _stx32010_))
                 (let ((_E3201332022_ (lambda () '#f)))
                   (let ((_E3201232036_
                          (lambda ()
                            (if (gx#stx-pair? _e3201132018_)
                                (let ((_e3201432026_
                                       (gx#syntax-e _e3201132018_)))
                                  (let ((_hd3201532029_ (##car _e3201432026_))
                                        (_tl3201632031_ (##cdr _e3201432026_)))
                                    (let ((_hd32034_ _hd3201532029_))
                                      (if '#t
                                          (gx#core-bound-identifier? _hd32034_)
                                          (_E3201332022_)))))
                                (_E3201332022_)))))
                     (let () (_E3201232036_))))))))
        (gx#core-expand* _stx32006_ _stop?32008_))))
  (define gx#core-expand-block
    (let ((_opt-lambda3181031985_
           (lambda (_stx31812_
                    _expand-special31813_
                    _begin-form31814_
                    _expand-e31815_)
             (letrec ((_expand-splice31817_
                       (lambda (_hd31980_ _body31981_ _rest31982_ _r31983_)
                         (if (gx#stx-list? _body31981_)
                             (_K31821_
                              (gx#stx-foldr cons _rest31982_ _body31981_)
                              _r31983_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx31812_
                              _hd31980_))))
                      (_expand-cond-expand31818_
                       (lambda (_hd31976_ _rest31977_ _r31978_)
                         (_K31821_
                          (cons (gx#core-expand-cond-expand% _hd31976_)
                                _rest31977_)
                          _r31978_)))
                      (_expand-include31819_
                       (lambda (_hd31925_ _rest31926_ _r31927_)
                         (let ((_e3192831938_ _hd31925_))
                           (let ((_E3193031942_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e3192831938_))))
                             (let ((_E3192931972_
                                    (lambda ()
                                      (if (gx#stx-pair? _e3192831938_)
                                          (let ((_e3193131946_
                                                 (gx#syntax-e _e3192831938_)))
                                            (let ((_hd3193231949_
                                                   (##car _e3193131946_))
                                                  (_tl3193331951_
                                                   (##cdr _e3193131946_)))
                                              (if (gx#stx-pair? _tl3193331951_)
                                                  (let ((_e3193431954_
                                                         (gx#syntax-e
                                                          _tl3193331951_)))
                                                    (let ((_hd3193531957_
                                                           (##car _e3193431954_))
                                                          (_tl3193631959_
                                                           (##cdr _e3193431954_)))
                                                      (let ((_path31962_
                                                             _hd3193531957_))
                                                        (if (gx#stx-null?
                                                             _tl3193631959_)
                                                            (if (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path31962_)
                        (let ((_rpath31964_
                               (gx#core-resolve-path
                                _path31962_
                                (gx#stx-source _hd31925_))))
                          (let ((_block31966_
                                 (gx#core-expand-include%
                                  _hd31925_
                                  _rpath31964_)))
                            (let ((_rbody31969_
                                   (call-with-parameters
                                    (lambda ()
                                      (gx#core-expand-block
                                       _block31966_
                                       _expand-special31813_
                                       '#f
                                       _expand-e31815_))
                                    gx#current-expander-path
                                    (cons _rpath31964_
                                          (gx#current-expander-path)))))
                              (let ()
                                (_K31821_
                                 _rest31926_
                                 (foldr cons _r31927_ _rbody31969_))))))
                        (_E3193031942_))
                    (_E3193031942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E3193031942_))))
                                          (_E3193031942_)))))
                               (let () (_E3192931972_)))))))
                      (_expand-expression31820_
                       (lambda (_hd31921_ _rest31922_ _r31923_)
                         (_K31821_
                          _rest31922_
                          (cons (_expand-e31815_ _hd31921_) _r31923_))))
                      (_K31821_
                       (lambda (_rest31851_ _r31852_)
                         (let ((_e3185331860_ _rest31851_))
                           (let ((_E3185531864_
                                  (lambda ()
                                    (if _begin-form31814_
                                        (gx#core-quote-syntax
                                         (gx#core-cons
                                          _begin-form31814_
                                          (reverse _r31852_))
                                         (gx#stx-source _stx31812_))
                                        _r31852_))))
                             (let ((_E3185431917_
                                    (lambda ()
                                      (if (gx#stx-pair? _e3185331860_)
                                          (let ((_e3185631868_
                                                 (gx#syntax-e _e3185331860_)))
                                            (let ((_hd3185731871_
                                                   (##car _e3185631868_))
                                                  (_tl3185831873_
                                                   (##cdr _e3185631868_)))
                                              (let ((_hd31876_ _hd3185731871_))
                                                (let ((_rest31878_
                                                       _tl3185831873_))
                                                  (if '#t
                                                      (let ((_hd31880_
                                                             (gx#core-expand-head
                                                              _hd31876_)))
                                                        (let ((_e3188131888_
                                                               _hd31880_))
                                                          (let ((_E3188331892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda ()
                           (_expand-expression31820_
                            _hd31880_
                            _rest31878_
                            _r31852_))))
                    (let ((_E3188231913_
                           (lambda ()
                             (if (gx#stx-pair? _e3188131888_)
                                 (let ((_e3188431896_
                                        (gx#syntax-e _e3188131888_)))
                                   (let ((_hd3188531899_ (##car _e3188431896_))
                                         (_tl3188631901_
                                          (##cdr _e3188431896_)))
                                     (let ((_form31904_ _hd3188531899_))
                                       (let ((_body31906_ _tl3188631901_))
                                         (if '#t
                                             (let ((_bind31908_
                                                    (if (gx#identifier?
                                                         _form31904_)
                                                        (gx#resolve-identifier
                                                         _form31904_)
                                                        '#f)))
                                               (if (gx#special-form-binding?
                                                    _bind31908_)
                                                   (let ((_$e31910_
                                                          (gx#binding-id
                                                           _bind31908_)))
                                                     (if (eq? _$e31910_
                                                              '%#begin)
                                                         (_expand-splice31817_
                                                          _hd31880_
                                                          _body31906_
                                                          _rest31878_
                                                          _r31852_)
                                                         (if (eq? _$e31910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#cond-expand)
                     (_expand-cond-expand31818_ _hd31880_ _rest31878_ _r31852_)
                     (if (eq? _$e31910_ '%#include)
                         (_expand-include31819_ _hd31880_ _rest31878_ _r31852_)
                         (_expand-special31813_
                          _hd31880_
                          _K31821_
                          _rest31878_
                          _r31852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_expand-expression31820_
                                                    _hd31880_
                                                    _rest31878_
                                                    _r31852_)))
                                             (_E3188331892_))))))
                                 (_E3188331892_)))))
                      (let () (_E3188231913_))))))
              (_E3185531864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E3185531864_)))))
                               (let () (_E3185431917_))))))))
               (let ((_e3182231829_ _stx31812_))
                 (let ((_E3182431833_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e3182231829_))))
                   (let ((_E3182331847_
                          (lambda ()
                            (if (gx#stx-pair? _e3182231829_)
                                (let ((_e3182531837_
                                       (gx#syntax-e _e3182231829_)))
                                  (let ((_hd3182631840_ (##car _e3182531837_))
                                        (_tl3182731842_ (##cdr _e3182531837_)))
                                    (let ((_body31845_ _tl3182731842_))
                                      (if (gx#stx-list? _body31845_)
                                          (_K31821_ _body31845_ '())
                                          (_E3182431833_)))))
                                (_E3182431833_)))))
                     (let () (_E3182331847_)))))))))
      (lambda _g40131_
        (let ((_g40130_ (length _g40131_)))
          (cond ((fx= _g40130_ 2)
                 (apply (lambda (_stx31988_ _expand-special31989_)
                          (let ((_begin-form31991_ '%#begin))
                            (let ((_expand-e31993_ gx#core-expand-expression))
                              (_opt-lambda3181031985_
                               _stx31988_
                               _expand-special31989_
                               _begin-form31991_
                               _expand-e31993_))))
                        _g40131_))
                ((fx= _g40130_ 3)
                 (apply (lambda (_stx31995_
                                 _expand-special31996_
                                 _begin-form31997_)
                          (let ((_expand-e31999_ gx#core-expand-expression))
                            (_opt-lambda3181031985_
                             _stx31995_
                             _expand-special31996_
                             _begin-form31997_
                             _expand-e31999_)))
                        _g40131_))
                ((fx= _g40130_ 4)
                 (apply (lambda (_stx32001_
                                 _expand-special32002_
                                 _begin-form32003_
                                 _expand-e32004_)
                          (_opt-lambda3181031985_
                           _stx32001_
                           _expand-special32002_
                           _begin-form32003_
                           _expand-e32004_))
                        _g40131_))
                (else (error "No clause matching arguments" _g40131_)))))))
  (define gx#core-expand-block*
    (lambda (_stx31760_ _expand-special31761_)
      (let ((_g3176231773_
             (gx#core-expand-block _stx31760_ _expand-special31761_ '#f)))
        (let ((_E3176631777_
               (lambda () (error '"No clause matching" _g3176231773_))))
          (let ((_try-match3176531788_
                 (lambda ()
                   (let ((_K3176731783_
                          (lambda (_body31781_)
                            (gx#core-quote-syntax
                             (gx#core-cons '%#begin (reverse _body31781_))
                             (gx#stx-source _stx31760_)))))
                     (let ((_body31786_ _g3176231773_))
                       (_K3176731783_ _body31786_))))))
            (let ((_try-match3176431804_
                   (lambda ()
                     (let ((_K3176831794_ (lambda (_expr31792_) _expr31792_)))
                       (if (##pair? _g3176231773_)
                           (let ((_hd3176931797_ (##car _g3176231773_))
                                 (_tl3177031799_ (##cdr _g3176231773_)))
                             (let ((_expr31802_ _hd3176931797_))
                               (if (##null? _tl3177031799_)
                                   (_K3176831794_ _expr31802_)
                                   (_try-match3176531788_))))
                           (_try-match3176531788_))))))
              (let ((_K3177131808_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; empty block"
                        _stx31760_))))
                (if (##null? _g3176231773_)
                    (_K3177131808_)
                    (_try-match3176431804_)))))))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx31618_)
      (letrec ((_satisfied?31620_
                (lambda (_condition31718_)
                  (let ((_e3171931727_ _condition31718_))
                    (let ((_E3172231731_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e3171931727_))))
                      (let ((_E3172131750_
                             (lambda ()
                               (if (gx#stx-pair? _e3171931727_)
                                   (let ((_e3172331735_
                                          (gx#syntax-e _e3171931727_)))
                                     (let ((_hd3172431738_
                                            (##car _e3172331735_))
                                           (_tl3172531740_
                                            (##cdr _e3172331735_)))
                                       (let ((_combinator31743_
                                              _hd3172431738_))
                                         (let ((_body31745_ _tl3172531740_))
                                           (if (gx#stx-list? _body31745_)
                                               (let ((_$e31747_
                                                      (gx#stx-e
                                                       _combinator31743_)))
                                                 (if (eq? _$e31747_ 'not)
                                                     (not (gx#stx-ormap
                                                           _satisfied?31620_
                                                           _body31745_))
                                                     (if (eq? _$e31747_ 'and)
                                                         (gx#stx-andmap
                                                          _satisfied?31620_
                                                          _body31745_)
                                                         (if (eq? _$e31747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'or)
                     (gx#stx-ormap _satisfied?31620_ _body31745_)
                     (if (eq? _$e31747_ 'defined)
                         (gx#stx-andmap gx#core-resolve-identifier _body31745_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _stx31618_
                          _combinator31743_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E3172231731_))))))
                                   (_E3172231731_)))))
                        (let ((_E3172031756_
                               (lambda ()
                                 (let ((_id31754_ _e3171931727_))
                                   (if (gx#identifier? _id31754_)
                                       (gx#core-bound-identifier?
                                        _id31754_
                                        gx#feature-binding?)
                                       (_E3172131750_))))))
                          (let () (_E3172031756_))))))))
               (_loop31621_
                (lambda (_rest31651_)
                  (let ((_e3165231660_ _rest31651_))
                    (let ((_E3165831664_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e3165231660_))))
                      (let ((_E3165431668_
                             (lambda ()
                               (if (gx#stx-null? _e3165231660_)
                                   (if '#t '() (_E3165831664_))
                                   (_E3165831664_)))))
                        (let ((_E3165331714_
                               (lambda ()
                                 (if (gx#stx-pair? _e3165231660_)
                                     (let ((_e3165531672_
                                            (gx#syntax-e _e3165231660_)))
                                       (let ((_hd3165631675_
                                              (##car _e3165531672_))
                                             (_tl3165731677_
                                              (##cdr _e3165531672_)))
                                         (let ((_hd31680_ _hd3165631675_))
                                           (let ((_rest31682_ _tl3165731677_))
                                             (if '#t
                                                 (let ((_e3168331690_
                                                        _hd31680_))
                                                   (let ((_E3168531694_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e3168331690_))))
                                                     (let ((_E3168431710_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3168331690_)
                          (let ((_e3168631698_ (gx#syntax-e _e3168331690_)))
                            (let ((_hd3168731701_ (##car _e3168631698_))
                                  (_tl3168831703_ (##cdr _e3168631698_)))
                              (let ((_condition31706_ _hd3168731701_))
                                (let ((_body31708_ _tl3168831703_))
                                  (if '#t
                                      (if (gx#stx-eq? _condition31706_ 'else)
                                          (if (gx#stx-null? _rest31682_)
                                              _body31708_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _stx31618_
                                               _hd31680_))
                                          (if (_satisfied?31620_
                                               _condition31706_)
                                              _body31708_
                                              (_loop31621_ _rest31682_)))
                                      (_E3168531694_))))))
                          (_E3168531694_)))))
               (let () (_E3168431710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E3165431668_))))))
                                     (_E3165431668_)))))
                          (let () (_E3165331714_)))))))))
        (let ((_e3162231629_ _stx31618_))
          (let ((_E3162431633_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e3162231629_))))
            (let ((_E3162331647_
                   (lambda ()
                     (if (gx#stx-pair? _e3162231629_)
                         (let ((_e3162531637_ (gx#syntax-e _e3162231629_)))
                           (let ((_hd3162631640_ (##car _e3162531637_))
                                 (_tl3162731642_ (##cdr _e3162531637_)))
                             (let ((_clauses31645_ _tl3162731642_))
                               (if (gx#stx-list? _clauses31645_)
                                   (gx#core-cons
                                    '%#begin
                                    (_loop31621_ _clauses31645_))
                                   (_E3162431633_)))))
                         (_E3162431633_)))))
              (let () (_E3162331647_))))))))
  (define gx#core-expand-include%
    (let ((_opt-lambda3155931608_
           (lambda (_stx31561_ _rpath31562_)
             (let ((_e3156331573_ _stx31561_))
               (let ((_E3156531577_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _e3156331573_))))
                 (let ((_E3156431604_
                        (lambda ()
                          (if (gx#stx-pair? _e3156331573_)
                              (let ((_e3156631581_
                                     (gx#syntax-e _e3156331573_)))
                                (let ((_hd3156731584_ (##car _e3156631581_))
                                      (_tl3156831586_ (##cdr _e3156631581_)))
                                  (if (gx#stx-pair? _tl3156831586_)
                                      (let ((_e3156931589_
                                             (gx#syntax-e _tl3156831586_)))
                                        (let ((_hd3157031592_
                                               (##car _e3156931589_))
                                              (_tl3157131594_
                                               (##cdr _e3156931589_)))
                                          (let ((_path31597_ _hd3157031592_))
                                            (if (gx#stx-null? _tl3157131594_)
                                                (if (gx#stx-string?
                                                     _path31597_)
                                                    (let ((_rpath31602_
                                                           (let ((_$e31599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _rpath31562_))
                     (if _$e31599_
                         _$e31599_
                         (gx#core-resolve-path
                          _path31597_
                          (gx#stx-source _stx31561_))))))
              (if (member _rpath31602_ (gx#current-expander-path))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; cyclic expansion"
                   _stx31561_)
                  (gx#syntax-local-rewrap
                   (gx#stx-wrap-source
                    (gx#core-cons
                     '%#begin
                     (read-syntax-from-file _rpath31602_))
                    (gx#stx-source _stx31561_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3156531577_))
                                                (_E3156531577_)))))
                                      (_E3156531577_))))
                              (_E3156531577_)))))
                   (let () (_E3156431604_))))))))
      (lambda _g40133_
        (let ((_g40132_ (length _g40133_)))
          (cond ((fx= _g40132_ 1)
                 (apply (lambda (_stx31611_)
                          (let ((_rpath31613_ '#f))
                            (_opt-lambda3155931608_ _stx31611_ _rpath31613_)))
                        _g40133_))
                ((fx= _g40132_ 2)
                 (apply (lambda (_stx31615_ _rpath31616_)
                          (_opt-lambda3155931608_ _stx31615_ _rpath31616_))
                        _g40133_))
                (else (error "No clause matching arguments" _g40133_)))))))
  (define gx#core-apply-expander
    (let ((_opt-lambda3152831548_
           (lambda (_K31530_ _stx31531_ _method31532_)
             (if (procedure? _K31530_)
                 (let ((_$e31534_ (gx#stx-source _stx31531_)))
                   (if _$e31534_
                       ((lambda (_g3153631538_)
                          (gx#stx-wrap-source
                           (_K31530_ _stx31531_)
                           _g3153631538_))
                        _$e31534_)
                       (_K31530_ _stx31531_)))
                 (let ((_$e31541_ (bound-method-ref _K31530_ _method31532_)))
                   (if _$e31541_
                       ((lambda (_g3154331545_)
                          (gx#core-apply-expander
                           _g3154331545_
                           _stx31531_
                           _method31532_))
                        _$e31541_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _stx31531_
                        _method31532_)))))))
      (lambda _g40135_
        (let ((_g40134_ (length _g40135_)))
          (cond ((fx= _g40134_ 2)
                 (apply (lambda (_K31551_ _stx31552_)
                          (let ((_method31554_ 'apply-macro-expander))
                            (_opt-lambda3152831548_
                             _K31551_
                             _stx31552_
                             _method31554_)))
                        _g40135_))
                ((fx= _g40134_ 3)
                 (apply (lambda (_K31556_ _stx31557_ _method31558_)
                          (_opt-lambda3152831548_
                           _K31556_
                           _stx31557_
                           _method31558_))
                        _g40135_))
                (else (error "No clause matching arguments" _g40135_)))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self31526_ _stx31527_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx31527_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self31501_ _stx31502_)
      (let ((_self3150331509_ _self31501_))
        (let ((_E3150531513_
               (lambda () (error '"No clause matching" _self3150331509_))))
          (let ((_K3150631518_
                 (lambda (_K31516_)
                   (gx#core-apply-expander _K31516_ _stx31502_))))
            (if (struct-instance? gx#macro-expander::t _self3150331509_)
                (let ((_e3150731521_ (##vector-ref _self3150331509_ '1)))
                  (let ((_K31524_ _e3150731521_)) (_K3150631518_ _K31524_)))
                (_E3150531513_)))))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self31476_ _stx31477_)
      (if (gx#sealed-syntax? _stx31477_)
          _stx31477_
          (let ((_self3147831484_ _self31476_))
            (let ((_E3148031488_
                   (lambda () (error '"No clause matching" _self3147831484_))))
              (let ((_K3148131493_
                     (lambda (_K31491_)
                       (gx#core-apply-expander _K31491_ _stx31477_))))
                (if (struct-instance? gx#core-expander::t _self3147831484_)
                    (let ((_e3148231496_ (##vector-ref _self3147831484_ '1)))
                      (let ((_K31499_ _e3148231496_))
                        (_K3148131493_ _K31499_)))
                    (_E3148031488_))))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (define gx#top-special-form::apply-macro-expander
    (let ((_opt-lambda3145831464_
           (lambda (_self31460_ _stx31461_ _top?31462_)
             (if (_top?31462_ (gx#current-expander-context))
                 (gx#core-expander::apply-macro-expander
                  _self31460_
                  _stx31461_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; illegal context"
                  _stx31461_)))))
      (lambda _g40137_
        (let ((_g40136_ (length _g40137_)))
          (cond ((fx= _g40136_ 2)
                 (apply (lambda (_self31467_ _stx31468_)
                          (let ((_top?31470_ gx#top-context?))
                            (_opt-lambda3145831464_
                             _self31467_
                             _stx31468_
                             _top?31470_)))
                        _g40137_))
                ((fx= _g40136_ 3)
                 (apply (lambda (_self31472_ _stx31473_ _top?31474_)
                          (_opt-lambda3145831464_
                           _self31472_
                           _stx31473_
                           _top?31474_))
                        _g40137_))
                (else (error "No clause matching arguments" _g40137_)))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self31456_ _stx31457_)
      (gx#top-special-form::apply-macro-expander
       _self31456_
       _stx31457_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self31403_ _stx31404_)
      (let ((_self3140531411_ _self31403_))
        (let ((_E3140731415_
               (lambda () (error '"No clause matching" _self3140531411_))))
          (let ((_K3140831448_
                 (lambda (_id31418_)
                   (let ((_e3141931426_ _stx31404_))
                     (let ((_E3142131430_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e3141931426_))))
                       (let ((_E3142031444_
                              (lambda ()
                                (if (gx#stx-pair? _e3141931426_)
                                    (let ((_e3142231434_
                                           (gx#syntax-e _e3141931426_)))
                                      (let ((_hd3142331437_
                                             (##car _e3142231434_))
                                            (_tl3142431439_
                                             (##cdr _e3142231434_)))
                                        (let ((_body31442_ _tl3142431439_))
                                          (if '#t
                                              (gx#core-cons
                                               _id31418_
                                               _body31442_)
                                              (_E3142131430_)))))
                                    (_E3142131430_)))))
                         (let () (_E3142031444_))))))))
            (if (struct-instance? gx#rename-macro-expander::t _self3140531411_)
                (let ((_e3140931451_ (##vector-ref _self3140531411_ '1)))
                  (let ((_id31454_ _e3140931451_)) (_K3140831448_ _id31454_)))
                (_E3140731415_)))))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (define gx#core-apply-user-expander
    (let ((_opt-lambda3134931391_
           (lambda (_self31351_ _stx31352_ _method31353_)
             (let ((_self3135431362_ _self31351_))
               (let ((_E3135631366_
                      (lambda ()
                        (error '"No clause matching" _self3135431362_))))
                 (let ((_K3135731373_
                        (lambda (_phi31369_ _ctx31370_ _K31371_)
                          (gx#core-apply-user-macro
                           _K31371_
                           _stx31352_
                           _ctx31370_
                           _phi31369_
                           _method31353_))))
                   (if (struct-instance? gx#user-expander::t _self3135431362_)
                       (let ((_e3135831376_
                              (##vector-ref _self3135431362_ '1)))
                         (let ((_K31379_ _e3135831376_))
                           (let ((_e3135931381_
                                  (##vector-ref _self3135431362_ '2)))
                             (let ((_ctx31384_ _e3135931381_))
                               (let ((_e3136031386_
                                      (##vector-ref _self3135431362_ '3)))
                                 (let ((_phi31389_ _e3136031386_))
                                   (_K3135731373_
                                    _phi31389_
                                    _ctx31384_
                                    _K31379_)))))))
                       (_E3135631366_))))))))
      (lambda _g40139_
        (let ((_g40138_ (length _g40139_)))
          (cond ((fx= _g40138_ 2)
                 (apply (lambda (_self31394_ _stx31395_)
                          (let ((_method31397_ 'apply-macro-expander))
                            (_opt-lambda3134931391_
                             _self31394_
                             _stx31395_
                             _method31397_)))
                        _g40139_))
                ((fx= _g40138_ 3)
                 (apply (lambda (_self31399_ _stx31400_ _method31401_)
                          (_opt-lambda3134931391_
                           _self31399_
                           _stx31400_
                           _method31401_))
                        _g40139_))
                (else (error "No clause matching arguments" _g40139_)))))))
  (define gx#core-apply-user-macro
    (lambda (_K31341_ _stx31342_ _ctx31343_ _phi31344_ _method31345_)
      (let ((_mark31347_
             (gx#make-expander-mark '#f _ctx31343_ _phi31344_ _stx31342_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander
             _K31341_
             (gx#stx-apply-mark _stx31342_ _mark31347_)
             _method31345_)
            _mark31347_))
         gx#current-expander-marks
         (cons _mark31347_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (define gx#resolve-identifier
    (let ((_opt-lambda3131331323_
           (lambda (_stx31315_ _phi31316_ _ctx31317_)
             ((letrec ((_lp31319_
                        (lambda (_bind31321_)
                          (if (gx#import-binding? _bind31321_)
                              (_lp31319_ (gx#import-binding-e _bind31321_))
                              (if (gx#alias-binding? _bind31321_)
                                  (_lp31319_
                                   (gx#core-resolve-identifier
                                    (gx#alias-binding-e _bind31321_)
                                    _phi31316_
                                    _ctx31317_))
                                  _bind31321_)))))
                _lp31319_)
              (gx#core-resolve-identifier _stx31315_ _phi31316_ _ctx31317_)))))
      (lambda _g40141_
        (let ((_g40140_ (length _g40141_)))
          (cond ((fx= _g40140_ 1)
                 (apply (lambda (_stx31326_)
                          (let ((_phi31328_ (gx#current-expander-phi)))
                            (let ((_ctx31330_ (gx#current-expander-context)))
                              (_opt-lambda3131331323_
                               _stx31326_
                               _phi31328_
                               _ctx31330_))))
                        _g40141_))
                ((fx= _g40140_ 2)
                 (apply (lambda (_stx31332_ _phi31333_)
                          (let ((_ctx31335_ (gx#current-expander-context)))
                            (_opt-lambda3131331323_
                             _stx31332_
                             _phi31333_
                             _ctx31335_)))
                        _g40141_))
                ((fx= _g40140_ 3)
                 (apply (lambda (_stx31337_ _phi31338_ _ctx31339_)
                          (_opt-lambda3131331323_
                           _stx31337_
                           _phi31338_
                           _ctx31339_))
                        _g40141_))
                (else (error "No clause matching arguments" _g40141_)))))))
  (define gx#bind-identifier!
    (let ((_opt-lambda3127131281_
           (lambda (_stx31273_ _val31274_ _rebind?31275_ _phi31276_ _ctx31277_)
             (let ((_rebind?31279_
                    (if (not _rebind?31275_)
                        gx#core-context-rebind?
                        (if (procedure? _rebind?31275_) _rebind?31275_ true))))
               (gx#core-bind!
                (gx#core-identifier-key _stx31273_)
                _val31274_
                _rebind?31279_
                _phi31276_
                _ctx31277_)))))
      (lambda _g40143_
        (let ((_g40142_ (length _g40143_)))
          (cond ((fx= _g40142_ 2)
                 (apply (lambda (_stx31284_ _val31285_)
                          (let ((_rebind?31287_ '#f))
                            (let ((_phi31289_ (gx#current-expander-phi)))
                              (let ((_ctx31291_ (gx#current-expander-context)))
                                (_opt-lambda3127131281_
                                 _stx31284_
                                 _val31285_
                                 _rebind?31287_
                                 _phi31289_
                                 _ctx31291_)))))
                        _g40143_))
                ((fx= _g40142_ 3)
                 (apply (lambda (_stx31293_ _val31294_ _rebind?31295_)
                          (let ((_phi31297_ (gx#current-expander-phi)))
                            (let ((_ctx31299_ (gx#current-expander-context)))
                              (_opt-lambda3127131281_
                               _stx31293_
                               _val31294_
                               _rebind?31295_
                               _phi31297_
                               _ctx31299_))))
                        _g40143_))
                ((fx= _g40142_ 4)
                 (apply (lambda (_stx31301_
                                 _val31302_
                                 _rebind?31303_
                                 _phi31304_)
                          (let ((_ctx31306_ (gx#current-expander-context)))
                            (_opt-lambda3127131281_
                             _stx31301_
                             _val31302_
                             _rebind?31303_
                             _phi31304_
                             _ctx31306_)))
                        _g40143_))
                ((fx= _g40142_ 5)
                 (apply (lambda (_stx31308_
                                 _val31309_
                                 _rebind?31310_
                                 _phi31311_
                                 _ctx31312_)
                          (_opt-lambda3127131281_
                           _stx31308_
                           _val31309_
                           _rebind?31310_
                           _phi31311_
                           _ctx31312_))
                        _g40143_))
                (else (error "No clause matching arguments" _g40143_)))))))
  (define gx#core-resolve-identifier
    (let ((_opt-lambda3124331254_
           (lambda (_stx31245_ _phi31246_ _ctx31247_)
             ((letrec ((_lp31249_
                        (lambda (_e31251_ _marks31252_)
                          (if (symbol? _e31251_)
                              (gx#core-resolve-binding
                               _e31251_
                               _phi31246_
                               _ctx31247_
                               (reverse _marks31252_))
                              (if (gx#identifier-quote? _e31251_)
                                  (gx#core-resolve-binding
                                   (AST-e _e31251_)
                                   _phi31246_
                                   (gx#syntax-quote-context _e31251_)
                                   (gx#syntax-quote-marks _e31251_))
                                  (if (gx#identifier-wrap? _e31251_)
                                      (gx#core-resolve-binding
                                       (AST-e _e31251_)
                                       _phi31246_
                                       _ctx31247_
                                       (foldl gx#apply-mark
                                              (gx#identifier-wrap-marks
                                               _e31251_)
                                              _marks31252_))
                                      (if (gx#syntax-wrap? _e31251_)
                                          (_lp31249_
                                           (AST-e _e31251_)
                                           (gx#apply-mark
                                            (gx#syntax-wrap-mark _e31251_)
                                            _marks31252_))
                                          (if (AST? _e31251_)
                                              (_lp31249_
                                               (AST-e _e31251_)
                                               _marks31252_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad identifier"
                                               _stx31245_)))))))))
                _lp31249_)
              _stx31245_
              (gx#current-expander-marks)))))
      (lambda _g40145_
        (let ((_g40144_ (length _g40145_)))
          (cond ((fx= _g40144_ 1)
                 (apply (lambda (_stx31257_)
                          (let ((_phi31259_ (gx#current-expander-phi)))
                            (let ((_ctx31261_ (gx#current-expander-context)))
                              (_opt-lambda3124331254_
                               _stx31257_
                               _phi31259_
                               _ctx31261_))))
                        _g40145_))
                ((fx= _g40144_ 2)
                 (apply (lambda (_stx31263_ _phi31264_)
                          (let ((_ctx31266_ (gx#current-expander-context)))
                            (_opt-lambda3124331254_
                             _stx31263_
                             _phi31264_
                             _ctx31266_)))
                        _g40145_))
                ((fx= _g40144_ 3)
                 (apply (lambda (_stx31268_ _phi31269_ _ctx31270_)
                          (_opt-lambda3124331254_
                           _stx31268_
                           _phi31269_
                           _ctx31270_))
                        _g40145_))
                (else (error "No clause matching arguments" _g40145_)))))))
  (define gx#core-resolve-binding
    (lambda (_id31159_ _phi31160_ _ctx31161_ _marks31162_)
      (let ((_resolve31164_
             (lambda (_ctx31232_ _src-phi31233_ _key31234_)
               ((letrec ((_lp31236_
                          (lambda (_ctx31238_ _dphi31239_)
                            (let ((_$e31241_
                                   (gx#core-context-resolve
                                    _ctx31238_
                                    _key31234_)))
                              (if _$e31241_
                                  (values _$e31241_)
                                  (if (fxzero? _dphi31239_)
                                      '#f
                                      (if (fxpositive? _dphi31239_)
                                          (_lp31236_
                                           (gx#core-context-shift
                                            _ctx31238_
                                            '-1)
                                           (fx1- _dphi31239_))
                                          (if (fxnegative? _dphi31239_)
                                              (_lp31236_
                                               (gx#core-context-shift
                                                _ctx31238_
                                                '1)
                                               (fx1+ _dphi31239_))
                                              '#!void))))))))
                  _lp31236_)
                (gx#core-context-shift _ctx31232_ _phi31160_)
                (fx- _phi31160_ _src-phi31233_)))))
        ((letrec ((_lp31166_
                   (lambda (_ctx31168_ _src-phi31169_ _rest31170_)
                     (let ((_rest3117131179_ _rest31170_))
                       (let ((_E3117431183_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest3117131179_))))
                         (let ((_else3117331187_
                                (lambda ()
                                  (_resolve31164_
                                   _ctx31168_
                                   _src-phi31169_
                                   _id31159_))))
                           (let ((_K3117531220_
                                  (lambda (_rest31190_ _hd31191_)
                                    (let ((_hd3119231198_ _hd31191_))
                                      (let ((_E3119431202_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _hd3119231198_))))
                                        (let ((_K3119531212_
                                               (lambda (_subst31205_)
                                                 (let ((_$e31209_
                                                        (let ((_key31207_
                                                               (if _subst31205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (hash-get _subst31205_ _id31159_)
                           '#f)))
                  (if _key31207_
                      (_resolve31164_ _ctx31168_ _src-phi31169_ _key31207_)
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e31209_
                                                       _$e31209_
                                                       (_lp31166_
                                                        (gx#expander-mark-context
                                                         _hd31191_)
                                                        (gx#expander-mark-phi
                                                         _hd31191_)
                                                        _rest31190_))))))
                                          (if (struct-instance?
                                               gx#expander-mark::t
                                               _hd3119231198_)
                                              (let ((_e3119631215_
                                                     (##vector-ref
                                                      _hd3119231198_
                                                      '1)))
                                                (let ((_subst31218_
                                                       _e3119631215_))
                                                  (_K3119531212_
                                                   _subst31218_)))
                                              (_E3119431202_))))))))
                             (if (##pair? _rest3117131179_)
                                 (let ((_hd3117631223_
                                        (##car _rest3117131179_))
                                       (_tl3117731225_
                                        (##cdr _rest3117131179_)))
                                   (let ((_hd31228_ _hd3117631223_))
                                     (let ((_rest31230_ _tl3117731225_))
                                       (_K3117531220_ _rest31230_ _hd31228_))))
                                 (_else3117331187_)))))))))
           _lp31166_)
         _ctx31161_
         _phi31160_
         _marks31162_))))
  (define gx#core-bind!
    (let ((_opt-lambda3103331126_
           (lambda (_key31035_ _val31036_ _rebind?31037_ _phi31038_ _ctx31039_)
             (let ((_update-binding31041_
                    (lambda (_xval31112_)
                      (if (let ((_$e31114_
                                 (_rebind?31037_
                                  _ctx31039_
                                  _xval31112_
                                  _val31036_)))
                            (if _$e31114_
                                _$e31114_
                                (let ((_$e31120_
                                       (if (gx#import-binding? _xval31112_)
                                           (let ((_$e31117_
                                                  (gx#import-binding-weak?
                                                   _xval31112_)))
                                             (if _$e31117_
                                                 _$e31117_
                                                 (if (gx#binding? _val31036_)
                                                     (not (gx#import-binding?
                                                           _val31036_))
                                                     '#f)))
                                           '#f)))
                                  (if _$e31120_
                                      _$e31120_
                                      (if (gx#extern-binding? _xval31112_)
                                          (if (gx#runtime-binding? _val31036_)
                                              (eq? (gx#binding-id _val31036_)
                                                   (gx#binding-id _xval31112_))
                                              '#f)
                                          '#f)))))
                          _val31036_
                          (if (if (gx#import-binding? _val31036_)
                                  (let ((_$e31123_
                                         (gx#import-binding-weak? _val31036_)))
                                    (if _$e31123_
                                        _$e31123_
                                        (if (gx#binding? _xval31112_)
                                            (eq? (gx#binding-id _val31036_)
                                                 (gx#binding-id _xval31112_))
                                            '#f)))
                                  '#f)
                              _xval31112_
                              (gx#raise-syntax-error
                               '#f
                               '"Bad binding; rebind conflict"
                               _key31035_
                               _xval31112_
                               _val31036_))))))
               (let ((_gensubst31042_
                      (lambda (_subst31107_ _id31108_)
                        (let ((_eid31110_
                               (gensym (if (uninterned-symbol? _id31108_)
                                           '%
                                           _id31108_))))
                          (begin
                            (hash-put! _subst31107_ _id31108_ _eid31110_)
                            _eid31110_)))))
                 (let ((_subst!31043_
                        (lambda (_key31045_)
                          (let ((_key3104631054_ _key31045_))
                            (let ((_E3104931058_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _key3104631054_))))
                              (let ((_else3104831062_ (lambda () _key31045_)))
                                (let ((_K3105031095_
                                       (lambda (_mark31065_ _id31066_)
                                         (let ((_mark3106731073_ _mark31065_))
                                           (let ((_E3106931077_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _mark3106731073_))))
                                             (let ((_K3107031087_
                                                    (lambda (_subst31080_)
                                                      (if (not _subst31080_)
                                                          (let ((_subst31082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (make-hash-table-eq)))
                    (begin
                      (gx#expander-mark-subst-set! _mark31065_ _subst31082_)
                      (_gensubst31042_ _subst31082_ _id31066_)))
                  (let ((_$e31084_ (hash-get _subst31080_ _id31066_)))
                    (if _$e31084_
                        (values _$e31084_)
                        (_gensubst31042_ _subst31080_ _id31066_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (struct-instance?
                                                    gx#expander-mark::t
                                                    _mark3106731073_)
                                                   (let ((_e3107131090_
                                                          (##vector-ref
                                                           _mark3106731073_
                                                           '1)))
                                                     (let ((_subst31093_
                                                            _e3107131090_))
                                                       (_K3107031087_
                                                        _subst31093_)))
                                                   (_E3106931077_))))))))
                                  (if (##pair? _key3104631054_)
                                      (let ((_hd3105131098_
                                             (##car _key3104631054_))
                                            (_tl3105231100_
                                             (##cdr _key3104631054_)))
                                        (let ((_id31103_ _hd3105131098_))
                                          (let ((_mark31105_ _tl3105231100_))
                                            (_K3105031095_
                                             _mark31105_
                                             _id31103_))))
                                      (_else3104831062_)))))))))
                   (gx#core-context-bind!
                    (gx#core-context-shift _ctx31039_ _phi31038_)
                    (_subst!31043_ _key31035_)
                    _val31036_
                    _update-binding31041_)))))))
      (lambda _g40147_
        (let ((_g40146_ (length _g40147_)))
          (cond ((fx= _g40146_ 2)
                 (apply (lambda (_key31129_ _val31130_)
                          (let ((_rebind?31132_ false))
                            (let ((_phi31134_ (gx#current-expander-phi)))
                              (let ((_ctx31136_ (gx#current-expander-context)))
                                (_opt-lambda3103331126_
                                 _key31129_
                                 _val31130_
                                 _rebind?31132_
                                 _phi31134_
                                 _ctx31136_)))))
                        _g40147_))
                ((fx= _g40146_ 3)
                 (apply (lambda (_key31138_ _val31139_ _rebind?31140_)
                          (let ((_phi31142_ (gx#current-expander-phi)))
                            (let ((_ctx31144_ (gx#current-expander-context)))
                              (_opt-lambda3103331126_
                               _key31138_
                               _val31139_
                               _rebind?31140_
                               _phi31142_
                               _ctx31144_))))
                        _g40147_))
                ((fx= _g40146_ 4)
                 (apply (lambda (_key31146_
                                 _val31147_
                                 _rebind?31148_
                                 _phi31149_)
                          (let ((_ctx31151_ (gx#current-expander-context)))
                            (_opt-lambda3103331126_
                             _key31146_
                             _val31147_
                             _rebind?31148_
                             _phi31149_
                             _ctx31151_)))
                        _g40147_))
                ((fx= _g40146_ 5)
                 (apply (lambda (_key31153_
                                 _val31154_
                                 _rebind?31155_
                                 _phi31156_
                                 _ctx31157_)
                          (_opt-lambda3103331126_
                           _key31153_
                           _val31154_
                           _rebind?31155_
                           _phi31156_
                           _ctx31157_))
                        _g40147_))
                (else (error "No clause matching arguments" _g40147_)))))))
  (define gx#core-identifier-key
    (lambda (_stx30965_)
      (if (symbol? _stx30965_)
          (let ((_g3096630974_ (gx#current-expander-marks)))
            (let ((_E3096930978_
                   (lambda () (error '"No clause matching" _g3096630974_))))
              (let ((_else3096830982_ (lambda () _stx30965_)))
                (let ((_K3097030987_
                       (lambda (_hd30985_) (cons _stx30965_ _hd30985_))))
                  (if (##pair? _g3096630974_)
                      (let ((_hd3097130990_ (##car _g3096630974_))
                            (_tl3097230992_ (##cdr _g3096630974_)))
                        (let ((_hd30995_ _hd3097130990_))
                          (_K3097030987_ _hd30995_)))
                      (_else3096830982_))))))
          (if (gx#identifier? _stx30965_)
              (let ((_id30997_ (gx#syntax-local-unwrap _stx30965_)))
                (let ((_eid30999_ (gx#stx-e _id30997_)))
                  (let ((_marks31001_ (gx#stx-identifier-marks _id30997_)))
                    (let ()
                      (let ((_marks3100331011_ _marks31001_))
                        (let ((_E3100631015_
                               (lambda ()
                                 (error '"No clause matching"
                                        _marks3100331011_))))
                          (let ((_else3100531019_ (lambda () _eid30999_)))
                            (let ((_K3100731024_
                                   (lambda (_hd31022_)
                                     (cons _eid30999_ _hd31022_))))
                              (if (##pair? _marks3100331011_)
                                  (let ((_hd3100831027_
                                         (##car _marks3100331011_))
                                        (_tl3100931029_
                                         (##cdr _marks3100331011_)))
                                    (let ((_hd31032_ _hd3100831027_))
                                      (_K3100731024_ _hd31032_)))
                                  (_else3100531019_))))))))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx30965_)))))
  (define gx#core-context-shift
    (lambda (_ctx30910_ _phi30911_)
      (let ((_make-phi30913_
             (lambda (_super30963_)
               (gx#make-phi-context (gensym 'phi) _super30963_))))
        (let ((_make-phi/up30914_
               (lambda (_ctx30958_ _super30959_)
                 (let ((_ctx+130961_ (_make-phi30913_ _super30959_)))
                   (begin
                     (gx#phi-context-up-set! _ctx30958_ _ctx+130961_)
                     (gx#phi-context-down-set! _ctx+130961_ _ctx30958_)
                     _ctx+130961_)))))
          (let ((_make-phi/down30915_
                 (lambda (_ctx30953_ _super30954_)
                   (let ((_ctx-130956_ (_make-phi30913_ _super30954_)))
                     (begin
                       (gx#phi-context-up-set! _ctx-130956_ _ctx30953_)
                       (gx#phi-context-down-set! _ctx30953_ _ctx-130956_)
                       _ctx-130956_)))))
            (let ((_shift30916_
                   (lambda (_ctx30937_
                            _delta30938_
                            _make-delta-context30939_
                            _phi30940_
                            _K30941_)
                     (let ((_$e30943_ (gx#phi-context-super _ctx30937_)))
                       (if _$e30943_
                           ((lambda (_super30946_)
                              (let ((_super30948_
                                     (_K30941_ _super30946_ _delta30938_)))
                                (let ((_ctx+d30950_
                                       (_make-delta-context30939_
                                        _ctx30937_
                                        _super30948_)))
                                  (let ()
                                    (_K30941_
                                     _ctx+d30950_
                                     (fx- _phi30940_ _delta30938_))))))
                            _$e30943_)
                           (error '"Bad context" _ctx30937_))))))
              ((letrec ((_K30918_
                         (lambda (_ctx30920_ _phi30921_)
                           (if (fxzero? _phi30921_)
                               _ctx30920_
                               (if (gx#phi-context? _ctx30920_)
                                   (if (fxpositive? _phi30921_)
                                       (let ((_$e30923_
                                              (gx#phi-context-up _ctx30920_)))
                                         (if _$e30923_
                                             ((lambda (_g3092530927_)
                                                (_K30918_
                                                 _g3092530927_
                                                 (fx1- _phi30921_)))
                                              _$e30923_)
                                             (_shift30916_
                                              _ctx30920_
                                              '1
                                              _make-phi/up30914_
                                              _phi30921_
                                              _K30918_)))
                                       (let ((_$e30930_
                                              (gx#phi-context-down
                                               _ctx30920_)))
                                         (if _$e30930_
                                             ((lambda (_g3093230934_)
                                                (_K30918_
                                                 _g3093230934_
                                                 (fx1+ _phi30921_)))
                                              _$e30930_)
                                             (_shift30916_
                                              _ctx30920_
                                              '-1
                                              _make-phi/down30915_
                                              _phi30921_
                                              _K30918_))))
                                   _ctx30920_)))))
                 _K30918_)
               _ctx30910_
               _phi30911_)))))))
  (define gx#core-context-get
    (lambda (_ctx30907_ _key30908_)
      (hash-get (gx#expander-context-table _ctx30907_) _key30908_)))
  (define gx#core-context-put!
    (lambda (_ctx30903_ _key30904_ _val30905_)
      (hash-put!
       (gx#expander-context-table _ctx30903_)
       _key30904_
       _val30905_)))
  (define gx#core-context-resolve
    (lambda (_ctx30890_ _key30891_)
      ((letrec ((_lp30893_
                 (lambda (_ctx30895_)
                   (let ((_$e30897_
                          (gx#core-context-get _ctx30895_ _key30891_)))
                     (if _$e30897_
                         (values _$e30897_)
                         (let ((_$e30900_
                                (if (gx#phi-context? _ctx30895_)
                                    (gx#phi-context-super _ctx30895_)
                                    '#f)))
                           (if _$e30900_ (_lp30893_ _$e30900_) '#f)))))))
         _lp30893_)
       _ctx30890_)))
  (define gx#core-context-bind!
    (lambda (_ctx30880_ _key30881_ _val30882_ _rebind30883_)
      (let ((_$e30885_ (gx#core-context-get _ctx30880_ _key30881_)))
        (if _$e30885_
            ((lambda (_xval30888_)
               (gx#core-context-put!
                _ctx30880_
                _key30881_
                (_rebind30883_ _xval30888_)))
             _$e30885_)
            (gx#core-context-put! _ctx30880_ _key30881_ _val30882_)))))
  (define gx#core-context-top
    (let ((_opt-lambda3085630865_
           (lambda (_ctx30858_ _stop?30859_)
             ((letrec ((_lp30861_
                        (lambda (_ctx30863_)
                          (if (_stop?30859_ _ctx30863_)
                              _ctx30863_
                              (if (gx#phi-context? _ctx30863_)
                                  (_lp30861_ (gx#phi-context-super _ctx30863_))
                                  '#f)))))
                _lp30861_)
              _ctx30858_))))
      (lambda _g40149_
        (let ((_g40148_ (length _g40149_)))
          (cond ((fx= _g40148_ 0)
                 (apply (lambda ()
                          (let ((_ctx30869_ (gx#current-expander-context)))
                            (let ((_stop?30871_ gx#top-context?))
                              (_opt-lambda3085630865_
                               _ctx30869_
                               _stop?30871_))))
                        _g40149_))
                ((fx= _g40148_ 1)
                 (apply (lambda (_ctx30873_)
                          (let ((_stop?30875_ gx#top-context?))
                            (_opt-lambda3085630865_ _ctx30873_ _stop?30875_)))
                        _g40149_))
                ((fx= _g40148_ 2)
                 (apply (lambda (_ctx30877_ _stop?30878_)
                          (_opt-lambda3085630865_ _ctx30877_ _stop?30878_))
                        _g40149_))
                (else (error "No clause matching arguments" _g40149_)))))))
  (define gx#core-context-root
    (let ((_opt-lambda3084130849_
           (lambda (_ctx30843_)
             ((letrec ((_lp30845_
                        (lambda (_ctx30847_)
                          (if (gx#phi-context? _ctx30847_)
                              (_lp30845_ (gx#phi-context-super _ctx30847_))
                              _ctx30847_))))
                _lp30845_)
              _ctx30843_))))
      (lambda _g40151_
        (let ((_g40150_ (length _g40151_)))
          (cond ((fx= _g40150_ 0)
                 (apply (lambda ()
                          (let ((_ctx30853_ (gx#current-expander-context)))
                            (_opt-lambda3084130849_ _ctx30853_)))
                        _g40151_))
                ((fx= _g40150_ 1)
                 (apply (lambda (_ctx30855_)
                          (_opt-lambda3084130849_ _ctx30855_))
                        _g40151_))
                (else (error "No clause matching arguments" _g40151_)))))))
  (define gx#core-context-rebind?
    (let ((_opt-lambda3082530831_
           (lambda (_ctx30827_ . __3082430828_)
             (if (gx#top-context? _ctx30827_)
                 (if (not (gx#module-context? _ctx30827_))
                     (not (gx#prelude-context? _ctx30827_))
                     '#f)
                 '#f))))
      (lambda _g40153_
        (let ((_g40152_ (length _g40153_)))
          (cond ((fx= _g40152_ 0)
                 (apply (lambda ()
                          (let ((_ctx30835_ (gx#current-expander-context)))
                            (_opt-lambda3082530831_ _ctx30835_)))
                        _g40153_))
                ((fx= _g40152_ 1)
                 (apply (lambda (_ctx30837_)
                          (_opt-lambda3082530831_ _ctx30837_))
                        _g40153_))
                ((fx>= _g40152_ 1)
                 (apply (lambda (_ctx30839_ . __3082430840_)
                          (apply _opt-lambda3082530831_
                                 _ctx30839_
                                 __3082430840_))
                        _g40153_))
                (else (error "No clause matching arguments" _g40153_)))))))
  (define gx#core-context-namespace
    (let ((_opt-lambda3080830817_
           (lambda (_ctx30810_)
             (let ((_$e30812_ (gx#core-context-top _ctx30810_)))
               (if _$e30812_
                   ((lambda (_ctx30815_)
                      (if (gx#module-context? _ctx30815_)
                          (gx#module-context-ns _ctx30815_)
                          '#f))
                    _$e30812_)
                   '#f)))))
      (lambda _g40155_
        (let ((_g40154_ (length _g40155_)))
          (cond ((fx= _g40154_ 0)
                 (apply (lambda ()
                          (let ((_ctx30821_ (gx#current-expander-context)))
                            (_opt-lambda3080830817_ _ctx30821_)))
                        _g40155_))
                ((fx= _g40154_ 1)
                 (apply (lambda (_ctx30823_)
                          (_opt-lambda3080830817_ _ctx30823_))
                        _g40155_))
                (else (error "No clause matching arguments" _g40155_)))))))
  (define gx#expander-binding?
    (let ((_opt-lambda3079430799_
           (lambda (_bind30796_ _is?30797_)
             (if (gx#syntax-binding? _bind30796_)
                 (_is?30797_ (gx#syntax-binding-e _bind30796_))
                 '#f))))
      (lambda _g40157_
        (let ((_g40156_ (length _g40157_)))
          (cond ((fx= _g40156_ 1)
                 (apply (lambda (_bind30802_)
                          (let ((_is?30804_ gx#expander?))
                            (_opt-lambda3079430799_ _bind30802_ _is?30804_)))
                        _g40157_))
                ((fx= _g40156_ 2)
                 (apply (lambda (_bind30806_ _is?30807_)
                          (_opt-lambda3079430799_ _bind30806_ _is?30807_))
                        _g40157_))
                (else (error "No clause matching arguments" _g40157_)))))))
  (define gx#core-expander-binding?
    (lambda (_bind30793_)
      (gx#expander-binding? _bind30793_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind30791_)
      (gx#expander-binding? _bind30791_ gx#expression-form?)))
  (define gx#special-form-binding?
    (lambda (_bind30789_) (gx#expander-binding? _bind30789_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind30780_)
      (let ((_feature?30782_
             (lambda (_e30784_)
               (let ((_$e30786_ (gx#feature-expander? _e30784_)))
                 (if _$e30786_ _$e30786_ (gx#module-context? _e30784_))))))
        (gx#expander-binding? _bind30780_ _feature?30782_))))
  (define gx#private-feature-binding?
    (lambda (_bind30778_)
      (gx#expander-binding? _bind30778_ gx#private-feature-expander?)))
  (define gx#core-bound-identifier?
    (let ((_opt-lambda3076330768_
           (lambda (_id30765_ _bound?30766_)
             (if (gx#identifier? _id30765_)
                 (_bound?30766_ (gx#resolve-identifier _id30765_))
                 '#f))))
      (lambda _g40159_
        (let ((_g40158_ (length _g40159_)))
          (cond ((fx= _g40158_ 1)
                 (apply (lambda (_id30771_)
                          (let ((_bound?30773_ gx#core-expander-binding?))
                            (_opt-lambda3076330768_ _id30771_ _bound?30773_)))
                        _g40159_))
                ((fx= _g40158_ 2)
                 (apply (lambda (_id30775_ _bound?30776_)
                          (_opt-lambda3076330768_ _id30775_ _bound?30776_))
                        _g40159_))
                (else (error "No clause matching arguments" _g40159_)))))))
  (define gx#core-identifier=?
    (lambda (_x30755_ _y30756_)
      (let ((_y=?30758_
             (lambda (_xid30762_)
               ((if (list? _y30756_) memq eq?) _xid30762_ _y30756_))))
        (let ((_bind30760_ (gx#resolve-identifier _x30755_)))
          (if (gx#binding? _bind30760_)
              (_y=?30758_ (gx#binding-id _bind30760_))
              (_y=?30758_ (gx#stx-e _x30755_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e30753_)
      (if (interned-symbol? _e30753_)
          (string-index (symbol->string _e30753_) '#\#)
          '#f)))
  (define gx#core-quote-syntax
    (let ((_opt-lambda3070930724_
           (lambda (_stx30711_ _src30712_ _ctx30713_ _marks30714_)
             (if (gx#sealed-syntax? _stx30711_)
                 (gx#stx-unwrap _stx30711_)
                 (if (gx#identifier? _stx30711_)
                     (let ((_id30716_ (gx#syntax-local-unwrap _stx30711_)))
                       (gx#make-syntax-quote
                        (gx#stx-e _id30716_)
                        (let ((_$e30718_ (gx#stx-source _id30716_)))
                          (if _$e30718_ _$e30718_ _src30712_))
                        _ctx30713_
                        (gx#identifier-wrap-marks _id30716_)))
                     (if (gx#stx-datum? _stx30711_)
                         (gx#stx-e _stx30711_)
                         (gx#make-syntax-quote
                          _stx30711_
                          (let ((_$e30721_ (gx#stx-source _stx30711_)))
                            (if _$e30721_ _$e30721_ _src30712_))
                          _ctx30713_
                          (reverse _marks30714_))))))))
      (lambda _g40161_
        (let ((_g40160_ (length _g40161_)))
          (cond ((fx= _g40160_ 1)
                 (apply (lambda (_stx30727_)
                          (let ((_src30729_ '#f))
                            (let ((_ctx30731_ (gx#current-expander-context)))
                              (let ((_marks30733_ (gx#current-expander-marks)))
                                (_opt-lambda3070930724_
                                 _stx30727_
                                 _src30729_
                                 _ctx30731_
                                 _marks30733_)))))
                        _g40161_))
                ((fx= _g40160_ 2)
                 (apply (lambda (_stx30735_ _src30736_)
                          (let ((_ctx30738_ (gx#current-expander-context)))
                            (let ((_marks30740_ (gx#current-expander-marks)))
                              (_opt-lambda3070930724_
                               _stx30735_
                               _src30736_
                               _ctx30738_
                               _marks30740_))))
                        _g40161_))
                ((fx= _g40160_ 3)
                 (apply (lambda (_stx30742_ _src30743_ _ctx30744_)
                          (let ((_marks30746_ (gx#current-expander-marks)))
                            (_opt-lambda3070930724_
                             _stx30742_
                             _src30743_
                             _ctx30744_
                             _marks30746_)))
                        _g40161_))
                ((fx= _g40160_ 4)
                 (apply (lambda (_stx30748_ _src30749_ _ctx30750_ _marks30751_)
                          (_opt-lambda3070930724_
                           _stx30748_
                           _src30749_
                           _ctx30750_
                           _marks30751_))
                        _g40161_))
                (else (error "No clause matching arguments" _g40161_)))))))
  (define gx#core-cons
    (lambda (_hd30707_ _tl30708_)
      (cons (gx#core-quote-syntax _hd30707_) _tl30708_)))
  (define gx#core-list
    (lambda (_hd30704_ . _rest30705_)
      (cons (gx#core-quote-syntax _hd30704_) _rest30705_)))
  (define gx#core-cons*
    (lambda (_hd30701_ . _rest30702_)
      (apply cons* (gx#core-quote-syntax _hd30701_) _rest30702_)))
  (define gx#core-resolve-path
    (let ((_opt-lambda3067330691_
           (lambda (_stx-path30675_ _rel30676_)
             (let ((_path30688_ (gx#stx-e _stx-path30675_))
                   (_reldir30689_
                    ((letrec ((_lp30678_
                               (lambda (_relsrc30680_)
                                 (if (AST? _relsrc30680_)
                                     (_lp30678_
                                      (let ((_$e30682_
                                             (gx#stx-source _relsrc30680_)))
                                        (if _$e30682_
                                            _$e30682_
                                            (gx#stx-e _relsrc30680_))))
                                     (if (source-location-path? _relsrc30680_)
                                         (path-directory
                                          (source-location-path _relsrc30680_))
                                         (if (string? _relsrc30680_)
                                             (path-directory _relsrc30680_)
                                             (if (not (null? (gx#current-expander-path)))
                                                 (path-directory
                                                  (car (gx#current-expander-path)))
                                                 (current-directory))))))))
                       _lp30678_)
                     (let ((_$e30685_ (gx#stx-source _stx-path30675_)))
                       (if _$e30685_ _$e30685_ _rel30676_)))))
               (path-expand _path30688_ (path-normalize _reldir30689_))))))
      (lambda _g40163_
        (let ((_g40162_ (length _g40163_)))
          (cond ((fx= _g40162_ 1)
                 (apply (lambda (_stx-path30694_)
                          (let ((_rel30696_ '#f))
                            (_opt-lambda3067330691_
                             _stx-path30694_
                             _rel30696_)))
                        _g40163_))
                ((fx= _g40162_ 2)
                 (apply (lambda (_stx-path30698_ _rel30699_)
                          (_opt-lambda3067330691_ _stx-path30698_ _rel30699_))
                        _g40163_))
                (else (error "No clause matching arguments" _g40163_)))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx30672_)
      (gx#stx-rewrap _stx30672_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx30670_)
      (gx#stx-unwrap _stx30670_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx30638_)
      (let ((_g3063930647_ (gx#current-expander-marks)))
        (let ((_E3064230651_
               (lambda () (error '"No clause matching" _g3063930647_))))
          (let ((_else3064130655_ (lambda () _stx30638_)))
            (let ((_K3064330660_
                   (lambda (_hd30658_)
                     (gx#stx-apply-mark _stx30638_ _hd30658_))))
              (if (##pair? _g3063930647_)
                  (let ((_hd3064430663_ (##car _g3063930647_))
                        (_tl3064530665_ (##cdr _g3063930647_)))
                    (let ((_hd30668_ _hd3064430663_))
                      (_K3064330660_ _hd30668_)))
                  (_else3064130655_))))))))
  (define gx#syntax-local-e
    (let ((_opt-lambda3062130628_
           (lambda (_stx30623_ _E30624_)
             (let ((_bind30626_ (gx#resolve-identifier _stx30623_)))
               (if (gx#syntax-binding? _bind30626_)
                   (gx#syntax-binding-e _bind30626_)
                   (_E30624_ _stx30623_))))))
      (lambda _g40165_
        (let ((_g40164_ (length _g40165_)))
          (cond ((fx= _g40164_ 1)
                 (apply (lambda (_stx30631_)
                          (let ((_E30633_ gx#raise-syntax-ref-error))
                            (_opt-lambda3062130628_ _stx30631_ _E30633_)))
                        _g40165_))
                ((fx= _g40164_ 2)
                 (apply (lambda (_stx30635_ _E30636_)
                          (_opt-lambda3062130628_ _stx30635_ _E30636_))
                        _g40165_))
                (else (error "No clause matching arguments" _g40165_)))))))
  (define gx#syntax-local-value
    (let ((_opt-lambda3060530612_
           (lambda (_stx30607_ _E30608_)
             (let ((_e30610_ (gx#syntax-local-e _stx30607_ _E30608_)))
               (if (gx#expander? _e30610_)
                   (gx#expander-e _e30610_)
                   _e30610_)))))
      (lambda _g40167_
        (let ((_g40166_ (length _g40167_)))
          (cond ((fx= _g40166_ 1)
                 (apply (lambda (_stx30615_)
                          (let ((_E30617_ gx#raise-syntax-ref-error))
                            (_opt-lambda3060530612_ _stx30615_ _E30617_)))
                        _g40167_))
                ((fx= _g40166_ 2)
                 (apply (lambda (_stx30619_ _E30620_)
                          (_opt-lambda3060530612_ _stx30619_ _E30620_))
                        _g40167_))
                (else (error "No clause matching arguments" _g40167_)))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx30604_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx30604_))))
