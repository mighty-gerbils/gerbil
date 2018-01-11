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
     ':init!))
  (define gx#expander-context? (make-struct-predicate gx#expander-context::t))
  (define gx#make-expander-context
    (lambda _$args6311_
      (apply make-struct-instance gx#expander-context::t _$args6311_)))
  (define gx#expander-context-id
    (make-struct-field-accessor gx#expander-context::t '0))
  (define gx#expander-context-table
    (make-struct-field-accessor gx#expander-context::t '1))
  (define gx#expander-context-id-set!
    (make-struct-field-mutator gx#expander-context::t '0))
  (define gx#expander-context-table-set!
    (make-struct-field-mutator gx#expander-context::t '1))
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
    (lambda _$args6308_
      (apply make-struct-instance gx#root-context::t _$args6308_)))
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
    (lambda _$args6305_
      (apply make-struct-instance gx#phi-context::t _$args6305_)))
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
    (lambda _$args6302_
      (apply make-struct-instance gx#top-context::t _$args6302_)))
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
    (lambda _$args6299_
      (apply make-struct-instance gx#module-context::t _$args6299_)))
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
    (lambda _$args6296_
      (apply make-struct-instance gx#prelude-context::t _$args6296_)))
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
     '#f))
  (define gx#local-context? (make-struct-predicate gx#local-context::t))
  (define gx#make-local-context
    (lambda _$args6293_
      (apply make-struct-instance gx#local-context::t _$args6293_)))
  (begin
    (define gx#phi-context:::init!__opt-lambda6275
      (lambda (_self6277_ _id6278_ _super6279_)
        (if (##fx< '5 (##vector-length _self6277_))
            (begin
              (##vector-set! _self6277_ '1 _id6278_)
              (##vector-set! _self6277_ '2 (make-hash-table-eq))
              (##vector-set! _self6277_ '3 _super6279_)
              (##vector-set! _self6277_ '4 '#f)
              (##vector-set! _self6277_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self6277_))))
    (begin
      (define gx#phi-context:::init!__0
        (lambda (_self6284_ _id6285_)
          (let ((_super6287_ (gx#current-expander-context)))
            (gx#phi-context:::init!__opt-lambda6275
             _self6284_
             _id6285_
             _super6287_))))
      (define gx#phi-context:::init!
        (lambda _g6315_
          (let ((_g6314_ (length _g6315_)))
            (cond ((fx= _g6314_ 2) (apply gx#phi-context:::init!__0 _g6315_))
                  ((fx= _g6314_ 3)
                   (apply gx#phi-context:::init!__opt-lambda6275 _g6315_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g6315_))))))))
  (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
  (begin
    (define gx#local-context:::init!__opt-lambda6261
      (lambda (_self6263_ _super6264_)
        (if (##fx< '5 (##vector-length _self6263_))
            (begin
              (##vector-set! _self6263_ '1 (gensym 'L))
              (##vector-set! _self6263_ '2 (make-hash-table-eq))
              (##vector-set! _self6263_ '3 _super6264_)
              (##vector-set! _self6263_ '4 '#f)
              (##vector-set! _self6263_ '5 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self6263_))))
    (begin
      (define gx#local-context:::init!__0
        (lambda (_self6269_)
          (let ((_super6271_ (gx#current-expander-context)))
            (gx#local-context:::init!__opt-lambda6261
             _self6269_
             _super6271_))))
      (define gx#local-context:::init!
        (lambda _g6317_
          (let ((_g6316_ (length _g6317_)))
            (cond ((fx= _g6316_ 1) (apply gx#local-context:::init!__0 _g6317_))
                  ((fx= _g6316_ 2)
                   (apply gx#local-context:::init!__opt-lambda6261 _g6317_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g6317_))))))))
  (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
  (define gx#binding::t
    (make-struct-type 'gx#binding::t '#f '3 'binding '() '#f))
  (define gx#binding? (make-struct-predicate gx#binding::t))
  (define gx#make-binding
    (lambda _$args6259_
      (apply make-struct-instance gx#binding::t _$args6259_)))
  (define gx#binding-id (make-struct-field-accessor gx#binding::t '0))
  (define gx#binding-key (make-struct-field-accessor gx#binding::t '1))
  (define gx#binding-phi (make-struct-field-accessor gx#binding::t '2))
  (define gx#binding-id-set! (make-struct-field-mutator gx#binding::t '0))
  (define gx#binding-key-set! (make-struct-field-mutator gx#binding::t '1))
  (define gx#binding-phi-set! (make-struct-field-mutator gx#binding::t '2))
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
    (lambda _$args6256_
      (apply make-struct-instance gx#runtime-binding::t _$args6256_)))
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
    (lambda _$args6253_
      (apply make-struct-instance gx#local-binding::t _$args6253_)))
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
    (lambda _$args6250_
      (apply make-struct-instance gx#top-binding::t _$args6250_)))
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
    (lambda _$args6247_
      (apply make-struct-instance gx#module-binding::t _$args6247_)))
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
     '#f))
  (define gx#extern-binding? (make-struct-predicate gx#extern-binding::t))
  (define gx#make-extern-binding
    (lambda _$args6244_
      (apply make-struct-instance gx#extern-binding::t _$args6244_)))
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
    (lambda _$args6241_
      (apply make-struct-instance gx#syntax-binding::t _$args6241_)))
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
     '#f))
  (define gx#import-binding? (make-struct-predicate gx#import-binding::t))
  (define gx#make-import-binding
    (lambda _$args6238_
      (apply make-struct-instance gx#import-binding::t _$args6238_)))
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
     '#f))
  (define gx#alias-binding? (make-struct-predicate gx#alias-binding::t))
  (define gx#make-alias-binding
    (lambda _$args6235_
      (apply make-struct-instance gx#alias-binding::t _$args6235_)))
  (define gx#alias-binding-e
    (make-struct-field-accessor gx#alias-binding::t '0))
  (define gx#alias-binding-e-set!
    (make-struct-field-mutator gx#alias-binding::t '0))
  (define gx#expander::t
    (make-struct-type 'gx#expander::t '#f '1 'expander '() '#f))
  (define gx#expander? (make-struct-predicate gx#expander::t))
  (define gx#make-expander
    (lambda _$args6232_
      (apply make-struct-instance gx#expander::t _$args6232_)))
  (define gx#expander-e (make-struct-field-accessor gx#expander::t '0))
  (define gx#expander-e-set! (make-struct-field-mutator gx#expander::t '0))
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
    (lambda _$args6229_
      (apply make-struct-instance gx#core-expander::t _$args6229_)))
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
     '#f))
  (define gx#expression-form? (make-struct-predicate gx#expression-form::t))
  (define gx#make-expression-form
    (lambda _$args6226_
      (apply make-struct-instance gx#expression-form::t _$args6226_)))
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
    (lambda _$args6223_
      (apply make-struct-instance gx#special-form::t _$args6223_)))
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
    (lambda _$args6220_
      (apply make-struct-instance gx#definition-form::t _$args6220_)))
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
    (lambda _$args6217_
      (apply make-struct-instance gx#top-special-form::t _$args6217_)))
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
    (lambda _$args6214_
      (apply make-struct-instance gx#module-special-form::t _$args6214_)))
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
    (lambda _$args6211_
      (apply make-struct-instance gx#feature-expander::t _$args6211_)))
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
    (lambda _$args6208_
      (apply make-struct-instance gx#private-feature-expander::t _$args6208_)))
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
    (lambda _$args6205_
      (apply make-struct-instance gx#reserved-expander::t _$args6205_)))
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
    (lambda _$args6202_
      (apply make-struct-instance gx#macro-expander::t _$args6202_)))
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
    (lambda _$args6199_
      (apply make-struct-instance gx#rename-macro-expander::t _$args6199_)))
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
    (lambda _$args6196_
      (apply make-struct-instance gx#user-expander::t _$args6196_)))
  (define gx#user-expander-context
    (make-struct-field-accessor gx#user-expander::t '0))
  (define gx#user-expander-phi
    (make-struct-field-accessor gx#user-expander::t '1))
  (define gx#user-expander-context-set!
    (make-struct-field-mutator gx#user-expander::t '0))
  (define gx#user-expander-phi-set!
    (make-struct-field-mutator gx#user-expander::t '1))
  (define gx#expander-mark::t
    (make-struct-type 'gx#expander-mark::t '#f '4 'expander-mark '() '#f))
  (define gx#expander-mark? (make-struct-predicate gx#expander-mark::t))
  (define gx#make-expander-mark
    (lambda _$args6193_
      (apply make-struct-instance gx#expander-mark::t _$args6193_)))
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
  (define gx#syntax-error::t
    (make-struct-type 'gx#syntax-error::t error::t '3 'syntax-error '() '#f))
  (define gx#syntax-error? (make-struct-predicate gx#syntax-error::t))
  (define gx#make-syntax-error
    (lambda _$args6190_
      (apply make-struct-instance gx#syntax-error::t _$args6190_)))
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
    (lambda (_where6185_ _message6186_ _stx6187_ . _details6188_)
      (raise (make-struct-instance
              gx#syntax-error::t
              _message6186_
              (cons _stx6187_ _details6188_)
              _where6185_
              (gx#current-expander-context)
              (gx#current-expander-marks)
              (gx#current-expander-phi)))))
  (begin
    (define gx#eval-syntax__opt-lambda6170
      (lambda (_stx6172_ _expression?6173_)
        (gx#eval-syntax*
         (gx#core-expand__opt-lambda6154 _stx6172_ _expression?6173_))))
    (begin
      (define gx#eval-syntax__0
        (lambda (_stx6178_)
          (let ((_expression?6180_ '#f))
            (gx#eval-syntax__opt-lambda6170 _stx6178_ _expression?6180_))))
      (define gx#eval-syntax
        (lambda _g6319_
          (let ((_g6318_ (length _g6319_)))
            (cond ((fx= _g6318_ 1) (apply gx#eval-syntax__0 _g6319_))
                  ((fx= _g6318_ 2)
                   (apply gx#eval-syntax__opt-lambda6170 _g6319_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g6319_))))))))
  (define gx#eval-syntax*
    (lambda (_stx6169_)
      ((gx#current-expander-eval) ((gx#current-expander-compile) _stx6169_))))
  (begin
    (define gx#core-expand__opt-lambda6154
      (lambda (_stx6156_ _expression?6157_)
        (if _expression?6157_
            (gx#core-expand-expression _stx6156_)
            (gx#core-expand-top _stx6156_))))
    (begin
      (define gx#core-expand__0
        (lambda (_stx6162_)
          (let ((_expression?6164_ '#f))
            (gx#core-expand__opt-lambda6154 _stx6162_ _expression?6164_))))
      (define gx#core-expand
        (lambda _g6321_
          (let ((_g6320_ (length _g6321_)))
            (cond ((fx= _g6320_ 1) (apply gx#core-expand__0 _g6321_))
                  ((fx= _g6320_ 2)
                   (apply gx#core-expand__opt-lambda6154 _g6321_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g6321_))))))))
  (define gx#core-expand-top
    (lambda (_stx6123_)
      (let* ((_stx6125_ (gx#core-expand*__0 _stx6123_))
             (_e61266133_ _stx6125_)
             (_E61286137_ (lambda () (gx#core-expand-expression _stx6125_)))
             (_E61276151_
              (lambda ()
                (if (gx#stx-pair? _e61266133_)
                    (let ((_e61296141_ (gx#syntax-e _e61266133_)))
                      (let ((_hd61306144_ (##car _e61296141_))
                            (_tl61316146_ (##cdr _e61296141_)))
                        (let ((_form6149_ _hd61306144_))
                          (if (gx#core-bound-identifier?__0 _form6149_)
                              _stx6125_
                              (_E61286137_)))))
                    (_E61286137_)))))
        (_E61276151_))))
  (define gx#core-expand-expression
    (lambda (_stx6045_)
      (letrec ((_sealed-expression?6047_
                (lambda (_hd6093_)
                  (if (gx#sealed-syntax? _hd6093_)
                      (let* ((_e60946101_ _hd6093_)
                             (_E60966105_ (lambda () '#f))
                             (_E60956119_
                              (lambda ()
                                (if (gx#stx-pair? _e60946101_)
                                    (let ((_e60976109_
                                           (gx#syntax-e _e60946101_)))
                                      (let ((_hd60986112_ (##car _e60976109_))
                                            (_tl60996114_ (##cdr _e60976109_)))
                                        (let ((_form6117_ _hd60986112_))
                                          (if '#t
                                              (gx#core-bound-identifier?__opt-lambda4693
                                               _form6117_
                                               gx#expression-form-binding?)
                                              (_E60966105_)))))
                                    (_E60966105_)))))
                        (_E60956119_))
                      '#f)))
               (_illegal-expression6048_
                (lambda (_hd6091_ . _g6322_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal expression"
                   _stx6045_
                   _hd6091_)))
               (_expand-e6049_
                (lambda (_form6086_ _hd6087_)
                  (let ((_bind6089_
                         (if (##structure-instance-of?
                              _form6086_
                              'gx#binding::t)
                             _form6086_
                             (gx#resolve-identifier__0 _form6086_))))
                    (if (gx#core-expander-binding? _bind6089_)
                        (gx#core-apply-expander__0
                         (##direct-structure-ref
                          _bind6089_
                          '4
                          gx#syntax-binding::t
                          '#f)
                         (gx#stx-wrap-source
                          _hd6087_
                          (gx#stx-source _stx6045_)))
                        (if (##structure-direct-instance-of?
                             _bind6089_
                             'gx#syntax-binding::t)
                            (gx#core-expand-expression
                             (gx#core-apply-expander__0
                              (##direct-structure-ref
                               _bind6089_
                               '4
                               gx#syntax-binding::t
                               '#f)
                              (gx#stx-wrap-source
                               _hd6087_
                               (gx#stx-source _stx6045_))))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; missing expander"
                             _stx6045_
                             _form6086_)))))))
        (let ((_hd6051_ (gx#core-expand-head _stx6045_)))
          (if (_sealed-expression?6047_ _hd6051_)
              _hd6051_
              (if (gx#stx-pair? _hd6051_)
                  (let* ((_e60526059_ _hd6051_)
                         (_E60546063_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e60526059_)))
                         (_E60536082_
                          (lambda ()
                            (if (gx#stx-pair? _e60526059_)
                                (let ((_e60556067_ (gx#syntax-e _e60526059_)))
                                  (let ((_hd60566070_ (##car _e60556067_))
                                        (_tl60576072_ (##cdr _e60556067_)))
                                    (let ((_form6075_ _hd60566070_))
                                      (if '#t
                                          (let ((_bind6077_
                                                 (if (gx#identifier?
                                                      _form6075_)
                                                     (gx#resolve-identifier__0
                                                      _form6075_)
                                                     '#f)))
                                            (if (let ((_$e6079_
                                                       (not _bind6077_)))
                                                  (if _$e6079_
                                                      _$e6079_
                                                      (not (gx#core-expander-binding?
                                                            _bind6077_))))
                                                (_expand-e6049_
                                                 '%%app
                                                 (cons '%%app _hd6051_))
                                                (if (eq? (##structure-ref
                                                          _bind6077_
                                                          '1
                                                          gx#binding::t
                                                          '#f)
                                                         '%#begin)
                                                    (gx#core-expand-block*
                                                     _hd6051_
                                                     _illegal-expression6048_)
                                                    (if (gx#expression-form-binding?
                                                         _bind6077_)
                                                        (_expand-e6049_
                                                         _bind6077_
                                                         _hd6051_)
                                                        (if (gx#direct-special-form-binding?
                                                             _bind6077_)
                                                            (gx#core-expand-expression
                                                             (_expand-e6049_
                                                              _bind6077_
                                                              _hd6051_))
                                                            (_illegal-expression6048_
                                                             _hd6051_))))))
                                          (_E60546063_)))))
                                (_E60546063_)))))
                    (_E60536082_))
                  (if (gx#core-bound-identifier?__0 _hd6051_)
                      (_illegal-expression6048_ _hd6051_)
                      (if (gx#identifier? _hd6051_)
                          (_expand-e6049_
                           '%%ref
                           (cons '%%ref (cons _hd6051_ '())))
                          (if (gx#stx-datum? _hd6051_)
                              (_expand-e6049_
                               '%#quote
                               (cons '%#quote (cons _hd6051_ '())))
                              (_illegal-expression6048_ _hd6051_))))))))))
  (define gx#core-expand-expression+1
    (lambda (_stx6040_)
      (call-with-parameters
       (lambda ()
         (let ((_stx6043_ (gx#core-expand-expression _stx6040_)))
           (values _stx6043_ (gx#eval-syntax* _stx6043_))))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (begin
    (define gx#core-expand*__opt-lambda6019
      (lambda (_stx6021_ _stop?6022_)
        (let _lp6024_ ((_stx6026_ _stx6021_))
          (if (_stop?6022_ _stx6026_)
              _stx6026_
              (let ((_rstx6028_ (gx#core-expand1 _stx6026_)))
                (if (eq? _stx6026_ _rstx6028_)
                    _stx6026_
                    (_lp6024_ _rstx6028_)))))))
    (begin
      (define gx#core-expand*__0
        (lambda (_stx6033_)
          (let ((_stop?6035_ false))
            (gx#core-expand*__opt-lambda6019 _stx6033_ _stop?6035_))))
      (define gx#core-expand*
        (lambda _g6324_
          (let ((_g6323_ (length _g6324_)))
            (cond ((fx= _g6323_ 1) (apply gx#core-expand*__0 _g6324_))
                  ((fx= _g6323_ 2)
                   (apply gx#core-expand*__opt-lambda6019 _g6324_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g6324_))))))))
  (define gx#core-expand1
    (lambda (_stx5977_)
      (letrec ((_step5979_
                (lambda (_hd6016_)
                  (let ((_bind6018_ (gx#resolve-identifier__0 _hd6016_)))
                    (if (##structure-instance-of?
                         _bind6018_
                         'gx#runtime-binding::t)
                        _stx5977_
                        (if (##structure-direct-instance-of?
                             _bind6018_
                             'gx#syntax-binding::t)
                            (gx#core-apply-expander__0
                             (##direct-structure-ref
                              _bind6018_
                              '4
                              gx#syntax-binding::t
                              '#f)
                             _stx5977_)
                            (if (not _bind6018_)
                                _stx5977_
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _stx5977_))))))))
        (let* ((_e59805988_ _stx5977_)
               (_E59865992_ (lambda () _stx5977_))
               (_E59825998_
                (lambda ()
                  (let ((_hd5996_ _e59805988_))
                    (if (gx#identifier? _hd5996_)
                        (_step5979_ _hd5996_)
                        (_E59865992_)))))
               (_E59816012_
                (lambda ()
                  (if (gx#stx-pair? _e59805988_)
                      (let ((_e59836002_ (gx#syntax-e _e59805988_)))
                        (let ((_hd59846005_ (##car _e59836002_))
                              (_tl59856007_ (##cdr _e59836002_)))
                          (let ((_hd6010_ _hd59846005_))
                            (if (gx#identifier? _hd6010_)
                                (_step5979_ _hd6010_)
                                (_E59825998_)))))
                      (_E59825998_)))))
          (_E59816012_)))))
  (define gx#core-expand-head
    (lambda (_stx5943_)
      (letrec ((_stop?5945_
                (lambda (_stx5947_)
                  (let* ((_e59485955_ _stx5947_)
                         (_E59505959_ (lambda () '#f))
                         (_E59495973_
                          (lambda ()
                            (if (gx#stx-pair? _e59485955_)
                                (let ((_e59515963_ (gx#syntax-e _e59485955_)))
                                  (let ((_hd59525966_ (##car _e59515963_))
                                        (_tl59535968_ (##cdr _e59515963_)))
                                    (let ((_hd5971_ _hd59525966_))
                                      (if '#t
                                          (gx#core-bound-identifier?__0
                                           _hd5971_)
                                          (_E59505959_)))))
                                (_E59505959_)))))
                    (_E59495973_)))))
        (gx#core-expand*__opt-lambda6019 _stx5943_ _stop?5945_))))
  (begin
    (define gx#core-expand-block__opt-lambda5747
      (lambda (_stx5749_ _expand-special5750_ _begin-form5751_ _expand-e5752_)
        (letrec ((_expand-splice5754_
                  (lambda (_hd5917_ _body5918_ _rest5919_ _r5920_)
                    (if (gx#stx-list? _body5918_)
                        (_K5758_ (gx#stx-foldr cons _rest5919_ _body5918_)
                                 _r5920_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx5749_
                         _hd5917_))))
                 (_expand-cond-expand5755_
                  (lambda (_hd5913_ _rest5914_ _r5915_)
                    (_K5758_ (cons (gx#core-expand-cond-expand% _hd5913_)
                                   _rest5914_)
                             _r5915_)))
                 (_expand-include5756_
                  (lambda (_hd5862_ _rest5863_ _r5864_)
                    (let* ((_e58655875_ _hd5862_)
                           (_E58675879_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e58655875_)))
                           (_E58665909_
                            (lambda ()
                              (if (gx#stx-pair? _e58655875_)
                                  (let ((_e58685883_
                                         (gx#syntax-e _e58655875_)))
                                    (let ((_hd58695886_ (##car _e58685883_))
                                          (_tl58705888_ (##cdr _e58685883_)))
                                      (if (gx#stx-pair? _tl58705888_)
                                          (let ((_e58715891_
                                                 (gx#syntax-e _tl58705888_)))
                                            (let ((_hd58725894_
                                                   (##car _e58715891_))
                                                  (_tl58735896_
                                                   (##cdr _e58715891_)))
                                              (let ((_path5899_ _hd58725894_))
                                                (if (gx#stx-null? _tl58735896_)
                                                    (if (gx#stx-string?
                                                         _path5899_)
                                                        (let* ((_rpath5901_
                                                                (gx#core-resolve-path__opt-lambda4603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path5899_
                         (gx#stx-source _hd5862_)))
                       (_block5903_
                        (gx#core-expand-include%__opt-lambda5496
                         _hd5862_
                         _rpath5901_))
                       (_rbody5906_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__opt-lambda5747
                            _block5903_
                            _expand-special5750_
                            '#f
                            _expand-e5752_))
                         gx#current-expander-path
                         (cons _rpath5901_ (gx#current-expander-path)))))
                  (_K5758_ _rest5863_ (foldr1 cons _r5864_ _rbody5906_)))
                (_E58675879_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E58675879_)))))
                                          (_E58675879_))))
                                  (_E58675879_)))))
                      (_E58665909_))))
                 (_expand-expression5757_
                  (lambda (_hd5858_ _rest5859_ _r5860_)
                    (_K5758_ _rest5859_
                             (cons (_expand-e5752_ _hd5858_) _r5860_))))
                 (_K5758_ (lambda (_rest5788_ _r5789_)
                            (let* ((_e57905797_ _rest5788_)
                                   (_E57925801_
                                    (lambda ()
                                      (if _begin-form5751_
                                          (gx#core-quote-syntax__1
                                           (gx#core-cons
                                            _begin-form5751_
                                            (reverse _r5789_))
                                           (gx#stx-source _stx5749_))
                                          _r5789_)))
                                   (_E57915854_
                                    (lambda ()
                                      (if (gx#stx-pair? _e57905797_)
                                          (let ((_e57935805_
                                                 (gx#syntax-e _e57905797_)))
                                            (let ((_hd57945808_
                                                   (##car _e57935805_))
                                                  (_tl57955810_
                                                   (##cdr _e57935805_)))
                                              (let* ((_hd5813_ _hd57945808_)
                                                     (_rest5815_ _tl57955810_))
                                                (if '#t
                                                    (let* ((_hd5817_
                                                            (gx#core-expand-head
                                                             _hd5813_))
                                                           (_e58185825_
                                                            _hd5817_)
                                                           (_E58205829_
                                                            (lambda ()
                                                              (_expand-expression5757_
                                                               _hd5817_
                                                               _rest5815_
                                                               _r5789_)))
                                                           (_E58195850_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e58185825_)
                          (let ((_e58215833_ (gx#syntax-e _e58185825_)))
                            (let ((_hd58225836_ (##car _e58215833_))
                                  (_tl58235838_ (##cdr _e58215833_)))
                              (let* ((_form5841_ _hd58225836_)
                                     (_body5843_ _tl58235838_))
                                (if '#t
                                    (let ((_bind5845_
                                           (if (gx#identifier? _form5841_)
                                               (gx#resolve-identifier__0
                                                _form5841_)
                                               '#f)))
                                      (if (gx#special-form-binding? _bind5845_)
                                          (let ((_$e5847_
                                                 (##structure-ref
                                                  _bind5845_
                                                  '1
                                                  gx#binding::t
                                                  '#f)))
                                            (if (eq? _$e5847_ '%#begin)
                                                (_expand-splice5754_
                                                 _hd5817_
                                                 _body5843_
                                                 _rest5815_
                                                 _r5789_)
                                                (if (eq? _$e5847_
                                                         '%#cond-expand)
                                                    (_expand-cond-expand5755_
                                                     _hd5817_
                                                     _rest5815_
                                                     _r5789_)
                                                    (if (eq? _$e5847_
                                                             '%#include)
                                                        (_expand-include5756_
                                                         _hd5817_
                                                         _rest5815_
                                                         _r5789_)
                                                        (_expand-special5750_
                                                         _hd5817_
                                                         _K5758_
                                                         _rest5815_
                                                         _r5789_)))))
                                          (_expand-expression5757_
                                           _hd5817_
                                           _rest5815_
                                           _r5789_)))
                                    (_E58205829_)))))
                          (_E58205829_)))))
              (_E58195850_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E57925801_)))))
                                          (_E57925801_)))))
                              (_E57915854_)))))
          (let* ((_e57595766_ _stx5749_)
                 (_E57615770_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e57595766_)))
                 (_E57605784_
                  (lambda ()
                    (if (gx#stx-pair? _e57595766_)
                        (let ((_e57625774_ (gx#syntax-e _e57595766_)))
                          (let ((_hd57635777_ (##car _e57625774_))
                                (_tl57645779_ (##cdr _e57625774_)))
                            (let ((_body5782_ _tl57645779_))
                              (if (gx#stx-list? _body5782_)
                                  (_K5758_ _body5782_ '())
                                  (_E57615770_)))))
                        (_E57615770_)))))
            (_E57605784_)))))
    (begin
      (define gx#core-expand-block__0
        (lambda (_stx5925_ _expand-special5926_)
          (let* ((_begin-form5928_ '%#begin)
                 (_expand-e5930_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5747
             _stx5925_
             _expand-special5926_
             _begin-form5928_
             _expand-e5930_))))
      (define gx#core-expand-block__1
        (lambda (_stx5932_ _expand-special5933_ _begin-form5934_)
          (let ((_expand-e5936_ gx#core-expand-expression))
            (gx#core-expand-block__opt-lambda5747
             _stx5932_
             _expand-special5933_
             _begin-form5934_
             _expand-e5936_))))
      (define gx#core-expand-block
        (lambda _g6326_
          (let ((_g6325_ (length _g6326_)))
            (cond ((fx= _g6325_ 2) (apply gx#core-expand-block__0 _g6326_))
                  ((fx= _g6325_ 3) (apply gx#core-expand-block__1 _g6326_))
                  ((fx= _g6325_ 4)
                   (apply gx#core-expand-block__opt-lambda5747 _g6326_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g6326_))))))))
  (define gx#core-expand-block*
    (lambda (_stx5697_ _expand-special5698_)
      (let* ((_g56995710_
              (gx#core-expand-block__1 _stx5697_ _expand-special5698_ '#f))
             (_E57035714_
              (lambda () (error '"No clause matching" _g56995710_)))
             (_try-match57025725_
              (lambda ()
                (let* ((_K57045720_
                        (lambda (_body5718_)
                          (gx#core-quote-syntax__1
                           (gx#core-cons '%#begin (reverse _body5718_))
                           (gx#stx-source _stx5697_))))
                       (_body5723_ _g56995710_))
                  (_K57045720_ _body5723_))))
             (_try-match57015741_
              (lambda ()
                (let ((_K57055731_ (lambda (_expr5729_) _expr5729_)))
                  (if (##pair? _g56995710_)
                      (let ((_hd57065734_ (##car _g56995710_))
                            (_tl57075736_ (##cdr _g56995710_)))
                        (let ((_expr5739_ _hd57065734_))
                          (if (##null? _tl57075736_)
                              (_K57055731_ _expr5739_)
                              (_try-match57025725_))))
                      (_try-match57025725_)))))
             (_K57085745_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; empty block"
                 _stx5697_))))
        (if (##null? _g56995710_) (_K57085745_) (_try-match57015741_)))))
  (define gx#core-expand-cond-expand%
    (lambda (_stx5555_)
      (letrec ((_satisfied?5557_
                (lambda (_condition5655_)
                  (let* ((_e56565664_ _condition5655_)
                         (_E56595668_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e56565664_)))
                         (_E56585687_
                          (lambda ()
                            (if (gx#stx-pair? _e56565664_)
                                (let ((_e56605672_ (gx#syntax-e _e56565664_)))
                                  (let ((_hd56615675_ (##car _e56605672_))
                                        (_tl56625677_ (##cdr _e56605672_)))
                                    (let* ((_combinator5680_ _hd56615675_)
                                           (_body5682_ _tl56625677_))
                                      (if (gx#stx-list? _body5682_)
                                          (let ((_$e5684_
                                                 (gx#stx-e _combinator5680_)))
                                            (if (eq? _$e5684_ 'not)
                                                (not (gx#stx-ormap
                                                      _satisfied?5557_
                                                      _body5682_))
                                                (if (eq? _$e5684_ 'and)
                                                    (gx#stx-andmap
                                                     _satisfied?5557_
                                                     _body5682_)
                                                    (if (eq? _$e5684_ 'or)
                                                        (gx#stx-ormap
                                                         _satisfied?5557_
                                                         _body5682_)
                                                        (if (eq? _$e5684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'defined)
                    (gx#stx-andmap gx#core-resolve-identifier _body5682_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     _stx5555_
                     _combinator5680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_E56595668_)))))
                                (_E56595668_))))
                         (_E56575693_
                          (lambda ()
                            (let ((_id5691_ _e56565664_))
                              (if (gx#identifier? _id5691_)
                                  (gx#core-bound-identifier?__opt-lambda4693
                                   _id5691_
                                   gx#feature-binding?)
                                  (_E56585687_))))))
                    (_E56575693_))))
               (_loop5558_
                (lambda (_rest5588_)
                  (let* ((_e55895597_ _rest5588_)
                         (_E55955601_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e55895597_)))
                         (_E55915605_
                          (lambda ()
                            (if (gx#stx-null? _e55895597_)
                                (if '#t '() (_E55955601_))
                                (_E55955601_))))
                         (_E55905651_
                          (lambda ()
                            (if (gx#stx-pair? _e55895597_)
                                (let ((_e55925609_ (gx#syntax-e _e55895597_)))
                                  (let ((_hd55935612_ (##car _e55925609_))
                                        (_tl55945614_ (##cdr _e55925609_)))
                                    (let* ((_hd5617_ _hd55935612_)
                                           (_rest5619_ _tl55945614_))
                                      (if '#t
                                          (let* ((_e56205627_ _hd5617_)
                                                 (_E56225631_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _e56205627_)))
                                                 (_E56215647_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _e56205627_)
                                                        (let ((_e56235635_
                                                               (gx#syntax-e
                                                                _e56205627_)))
                                                          (let ((_hd56245638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e56235635_))
                        (_tl56255640_ (##cdr _e56235635_)))
                    (let* ((_condition5643_ _hd56245638_)
                           (_body5645_ _tl56255640_))
                      (if '#t
                          (if (gx#stx-eq? _condition5643_ 'else)
                              (if (gx#stx-null? _rest5619_)
                                  _body5645_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _stx5555_
                                   _hd5617_))
                              (if (_satisfied?5557_ _condition5643_)
                                  _body5645_
                                  (_loop5558_ _rest5619_)))
                          (_E56225631_)))))
                (_E56225631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E56215647_))
                                          (_E55915605_)))))
                                (_E55915605_)))))
                    (_E55905651_)))))
        (let* ((_e55595566_ _stx5555_)
               (_E55615570_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e55595566_)))
               (_E55605584_
                (lambda ()
                  (if (gx#stx-pair? _e55595566_)
                      (let ((_e55625574_ (gx#syntax-e _e55595566_)))
                        (let ((_hd55635577_ (##car _e55625574_))
                              (_tl55645579_ (##cdr _e55625574_)))
                          (let ((_clauses5582_ _tl55645579_))
                            (if (gx#stx-list? _clauses5582_)
                                (gx#core-cons
                                 'begin
                                 (_loop5558_ _clauses5582_))
                                (_E55615570_)))))
                      (_E55615570_)))))
          (_E55605584_)))))
  (begin
    (define gx#core-expand-include%__opt-lambda5496
      (lambda (_stx5498_ _rpath5499_)
        (let* ((_e55005510_ _stx5498_)
               (_E55025514_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e55005510_)))
               (_E55015541_
                (lambda ()
                  (if (gx#stx-pair? _e55005510_)
                      (let ((_e55035518_ (gx#syntax-e _e55005510_)))
                        (let ((_hd55045521_ (##car _e55035518_))
                              (_tl55055523_ (##cdr _e55035518_)))
                          (if (gx#stx-pair? _tl55055523_)
                              (let ((_e55065526_ (gx#syntax-e _tl55055523_)))
                                (let ((_hd55075529_ (##car _e55065526_))
                                      (_tl55085531_ (##cdr _e55065526_)))
                                  (let ((_path5534_ _hd55075529_))
                                    (if (gx#stx-null? _tl55085531_)
                                        (if (gx#stx-string? _path5534_)
                                            (let ((_rpath5539_
                                                   (let ((_$e5536_
                                                          _rpath5499_))
                                                     (if _$e5536_
                                                         _$e5536_
                                                         (gx#core-resolve-path__opt-lambda4603
                                                          _path5534_
                                                          (gx#stx-source
                                                           _stx5498_))))))
                                              (if (member _rpath5539_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx5498_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath5539_))
                                                    (gx#stx-source
                                                     _stx5498_)))))
                                            (_E55025514_))
                                        (_E55025514_)))))
                              (_E55025514_))))
                      (_E55025514_)))))
          (_E55015541_))))
    (begin
      (define gx#core-expand-include%__0
        (lambda (_stx5548_)
          (let ((_rpath5550_ '#f))
            (gx#core-expand-include%__opt-lambda5496 _stx5548_ _rpath5550_))))
      (define gx#core-expand-include%
        (lambda _g6328_
          (let ((_g6327_ (length _g6328_)))
            (cond ((fx= _g6327_ 1) (apply gx#core-expand-include%__0 _g6328_))
                  ((fx= _g6327_ 2)
                   (apply gx#core-expand-include%__opt-lambda5496 _g6328_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g6328_))))))))
  (begin
    (define gx#core-apply-expander__opt-lambda5465
      (lambda (_K5467_ _stx5468_ _method5469_)
        (if (procedure? _K5467_)
            (let ((_$e5471_ (gx#stx-source _stx5468_)))
              (if _$e5471_
                  ((lambda (_g54735475_)
                     (gx#stx-wrap-source (_K5467_ _stx5468_) _g54735475_))
                   _$e5471_)
                  (_K5467_ _stx5468_)))
            (let ((_$e5478_ (bound-method-ref _K5467_ _method5469_)))
              (if _$e5478_
                  ((lambda (_g54805482_)
                     (gx#core-apply-expander__opt-lambda5465
                      _g54805482_
                      _stx5468_
                      _method5469_))
                   _$e5478_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   _stx5468_
                   _method5469_))))))
    (begin
      (define gx#core-apply-expander__0
        (lambda (_K5488_ _stx5489_)
          (let ((_method5491_ 'apply-macro-expander))
            (gx#core-apply-expander__opt-lambda5465
             _K5488_
             _stx5489_
             _method5491_))))
      (define gx#core-apply-expander
        (lambda _g6330_
          (let ((_g6329_ (length _g6330_)))
            (cond ((fx= _g6329_ 2) (apply gx#core-apply-expander__0 _g6330_))
                  ((fx= _g6329_ 3)
                   (apply gx#core-apply-expander__opt-lambda5465 _g6330_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g6330_))))))))
  (define gx#expander::apply-macro-expander
    (lambda (_self5463_ _stx5464_)
      (gx#raise-syntax-error '#f '"Bad syntax" _stx5464_)))
  (bind-method!
   gx#expander::t
   'apply-macro-expander
   gx#expander::apply-macro-expander
   '#f)
  (define gx#macro-expander::apply-macro-expander
    (lambda (_self5438_ _stx5439_)
      (let* ((_self54405446_ _self5438_)
             (_E54425450_
              (lambda () (error '"No clause matching" _self54405446_)))
             (_K54435455_
              (lambda (_K5453_)
                (gx#core-apply-expander__0 _K5453_ _stx5439_))))
        (if (##structure-instance-of?
             _self54405446_
             (##type-id gx#macro-expander::t))
            (let* ((_e54445458_ (##vector-ref _self54405446_ '1))
                   (_K5461_ _e54445458_))
              (_K54435455_ _K5461_))
            (_E54425450_)))))
  (bind-method!
   gx#macro-expander::t
   'apply-macro-expander
   gx#macro-expander::apply-macro-expander
   '#f)
  (define gx#core-expander::apply-macro-expander
    (lambda (_self5413_ _stx5414_)
      (if (gx#sealed-syntax? _stx5414_)
          _stx5414_
          (let* ((_self54155421_ _self5413_)
                 (_E54175425_
                  (lambda () (error '"No clause matching" _self54155421_)))
                 (_K54185430_
                  (lambda (_K5428_)
                    (gx#core-apply-expander__0 _K5428_ _stx5414_))))
            (if (##structure-instance-of?
                 _self54155421_
                 (##type-id gx#core-expander::t))
                (let* ((_e54195433_ (##vector-ref _self54155421_ '1))
                       (_K5436_ _e54195433_))
                  (_K54185430_ _K5436_))
                (_E54175425_))))))
  (bind-method!
   gx#core-expander::t
   'apply-macro-expander
   gx#core-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#top-special-form::apply-macro-expander__opt-lambda5395
      (lambda (_self5397_ _stx5398_ _top?5399_)
        (if (_top?5399_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self5397_ _stx5398_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx5398_))))
    (begin
      (define gx#top-special-form::apply-macro-expander__0
        (lambda (_self5404_ _stx5405_)
          (let ((_top?5407_ gx#top-context?))
            (gx#top-special-form::apply-macro-expander__opt-lambda5395
             _self5404_
             _stx5405_
             _top?5407_))))
      (define gx#top-special-form::apply-macro-expander
        (lambda _g6332_
          (let ((_g6331_ (length _g6332_)))
            (cond ((fx= _g6331_ 2)
                   (apply gx#top-special-form::apply-macro-expander__0
                          _g6332_))
                  ((fx= _g6331_ 3)
                   (apply gx#top-special-form::apply-macro-expander__opt-lambda5395
                          _g6332_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g6332_))))))))
  (bind-method!
   gx#top-special-form::t
   'apply-macro-expander
   gx#top-special-form::apply-macro-expander
   '#f)
  (define gx#module-special-form::apply-macro-expander
    (lambda (_self5393_ _stx5394_)
      (gx#top-special-form::apply-macro-expander__opt-lambda5395
       _self5393_
       _stx5394_
       gx#module-context?)))
  (bind-method!
   gx#module-special-form::t
   'apply-macro-expander
   gx#module-special-form::apply-macro-expander
   '#f)
  (define gx#rename-macro-expander::apply-macro-expander
    (lambda (_self5340_ _stx5341_)
      (let* ((_self53425348_ _self5340_)
             (_E53445352_
              (lambda () (error '"No clause matching" _self53425348_)))
             (_K53455385_
              (lambda (_id5355_)
                (let* ((_e53565363_ _stx5341_)
                       (_E53585367_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e53565363_)))
                       (_E53575381_
                        (lambda ()
                          (if (gx#stx-pair? _e53565363_)
                              (let ((_e53595371_ (gx#syntax-e _e53565363_)))
                                (let ((_hd53605374_ (##car _e53595371_))
                                      (_tl53615376_ (##cdr _e53595371_)))
                                  (let ((_body5379_ _tl53615376_))
                                    (if '#t
                                        (gx#core-cons _id5355_ _body5379_)
                                        (_E53585367_)))))
                              (_E53585367_)))))
                  (_E53575381_)))))
        (if (##structure-instance-of?
             _self53425348_
             (##type-id gx#rename-macro-expander::t))
            (let* ((_e53465388_ (##vector-ref _self53425348_ '1))
                   (_id5391_ _e53465388_))
              (_K53455385_ _id5391_))
            (_E53445352_)))))
  (bind-method!
   gx#rename-macro-expander::t
   'apply-macro-expander
   gx#rename-macro-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#core-apply-user-expander__opt-lambda5286
      (lambda (_self5288_ _stx5289_ _method5290_)
        (let* ((_self52915299_ _self5288_)
               (_E52935303_
                (lambda () (error '"No clause matching" _self52915299_)))
               (_K52945310_
                (lambda (_phi5306_ _ctx5307_ _K5308_)
                  (gx#core-apply-user-macro
                   _K5308_
                   _stx5289_
                   _ctx5307_
                   _phi5306_
                   _method5290_))))
          (if (##structure-instance-of?
               _self52915299_
               (##type-id gx#user-expander::t))
              (let* ((_e52955313_ (##vector-ref _self52915299_ '1))
                     (_K5316_ _e52955313_)
                     (_e52965318_ (##vector-ref _self52915299_ '2))
                     (_ctx5321_ _e52965318_)
                     (_e52975323_ (##vector-ref _self52915299_ '3))
                     (_phi5326_ _e52975323_))
                (_K52945310_ _phi5326_ _ctx5321_ _K5316_))
              (_E52935303_)))))
    (begin
      (define gx#core-apply-user-expander__0
        (lambda (_self5331_ _stx5332_)
          (let ((_method5334_ 'apply-macro-expander))
            (gx#core-apply-user-expander__opt-lambda5286
             _self5331_
             _stx5332_
             _method5334_))))
      (define gx#core-apply-user-expander
        (lambda _g6334_
          (let ((_g6333_ (length _g6334_)))
            (cond ((fx= _g6333_ 2)
                   (apply gx#core-apply-user-expander__0 _g6334_))
                  ((fx= _g6333_ 3)
                   (apply gx#core-apply-user-expander__opt-lambda5286 _g6334_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g6334_))))))))
  (define gx#core-apply-user-macro
    (lambda (_K5278_ _stx5279_ _ctx5280_ _phi5281_ _method5282_)
      (let ((_mark5284_
             (##structure
              gx#expander-mark::t
              '#f
              _ctx5280_
              _phi5281_
              _stx5279_)))
        (call-with-parameters
         (lambda ()
           (gx#stx-apply-mark
            (gx#core-apply-expander__opt-lambda5465
             _K5278_
             (gx#stx-apply-mark _stx5279_ _mark5284_)
             _method5282_)
            _mark5284_))
         gx#current-expander-marks
         (cons _mark5284_ (gx#current-expander-marks))))))
  (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
  (bind-method!
   gx#user-expander::t
   'apply-macro-expander
   gx#user-expander::apply-macro-expander
   '#f)
  (begin
    (define gx#resolve-identifier__opt-lambda5250
      (lambda (_stx5252_ _phi5253_ _ctx5254_)
        (let _lp5256_ ((_bind5258_
                        (gx#core-resolve-identifier__opt-lambda5180
                         _stx5252_
                         _phi5253_
                         _ctx5254_)))
          (if (##structure-direct-instance-of?
               _bind5258_
               'gx#import-binding::t)
              (_lp5256_
               (##direct-structure-ref _bind5258_ '4 gx#import-binding::t '#f))
              (if (##structure-direct-instance-of?
                   _bind5258_
                   'gx#alias-binding::t)
                  (_lp5256_
                   (gx#core-resolve-identifier__opt-lambda5180
                    (##direct-structure-ref
                     _bind5258_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi5253_
                    _ctx5254_))
                  _bind5258_)))))
    (begin
      (define gx#resolve-identifier__0
        (lambda (_stx5263_)
          (let* ((_phi5265_ (gx#current-expander-phi))
                 (_ctx5267_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda5250
             _stx5263_
             _phi5265_
             _ctx5267_))))
      (define gx#resolve-identifier__1
        (lambda (_stx5269_ _phi5270_)
          (let ((_ctx5272_ (gx#current-expander-context)))
            (gx#resolve-identifier__opt-lambda5250
             _stx5269_
             _phi5270_
             _ctx5272_))))
      (define gx#resolve-identifier
        (lambda _g6336_
          (let ((_g6335_ (length _g6336_)))
            (cond ((fx= _g6335_ 1) (apply gx#resolve-identifier__0 _g6336_))
                  ((fx= _g6335_ 2) (apply gx#resolve-identifier__1 _g6336_))
                  ((fx= _g6335_ 3)
                   (apply gx#resolve-identifier__opt-lambda5250 _g6336_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g6336_))))))))
  (begin
    (define gx#bind-identifier!__opt-lambda5208
      (lambda (_stx5210_ _val5211_ _rebind?5212_ _phi5213_ _ctx5214_)
        (let ((_rebind?5216_
               (if (not _rebind?5212_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?5212_) _rebind?5212_ true))))
          (gx#core-bind!__opt-lambda4969
           (gx#core-identifier-key _stx5210_)
           _val5211_
           _rebind?5216_
           _phi5213_
           _ctx5214_))))
    (begin
      (define gx#bind-identifier!__0
        (lambda (_stx5221_ _val5222_)
          (let* ((_rebind?5224_ '#f)
                 (_phi5226_ (gx#current-expander-phi))
                 (_ctx5228_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda5208
             _stx5221_
             _val5222_
             _rebind?5224_
             _phi5226_
             _ctx5228_))))
      (define gx#bind-identifier!__1
        (lambda (_stx5230_ _val5231_ _rebind?5232_)
          (let* ((_phi5234_ (gx#current-expander-phi))
                 (_ctx5236_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda5208
             _stx5230_
             _val5231_
             _rebind?5232_
             _phi5234_
             _ctx5236_))))
      (define gx#bind-identifier!__2
        (lambda (_stx5238_ _val5239_ _rebind?5240_ _phi5241_)
          (let ((_ctx5243_ (gx#current-expander-context)))
            (gx#bind-identifier!__opt-lambda5208
             _stx5238_
             _val5239_
             _rebind?5240_
             _phi5241_
             _ctx5243_))))
      (define gx#bind-identifier!
        (lambda _g6338_
          (let ((_g6337_ (length _g6338_)))
            (cond ((fx= _g6337_ 2) (apply gx#bind-identifier!__0 _g6338_))
                  ((fx= _g6337_ 3) (apply gx#bind-identifier!__1 _g6338_))
                  ((fx= _g6337_ 4) (apply gx#bind-identifier!__2 _g6338_))
                  ((fx= _g6337_ 5)
                   (apply gx#bind-identifier!__opt-lambda5208 _g6338_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g6338_))))))))
  (begin
    (define gx#core-resolve-identifier__opt-lambda5180
      (lambda (_stx5182_ _phi5183_ _ctx5184_)
        (let _lp5186_ ((_e5188_ _stx5182_)
                       (_marks5189_ (gx#current-expander-marks)))
          (if (symbol? _e5188_)
              (gx#core-resolve-binding
               _e5188_
               _phi5183_
               _phi5183_
               _ctx5184_
               (reverse _marks5189_))
              (if (gx#identifier-quote? _e5188_)
                  (gx#core-resolve-binding
                   (##structure-ref _e5188_ '1 AST::t '#f)
                   _phi5183_
                   '0
                   (##direct-structure-ref _e5188_ '3 gx#syntax-quote::t '#f)
                   (##direct-structure-ref _e5188_ '4 gx#syntax-quote::t '#f))
                  (if (##structure-direct-instance-of?
                       _e5188_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##structure-ref _e5188_ '1 AST::t '#f)
                       _phi5183_
                       _phi5183_
                       _ctx5184_
                       (foldl1 gx#apply-mark
                               (##direct-structure-ref
                                _e5188_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks5189_))
                      (if (##structure-direct-instance-of?
                           _e5188_
                           'gx#syntax-wrap::t)
                          (_lp5186_
                           (##structure-ref _e5188_ '1 AST::t '#f)
                           (gx#apply-mark
                            (##direct-structure-ref
                             _e5188_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks5189_))
                          (if (##structure-instance-of? _e5188_ 'gerbil#AST::t)
                              (_lp5186_
                               (##structure-ref _e5188_ '1 AST::t '#f)
                               _marks5189_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx5182_)))))))))
    (begin
      (define gx#core-resolve-identifier__0
        (lambda (_stx5194_)
          (let* ((_phi5196_ (gx#current-expander-phi))
                 (_ctx5198_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda5180
             _stx5194_
             _phi5196_
             _ctx5198_))))
      (define gx#core-resolve-identifier__1
        (lambda (_stx5200_ _phi5201_)
          (let ((_ctx5203_ (gx#current-expander-context)))
            (gx#core-resolve-identifier__opt-lambda5180
             _stx5200_
             _phi5201_
             _ctx5203_))))
      (define gx#core-resolve-identifier
        (lambda _g6340_
          (let ((_g6339_ (length _g6340_)))
            (cond ((fx= _g6339_ 1)
                   (apply gx#core-resolve-identifier__0 _g6340_))
                  ((fx= _g6339_ 2)
                   (apply gx#core-resolve-identifier__1 _g6340_))
                  ((fx= _g6339_ 3)
                   (apply gx#core-resolve-identifier__opt-lambda5180 _g6340_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g6340_))))))))
  (define gx#core-resolve-binding
    (lambda (_id5095_ _phi5096_ _src-phi5097_ _ctx5098_ _marks5099_)
      (letrec ((_resolve5101_
                (lambda (_ctx5169_ _src-phi5170_ _key5171_)
                  (let _lp5173_ ((_ctx5175_
                                  (gx#core-context-shift _ctx5169_ _phi5096_))
                                 (_dphi5176_ (fx- _phi5096_ _src-phi5170_)))
                    (let ((_$e5178_
                           (gx#core-context-resolve _ctx5175_ _key5171_)))
                      (if _$e5178_
                          (values _$e5178_)
                          (if (fxzero? _dphi5176_)
                              '#f
                              (if (fxpositive? _dphi5176_)
                                  (_lp5173_
                                   (gx#core-context-shift _ctx5175_ '-1)
                                   (fx- _dphi5176_ '1))
                                  (if (fxnegative? _dphi5176_)
                                      (_lp5173_
                                       (gx#core-context-shift _ctx5175_ '1)
                                       (fx+ _dphi5176_ '1))
                                      '#!void)))))))))
        (let _lp5103_ ((_ctx5105_ _ctx5098_)
                       (_src-phi5106_ _src-phi5097_)
                       (_rest5107_ _marks5099_))
          (let* ((_rest51085116_ _rest5107_)
                 (_E51115120_
                  (lambda () (error '"No clause matching" _rest51085116_)))
                 (_else51105124_
                  (lambda () (_resolve5101_ _ctx5105_ _src-phi5106_ _id5095_)))
                 (_K51125157_
                  (lambda (_rest5127_ _hd5128_)
                    (let* ((_hd51295135_ _hd5128_)
                           (_E51315139_
                            (lambda ()
                              (error '"No clause matching" _hd51295135_)))
                           (_K51325149_
                            (lambda (_subst5142_)
                              (let ((_$e5146_
                                     (let ((_key5144_
                                            (if _subst5142_
                                                (table-ref
                                                 _subst5142_
                                                 _id5095_
                                                 '#f)
                                                '#f)))
                                       (if _key5144_
                                           (_resolve5101_
                                            _ctx5105_
                                            _src-phi5106_
                                            _key5144_)
                                           '#f))))
                                (if _$e5146_
                                    _$e5146_
                                    (_lp5103_
                                     (##structure-ref
                                      _hd5128_
                                      '2
                                      gx#expander-mark::t
                                      '#f)
                                     (##structure-ref
                                      _hd5128_
                                      '3
                                      gx#expander-mark::t
                                      '#f)
                                     _rest5127_))))))
                      (if (##structure-instance-of?
                           _hd51295135_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e51335152_ (##vector-ref _hd51295135_ '1))
                                 (_subst5155_ _e51335152_))
                            (_K51325149_ _subst5155_))
                          (_E51315139_))))))
            (if (##pair? _rest51085116_)
                (let ((_hd51135160_ (##car _rest51085116_))
                      (_tl51145162_ (##cdr _rest51085116_)))
                  (let* ((_hd5165_ _hd51135160_) (_rest5167_ _tl51145162_))
                    (_K51125157_ _rest5167_ _hd5165_)))
                (_else51105124_)))))))
  (begin
    (define gx#core-bind!__opt-lambda4969
      (lambda (_key4971_ _val4972_ _rebind?4973_ _phi4974_ _ctx4975_)
        (letrec ((_update-binding4977_
                  (lambda (_xval5048_)
                    (if (let ((_$e5050_
                               (_rebind?4973_ _ctx4975_ _xval5048_ _val4972_)))
                          (if _$e5050_
                              _$e5050_
                              (let ((_$e5056_
                                     (if (##structure-direct-instance-of?
                                          _xval5048_
                                          'gx#import-binding::t)
                                         (let ((_$e5053_
                                                (##direct-structure-ref
                                                 _xval5048_
                                                 '6
                                                 gx#import-binding::t
                                                 '#f)))
                                           (if _$e5053_
                                               _$e5053_
                                               (if (##structure-instance-of?
                                                    _val4972_
                                                    'gx#binding::t)
                                                   (not (##structure-direct-instance-of?
                                                         _val4972_
                                                         'gx#import-binding::t))
                                                   '#f)))
                                         '#f)))
                                (if _$e5056_
                                    _$e5056_
                                    (if (##structure-instance-of?
                                         _xval5048_
                                         'gx#extern-binding::t)
                                        (if (##structure-instance-of?
                                             _val4972_
                                             'gx#runtime-binding::t)
                                            (eq? (##structure-ref
                                                  _val4972_
                                                  '1
                                                  gx#binding::t
                                                  '#f)
                                                 (##structure-ref
                                                  _xval5048_
                                                  '1
                                                  gx#binding::t
                                                  '#f))
                                            '#f)
                                        '#f)))))
                        _val4972_
                        (if (if (##structure-direct-instance-of?
                                 _val4972_
                                 'gx#import-binding::t)
                                (let ((_$e5059_
                                       (##direct-structure-ref
                                        _val4972_
                                        '6
                                        gx#import-binding::t
                                        '#f)))
                                  (if _$e5059_
                                      _$e5059_
                                      (if (##structure-instance-of?
                                           _xval5048_
                                           'gx#binding::t)
                                          (eq? (##structure-ref
                                                _val4972_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##structure-ref
                                                _xval5048_
                                                '1
                                                gx#binding::t
                                                '#f))
                                          '#f)))
                                '#f)
                            _xval5048_
                            (if (if (##structure-direct-instance-of?
                                     _val4972_
                                     'gx#import-binding::t)
                                    (##structure-instance-of?
                                     _xval5048_
                                     'gx#binding::t)
                                    '#f)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key4971_
                                 (cons (##structure-ref
                                        _val4972_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##direct-structure-ref
                                               _val4972_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##structure-ref
                                        _xval5048_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval5048_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##direct-structure-ref
                                                   _xval5048_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval5048_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key4971_
                                 _val4972_
                                 _xval5048_))))))
                 (_gensubst4978_
                  (lambda (_subst5043_ _id5044_)
                    (let ((_eid5046_
                           (gensym (if (uninterned-symbol? _id5044_)
                                       '%
                                       _id5044_))))
                      (begin
                        (table-set! _subst5043_ _id5044_ _eid5046_)
                        _eid5046_))))
                 (_subst!4979_
                  (lambda (_key4981_)
                    (let* ((_key49824990_ _key4981_)
                           (_E49854994_
                            (lambda ()
                              (error '"No clause matching" _key49824990_)))
                           (_else49844998_ (lambda () _key4981_))
                           (_K49865031_
                            (lambda (_mark5001_ _id5002_)
                              (let* ((_mark50035009_ _mark5001_)
                                     (_E50055013_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark50035009_)))
                                     (_K50065023_
                                      (lambda (_subst5016_)
                                        (if (not _subst5016_)
                                            (let ((_subst5018_
                                                   (make-hash-table-eq)))
                                              (begin
                                                (##structure-set!
                                                 _mark5001_
                                                 _subst5018_
                                                 '1
                                                 gx#expander-mark::t
                                                 '#f)
                                                (_gensubst4978_
                                                 _subst5018_
                                                 _id5002_)))
                                            (let ((_$e5020_
                                                   (table-ref
                                                    _subst5016_
                                                    _id5002_
                                                    '#f)))
                                              (if _$e5020_
                                                  (values _$e5020_)
                                                  (_gensubst4978_
                                                   _subst5016_
                                                   _id5002_)))))))
                                (if (##structure-instance-of?
                                     _mark50035009_
                                     (##type-id gx#expander-mark::t))
                                    (let* ((_e50075026_
                                            (##vector-ref _mark50035009_ '1))
                                           (_subst5029_ _e50075026_))
                                      (_K50065023_ _subst5029_))
                                    (_E50055013_))))))
                      (if (##pair? _key49824990_)
                          (let ((_hd49875034_ (##car _key49824990_))
                                (_tl49885036_ (##cdr _key49824990_)))
                            (let* ((_id5039_ _hd49875034_)
                                   (_mark5041_ _tl49885036_))
                              (_K49865031_ _mark5041_ _id5039_)))
                          (_else49844998_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx4975_ _phi4974_)
           (_subst!4979_ _key4971_)
           _val4972_
           _update-binding4977_))))
    (begin
      (define gx#core-bind!__0
        (lambda (_key5065_ _val5066_)
          (let* ((_rebind?5068_ false)
                 (_phi5070_ (gx#current-expander-phi))
                 (_ctx5072_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4969
             _key5065_
             _val5066_
             _rebind?5068_
             _phi5070_
             _ctx5072_))))
      (define gx#core-bind!__1
        (lambda (_key5074_ _val5075_ _rebind?5076_)
          (let* ((_phi5078_ (gx#current-expander-phi))
                 (_ctx5080_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4969
             _key5074_
             _val5075_
             _rebind?5076_
             _phi5078_
             _ctx5080_))))
      (define gx#core-bind!__2
        (lambda (_key5082_ _val5083_ _rebind?5084_ _phi5085_)
          (let ((_ctx5087_ (gx#current-expander-context)))
            (gx#core-bind!__opt-lambda4969
             _key5082_
             _val5083_
             _rebind?5084_
             _phi5085_
             _ctx5087_))))
      (define gx#core-bind!
        (lambda _g6342_
          (let ((_g6341_ (length _g6342_)))
            (cond ((fx= _g6341_ 2) (apply gx#core-bind!__0 _g6342_))
                  ((fx= _g6341_ 3) (apply gx#core-bind!__1 _g6342_))
                  ((fx= _g6341_ 4) (apply gx#core-bind!__2 _g6342_))
                  ((fx= _g6341_ 5)
                   (apply gx#core-bind!__opt-lambda4969 _g6342_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g6342_))))))))
  (define gx#core-identifier-key
    (lambda (_stx4901_)
      (if (symbol? _stx4901_)
          (let* ((_g49024910_ (gx#current-expander-marks))
                 (_E49054914_
                  (lambda () (error '"No clause matching" _g49024910_)))
                 (_else49044918_ (lambda () _stx4901_))
                 (_K49064923_ (lambda (_hd4921_) (cons _stx4901_ _hd4921_))))
            (if (##pair? _g49024910_)
                (let ((_hd49074926_ (##car _g49024910_))
                      (_tl49084928_ (##cdr _g49024910_)))
                  (let ((_hd4931_ _hd49074926_)) (_K49064923_ _hd4931_)))
                (_else49044918_)))
          (if (gx#identifier? _stx4901_)
              (let* ((_id4933_ (gx#syntax-local-unwrap _stx4901_))
                     (_eid4935_ (gx#stx-e _id4933_))
                     (_marks4937_ (gx#stx-identifier-marks _id4933_)))
                (let* ((_marks49394947_ _marks4937_)
                       (_E49424951_
                        (lambda ()
                          (error '"No clause matching" _marks49394947_)))
                       (_else49414955_ (lambda () _eid4935_))
                       (_K49434960_
                        (lambda (_hd4958_) (cons _eid4935_ _hd4958_))))
                  (if (##pair? _marks49394947_)
                      (let ((_hd49444963_ (##car _marks49394947_))
                            (_tl49454965_ (##cdr _marks49394947_)))
                        (let ((_hd4968_ _hd49444963_)) (_K49434960_ _hd4968_)))
                      (_else49414955_))))
              (gx#raise-syntax-error '#f '"Bad identifier" _stx4901_)))))
  (define gx#core-context-shift
    (lambda (_ctx4846_ _phi4847_)
      (letrec ((_make-phi4849_
                (lambda (_super4899_)
                  (let ((__obj6313 (make-object gx#phi-context::t '5)))
                    (begin
                      (gx#phi-context:::init!__opt-lambda6275
                       __obj6313
                       (gensym 'phi)
                       _super4899_)
                      __obj6313))))
               (_make-phi/up4850_
                (lambda (_ctx4894_ _super4895_)
                  (let ((_ctx+14897_ (_make-phi4849_ _super4895_)))
                    (begin
                      (##structure-set!
                       _ctx4894_
                       _ctx+14897_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx+14897_
                       _ctx4894_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+14897_))))
               (_make-phi/down4851_
                (lambda (_ctx4889_ _super4890_)
                  (let ((_ctx-14892_ (_make-phi4849_ _super4890_)))
                    (begin
                      (##structure-set!
                       _ctx-14892_
                       _ctx4889_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##structure-set!
                       _ctx4889_
                       _ctx-14892_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-14892_))))
               (_shift4852_
                (lambda (_ctx4873_
                         _delta4874_
                         _make-delta-context4875_
                         _phi4876_
                         _K4877_)
                  (let ((_$e4879_
                         (##structure-ref _ctx4873_ '3 gx#phi-context::t '#f)))
                    (if _$e4879_
                        ((lambda (_super4882_)
                           (let* ((_super4884_
                                   (_K4877_ _super4882_ _delta4874_))
                                  (_ctx+d4886_
                                   (_make-delta-context4875_
                                    _ctx4873_
                                    _super4884_)))
                             (_K4877_ _ctx+d4886_
                                      (fx- _phi4876_ _delta4874_))))
                         _$e4879_)
                        (error '"Bad context" _ctx4873_))))))
        (let _K4854_ ((_ctx4856_ _ctx4846_) (_phi4857_ _phi4847_))
          (if (fxzero? _phi4857_)
              _ctx4856_
              (if (##structure-instance-of? _ctx4856_ 'gx#context-phi::t)
                  (if (fxpositive? _phi4857_)
                      (let ((_$e4859_
                             (##structure-ref
                              _ctx4856_
                              '4
                              gx#phi-context::t
                              '#f)))
                        (if _$e4859_
                            ((lambda (_g48614863_)
                               (_K4854_ _g48614863_ (fx- _phi4857_ '1)))
                             _$e4859_)
                            (_shift4852_
                             _ctx4856_
                             '1
                             _make-phi/up4850_
                             _phi4857_
                             _K4854_)))
                      (let ((_$e4866_
                             (##structure-ref
                              _ctx4856_
                              '5
                              gx#phi-context::t
                              '#f)))
                        (if _$e4866_
                            ((lambda (_g48684870_)
                               (_K4854_ _g48684870_ (fx+ _phi4857_ '1)))
                             _$e4866_)
                            (_shift4852_
                             _ctx4856_
                             '-1
                             _make-phi/down4851_
                             _phi4857_
                             _K4854_))))
                  _ctx4856_))))))
  (define gx#core-context-get
    (lambda (_ctx4843_ _key4844_)
      (table-ref
       (##structure-ref _ctx4843_ '2 gx#expander-context::t '#f)
       _key4844_
       '#f)))
  (define gx#core-context-put!
    (lambda (_ctx4839_ _key4840_ _val4841_)
      (table-set!
       (##structure-ref _ctx4839_ '2 gx#expander-context::t '#f)
       _key4840_
       _val4841_)))
  (define gx#core-context-resolve
    (lambda (_ctx4826_ _key4827_)
      (let _lp4829_ ((_ctx4831_ _ctx4826_))
        (let ((_$e4833_ (gx#core-context-get _ctx4831_ _key4827_)))
          (if _$e4833_
              (values _$e4833_)
              (let ((_$e4836_
                     (if (##structure-instance-of?
                          _ctx4831_
                          'gx#context-phi::t)
                         (##structure-ref _ctx4831_ '3 gx#phi-context::t '#f)
                         '#f)))
                (if _$e4836_ (_lp4829_ _$e4836_) '#f)))))))
  (define gx#core-context-bind!
    (lambda (_ctx4816_ _key4817_ _val4818_ _rebind4819_)
      (let ((_$e4821_ (gx#core-context-get _ctx4816_ _key4817_)))
        (if _$e4821_
            ((lambda (_xval4824_)
               (gx#core-context-put!
                _ctx4816_
                _key4817_
                (_rebind4819_ _xval4824_)))
             _$e4821_)
            (gx#core-context-put! _ctx4816_ _key4817_ _val4818_)))))
  (begin
    (define gx#core-context-top__opt-lambda4792
      (lambda (_ctx4794_ _stop?4795_)
        (let _lp4797_ ((_ctx4799_ _ctx4794_))
          (if (_stop?4795_ _ctx4799_)
              _ctx4799_
              (if (##structure-instance-of? _ctx4799_ 'gx#context-phi::t)
                  (_lp4797_
                   (##structure-ref _ctx4799_ '3 gx#phi-context::t '#f))
                  '#f)))))
    (begin
      (define gx#core-context-top__0
        (lambda ()
          (let* ((_ctx4805_ (gx#current-expander-context))
                 (_stop?4807_ gx#top-context?))
            (gx#core-context-top__opt-lambda4792 _ctx4805_ _stop?4807_))))
      (define gx#core-context-top__1
        (lambda (_ctx4809_)
          (let ((_stop?4811_ gx#top-context?))
            (gx#core-context-top__opt-lambda4792 _ctx4809_ _stop?4811_))))
      (define gx#core-context-top
        (lambda _g6344_
          (let ((_g6343_ (length _g6344_)))
            (cond ((fx= _g6343_ 0) (apply gx#core-context-top__0 _g6344_))
                  ((fx= _g6343_ 1) (apply gx#core-context-top__1 _g6344_))
                  ((fx= _g6343_ 2)
                   (apply gx#core-context-top__opt-lambda4792 _g6344_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g6344_))))))))
  (begin
    (define gx#core-context-root__opt-lambda4777
      (lambda (_ctx4779_)
        (let _lp4781_ ((_ctx4783_ _ctx4779_))
          (if (##structure-instance-of? _ctx4783_ 'gx#context-phi::t)
              (_lp4781_ (##structure-ref _ctx4783_ '3 gx#phi-context::t '#f))
              _ctx4783_))))
    (begin
      (define gx#core-context-root__0
        (lambda ()
          (let ((_ctx4789_ (gx#current-expander-context)))
            (gx#core-context-root__opt-lambda4777 _ctx4789_))))
      (define gx#core-context-root
        (lambda _g6346_
          (let ((_g6345_ (length _g6346_)))
            (cond ((fx= _g6345_ 0) (apply gx#core-context-root__0 _g6346_))
                  ((fx= _g6345_ 1)
                   (apply gx#core-context-root__opt-lambda4777 _g6346_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g6346_))))))))
  (begin
    (define gx#core-context-rebind?__opt-lambda4761
      (lambda (_ctx4763_ . __47604764_)
        (if (##structure-instance-of? _ctx4763_ 'gx#top-context::t)
            (if (not (##structure-instance-of?
                      _ctx4763_
                      'gx#module-context::t))
                (not (##structure-instance-of?
                      _ctx4763_
                      'gx#prelude-context::t))
                '#f)
            '#f)))
    (begin
      (define gx#core-context-rebind?__0
        (lambda ()
          (let ((_ctx4771_ (gx#current-expander-context)))
            (gx#core-context-rebind?__opt-lambda4761 _ctx4771_))))
      (define gx#core-context-rebind?
        (lambda _g6348_
          (let ((_g6347_ (length _g6348_)))
            (cond ((fx= _g6347_ 0) (apply gx#core-context-rebind?__0 _g6348_))
                  ((fx= _g6347_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4761 _g6348_))
                  ((fx>= _g6347_ 1)
                   (apply gx#core-context-rebind?__opt-lambda4761 _g6348_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g6348_))))))))
  (begin
    (define gx#core-context-namespace__opt-lambda4744
      (lambda (_ctx4746_)
        (let ((_$e4748_ (gx#core-context-top__1 _ctx4746_)))
          (if _$e4748_
              ((lambda (_ctx4751_)
                 (if (##structure-instance-of? _ctx4751_ 'gx#module-context::t)
                     (##structure-ref _ctx4751_ '6 gx#module-context::t '#f)
                     '#f))
               _$e4748_)
              '#f))))
    (begin
      (define gx#core-context-namespace__0
        (lambda ()
          (let ((_ctx4757_ (gx#current-expander-context)))
            (gx#core-context-namespace__opt-lambda4744 _ctx4757_))))
      (define gx#core-context-namespace
        (lambda _g6350_
          (let ((_g6349_ (length _g6350_)))
            (cond ((fx= _g6349_ 0)
                   (apply gx#core-context-namespace__0 _g6350_))
                  ((fx= _g6349_ 1)
                   (apply gx#core-context-namespace__opt-lambda4744 _g6350_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g6350_))))))))
  (begin
    (define gx#expander-binding?__opt-lambda4730
      (lambda (_bind4732_ _is?4733_)
        (if (##structure-direct-instance-of? _bind4732_ 'gx#syntax-binding::t)
            (_is?4733_
             (##direct-structure-ref _bind4732_ '4 gx#syntax-binding::t '#f))
            '#f)))
    (begin
      (define gx#expander-binding?__0
        (lambda (_bind4738_)
          (let ((_is?4740_ gx#expander?))
            (gx#expander-binding?__opt-lambda4730 _bind4738_ _is?4740_))))
      (define gx#expander-binding?
        (lambda _g6352_
          (let ((_g6351_ (length _g6352_)))
            (cond ((fx= _g6351_ 1) (apply gx#expander-binding?__0 _g6352_))
                  ((fx= _g6351_ 2)
                   (apply gx#expander-binding?__opt-lambda4730 _g6352_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g6352_))))))))
  (define gx#core-expander-binding?
    (lambda (_bind4729_)
      (gx#expander-binding?__opt-lambda4730 _bind4729_ gx#core-expander?)))
  (define gx#expression-form-binding?
    (lambda (_bind4727_)
      (gx#expander-binding?__opt-lambda4730 _bind4727_ gx#expression-form?)))
  (define gx#direct-special-form-binding?
    (lambda (_bind4721_)
      (letrec ((_direct-special-form?4723_
                (lambda (_obj4725_)
                  (##structure-direct-instance-of?
                   _obj4725_
                   (##type-id gx#special-form::t)))))
        (gx#expander-binding?__opt-lambda4730
         _bind4721_
         _direct-special-form?4723_))))
  (define gx#special-form-binding?
    (lambda (_bind4719_)
      (gx#expander-binding?__opt-lambda4730 _bind4719_ gx#special-form?)))
  (define gx#feature-binding?
    (lambda (_bind4710_)
      (letrec ((_feature?4712_
                (lambda (_e4714_)
                  (let ((_$e4716_
                         (##structure-instance-of?
                          _e4714_
                          'gx#feature-expander::t)))
                    (if _$e4716_
                        _$e4716_
                        (##structure-instance-of?
                         _e4714_
                         'gx#module-context::t))))))
        (gx#expander-binding?__opt-lambda4730 _bind4710_ _feature?4712_))))
  (define gx#private-feature-binding?
    (lambda (_bind4708_)
      (gx#expander-binding?__opt-lambda4730
       _bind4708_
       gx#private-feature-expander?)))
  (begin
    (define gx#core-bound-identifier?__opt-lambda4693
      (lambda (_id4695_ _bound?4696_)
        (if (gx#identifier? _id4695_)
            (_bound?4696_ (gx#resolve-identifier__0 _id4695_))
            '#f)))
    (begin
      (define gx#core-bound-identifier?__0
        (lambda (_id4701_)
          (let ((_bound?4703_ gx#core-expander-binding?))
            (gx#core-bound-identifier?__opt-lambda4693
             _id4701_
             _bound?4703_))))
      (define gx#core-bound-identifier?
        (lambda _g6354_
          (let ((_g6353_ (length _g6354_)))
            (cond ((fx= _g6353_ 1)
                   (apply gx#core-bound-identifier?__0 _g6354_))
                  ((fx= _g6353_ 2)
                   (apply gx#core-bound-identifier?__opt-lambda4693 _g6354_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g6354_))))))))
  (define gx#core-identifier=?
    (lambda (_x4685_ _y4686_)
      (letrec ((_y=?4688_
                (lambda (_xid4692_)
                  ((if (list? _y4686_) memq eq?) _xid4692_ _y4686_))))
        (let ((_bind4690_ (gx#resolve-identifier__0 _x4685_)))
          (if (##structure-instance-of? _bind4690_ 'gx#binding::t)
              (_y=?4688_ (##structure-ref _bind4690_ '1 gx#binding::t '#f))
              (_y=?4688_ (gx#stx-e _x4685_)))))))
  (define gx#core-extern-symbol?
    (lambda (_e4683_)
      (if (interned-symbol? _e4683_)
          (string-index (symbol->string _e4683_) '#\#)
          '#f)))
  (begin
    (define gx#core-quote-syntax__opt-lambda4639
      (lambda (_stx4641_ _src4642_ _ctx4643_ _marks4644_)
        (if (gx#sealed-syntax? _stx4641_)
            (gx#stx-unwrap__0 _stx4641_)
            (if (gx#identifier? _stx4641_)
                (let ((_id4646_ (gx#syntax-local-unwrap _stx4641_)))
                  (##structure
                   gx#syntax-quote::t
                   (gx#stx-e _id4646_)
                   (let ((_$e4648_ (gx#stx-source _id4646_)))
                     (if _$e4648_ _$e4648_ _src4642_))
                   _ctx4643_
                   (##direct-structure-ref
                    _id4646_
                    '3
                    gx#identifier-wrap::t
                    '#f)))
                (if (gx#stx-datum? _stx4641_)
                    (gx#stx-e _stx4641_)
                    (##structure
                     gx#syntax-quote::t
                     _stx4641_
                     (let ((_$e4651_ (gx#stx-source _stx4641_)))
                       (if _$e4651_ _$e4651_ _src4642_))
                     _ctx4643_
                     (reverse _marks4644_)))))))
    (begin
      (define gx#core-quote-syntax__0
        (lambda (_stx4657_)
          (let* ((_src4659_ '#f)
                 (_ctx4661_ (gx#current-expander-context))
                 (_marks4663_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4639
             _stx4657_
             _src4659_
             _ctx4661_
             _marks4663_))))
      (define gx#core-quote-syntax__1
        (lambda (_stx4665_ _src4666_)
          (let* ((_ctx4668_ (gx#current-expander-context))
                 (_marks4670_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4639
             _stx4665_
             _src4666_
             _ctx4668_
             _marks4670_))))
      (define gx#core-quote-syntax__2
        (lambda (_stx4672_ _src4673_ _ctx4674_)
          (let ((_marks4676_ (gx#current-expander-marks)))
            (gx#core-quote-syntax__opt-lambda4639
             _stx4672_
             _src4673_
             _ctx4674_
             _marks4676_))))
      (define gx#core-quote-syntax
        (lambda _g6356_
          (let ((_g6355_ (length _g6356_)))
            (cond ((fx= _g6355_ 1) (apply gx#core-quote-syntax__0 _g6356_))
                  ((fx= _g6355_ 2) (apply gx#core-quote-syntax__1 _g6356_))
                  ((fx= _g6355_ 3) (apply gx#core-quote-syntax__2 _g6356_))
                  ((fx= _g6355_ 4)
                   (apply gx#core-quote-syntax__opt-lambda4639 _g6356_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g6356_))))))))
  (define gx#core-cons
    (lambda (_hd4637_ _tl4638_)
      (cons (gx#core-quote-syntax__0 _hd4637_) _tl4638_)))
  (define gx#core-list
    (lambda (_hd4634_ . _rest4635_)
      (cons (gx#core-quote-syntax__0 _hd4634_) _rest4635_)))
  (define gx#core-cons*
    (lambda (_hd4631_ . _rest4632_)
      (apply cons* (gx#core-quote-syntax__0 _hd4631_) _rest4632_)))
  (begin
    (define gx#core-resolve-path__opt-lambda4603
      (lambda (_stx-path4605_ _rel4606_)
        (let ((_path4618_ (gx#stx-e _stx-path4605_))
              (_reldir4619_
               (let _lp4608_ ((_relsrc4610_
                               (let ((_$e4615_ (gx#stx-source _stx-path4605_)))
                                 (if _$e4615_ _$e4615_ _rel4606_))))
                 (if (##structure-instance-of? _relsrc4610_ 'gerbil#AST::t)
                     (_lp4608_
                      (let ((_$e4612_ (gx#stx-source _relsrc4610_)))
                        (if _$e4612_ _$e4612_ (gx#stx-e _relsrc4610_))))
                     (if (source-location-path? _relsrc4610_)
                         (path-directory (source-location-path _relsrc4610_))
                         (if (string? _relsrc4610_)
                             (path-directory _relsrc4610_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path4618_ (path-normalize _reldir4619_)))))
    (begin
      (define gx#core-resolve-path__0
        (lambda (_stx-path4624_)
          (let ((_rel4626_ '#f))
            (gx#core-resolve-path__opt-lambda4603 _stx-path4624_ _rel4626_))))
      (define gx#core-resolve-path
        (lambda _g6358_
          (let ((_g6357_ (length _g6358_)))
            (cond ((fx= _g6357_ 1) (apply gx#core-resolve-path__0 _g6358_))
                  ((fx= _g6357_ 2)
                   (apply gx#core-resolve-path__opt-lambda4603 _g6358_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g6358_))))))))
  (begin
    (define gx#core-deserialize-mark__opt-lambda4559
      (lambda (_repr4561_ _ctx4562_)
        (let* ((_repr45634570_ _repr4561_)
               (_E45654574_
                (lambda () (error '"No clause matching" _repr45634570_)))
               (_K45664582_
                (lambda (_subs4577_ _phi4578_)
                  (let ((_subst4580_
                         (if (not (null? _subs4577_))
                             (list->hash-table-eq _subs4577_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst4580_
                     _ctx4562_
                     _phi4578_
                     '#f)))))
          (if (##pair? _repr45634570_)
              (let ((_hd45674585_ (##car _repr45634570_))
                    (_tl45684587_ (##cdr _repr45634570_)))
                (let* ((_phi4590_ _hd45674585_) (_subs4592_ _tl45684587_))
                  (_K45664582_ _subs4592_ _phi4590_)))
              (_E45654574_)))))
    (begin
      (define gx#core-deserialize-mark__0
        (lambda (_repr4597_)
          (let ((_ctx4599_ (gx#current-expander-context)))
            (gx#core-deserialize-mark__opt-lambda4559 _repr4597_ _ctx4599_))))
      (define gx#core-deserialize-mark
        (lambda _g6360_
          (let ((_g6359_ (length _g6360_)))
            (cond ((fx= _g6359_ 1) (apply gx#core-deserialize-mark__0 _g6360_))
                  ((fx= _g6359_ 2)
                   (apply gx#core-deserialize-mark__opt-lambda4559 _g6360_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g6360_))))))))
  (define gx#syntax-local-rewrap
    (lambda (_stx4558_) (gx#stx-rewrap _stx4558_ (gx#current-expander-marks))))
  (define gx#syntax-local-unwrap
    (lambda (_stx4556_)
      (gx#stx-unwrap__opt-lambda4342 _stx4556_ (gx#current-expander-marks))))
  (define gx#syntax-local-introduce
    (lambda (_stx4524_)
      (let* ((_g45254533_ (gx#current-expander-marks))
             (_E45284537_
              (lambda () (error '"No clause matching" _g45254533_)))
             (_else45274541_ (lambda () _stx4524_))
             (_K45294546_
              (lambda (_hd4544_) (gx#stx-apply-mark _stx4524_ _hd4544_))))
        (if (##pair? _g45254533_)
            (let ((_hd45304549_ (##car _g45254533_))
                  (_tl45314551_ (##cdr _g45254533_)))
              (let ((_hd4554_ _hd45304549_)) (_K45294546_ _hd4554_)))
            (_else45274541_)))))
  (begin
    (define gx#syntax-local-e__opt-lambda4507
      (lambda (_stx4509_ _E4510_)
        (let ((_bind4512_ (gx#resolve-identifier__0 _stx4509_)))
          (if (##structure-direct-instance-of?
               _bind4512_
               'gx#syntax-binding::t)
              (##direct-structure-ref _bind4512_ '4 gx#syntax-binding::t '#f)
              (_E4510_ _stx4509_)))))
    (begin
      (define gx#syntax-local-e__0
        (lambda (_stx4517_)
          (let ((_E4519_ gx#raise-syntax-ref-error))
            (gx#syntax-local-e__opt-lambda4507 _stx4517_ _E4519_))))
      (define gx#syntax-local-e
        (lambda _g6362_
          (let ((_g6361_ (length _g6362_)))
            (cond ((fx= _g6361_ 1) (apply gx#syntax-local-e__0 _g6362_))
                  ((fx= _g6361_ 2)
                   (apply gx#syntax-local-e__opt-lambda4507 _g6362_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g6362_))))))))
  (begin
    (define gx#syntax-local-value__opt-lambda4491
      (lambda (_stx4493_ _E4494_)
        (let ((_e4496_ (gx#syntax-local-e__opt-lambda4507 _stx4493_ _E4494_)))
          (if (##structure-instance-of? _e4496_ 'gx#expander::t)
              (##structure-ref _e4496_ '1 gx#expander::t '#f)
              _e4496_))))
    (begin
      (define gx#syntax-local-value__0
        (lambda (_stx4501_)
          (let ((_E4503_ gx#raise-syntax-ref-error))
            (gx#syntax-local-value__opt-lambda4491 _stx4501_ _E4503_))))
      (define gx#syntax-local-value
        (lambda _g6364_
          (let ((_g6363_ (length _g6364_)))
            (cond ((fx= _g6363_ 1) (apply gx#syntax-local-value__0 _g6364_))
                  ((fx= _g6363_ 2)
                   (apply gx#syntax-local-value__opt-lambda4491 _g6364_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g6364_))))))))
  (define gx#raise-syntax-ref-error
    (lambda (_stx4490_)
      (gx#raise-syntax-error
       '#f
       '"Bad syntax; not a syntax binding"
       _stx4490_))))
