(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1695199291)
  (begin
    (define gxc#current-compile-methods (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_hash-e15356_
                  (lambda (_id15358_) (symbol-hash (gx#stx-e _id15358_)))))
          (make-table 'test: gx#bound-identifier=? 'hash: _hash-e15356_))))
    (define gxc#compile-e
      (lambda (_stx15311_ . _args15312_)
        (let* ((_g1531415324_
                (lambda (_g1531515321_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1531515321_)))
               (_g1531315352_
                (lambda (_g1531515327_)
                  (if (gx#stx-pair? _g1531515327_)
                      (let ((_e1531715329_ (gx#stx-e _g1531515327_)))
                        (let ((_hd1531815332_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1531715329_)))
                              (_tl1531915334_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1531715329_))))
                          ((lambda (_L15337_)
                             (let ((_$e15347_
                                    (table-ref
                                     (gxc#current-compile-methods)
                                     (gx#stx-e _L15337_)
                                     '#f)))
                               (if _$e15347_
                                   ((lambda (_method15350_)
                                      (apply _method15350_
                                             _stx15311_
                                             _args15312_))
                                    _$e15347_)
                                   (gxc#raise-compile-error
                                    '"Cannot compile; missing method"
                                    _stx15311_
                                    _L15337_))))
                           _hd1531815332_)))
                      (_g1531415324_ _g1531515327_)))))
          (_g1531315352_ _stx15311_))))
    (define gxc#&void-expression
      (make-promise
       (lambda ()
         (let ((_tbl15308_ (make-table 'test: eq?)))
           (table-set! _tbl15308_ '%#begin-annotation void)
           (table-set! _tbl15308_ '%#lambda void)
           (table-set! _tbl15308_ '%#case-lambda void)
           (table-set! _tbl15308_ '%#let-values void)
           (table-set! _tbl15308_ '%#letrec-values void)
           (table-set! _tbl15308_ '%#letrec*-values void)
           (table-set! _tbl15308_ '%#quote void)
           (table-set! _tbl15308_ '%#quote-syntax void)
           (table-set! _tbl15308_ '%#call void)
           (table-set! _tbl15308_ '%#if void)
           (table-set! _tbl15308_ '%#ref void)
           (table-set! _tbl15308_ '%#set! void)
           (table-set! _tbl15308_ '%#struct-instance? void)
           (table-set! _tbl15308_ '%#struct-direct-instance? void)
           (table-set! _tbl15308_ '%#struct-ref void)
           (table-set! _tbl15308_ '%#struct-set! void)
           (table-set! _tbl15308_ '%#struct-direct-ref void)
           (table-set! _tbl15308_ '%#struct-direct-set! void)
           (table-set! _tbl15308_ '%#struct-unchecked-ref void)
           (table-set! _tbl15308_ '%#struct-unchecked-set! void)
           _tbl15308_))))
    (define gxc#&void-special-form
      (make-promise
       (lambda ()
         (let ((_tbl15304_ (make-table 'test: eq?)))
           (table-set! _tbl15304_ '%#begin void)
           (table-set! _tbl15304_ '%#begin-syntax void)
           (table-set! _tbl15304_ '%#begin-foreign void)
           (table-set! _tbl15304_ '%#module void)
           (table-set! _tbl15304_ '%#import void)
           (table-set! _tbl15304_ '%#export void)
           (table-set! _tbl15304_ '%#provide void)
           (table-set! _tbl15304_ '%#extern void)
           (table-set! _tbl15304_ '%#define-values void)
           (table-set! _tbl15304_ '%#define-syntax void)
           (table-set! _tbl15304_ '%#define-alias void)
           (table-set! _tbl15304_ '%#declare void)
           _tbl15304_))))
    (define gxc#&void
      (make-promise
       (lambda ()
         (let ((_tbl15300_ (make-table 'test: eq?)))
           (hash-copy! _tbl15300_ (force gxc#&void-special-form))
           (hash-copy! _tbl15300_ (force gxc#&void-expression))
           _tbl15300_))))
    (define gxc#&false-expression
      (make-promise
       (lambda ()
         (let ((_tbl15296_ (make-table 'test: eq?)))
           (table-set! _tbl15296_ '%#begin-annotation false)
           (table-set! _tbl15296_ '%#lambda false)
           (table-set! _tbl15296_ '%#case-lambda false)
           (table-set! _tbl15296_ '%#let-values false)
           (table-set! _tbl15296_ '%#letrec-values false)
           (table-set! _tbl15296_ '%#letrec*-values false)
           (table-set! _tbl15296_ '%#quote false)
           (table-set! _tbl15296_ '%#quote-syntax false)
           (table-set! _tbl15296_ '%#call false)
           (table-set! _tbl15296_ '%#if false)
           (table-set! _tbl15296_ '%#ref false)
           (table-set! _tbl15296_ '%#set! false)
           (table-set! _tbl15296_ '%#struct-instance? false)
           (table-set! _tbl15296_ '%#struct-direct-instance? false)
           (table-set! _tbl15296_ '%#struct-ref false)
           (table-set! _tbl15296_ '%#struct-set! false)
           (table-set! _tbl15296_ '%#struct-direct-ref false)
           (table-set! _tbl15296_ '%#struct-direct-set! false)
           (table-set! _tbl15296_ '%#struct-unchecked-ref false)
           (table-set! _tbl15296_ '%#struct-unchecked-set! false)
           _tbl15296_))))
    (define gxc#&false-special-form
      (make-promise
       (lambda ()
         (let ((_tbl15292_ (make-table 'test: eq?)))
           (table-set! _tbl15292_ '%#begin false)
           (table-set! _tbl15292_ '%#begin-syntax false)
           (table-set! _tbl15292_ '%#begin-foreign false)
           (table-set! _tbl15292_ '%#module false)
           (table-set! _tbl15292_ '%#import false)
           (table-set! _tbl15292_ '%#export false)
           (table-set! _tbl15292_ '%#provide false)
           (table-set! _tbl15292_ '%#extern false)
           (table-set! _tbl15292_ '%#define-values false)
           (table-set! _tbl15292_ '%#define-syntax false)
           (table-set! _tbl15292_ '%#define-alias false)
           (table-set! _tbl15292_ '%#declare false)
           _tbl15292_))))
    (define gxc#&false
      (make-promise
       (lambda ()
         (let ((_tbl15288_ (make-table 'test: eq?)))
           (hash-copy! _tbl15288_ (force gxc#&false-special-form))
           (hash-copy! _tbl15288_ (force gxc#&false-expression))
           _tbl15288_))))
    (define gxc#&collect-bindings
      (make-promise
       (lambda ()
         (let ((_tbl15284_ (make-table 'test: eq?)))
           (hash-copy! _tbl15284_ (force gxc#&void-expression))
           (hash-copy! _tbl15284_ (force gxc#&void-special-form))
           (table-set! _tbl15284_ '%#begin gxc#collect-begin%)
           (table-set! _tbl15284_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl15284_ '%#module gxc#collect-module%)
           (table-set!
            _tbl15284_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl15284_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl15284_))))
    (define gxc#apply-collect-bindings
      (lambda (_stx15277_ . _args15279_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15277_ _args15279_))
         gxc#current-compile-methods
         (force gxc#&collect-bindings))))
    (define gxc#&lift-modules
      (make-promise
       (lambda ()
         (let ((_tbl15274_ (make-table 'test: eq?)))
           (hash-copy! _tbl15274_ (force gxc#&void))
           (table-set! _tbl15274_ '%#begin gxc#collect-begin%)
           (table-set! _tbl15274_ '%#module gxc#lift-modules-module%)
           _tbl15274_))))
    (define gxc#apply-lift-modules
      (lambda (_stx15267_ . _args15269_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15267_ _args15269_))
         gxc#current-compile-methods
         (force gxc#&lift-modules))))
    (define gxc#&find-runtime-code
      (make-promise
       (lambda ()
         (let ((_tbl15264_ (make-table 'test: eq?)))
           (table-set! _tbl15264_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl15264_ '%#begin-syntax false)
           (table-set! _tbl15264_ '%#begin-foreign true)
           (table-set! _tbl15264_ '%#begin-annotation true)
           (table-set! _tbl15264_ '%#module false)
           (table-set! _tbl15264_ '%#import false)
           (table-set! _tbl15264_ '%#export false)
           (table-set! _tbl15264_ '%#provide false)
           (table-set! _tbl15264_ '%#extern false)
           (table-set! _tbl15264_ '%#define-values true)
           (table-set! _tbl15264_ '%#define-syntax false)
           (table-set! _tbl15264_ '%#define-alias false)
           (table-set! _tbl15264_ '%#declare false)
           (table-set! _tbl15264_ '%#lambda true)
           (table-set! _tbl15264_ '%#case-lambda true)
           (table-set! _tbl15264_ '%#let-values true)
           (table-set! _tbl15264_ '%#letrec-values true)
           (table-set! _tbl15264_ '%#letrec*-values true)
           (table-set! _tbl15264_ '%#quote true)
           (table-set! _tbl15264_ '%#call true)
           (table-set! _tbl15264_ '%#if true)
           (table-set! _tbl15264_ '%#ref true)
           (table-set! _tbl15264_ '%#set! true)
           (table-set! _tbl15264_ '%#struct-instance? true)
           (table-set! _tbl15264_ '%#struct-direct-instance? true)
           (table-set! _tbl15264_ '%#struct-ref true)
           (table-set! _tbl15264_ '%#struct-set! true)
           (table-set! _tbl15264_ '%#struct-direct-ref true)
           (table-set! _tbl15264_ '%#struct-direct-set! true)
           (table-set! _tbl15264_ '%#struct-unchecked-ref true)
           (table-set! _tbl15264_ '%#struct-unchecked-set! true)
           _tbl15264_))))
    (define gxc#apply-find-runtime-code
      (lambda (_stx15257_ . _args15259_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15257_ _args15259_))
         gxc#current-compile-methods
         (force gxc#&find-runtime-code))))
    (define gxc#&find-lambda-expression
      (make-promise
       (lambda ()
         (let ((_tbl15254_ (make-table 'test: eq?)))
           (hash-copy! _tbl15254_ (force gxc#&false))
           (table-set! _tbl15254_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl15254_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl15254_ '%#lambda values)
           (table-set! _tbl15254_ '%#case-lambda values)
           (table-set!
            _tbl15254_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl15254_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl15254_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl15254_))))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx15247_ . _args15249_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15247_ _args15249_))
         gxc#current-compile-methods
         (force gxc#&find-lambda-expression))))
    (define gxc#&count-values
      (make-promise
       (lambda ()
         (let ((_tbl15244_ (make-table 'test: eq?)))
           (hash-copy! _tbl15244_ (force gxc#&false-expression))
           (table-set! _tbl15244_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl15244_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl15244_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl15244_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl15244_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl15244_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl15244_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl15244_ '%#quote gxc#count-values-single%)
           (table-set! _tbl15244_ '%#call gxc#count-values-call%)
           (table-set! _tbl15244_ '%#if gxc#count-values-if%)
           _tbl15244_))))
    (define gxc#apply-count-values
      (lambda (_stx15237_ . _args15239_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15237_ _args15239_))
         gxc#current-compile-methods
         (force gxc#&count-values))))
    (define gxc#&generate-runtime-empty
      (make-promise
       (lambda ()
         (let ((_tbl15234_ (make-table 'test: eq?)))
           (table-set! _tbl15234_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl15234_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl15234_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl15234_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl15234_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl15234_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl15234_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl15234_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl15234_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl15234_))))
    (define gxc#&generate-loader
      (make-promise
       (lambda ()
         (let ((_tbl15230_ (make-table 'test: eq?)))
           (hash-copy! _tbl15230_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl15230_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl15230_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl15230_))))
    (define gxc#apply-generate-loader
      (lambda (_stx15223_ . _args15225_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15223_ _args15225_))
         gxc#current-compile-methods
         (force gxc#&generate-loader))))
    (define gxc#&generate-runtime
      (make-promise
       (lambda ()
         (let ((_tbl15220_ (make-table 'test: eq?)))
           (hash-copy! _tbl15220_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl15220_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl15220_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl15220_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl15220_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl15220_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl15220_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl15220_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl15220_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl15220_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl15220_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl15220_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl15220_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl15220_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl15220_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl15220_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl15220_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl15220_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl15220_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl15220_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl15220_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl15220_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl15220_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl15220_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl15220_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl15220_))))
    (define gxc#apply-generate-runtime
      (lambda (_stx15213_ . _args15215_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15213_ _args15215_))
         gxc#current-compile-methods
         (force gxc#&generate-runtime))))
    (define gxc#&generate-runtime-phi
      (make-promise
       (lambda ()
         (let ((_tbl15210_ (make-table 'test: eq?)))
           (hash-copy! _tbl15210_ (force gxc#&generate-runtime))
           (table-set!
            _tbl15210_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl15210_))))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx15203_ . _args15205_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15203_ _args15205_))
         gxc#current-compile-methods
         (force gxc#&generate-runtime-phi))))
    (define gxc#&collect-expression-refs
      (make-promise
       (lambda ()
         (let ((_tbl15200_ (make-table 'test: eq?)))
           (table-set! _tbl15200_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl15200_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl15200_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl15200_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl15200_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl15200_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl15200_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl15200_ '%#quote void)
           (table-set! _tbl15200_ '%#quote-syntax void)
           (table-set! _tbl15200_ '%#call gxc#collect-operands)
           (table-set! _tbl15200_ '%#if gxc#collect-operands)
           (table-set! _tbl15200_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl15200_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl15200_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl15200_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl15200_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl15200_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl15200_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl15200_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl15200_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl15200_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl15200_))))
    (define gxc#apply-collect-expression-refs
      (lambda (_stx15193_ . _args15195_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15193_ _args15195_))
         gxc#current-compile-methods
         (force gxc#&collect-expression-refs))))
    (define gxc#&generate-meta
      (make-promise
       (lambda ()
         (let ((_tbl15190_ (make-table 'test: eq?)))
           (hash-copy! _tbl15190_ (force gxc#&void-expression))
           (table-set! _tbl15190_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl15190_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl15190_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl15190_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl15190_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl15190_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl15190_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl15190_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl15190_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl15190_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl15190_ '%#begin-foreign void)
           (table-set! _tbl15190_ '%#declare void)
           _tbl15190_))))
    (define gxc#apply-generate-meta
      (lambda (_stx15183_ . _args15185_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15183_ _args15185_))
         gxc#current-compile-methods
         (force gxc#&generate-meta))))
    (define gxc#&generate-meta-phi
      (make-promise
       (lambda ()
         (let ((_tbl15180_ (make-table 'test: eq?)))
           (table-set! _tbl15180_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl15180_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl15180_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl15180_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl15180_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl15180_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15180_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15180_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15180_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15180_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15180_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15180_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl15180_ '%#declare void)
           _tbl15180_))))
    (define gxc#apply-generate-meta-phi
      (lambda (_stx15173_ . _args15175_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15173_ _args15175_))
         gxc#current-compile-methods
         (force gxc#&generate-meta-phi))))
    (define gxc#collect-begin%
      (lambda (_stx15130_ . _args15131_)
        (let* ((_g1513315143_
                (lambda (_g1513415140_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1513415140_)))
               (_g1513215170_
                (lambda (_g1513415146_)
                  (if (gx#stx-pair? _g1513415146_)
                      (let ((_e1513615148_ (gx#stx-e _g1513415146_)))
                        (let ((_hd1513715151_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1513615148_)))
                              (_tl1513815153_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1513615148_))))
                          ((lambda (_L15156_)
                             (for-each
                              (lambda (_g1516515167_)
                                (apply gxc#compile-e
                                       _g1516515167_
                                       _args15131_))
                              (gx#stx-e _L15156_)))
                           _tl1513815153_)))
                      (_g1513315143_ _g1513415146_)))))
          (_g1513215170_ _stx15130_))))
    (define gxc#collect-begin-syntax%
      (lambda (_stx15126_ . _args15127_)
        (call-with-parameters
         (lambda () (apply gxc#collect-begin% _stx15126_ _args15127_))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gxc#collect-module%
      (lambda (_stx15068_ . _args15069_)
        (let* ((_g1507115085_
                (lambda (_g1507215082_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1507215082_)))
               (_g1507015123_
                (lambda (_g1507215088_)
                  (if (gx#stx-pair? _g1507215088_)
                      (let ((_e1507515090_ (gx#stx-e _g1507215088_)))
                        (let ((_hd1507615093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1507515090_)))
                              (_tl1507715095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1507515090_))))
                          (if (gx#stx-pair? _tl1507715095_)
                              (let ((_e1507815098_ (gx#stx-e _tl1507715095_)))
                                (let ((_hd1507915101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1507815098_)))
                                      (_tl1508015103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1507815098_))))
                                  ((lambda (_L15106_ _L15107_)
                                     (let ((_ctx15120_
                                            (gx#syntax-local-e__0 _L15107_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (apply gxc#compile-e
                                                 (##structure-ref
                                                  _ctx15120_
                                                  '11
                                                  gx#module-context::t
                                                  '#f)
                                                 _args15069_))
                                        gx#current-expander-context
                                        _ctx15120_)))
                                   _tl1508015103_
                                   _hd1507915101_)))
                              (_g1507115085_ _g1507215088_))))
                      (_g1507115085_ _g1507215088_)))))
          (_g1507015123_ _stx15068_))))
    (define gxc#collect-begin-annotation%
      (lambda (_stx15000_ . _args15001_)
        (let* ((_g1500315020_
                (lambda (_g1500415017_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1500415017_)))
               (_g1500215065_
                (lambda (_g1500415023_)
                  (if (gx#stx-pair? _g1500415023_)
                      (let ((_e1500715025_ (gx#stx-e _g1500415023_)))
                        (let ((_hd1500815028_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1500715025_)))
                              (_tl1500915030_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1500715025_))))
                          (if (gx#stx-pair? _tl1500915030_)
                              (let ((_e1501015033_ (gx#stx-e _tl1500915030_)))
                                (let ((_hd1501115036_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1501015033_)))
                                      (_tl1501215038_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1501015033_))))
                                  (if (gx#stx-pair? _tl1501215038_)
                                      (let ((_e1501315041_
                                             (gx#stx-e _tl1501215038_)))
                                        (let ((_hd1501415044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1501315041_)))
                                              (_tl1501515046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1501315041_))))
                                          (if (gx#stx-null? _tl1501515046_)
                                              ((lambda (_L15049_ _L15050_)
                                                 (apply gxc#compile-e
                                                        _L15049_
                                                        _args15001_))
                                               _hd1501415044_
                                               _hd1501115036_)
                                              (_g1500315020_ _g1500415023_))))
                                      (_g1500315020_ _g1500415023_))))
                              (_g1500315020_ _g1500415023_))))
                      (_g1500315020_ _g1500415023_)))))
          (_g1500215065_ _stx15000_))))
    (define gxc#collect-define-values%
      (lambda (_stx14932_ . _args14933_)
        (let* ((_g1493514952_
                (lambda (_g1493614949_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1493614949_)))
               (_g1493414997_
                (lambda (_g1493614955_)
                  (if (gx#stx-pair? _g1493614955_)
                      (let ((_e1493914957_ (gx#stx-e _g1493614955_)))
                        (let ((_hd1494014960_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1493914957_)))
                              (_tl1494114962_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1493914957_))))
                          (if (gx#stx-pair? _tl1494114962_)
                              (let ((_e1494214965_ (gx#stx-e _tl1494114962_)))
                                (let ((_hd1494314968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1494214965_)))
                                      (_tl1494414970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1494214965_))))
                                  (if (gx#stx-pair? _tl1494414970_)
                                      (let ((_e1494514973_
                                             (gx#stx-e _tl1494414970_)))
                                        (let ((_hd1494614976_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1494514973_)))
                                              (_tl1494714978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1494514973_))))
                                          (if (gx#stx-null? _tl1494714978_)
                                              ((lambda (_L14981_ _L14982_)
                                                 (apply gxc#compile-e
                                                        _L14981_
                                                        _args14933_))
                                               _hd1494614976_
                                               _hd1494314968_)
                                              (_g1493514952_ _g1493614955_))))
                                      (_g1493514952_ _g1493614955_))))
                              (_g1493514952_ _g1493614955_))))
                      (_g1493514952_ _g1493614955_)))))
          (_g1493414997_ _stx14932_))))
    (define gxc#collect-define-syntax%
      (lambda (_stx14863_ . _args14864_)
        (let* ((_g1486614883_
                (lambda (_g1486714880_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1486714880_)))
               (_g1486514929_
                (lambda (_g1486714886_)
                  (if (gx#stx-pair? _g1486714886_)
                      (let ((_e1487014888_ (gx#stx-e _g1486714886_)))
                        (let ((_hd1487114891_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1487014888_)))
                              (_tl1487214893_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1487014888_))))
                          (if (gx#stx-pair? _tl1487214893_)
                              (let ((_e1487314896_ (gx#stx-e _tl1487214893_)))
                                (let ((_hd1487414899_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1487314896_)))
                                      (_tl1487514901_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1487314896_))))
                                  (if (gx#stx-pair? _tl1487514901_)
                                      (let ((_e1487614904_
                                             (gx#stx-e _tl1487514901_)))
                                        (let ((_hd1487714907_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1487614904_)))
                                              (_tl1487814909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1487614904_))))
                                          (if (gx#stx-null? _tl1487814909_)
                                              ((lambda (_L14912_ _L14913_)
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (apply gxc#compile-e
                                                           _L14912_
                                                           _args14864_))
                                                  gx#current-expander-phi
                                                  (fx+ (gx#current-expander-phi)
                                                       '1)))
                                               _hd1487714907_
                                               _hd1487414899_)
                                              (_g1486614883_ _g1486714886_))))
                                      (_g1486614883_ _g1486714886_))))
                              (_g1486614883_ _g1486714886_))))
                      (_g1486614883_ _g1486714886_)))))
          (_g1486514929_ _stx14863_))))
    (define gxc#collect-body-lambda%
      (lambda (_stx14795_ . _args14796_)
        (let* ((_g1479814815_
                (lambda (_g1479914812_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1479914812_)))
               (_g1479714860_
                (lambda (_g1479914818_)
                  (if (gx#stx-pair? _g1479914818_)
                      (let ((_e1480214820_ (gx#stx-e _g1479914818_)))
                        (let ((_hd1480314823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1480214820_)))
                              (_tl1480414825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1480214820_))))
                          (if (gx#stx-pair? _tl1480414825_)
                              (let ((_e1480514828_ (gx#stx-e _tl1480414825_)))
                                (let ((_hd1480614831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1480514828_)))
                                      (_tl1480714833_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1480514828_))))
                                  (if (gx#stx-pair? _tl1480714833_)
                                      (let ((_e1480814836_
                                             (gx#stx-e _tl1480714833_)))
                                        (let ((_hd1480914839_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1480814836_)))
                                              (_tl1481014841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1480814836_))))
                                          (if (gx#stx-null? _tl1481014841_)
                                              ((lambda (_L14844_ _L14845_)
                                                 (apply gxc#compile-e
                                                        _L14844_
                                                        _args14796_))
                                               _hd1480914839_
                                               _hd1480614831_)
                                              (_g1479814815_ _g1479914818_))))
                                      (_g1479814815_ _g1479914818_))))
                              (_g1479814815_ _g1479914818_))))
                      (_g1479814815_ _g1479914818_)))))
          (_g1479714860_ _stx14795_))))
    (define gxc#collect-body-case-lambda%
      (lambda (_stx14677_ . _args14678_)
        (let* ((_g1468014708_
                (lambda (_g1468114705_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1468114705_)))
               (_g1467914792_
                (lambda (_g1468114711_)
                  (if (gx#stx-pair? _g1468114711_)
                      (let ((_e1468414713_ (gx#stx-e _g1468114711_)))
                        (let ((_hd1468514716_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1468414713_)))
                              (_tl1468614718_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1468414713_))))
                          (if (gx#stx-pair/null? _tl1468614718_)
                              (let ((_g16669_
                                     (gx#syntax-split-splice
                                      _tl1468614718_
                                      '0)))
                                (begin
                                  (let ((_g16670_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g16669_)
                                               (##vector-length _g16669_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g16670_ 2)))
                                        (error "Context expects 2 values"
                                               _g16670_)))
                                  (let ((_target1468714721_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16669_ 0)))
                                        (_tl1468914723_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16669_ 1))))
                                    (if (gx#stx-null? _tl1468914723_)
                                        (letrec ((_loop1469014726_
                                                  (lambda (_hd1468814729_
                                                           _body1469414731_
                                                           _hd1469514733_)
                                                    (if (gx#stx-pair?
                                                         _hd1468814729_)
                                                        (let ((_e1469114736_
                                                               (gx#stx-e
                                                                _hd1468814729_)))
                                                          (let ((_lp-hd1469214739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1469114736_)))
                        (_lp-tl1469314741_
                         (let () (declare (not safe)) (##cdr _e1469114736_))))
                    (if (gx#stx-pair? _lp-hd1469214739_)
                        (let ((_e1469814744_ (gx#stx-e _lp-hd1469214739_)))
                          (let ((_hd1469914747_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1469814744_)))
                                (_tl1470014749_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1469814744_))))
                            (if (gx#stx-pair? _tl1470014749_)
                                (let ((_e1470114752_
                                       (gx#stx-e _tl1470014749_)))
                                  (let ((_hd1470214755_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1470114752_)))
                                        (_tl1470314757_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1470114752_))))
                                    (if (gx#stx-null? _tl1470314757_)
                                        (_loop1469014726_
                                         _lp-tl1469314741_
                                         (cons _hd1470214755_ _body1469414731_)
                                         (cons _hd1469914747_ _hd1469514733_))
                                        (_g1468014708_ _g1468114711_))))
                                (_g1468014708_ _g1468114711_))))
                        (_g1468014708_ _g1468114711_))))
                (let ((_body1469614760_ (reverse _body1469414731_))
                      (_hd1469714762_ (reverse _hd1469514733_)))
                  ((lambda (_L14765_ _L14766_)
                     (for-each
                      (lambda (_g1478014782_)
                        (apply gxc#compile-e _g1478014782_ _args14678_))
                      (foldr1 (lambda (_g1478414787_ _g1478514789_)
                                (cons _g1478414787_ _g1478514789_))
                              '()
                              _L14765_)))
                   _body1469614760_
                   _hd1469714762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1469014726_
                                           _target1468714721_
                                           '()
                                           '()))
                                        (_g1468014708_ _g1468114711_)))))
                              (_g1468014708_ _g1468114711_))))
                      (_g1468014708_ _g1468114711_)))))
          (_g1467914792_ _stx14677_))))
    (define gxc#collect-body-let-values%
      (lambda (_stx14530_ . _args14531_)
        (let* ((_g1453314568_
                (lambda (_g1453414565_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1453414565_)))
               (_g1453214674_
                (lambda (_g1453414571_)
                  (if (gx#stx-pair? _g1453414571_)
                      (let ((_e1453814573_ (gx#stx-e _g1453414571_)))
                        (let ((_hd1453914576_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1453814573_)))
                              (_tl1454014578_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1453814573_))))
                          (if (gx#stx-pair? _tl1454014578_)
                              (let ((_e1454114581_ (gx#stx-e _tl1454014578_)))
                                (let ((_hd1454214584_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1454114581_)))
                                      (_tl1454314586_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1454114581_))))
                                  (if (gx#stx-pair/null? _hd1454214584_)
                                      (let ((_g16671_
                                             (gx#syntax-split-splice
                                              _hd1454214584_
                                              '0)))
                                        (begin
                                          (let ((_g16672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g16671_)
                                                       (##vector-length
                                                        _g16671_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g16672_ 2)))
                                                (error "Context expects 2 values"
                                                       _g16672_)))
                                          (let ((_target1454414589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g16671_ 0)))
                                                (_tl1454614591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g16671_ 1))))
                                            (if (gx#stx-null? _tl1454614591_)
                                                (letrec ((_loop1454714594_
                                                          (lambda (_hd1454514597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1455114599_
                           _hd1455214601_)
                    (if (gx#stx-pair? _hd1454514597_)
                        (let ((_e1454814604_ (gx#stx-e _hd1454514597_)))
                          (let ((_lp-hd1454914607_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1454814604_)))
                                (_lp-tl1455014609_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1454814604_))))
                            (if (gx#stx-pair? _lp-hd1454914607_)
                                (let ((_e1455514612_
                                       (gx#stx-e _lp-hd1454914607_)))
                                  (let ((_hd1455614615_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1455514612_)))
                                        (_tl1455714617_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1455514612_))))
                                    (if (gx#stx-pair? _tl1455714617_)
                                        (let ((_e1455814620_
                                               (gx#stx-e _tl1455714617_)))
                                          (let ((_hd1455914623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1455814620_)))
                                                (_tl1456014625_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1455814620_))))
                                            (if (gx#stx-null? _tl1456014625_)
                                                (_loop1454714594_
                                                 _lp-tl1455014609_
                                                 (cons _hd1455914623_
                                                       _expr1455114599_)
                                                 (cons _hd1455614615_
                                                       _hd1455214601_))
                                                (_g1453314568_
                                                 _g1453414571_))))
                                        (_g1453314568_ _g1453414571_))))
                                (_g1453314568_ _g1453414571_))))
                        (let ((_expr1455314628_ (reverse _expr1455114599_))
                              (_hd1455414630_ (reverse _hd1455214601_)))
                          (if (gx#stx-pair? _tl1454314586_)
                              (let ((_e1456114633_ (gx#stx-e _tl1454314586_)))
                                (let ((_hd1456214636_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1456114633_)))
                                      (_tl1456314638_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1456114633_))))
                                  (if (gx#stx-null? _tl1456314638_)
                                      ((lambda (_L14641_ _L14642_ _L14643_)
                                         (for-each
                                          (lambda (_g1466214664_)
                                            (apply gxc#compile-e
                                                   _g1466214664_
                                                   _args14531_))
                                          (foldr1 (lambda (_g1466614669_
                                                           _g1466714671_)
                                                    (cons _g1466614669_
                                                          _g1466714671_))
                                                  (cons _L14641_ '())
                                                  _L14642_)))
                                       _hd1456214636_
                                       _expr1455314628_
                                       _hd1455414630_)
                                      (_g1453314568_ _g1453414571_))))
                              (_g1453314568_ _g1453414571_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1454714594_
                                                   _target1454414589_
                                                   '()
                                                   '()))
                                                (_g1453314568_
                                                 _g1453414571_)))))
                                      (_g1453314568_ _g1453414571_))))
                              (_g1453314568_ _g1453414571_))))
                      (_g1453314568_ _g1453414571_)))))
          (_g1453214674_ _stx14530_))))
    (define gxc#collect-body-setq%
      (lambda (_stx14462_ . _args14463_)
        (let* ((_g1446514482_
                (lambda (_g1446614479_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1446614479_)))
               (_g1446414527_
                (lambda (_g1446614485_)
                  (if (gx#stx-pair? _g1446614485_)
                      (let ((_e1446914487_ (gx#stx-e _g1446614485_)))
                        (let ((_hd1447014490_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1446914487_)))
                              (_tl1447114492_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1446914487_))))
                          (if (gx#stx-pair? _tl1447114492_)
                              (let ((_e1447214495_ (gx#stx-e _tl1447114492_)))
                                (let ((_hd1447314498_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1447214495_)))
                                      (_tl1447414500_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1447214495_))))
                                  (if (gx#stx-pair? _tl1447414500_)
                                      (let ((_e1447514503_
                                             (gx#stx-e _tl1447414500_)))
                                        (let ((_hd1447614506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1447514503_)))
                                              (_tl1447714508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1447514503_))))
                                          (if (gx#stx-null? _tl1447714508_)
                                              ((lambda (_L14511_ _L14512_)
                                                 (apply gxc#compile-e
                                                        _L14511_
                                                        _args14463_))
                                               _hd1447614506_
                                               _hd1447314498_)
                                              (_g1446514482_ _g1446614485_))))
                                      (_g1446514482_ _g1446614485_))))
                              (_g1446514482_ _g1446614485_))))
                      (_g1446514482_ _g1446614485_)))))
          (_g1446414527_ _stx14462_))))
    (define gxc#collect-operands
      (lambda (_stx14375_ . _args14376_)
        (let* ((_g1437814397_
                (lambda (_g1437914394_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1437914394_)))
               (_g1437714459_
                (lambda (_g1437914400_)
                  (if (gx#stx-pair? _g1437914400_)
                      (let ((_e1438114402_ (gx#stx-e _g1437914400_)))
                        (let ((_hd1438214405_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1438114402_)))
                              (_tl1438314407_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1438114402_))))
                          (if (gx#stx-pair/null? _tl1438314407_)
                              (let ((_g16673_
                                     (gx#syntax-split-splice
                                      _tl1438314407_
                                      '0)))
                                (begin
                                  (let ((_g16674_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g16673_)
                                               (##vector-length _g16673_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g16674_ 2)))
                                        (error "Context expects 2 values"
                                               _g16674_)))
                                  (let ((_target1438414410_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16673_ 0)))
                                        (_tl1438614412_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16673_ 1))))
                                    (if (gx#stx-null? _tl1438614412_)
                                        (letrec ((_loop1438714415_
                                                  (lambda (_hd1438514418_
                                                           _rands1439114420_)
                                                    (if (gx#stx-pair?
                                                         _hd1438514418_)
                                                        (let ((_e1438814423_
                                                               (gx#stx-e
                                                                _hd1438514418_)))
                                                          (let ((_lp-hd1438914426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1438814423_)))
                        (_lp-tl1439014428_
                         (let () (declare (not safe)) (##cdr _e1438814423_))))
                    (_loop1438714415_
                     _lp-tl1439014428_
                     (cons _lp-hd1438914426_ _rands1439114420_))))
                (let ((_rands1439214431_ (reverse _rands1439114420_)))
                  ((lambda (_L14434_)
                     (for-each
                      (lambda (_g1444714449_)
                        (apply gxc#compile-e _g1444714449_ _args14376_))
                      (foldr1 (lambda (_g1445114454_ _g1445214456_)
                                (cons _g1445114454_ _g1445214456_))
                              '()
                              _L14434_)))
                   _rands1439214431_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1438714415_
                                           _target1438414410_
                                           '()))
                                        (_g1437814397_ _g1437914400_)))))
                              (_g1437814397_ _g1437914400_))))
                      (_g1437814397_ _g1437914400_)))))
          (_g1437714459_ _stx14375_))))
    (define gxc#collect-bindings-define-values%
      (lambda (_stx14306_)
        (let* ((_g1430814325_
                (lambda (_g1430914322_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1430914322_)))
               (_g1430714372_
                (lambda (_g1430914328_)
                  (if (gx#stx-pair? _g1430914328_)
                      (let ((_e1431214330_ (gx#stx-e _g1430914328_)))
                        (let ((_hd1431314333_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1431214330_)))
                              (_tl1431414335_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1431214330_))))
                          (if (gx#stx-pair? _tl1431414335_)
                              (let ((_e1431514338_ (gx#stx-e _tl1431414335_)))
                                (let ((_hd1431614341_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1431514338_)))
                                      (_tl1431714343_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1431514338_))))
                                  (if (gx#stx-pair? _tl1431714343_)
                                      (let ((_e1431814346_
                                             (gx#stx-e _tl1431714343_)))
                                        (let ((_hd1431914349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1431814346_)))
                                              (_tl1432014351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1431814346_))))
                                          (if (gx#stx-null? _tl1432014351_)
                                              ((lambda (_L14354_ _L14355_)
                                                 (gx#stx-for-each1
                                                  (lambda (_bind14370_)
                                                    (if (gx#identifier?
                                                         _bind14370_)
                                                        (gxc#add-module-binding!
                                                         _bind14370_
                                                         '#f)
                                                        '#!void))
                                                  _L14355_))
                                               _hd1431914349_
                                               _hd1431614341_)
                                              (_g1430814325_ _g1430914328_))))
                                      (_g1430814325_ _g1430914328_))))
                              (_g1430814325_ _g1430914328_))))
                      (_g1430814325_ _g1430914328_)))))
          (_g1430714372_ _stx14306_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_stx14239_)
        (let* ((_g1424114258_
                (lambda (_g1424214255_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1424214255_)))
               (_g1424014303_
                (lambda (_g1424214261_)
                  (if (gx#stx-pair? _g1424214261_)
                      (let ((_e1424514263_ (gx#stx-e _g1424214261_)))
                        (let ((_hd1424614266_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1424514263_)))
                              (_tl1424714268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1424514263_))))
                          (if (gx#stx-pair? _tl1424714268_)
                              (let ((_e1424814271_ (gx#stx-e _tl1424714268_)))
                                (let ((_hd1424914274_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1424814271_)))
                                      (_tl1425014276_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1424814271_))))
                                  (if (gx#stx-pair? _tl1425014276_)
                                      (let ((_e1425114279_
                                             (gx#stx-e _tl1425014276_)))
                                        (let ((_hd1425214282_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1425114279_)))
                                              (_tl1425314284_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1425114279_))))
                                          (if (gx#stx-null? _tl1425314284_)
                                              ((lambda (_L14287_ _L14288_)
                                                 (gxc#add-module-binding!
                                                  _L14288_
                                                  '#t))
                                               _hd1425214282_
                                               _hd1424914274_)
                                              (_g1424114258_ _g1424214261_))))
                                      (_g1424114258_ _g1424214261_))))
                              (_g1424114258_ _g1424214261_))))
                      (_g1424114258_ _g1424214261_)))))
          (_g1424014303_ _stx14239_))))
    (define gxc#lift-modules-module%
      (lambda (_stx14181_ _modules14182_)
        (let* ((_g1418414198_
                (lambda (_g1418514195_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1418514195_)))
               (_g1418314236_
                (lambda (_g1418514201_)
                  (if (gx#stx-pair? _g1418514201_)
                      (let ((_e1418814203_ (gx#stx-e _g1418514201_)))
                        (let ((_hd1418914206_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1418814203_)))
                              (_tl1419014208_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1418814203_))))
                          (if (gx#stx-pair? _tl1419014208_)
                              (let ((_e1419114211_ (gx#stx-e _tl1419014208_)))
                                (let ((_hd1419214214_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1419114211_)))
                                      (_tl1419314216_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1419114211_))))
                                  ((lambda (_L14219_ _L14220_)
                                     (let ((_ctx14233_
                                            (gx#syntax-local-e__0 _L14220_)))
                                       (set-box!
                                        _modules14182_
                                        (cons _ctx14233_
                                              (unbox _modules14182_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx14233_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules14182_))
                                        gx#current-expander-context
                                        _ctx14233_)))
                                   _tl1419314216_
                                   _hd1419214214_)))
                              (_g1418414198_ _g1418514201_))))
                      (_g1418414198_ _g1418514201_)))))
          (_g1418314236_ _stx14181_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls1413714139_ (gxc#current-compile-decls)))
          (if _decls1413714139_
              (let ((_decls14142_ _decls1413714139_))
                (let _lp14144_ ((_rest14146_ _decls14142_))
                  (let* ((_rest1414714155_ _rest14146_)
                         (_else1414914163_ (lambda () '#f))
                         (_K1415114169_
                          (lambda (_decls14166_ _decl14167_)
                            (if (equal? _decl14167_ '(not safe))
                                '#t
                                (if (equal? _decl14167_ '(safe))
                                    '#f
                                    (_lp14144_ _decls14166_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1414714155_))
                        (let ((_hd1415214172_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1414714155_)))
                              (_tl1415314174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1414714155_))))
                          (let* ((_decl14177_ _hd1415214172_)
                                 (_decls14179_ _tl1415314174_))
                            (_K1415114169_ _decls14179_ _decl14177_)))
                        (_else1414914163_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id14131_ _syntax?14132_)
        (let ((_eid14134_
               (##structure-ref
                (gx#resolve-identifier__0 _id14131_)
                '1
                gx#binding::t
                '#f))
              (_ht14135_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid14134_)
              '#!void
              (table-set!
               _ht14135_
               _eid14134_
               (gx#make-binding-id__1
                (gxc#generate-runtime-gensym-reference__0 _eid14134_)
                _syntax?14132_))))))
    (define gxc#runtime-identifier=?
      (lambda (_id114124_ _id214125_)
        (letrec ((_symbol-e14127_
                  (lambda (_id14129_)
                    (if (symbol? _id14129_)
                        _id14129_
                        (gxc#generate-runtime-binding-id _id14129_)))))
          (eq? (_symbol-e14127_ _id114124_) (_symbol-e14127_ _id214125_)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id14102_)
        (let ((_$e14104_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id14102_
                      'gx#syntax-quote::t))
                   (gx#resolve-identifier__0 _id14102_)
                   '#f)))
          (if _$e14104_
              ((lambda (_bind14107_)
                 (let ((_eid14109_
                        (##structure-ref _bind14107_ '1 gx#binding::t '#f))
                       (_ht14110_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid14109_)
                       _eid14109_
                       (let ((_$e14112_ (table-ref _ht14110_ _eid14109_ '#f)))
                         (if _$e14112_
                             (values _$e14112_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind14107_
                                    'gx#local-binding::t))
                                 (let ((_gid14115_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _eid14109_)))
                                   (table-set! _ht14110_ _eid14109_ _gid14115_)
                                   _gid14115_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind14107_
                                        'gx#module-binding::t))
                                     (let ((_gid14122_
                                            (let ((_$e14117_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind14107_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e14117_
                                                  ((lambda (_ns14120_)
                                                     (make-symbol
                                                      _ns14120_
                                                      '"#"
                                                      _eid14109_))
                                                   _$e14117_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _eid14109_)))))
                                       (table-set!
                                        _ht14110_
                                        _eid14109_
                                        _gid14122_)
                                       _gid14122_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _id14102_
                                      _eid14109_
                                      _bind14107_))))))))
               _$e14104_)
              (if (interned-symbol? (gx#stx-e _id14102_))
                  (gx#stx-e _id14102_)
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _id14102_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id14100_)
        (if (gx#identifier? _id14100_)
            (gxc#generate-runtime-binding-id _id14100_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym14080_ _quote?14081_)
        (let* ((_ht14083_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e14085_ (table-ref _ht14083_ _sym14080_ '#f)))
          (if _$e14085_
              (values _$e14085_)
              (let ((_g14088_
                     (if _quote?14081_
                         (make-symbol
                          '"__"
                          _sym14080_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym14080_ '"_"))))
                (table-set! _ht14083_ _sym14080_ _g14088_)
                _g14088_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym14093_)
        (let ((_quote?14095_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _sym14093_
           _quote?14095_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g16676_
        (let ((_g16675_ (let () (declare (not safe)) (##length _g16676_))))
          (cond ((let () (declare (not safe)) (##fx= _g16675_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g16676_))
                ((let () (declare (not safe)) (##fx= _g16675_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g16676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g16676_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id14077_)
        (gxc#generate-runtime-identifier-key
         (gx#core-identifier-key _id14077_))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key14037_)
        (if (interned-symbol? _key14037_)
            _key14037_
            (if (uninterned-symbol? _key14037_)
                (gxc#generate-runtime-gensym-reference__0 _key14037_)
                (let* ((_key1403814045_ _key14037_)
                       (_E1404014049_
                        (lambda ()
                          (error '"No clause matching" _key1403814045_)))
                       (_K1404114065_
                        (lambda (_mark14052_ _eid14053_)
                          (let ((_$e14055_
                                 (##structure-ref
                                  _mark14052_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e14055_
                                ((lambda (_ht14058_)
                                   (let ((_$e14060_
                                          (table-ref
                                           _ht14058_
                                           _eid14053_
                                           '#f)))
                                     (if _$e14060_
                                         ((lambda (_id14063_)
                                            (if (interned-symbol? _id14063_)
                                                _id14063_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _id14063_)))
                                          _$e14060_)
                                         (gxc#generate-runtime-identifier-key
                                          _eid14053_))))
                                 _$e14055_)
                                (gxc#generate-runtime-identifier-key
                                 _eid14053_))))))
                  (if (let () (declare (not safe)) (##pair? _key1403814045_))
                      (let ((_hd1404214068_
                             (let ()
                               (declare (not safe))
                               (##car _key1403814045_)))
                            (_tl1404314070_
                             (let ()
                               (declare (not safe))
                               (##cdr _key1403814045_))))
                        (let* ((_eid14073_ _hd1404214068_)
                               (_mark14075_ _tl1404314070_))
                          (_K1404114065_ _mark14075_ _eid14073_)))
                      (_E1404014049_)))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top14024_)
        (if _top14024_
            (let ((_ns14026_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi14027_ (gx#current-expander-phi)))
              (if _ns14026_
                  (if (fxpositive? _phi14027_)
                      (make-symbol
                       _ns14026_
                       '"["
                       (number->string _phi14027_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol _ns14026_ '"#_" (gensym) '"_"))
                  (if (fxpositive? _phi14027_)
                      (make-symbol
                       '"["
                       (number->string _phi14027_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol '"_" (gensym) '"_"))))
            (make-symbol '"_" (gensym) '"_"))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top14033_ '#f))
          (gxc#generate-runtime-temporary__% _top14033_))))
    (define gxc#generate-runtime-temporary
      (lambda _g16678_
        (let ((_g16677_ (let () (declare (not safe)) (##length _g16678_))))
          (cond ((let () (declare (not safe)) (##fx= _g16677_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g16678_))
                ((let () (declare (not safe)) (##fx= _g16677_ 1))
                 (apply gxc#generate-runtime-temporary__% _g16678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g16678_))))))
    (define gxc#generate-runtime-empty (lambda (_stx14021_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_stx13873_)
        (letrec ((_simplify13875_
                  (lambda (_body13919_)
                    (let _lp13921_ ((_rest13923_ _body13919_) (_r13924_ '()))
                      (let* ((_rest1392513933_ _rest13923_)
                             (_else1392713941_ (lambda () (reverse _r13924_)))
                             (_K1392914009_
                              (lambda (_rest13944_ _hd13945_)
                                (let* ((_hd1394613962_ _hd13945_)
                                       (_else1395013970_
                                        (lambda ()
                                          (_lp13921_
                                           _rest13944_
                                           (cons _hd13945_ _r13924_)))))
                                  (let ((_K1395813999_
                                         (lambda (_exprs13997_)
                                           (_lp13921_
                                            (foldr1 cons
                                                    _rest13944_
                                                    _exprs13997_)
                                            _r13924_)))
                                        (_K1395313983_
                                         (lambda ()
                                           (if (null? _rest13944_)
                                               (_lp13921_
                                                _rest13944_
                                                (cons _hd13945_ _r13924_))
                                               (_lp13921_
                                                _rest13944_
                                                _r13924_))))
                                        (_K1395213975_
                                         (lambda ()
                                           (if (null? _rest13944_)
                                               (_lp13921_
                                                _rest13944_
                                                (cons _hd13945_ _r13924_))
                                               (_lp13921_
                                                _rest13944_
                                                _r13924_)))))
                                    (let ((_try-match1394913978_
                                           (lambda ()
                                             (if (symbol? _hd1394613962_)
                                                 (_K1395213975_)
                                                 (_else1395013970_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1394613962_))
                                          (let ((_tl1396014004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1394613962_)))
                                                (_hd1395914002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1394613962_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1395914002_
                                                         'begin))
                                                (let ((_exprs14007_
                                                       _tl1396014004_))
                                                  (_K1395813999_ _exprs14007_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd1395914002_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1396014004_))
                                                        (let ((_tl1395713991_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1396014004_))))
                  (if (let () (declare (not safe)) (##null? _tl1395713991_))
                      (_K1395313983_)
                      (_try-match1394913978_)))
                (_try-match1394913978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_try-match1394913978_))))
                                          (_try-match1394913978_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1392513933_))
                            (let ((_hd1393014012_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1392513933_)))
                                  (_tl1393114014_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1392513933_))))
                              (let* ((_hd14017_ _hd1393014012_)
                                     (_rest14019_ _tl1393114014_))
                                (_K1392914009_ _rest14019_ _hd14017_)))
                            (_else1392713941_)))))))
          (let* ((_g1387713887_
                  (lambda (_g1387813884_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1387813884_)))
                 (_g1387613916_
                  (lambda (_g1387813890_)
                    (if (gx#stx-pair? _g1387813890_)
                        (let ((_e1388013892_ (gx#stx-e _g1387813890_)))
                          (let ((_hd1388113895_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1388013892_)))
                                (_tl1388213897_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1388013892_))))
                            ((lambda (_L13900_)
                               (let* ((_body13911_
                                       (map gxc#compile-e _L13900_))
                                      (_body13913_
                                       (_simplify13875_ _body13911_)))
                                 (if (fx= (length _body13913_) '1)
                                     (car _body13913_)
                                     (cons 'begin _body13913_))))
                             _tl1388213897_)))
                        (_g1387713887_ _g1387813890_)))))
            (_g1387613916_ _stx13873_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_stx13835_)
        (let* ((_g1383713847_
                (lambda (_g1383813844_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1383813844_)))
               (_g1383613870_
                (lambda (_g1383813850_)
                  (if (gx#stx-pair? _g1383813850_)
                      (let ((_e1384013852_ (gx#stx-e _g1383813850_)))
                        (let ((_hd1384113855_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1384013852_)))
                              (_tl1384213857_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1384013852_))))
                          ((lambda (_L13860_)
                             (cons 'begin (gx#syntax->datum _L13860_)))
                           _tl1384213857_)))
                      (_g1383713847_ _g1383813850_)))))
          (_g1383613870_ _stx13835_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_stx13709_)
        (let* ((___stx1547715478_ _stx13709_)
               (_g1371213740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1547715478_))))
          (let ((___kont1547915480_
                 (lambda (_L13817_ _L13818_) (gxc#compile-e _L13817_)))
                (___kont1548115482_
                 (lambda (_L13769_ _L13770_)
                   (let ((_decls13785_ (map gx#syntax->datum _L13770_)))
                     (call-with-parameters
                      (lambda ()
                        (cons 'begin
                              (cons (cons 'declare _decls13785_)
                                    (cons (gxc#compile-e _L13769_) '()))))
                      gxc#current-compile-decls
                      (foldr1 cons
                              (gxc#current-compile-decls)
                              _decls13785_))))))
            (let ((___match1550215503_
                   (lambda (_e1371613793_
                            _hd1371713796_
                            _tl1371813798_
                            _e1371913801_
                            _hd1372013804_
                            _tl1372113806_
                            _e1372213809_
                            _hd1372313812_
                            _tl1372413814_)
                     (let ((_L13817_ _hd1372313812_) (_L13818_ _hd1372013804_))
                       (if (gx#identifier? _L13818_)
                           (___kont1547915480_ _L13817_ _L13818_)
                           (___kont1548115482_
                            _hd1372313812_
                            _hd1372013804_))))))
              (if (gx#stx-pair? ___stx1547715478_)
                  (let ((_e1371613793_ (gx#stx-e ___stx1547715478_)))
                    (let ((_tl1371813798_
                           (let () (declare (not safe)) (##cdr _e1371613793_)))
                          (_hd1371713796_
                           (let ()
                             (declare (not safe))
                             (##car _e1371613793_))))
                      (if (gx#stx-pair? _tl1371813798_)
                          (let ((_e1371913801_ (gx#stx-e _tl1371813798_)))
                            (let ((_tl1372113806_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1371913801_)))
                                  (_hd1372013804_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1371913801_))))
                              (if (gx#stx-pair? _tl1372113806_)
                                  (let ((_e1372213809_
                                         (gx#stx-e _tl1372113806_)))
                                    (let ((_tl1372413814_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1372213809_)))
                                          (_hd1372313812_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1372213809_))))
                                      (if (gx#stx-null? _tl1372413814_)
                                          (___match1550215503_
                                           _e1371613793_
                                           _hd1371713796_
                                           _tl1371813798_
                                           _e1371913801_
                                           _hd1372013804_
                                           _tl1372113806_
                                           _e1372213809_
                                           _hd1372313812_
                                           _tl1372413814_)
                                          (_g1371213740_))))
                                  (_g1371213740_))))
                          (_g1371213740_))))
                  (_g1371213740_)))))))
    (define gxc#generate-runtime-declare%
      (lambda (_stx13669_)
        (let* ((_g1367113681_
                (lambda (_g1367213678_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1367213678_)))
               (_g1367013706_
                (lambda (_g1367213684_)
                  (if (gx#stx-pair? _g1367213684_)
                      (let ((_e1367413686_ (gx#stx-e _g1367213684_)))
                        (let ((_hd1367513689_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1367413686_)))
                              (_tl1367613691_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1367413686_))))
                          ((lambda (_L13694_)
                             (let ((_decls13704_
                                    (map gx#syntax->datum _L13694_)))
                               (gxc#current-compile-decls
                                (foldr1 cons
                                        (gxc#current-compile-decls)
                                        _decls13704_))
                               (cons 'declare _decls13704_)))
                           _tl1367613691_)))
                      (_g1367113681_ _g1367213684_)))))
          (_g1367013706_ _stx13669_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_stx13416_)
        (let* ((_g1341813435_
                (lambda (_g1341913432_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1341913432_)))
               (_g1341713666_
                (lambda (_g1341913438_)
                  (if (gx#stx-pair? _g1341913438_)
                      (let ((_e1342213440_ (gx#stx-e _g1341913438_)))
                        (let ((_hd1342313443_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1342213440_)))
                              (_tl1342413445_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1342213440_))))
                          (if (gx#stx-pair? _tl1342413445_)
                              (let ((_e1342513448_ (gx#stx-e _tl1342413445_)))
                                (let ((_hd1342613451_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1342513448_)))
                                      (_tl1342713453_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1342513448_))))
                                  (if (gx#stx-pair? _tl1342713453_)
                                      (let ((_e1342813456_
                                             (gx#stx-e _tl1342713453_)))
                                        (let ((_hd1342913459_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1342813456_)))
                                              (_tl1343013461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1342813456_))))
                                          (if (gx#stx-null? _tl1343013461_)
                                              ((lambda (_L13464_ _L13465_)
                                                 (let* ((___stx1555515556_
                                                         _L13465_)
                                                        (_g1348213496_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            ___stx1555515556_))))
                                                   (let ((___kont1555715558_
                                                          (lambda ()
                                                            (gxc#compile-e
                                                             _L13464_)))
                                                         (___kont1555915560_
                                                          (lambda (_L13628_)
                                                            (let ((_eid13637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#generate-runtime-binding-id _L13628_)))
                      (let ((_lambda-expr1363813640_
                             (gxc#apply-find-lambda-expression _L13464_)))
                        (if _lambda-expr1363813640_
                            (let ((_lambda-expr13643_ _lambda-expr1363813640_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr13643_
                               _eid13637_))
                            '#f))
                      (cons 'define
                            (cons _eid13637_
                                  (cons (gxc#compile-e _L13464_) '()))))))
                 (___kont1556115562_
                  (lambda ()
                    (let* ((_tmp13503_ (gxc#generate-runtime-temporary__% '#t))
                           (_body13612_
                            (let _lp13505_ ((_rest13507_ _L13465_)
                                            (_k13508_ '0)
                                            (_r13509_ '()))
                              (let* ((___stx1552515526_ _rest13507_)
                                     (_g1351413531_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1552515526_))))
                                (let ((___kont1552715528_
                                       (lambda (_L13599_)
                                         (_lp13505_
                                          _L13599_
                                          (fx+ _k13508_ '1)
                                          _r13509_)))
                                      (___kont1552915530_
                                       (lambda (_L13572_ _L13573_)
                                         (_lp13505_
                                          _L13572_
                                          (fx+ _k13508_ '1)
                                          (cons (cons 'define
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L13573_)
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tmp13503_
                           _k13508_
                           _L13572_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _r13509_))))
                                      (___kont1553115532_
                                       (lambda (_L13543_)
                                         (foldl1 cons
                                                 (cons (cons 'define
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L13543_)
                           (cons (gxc#generate-runtime-values->list
                                  _tmp13503_
                                  _k13508_)
                                 '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r13509_)))
                                      (___kont1553315534_
                                       (lambda () (reverse _r13509_))))
                                  (let ((_g1351213559_
                                         (lambda ()
                                           (let ((_L13543_ ___stx1552515526_))
                                             (if (gx#identifier? _L13543_)
                                                 (___kont1553115532_ _L13543_)
                                                 (___kont1553315534_))))))
                                    (if (gx#stx-pair? ___stx1552515526_)
                                        (let ((_e1351713588_
                                               (gx#stx-e ___stx1552515526_)))
                                          (let ((_tl1351913593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1351713588_)))
                                                (_hd1351813591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1351713588_))))
                                            (if (gx#stx-datum? _hd1351813591_)
                                                (let ((_e1352013596_
                                                       (gx#stx-e
                                                        _hd1351813591_)))
                                                  (if (equal? _e1352013596_
                                                              '#f)
                                                      (___kont1552715528_
                                                       _tl1351913593_)
                                                      (___kont1552915530_
                                                       _tl1351913593_
                                                       _hd1351813591_)))
                                                (___kont1552915530_
                                                 _tl1351913593_
                                                 _hd1351813591_))))
                                        (_g1351213559_))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp13503_
                                              (cons (gxc#compile-e _L13464_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp13503_
                                         _L13465_
                                         _L13464_)
                                        _body13612_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair?
                                                          ___stx1555515556_)
                                                         (let ((_e1348413650_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___stx1555515556_)))
                   (let ((_tl1348613655_
                          (let () (declare (not safe)) (##cdr _e1348413650_)))
                         (_hd1348513653_
                          (let () (declare (not safe)) (##car _e1348413650_))))
                     (if (gx#stx-datum? _hd1348513653_)
                         (let ((_e1348713658_ (gx#stx-e _hd1348513653_)))
                           (if (equal? _e1348713658_ '#f)
                               (if (gx#stx-null? _tl1348613655_)
                                   (___kont1555715558_)
                                   (___kont1556115562_))
                               (if (gx#stx-null? _tl1348613655_)
                                   (___kont1555915560_ _hd1348513653_)
                                   (___kont1556115562_))))
                         (if (gx#stx-null? _tl1348613655_)
                             (___kont1555915560_ _hd1348513653_)
                             (___kont1556115562_)))))
                 (___kont1556115562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1342913459_
                                               _hd1342613451_)
                                              (_g1341813435_ _g1341913438_))))
                                      (_g1341813435_ _g1341913438_))))
                              (_g1341813435_ _g1341913438_))))
                      (_g1341813435_ _g1341913438_)))))
          (_g1341713666_ _stx13416_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals13392_ _hd13393_ _expr13394_)
        (let ((_$e13396_ (gxc#apply-count-values _expr13394_)))
          (if _$e13396_
              ((lambda (_count13399_)
                 (let ((_len13401_ (gx#stx-length _hd13393_))
                       (_cmp13402_ (if (gx#stx-list? _hd13393_) fx= fx>=)))
                   (if (or (fx= _len13401_ '0)
                           (_cmp13402_ _count13399_ _len13401_))
                       '#!void
                       (gxc#raise-compile-error
                        '"Value count mismatch"
                        _expr13394_
                        _hd13393_))))
               _$e13396_)
              (let* ((_len13407_ (gx#stx-length _hd13393_))
                     (_cmp13409_ (if (gx#stx-list? _hd13393_) '##fx= '##fx>=))
                     (_errmsg13411_
                      (string-append
                       (if (gx#stx-list? _hd13393_)
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len13407_)
                       '" values"))
                     (_count13413_ (gxc#generate-runtime-temporary__0)))
                (if (and (not (gx#stx-list? _hd13393_)) (fx= _len13407_ '0))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count13413_
                                            (cons (gxc#generate-runtime-values-count
                                                   _vals13392_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _cmp13409_
                                (cons _count13413_ (cons _len13407_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _cmp13409_
                                                        (cons _count13413_
                                                              (cons _len13407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg13411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count13413_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var13387_)
        (letrec ((_generate-inline13389_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _var13387_ '()))
                                (cons (cons '##vector-length
                                            (cons _var13387_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_generate-inline13389_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_generate-inline13389_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var13380_ _i13381_ _rest13382_)
        (letrec ((_generate-inline13384_
                  (lambda ()
                    (if (and (fx= _i13381_ '0)
                             (not (gx#stx-pair? _rest13382_)))
                        (cons 'if
                              (cons (cons '##values? (cons _var13380_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _var13380_
                                                      (cons '0 '())))
                                          (cons _var13380_ '()))))
                        (cons '##vector-ref
                              (cons _var13380_ (cons _i13381_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_generate-inline13384_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_generate-inline13384_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var13377_ _i13378_)
        (if (fx= _i13378_ '0)
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _var13377_ '()))
                            (cons (cons '##vector->list (cons _var13377_ '()))
                                  (cons (cons 'list (cons _var13377_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _var13377_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _var13377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _var13377_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (fx= _i13378_ '1)
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _var13377_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _var13377_ '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _var13377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list (cons _var13377_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _var13377_ '()))
                                (cons _i13378_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _var13377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _i13378_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_stx13310_)
        (let* ((_g1331213329_
                (lambda (_g1331313326_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1331313326_)))
               (_g1331113374_
                (lambda (_g1331313332_)
                  (if (gx#stx-pair? _g1331313332_)
                      (let ((_e1331613334_ (gx#stx-e _g1331313332_)))
                        (let ((_hd1331713337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1331613334_)))
                              (_tl1331813339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1331613334_))))
                          (if (gx#stx-pair? _tl1331813339_)
                              (let ((_e1331913342_ (gx#stx-e _tl1331813339_)))
                                (let ((_hd1332013345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1331913342_)))
                                      (_tl1332113347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1331913342_))))
                                  (if (gx#stx-pair? _tl1332113347_)
                                      (let ((_e1332213350_
                                             (gx#stx-e _tl1332113347_)))
                                        (let ((_hd1332313353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1332213350_)))
                                              (_tl1332413355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1332213350_))))
                                          (if (gx#stx-null? _tl1332413355_)
                                              ((lambda (_L13358_ _L13359_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _L13359_
                                                  _L13358_))
                                               _hd1332313353_
                                               _hd1332013345_)
                                              (_g1331213329_ _g1331313332_))))
                                      (_g1331213329_ _g1331313332_))))
                              (_g1331213329_ _g1331313332_))))
                      (_g1331213329_ _g1331313332_)))))
          (_g1331113374_ _stx13310_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_hd13270_ _body13271_)
        (let* ((_hd13273_ (gxc#generate-runtime-lambda-head _hd13270_))
               (_body13275_ (gxc#compile-e _body13271_))
               (_body13307_
                (let* ((_body1327613284_ _body13275_)
                       (_else1327813292_ (lambda () (cons _body13275_ '())))
                       (_K1328013297_ (lambda (_exprs13295_) _exprs13295_)))
                  (if (let () (declare (not safe)) (##pair? _body1327613284_))
                      (let ((_hd1328113300_
                             (let ()
                               (declare (not safe))
                               (##car _body1327613284_)))
                            (_tl1328213302_
                             (let ()
                               (declare (not safe))
                               (##cdr _body1327613284_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd1328113300_ 'begin))
                            (let ((_exprs13305_ _tl1328213302_))
                              (_K1328013297_ _exprs13305_))
                            (_else1327813292_)))
                      (_else1327813292_)))))
          (cons 'lambda (cons _hd13273_ _body13307_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd13268_)
        (gx#stx-map1 gxc#generate-runtime-binding-id* _hd13268_)))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_stx11811_)
        (letrec ((_dispatch-case?11813_
                  (lambda (_hd12498_ _body12499_)
                    (let* ((_form12501_
                            (cons _hd12498_ (cons _body12499_ '())))
                           (___stx1558715588_ _form12501_)
                           (_g1250612663_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1558715588_))))
                      (let ((___kont1558915590_
                             (lambda (_L13188_ _L13189_ _L13190_) '#t))
                            (___kont1559515596_
                             (lambda (_L12976_
                                      _L12977_
                                      _L12978_
                                      _L12979_
                                      _L12980_
                                      _L12981_)
                               '#t))
                            (___kont1560115602_
                             (lambda (_L12771_ _L12772_ _L12773_ _L12774_)
                               '#t))
                            (___kont1560315604_ (lambda () '#f)))
                        (let* ((___match1572815729_
                                (lambda (_e1262312675_
                                         _hd1262412678_
                                         _tl1262512680_
                                         _e1262612683_
                                         _hd1262712686_
                                         _tl1262812688_
                                         _e1262912691_
                                         _hd1263012694_
                                         _tl1263112696_
                                         _e1263212699_
                                         _hd1263312702_
                                         _tl1263412704_
                                         _e1263512707_
                                         _hd1263612710_
                                         _tl1263712712_
                                         _e1263812715_
                                         _hd1263912718_
                                         _tl1264012720_
                                         _e1264112723_
                                         _hd1264212726_
                                         _tl1264312728_
                                         _e1264412731_
                                         _hd1264512734_
                                         _tl1264612736_
                                         _e1264712739_
                                         _hd1264812742_
                                         _tl1264912744_
                                         _e1265012747_
                                         _hd1265112750_
                                         _tl1265212752_
                                         _e1265312755_
                                         _hd1265412758_
                                         _tl1265512760_
                                         _e1265612763_
                                         _hd1265712766_
                                         _tl1265812768_)
                                  (let ((_L12771_ _hd1265712766_)
                                        (_L12772_ _hd1264812742_)
                                        (_L12773_ _hd1263912718_)
                                        (_L12774_ _hd1262412678_))
                                    (if (and (gx#identifier? _L12774_)
                                             (gxc#runtime-identifier=?
                                              _L12773_
                                              'apply)
                                             (gx#free-identifier=?
                                              _L12774_
                                              _L12771_)
                                             (not (gx#free-identifier=?
                                                   _L12772_
                                                   _L12774_)))
                                        (___kont1560115602_
                                         _L12771_
                                         _L12772_
                                         _L12773_
                                         _L12774_)
                                        (___kont1560315604_)))))
                               (___match1570015701_
                                (lambda (_e1262312675_
                                         _hd1262412678_
                                         _tl1262512680_
                                         _e1262612683_
                                         _hd1262712686_
                                         _tl1262812688_
                                         _e1262912691_
                                         _hd1263012694_
                                         _tl1263112696_
                                         _e1263212699_
                                         _hd1263312702_
                                         _tl1263412704_
                                         _e1263512707_
                                         _hd1263612710_
                                         _tl1263712712_
                                         _e1263812715_
                                         _hd1263912718_
                                         _tl1264012720_
                                         _e1264112723_
                                         _hd1264212726_
                                         _tl1264312728_
                                         _e1264412731_
                                         _hd1264512734_
                                         _tl1264612736_
                                         _e1264712739_
                                         _hd1264812742_
                                         _tl1264912744_)
                                  (if (gx#stx-pair? _tl1264312728_)
                                      (let ((_e1265012747_
                                             (gx#stx-e _tl1264312728_)))
                                        (let ((_tl1265212752_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1265012747_)))
                                              (_hd1265112750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1265012747_))))
                                          (if (gx#stx-pair? _hd1265112750_)
                                              (let ((_e1265312755_
                                                     (gx#stx-e
                                                      _hd1265112750_)))
                                                (let ((_tl1265512760_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1265312755_)))
                                                      (_hd1265412758_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1265312755_))))
                                                  (if (gx#identifier?
                                                       _hd1265412758_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1265412758_)
                                                          (if (gx#stx-pair?
                                                               _tl1265512760_)
                                                              (let ((_e1265612763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1265512760_)))
                        (let ((_tl1265812768_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1265612763_)))
                              (_hd1265712766_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1265612763_))))
                          (if (gx#stx-null? _tl1265812768_)
                              (if (gx#stx-null? _tl1265212752_)
                                  (if (gx#stx-null? _tl1262812688_)
                                      (___match1572815729_
                                       _e1262312675_
                                       _hd1262412678_
                                       _tl1262512680_
                                       _e1262612683_
                                       _hd1262712686_
                                       _tl1262812688_
                                       _e1262912691_
                                       _hd1263012694_
                                       _tl1263112696_
                                       _e1263212699_
                                       _hd1263312702_
                                       _tl1263412704_
                                       _e1263512707_
                                       _hd1263612710_
                                       _tl1263712712_
                                       _e1263812715_
                                       _hd1263912718_
                                       _tl1264012720_
                                       _e1264112723_
                                       _hd1264212726_
                                       _tl1264312728_
                                       _e1264412731_
                                       _hd1264512734_
                                       _tl1264612736_
                                       _e1264712739_
                                       _hd1264812742_
                                       _tl1264912744_
                                       _e1265012747_
                                       _hd1265112750_
                                       _tl1265212752_
                                       _e1265312755_
                                       _hd1265412758_
                                       _tl1265512760_
                                       _e1265612763_
                                       _hd1265712766_
                                       _tl1265812768_)
                                      (___kont1560315604_))
                                  (___kont1560315604_))
                              (___kont1560315604_))))
                      (___kont1560315604_))
                  (___kont1560315604_))
              (___kont1560315604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1560315604_))))
                                      (___kont1560315604_))))
                               (___match1563015631_
                                (lambda (_e1255912816_
                                         _hd1256012819_
                                         _tl1256112821_
                                         ___splice1559715598_
                                         _target1256212824_
                                         _tl1256412826_)
                                  (letrec ((_loop1256512829_
                                            (lambda (_hd1256312832_
                                                     _arg1256912834_)
                                              (if (gx#stx-pair? _hd1256312832_)
                                                  (let ((_e1256612837_
                                                         (gx#stx-e
                                                          _hd1256312832_)))
                                                    (let ((_lp-tl1256812842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1256612837_)))
                                                          (_lp-hd1256712840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1256612837_))))
                                                      (_loop1256512829_
                                                       _lp-tl1256812842_
                                                       (cons _lp-hd1256712840_
                                                             _arg1256912834_))))
                                                  (let ((_arg1257012845_
                                                         (reverse _arg1256912834_)))
                                                    (if (gx#stx-pair?
                                                         _tl1256112821_)
                                                        (let ((_e1257112848_
                                                               (gx#stx-e
                                                                _tl1256112821_)))
                                                          (let ((_tl1257312853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1257112848_)))
                        (_hd1257212851_
                         (let () (declare (not safe)) (##car _e1257112848_))))
                    (if (gx#stx-pair? _hd1257212851_)
                        (let ((_e1257412856_ (gx#stx-e _hd1257212851_)))
                          (let ((_tl1257612861_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1257412856_)))
                                (_hd1257512859_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1257412856_))))
                            (if (gx#identifier? _hd1257512859_)
                                (if (gx#stx-eq? '%#call _hd1257512859_)
                                    (if (gx#stx-pair? _tl1257612861_)
                                        (let ((_e1257712864_
                                               (gx#stx-e _tl1257612861_)))
                                          (let ((_tl1257912869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1257712864_)))
                                                (_hd1257812867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1257712864_))))
                                            (if (gx#stx-pair? _hd1257812867_)
                                                (let ((_e1258012872_
                                                       (gx#stx-e
                                                        _hd1257812867_)))
                                                  (let ((_tl1258212877_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1258012872_)))
                                                        (_hd1258112875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1258012872_))))
                                                    (if (gx#identifier?
                                                         _hd1258112875_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1258112875_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1258212877_)
                        (let ((_e1258312880_ (gx#stx-e _tl1258212877_)))
                          (let ((_tl1258512885_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1258312880_)))
                                (_hd1258412883_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1258312880_))))
                            (if (gx#stx-null? _tl1258512885_)
                                (if (gx#stx-pair? _tl1257912869_)
                                    (let ((_e1258612888_
                                           (gx#stx-e _tl1257912869_)))
                                      (let ((_tl1258812893_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1258612888_)))
                                            (_hd1258712891_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1258612888_))))
                                        (if (gx#stx-pair? _hd1258712891_)
                                            (let ((_e1258912896_
                                                   (gx#stx-e _hd1258712891_)))
                                              (let ((_tl1259112901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1258912896_)))
                                                    (_hd1259012899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1258912896_))))
                                                (if (gx#identifier?
                                                     _hd1259012899_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1259012899_)
                                                        (if (gx#stx-pair?
                                                             _tl1259112901_)
                                                            (let ((_e1259212904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1259112901_)))
                      (let ((_tl1259412909_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1259212904_)))
                            (_hd1259312907_
                             (let ()
                               (declare (not safe))
                               (##car _e1259212904_))))
                        (if (gx#stx-null? _tl1259412909_)
                            (if (gx#stx-pair/null? _tl1258812893_)
                                (if (fx>= (gx#stx-length _tl1258812893_) '1)
                                    (let ((___splice1559915600_
                                           (gx#syntax-split-splice
                                            _tl1258812893_
                                            '1)))
                                      (let ((_tl1259712914_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1559915600_
                                                '1)))
                                            (_target1259512912_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1559915600_
                                                '0))))
                                        (if (gx#stx-pair? _tl1259712914_)
                                            (let ((_e1260412917_
                                                   (gx#stx-e _tl1259712914_)))
                                              (let ((_tl1260612922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1260412917_)))
                                                    (_hd1260512920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1260412917_))))
                                                (if (gx#stx-pair?
                                                     _hd1260512920_)
                                                    (let ((_e1260712925_
                                                           (gx#stx-e
                                                            _hd1260512920_)))
                                                      (let ((_tl1260912930_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1260712925_)))
                    (_hd1260812928_
                     (let () (declare (not safe)) (##car _e1260712925_))))
                (if (gx#identifier? _hd1260812928_)
                    (if (gx#stx-eq? '%#ref _hd1260812928_)
                        (if (gx#stx-pair? _tl1260912930_)
                            (let ((_e1261012933_ (gx#stx-e _tl1260912930_)))
                              (let ((_tl1261212938_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1261012933_)))
                                    (_hd1261112936_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1261012933_))))
                                (if (gx#stx-null? _tl1261212938_)
                                    (if (gx#stx-null? _tl1260612922_)
                                        (letrec ((_loop1259812941_
                                                  (lambda (_hd1259612944_
                                                           _xarg1260212946_)
                                                    (if (gx#stx-pair?
                                                         _hd1259612944_)
                                                        (let ((_e1259912949_
                                                               (gx#stx-e
                                                                _hd1259612944_)))
                                                          (let ((_lp-tl1260112954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1259912949_)))
                        (_lp-hd1260012952_
                         (let () (declare (not safe)) (##car _e1259912949_))))
                    (if (gx#stx-pair? _lp-hd1260012952_)
                        (let ((_e1261312957_ (gx#stx-e _lp-hd1260012952_)))
                          (let ((_tl1261512962_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1261312957_)))
                                (_hd1261412960_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1261312957_))))
                            (if (gx#identifier? _hd1261412960_)
                                (if (gx#stx-eq? '%#ref _hd1261412960_)
                                    (if (gx#stx-pair? _tl1261512962_)
                                        (let ((_e1261612965_
                                               (gx#stx-e _tl1261512962_)))
                                          (let ((_tl1261812970_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1261612965_)))
                                                (_hd1261712968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1261612965_))))
                                            (if (gx#stx-null? _tl1261812970_)
                                                (_loop1259812941_
                                                 _lp-tl1260112954_
                                                 (cons _hd1261712968_
                                                       _xarg1260212946_))
                                                (___match1570015701_
                                                 _e1255912816_
                                                 _hd1256012819_
                                                 _tl1256112821_
                                                 _e1257112848_
                                                 _hd1257212851_
                                                 _tl1257312853_
                                                 _e1257412856_
                                                 _hd1257512859_
                                                 _tl1257612861_
                                                 _e1257712864_
                                                 _hd1257812867_
                                                 _tl1257912869_
                                                 _e1258012872_
                                                 _hd1258112875_
                                                 _tl1258212877_
                                                 _e1258312880_
                                                 _hd1258412883_
                                                 _tl1258512885_
                                                 _e1258612888_
                                                 _hd1258712891_
                                                 _tl1258812893_
                                                 _e1258912896_
                                                 _hd1259012899_
                                                 _tl1259112901_
                                                 _e1259212904_
                                                 _hd1259312907_
                                                 _tl1259412909_))))
                                        (___match1570015701_
                                         _e1255912816_
                                         _hd1256012819_
                                         _tl1256112821_
                                         _e1257112848_
                                         _hd1257212851_
                                         _tl1257312853_
                                         _e1257412856_
                                         _hd1257512859_
                                         _tl1257612861_
                                         _e1257712864_
                                         _hd1257812867_
                                         _tl1257912869_
                                         _e1258012872_
                                         _hd1258112875_
                                         _tl1258212877_
                                         _e1258312880_
                                         _hd1258412883_
                                         _tl1258512885_
                                         _e1258612888_
                                         _hd1258712891_
                                         _tl1258812893_
                                         _e1258912896_
                                         _hd1259012899_
                                         _tl1259112901_
                                         _e1259212904_
                                         _hd1259312907_
                                         _tl1259412909_))
                                    (___match1570015701_
                                     _e1255912816_
                                     _hd1256012819_
                                     _tl1256112821_
                                     _e1257112848_
                                     _hd1257212851_
                                     _tl1257312853_
                                     _e1257412856_
                                     _hd1257512859_
                                     _tl1257612861_
                                     _e1257712864_
                                     _hd1257812867_
                                     _tl1257912869_
                                     _e1258012872_
                                     _hd1258112875_
                                     _tl1258212877_
                                     _e1258312880_
                                     _hd1258412883_
                                     _tl1258512885_
                                     _e1258612888_
                                     _hd1258712891_
                                     _tl1258812893_
                                     _e1258912896_
                                     _hd1259012899_
                                     _tl1259112901_
                                     _e1259212904_
                                     _hd1259312907_
                                     _tl1259412909_))
                                (___match1570015701_
                                 _e1255912816_
                                 _hd1256012819_
                                 _tl1256112821_
                                 _e1257112848_
                                 _hd1257212851_
                                 _tl1257312853_
                                 _e1257412856_
                                 _hd1257512859_
                                 _tl1257612861_
                                 _e1257712864_
                                 _hd1257812867_
                                 _tl1257912869_
                                 _e1258012872_
                                 _hd1258112875_
                                 _tl1258212877_
                                 _e1258312880_
                                 _hd1258412883_
                                 _tl1258512885_
                                 _e1258612888_
                                 _hd1258712891_
                                 _tl1258812893_
                                 _e1258912896_
                                 _hd1259012899_
                                 _tl1259112901_
                                 _e1259212904_
                                 _hd1259312907_
                                 _tl1259412909_))))
                        (___match1570015701_
                         _e1255912816_
                         _hd1256012819_
                         _tl1256112821_
                         _e1257112848_
                         _hd1257212851_
                         _tl1257312853_
                         _e1257412856_
                         _hd1257512859_
                         _tl1257612861_
                         _e1257712864_
                         _hd1257812867_
                         _tl1257912869_
                         _e1258012872_
                         _hd1258112875_
                         _tl1258212877_
                         _e1258312880_
                         _hd1258412883_
                         _tl1258512885_
                         _e1258612888_
                         _hd1258712891_
                         _tl1258812893_
                         _e1258912896_
                         _hd1259012899_
                         _tl1259112901_
                         _e1259212904_
                         _hd1259312907_
                         _tl1259412909_))))
                (let ((_xarg1260312973_ (reverse _xarg1260212946_)))
                  (if (gx#stx-null? _tl1257312853_)
                      (let ((_L12976_ _hd1261112936_)
                            (_L12977_ _xarg1260312973_)
                            (_L12978_ _hd1259312907_)
                            (_L12979_ _hd1258412883_)
                            (_L12980_ _tl1256412826_)
                            (_L12981_ _arg1257012845_))
                        (if (and (gx#identifier-list?
                                  (foldr1 (lambda (_g1302413027_ _g1302513029_)
                                            (cons _g1302413027_ _g1302513029_))
                                          '()
                                          _L12981_))
                                 (gx#identifier? _L12980_)
                                 (gxc#runtime-identifier=? _L12979_ 'apply)
                                 (fx= (length (foldr1 (lambda (_g1303113034_
                                                               _g1303213036_)
                                                        (cons _g1303113034_
                                                              _g1303213036_))
                                                      '()
                                                      _L12981_))
                                      (length (foldr1 (lambda (_g1303813041_
                                                               _g1303913043_)
                                                        (cons _g1303813041_
                                                              _g1303913043_))
                                                      '()
                                                      _L12977_)))
                                 (andmap2 gx#free-identifier=?
                                          (foldr1 (lambda (_g1304513048_
                                                           _g1304613050_)
                                                    (cons _g1304513048_
                                                          _g1304613050_))
                                                  '()
                                                  _L12981_)
                                          (foldr1 (lambda (_g1305213055_
                                                           _g1305313057_)
                                                    (cons _g1305213055_
                                                          _g1305313057_))
                                                  '()
                                                  _L12977_))
                                 (gx#free-identifier=? _L12980_ _L12976_)
                                 (not (find (lambda (_g1305913061_)
                                              (gx#free-identifier=?
                                               _g1305913061_
                                               _L12978_))
                                            (foldr1 (lambda (_g1306313066_
                                                             _g1306413068_)
                                                      (cons _g1306313066_
                                                            _g1306413068_))
                                                    (cons _L12980_ '())
                                                    _L12981_))))
                            (___kont1559515596_
                             _L12976_
                             _L12977_
                             _L12978_
                             _L12979_
                             _L12980_
                             _L12981_)
                            (___match1570015701_
                             _e1255912816_
                             _hd1256012819_
                             _tl1256112821_
                             _e1257112848_
                             _hd1257212851_
                             _tl1257312853_
                             _e1257412856_
                             _hd1257512859_
                             _tl1257612861_
                             _e1257712864_
                             _hd1257812867_
                             _tl1257912869_
                             _e1258012872_
                             _hd1258112875_
                             _tl1258212877_
                             _e1258312880_
                             _hd1258412883_
                             _tl1258512885_
                             _e1258612888_
                             _hd1258712891_
                             _tl1258812893_
                             _e1258912896_
                             _hd1259012899_
                             _tl1259112901_
                             _e1259212904_
                             _hd1259312907_
                             _tl1259412909_)))
                      (___match1570015701_
                       _e1255912816_
                       _hd1256012819_
                       _tl1256112821_
                       _e1257112848_
                       _hd1257212851_
                       _tl1257312853_
                       _e1257412856_
                       _hd1257512859_
                       _tl1257612861_
                       _e1257712864_
                       _hd1257812867_
                       _tl1257912869_
                       _e1258012872_
                       _hd1258112875_
                       _tl1258212877_
                       _e1258312880_
                       _hd1258412883_
                       _tl1258512885_
                       _e1258612888_
                       _hd1258712891_
                       _tl1258812893_
                       _e1258912896_
                       _hd1259012899_
                       _tl1259112901_
                       _e1259212904_
                       _hd1259312907_
                       _tl1259412909_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1259812941_
                                           _target1259512912_
                                           '()))
                                        (___match1570015701_
                                         _e1255912816_
                                         _hd1256012819_
                                         _tl1256112821_
                                         _e1257112848_
                                         _hd1257212851_
                                         _tl1257312853_
                                         _e1257412856_
                                         _hd1257512859_
                                         _tl1257612861_
                                         _e1257712864_
                                         _hd1257812867_
                                         _tl1257912869_
                                         _e1258012872_
                                         _hd1258112875_
                                         _tl1258212877_
                                         _e1258312880_
                                         _hd1258412883_
                                         _tl1258512885_
                                         _e1258612888_
                                         _hd1258712891_
                                         _tl1258812893_
                                         _e1258912896_
                                         _hd1259012899_
                                         _tl1259112901_
                                         _e1259212904_
                                         _hd1259312907_
                                         _tl1259412909_))
                                    (___match1570015701_
                                     _e1255912816_
                                     _hd1256012819_
                                     _tl1256112821_
                                     _e1257112848_
                                     _hd1257212851_
                                     _tl1257312853_
                                     _e1257412856_
                                     _hd1257512859_
                                     _tl1257612861_
                                     _e1257712864_
                                     _hd1257812867_
                                     _tl1257912869_
                                     _e1258012872_
                                     _hd1258112875_
                                     _tl1258212877_
                                     _e1258312880_
                                     _hd1258412883_
                                     _tl1258512885_
                                     _e1258612888_
                                     _hd1258712891_
                                     _tl1258812893_
                                     _e1258912896_
                                     _hd1259012899_
                                     _tl1259112901_
                                     _e1259212904_
                                     _hd1259312907_
                                     _tl1259412909_))))
                            (___match1570015701_
                             _e1255912816_
                             _hd1256012819_
                             _tl1256112821_
                             _e1257112848_
                             _hd1257212851_
                             _tl1257312853_
                             _e1257412856_
                             _hd1257512859_
                             _tl1257612861_
                             _e1257712864_
                             _hd1257812867_
                             _tl1257912869_
                             _e1258012872_
                             _hd1258112875_
                             _tl1258212877_
                             _e1258312880_
                             _hd1258412883_
                             _tl1258512885_
                             _e1258612888_
                             _hd1258712891_
                             _tl1258812893_
                             _e1258912896_
                             _hd1259012899_
                             _tl1259112901_
                             _e1259212904_
                             _hd1259312907_
                             _tl1259412909_))
                        (___match1570015701_
                         _e1255912816_
                         _hd1256012819_
                         _tl1256112821_
                         _e1257112848_
                         _hd1257212851_
                         _tl1257312853_
                         _e1257412856_
                         _hd1257512859_
                         _tl1257612861_
                         _e1257712864_
                         _hd1257812867_
                         _tl1257912869_
                         _e1258012872_
                         _hd1258112875_
                         _tl1258212877_
                         _e1258312880_
                         _hd1258412883_
                         _tl1258512885_
                         _e1258612888_
                         _hd1258712891_
                         _tl1258812893_
                         _e1258912896_
                         _hd1259012899_
                         _tl1259112901_
                         _e1259212904_
                         _hd1259312907_
                         _tl1259412909_))
                    (___match1570015701_
                     _e1255912816_
                     _hd1256012819_
                     _tl1256112821_
                     _e1257112848_
                     _hd1257212851_
                     _tl1257312853_
                     _e1257412856_
                     _hd1257512859_
                     _tl1257612861_
                     _e1257712864_
                     _hd1257812867_
                     _tl1257912869_
                     _e1258012872_
                     _hd1258112875_
                     _tl1258212877_
                     _e1258312880_
                     _hd1258412883_
                     _tl1258512885_
                     _e1258612888_
                     _hd1258712891_
                     _tl1258812893_
                     _e1258912896_
                     _hd1259012899_
                     _tl1259112901_
                     _e1259212904_
                     _hd1259312907_
                     _tl1259412909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1570015701_
                                                     _e1255912816_
                                                     _hd1256012819_
                                                     _tl1256112821_
                                                     _e1257112848_
                                                     _hd1257212851_
                                                     _tl1257312853_
                                                     _e1257412856_
                                                     _hd1257512859_
                                                     _tl1257612861_
                                                     _e1257712864_
                                                     _hd1257812867_
                                                     _tl1257912869_
                                                     _e1258012872_
                                                     _hd1258112875_
                                                     _tl1258212877_
                                                     _e1258312880_
                                                     _hd1258412883_
                                                     _tl1258512885_
                                                     _e1258612888_
                                                     _hd1258712891_
                                                     _tl1258812893_
                                                     _e1258912896_
                                                     _hd1259012899_
                                                     _tl1259112901_
                                                     _e1259212904_
                                                     _hd1259312907_
                                                     _tl1259412909_))))
                                            (___match1570015701_
                                             _e1255912816_
                                             _hd1256012819_
                                             _tl1256112821_
                                             _e1257112848_
                                             _hd1257212851_
                                             _tl1257312853_
                                             _e1257412856_
                                             _hd1257512859_
                                             _tl1257612861_
                                             _e1257712864_
                                             _hd1257812867_
                                             _tl1257912869_
                                             _e1258012872_
                                             _hd1258112875_
                                             _tl1258212877_
                                             _e1258312880_
                                             _hd1258412883_
                                             _tl1258512885_
                                             _e1258612888_
                                             _hd1258712891_
                                             _tl1258812893_
                                             _e1258912896_
                                             _hd1259012899_
                                             _tl1259112901_
                                             _e1259212904_
                                             _hd1259312907_
                                             _tl1259412909_))))
                                    (___match1570015701_
                                     _e1255912816_
                                     _hd1256012819_
                                     _tl1256112821_
                                     _e1257112848_
                                     _hd1257212851_
                                     _tl1257312853_
                                     _e1257412856_
                                     _hd1257512859_
                                     _tl1257612861_
                                     _e1257712864_
                                     _hd1257812867_
                                     _tl1257912869_
                                     _e1258012872_
                                     _hd1258112875_
                                     _tl1258212877_
                                     _e1258312880_
                                     _hd1258412883_
                                     _tl1258512885_
                                     _e1258612888_
                                     _hd1258712891_
                                     _tl1258812893_
                                     _e1258912896_
                                     _hd1259012899_
                                     _tl1259112901_
                                     _e1259212904_
                                     _hd1259312907_
                                     _tl1259412909_))
                                (___match1570015701_
                                 _e1255912816_
                                 _hd1256012819_
                                 _tl1256112821_
                                 _e1257112848_
                                 _hd1257212851_
                                 _tl1257312853_
                                 _e1257412856_
                                 _hd1257512859_
                                 _tl1257612861_
                                 _e1257712864_
                                 _hd1257812867_
                                 _tl1257912869_
                                 _e1258012872_
                                 _hd1258112875_
                                 _tl1258212877_
                                 _e1258312880_
                                 _hd1258412883_
                                 _tl1258512885_
                                 _e1258612888_
                                 _hd1258712891_
                                 _tl1258812893_
                                 _e1258912896_
                                 _hd1259012899_
                                 _tl1259112901_
                                 _e1259212904_
                                 _hd1259312907_
                                 _tl1259412909_))
                            (___kont1560315604_))))
                    (___kont1560315604_))
                (___kont1560315604_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1560315604_))))
                                            (___kont1560315604_))))
                                    (___kont1560315604_))
                                (___kont1560315604_))))
                        (___kont1560315604_))
                    (___kont1560315604_))
                (___kont1560315604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1560315604_))))
                                        (___kont1560315604_))
                                    (___kont1560315604_))
                                (___kont1560315604_))))
                        (___kont1560315604_))))
                (___kont1560315604_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1256512829_
                                     _target1256212824_
                                     '()))))
                               (___match1561815619_
                                (lambda (_e1251113076_
                                         _hd1251213079_
                                         _tl1251313081_
                                         ___splice1559115592_
                                         _target1251413084_
                                         _tl1251613086_)
                                  (letrec ((_loop1251713089_
                                            (lambda (_hd1251513092_
                                                     _arg1252113094_)
                                              (if (gx#stx-pair? _hd1251513092_)
                                                  (let ((_e1251813097_
                                                         (gx#stx-e
                                                          _hd1251513092_)))
                                                    (let ((_lp-tl1252013102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1251813097_)))
                                                          (_lp-hd1251913100_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1251813097_))))
                                                      (_loop1251713089_
                                                       _lp-tl1252013102_
                                                       (cons _lp-hd1251913100_
                                                             _arg1252113094_))))
                                                  (let ((_arg1252213105_
                                                         (reverse _arg1252113094_)))
                                                    (if (gx#stx-pair?
                                                         _tl1251313081_)
                                                        (let ((_e1252313108_
                                                               (gx#stx-e
                                                                _tl1251313081_)))
                                                          (let ((_tl1252513113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1252313108_)))
                        (_hd1252413111_
                         (let () (declare (not safe)) (##car _e1252313108_))))
                    (if (gx#stx-pair? _hd1252413111_)
                        (let ((_e1252613116_ (gx#stx-e _hd1252413111_)))
                          (let ((_tl1252813121_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1252613116_)))
                                (_hd1252713119_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1252613116_))))
                            (if (gx#identifier? _hd1252713119_)
                                (if (gx#stx-eq? '%#call _hd1252713119_)
                                    (if (gx#stx-pair? _tl1252813121_)
                                        (let ((_e1252913124_
                                               (gx#stx-e _tl1252813121_)))
                                          (let ((_tl1253113129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1252913124_)))
                                                (_hd1253013127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1252913124_))))
                                            (if (gx#stx-pair? _hd1253013127_)
                                                (let ((_e1253213132_
                                                       (gx#stx-e
                                                        _hd1253013127_)))
                                                  (let ((_tl1253413137_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1253213132_)))
                                                        (_hd1253313135_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1253213132_))))
                                                    (if (gx#identifier?
                                                         _hd1253313135_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1253313135_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1253413137_)
                        (let ((_e1253513140_ (gx#stx-e _tl1253413137_)))
                          (let ((_tl1253713145_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1253513140_)))
                                (_hd1253613143_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1253513140_))))
                            (if (gx#stx-null? _tl1253713145_)
                                (if (gx#stx-pair/null? _tl1253113129_)
                                    (let ((___splice1559315594_
                                           (gx#syntax-split-splice
                                            _tl1253113129_
                                            '0)))
                                      (let ((_tl1254013150_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1559315594_
                                                '1)))
                                            (_target1253813148_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1559315594_
                                                '0))))
                                        (if (gx#stx-null? _tl1254013150_)
                                            (letrec ((_loop1254113153_
                                                      (lambda (_hd1253913156_
                                                               _xarg1254513158_)
                                                        (if (gx#stx-pair?
                                                             _hd1253913156_)
                                                            (let ((_e1254213161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1253913156_)))
                      (let ((_lp-tl1254413166_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1254213161_)))
                            (_lp-hd1254313164_
                             (let ()
                               (declare (not safe))
                               (##car _e1254213161_))))
                        (if (gx#stx-pair? _lp-hd1254313164_)
                            (let ((_e1254713169_ (gx#stx-e _lp-hd1254313164_)))
                              (let ((_tl1254913174_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1254713169_)))
                                    (_hd1254813172_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1254713169_))))
                                (if (gx#identifier? _hd1254813172_)
                                    (if (gx#stx-eq? '%#ref _hd1254813172_)
                                        (if (gx#stx-pair? _tl1254913174_)
                                            (let ((_e1255013177_
                                                   (gx#stx-e _tl1254913174_)))
                                              (let ((_tl1255213182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1255013177_)))
                                                    (_hd1255113180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1255013177_))))
                                                (if (gx#stx-null?
                                                     _tl1255213182_)
                                                    (_loop1254113153_
                                                     _lp-tl1254413166_
                                                     (cons _hd1255113180_
                                                           _xarg1254513158_))
                                                    (___match1563015631_
                                                     _e1251113076_
                                                     _hd1251213079_
                                                     _tl1251313081_
                                                     ___splice1559115592_
                                                     _target1251413084_
                                                     _tl1251613086_))))
                                            (___match1563015631_
                                             _e1251113076_
                                             _hd1251213079_
                                             _tl1251313081_
                                             ___splice1559115592_
                                             _target1251413084_
                                             _tl1251613086_))
                                        (___match1563015631_
                                         _e1251113076_
                                         _hd1251213079_
                                         _tl1251313081_
                                         ___splice1559115592_
                                         _target1251413084_
                                         _tl1251613086_))
                                    (___match1563015631_
                                     _e1251113076_
                                     _hd1251213079_
                                     _tl1251313081_
                                     ___splice1559115592_
                                     _target1251413084_
                                     _tl1251613086_))))
                            (___match1563015631_
                             _e1251113076_
                             _hd1251213079_
                             _tl1251313081_
                             ___splice1559115592_
                             _target1251413084_
                             _tl1251613086_))))
                    (let ((_xarg1254613185_ (reverse _xarg1254513158_)))
                      (if (gx#stx-null? _tl1252513113_)
                          (let ((_L13188_ _xarg1254613185_)
                                (_L13189_ _hd1253613143_)
                                (_L13190_ _arg1252213105_))
                            (if (and (gx#identifier-list?
                                      (foldr1 (lambda (_g1321813221_
                                                       _g1321913223_)
                                                (cons _g1321813221_
                                                      _g1321913223_))
                                              '()
                                              _L13190_))
                                     (fx= (length (foldr1 (lambda (_g1322513228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1322613230_)
                    (cons _g1322513228_ _g1322613230_))
                  '()
                  _L13190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (length (foldr1 (lambda (_g1323213235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1323313237_)
                    (cons _g1323213235_ _g1323313237_))
                  '()
                  _L13188_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (andmap2 gx#free-identifier=?
                                              (foldr1 (lambda (_g1323913242_
                                                               _g1324013244_)
                                                        (cons _g1323913242_
                                                              _g1324013244_))
                                                      '()
                                                      _L13190_)
                                              (foldr1 (lambda (_g1324613249_
                                                               _g1324713251_)
                                                        (cons _g1324613249_
                                                              _g1324713251_))
                                                      '()
                                                      _L13188_))
                                     (not (find (lambda (_g1325313255_)
                                                  (gx#free-identifier=?
                                                   _g1325313255_
                                                   _L13189_))
                                                (foldr1 (lambda (_g1325713260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1325813262_)
                  (cons _g1325713260_ _g1325813262_))
                '()
                _L13190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (___kont1558915590_ _L13188_ _L13189_ _L13190_)
                                (___match1563015631_
                                 _e1251113076_
                                 _hd1251213079_
                                 _tl1251313081_
                                 ___splice1559115592_
                                 _target1251413084_
                                 _tl1251613086_)))
                          (___match1563015631_
                           _e1251113076_
                           _hd1251213079_
                           _tl1251313081_
                           ___splice1559115592_
                           _target1251413084_
                           _tl1251613086_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1254113153_
                                               _target1253813148_
                                               '()))
                                            (___match1563015631_
                                             _e1251113076_
                                             _hd1251213079_
                                             _tl1251313081_
                                             ___splice1559115592_
                                             _target1251413084_
                                             _tl1251613086_))))
                                    (___match1563015631_
                                     _e1251113076_
                                     _hd1251213079_
                                     _tl1251313081_
                                     ___splice1559115592_
                                     _target1251413084_
                                     _tl1251613086_))
                                (___match1563015631_
                                 _e1251113076_
                                 _hd1251213079_
                                 _tl1251313081_
                                 ___splice1559115592_
                                 _target1251413084_
                                 _tl1251613086_))))
                        (___match1563015631_
                         _e1251113076_
                         _hd1251213079_
                         _tl1251313081_
                         ___splice1559115592_
                         _target1251413084_
                         _tl1251613086_))
                    (___match1563015631_
                     _e1251113076_
                     _hd1251213079_
                     _tl1251313081_
                     ___splice1559115592_
                     _target1251413084_
                     _tl1251613086_))
                (___match1563015631_
                 _e1251113076_
                 _hd1251213079_
                 _tl1251313081_
                 ___splice1559115592_
                 _target1251413084_
                 _tl1251613086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1563015631_
                                                 _e1251113076_
                                                 _hd1251213079_
                                                 _tl1251313081_
                                                 ___splice1559115592_
                                                 _target1251413084_
                                                 _tl1251613086_))))
                                        (___match1563015631_
                                         _e1251113076_
                                         _hd1251213079_
                                         _tl1251313081_
                                         ___splice1559115592_
                                         _target1251413084_
                                         _tl1251613086_))
                                    (___match1563015631_
                                     _e1251113076_
                                     _hd1251213079_
                                     _tl1251313081_
                                     ___splice1559115592_
                                     _target1251413084_
                                     _tl1251613086_))
                                (___match1563015631_
                                 _e1251113076_
                                 _hd1251213079_
                                 _tl1251313081_
                                 ___splice1559115592_
                                 _target1251413084_
                                 _tl1251613086_))))
                        (___match1563015631_
                         _e1251113076_
                         _hd1251213079_
                         _tl1251313081_
                         ___splice1559115592_
                         _target1251413084_
                         _tl1251613086_))))
                (___match1563015631_
                 _e1251113076_
                 _hd1251213079_
                 _tl1251313081_
                 ___splice1559115592_
                 _target1251413084_
                 _tl1251613086_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1251713089_
                                     _target1251413084_
                                     '())))))
                          (if (gx#stx-pair? ___stx1558715588_)
                              (let ((_e1251113076_
                                     (gx#stx-e ___stx1558715588_)))
                                (let ((_tl1251313081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1251113076_)))
                                      (_hd1251213079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1251113076_))))
                                  (if (gx#stx-pair/null? _hd1251213079_)
                                      (let ((___splice1559115592_
                                             (gx#syntax-split-splice
                                              _hd1251213079_
                                              '0)))
                                        (let ((_tl1251613086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1559115592_
                                                  '1)))
                                              (_target1251413084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1559115592_
                                                  '0))))
                                          (if (gx#stx-null? _tl1251613086_)
                                              (___match1561815619_
                                               _e1251113076_
                                               _hd1251213079_
                                               _tl1251313081_
                                               ___splice1559115592_
                                               _target1251413084_
                                               _tl1251613086_)
                                              (___match1563015631_
                                               _e1251113076_
                                               _hd1251213079_
                                               _tl1251313081_
                                               ___splice1559115592_
                                               _target1251413084_
                                               _tl1251613086_))))
                                      (if (gx#stx-pair? _tl1251313081_)
                                          (let ((_e1262612683_
                                                 (gx#stx-e _tl1251313081_)))
                                            (let ((_tl1262812688_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1262612683_)))
                                                  (_hd1262712686_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1262612683_))))
                                              (if (gx#stx-pair? _hd1262712686_)
                                                  (let ((_e1262912691_
                                                         (gx#stx-e
                                                          _hd1262712686_)))
                                                    (let ((_tl1263112696_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1262912691_)))
                                                          (_hd1263012694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1262912691_))))
                                                      (if (gx#identifier?
                                                           _hd1263012694_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1263012694_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1263112696_)
                          (let ((_e1263212699_ (gx#stx-e _tl1263112696_)))
                            (let ((_tl1263412704_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1263212699_)))
                                  (_hd1263312702_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1263212699_))))
                              (if (gx#stx-pair? _hd1263312702_)
                                  (let ((_e1263512707_
                                         (gx#stx-e _hd1263312702_)))
                                    (let ((_tl1263712712_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1263512707_)))
                                          (_hd1263612710_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1263512707_))))
                                      (if (gx#identifier? _hd1263612710_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1263612710_)
                                              (if (gx#stx-pair? _tl1263712712_)
                                                  (let ((_e1263812715_
                                                         (gx#stx-e
                                                          _tl1263712712_)))
                                                    (let ((_tl1264012720_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1263812715_)))
                                                          (_hd1263912718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1263812715_))))
                                                      (if (gx#stx-null?
                                                           _tl1264012720_)
                                                          (if (gx#stx-pair?
                                                               _tl1263412704_)
                                                              (let ((_e1264112723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1263412704_)))
                        (let ((_tl1264312728_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1264112723_)))
                              (_hd1264212726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1264112723_))))
                          (if (gx#stx-pair? _hd1264212726_)
                              (let ((_e1264412731_ (gx#stx-e _hd1264212726_)))
                                (let ((_tl1264612736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1264412731_)))
                                      (_hd1264512734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1264412731_))))
                                  (if (gx#identifier? _hd1264512734_)
                                      (if (gx#stx-eq? '%#ref _hd1264512734_)
                                          (if (gx#stx-pair? _tl1264612736_)
                                              (let ((_e1264712739_
                                                     (gx#stx-e
                                                      _tl1264612736_)))
                                                (let ((_tl1264912744_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1264712739_)))
                                                      (_hd1264812742_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1264712739_))))
                                                  (if (gx#stx-null?
                                                       _tl1264912744_)
                                                      (if (gx#stx-pair?
                                                           _tl1264312728_)
                                                          (let ((_e1265012747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1264312728_)))
                    (let ((_tl1265212752_
                           (let () (declare (not safe)) (##cdr _e1265012747_)))
                          (_hd1265112750_
                           (let ()
                             (declare (not safe))
                             (##car _e1265012747_))))
                      (if (gx#stx-pair? _hd1265112750_)
                          (let ((_e1265312755_ (gx#stx-e _hd1265112750_)))
                            (let ((_tl1265512760_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1265312755_)))
                                  (_hd1265412758_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1265312755_))))
                              (if (gx#identifier? _hd1265412758_)
                                  (if (gx#stx-eq? '%#ref _hd1265412758_)
                                      (if (gx#stx-pair? _tl1265512760_)
                                          (let ((_e1265612763_
                                                 (gx#stx-e _tl1265512760_)))
                                            (let ((_tl1265812768_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1265612763_)))
                                                  (_hd1265712766_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1265612763_))))
                                              (if (gx#stx-null? _tl1265812768_)
                                                  (if (gx#stx-null?
                                                       _tl1265212752_)
                                                      (if (gx#stx-null?
                                                           _tl1262812688_)
                                                          (___match1572815729_
                                                           _e1251113076_
                                                           _hd1251213079_
                                                           _tl1251313081_
                                                           _e1262612683_
                                                           _hd1262712686_
                                                           _tl1262812688_
                                                           _e1262912691_
                                                           _hd1263012694_
                                                           _tl1263112696_
                                                           _e1263212699_
                                                           _hd1263312702_
                                                           _tl1263412704_
                                                           _e1263512707_
                                                           _hd1263612710_
                                                           _tl1263712712_
                                                           _e1263812715_
                                                           _hd1263912718_
                                                           _tl1264012720_
                                                           _e1264112723_
                                                           _hd1264212726_
                                                           _tl1264312728_
                                                           _e1264412731_
                                                           _hd1264512734_
                                                           _tl1264612736_
                                                           _e1264712739_
                                                           _hd1264812742_
                                                           _tl1264912744_
                                                           _e1265012747_
                                                           _hd1265112750_
                                                           _tl1265212752_
                                                           _e1265312755_
                                                           _hd1265412758_
                                                           _tl1265512760_
                                                           _e1265612763_
                                                           _hd1265712766_
                                                           _tl1265812768_)
                                                          (___kont1560315604_))
                                                      (___kont1560315604_))
                                                  (___kont1560315604_))))
                                          (___kont1560315604_))
                                      (___kont1560315604_))
                                  (___kont1560315604_))))
                          (___kont1560315604_))))
                  (___kont1560315604_))
              (___kont1560315604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1560315604_))
                                          (___kont1560315604_))
                                      (___kont1560315604_))))
                              (___kont1560315604_))))
                      (___kont1560315604_))
                  (___kont1560315604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1560315604_))
                                              (___kont1560315604_))
                                          (___kont1560315604_))))
                                  (___kont1560315604_))))
                          (___kont1560315604_))
                      (___kont1560315604_))
                  (___kont1560315604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1560315604_))))
                                          (___kont1560315604_)))))
                              (___kont1560315604_)))))))
                 (_dispatch-case-e11814_
                  (lambda (_hd11962_ _body11963_)
                    (let* ((_form11965_
                            (cons _hd11962_ (cons _body11963_ '())))
                           (___stx1573115732_ _form11965_)
                           (_g1196912093_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1573115732_))))
                      (let ((___kont1573315734_
                             (lambda (_L12464_ _L12465_ _L12466_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L12465_ '())))))
                            (___kont1573915740_
                             (lambda (_L12312_ _L12313_ _L12314_ _L12315_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L12312_ '())))))
                            (___kont1574315744_
                             (lambda (_L12178_ _L12179_ _L12180_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L12178_ '()))))))
                        (let* ((___match1584015841_
                                (lambda (_e1205912098_
                                         _hd1206012101_
                                         _tl1206112103_
                                         _e1206212106_
                                         _hd1206312109_
                                         _tl1206412111_
                                         _e1206512114_
                                         _hd1206612117_
                                         _tl1206712119_
                                         _e1206812122_
                                         _hd1206912125_
                                         _tl1207012127_
                                         _e1207112130_
                                         _hd1207212133_
                                         _tl1207312135_
                                         _e1207412138_
                                         _hd1207512141_
                                         _tl1207612143_
                                         _e1207712146_
                                         _hd1207812149_
                                         _tl1207912151_
                                         _e1208012154_
                                         _hd1208112157_
                                         _tl1208212159_
                                         _e1208312162_
                                         _hd1208412165_
                                         _tl1208512167_)
                                  (if (gx#stx-pair? _tl1207912151_)
                                      (let ((_e1208612170_
                                             (gx#stx-e _tl1207912151_)))
                                        (let ((_tl1208812175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1208612170_)))
                                              (_hd1208712173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1208612170_))))
                                          (if (gx#stx-null? _tl1208812175_)
                                              (if (gx#stx-null? _tl1206412111_)
                                                  (___kont1574315744_
                                                   _hd1208412165_
                                                   _hd1207512141_
                                                   _hd1206012101_)
                                                  (_g1196912093_))
                                              (_g1196912093_))))
                                      (_g1196912093_))))
                               (___match1577015771_
                                (lambda (_e1202012216_
                                         _hd1202112219_
                                         _tl1202212221_
                                         ___splice1574115742_
                                         _target1202312224_
                                         _tl1202512226_)
                                  (letrec ((_loop1202612229_
                                            (lambda (_hd1202412232_
                                                     _arg1203012234_)
                                              (if (gx#stx-pair? _hd1202412232_)
                                                  (let ((_e1202712237_
                                                         (gx#stx-e
                                                          _hd1202412232_)))
                                                    (let ((_lp-tl1202912242_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1202712237_)))
                                                          (_lp-hd1202812240_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1202712237_))))
                                                      (_loop1202612229_
                                                       _lp-tl1202912242_
                                                       (cons _lp-hd1202812240_
                                                             _arg1203012234_))))
                                                  (let ((_arg1203112245_
                                                         (reverse _arg1203012234_)))
                                                    (if (gx#stx-pair?
                                                         _tl1202212221_)
                                                        (let ((_e1203212248_
                                                               (gx#stx-e
                                                                _tl1202212221_)))
                                                          (let ((_tl1203412253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1203212248_)))
                        (_hd1203312251_
                         (let () (declare (not safe)) (##car _e1203212248_))))
                    (if (gx#stx-pair? _hd1203312251_)
                        (let ((_e1203512256_ (gx#stx-e _hd1203312251_)))
                          (let ((_tl1203712261_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1203512256_)))
                                (_hd1203612259_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1203512256_))))
                            (if (gx#identifier? _hd1203612259_)
                                (if (gx#stx-eq? '%#call _hd1203612259_)
                                    (if (gx#stx-pair? _tl1203712261_)
                                        (let ((_e1203812264_
                                               (gx#stx-e _tl1203712261_)))
                                          (let ((_tl1204012269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1203812264_)))
                                                (_hd1203912267_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1203812264_))))
                                            (if (gx#stx-pair? _hd1203912267_)
                                                (let ((_e1204112272_
                                                       (gx#stx-e
                                                        _hd1203912267_)))
                                                  (let ((_tl1204312277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1204112272_)))
                                                        (_hd1204212275_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1204112272_))))
                                                    (if (gx#identifier?
                                                         _hd1204212275_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1204212275_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1204312277_)
                        (let ((_e1204412280_ (gx#stx-e _tl1204312277_)))
                          (let ((_tl1204612285_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1204412280_)))
                                (_hd1204512283_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1204412280_))))
                            (if (gx#stx-null? _tl1204612285_)
                                (if (gx#stx-pair? _tl1204012269_)
                                    (let ((_e1204712288_
                                           (gx#stx-e _tl1204012269_)))
                                      (let ((_tl1204912293_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1204712288_)))
                                            (_hd1204812291_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1204712288_))))
                                        (if (gx#stx-pair? _hd1204812291_)
                                            (let ((_e1205012296_
                                                   (gx#stx-e _hd1204812291_)))
                                              (let ((_tl1205212301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1205012296_)))
                                                    (_hd1205112299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1205012296_))))
                                                (if (gx#identifier?
                                                     _hd1205112299_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1205112299_)
                                                        (if (gx#stx-pair?
                                                             _tl1205212301_)
                                                            (let ((_e1205312304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1205212301_)))
                      (let ((_tl1205512309_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1205312304_)))
                            (_hd1205412307_
                             (let ()
                               (declare (not safe))
                               (##car _e1205312304_))))
                        (if (gx#stx-null? _tl1205512309_)
                            (if (gx#stx-null? _tl1203412253_)
                                (___kont1573915740_
                                 _hd1205412307_
                                 _hd1204512283_
                                 _tl1202512226_
                                 _arg1203112245_)
                                (___match1584015841_
                                 _e1202012216_
                                 _hd1202112219_
                                 _tl1202212221_
                                 _e1203212248_
                                 _hd1203312251_
                                 _tl1203412253_
                                 _e1203512256_
                                 _hd1203612259_
                                 _tl1203712261_
                                 _e1203812264_
                                 _hd1203912267_
                                 _tl1204012269_
                                 _e1204112272_
                                 _hd1204212275_
                                 _tl1204312277_
                                 _e1204412280_
                                 _hd1204512283_
                                 _tl1204612285_
                                 _e1204712288_
                                 _hd1204812291_
                                 _tl1204912293_
                                 _e1205012296_
                                 _hd1205112299_
                                 _tl1205212301_
                                 _e1205312304_
                                 _hd1205412307_
                                 _tl1205512309_))
                            (_g1196912093_))))
                    (_g1196912093_))
                (_g1196912093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1196912093_))))
                                            (_g1196912093_))))
                                    (_g1196912093_))
                                (_g1196912093_))))
                        (_g1196912093_))
                    (_g1196912093_))
                (_g1196912093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1196912093_))))
                                        (_g1196912093_))
                                    (_g1196912093_))
                                (_g1196912093_))))
                        (_g1196912093_))))
                (_g1196912093_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1202612229_
                                     _target1202312224_
                                     '()))))
                               (___match1575815759_
                                (lambda (_e1197412352_
                                         _hd1197512355_
                                         _tl1197612357_
                                         ___splice1573515736_
                                         _target1197712360_
                                         _tl1197912362_)
                                  (letrec ((_loop1198012365_
                                            (lambda (_hd1197812368_
                                                     _arg1198412370_)
                                              (if (gx#stx-pair? _hd1197812368_)
                                                  (let ((_e1198112373_
                                                         (gx#stx-e
                                                          _hd1197812368_)))
                                                    (let ((_lp-tl1198312378_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1198112373_)))
                                                          (_lp-hd1198212376_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1198112373_))))
                                                      (_loop1198012365_
                                                       _lp-tl1198312378_
                                                       (cons _lp-hd1198212376_
                                                             _arg1198412370_))))
                                                  (let ((_arg1198512381_
                                                         (reverse _arg1198412370_)))
                                                    (if (gx#stx-pair?
                                                         _tl1197612357_)
                                                        (let ((_e1198612384_
                                                               (gx#stx-e
                                                                _tl1197612357_)))
                                                          (let ((_tl1198812389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1198612384_)))
                        (_hd1198712387_
                         (let () (declare (not safe)) (##car _e1198612384_))))
                    (if (gx#stx-pair? _hd1198712387_)
                        (let ((_e1198912392_ (gx#stx-e _hd1198712387_)))
                          (let ((_tl1199112397_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1198912392_)))
                                (_hd1199012395_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1198912392_))))
                            (if (gx#identifier? _hd1199012395_)
                                (if (gx#stx-eq? '%#call _hd1199012395_)
                                    (if (gx#stx-pair? _tl1199112397_)
                                        (let ((_e1199212400_
                                               (gx#stx-e _tl1199112397_)))
                                          (let ((_tl1199412405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1199212400_)))
                                                (_hd1199312403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1199212400_))))
                                            (if (gx#stx-pair? _hd1199312403_)
                                                (let ((_e1199512408_
                                                       (gx#stx-e
                                                        _hd1199312403_)))
                                                  (let ((_tl1199712413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1199512408_)))
                                                        (_hd1199612411_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1199512408_))))
                                                    (if (gx#identifier?
                                                         _hd1199612411_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1199612411_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1199712413_)
                        (let ((_e1199812416_ (gx#stx-e _tl1199712413_)))
                          (let ((_tl1200012421_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1199812416_)))
                                (_hd1199912419_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1199812416_))))
                            (if (gx#stx-null? _tl1200012421_)
                                (if (gx#stx-pair/null? _tl1199412405_)
                                    (let ((___splice1573715738_
                                           (gx#syntax-split-splice
                                            _tl1199412405_
                                            '0)))
                                      (let ((_tl1200312426_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1573715738_
                                                '1)))
                                            (_target1200112424_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1573715738_
                                                '0))))
                                        (if (gx#stx-null? _tl1200312426_)
                                            (letrec ((_loop1200412429_
                                                      (lambda (_hd1200212432_
                                                               _xarg1200812434_)
                                                        (if (gx#stx-pair?
                                                             _hd1200212432_)
                                                            (let ((_e1200512437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1200212432_)))
                      (let ((_lp-tl1200712442_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1200512437_)))
                            (_lp-hd1200612440_
                             (let ()
                               (declare (not safe))
                               (##car _e1200512437_))))
                        (if (gx#stx-pair? _lp-hd1200612440_)
                            (let ((_e1201012445_ (gx#stx-e _lp-hd1200612440_)))
                              (let ((_tl1201212450_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1201012445_)))
                                    (_hd1201112448_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1201012445_))))
                                (if (gx#identifier? _hd1201112448_)
                                    (if (gx#stx-eq? '%#ref _hd1201112448_)
                                        (if (gx#stx-pair? _tl1201212450_)
                                            (let ((_e1201312453_
                                                   (gx#stx-e _tl1201212450_)))
                                              (let ((_tl1201512458_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1201312453_)))
                                                    (_hd1201412456_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1201312453_))))
                                                (if (gx#stx-null?
                                                     _tl1201512458_)
                                                    (_loop1200412429_
                                                     _lp-tl1200712442_
                                                     (cons _hd1201412456_
                                                           _xarg1200812434_))
                                                    (___match1577015771_
                                                     _e1197412352_
                                                     _hd1197512355_
                                                     _tl1197612357_
                                                     ___splice1573515736_
                                                     _target1197712360_
                                                     _tl1197912362_))))
                                            (___match1577015771_
                                             _e1197412352_
                                             _hd1197512355_
                                             _tl1197612357_
                                             ___splice1573515736_
                                             _target1197712360_
                                             _tl1197912362_))
                                        (___match1577015771_
                                         _e1197412352_
                                         _hd1197512355_
                                         _tl1197612357_
                                         ___splice1573515736_
                                         _target1197712360_
                                         _tl1197912362_))
                                    (___match1577015771_
                                     _e1197412352_
                                     _hd1197512355_
                                     _tl1197612357_
                                     ___splice1573515736_
                                     _target1197712360_
                                     _tl1197912362_))))
                            (___match1577015771_
                             _e1197412352_
                             _hd1197512355_
                             _tl1197612357_
                             ___splice1573515736_
                             _target1197712360_
                             _tl1197912362_))))
                    (let ((_xarg1200912461_ (reverse _xarg1200812434_)))
                      (if (gx#stx-null? _tl1198812389_)
                          (___kont1573315734_
                           _xarg1200912461_
                           _hd1199912419_
                           _arg1198512381_)
                          (___match1577015771_
                           _e1197412352_
                           _hd1197512355_
                           _tl1197612357_
                           ___splice1573515736_
                           _target1197712360_
                           _tl1197912362_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1200412429_
                                               _target1200112424_
                                               '()))
                                            (___match1577015771_
                                             _e1197412352_
                                             _hd1197512355_
                                             _tl1197612357_
                                             ___splice1573515736_
                                             _target1197712360_
                                             _tl1197912362_))))
                                    (___match1577015771_
                                     _e1197412352_
                                     _hd1197512355_
                                     _tl1197612357_
                                     ___splice1573515736_
                                     _target1197712360_
                                     _tl1197912362_))
                                (___match1577015771_
                                 _e1197412352_
                                 _hd1197512355_
                                 _tl1197612357_
                                 ___splice1573515736_
                                 _target1197712360_
                                 _tl1197912362_))))
                        (___match1577015771_
                         _e1197412352_
                         _hd1197512355_
                         _tl1197612357_
                         ___splice1573515736_
                         _target1197712360_
                         _tl1197912362_))
                    (___match1577015771_
                     _e1197412352_
                     _hd1197512355_
                     _tl1197612357_
                     ___splice1573515736_
                     _target1197712360_
                     _tl1197912362_))
                (___match1577015771_
                 _e1197412352_
                 _hd1197512355_
                 _tl1197612357_
                 ___splice1573515736_
                 _target1197712360_
                 _tl1197912362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1577015771_
                                                 _e1197412352_
                                                 _hd1197512355_
                                                 _tl1197612357_
                                                 ___splice1573515736_
                                                 _target1197712360_
                                                 _tl1197912362_))))
                                        (___match1577015771_
                                         _e1197412352_
                                         _hd1197512355_
                                         _tl1197612357_
                                         ___splice1573515736_
                                         _target1197712360_
                                         _tl1197912362_))
                                    (___match1577015771_
                                     _e1197412352_
                                     _hd1197512355_
                                     _tl1197612357_
                                     ___splice1573515736_
                                     _target1197712360_
                                     _tl1197912362_))
                                (___match1577015771_
                                 _e1197412352_
                                 _hd1197512355_
                                 _tl1197612357_
                                 ___splice1573515736_
                                 _target1197712360_
                                 _tl1197912362_))))
                        (___match1577015771_
                         _e1197412352_
                         _hd1197512355_
                         _tl1197612357_
                         ___splice1573515736_
                         _target1197712360_
                         _tl1197912362_))))
                (___match1577015771_
                 _e1197412352_
                 _hd1197512355_
                 _tl1197612357_
                 ___splice1573515736_
                 _target1197712360_
                 _tl1197912362_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1198012365_
                                     _target1197712360_
                                     '())))))
                          (if (gx#stx-pair? ___stx1573115732_)
                              (let ((_e1197412352_
                                     (gx#stx-e ___stx1573115732_)))
                                (let ((_tl1197612357_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1197412352_)))
                                      (_hd1197512355_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1197412352_))))
                                  (if (gx#stx-pair/null? _hd1197512355_)
                                      (let ((___splice1573515736_
                                             (gx#syntax-split-splice
                                              _hd1197512355_
                                              '0)))
                                        (let ((_tl1197912362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1573515736_
                                                  '1)))
                                              (_target1197712360_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1573515736_
                                                  '0))))
                                          (if (gx#stx-null? _tl1197912362_)
                                              (___match1575815759_
                                               _e1197412352_
                                               _hd1197512355_
                                               _tl1197612357_
                                               ___splice1573515736_
                                               _target1197712360_
                                               _tl1197912362_)
                                              (___match1577015771_
                                               _e1197412352_
                                               _hd1197512355_
                                               _tl1197612357_
                                               ___splice1573515736_
                                               _target1197712360_
                                               _tl1197912362_))))
                                      (if (gx#stx-pair? _tl1197612357_)
                                          (let ((_e1206212106_
                                                 (gx#stx-e _tl1197612357_)))
                                            (let ((_tl1206412111_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1206212106_)))
                                                  (_hd1206312109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1206212106_))))
                                              (if (gx#stx-pair? _hd1206312109_)
                                                  (let ((_e1206512114_
                                                         (gx#stx-e
                                                          _hd1206312109_)))
                                                    (let ((_tl1206712119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1206512114_)))
                                                          (_hd1206612117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1206512114_))))
                                                      (if (gx#identifier?
                                                           _hd1206612117_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1206612117_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1206712119_)
                          (let ((_e1206812122_ (gx#stx-e _tl1206712119_)))
                            (let ((_tl1207012127_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1206812122_)))
                                  (_hd1206912125_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1206812122_))))
                              (if (gx#stx-pair? _hd1206912125_)
                                  (let ((_e1207112130_
                                         (gx#stx-e _hd1206912125_)))
                                    (let ((_tl1207312135_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1207112130_)))
                                          (_hd1207212133_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1207112130_))))
                                      (if (gx#identifier? _hd1207212133_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1207212133_)
                                              (if (gx#stx-pair? _tl1207312135_)
                                                  (let ((_e1207412138_
                                                         (gx#stx-e
                                                          _tl1207312135_)))
                                                    (let ((_tl1207612143_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1207412138_)))
                                                          (_hd1207512141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1207412138_))))
                                                      (if (gx#stx-null?
                                                           _tl1207612143_)
                                                          (if (gx#stx-pair?
                                                               _tl1207012127_)
                                                              (let ((_e1207712146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1207012127_)))
                        (let ((_tl1207912151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1207712146_)))
                              (_hd1207812149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1207712146_))))
                          (if (gx#stx-pair? _hd1207812149_)
                              (let ((_e1208012154_ (gx#stx-e _hd1207812149_)))
                                (let ((_tl1208212159_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1208012154_)))
                                      (_hd1208112157_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1208012154_))))
                                  (if (gx#identifier? _hd1208112157_)
                                      (if (gx#stx-eq? '%#ref _hd1208112157_)
                                          (if (gx#stx-pair? _tl1208212159_)
                                              (let ((_e1208312162_
                                                     (gx#stx-e
                                                      _tl1208212159_)))
                                                (let ((_tl1208512167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1208312162_)))
                                                      (_hd1208412165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1208312162_))))
                                                  (if (gx#stx-null?
                                                       _tl1208512167_)
                                                      (if (gx#stx-pair?
                                                           _tl1207912151_)
                                                          (let ((_e1208612170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1207912151_)))
                    (let ((_tl1208812175_
                           (let () (declare (not safe)) (##cdr _e1208612170_)))
                          (_hd1208712173_
                           (let ()
                             (declare (not safe))
                             (##car _e1208612170_))))
                      (if (gx#stx-null? _tl1208812175_)
                          (if (gx#stx-null? _tl1206412111_)
                              (___kont1574315744_
                               _hd1208412165_
                               _hd1207512141_
                               _hd1197512355_)
                              (_g1196912093_))
                          (_g1196912093_))))
                  (_g1196912093_))
              (_g1196912093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1196912093_))
                                          (_g1196912093_))
                                      (_g1196912093_))))
                              (_g1196912093_))))
                      (_g1196912093_))
                  (_g1196912093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1196912093_))
                                              (_g1196912093_))
                                          (_g1196912093_))))
                                  (_g1196912093_))))
                          (_g1196912093_))
                      (_g1196912093_))
                  (_g1196912093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1196912093_))))
                                          (_g1196912093_)))))
                              (_g1196912093_)))))))
                 (_generate111815_
                  (lambda (_args11950_ _arglen11951_ _hd11952_ _body11953_)
                    (let* ((_len11955_ (gx#stx-length _hd11952_))
                           (_condition11957_
                            (if (gx#stx-list? _hd11952_)
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _arglen11951_
                                                (cons _len11955_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _arglen11951_ (cons _len11955_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _len11955_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _arglen11951_
                                                    (cons _len11955_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _arglen11951_ (cons _len11955_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_dispatch11959_
                            (if (_dispatch-case?11813_ _hd11952_ _body11953_)
                                (_dispatch-case-e11814_ _hd11952_ _body11953_)
                                (gxc#generate-runtime-lambda-form
                                 _hd11952_
                                 _body11953_))))
                      (cons _condition11957_
                            (cons (cons 'apply
                                        (cons _dispatch11959_
                                              (cons _args11950_ '())))
                                  '()))))))
          (let* ((_g1181711845_
                  (lambda (_g1181811842_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1181811842_)))
                 (_g1181611947_
                  (lambda (_g1181811848_)
                    (if (gx#stx-pair? _g1181811848_)
                        (let ((_e1182111850_ (gx#stx-e _g1181811848_)))
                          (let ((_hd1182211853_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1182111850_)))
                                (_tl1182311855_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1182111850_))))
                            (if (gx#stx-pair/null? _tl1182311855_)
                                (let ((_g16679_
                                       (gx#syntax-split-splice
                                        _tl1182311855_
                                        '0)))
                                  (begin
                                    (let ((_g16680_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g16679_)
                                                 (##vector-length _g16679_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g16680_ 2)))
                                          (error "Context expects 2 values"
                                                 _g16680_)))
                                    (let ((_target1182411858_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16679_ 0)))
                                          (_tl1182611860_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16679_ 1))))
                                      (if (gx#stx-null? _tl1182611860_)
                                          (letrec ((_loop1182711863_
                                                    (lambda (_hd1182511866_
                                                             _body1183111868_
                                                             _hd1183211870_)
                                                      (if (gx#stx-pair?
                                                           _hd1182511866_)
                                                          (let ((_e1182811873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1182511866_)))
                    (let ((_lp-hd1182911876_
                           (let () (declare (not safe)) (##car _e1182811873_)))
                          (_lp-tl1183011878_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1182811873_))))
                      (if (gx#stx-pair? _lp-hd1182911876_)
                          (let ((_e1183511881_ (gx#stx-e _lp-hd1182911876_)))
                            (let ((_hd1183611884_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1183511881_)))
                                  (_tl1183711886_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1183511881_))))
                              (if (gx#stx-pair? _tl1183711886_)
                                  (let ((_e1183811889_
                                         (gx#stx-e _tl1183711886_)))
                                    (let ((_hd1183911892_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1183811889_)))
                                          (_tl1184011894_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1183811889_))))
                                      (if (gx#stx-null? _tl1184011894_)
                                          (_loop1182711863_
                                           _lp-tl1183011878_
                                           (cons _hd1183911892_
                                                 _body1183111868_)
                                           (cons _hd1183611884_
                                                 _hd1183211870_))
                                          (_g1181711845_ _g1181811848_))))
                                  (_g1181711845_ _g1181811848_))))
                          (_g1181711845_ _g1181811848_))))
                  (let ((_body1183311897_ (reverse _body1183111868_))
                        (_hd1183411899_ (reverse _hd1183211870_)))
                    ((lambda (_L11902_ _L11903_)
                       (let ((_args11922_ (gxc#generate-runtime-temporary__0))
                             (_arglen11923_
                              (gxc#generate-runtime-temporary__0))
                             (_name11924_
                              (let ((_$e11919_
                                     (table-ref
                                      (gxc#current-compile-runtime-names)
                                      _stx11811_
                                      '#f)))
                                (if _$e11919_
                                    _$e11919_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _args11922_
                                     (cons (cons 'let
                                                 (cons (cons (cons _arglen11923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _args11922_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args11922_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (foldr1 cons
                                   (cons (cons 'else
                                               (cons (cons '##raise-wrong-number-of-arguments-exception
                                                           (cons _name11924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _args11922_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (map (lambda (_g1192511928_ _g1192611930_)
                                          (_generate111815_
                                           _args11922_
                                           _arglen11923_
                                           _g1192511928_
                                           _g1192611930_))
                                        (foldr1 (lambda (_g1193211935_
                                                         _g1193311937_)
                                                  (cons _g1193211935_
                                                        _g1193311937_))
                                                '()
                                                _L11903_)
                                        (foldr1 (lambda (_g1193911942_
                                                         _g1194011944_)
                                                  (cons _g1193911942_
                                                        _g1194011944_))
                                                '()
                                                _L11902_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _body1183311897_
                     _hd1183411899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1182711863_
                                             _target1182411858_
                                             '()
                                             '()))
                                          (_g1181711845_ _g1181811848_)))))
                                (_g1181711845_ _g1181811848_))))
                        (_g1181711845_ _g1181811848_)))))
            (_g1181611947_ _stx11811_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx11085_ _compiled-body?11086_)
        (letrec ((_generate-simple11088_
                  (lambda (_hd11798_ _body11799_)
                    (_coalesce-boolean11089_
                     (_coalesce-let*11090_
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd11798_
                       _body11799_
                       _compiled-body?11086_)))))
                 (_coalesce-boolean11089_
                  (lambda (_code11659_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code1166011686_ _code11659_)
                               (_else1166211694_ (lambda () _code11659_))
                               (_K1166411731_
                                (lambda (_expr211697_ _expr111698_ _id11699_)
                                  (let* ((_expr21170011708_ _expr211697_)
                                         (_else1170211716_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _expr111698_
                                                        (cons _expr211697_
                                                              '())))))
                                         (_K1170411721_
                                          (lambda (_exprs11719_)
                                            (cons 'or
                                                  (cons _expr111698_
                                                        _exprs11719_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr21170011708_))
                                        (let ((_hd1170511724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr21170011708_)))
                                              (_tl1170611726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr21170011708_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1170511724_ 'or))
                                              (let ((_exprs11729_
                                                     _tl1170611726_))
                                                (_K1170411721_ _exprs11729_))
                                              (_else1170211716_)))
                                        (_else1170211716_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code1166011686_))
                              (let ((_hd1166511734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code1166011686_)))
                                    (_tl1166611736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code1166011686_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd1166511734_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl1166611736_))
                                        (let ((_hd1166711739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl1166611736_)))
                                              (_tl1166811741_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl1166611736_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd1166711739_))
                                              (let ((_hd1167911744_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd1166711739_)))
                                                    (_tl1168011746_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd1166711739_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd1167911744_))
                                                    (let ((_hd1168111749_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd1167911744_)))
                                                          (_tl1168211751_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd1167911744_))))
                                                      (let ((_id11754_
                                                             _hd1168111749_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl1168211751_))
                                                            (let ((_hd1168311756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl1168211751_)))
                          (_tl1168411758_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl1168211751_))))
                      (let ((_expr111761_ _hd1168311756_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl1168411758_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl1168011746_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1166811741_))
                                    (let ((_hd1166911763_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1166811741_)))
                                          (_tl1167011765_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1166811741_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1166911763_))
                                          (let ((_hd1167111768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1166911763_)))
                                                (_tl1167211770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1166911763_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1167111768_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl1167211770_))
                                                    (let ((_hd1167311773_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl1167211770_)))
                                                          (_tl1167411775_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl1167211770_))))
                                                      (if ((lambda (_g1177711779_)
                                                             (eq? _g1177711779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id11754_))
                   _hd1167311773_)
                  (if (let () (declare (not safe)) (##pair? _tl1167411775_))
                      (let ((_hd1167511782_
                             (let ()
                               (declare (not safe))
                               (##car _tl1167411775_)))
                            (_tl1167611784_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl1167411775_))))
                        (if ((lambda (_g1178611788_)
                               (eq? _g1178611788_ _id11754_))
                             _hd1167511782_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl1167611784_))
                                (let ((_hd1167711791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl1167611784_)))
                                      (_tl1167811793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl1167611784_))))
                                  (let ((_expr211796_ _hd1167711791_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1167811793_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl1167011765_))
                                            (_K1166411731_
                                             _expr211796_
                                             _expr111761_
                                             _id11754_)
                                            (_else1166211694_))
                                        (_else1166211694_))))
                                (_else1166211694_))
                            (_else1166211694_)))
                      (_else1166211694_))
                  (_else1166211694_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1166211694_))
                                                (_else1166211694_)))
                                          (_else1166211694_)))
                                    (_else1166211694_))
                                (_else1166211694_))
                            (_else1166211694_))))
                    (_else1166211694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1166211694_)))
                                              (_else1166211694_)))
                                        (_else1166211694_))
                                    (_else1166211694_)))
                              (_else1166211694_)))
                        _code11659_)))
                 (_coalesce-let*11090_
                  (lambda (_code11392_)
                    (let* ((_code1139311457_ _code11392_)
                           (_else1139711465_ (lambda () _code11392_)))
                      (let ((_K1143911610_
                             (lambda (_body11606_ _expr11607_ _id11608_)
                               (cons 'let
                                     (cons (cons (cons _id11608_
                                                       (cons _expr11607_ '()))
                                                 '())
                                           _body11606_))))
                            (_K1141611535_
                             (lambda (_body11529_
                                      _expr211530_
                                      _id211531_
                                      _expr111532_
                                      _id111533_)
                               (cons 'let*
                                     (cons (cons (cons _id111533_
                                                       (cons _expr111532_ '()))
                                                 (cons (cons _id211531_
                                                             (cons _expr211530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body11529_))))
                            (_K1139911474_
                             (lambda (_body11469_
                                      _bind11470_
                                      _expr111471_
                                      _id111472_)
                               (cons 'let*
                                     (cons (cons (cons _id111472_
                                                       (cons _expr111471_ '()))
                                                 _bind11470_)
                                           _body11469_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code1139311457_))
                            (let ((_tl1144111615_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code1139311457_)))
                                  (_hd1144011613_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code1139311457_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd1144011613_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1144111615_))
                                      (let ((_tl1144311620_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1144111615_)))
                                            (_hd1144211618_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1144111615_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd1144211618_))
                                            (let ((_tl1145111625_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd1144211618_)))
                                                  (_hd1145011623_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd1144211618_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd1145011623_))
                                                  (let ((_tl1145311630_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd1145011623_)))
                                                        (_hd1145211628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd1145011623_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1145311630_))
                                                        (let ((_tl1145511637_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1145311630_)))
                      (_hd1145411635_
                       (let () (declare (not safe)) (##car _tl1145311630_))))
                  (if (let () (declare (not safe)) (##null? _tl1145511637_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl1145111625_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl1144311620_))
                              (let ((_tl1144511644_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl1144311620_)))
                                    (_hd1144411642_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl1144311620_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1144411642_))
                                    (let ((_tl1144711649_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1144411642_)))
                                          (_hd1144611647_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1144411642_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd1144611647_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl1144711649_))
                                              (let ((_tl1144911654_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl1144711649_)))
                                                    (_hd1144811652_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl1144711649_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd1144811652_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1144511644_))
                                                        (let ((_id11633_
                                                               _hd1145211628_)
                                                              (_expr11640_
                                                               _hd1145411635_)
                                                              (_body11657_
                                                               _tl1144911654_))
                                                          (_K1143911610_
                                                           _body11657_
                                                           _expr11640_
                                                           _id11633_))
                                                        (_else1139711465_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd1144811652_))
                                                        (let ((_tl1142811584_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd1144811652_)))
                      (_hd1142711582_
                       (let () (declare (not safe)) (##car _hd1144811652_))))
                  (if (let () (declare (not safe)) (##pair? _hd1142711582_))
                      (let ((_tl1143011589_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd1142711582_)))
                            (_hd1142911587_
                             (let ()
                               (declare (not safe))
                               (##car _hd1142711582_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1143011589_))
                            (let ((_tl1143211596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1143011589_)))
                                  (_hd1143111594_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1143011589_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1143211596_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1142811584_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1144511644_))
                                          (let ((_id111558_ _hd1145211628_)
                                                (_expr111565_ _hd1145411635_)
                                                (_id211592_ _hd1142911587_)
                                                (_expr211599_ _hd1143111594_)
                                                (_body11601_ _tl1144911654_))
                                            (_K1141611535_
                                             _body11601_
                                             _expr211599_
                                             _id211592_
                                             _expr111565_
                                             _id111558_))
                                          (_else1139711465_))
                                      (_else1139711465_))
                                  (_else1139711465_)))
                            (_else1139711465_)))
                      (_else1139711465_)))
                (_else1139711465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_else1139711465_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1144611647_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl1144711649_))
                                                  (let ((_tl1140911518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl1144711649_)))
                                                        (_hd1140811516_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl1144711649_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1144511644_))
                                                        (let ((_id111497_
                                                               _hd1145211628_)
                                                              (_expr111504_
                                                               _hd1145411635_)
                                                              (_bind11521_
                                                               _hd1140811516_)
                                                              (_body11523_
                                                               _tl1140911518_))
                                                          (_K1139911474_
                                                           _body11523_
                                                           _bind11521_
                                                           _expr111504_
                                                           _id111497_))
                                                        (_else1139711465_)))
                                                  (_else1139711465_))
                                              (_else1139711465_))))
                                    (_else1139711465_)))
                              (_else1139711465_))
                          (_else1139711465_))
                      (_else1139711465_)))
                (_else1139711465_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_else1139711465_)))
                                            (_else1139711465_)))
                                      (_else1139711465_))
                                  (_else1139711465_)))
                            (_else1139711465_))))))
                 (_generate-values11091_
                  (lambda (_hd11205_ _body11206_)
                    (let _lp11208_ ((_rest11210_ _hd11205_)
                                    (_bind11211_ '())
                                    (_check11212_ '())
                                    (_post11213_ '()))
                      (let* ((___stx1604216043_ _rest11210_)
                             (_g1121611227_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1604216043_))))
                        (let ((___kont1604416045_
                               (lambda (_L11254_ _L11255_)
                                 (let* ((___stx1599815999_ _L11255_)
                                        (_g1127011295_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1599815999_))))
                                   (let ((___kont1600016001_
                                          (lambda (_L11368_ _L11369_)
                                            (let ((_eid11383_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L11369_))
                                                  (_expr11384_
                                                   (gxc#compile-e _L11368_)))
                                              (_lp11208_
                                               _L11254_
                                               (cons (cons _eid11383_
                                                           (cons _expr11384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind11211_)
                                               _check11212_
                                               _post11213_))))
                                         (___kont1600216003_
                                          (lambda (_L11316_ _L11317_)
                                            (let* ((_vals11330_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values11332_
                                                    (gxc#generate-runtime-check-values
                                                     _vals11330_
                                                     _L11317_
                                                     _L11316_))
                                                   (_refs11334_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals11330_
                                                     _L11317_))
                                                   (_expr11336_
                                                    (gxc#compile-e _L11316_)))
                                              (_lp11208_
                                               _L11254_
                                               (cons (cons _vals11330_
                                                           (cons _expr11336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind11211_)
                                               (cons _check-values11332_
                                                     _check11212_)
                                               (cons _refs11334_
                                                     _post11213_))))))
                                     (if (gx#stx-pair? ___stx1599815999_)
                                         (let ((_e1127411344_
                                                (gx#stx-e ___stx1599815999_)))
                                           (let ((_tl1127611349_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1127411344_)))
                                                 (_hd1127511347_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1127411344_))))
                                             (if (gx#stx-pair? _hd1127511347_)
                                                 (let ((_e1127711352_
                                                        (gx#stx-e
                                                         _hd1127511347_)))
                                                   (let ((_tl1127911357_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1127711352_)))
                                                         (_hd1127811355_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1127711352_))))
                                                     (if (gx#stx-null?
                                                          _tl1127911357_)
                                                         (if (gx#stx-pair?
                                                              _tl1127611349_)
                                                             (let ((_e1128011360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1127611349_)))
                       (let ((_tl1128211365_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1128011360_)))
                             (_hd1128111363_
                              (let ()
                                (declare (not safe))
                                (##car _e1128011360_))))
                         (if (gx#stx-null? _tl1128211365_)
                             (___kont1600016001_ _hd1128111363_ _hd1127811355_)
                             (_g1127011295_))))
                     (_g1127011295_))
                 (if (gx#stx-pair? _tl1127611349_)
                     (let ((_e1128811308_ (gx#stx-e _tl1127611349_)))
                       (let ((_tl1129011313_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1128811308_)))
                             (_hd1128911311_
                              (let ()
                                (declare (not safe))
                                (##car _e1128811308_))))
                         (if (gx#stx-null? _tl1129011313_)
                             (___kont1600216003_ _hd1128911311_ _hd1127511347_)
                             (_g1127011295_))))
                     (_g1127011295_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1127611349_)
                                                     (let ((_e1128811308_
                                                            (gx#stx-e
                                                             _tl1127611349_)))
                                                       (let ((_tl1129011313_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1128811308_)))
                     (_hd1128911311_
                      (let () (declare (not safe)) (##car _e1128811308_))))
                 (if (gx#stx-null? _tl1129011313_)
                     (___kont1600216003_ _hd1128911311_ _hd1127511347_)
                     (_g1127011295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1127011295_)))))
                                         (_g1127011295_))))))
                              (___kont1604616047_
                               (lambda ()
                                 (let* ((_body11234_
                                         (if _compiled-body?11086_
                                             _body11206_
                                             (gxc#compile-e _body11206_)))
                                        (_body11236_
                                         (_generate-values-post11092_
                                          _post11213_
                                          _body11234_))
                                        (_body11238_
                                         (_generate-values-check11093_
                                          _check11212_
                                          _body11236_)))
                                   (cons 'let
                                         (cons (reverse _bind11211_)
                                               (cons _body11238_ '())))))))
                          (if (gx#stx-pair? ___stx1604216043_)
                              (let ((_e1122011246_
                                     (gx#stx-e ___stx1604216043_)))
                                (let ((_tl1122211251_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1122011246_)))
                                      (_hd1122111249_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1122011246_))))
                                  (___kont1604416045_
                                   _tl1122211251_
                                   _hd1122111249_)))
                              (___kont1604616047_)))))))
                 (_generate-values-post11092_
                  (lambda (_post11164_ _body11165_)
                    (let _lp11167_ ((_rest11169_ _post11164_)
                                    (_body11170_ _body11165_))
                      (let* ((_rest1117111179_ _rest11169_)
                             (_else1117311187_ (lambda () _body11170_))
                             (_K1117511193_
                              (lambda (_rest11190_ _bind11191_)
                                (_lp11167_
                                 _rest11190_
                                 (cons 'let
                                       (cons _bind11191_
                                             (cons _body11170_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1117111179_))
                            (let ((_hd1117611196_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1117111179_)))
                                  (_tl1117711198_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1117111179_))))
                              (let* ((_bind11201_ _hd1117611196_)
                                     (_rest11203_ _tl1117711198_))
                                (_K1117511193_ _rest11203_ _bind11201_)))
                            (_else1117311187_))))))
                 (_generate-values-check11093_
                  (lambda (_check11161_ _body11162_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body11162_ '())
                                  (reverse _check11161_))))))
          (let* ((_g1109511112_
                  (lambda (_g1109611109_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1109611109_)))
                 (_g1109411158_
                  (lambda (_g1109611115_)
                    (if (gx#stx-pair? _g1109611115_)
                        (let ((_e1109911117_ (gx#stx-e _g1109611115_)))
                          (let ((_hd1110011120_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1109911117_)))
                                (_tl1110111122_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1109911117_))))
                            (if (gx#stx-pair? _tl1110111122_)
                                (let ((_e1110211125_
                                       (gx#stx-e _tl1110111122_)))
                                  (let ((_hd1110311128_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1110211125_)))
                                        (_tl1110411130_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1110211125_))))
                                    (if (gx#stx-pair? _tl1110411130_)
                                        (let ((_e1110511133_
                                               (gx#stx-e _tl1110411130_)))
                                          (let ((_hd1110611136_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1110511133_)))
                                                (_tl1110711138_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1110511133_))))
                                            (if (gx#stx-null? _tl1110711138_)
                                                ((lambda (_L11141_ _L11142_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L11142_)
                                                       (_generate-simple11088_
                                                        _L11142_
                                                        _L11141_)
                                                       (_generate-values11091_
                                                        _L11142_
                                                        _L11141_)))
                                                 _hd1110611136_
                                                 _hd1110311128_)
                                                (_g1109511112_
                                                 _g1109611115_))))
                                        (_g1109511112_ _g1109611115_))))
                                (_g1109511112_ _g1109611115_))))
                        (_g1109511112_ _g1109611115_)))))
            (_g1109411158_ _stx11085_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_stx11804_)
        (let ((_compiled-body?11806_ '#f))
          (gxc#generate-runtime-let-values%__%
           _stx11804_
           _compiled-body?11806_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g16682_
        (let ((_g16681_ (let () (declare (not safe)) (##length _g16682_))))
          (cond ((let () (declare (not safe)) (##fx= _g16681_ 1))
                 (apply gxc#generate-runtime-let-values%__0 _g16682_))
                ((let () (declare (not safe)) (##fx= _g16681_ 2))
                 (apply gxc#generate-runtime-let-values%__% _g16682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g16682_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals10979_ _hd10980_)
        (let _lp10982_ ((_rest10984_ _hd10980_) (_k10985_ '0) (_r10986_ '()))
          (let* ((___stx1605616057_ _rest10984_)
                 (_g1099111008_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1605616057_))))
            (let ((___kont1605816059_
                   (lambda (_L11071_)
                     (_lp10982_ _L11071_ (fx+ _k10985_ '1) _r10986_)))
                  (___kont1606016061_
                   (lambda (_L11044_ _L11045_)
                     (_lp10982_
                      _L11044_
                      (fx+ _k10985_ '1)
                      (cons (cons (gxc#generate-runtime-binding-id _L11045_)
                                  (cons (gxc#generate-runtime-values-ref
                                         _vals10979_
                                         _k10985_
                                         _L11044_)
                                        '()))
                            _r10986_))))
                  (___kont1606216063_
                   (lambda (_L11020_)
                     (foldl1 cons
                             (cons (cons (gxc#generate-runtime-binding-id
                                          _L11020_)
                                         (cons (gxc#generate-runtime-values->list
                                                _vals10979_
                                                _k10985_)
                                               '()))
                                   '())
                             _r10986_)))
                  (___kont1606416065_ (lambda () (reverse _r10986_))))
              (let ((_g1098911031_
                     (lambda ()
                       (let ((_L11020_ ___stx1605616057_))
                         (if (gx#identifier? _L11020_)
                             (___kont1606216063_ _L11020_)
                             (___kont1606416065_))))))
                (if (gx#stx-pair? ___stx1605616057_)
                    (let ((_e1099411060_ (gx#stx-e ___stx1605616057_)))
                      (let ((_tl1099611065_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1099411060_)))
                            (_hd1099511063_
                             (let ()
                               (declare (not safe))
                               (##car _e1099411060_))))
                        (if (gx#stx-datum? _hd1099511063_)
                            (let ((_e1099711068_ (gx#stx-e _hd1099511063_)))
                              (if (equal? _e1099711068_ '#f)
                                  (___kont1605816059_ _tl1099611065_)
                                  (___kont1606016061_
                                   _tl1099611065_
                                   _hd1099511063_)))
                            (___kont1606016061_
                             _tl1099611065_
                             _hd1099511063_))))
                    (_g1098911031_))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx10661_ _compiled-body?10662_)
        (letrec ((_generate-simple10664_
                  (lambda (_hd10966_ _body10967_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd10966_
                     _body10967_
                     _compiled-body?10662_)))
                 (_generate-values10665_
                  (lambda (_hd10745_ _body10746_)
                    (let _lp10748_ ((_rest10750_ _hd10745_)
                                    (_bind10751_ '())
                                    (_check10752_ '())
                                    (_post10753_ '()))
                      (let* ((___stx1613016131_ _rest10750_)
                             (_g1075610767_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1613016131_))))
                        (let ((___kont1613216133_
                               (lambda (_L10794_ _L10795_)
                                 (let* ((___stx1608616087_ _L10795_)
                                        (_g1081010835_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1608616087_))))
                                   (let ((___kont1608816089_
                                          (lambda (_L10942_ _L10943_)
                                            (let ((_eid10957_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L10943_))
                                                  (_expr10958_
                                                   (gxc#compile-e _L10942_)))
                                              (_lp10748_
                                               _L10794_
                                               (cons (cons _eid10957_
                                                           (cons _expr10958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind10751_)
                                               _check10752_
                                               _post10753_))))
                                         (___kont1609016091_
                                          (lambda (_L10856_ _L10857_)
                                            (let* ((_vals10870_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values10872_
                                                    (gxc#generate-runtime-check-values
                                                     _vals10870_
                                                     _L10857_
                                                     _L10856_))
                                                   (_refs10874_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals10870_
                                                     _L10857_))
                                                   (_expr10876_
                                                    (gxc#compile-e _L10856_)))
                                              (_lp10748_
                                               _L10794_
                                               (foldl1 cons
                                                       (cons (cons _vals10870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr10876_ '()))
                     _bind10751_)
               (map (lambda (_e1087810880_)
                      (let* ((_g1088210891_ _e1087810880_)
                             (_E1088410895_
                              (lambda ()
                                (error '"No clause matching" _g1088210891_)))
                             (_K1088510900_
                              (lambda (_eid10898_)
                                (cons _eid10898_ (cons '#!void '())))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _g1088210891_))
                            (let ((_hd1088610903_
                                   (let ()
                                     (declare (not safe))
                                     (##car _g1088210891_)))
                                  (_tl1088710905_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _g1088210891_))))
                              (let ((_eid10908_ _hd1088610903_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1088710905_))
                                    (let ((_tl1088910910_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1088710905_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1088910910_))
                                          (_K1088510900_ _eid10908_)
                                          (_E1088410895_)))
                                    (_E1088410895_))))
                            (_E1088410895_))))
                    _refs10874_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values10872_
                                                     _check10752_)
                                               (foldl1 cons
                                                       _refs10874_
                                                       _post10753_))))))
                                     (if (gx#stx-pair? ___stx1608616087_)
                                         (let ((_e1081410918_
                                                (gx#stx-e ___stx1608616087_)))
                                           (let ((_tl1081610923_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1081410918_)))
                                                 (_hd1081510921_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1081410918_))))
                                             (if (gx#stx-pair? _hd1081510921_)
                                                 (let ((_e1081710926_
                                                        (gx#stx-e
                                                         _hd1081510921_)))
                                                   (let ((_tl1081910931_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1081710926_)))
                                                         (_hd1081810929_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1081710926_))))
                                                     (if (gx#stx-null?
                                                          _tl1081910931_)
                                                         (if (gx#stx-pair?
                                                              _tl1081610923_)
                                                             (let ((_e1082010934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1081610923_)))
                       (let ((_tl1082210939_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1082010934_)))
                             (_hd1082110937_
                              (let ()
                                (declare (not safe))
                                (##car _e1082010934_))))
                         (if (gx#stx-null? _tl1082210939_)
                             (___kont1608816089_ _hd1082110937_ _hd1081810929_)
                             (_g1081010835_))))
                     (_g1081010835_))
                 (if (gx#stx-pair? _tl1081610923_)
                     (let ((_e1082810848_ (gx#stx-e _tl1081610923_)))
                       (let ((_tl1083010853_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1082810848_)))
                             (_hd1082910851_
                              (let ()
                                (declare (not safe))
                                (##car _e1082810848_))))
                         (if (gx#stx-null? _tl1083010853_)
                             (___kont1609016091_ _hd1082910851_ _hd1081510921_)
                             (_g1081010835_))))
                     (_g1081010835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1081610923_)
                                                     (let ((_e1082810848_
                                                            (gx#stx-e
                                                             _tl1081610923_)))
                                                       (let ((_tl1083010853_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1082810848_)))
                     (_hd1082910851_
                      (let () (declare (not safe)) (##car _e1082810848_))))
                 (if (gx#stx-null? _tl1083010853_)
                     (___kont1609016091_ _hd1082910851_ _hd1081510921_)
                     (_g1081010835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1081010835_)))))
                                         (_g1081010835_))))))
                              (___kont1613416135_
                               (lambda ()
                                 (let* ((_body10774_
                                         (if _compiled-body?10662_
                                             _body10746_
                                             (gxc#compile-e _body10746_)))
                                        (_body10776_
                                         (_generate-values-post10667_
                                          _post10753_
                                          _body10774_))
                                        (_body10778_
                                         (_generate-values-check10666_
                                          _check10752_
                                          _body10776_)))
                                   (cons 'letrec
                                         (cons (reverse _bind10751_)
                                               (cons _body10778_ '())))))))
                          (if (gx#stx-pair? ___stx1613016131_)
                              (let ((_e1076010786_
                                     (gx#stx-e ___stx1613016131_)))
                                (let ((_tl1076210791_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1076010786_)))
                                      (_hd1076110789_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1076010786_))))
                                  (___kont1613216133_
                                   _tl1076210791_
                                   _hd1076110789_)))
                              (___kont1613416135_)))))))
                 (_generate-values-check10666_
                  (lambda (_check10742_ _body10743_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body10743_ '())
                                  (reverse _check10742_)))))
                 (_generate-values-post10667_
                  (lambda (_post10735_ _body10736_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body10736_ '())
                                  (map (lambda (_g1073710739_)
                                         (cons 'set! _g1073710739_))
                                       (reverse _post10735_)))))))
          (let* ((_g1066910686_
                  (lambda (_g1067010683_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1067010683_)))
                 (_g1066810732_
                  (lambda (_g1067010689_)
                    (if (gx#stx-pair? _g1067010689_)
                        (let ((_e1067310691_ (gx#stx-e _g1067010689_)))
                          (let ((_hd1067410694_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1067310691_)))
                                (_tl1067510696_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1067310691_))))
                            (if (gx#stx-pair? _tl1067510696_)
                                (let ((_e1067610699_
                                       (gx#stx-e _tl1067510696_)))
                                  (let ((_hd1067710702_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1067610699_)))
                                        (_tl1067810704_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1067610699_))))
                                    (if (gx#stx-pair? _tl1067810704_)
                                        (let ((_e1067910707_
                                               (gx#stx-e _tl1067810704_)))
                                          (let ((_hd1068010710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1067910707_)))
                                                (_tl1068110712_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1067910707_))))
                                            (if (gx#stx-null? _tl1068110712_)
                                                ((lambda (_L10715_ _L10716_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L10716_)
                                                       (_generate-simple10664_
                                                        _L10716_
                                                        _L10715_)
                                                       (_generate-values10665_
                                                        _L10716_
                                                        _L10715_)))
                                                 _hd1068010710_
                                                 _hd1067710702_)
                                                (_g1066910686_
                                                 _g1067010689_))))
                                        (_g1066910686_ _g1067010689_))))
                                (_g1066910686_ _g1067010689_))))
                        (_g1066910686_ _g1067010689_)))))
            (_g1066810732_ _stx10661_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_stx10972_)
        (let ((_compiled-body?10974_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _stx10972_
           _compiled-body?10974_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g16684_
        (let ((_g16683_ (let () (declare (not safe)) (##length _g16684_))))
          (cond ((let () (declare (not safe)) (##fx= _g16683_ 1))
                 (apply gxc#generate-runtime-letrec-values%__0 _g16684_))
                ((let () (declare (not safe)) (##fx= _g16683_ 2))
                 (apply gxc#generate-runtime-letrec-values%__% _g16684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g16684_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_stx10243_)
        (letrec ((_generate-values10245_
                  (lambda (_hd10488_ _body10489_)
                    (let _lp10491_ ((_rest10493_ _hd10488_) (_bind10494_ '()))
                      (let* ((_rest1049510503_ _rest10493_)
                             (_else1049710514_
                              (lambda ()
                                (let ((_bind10511_ (reverse _bind10494_))
                                      (_body10512_
                                       (gxc#compile-e _body10489_)))
                                  (cons 'letrec*
                                        (cons _bind10511_
                                              (cons _body10512_ '()))))))
                             (_K1049910648_
                              (lambda (_rest10517_ _hd-bind10518_)
                                (let* ((___stx1614416145_ _hd-bind10518_)
                                       (_g1052110546_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1614416145_))))
                                  (let ((___kont1614616147_
                                         (lambda (_L10627_ _L10628_)
                                           (let ((_eid10642_
                                                  (gxc#generate-runtime-binding-id*
                                                   _L10628_))
                                                 (_expr10643_
                                                  (gxc#compile-e _L10627_)))
                                             (_lp10491_
                                              _rest10517_
                                              (cons (cons _eid10642_
                                                          (cons _expr10643_
                                                                '()))
                                                    _bind10494_)))))
                                        (___kont1614816149_
                                         (lambda (_L10567_ _L10568_)
                                           (let* ((_vals10587_
                                                   (gxc#generate-runtime-temporary__0))
                                                  (_tmp10589_
                                                   (gxc#generate-runtime-temporary__0))
                                                  (_check-values10591_
                                                   (gxc#generate-runtime-check-values
                                                    _tmp10589_
                                                    _L10568_
                                                    _L10567_))
                                                  (_refs10593_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _vals10587_
                                                    _L10568_))
                                                  (_expr10595_
                                                   (gxc#compile-e _L10567_)))
                                             (_lp10491_
                                              _rest10517_
                                              (foldl1 cons
                                                      (cons (cons _vals10587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons 'let
                                      (cons (cons (cons _tmp10589_
                                                        (cons _expr10595_ '()))
                                                  '())
                                            (cons _check-values10591_
                                                  (cons _tmp10589_ '()))))
                                '()))
                    _bind10494_)
              _refs10593_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (gx#stx-pair? ___stx1614416145_)
                                        (let ((_e1052510603_
                                               (gx#stx-e ___stx1614416145_)))
                                          (let ((_tl1052710608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1052510603_)))
                                                (_hd1052610606_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1052510603_))))
                                            (if (gx#stx-pair? _hd1052610606_)
                                                (let ((_e1052810611_
                                                       (gx#stx-e
                                                        _hd1052610606_)))
                                                  (let ((_tl1053010616_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1052810611_)))
                                                        (_hd1052910614_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1052810611_))))
                                                    (if (gx#stx-null?
                                                         _tl1053010616_)
                                                        (if (gx#stx-pair?
                                                             _tl1052710608_)
                                                            (let ((_e1053110619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1052710608_)))
                      (let ((_tl1053310624_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1053110619_)))
                            (_hd1053210622_
                             (let ()
                               (declare (not safe))
                               (##car _e1053110619_))))
                        (if (gx#stx-null? _tl1053310624_)
                            (___kont1614616147_ _hd1053210622_ _hd1052910614_)
                            (_g1052110546_))))
                    (_g1052110546_))
                (if (gx#stx-pair? _tl1052710608_)
                    (let ((_e1053910559_ (gx#stx-e _tl1052710608_)))
                      (let ((_tl1054110564_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1053910559_)))
                            (_hd1054010562_
                             (let ()
                               (declare (not safe))
                               (##car _e1053910559_))))
                        (if (gx#stx-null? _tl1054110564_)
                            (___kont1614816149_ _hd1054010562_ _hd1052610606_)
                            (_g1052110546_))))
                    (_g1052110546_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl1052710608_)
                                                    (let ((_e1053910559_
                                                           (gx#stx-e
                                                            _tl1052710608_)))
                                                      (let ((_tl1054110564_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1053910559_)))
                    (_hd1054010562_
                     (let () (declare (not safe)) (##car _e1053910559_))))
                (if (gx#stx-null? _tl1054110564_)
                    (___kont1614816149_ _hd1054010562_ _hd1052610606_)
                    (_g1052110546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1052110546_)))))
                                        (_g1052110546_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1049510503_))
                            (let ((_hd1050010651_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1049510503_)))
                                  (_tl1050110653_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1049510503_))))
                              (let* ((_hd-bind10656_ _hd1050010651_)
                                     (_rest10658_ _tl1050110653_))
                                (_K1049910648_ _rest10658_ _hd-bind10656_)))
                            (_else1049710514_))))))
                 (_generate-letrec?10246_
                  (lambda (_hd10378_)
                    (let _lp10380_ ((_rest10382_ _hd10378_))
                      (let* ((_rest1038310391_ _rest10382_)
                             (_else1038510399_ (lambda () '#t))
                             (_K1038710476_
                              (lambda (_rest10402_ _hd-bind10403_)
                                (let* ((_g1040510422_
                                        (lambda (_g1040610419_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1040610419_)))
                                       (_g1040410473_
                                        (lambda (_g1040610425_)
                                          (if (gx#stx-pair? _g1040610425_)
                                              (let ((_e1040910427_
                                                     (gx#stx-e _g1040610425_)))
                                                (let ((_hd1041010430_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1040910427_)))
                                                      (_tl1041110432_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1040910427_))))
                                                  (if (gx#stx-pair?
                                                       _hd1041010430_)
                                                      (let ((_e1041210435_
                                                             (gx#stx-e
                                                              _hd1041010430_)))
                                                        (let ((_hd1041310438_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1041210435_)))
                      (_tl1041410440_
                       (let () (declare (not safe)) (##cdr _e1041210435_))))
                  (if (gx#stx-null? _tl1041410440_)
                      (if (gx#stx-pair? _tl1041110432_)
                          (let ((_e1041510443_ (gx#stx-e _tl1041110432_)))
                            (let ((_hd1041610446_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1041510443_)))
                                  (_tl1041710448_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1041510443_))))
                              (if (gx#stx-null? _tl1041710448_)
                                  ((lambda (_L10451_ _L10452_)
                                     (if (_is-lambda-expr?10247_ _L10451_)
                                         (_lp10380_ _rest10402_)
                                         '#f))
                                   _hd1041610446_
                                   _hd1041310438_)
                                  (_g1040510422_ _g1040610425_))))
                          (_g1040510422_ _g1040610425_))
                      (_g1040510422_ _g1040610425_))))
              (_g1040510422_ _g1040610425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1040510422_ _g1040610425_)))))
                                  (_g1040410473_ _hd-bind10403_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1038310391_))
                            (let ((_hd1038810479_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1038310391_)))
                                  (_tl1038910481_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1038310391_))))
                              (let* ((_hd-bind10484_ _hd1038810479_)
                                     (_rest10486_ _tl1038910481_))
                                (_K1038710476_ _rest10486_ _hd-bind10484_)))
                            (_else1038510399_))))))
                 (_is-lambda-expr?10247_
                  (lambda (_expr10315_)
                    (let* ((___stx1618816189_ _expr10315_)
                           (_g1031810332_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1618816189_))))
                      (let ((___kont1619016191_
                             (lambda (_L10360_ _L10361_) '#t))
                            (___kont1619216193_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx1618816189_)
                            (let ((_e1032210344_ (gx#stx-e ___stx1618816189_)))
                              (let ((_tl1032410349_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1032210344_)))
                                    (_hd1032310347_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1032210344_))))
                                (if (gx#identifier? _hd1032310347_)
                                    (if (gx#stx-eq? '%#lambda _hd1032310347_)
                                        (if (gx#stx-pair? _tl1032410349_)
                                            (let ((_e1032510352_
                                                   (gx#stx-e _tl1032410349_)))
                                              (let ((_tl1032710357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1032510352_)))
                                                    (_hd1032610355_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1032510352_))))
                                                (___kont1619016191_
                                                 _tl1032710357_
                                                 _hd1032610355_)))
                                            (___kont1619216193_))
                                        (___kont1619216193_))
                                    (___kont1619216193_))))
                            (___kont1619216193_)))))))
          (let* ((_g1024910266_
                  (lambda (_g1025010263_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1025010263_)))
                 (_g1024810312_
                  (lambda (_g1025010269_)
                    (if (gx#stx-pair? _g1025010269_)
                        (let ((_e1025310271_ (gx#stx-e _g1025010269_)))
                          (let ((_hd1025410274_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1025310271_)))
                                (_tl1025510276_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1025310271_))))
                            (if (gx#stx-pair? _tl1025510276_)
                                (let ((_e1025610279_
                                       (gx#stx-e _tl1025510276_)))
                                  (let ((_hd1025710282_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1025610279_)))
                                        (_tl1025810284_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1025610279_))))
                                    (if (gx#stx-pair? _tl1025810284_)
                                        (let ((_e1025910287_
                                               (gx#stx-e _tl1025810284_)))
                                          (let ((_hd1026010290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1025910287_)))
                                                (_tl1026110292_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1025910287_))))
                                            (if (gx#stx-null? _tl1026110292_)
                                                ((lambda (_L10295_ _L10296_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L10296_)
                                                       (if (_generate-letrec?10246_
                                                            _L10296_)
                                                           (gxc#generate-runtime-simple-let
                                                            'letrec
                                                            _L10296_
                                                            _L10295_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            'letrec*
                                                            _L10296_
                                                            _L10295_
                                                            '#f))
                                                       (_generate-values10245_
                                                        _L10296_
                                                        _L10295_)))
                                                 _hd1026010290_
                                                 _hd1025710282_)
                                                (_g1024910266_
                                                 _g1025010269_))))
                                        (_g1024910266_ _g1025010269_))))
                                (_g1024910266_ _g1025010269_))))
                        (_g1024910266_ _g1025010269_)))))
            (_g1024810312_ _stx10243_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd10180_)
        (let _lp10182_ ((_rest10184_ _hd10180_))
          (let* ((_rest1018510201_ _rest10184_)
                 (_else1018810209_ (lambda () '#f)))
            (let ((_K1019110222_
                   (lambda (_rest10220_) (_lp10182_ _rest10220_)))
                  (_K1019010214_ (lambda () '#t)))
              (let ((_try-match1018710217_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest1018510201_))
                           (_K1019010214_)
                           (_else1018810209_)))))
                (if (let () (declare (not safe)) (##pair? _rest1018510201_))
                    (let ((_tl1019310227_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest1018510201_)))
                          (_hd1019210225_
                           (let ()
                             (declare (not safe))
                             (##car _rest1018510201_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd1019210225_))
                          (let ((_tl1019510232_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd1019210225_)))
                                (_hd1019410230_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd1019210225_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1019410230_))
                                (let ((_tl1019910235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1019410230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1019910235_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1019510232_))
                                          (let ((_tl1019710238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1019510232_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl1019710238_))
                                                (let ((_rest10241_
                                                       _tl1019310227_))
                                                  (_lp10182_ _rest10241_))
                                                (_else1018810209_)))
                                          (_else1018810209_))
                                      (_else1018810209_)))
                                (_else1018810209_)))
                          (_else1018810209_)))
                    (_try-match1018710217_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_form10092_ _hd10093_ _body10094_ _compiled-body?10095_)
        (letrec ((_generate110097_
                  (lambda (_bind10136_)
                    (let* ((_bind1013710148_ _bind10136_)
                           (_E1013910152_
                            (lambda ()
                              (error '"No clause matching" _bind1013710148_)))
                           (_K1014010158_
                            (lambda (_expr10155_ _id10156_)
                              (cons (gxc#generate-runtime-binding-id*
                                     _id10156_)
                                    (cons (gxc#compile-e _expr10155_) '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind1013710148_))
                          (let ((_hd1014110161_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind1013710148_)))
                                (_tl1014210163_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind1013710148_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1014110161_))
                                (let ((_hd1014510166_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd1014110161_)))
                                      (_tl1014610168_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1014110161_))))
                                  (let ((_id10171_ _hd1014510166_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1014610168_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl1014210163_))
                                            (let ((_hd1014310173_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl1014210163_)))
                                                  (_tl1014410175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl1014210163_))))
                                              (let ((_expr10178_
                                                     _hd1014310173_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl1014410175_))
                                                    (_K1014010158_
                                                     _expr10178_
                                                     _id10171_)
                                                    (_E1013910152_))))
                                            (_E1013910152_))
                                        (_E1013910152_))))
                                (_E1013910152_)))
                          (_E1013910152_))))))
          (let* ((_bind10099_ (map _generate110097_ _hd10093_))
                 (_body10101_
                  (if _compiled-body?10095_
                      _body10094_
                      (gxc#compile-e _body10094_)))
                 (_body10133_
                  (let* ((_body1010210110_ _body10101_)
                         (_else1010410118_ (lambda () (cons _body10101_ '())))
                         (_K1010610123_ (lambda (_exprs10121_) _exprs10121_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body1010210110_))
                        (let ((_hd1010710126_
                               (let ()
                                 (declare (not safe))
                                 (##car _body1010210110_)))
                              (_tl1010810128_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body1010210110_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd1010710126_ 'begin))
                              (let ((_exprs10131_ _tl1010810128_))
                                (_K1010610123_ _exprs10131_))
                              (_else1010410118_)))
                        (_else1010410118_)))))
            (cons _form10092_ (cons _bind10099_ _body10133_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_stx10000_)
        (letrec ((_generate110002_
                  (lambda (_datum10054_)
                    (if (or (null? _datum10054_)
                            (interned-symbol? _datum10054_)
                            (gx#self-quoting? _datum10054_)
                            (eof-object? _datum10054_))
                        _datum10054_
                        (if (uninterned-symbol? _datum10054_)
                            (gxc#generate-runtime-gensym-reference__%
                             _datum10054_
                             '#t)
                            (if (pair? _datum10054_)
                                (cons (_generate110002_ (car _datum10054_))
                                      (_generate110002_ (cdr _datum10054_)))
                                (if (box? _datum10054_)
                                    (box (_generate110002_
                                          (unbox _datum10054_)))
                                    (if (vector? _datum10054_)
                                        (vector-map
                                         _generate110002_
                                         _datum10054_)
                                        (if (or (s8vector? _datum10054_)
                                                (u8vector? _datum10054_)
                                                (s16vector? _datum10054_)
                                                (u16vector? _datum10054_)
                                                (s32vector? _datum10054_)
                                                (u32vector? _datum10054_)
                                                (s64vector? _datum10054_)
                                                (u64vector? _datum10054_)
                                                (f32vector? _datum10054_)
                                                (f64vector? _datum10054_))
                                            _datum10054_
                                            (gxc#raise-compile-error
                                             '"Cannot compile non-primitive quote"
                                             _stx10000_))))))))))
          (let* ((_g1000410017_
                  (lambda (_g1000510014_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1000510014_)))
                 (_g1000310051_
                  (lambda (_g1000510020_)
                    (if (gx#stx-pair? _g1000510020_)
                        (let ((_e1000710022_ (gx#stx-e _g1000510020_)))
                          (let ((_hd1000810025_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1000710022_)))
                                (_tl1000910027_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1000710022_))))
                            (if (gx#stx-pair? _tl1000910027_)
                                (let ((_e1001010030_
                                       (gx#stx-e _tl1000910027_)))
                                  (let ((_hd1001110033_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1001010030_)))
                                        (_tl1001210035_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1001010030_))))
                                    (if (gx#stx-null? _tl1001210035_)
                                        ((lambda (_L10038_)
                                           (cons 'quote
                                                 (cons (_generate110002_
                                                        (gx#stx-e _L10038_))
                                                       '())))
                                         _hd1001110033_)
                                        (_g1000410017_ _g1000510020_))))
                                (_g1000410017_ _g1000510020_))))
                        (_g1000410017_ _g1000510020_)))))
            (_g1000310051_ _stx10000_)))))
    (define gxc#generate-runtime-call%
      (lambda (_stx9518_)
        (letrec ((_compile-call9520_
                  (lambda (_rator9744_ _rands9745_)
                    (let ((_rator9747_ (gxc#compile-e _rator9744_))
                          (_rands9748_ (map gxc#compile-e _rands9745_)))
                      (let* ((___stx1623516236_ _rator9747_)
                             (_g97519803_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1623516236_))))
                        (let ((___kont1623716238_
                               (lambda (_L9927_ _L9928_ _L9929_ _L9930_)
                                 (if (fx= (length _rands9748_)
                                          (length (foldr1 (lambda (_g99669969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g99679971_)
                    (cons _g99669969_ _g99679971_))
                  '()
                  _L9929_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_id9974_ _L9930_)
                                            (_args9983_
                                             (foldr1 (lambda (_g99759978_
                                                              _g99769980_)
                                                       (cons _g99759978_
                                                             _g99769980_))
                                                     '()
                                                     _L9929_))
                                            (_body9992_
                                             (foldr1 (lambda (_g99849987_
                                                              _g99859989_)
                                                       (cons _g99849987_
                                                             _g99859989_))
                                                     '()
                                                     _L9928_))
                                            (_init9994_
                                             (map list
                                                  _args9983_
                                                  _rands9748_)))
                                       (cons 'let
                                             (cons _id9974_
                                                   (cons _init9994_
                                                         _body9992_))))
                                     (gxc#raise-compile-error
                                      '"Illegal loop application; arity mismatch"
                                      _stx9518_))))
                              (___kont1624316244_
                               (lambda () (cons _rator9747_ _rands9748_))))
                          (let ((___match1630216303_
                                 (lambda (_e97579815_
                                          _hd97589818_
                                          _tl97599820_
                                          _e97609823_
                                          _hd97619826_
                                          _tl97629828_
                                          _e97639831_
                                          _hd97649834_
                                          _tl97659836_
                                          _e97669839_
                                          _hd97679842_
                                          _tl97689844_
                                          _e97699847_
                                          _hd97709850_
                                          _tl97719852_
                                          _e97729855_
                                          _hd97739858_
                                          _tl97749860_
                                          _e97759863_
                                          _hd97769866_
                                          _tl97779868_
                                          ___splice1623916240_
                                          _target97789871_
                                          _tl97809873_)
                                   (letrec ((_loop97819876_
                                             (lambda (_hd97799879_
                                                      _arg97859881_)
                                               (if (gx#stx-pair? _hd97799879_)
                                                   (let ((_e97829884_
                                                          (gx#stx-e
                                                           _hd97799879_)))
                                                     (let ((_lp-tl97849889_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e97829884_)))
                                                           (_lp-hd97839887_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e97829884_))))
                                                       (_loop97819876_
                                                        _lp-tl97849889_
                                                        (cons _lp-hd97839887_
                                                              _arg97859881_))))
                                                   (let ((_arg97869892_
                                                          (reverse _arg97859881_)))
                                                     (if (gx#stx-pair/null?
                                                          _tl97779868_)
                                                         (let ((___splice1624116242_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97779868_
                         '0)))
                   (let ((_tl97899897_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1624116242_ '1)))
                         (_target97879895_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1624116242_ '0))))
                     (if (gx#stx-null? _tl97899897_)
                         (letrec ((_loop97909900_
                                   (lambda (_hd97889903_ _body97949905_)
                                     (if (gx#stx-pair? _hd97889903_)
                                         (let ((_e97919908_
                                                (gx#stx-e _hd97889903_)))
                                           (let ((_lp-tl97939913_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e97919908_)))
                                                 (_lp-hd97929911_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e97919908_))))
                                             (_loop97909900_
                                              _lp-tl97939913_
                                              (cons _lp-hd97929911_
                                                    _body97949905_))))
                                         (let ((_body97959916_
                                                (reverse _body97949905_)))
                                           (if (gx#stx-null? _tl97719852_)
                                               (if (gx#stx-null? _tl97659836_)
                                                   (if (gx#stx-pair?
                                                        _tl97629828_)
                                                       (let ((_e97969919_
                                                              (gx#stx-e
                                                               _tl97629828_)))
                                                         (let ((_tl97989924_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e97969919_)))
                       (_hd97979922_
                        (let () (declare (not safe)) (##car _e97969919_))))
                   (if (gx#stx-null? _tl97989924_)
                       (let ((_L9927_ _hd97979922_)
                             (_L9928_ _body97959916_)
                             (_L9929_ _arg97869892_)
                             (_L9930_ _hd97679842_))
                         (if (eq? _L9930_ _L9927_)
                             (___kont1623716238_
                              _L9927_
                              _L9928_
                              _L9929_
                              _L9930_)
                             (___kont1624316244_)))
                       (___kont1624316244_))))
               (___kont1624316244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1624316244_))
                                               (___kont1624316244_)))))))
                           (_loop97909900_ _target97879895_ '()))
                         (___kont1624316244_))))
                 (___kont1624316244_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop97819876_ _target97789871_ '())))))
                            (if (gx#stx-pair? ___stx1623516236_)
                                (let ((_e97579815_
                                       (gx#stx-e ___stx1623516236_)))
                                  (let ((_tl97599820_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e97579815_)))
                                        (_hd97589818_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e97579815_))))
                                    (if (gx#identifier? _hd97589818_)
                                        (if (gx#stx-eq? 'letrec _hd97589818_)
                                            (if (gx#stx-pair? _tl97599820_)
                                                (let ((_e97609823_
                                                       (gx#stx-e
                                                        _tl97599820_)))
                                                  (let ((_tl97629828_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e97609823_)))
                                                        (_hd97619826_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e97609823_))))
                                                    (if (gx#stx-pair?
                                                         _hd97619826_)
                                                        (let ((_e97639831_
                                                               (gx#stx-e
                                                                _hd97619826_)))
                                                          (let ((_tl97659836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e97639831_)))
                        (_hd97649834_
                         (let () (declare (not safe)) (##car _e97639831_))))
                    (if (gx#stx-pair? _hd97649834_)
                        (let ((_e97669839_ (gx#stx-e _hd97649834_)))
                          (let ((_tl97689844_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e97669839_)))
                                (_hd97679842_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e97669839_))))
                            (if (gx#stx-pair? _tl97689844_)
                                (let ((_e97699847_ (gx#stx-e _tl97689844_)))
                                  (let ((_tl97719852_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e97699847_)))
                                        (_hd97709850_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e97699847_))))
                                    (if (gx#stx-pair? _hd97709850_)
                                        (let ((_e97729855_
                                               (gx#stx-e _hd97709850_)))
                                          (let ((_tl97749860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e97729855_)))
                                                (_hd97739858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e97729855_))))
                                            (if (gx#identifier? _hd97739858_)
                                                (if (gx#stx-eq?
                                                     'lambda
                                                     _hd97739858_)
                                                    (if (gx#stx-pair?
                                                         _tl97749860_)
                                                        (let ((_e97759863_
                                                               (gx#stx-e
                                                                _tl97749860_)))
                                                          (let ((_tl97779868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e97759863_)))
                        (_hd97769866_
                         (let () (declare (not safe)) (##car _e97759863_))))
                    (if (gx#stx-pair/null? _hd97769866_)
                        (let ((___splice1623916240_
                               (gx#syntax-split-splice _hd97769866_ '0)))
                          (let ((_tl97809873_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1623916240_ '1)))
                                (_target97789871_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1623916240_ '0))))
                            (if (gx#stx-null? _tl97809873_)
                                (___match1630216303_
                                 _e97579815_
                                 _hd97589818_
                                 _tl97599820_
                                 _e97609823_
                                 _hd97619826_
                                 _tl97629828_
                                 _e97639831_
                                 _hd97649834_
                                 _tl97659836_
                                 _e97669839_
                                 _hd97679842_
                                 _tl97689844_
                                 _e97699847_
                                 _hd97709850_
                                 _tl97719852_
                                 _e97729855_
                                 _hd97739858_
                                 _tl97749860_
                                 _e97759863_
                                 _hd97769866_
                                 _tl97779868_
                                 ___splice1623916240_
                                 _target97789871_
                                 _tl97809873_)
                                (___kont1624316244_))))
                        (___kont1624316244_))))
                (___kont1624316244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1624316244_))
                                                (___kont1624316244_))))
                                        (___kont1624316244_))))
                                (___kont1624316244_))))
                        (___kont1624316244_))))
                (___kont1624316244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1624316244_))
                                            (___kont1624316244_))
                                        (___kont1624316244_))))
                                (___kont1624316244_)))))))))
          (let* ((_g95229536_
                  (lambda (_g95239533_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g95239533_)))
                 (_g95219741_
                  (lambda (_g95239539_)
                    (if (gx#stx-pair? _g95239539_)
                        (let ((_e95269541_ (gx#stx-e _g95239539_)))
                          (let ((_hd95279544_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e95269541_)))
                                (_tl95289546_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e95269541_))))
                            (if (gx#stx-pair? _tl95289546_)
                                (let ((_e95299549_ (gx#stx-e _tl95289546_)))
                                  (let ((_hd95309552_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e95299549_)))
                                        (_tl95319554_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e95299549_))))
                                    ((lambda (_L9557_ _L9558_)
                                       (if (gxc#current-compile-decls-unsafe?)
                                           (_compile-call9520_ _L9558_ _L9557_)
                                           (let* ((___stx1635116352_ _L9558_)
                                                  (_g95739585_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx1635116352_))))
                                             (let ((___kont1635316354_
                                                    (lambda ()
                                                      (let ((_f9615_ (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L9558_)))
                (if (string-prefix? '"##" (symbol->string _f9615_))
                    (let _lp9617_ ((_rest9620_ (reverse _L9557_))
                                   (_bind9622_ '())
                                   (_args9623_ '()))
                      (let* ((_rest96249632_ _rest9620_)
                             (_else96269640_
                              (lambda ()
                                (cons 'let
                                      (cons _bind9622_
                                            (cons '(declare (not safe))
                                                  (cons (cons _f9615_
                                                              _args9623_)
                                                        '()))))))
                             (_K96289726_
                              (lambda (_rest9643_ _e9644_)
                                (let* ((___stx1630516306_ _e9644_)
                                       (_g96499667_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1630516306_))))
                                  (let ((___kont1630716308_
                                         (lambda ()
                                           (_lp9617_
                                            _rest9643_
                                            _bind9622_
                                            (cons (gxc#compile-e _e9644_)
                                                  _args9623_))))
                                        (___kont1630916310_
                                         (lambda ()
                                           (_lp9617_
                                            _rest9643_
                                            _bind9622_
                                            (cons (gxc#compile-e _e9644_)
                                                  _args9623_))))
                                        (___kont1631116312_
                                         (lambda ()
                                           (let ((_tmp9674_
                                                  (make-symbol
                                                   (gensym '__tmp))))
                                             (_lp9617_
                                              _rest9643_
                                              (cons (cons _tmp9674_
                                                          (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e9644_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _bind9622_)
                                              (cons _tmp9674_ _args9623_))))))
                                    (if (gx#stx-pair? ___stx1630516306_)
                                        (let ((_e96519705_
                                               (gx#stx-e ___stx1630516306_)))
                                          (let ((_tl96539710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e96519705_)))
                                                (_hd96529708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e96519705_))))
                                            (if (gx#identifier? _hd96529708_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd96529708_)
                                                    (if (gx#stx-pair?
                                                         _tl96539710_)
                                                        (let ((_e96549713_
                                                               (gx#stx-e
                                                                _tl96539710_)))
                                                          (let ((_tl96569718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e96549713_)))
                        (_hd96559716_
                         (let () (declare (not safe)) (##car _e96549713_))))
                    (if (gx#stx-null? _tl96569718_)
                        (___kont1630716308_)
                        (___kont1631116312_))))
                (___kont1631116312_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#quote
                                                         _hd96529708_)
                                                        (if (gx#stx-pair?
                                                             _tl96539710_)
                                                            (let ((_e96609690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl96539710_)))
                      (let ((_tl96629695_
                             (let () (declare (not safe)) (##cdr _e96609690_)))
                            (_hd96619693_
                             (let ()
                               (declare (not safe))
                               (##car _e96609690_))))
                        (if (gx#stx-null? _tl96629695_)
                            (___kont1630916310_)
                            (___kont1631116312_))))
                    (___kont1631116312_))
                (___kont1631116312_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1631116312_))))
                                        (___kont1631116312_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest96249632_))
                            (let ((_hd96299729_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest96249632_)))
                                  (_tl96309731_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest96249632_))))
                              (let* ((_e9734_ _hd96299729_)
                                     (_rest9736_ _tl96309731_))
                                (_K96289726_ _rest9736_ _e9734_)))
                            (_else96269640_))))
                    (_compile-call9520_ _L9558_ _L9557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1635516356_
                                                    (lambda ()
                                                      (_compile-call9520_
                                                       _L9558_
                                                       _L9557_))))
                                               (if (gx#stx-pair?
                                                    ___stx1635116352_)
                                                   (let ((_e95759597_
                                                          (gx#stx-e
                                                           ___stx1635116352_)))
                                                     (let ((_tl95779602_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e95759597_)))
                                                           (_hd95769600_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e95759597_))))
                                                       (if (gx#identifier?
                                                            _hd95769600_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd95769600_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl95779602_)
                           (let ((_e95789605_ (gx#stx-e _tl95779602_)))
                             (let ((_tl95809610_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e95789605_)))
                                   (_hd95799608_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e95789605_))))
                               (if (gx#stx-null? _tl95809610_)
                                   (___kont1635316354_)
                                   (___kont1635516356_))))
                           (___kont1635516356_))
                       (___kont1635516356_))
                   (___kont1635516356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1635516356_))))))
                                     _tl95319554_
                                     _hd95309552_)))
                                (_g95229536_ _g95239539_))))
                        (_g95229536_ _g95239539_)))))
            (_g95219741_ _stx9518_)))))
    (define gxc#generate-runtime-if%
      (lambda (_stx9331_)
        (letrec ((_simplify9333_
                  (lambda (_code9418_)
                    (let* ((_code94199437_ _code9418_)
                           (_else94219445_ (lambda () _code9418_))
                           (_K94239481_
                            (lambda (_expr9448_ _test9449_)
                              (let* ((_expr94509458_ _expr9448_)
                                     (_else94529466_
                                      (lambda ()
                                        (cons 'and
                                              (cons _test9449_
                                                    (cons _expr9448_ '())))))
                                     (_K94549471_
                                      (lambda (_exprs9469_)
                                        (cons 'and
                                              (cons _test9449_ _exprs9469_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr94509458_))
                                    (let ((_hd94559474_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr94509458_)))
                                          (_tl94569476_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr94509458_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd94559474_ 'and))
                                          (let ((_exprs9479_ _tl94569476_))
                                            (_K94549471_ _exprs9479_))
                                          (_else94529466_)))
                                    (_else94529466_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code94199437_))
                          (let ((_hd94249484_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code94199437_)))
                                (_tl94259486_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code94199437_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd94249484_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl94259486_))
                                    (let ((_hd94269489_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl94259486_)))
                                          (_tl94279491_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl94259486_))))
                                      (let ((_test9494_ _hd94269489_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl94279491_))
                                            (let ((_hd94289496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl94279491_)))
                                                  (_tl94299498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl94279491_))))
                                              (let ((_expr9501_ _hd94289496_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl94299498_))
                                                    (let ((_hd94309503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl94299498_)))
                                                          (_tl94319505_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl94299498_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd94309503_))
                                                          (let ((_hd94329508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _hd94309503_)))
                        (_tl94339510_
                         (let () (declare (not safe)) (##cdr _hd94309503_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd94329508_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl94339510_))
                            (let ((_hd94349513_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl94339510_)))
                                  (_tl94359515_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl94339510_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd94349513_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl94359515_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl94319505_))
                                          (_K94239481_ _expr9501_ _test9494_)
                                          (_else94219445_))
                                      (_else94219445_))
                                  (_else94219445_)))
                            (_else94219445_))
                        (_else94219445_)))
                  (_else94219445_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else94219445_))))
                                            (_else94219445_))))
                                    (_else94219445_))
                                (_else94219445_)))
                          (_else94219445_))))))
          (let* ((_g93359356_
                  (lambda (_g93369353_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g93369353_)))
                 (_g93349415_
                  (lambda (_g93369359_)
                    (if (gx#stx-pair? _g93369359_)
                        (let ((_e93409361_ (gx#stx-e _g93369359_)))
                          (let ((_hd93419364_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e93409361_)))
                                (_tl93429366_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e93409361_))))
                            (if (gx#stx-pair? _tl93429366_)
                                (let ((_e93439369_ (gx#stx-e _tl93429366_)))
                                  (let ((_hd93449372_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e93439369_)))
                                        (_tl93459374_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e93439369_))))
                                    (if (gx#stx-pair? _tl93459374_)
                                        (let ((_e93469377_
                                               (gx#stx-e _tl93459374_)))
                                          (let ((_hd93479380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e93469377_)))
                                                (_tl93489382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e93469377_))))
                                            (if (gx#stx-pair? _tl93489382_)
                                                (let ((_e93499385_
                                                       (gx#stx-e
                                                        _tl93489382_)))
                                                  (let ((_hd93509388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e93499385_)))
                                                        (_tl93519390_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e93499385_))))
                                                    (if (gx#stx-null?
                                                         _tl93519390_)
                                                        ((lambda (_L9393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9394_
                          _L9395_)
                   (if (gxc#current-compile-boolean-context)
                       (_simplify9333_
                        (cons 'if
                              (cons (gxc#compile-e _L9395_)
                                    (cons (gxc#compile-e _L9394_)
                                          (cons (gxc#compile-e _L9393_)
                                                '())))))
                       (cons 'if
                             (cons (call-with-parameters
                                    (lambda () (gxc#compile-e _L9395_))
                                    gxc#current-compile-boolean-context
                                    '#t)
                                   (cons (gxc#compile-e _L9394_)
                                         (cons (gxc#compile-e _L9393_)
                                               '()))))))
                 _hd93509388_
                 _hd93479380_
                 _hd93449372_)
                (_g93359356_ _g93369359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g93359356_ _g93369359_))))
                                        (_g93359356_ _g93369359_))))
                                (_g93359356_ _g93369359_))))
                        (_g93359356_ _g93369359_)))))
            (_g93349415_ _stx9331_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_stx9280_)
        (let* ((_g92829295_
                (lambda (_g92839292_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g92839292_)))
               (_g92819328_
                (lambda (_g92839298_)
                  (if (gx#stx-pair? _g92839298_)
                      (let ((_e92859300_ (gx#stx-e _g92839298_)))
                        (let ((_hd92869303_
                               (let ()
                                 (declare (not safe))
                                 (##car _e92859300_)))
                              (_tl92879305_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e92859300_))))
                          (if (gx#stx-pair? _tl92879305_)
                              (let ((_e92889308_ (gx#stx-e _tl92879305_)))
                                (let ((_hd92899311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e92889308_)))
                                      (_tl92909313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e92889308_))))
                                  (if (gx#stx-null? _tl92909313_)
                                      ((lambda (_L9316_)
                                         (gxc#generate-runtime-binding-id
                                          _L9316_))
                                       _hd92899311_)
                                      (_g92829295_ _g92839298_))))
                              (_g92829295_ _g92839298_))))
                      (_g92829295_ _g92839298_)))))
          (_g92819328_ _stx9280_))))
    (define gxc#generate-runtime-setq%
      (lambda (_stx9213_)
        (let* ((_g92159232_
                (lambda (_g92169229_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g92169229_)))
               (_g92149277_
                (lambda (_g92169235_)
                  (if (gx#stx-pair? _g92169235_)
                      (let ((_e92199237_ (gx#stx-e _g92169235_)))
                        (let ((_hd92209240_
                               (let ()
                                 (declare (not safe))
                                 (##car _e92199237_)))
                              (_tl92219242_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e92199237_))))
                          (if (gx#stx-pair? _tl92219242_)
                              (let ((_e92229245_ (gx#stx-e _tl92219242_)))
                                (let ((_hd92239248_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e92229245_)))
                                      (_tl92249250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e92229245_))))
                                  (if (gx#stx-pair? _tl92249250_)
                                      (let ((_e92259253_
                                             (gx#stx-e _tl92249250_)))
                                        (let ((_hd92269256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e92259253_)))
                                              (_tl92279258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e92259253_))))
                                          (if (gx#stx-null? _tl92279258_)
                                              ((lambda (_L9261_ _L9262_)
                                                 (cons 'set!
                                                       (cons (gxc#generate-runtime-binding-id
                                                              _L9262_)
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9261_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd92269256_
                                               _hd92239248_)
                                              (_g92159232_ _g92169235_))))
                                      (_g92159232_ _g92169235_))))
                              (_g92159232_ _g92169235_))))
                      (_g92159232_ _g92169235_)))))
          (_g92149277_ _stx9213_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_stx9025_)
        (let* ((_g90279044_
                (lambda (_g90289041_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g90289041_)))
               (_g90269210_
                (lambda (_g90289047_)
                  (if (gx#stx-pair? _g90289047_)
                      (let ((_e90319049_ (gx#stx-e _g90289047_)))
                        (let ((_hd90329052_
                               (let ()
                                 (declare (not safe))
                                 (##car _e90319049_)))
                              (_tl90339054_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e90319049_))))
                          (if (gx#stx-pair? _tl90339054_)
                              (let ((_e90349057_ (gx#stx-e _tl90339054_)))
                                (let ((_hd90359060_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e90349057_)))
                                      (_tl90369062_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e90349057_))))
                                  (if (gx#stx-pair? _tl90369062_)
                                      (let ((_e90379065_
                                             (gx#stx-e _tl90369062_)))
                                        (let ((_hd90389068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e90379065_)))
                                              (_tl90399070_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e90379065_))))
                                          (if (gx#stx-null? _tl90399070_)
                                              ((lambda (_L9073_ _L9074_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9073_)
                         (cons (gxc#compile-e _L9074_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp9089_ ((_rest9092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L9074_ (cons _L9073_ '())))
                            (_bind9094_ '())
                            (_args9095_ '()))
               (let* ((_rest90969104_ _rest9092_)
                      (_else90989112_
                       (lambda ()
                         (cons 'let
                               (cons _bind9094_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _args9095_)
                                                 '()))))))
                      (_K91009198_
                       (lambda (_rest9115_ _e9116_)
                         (let* ((___stx1637716378_ _e9116_)
                                (_g91219139_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    ___stx1637716378_))))
                           (let ((___kont1637916380_
                                  (lambda ()
                                    (_lp9089_
                                     _rest9115_
                                     _bind9094_
                                     (cons (gxc#compile-e _e9116_)
                                           _args9095_))))
                                 (___kont1638116382_
                                  (lambda ()
                                    (_lp9089_
                                     _rest9115_
                                     _bind9094_
                                     (cons (gxc#compile-e _e9116_)
                                           _args9095_))))
                                 (___kont1638316384_
                                  (lambda ()
                                    (let ((_tmp9146_
                                           (make-symbol (gensym '__tmp))))
                                      (_lp9089_
                                       _rest9115_
                                       (cons (cons _tmp9146_
                                                   (cons (gxc#compile-e
                                                          _e9116_)
                                                         '()))
                                             _bind9094_)
                                       (cons _tmp9146_ _args9095_))))))
                             (if (gx#stx-pair? ___stx1637716378_)
                                 (let ((_e91239177_
                                        (gx#stx-e ___stx1637716378_)))
                                   (let ((_tl91259182_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e91239177_)))
                                         (_hd91249180_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e91239177_))))
                                     (if (gx#identifier? _hd91249180_)
                                         (if (gx#stx-eq? '%#ref _hd91249180_)
                                             (if (gx#stx-pair? _tl91259182_)
                                                 (let ((_e91269185_
                                                        (gx#stx-e
                                                         _tl91259182_)))
                                                   (let ((_tl91289190_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e91269185_)))
                                                         (_hd91279188_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e91269185_))))
                                                     (if (gx#stx-null?
                                                          _tl91289190_)
                                                         (___kont1637916380_)
                                                         (___kont1638316384_))))
                                                 (___kont1638316384_))
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd91249180_)
                                                 (if (gx#stx-pair?
                                                      _tl91259182_)
                                                     (let ((_e91329162_
                                                            (gx#stx-e
                                                             _tl91259182_)))
                                                       (let ((_tl91349167_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e91329162_)))
                     (_hd91339165_
                      (let () (declare (not safe)) (##car _e91329162_))))
                 (if (gx#stx-null? _tl91349167_)
                     (___kont1638116382_)
                     (___kont1638316384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1638316384_))
                                                 (___kont1638316384_)))
                                         (___kont1638316384_))))
                                 (___kont1638316384_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest90969104_))
                     (let ((_hd91019201_
                            (let ()
                              (declare (not safe))
                              (##car _rest90969104_)))
                           (_tl91029203_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest90969104_))))
                       (let* ((_e9206_ _hd91019201_) (_rest9208_ _tl91029203_))
                         (_K91009198_ _rest9208_ _e9206_)))
                     (_else90989112_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd90389068_
                                               _hd90359060_)
                                              (_g90279044_ _g90289047_))))
                                      (_g90279044_ _g90289047_))))
                              (_g90279044_ _g90289047_))))
                      (_g90279044_ _g90289047_)))))
          (_g90269210_ _stx9025_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_stx8837_)
        (let* ((_g88398856_
                (lambda (_g88408853_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g88408853_)))
               (_g88389022_
                (lambda (_g88408859_)
                  (if (gx#stx-pair? _g88408859_)
                      (let ((_e88438861_ (gx#stx-e _g88408859_)))
                        (let ((_hd88448864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e88438861_)))
                              (_tl88458866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e88438861_))))
                          (if (gx#stx-pair? _tl88458866_)
                              (let ((_e88468869_ (gx#stx-e _tl88458866_)))
                                (let ((_hd88478872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e88468869_)))
                                      (_tl88488874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e88468869_))))
                                  (if (gx#stx-pair? _tl88488874_)
                                      (let ((_e88498877_
                                             (gx#stx-e _tl88488874_)))
                                        (let ((_hd88508880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88498877_)))
                                              (_tl88518882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88498877_))))
                                          (if (gx#stx-null? _tl88518882_)
                                              ((lambda (_L8885_ _L8886_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8885_)
                         (cons (gxc#compile-e _L8886_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp8901_ ((_rest8904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8886_ (cons _L8885_ '())))
                            (_bind8906_ '())
                            (_args8907_ '()))
               (let* ((_rest89088916_ _rest8904_)
                      (_else89108924_
                       (lambda ()
                         (cons 'let
                               (cons _bind8906_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _args8907_)
                                                 '()))))))
                      (_K89129010_
                       (lambda (_rest8927_ _e8928_)
                         (let* ((___stx1642316424_ _e8928_)
                                (_g89338951_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    ___stx1642316424_))))
                           (let ((___kont1642516426_
                                  (lambda ()
                                    (_lp8901_
                                     _rest8927_
                                     _bind8906_
                                     (cons (gxc#compile-e _e8928_)
                                           _args8907_))))
                                 (___kont1642716428_
                                  (lambda ()
                                    (_lp8901_
                                     _rest8927_
                                     _bind8906_
                                     (cons (gxc#compile-e _e8928_)
                                           _args8907_))))
                                 (___kont1642916430_
                                  (lambda ()
                                    (let ((_tmp8958_
                                           (make-symbol (gensym '__tmp))))
                                      (_lp8901_
                                       _rest8927_
                                       (cons (cons _tmp8958_
                                                   (cons (gxc#compile-e
                                                          _e8928_)
                                                         '()))
                                             _bind8906_)
                                       (cons _tmp8958_ _args8907_))))))
                             (if (gx#stx-pair? ___stx1642316424_)
                                 (let ((_e89358989_
                                        (gx#stx-e ___stx1642316424_)))
                                   (let ((_tl89378994_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e89358989_)))
                                         (_hd89368992_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e89358989_))))
                                     (if (gx#identifier? _hd89368992_)
                                         (if (gx#stx-eq? '%#ref _hd89368992_)
                                             (if (gx#stx-pair? _tl89378994_)
                                                 (let ((_e89388997_
                                                        (gx#stx-e
                                                         _tl89378994_)))
                                                   (let ((_tl89409002_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e89388997_)))
                                                         (_hd89399000_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e89388997_))))
                                                     (if (gx#stx-null?
                                                          _tl89409002_)
                                                         (___kont1642516426_)
                                                         (___kont1642916430_))))
                                                 (___kont1642916430_))
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd89368992_)
                                                 (if (gx#stx-pair?
                                                      _tl89378994_)
                                                     (let ((_e89448974_
                                                            (gx#stx-e
                                                             _tl89378994_)))
                                                       (let ((_tl89468979_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e89448974_)))
                     (_hd89458977_
                      (let () (declare (not safe)) (##car _e89448974_))))
                 (if (gx#stx-null? _tl89468979_)
                     (___kont1642716428_)
                     (___kont1642916430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1642916430_))
                                                 (___kont1642916430_)))
                                         (___kont1642916430_))))
                                 (___kont1642916430_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest89088916_))
                     (let ((_hd89139013_
                            (let ()
                              (declare (not safe))
                              (##car _rest89088916_)))
                           (_tl89149015_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest89088916_))))
                       (let* ((_e9018_ _hd89139013_) (_rest9020_ _tl89149015_))
                         (_K89129010_ _rest9020_ _e9018_)))
                     (_else89108924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd88508880_
                                               _hd88478872_)
                                              (_g88398856_ _g88408859_))))
                                      (_g88398856_ _g88408859_))))
                              (_g88398856_ _g88408859_))))
                      (_g88398856_ _g88408859_)))))
          (_g88389022_ _stx8837_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_stx8754_)
        (let* ((_g87568777_
                (lambda (_g87578774_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g87578774_)))
               (_g87558834_
                (lambda (_g87578780_)
                  (if (gx#stx-pair? _g87578780_)
                      (let ((_e87618782_ (gx#stx-e _g87578780_)))
                        (let ((_hd87628785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e87618782_)))
                              (_tl87638787_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e87618782_))))
                          (if (gx#stx-pair? _tl87638787_)
                              (let ((_e87648790_ (gx#stx-e _tl87638787_)))
                                (let ((_hd87658793_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e87648790_)))
                                      (_tl87668795_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e87648790_))))
                                  (if (gx#stx-pair? _tl87668795_)
                                      (let ((_e87678798_
                                             (gx#stx-e _tl87668795_)))
                                        (let ((_hd87688801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e87678798_)))
                                              (_tl87698803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e87678798_))))
                                          (if (gx#stx-pair? _tl87698803_)
                                              (let ((_e87708806_
                                                     (gx#stx-e _tl87698803_)))
                                                (let ((_hd87718809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e87708806_)))
                                                      (_tl87728811_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e87708806_))))
                                                  (if (gx#stx-null?
                                                       _tl87728811_)
                                                      ((lambda (_L8814_
                                                                _L8815_
                                                                _L8816_)
                                                         (cons '##structure-ref
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8814_)
                             (cons (gxc#compile-e _L8815_)
                                   (cons (gxc#compile-e _L8816_)
                                         (cons ''#f '()))))))
               _hd87718809_
               _hd87688801_
               _hd87658793_)
              (_g87568777_ _g87578780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g87568777_ _g87578780_))))
                                      (_g87568777_ _g87578780_))))
                              (_g87568777_ _g87578780_))))
                      (_g87568777_ _g87578780_)))))
          (_g87558834_ _stx8754_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_stx8655_)
        (let* ((_g86578682_
                (lambda (_g86588679_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g86588679_)))
               (_g86568751_
                (lambda (_g86588685_)
                  (if (gx#stx-pair? _g86588685_)
                      (let ((_e86638687_ (gx#stx-e _g86588685_)))
                        (let ((_hd86648690_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86638687_)))
                              (_tl86658692_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86638687_))))
                          (if (gx#stx-pair? _tl86658692_)
                              (let ((_e86668695_ (gx#stx-e _tl86658692_)))
                                (let ((_hd86678698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86668695_)))
                                      (_tl86688700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86668695_))))
                                  (if (gx#stx-pair? _tl86688700_)
                                      (let ((_e86698703_
                                             (gx#stx-e _tl86688700_)))
                                        (let ((_hd86708706_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e86698703_)))
                                              (_tl86718708_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e86698703_))))
                                          (if (gx#stx-pair? _tl86718708_)
                                              (let ((_e86728711_
                                                     (gx#stx-e _tl86718708_)))
                                                (let ((_hd86738714_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e86728711_)))
                                                      (_tl86748716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e86728711_))))
                                                  (if (gx#stx-pair?
                                                       _tl86748716_)
                                                      (let ((_e86758719_
                                                             (gx#stx-e
                                                              _tl86748716_)))
                                                        (let ((_hd86768722_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e86758719_)))
                      (_tl86778724_
                       (let () (declare (not safe)) (##cdr _e86758719_))))
                  (if (gx#stx-null? _tl86778724_)
                      ((lambda (_L8727_ _L8728_ _L8729_ _L8730_)
                         (cons '##structure-set!
                               (cons (gxc#compile-e _L8728_)
                                     (cons (gxc#compile-e _L8727_)
                                           (cons (gxc#compile-e _L8729_)
                                                 (cons (gxc#compile-e _L8730_)
                                                       (cons ''#f '())))))))
                       _hd86768722_
                       _hd86738714_
                       _hd86708706_
                       _hd86678698_)
                      (_g86578682_ _g86588685_))))
              (_g86578682_ _g86588685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g86578682_ _g86588685_))))
                                      (_g86578682_ _g86588685_))))
                              (_g86578682_ _g86588685_))))
                      (_g86578682_ _g86588685_)))))
          (_g86568751_ _stx8655_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_stx8572_)
        (let* ((_g85748595_
                (lambda (_g85758592_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85758592_)))
               (_g85738652_
                (lambda (_g85758598_)
                  (if (gx#stx-pair? _g85758598_)
                      (let ((_e85798600_ (gx#stx-e _g85758598_)))
                        (let ((_hd85808603_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85798600_)))
                              (_tl85818605_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85798600_))))
                          (if (gx#stx-pair? _tl85818605_)
                              (let ((_e85828608_ (gx#stx-e _tl85818605_)))
                                (let ((_hd85838611_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85828608_)))
                                      (_tl85848613_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85828608_))))
                                  (if (gx#stx-pair? _tl85848613_)
                                      (let ((_e85858616_
                                             (gx#stx-e _tl85848613_)))
                                        (let ((_hd85868619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e85858616_)))
                                              (_tl85878621_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e85858616_))))
                                          (if (gx#stx-pair? _tl85878621_)
                                              (let ((_e85888624_
                                                     (gx#stx-e _tl85878621_)))
                                                (let ((_hd85898627_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e85888624_)))
                                                      (_tl85908629_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e85888624_))))
                                                  (if (gx#stx-null?
                                                       _tl85908629_)
                                                      ((lambda (_L8632_
                                                                _L8633_
                                                                _L8634_)
                                                         (cons '##direct-structure-ref
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8632_)
                             (cons (gxc#compile-e _L8633_)
                                   (cons (gxc#compile-e _L8634_)
                                         (cons ''#f '()))))))
               _hd85898627_
               _hd85868619_
               _hd85838611_)
              (_g85748595_ _g85758598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g85748595_ _g85758598_))))
                                      (_g85748595_ _g85758598_))))
                              (_g85748595_ _g85758598_))))
                      (_g85748595_ _g85758598_)))))
          (_g85738652_ _stx8572_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_stx8473_)
        (let* ((_g84758500_
                (lambda (_g84768497_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g84768497_)))
               (_g84748569_
                (lambda (_g84768503_)
                  (if (gx#stx-pair? _g84768503_)
                      (let ((_e84818505_ (gx#stx-e _g84768503_)))
                        (let ((_hd84828508_
                               (let ()
                                 (declare (not safe))
                                 (##car _e84818505_)))
                              (_tl84838510_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e84818505_))))
                          (if (gx#stx-pair? _tl84838510_)
                              (let ((_e84848513_ (gx#stx-e _tl84838510_)))
                                (let ((_hd84858516_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e84848513_)))
                                      (_tl84868518_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e84848513_))))
                                  (if (gx#stx-pair? _tl84868518_)
                                      (let ((_e84878521_
                                             (gx#stx-e _tl84868518_)))
                                        (let ((_hd84888524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e84878521_)))
                                              (_tl84898526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e84878521_))))
                                          (if (gx#stx-pair? _tl84898526_)
                                              (let ((_e84908529_
                                                     (gx#stx-e _tl84898526_)))
                                                (let ((_hd84918532_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e84908529_)))
                                                      (_tl84928534_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e84908529_))))
                                                  (if (gx#stx-pair?
                                                       _tl84928534_)
                                                      (let ((_e84938537_
                                                             (gx#stx-e
                                                              _tl84928534_)))
                                                        (let ((_hd84948540_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e84938537_)))
                      (_tl84958542_
                       (let () (declare (not safe)) (##cdr _e84938537_))))
                  (if (gx#stx-null? _tl84958542_)
                      ((lambda (_L8545_ _L8546_ _L8547_ _L8548_)
                         (cons '##direct-structure-set!
                               (cons (gxc#compile-e _L8546_)
                                     (cons (gxc#compile-e _L8545_)
                                           (cons (gxc#compile-e _L8547_)
                                                 (cons (gxc#compile-e _L8548_)
                                                       (cons ''#f '())))))))
                       _hd84948540_
                       _hd84918532_
                       _hd84888524_
                       _hd84858516_)
                      (_g84758500_ _g84768503_))))
              (_g84758500_ _g84768503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g84758500_ _g84768503_))))
                                      (_g84758500_ _g84768503_))))
                              (_g84758500_ _g84768503_))))
                      (_g84758500_ _g84768503_)))))
          (_g84748569_ _stx8473_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_stx8269_)
        (let* ((_g82718292_
                (lambda (_g82728289_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g82728289_)))
               (_g82708470_
                (lambda (_g82728295_)
                  (if (gx#stx-pair? _g82728295_)
                      (let ((_e82768297_ (gx#stx-e _g82728295_)))
                        (let ((_hd82778300_
                               (let ()
                                 (declare (not safe))
                                 (##car _e82768297_)))
                              (_tl82788302_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e82768297_))))
                          (if (gx#stx-pair? _tl82788302_)
                              (let ((_e82798305_ (gx#stx-e _tl82788302_)))
                                (let ((_hd82808308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e82798305_)))
                                      (_tl82818310_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e82798305_))))
                                  (if (gx#stx-pair? _tl82818310_)
                                      (let ((_e82828313_
                                             (gx#stx-e _tl82818310_)))
                                        (let ((_hd82838316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e82828313_)))
                                              (_tl82848318_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e82828313_))))
                                          (if (gx#stx-pair? _tl82848318_)
                                              (let ((_e82858321_
                                                     (gx#stx-e _tl82848318_)))
                                                (let ((_hd82868324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e82858321_)))
                                                      (_tl82878326_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e82858321_))))
                                                  (if (gx#stx-null?
                                                       _tl82878326_)
                                                      ((lambda (_L8329_
                                                                _L8330_
                                                                _L8331_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#compile-e _L8329_)
                                 (cons (gxc#compile-e _L8330_)
                                       (cons (gxc#compile-e _L8331_)
                                             (cons ''#f '())))))
                     (let _lp8349_ ((_rest8352_
                                     (cons _L8331_
                                           (cons _L8330_ (cons _L8329_ '()))))
                                    (_bind8354_ '())
                                    (_args8355_ '()))
                       (let* ((_rest83568364_ _rest8352_)
                              (_else83588372_
                               (lambda ()
                                 (cons 'let
                                       (cons _bind8354_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons ''#f '())
                               _args8355_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_K83608458_
                               (lambda (_rest8375_ _e8376_)
                                 (let* ((___stx1646916470_ _e8376_)
                                        (_g83818399_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1646916470_))))
                                   (let ((___kont1647116472_
                                          (lambda ()
                                            (_lp8349_
                                             _rest8375_
                                             _bind8354_
                                             (cons (gxc#compile-e _e8376_)
                                                   _args8355_))))
                                         (___kont1647316474_
                                          (lambda ()
                                            (_lp8349_
                                             _rest8375_
                                             _bind8354_
                                             (cons (gxc#compile-e _e8376_)
                                                   _args8355_))))
                                         (___kont1647516476_
                                          (lambda ()
                                            (let ((_tmp8406_
                                                   (make-symbol
                                                    (gensym '__tmp))))
                                              (_lp8349_
                                               _rest8375_
                                               (cons (cons _tmp8406_
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8376_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8354_)
                                               (cons _tmp8406_ _args8355_))))))
                                     (if (gx#stx-pair? ___stx1646916470_)
                                         (let ((_e83838437_
                                                (gx#stx-e ___stx1646916470_)))
                                           (let ((_tl83858442_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e83838437_)))
                                                 (_hd83848440_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e83838437_))))
                                             (if (gx#identifier? _hd83848440_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd83848440_)
                                                     (if (gx#stx-pair?
                                                          _tl83858442_)
                                                         (let ((_e83868445_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83858442_)))
                   (let ((_tl83888450_
                          (let () (declare (not safe)) (##cdr _e83868445_)))
                         (_hd83878448_
                          (let () (declare (not safe)) (##car _e83868445_))))
                     (if (gx#stx-null? _tl83888450_)
                         (___kont1647116472_)
                         (___kont1647516476_))))
                 (___kont1647516476_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-eq?
                                                          '%#quote
                                                          _hd83848440_)
                                                         (if (gx#stx-pair?
                                                              _tl83858442_)
                                                             (let ((_e83928422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl83858442_)))
                       (let ((_tl83948427_
                              (let ()
                                (declare (not safe))
                                (##cdr _e83928422_)))
                             (_hd83938425_
                              (let ()
                                (declare (not safe))
                                (##car _e83928422_))))
                         (if (gx#stx-null? _tl83948427_)
                             (___kont1647316474_)
                             (___kont1647516476_))))
                     (___kont1647516476_))
                 (___kont1647516476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1647516476_))))
                                         (___kont1647516476_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest83568364_))
                             (let ((_hd83618461_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest83568364_)))
                                   (_tl83628463_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest83568364_))))
                               (let* ((_e8466_ _hd83618461_)
                                      (_rest8468_ _tl83628463_))
                                 (_K83608458_ _rest8468_ _e8466_)))
                             (_else83588372_))))))
               _hd82868324_
               _hd82838316_
               _hd82808308_)
              (_g82718292_ _g82728295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82718292_ _g82728295_))))
                                      (_g82718292_ _g82728295_))))
                              (_g82718292_ _g82728295_))))
                      (_g82718292_ _g82728295_)))))
          (_g82708470_ _stx8269_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_stx8049_)
        (let* ((_g80518076_
                (lambda (_g80528073_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g80528073_)))
               (_g80508266_
                (lambda (_g80528079_)
                  (if (gx#stx-pair? _g80528079_)
                      (let ((_e80578081_ (gx#stx-e _g80528079_)))
                        (let ((_hd80588084_
                               (let ()
                                 (declare (not safe))
                                 (##car _e80578081_)))
                              (_tl80598086_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e80578081_))))
                          (if (gx#stx-pair? _tl80598086_)
                              (let ((_e80608089_ (gx#stx-e _tl80598086_)))
                                (let ((_hd80618092_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80608089_)))
                                      (_tl80628094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80608089_))))
                                  (if (gx#stx-pair? _tl80628094_)
                                      (let ((_e80638097_
                                             (gx#stx-e _tl80628094_)))
                                        (let ((_hd80648100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80638097_)))
                                              (_tl80658102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80638097_))))
                                          (if (gx#stx-pair? _tl80658102_)
                                              (let ((_e80668105_
                                                     (gx#stx-e _tl80658102_)))
                                                (let ((_hd80678108_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e80668105_)))
                                                      (_tl80688110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e80668105_))))
                                                  (if (gx#stx-pair?
                                                       _tl80688110_)
                                                      (let ((_e80698113_
                                                             (gx#stx-e
                                                              _tl80688110_)))
                                                        (let ((_hd80708116_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e80698113_)))
                      (_tl80718118_
                       (let () (declare (not safe)) (##cdr _e80698113_))))
                  (if (gx#stx-null? _tl80718118_)
                      ((lambda (_L8121_ _L8122_ _L8123_ _L8124_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (gxc#compile-e _L8122_)
                                         (cons (gxc#compile-e _L8121_)
                                               (cons (gxc#compile-e _L8123_)
                                                     (cons (gxc#compile-e
                                                            _L8124_)
                                                           (cons ''#f '()))))))
                             (let _lp8145_ ((_rest8148_
                                             (cons _L8124_
                                                   (cons _L8123_
                                                         (cons _L8121_
                                                               (cons _L8122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_bind8150_ '())
                                            (_args8151_ '()))
                               (let* ((_rest81528160_ _rest8148_)
                                      (_else81548168_
                                       (lambda ()
                                         (cons 'let
                                               (cons _bind8150_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr1 cons (cons ''#f '()) _args8151_))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_K81568254_
                                       (lambda (_rest8171_ _e8172_)
                                         (let* ((___stx1651516516_ _e8172_)
                                                (_g81778195_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    ___stx1651516516_))))
                                           (let ((___kont1651716518_
                                                  (lambda ()
                                                    (_lp8145_
                                                     _rest8171_
                                                     _bind8150_
                                                     (cons (gxc#compile-e
                                                            _e8172_)
                                                           _args8151_))))
                                                 (___kont1651916520_
                                                  (lambda ()
                                                    (_lp8145_
                                                     _rest8171_
                                                     _bind8150_
                                                     (cons (gxc#compile-e
                                                            _e8172_)
                                                           _args8151_))))
                                                 (___kont1652116522_
                                                  (lambda ()
                                                    (let ((_tmp8202_
                                                           (make-symbol
                                                            (gensym '__tmp))))
                                                      (_lp8145_
                                                       _rest8171_
                                                       (cons (cons _tmp8202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#compile-e _e8172_) '()))
                     _bind8150_)
               (cons _tmp8202_ _args8151_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair?
                                                  ___stx1651516516_)
                                                 (let ((_e81798233_
                                                        (gx#stx-e
                                                         ___stx1651516516_)))
                                                   (let ((_tl81818238_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e81798233_)))
                                                         (_hd81808236_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e81798233_))))
                                                     (if (gx#identifier?
                                                          _hd81808236_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd81808236_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl81818238_)
                         (let ((_e81828241_ (gx#stx-e _tl81818238_)))
                           (let ((_tl81848246_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e81828241_)))
                                 (_hd81838244_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e81828241_))))
                             (if (gx#stx-null? _tl81848246_)
                                 (___kont1651716518_)
                                 (___kont1652116522_))))
                         (___kont1652116522_))
                     (if (gx#stx-eq? '%#quote _hd81808236_)
                         (if (gx#stx-pair? _tl81818238_)
                             (let ((_e81888218_ (gx#stx-e _tl81818238_)))
                               (let ((_tl81908223_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e81888218_)))
                                     (_hd81898221_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e81888218_))))
                                 (if (gx#stx-null? _tl81908223_)
                                     (___kont1651916520_)
                                     (___kont1652116522_))))
                             (___kont1652116522_))
                         (___kont1652116522_)))
                 (___kont1652116522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1652116522_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest81528160_))
                                     (let ((_hd81578257_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest81528160_)))
                                           (_tl81588259_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest81528160_))))
                                       (let* ((_e8262_ _hd81578257_)
                                              (_rest8264_ _tl81588259_))
                                         (_K81568254_ _rest8264_ _e8262_)))
                                     (_else81548168_))))))
                       _hd80708116_
                       _hd80678108_
                       _hd80648100_
                       _hd80618092_)
                      (_g80518076_ _g80528079_))))
              (_g80518076_ _g80528079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g80518076_ _g80528079_))))
                                      (_g80518076_ _g80528079_))))
                              (_g80518076_ _g80528079_))))
                      (_g80518076_ _g80528079_)))))
          (_g80508266_ _stx8049_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_stx7903_)
        (letrec ((_import-set-template7905_
                  (lambda (_in8001_ _phi8002_)
                    (let ((_iphi8004_
                           (fx+ _phi8002_
                                (##direct-structure-ref
                                 _in8001_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports8005_
                           (##structure-ref
                            (##direct-structure-ref
                             _in8001_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp8007_ ((_rest8009_ _imports8005_) (_r8010_ '()))
                        (let* ((_rest80118019_ _rest8009_)
                               (_else80138027_ (lambda () _r8010_))
                               (_K80158037_
                                (lambda (_rest8030_ _in8031_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in8031_
                                         'gx#module-context::t))
                                      (if (fxzero? _iphi8004_)
                                          (_lp8007_
                                           _rest8030_
                                           (cons _in8031_ _r8010_))
                                          (_lp8007_ _rest8030_ _r8010_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in8031_
                                             'gx#module-import::t))
                                          (let ((_iphi8033_
                                                 (fx+ _phi8002_
                                                      (##direct-structure-ref
                                                       _in8031_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (fxzero? _iphi8033_)
                                                (_lp8007_
                                                 _rest8030_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _in8031_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _r8010_))
                                                (_lp8007_ _rest8030_ _r8010_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in8031_
                                                 'gx#import-set::t))
                                              (let ((_xphi8035_
                                                     (fx+ _iphi8004_
                                                          (##direct-structure-ref
                                                           _in8031_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (fxzero? _xphi8035_)
                                                    (_lp8007_
                                                     _rest8030_
                                                     (cons (##direct-structure-ref
                                                            _in8031_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _r8010_))
                                                    (if (fxpositive?
                                                         _xphi8035_)
                                                        (_lp8007_
                                                         _rest8030_
                                                         (foldl1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _r8010_
                         (_import-set-template7905_ _in8031_ _iphi8004_)))
                (_lp8007_ _rest8030_ _r8010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp8007_
                                               _rest8030_
                                               _r8010_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest80118019_))
                              (let ((_hd80168040_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest80118019_)))
                                    (_tl80178042_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest80118019_))))
                                (let* ((_in8045_ _hd80168040_)
                                       (_rest8047_ _tl80178042_))
                                  (_K80158037_ _rest8047_ _in8045_)))
                              (_else80138027_))))))))
          (let* ((_g79077917_
                  (lambda (_g79087914_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g79087914_)))
                 (_g79067998_
                  (lambda (_g79087920_)
                    (if (gx#stx-pair? _g79087920_)
                        (let ((_e79107922_ (gx#stx-e _g79087920_)))
                          (let ((_hd79117925_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e79107922_)))
                                (_tl79127927_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e79107922_))))
                            ((lambda (_L7930_)
                               (let ((_ht7941_ (make-table 'test: eq?)))
                                 (let _lp7943_ ((_rest7945_ _L7930_)
                                                (_loads7946_ '()))
                                   (letrec ((_K7948_ (lambda (_ctx7991_
                                                              _rest7992_)
                                                       (let ((_id7994_
                                                              (##structure-ref
                                                               _ctx7991_
                                                               '1
                                                               gx#expander-context::t
                                                               '#f)))
                                                         (if (table-ref
                                                              _ht7941_
                                                              _id7994_
                                                              '#f)
                                                             (_lp7943_
                                                              _rest7992_
                                                              _loads7946_)
                                                             (let ((_rt7996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (string-append
                             (gxc#module-id->path-string _id7994_)
                             '"__rt")))
                       (table-set! _ht7941_ _id7994_ _rt7996_)
                       (_lp7943_ _rest7992_ (cons _rt7996_ _loads7946_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest79497957_ _rest7945_)
                                            (_else79517969_
                                             (lambda ()
                                               (cons 'begin
                                                     (map (lambda (_g79647966_)
                                                            (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g79647966_))
                  (reverse _loads7946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_K79537979_
                                             (lambda (_rest7972_ _in7973_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in7973_
                                                      'gx#module-context::t))
                                                   (_K7948_ _in7973_
                                                            _rest7972_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in7973_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in7973_
                             '3
                             gx#module-import::t
                             '#f))
                   (_K7948_ (##direct-structure-ref
                             (##direct-structure-ref
                              _in7973_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)
                            _rest7972_)
                   (_lp7943_ _rest7972_ _loads7946_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in7973_
                      'gx#import-set::t))
                   (let ((_phi7975_
                          (##direct-structure-ref
                           _in7973_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _phi7975_)
                         (_K7948_ (##direct-structure-ref
                                   _in7973_
                                   '1
                                   gx#import-set::t
                                   '#f)
                                  _rest7972_)
                         (if (fxpositive? _phi7975_)
                             (let ((_deps7977_
                                    (_import-set-template7905_ _in7973_ '0)))
                               (_lp7943_
                                (foldl1 cons _rest7972_ _deps7977_)
                                _loads7946_))
                             (_lp7943_ _rest7972_ _loads7946_))))
                   (gxc#raise-compile-error
                    '"Unexpected import"
                    _stx7903_
                    _in7973_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest79497957_))
                                           (let ((_hd79547982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest79497957_)))
                                                 (_tl79557984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest79497957_))))
                                             (let* ((_in7987_ _hd79547982_)
                                                    (_rest7989_ _tl79557984_))
                                               (_K79537979_
                                                _rest7989_
                                                _in7987_)))
                                           (_else79517969_)))))))
                             _tl79127927_)))
                        (_g79077917_ _g79087920_)))))
            (_g79067998_ _stx7903_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_stx7719_)
        (letrec ((_add-lift!7721_
                  (lambda (_expr7901_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (cons _expr7901_ (unbox (gxc#current-compile-lift))))))
                 (_generate-syntax-quote7722_
                  (lambda (_id7898_ _marks7899_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _id7898_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _marks7899_ '()))))))))
                 (_generate-simple7723_
                  (lambda (_stxq7893_)
                    (let ((_gid7895_ (gxc#generate-runtime-temporary__% '#t))
                          (_qid7896_
                           (gxc#generate-runtime-identifier _stxq7893_)))
                      (_add-lift!7721_
                       (cons 'define
                             (cons _gid7895_
                                   (cons (_generate-syntax-quote7722_
                                          _qid7896_
                                          ''())
                                         '()))))
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq7893_
                       _gid7895_)
                      _gid7895_)))
                 (_generate-serialized7724_
                  (lambda (_stxq7883_ _marks7884_)
                    (let* ((_mark-refs7886_
                            (map _generate-mark7725_ _marks7884_))
                           (_gid7888_ (gxc#generate-runtime-temporary__% '#t))
                           (_qid7890_
                            (gxc#generate-runtime-identifier _stxq7883_)))
                      (_add-lift!7721_
                       (cons 'define
                             (cons _gid7888_
                                   (cons (_generate-syntax-quote7722_
                                          _qid7890_
                                          (cons 'list _mark-refs7886_))
                                         '()))))
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq7883_
                       _gid7888_)
                      _gid7888_)))
                 (_generate-mark7725_
                  (lambda (_mark7869_)
                    (let ((_$e7871_
                           (table-ref
                            (gxc#current-compile-marks)
                            _mark7869_
                            '#f)))
                      (if _$e7871_
                          (values _$e7871_)
                          (let* ((_gid7874_
                                  (gxc#generate-runtime-temporary__% '#t))
                                 (_repr7876_ (_serialize-mark7726_ _mark7869_))
                                 (_ctx7878_
                                  (gx#core-context-top__1
                                   (##structure-ref
                                    _mark7869_
                                    '2
                                    gx#expander-mark::t
                                    '#f)))
                                 (_ctx-ref7880_
                                  (if (eq? _ctx7878_
                                           (gx#current-expander-context))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_context-ref7727_
                                                               _ctx7878_)
                                                              '()))
                                                  '())))))
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark7869_
                             _gid7874_)
                            (_add-lift!7721_
                             (cons 'define
                                   (cons _gid7874_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr7876_ '()))
                   (cons _ctx-ref7880_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid7874_)))))
                 (_serialize-mark7726_
                  (lambda (_mark7816_)
                    (letrec ((_quote-e7818_
                              (lambda (_sym7867_)
                                (if (interned-symbol? _sym7867_)
                                    _sym7867_
                                    (gxc#generate-runtime-gensym-reference__0
                                     _sym7867_)))))
                      (let* ((_mark78197828_ _mark7816_)
                             (_E78217832_
                              (lambda ()
                                (error '"No clause matching" _mark78197828_)))
                             (_K78227844_
                              (lambda (_trace7835_
                                       _phi7836_
                                       _ctx7837_
                                       _subst7838_)
                                (let ((_subs7840_
                                       (if _subst7838_
                                           (table->list _subst7838_)
                                           '())))
                                  (cons _phi7836_
                                        (map (lambda (_pair7842_)
                                               (cons (_quote-e7818_
                                                      (car _pair7842_))
                                                     (_quote-e7818_
                                                      (cdr _pair7842_))))
                                             _subs7840_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark78197828_
                               'gx#expander-mark::t))
                            (let* ((_e78237847_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78197828_ '1)))
                                   (_subst7850_ _e78237847_)
                                   (_e78247852_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78197828_ '2)))
                                   (_ctx7855_ _e78247852_)
                                   (_e78257857_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78197828_ '3)))
                                   (_phi7860_ _e78257857_)
                                   (_e78267862_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78197828_ '4)))
                                   (_trace7865_ _e78267862_))
                              (_K78227844_
                               _trace7865_
                               _phi7860_
                               _ctx7855_
                               _subst7850_))
                            (_E78217832_))))))
                 (_context-ref7727_
                  (lambda (_ctx7803_)
                    (if (let ((__tmp16685
                               (##structure-ref
                                _ctx7803_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp16685
                           'gx#module-context::t))
                        (let ((_ctx-ref7805_
                               (_context-ref-nested7729_ _ctx7803_))
                              (_ctx-origin7806_
                               (_context-ref-origin7728_ _ctx7803_))
                              (_origin7807_
                               (_context-ref-origin7728_
                                (gx#current-expander-context))))
                          (if (eq? _origin7807_ _ctx-origin7806_)
                              (let ((_ref7809_
                                     (_context-ref-nested7729_
                                      (gx#current-expander-context))))
                                (let _lp7811_ ((_ref7813_ (cdr _ref7809_))
                                               (_ctx-ref7814_
                                                (cdr _ctx-ref7805_)))
                                  (if (and (pair? _ref7813_)
                                           (eq? (car _ref7813_)
                                                (car _ctx-ref7814_)))
                                      (_lp7811_
                                       (cdr _ref7813_)
                                       (cdr _ctx-ref7814_))
                                      (cons '#f _ctx-ref7814_))))
                              _ctx-ref7805_))
                        (make-symbol
                         '":"
                         (##structure-ref
                          _ctx7803_
                          '1
                          gx#expander-context::t
                          '#f)))))
                 (_context-ref-origin7728_
                  (lambda (_ctx7795_)
                    (let _lp7797_ ((_ctx7799_ _ctx7795_))
                      (let ((_super7801_
                             (##structure-ref
                              _ctx7799_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super7801_
                               'gx#module-context::t))
                            (_lp7797_ _super7801_)
                            _ctx7799_)))))
                 (_context-ref-nested7729_
                  (lambda (_ctx7786_)
                    (let _lp7788_ ((_ctx7790_ _ctx7786_) (_r7791_ '()))
                      (let ((_super7793_
                             (##structure-ref
                              _ctx7790_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super7793_
                               'gx#module-context::t))
                            (_lp7788_
                             _super7793_
                             (cons (car (##structure-ref
                                         _ctx7790_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _r7791_))
                            (cons (make-symbol
                                   '":"
                                   (##structure-ref
                                    _ctx7790_
                                    '1
                                    gx#expander-context::t
                                    '#f))
                                  _r7791_)))))))
          (let* ((_g77317744_
                  (lambda (_g77327741_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g77327741_)))
                 (_g77307783_
                  (lambda (_g77327747_)
                    (if (gx#stx-pair? _g77327747_)
                        (let ((_e77347749_ (gx#stx-e _g77327747_)))
                          (let ((_hd77357752_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e77347749_)))
                                (_tl77367754_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e77347749_))))
                            (if (gx#stx-pair? _tl77367754_)
                                (let ((_e77377757_ (gx#stx-e _tl77367754_)))
                                  (let ((_hd77387760_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e77377757_)))
                                        (_tl77397762_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e77377757_))))
                                    (if (gx#stx-null? _tl77397762_)
                                        ((lambda (_L7765_)
                                           (if (gx#identifier? _L7765_)
                                               (let ((_$e7778_
                                                      (table-ref
                                                       (gxc#current-compile-identifiers)
                                                       _L7765_
                                                       '#f)))
                                                 (if _$e7778_
                                                     (values _$e7778_)
                                                     (let ((_marks7781_
                                                            (##direct-structure-ref
                                                             _L7765_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _marks7781_)
                                                           (_generate-simple7723_
                                                            _L7765_)
                                                           (_generate-serialized7724_
                                                            _L7765_
                                                            _marks7781_)))))
                                               (gxc#raise-compile-error
                                                '"Cannot quote non-identifier syntax"
                                                _L7765_)))
                                         _hd77387760_)
                                        (_g77317744_ _g77327747_))))
                                (_g77317744_ _g77327747_))))
                        (_g77317744_ _g77327747_)))))
            (_g77307783_ _stx7719_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_stx7652_)
        (let* ((_g76547671_
                (lambda (_g76557668_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76557668_)))
               (_g76537716_
                (lambda (_g76557674_)
                  (if (gx#stx-pair? _g76557674_)
                      (let ((_e76587676_ (gx#stx-e _g76557674_)))
                        (let ((_hd76597679_
                               (let ()
                                 (declare (not safe))
                                 (##car _e76587676_)))
                              (_tl76607681_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e76587676_))))
                          (if (gx#stx-pair? _tl76607681_)
                              (let ((_e76617684_ (gx#stx-e _tl76607681_)))
                                (let ((_hd76627687_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e76617684_)))
                                      (_tl76637689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e76617684_))))
                                  (if (gx#stx-pair? _tl76637689_)
                                      (let ((_e76647692_
                                             (gx#stx-e _tl76637689_)))
                                        (let ((_hd76657695_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e76647692_)))
                                              (_tl76667697_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e76647692_))))
                                          (if (gx#stx-null? _tl76667697_)
                                              ((lambda (_L7700_ _L7701_)
                                                 (cons 'define
                                                       (cons (gx#stx-e _L7701_)
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7700_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd76657695_
                                               _hd76627687_)
                                              (_g76547671_ _g76557674_))))
                                      (_g76547671_ _g76557674_))))
                              (_g76547671_ _g76557674_))))
                      (_g76547671_ _g76557674_)))))
          (_g76537716_ _stx7652_))))
    (define gxc#generate-meta-begin%
      (lambda (_stx7601_ _state7602_)
        (let* ((_g76047614_
                (lambda (_g76057611_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76057611_)))
               (_g76037649_
                (lambda (_g76057617_)
                  (if (gx#stx-pair? _g76057617_)
                      (let ((_e76077619_ (gx#stx-e _g76057617_)))
                        (let ((_hd76087622_
                               (let ()
                                 (declare (not safe))
                                 (##car _e76077619_)))
                              (_tl76097624_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e76077619_))))
                          ((lambda (_L7627_)
                             (let* ((_c-body7641_
                                     (map (lambda (_g76367638_)
                                            (gxc#compile-e
                                             _g76367638_
                                             _state7602_))
                                          _L7627_))
                                    (_c-body7646_
                                     (filter (lambda (_$obj7643_)
                                               (not (eq? _$obj7643_ '#!void)))
                                             _c-body7641_)))
                               (cons '%#begin _c-body7646_)))
                           _tl76097624_)))
                      (_g76047614_ _g76057617_)))))
          (_g76037649_ _stx7601_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_stx7509_ _state7510_)
        (let* ((_g75127522_
                (lambda (_g75137519_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75137519_)))
               (_g75117598_
                (lambda (_g75137525_)
                  (if (gx#stx-pair? _g75137525_)
                      (let ((_e75157527_ (gx#stx-e _g75137525_)))
                        (let ((_hd75167530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e75157527_)))
                              (_tl75177532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e75157527_))))
                          ((lambda (_L7535_)
                             (let* ((_phi7545_
                                     (fx+ (gx#current-expander-phi) '1))
                                    (_block7547_
                                     (gxc#meta-state-begin-phi!
                                      _state7510_
                                      _phi7545_))
                                    (_compiled7550_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#apply-generate-meta-phi
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                '%#begin)
                                               _L7535_)
                                         _state7510_))
                                      gx#current-expander-phi
                                      _phi7545_)))
                               (let* ((_g75537563_
                                       (lambda (_g75547560_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g75547560_)))
                                      (_g75527595_
                                       (lambda (_g75547566_)
                                         (if (gx#stx-pair? _g75547566_)
                                             (let ((_e75567568_
                                                    (gx#stx-e _g75547566_)))
                                               (let ((_hd75577571_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e75567568_)))
                                                     (_tl75587573_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e75567568_))))
                                                 (if (gx#identifier?
                                                      _hd75577571_)
                                                     (if (gx#stx-eq?
                                                          '%#begin
                                                          _hd75577571_)
                                                         ((lambda (_L7576_)
                                                            (let ((_c-body7593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj7590_)
                                     (not (eq? _$obj7590_ '#!void)))
                                   _L7576_)))
                      (if _block7547_
                          (cons '%#begin-syntax
                                (cons (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'load-module
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _block7547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _c-body7593_))
                          (if (null? _c-body7593_)
                              '#!void
                              (cons '%#begin-syntax _c-body7593_)))))
                  _tl75587573_)
                 (_g75537563_ _g75547566_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g75537563_
                                                      _g75547566_))))
                                             (_g75537563_ _g75547566_)))))
                                 (_g75527595_ _compiled7550_))))
                           _tl75177532_)))
                      (_g75127522_ _g75137525_)))))
          (_g75117598_ _stx7509_))))
    (define gxc#generate-meta-module%
      (lambda (_stx7440_ _state7441_)
        (gxc#meta-state-end-phi! _state7441_)
        (let* ((_g74437457_
                (lambda (_g74447454_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g74447454_)))
               (_g74427506_
                (lambda (_g74447460_)
                  (if (gx#stx-pair? _g74447460_)
                      (let ((_e74477462_ (gx#stx-e _g74447460_)))
                        (let ((_hd74487465_
                               (let ()
                                 (declare (not safe))
                                 (##car _e74477462_)))
                              (_tl74497467_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e74477462_))))
                          (if (gx#stx-pair? _tl74497467_)
                              (let ((_e74507470_ (gx#stx-e _tl74497467_)))
                                (let ((_hd74517473_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e74507470_)))
                                      (_tl74527475_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e74507470_))))
                                  ((lambda (_L7478_ _L7479_)
                                     (let ((_key7492_
                                            (gx#core-identifier-key _L7479_)))
                                       (if (interned-symbol? _key7492_)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"Cannot compile module with uninterned id"
                                            _stx7440_
                                            _L7479_
                                            _key7492_))
                                       (let* ((_ctx7494_
                                               (gx#syntax-local-e__0 _L7479_))
                                              (_code7497_
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e
                                                   (##structure-ref
                                                    _ctx7494_
                                                    '11
                                                    gx#module-context::t
                                                    '#f)
                                                   _state7441_))
                                                gx#current-expander-context
                                                _ctx7494_))
                                              (_rt7499_
                                               (table-ref
                                                (gxc#current-compile-runtime-sections)
                                                _ctx7494_
                                                '#f))
                                              (_loader7501_
                                               (if _rt7499_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _rt7499_ '())) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_modid7503_ (gx#stx-e _L7479_)))
                                         (gxc#meta-state-end-phi! _state7441_)
                                         (cons '%#module
                                               (cons _modid7503_
                                                     (cons _code7497_
                                                           _loader7501_))))))
                                   _tl74527475_
                                   _hd74517473_)))
                              (_g74437457_ _g74447460_))))
                      (_g74437457_ _g74447460_)))))
          (_g74427506_ _stx7440_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx7430_ _context-chain7431_)
        (let _lp7433_ ((_ctx7435_ _ctx7430_) (_path7436_ '()))
          (let ((_super7438_
                 (##structure-ref _ctx7435_ '3 gx#phi-context::t '#f)))
            (if (memq _super7438_ _context-chain7431_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _ctx7435_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _path7436_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super7438_
                       'gx#module-context::t))
                    (_lp7433_
                     _super7438_
                     (cons (car (##structure-ref
                                 _ctx7435_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _path7436_))
                    (cons (make-symbol
                           '":"
                           (##structure-ref
                            _ctx7435_
                            '1
                            gx#expander-context::t
                            '#f))
                          _path7436_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp7425_ ((_ctx7427_ (gx#current-expander-context)) (_r7428_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx7427_ 'gx#module-context::t))
              (_lp7425_
               (##structure-ref _ctx7427_ '3 gx#phi-context::t '#f)
               (cons _ctx7427_ _r7428_))
              _r7428_))))
    (define gxc#generate-meta-import%
      (lambda (_stx7194_ _state7195_)
        (letrec* ((_context-chain7197_ (gxc#current-context-chain))
                  (_make-import-spec7198_
                   (lambda (_in7361_)
                     (let* ((_in73627374_ _in7361_)
                            (_E73647378_
                             (lambda ()
                               (error '"No clause matching" _in73627374_)))
                            (_K73657388_
                             (lambda (_phi7381_
                                      _name7382_
                                      _src-name7383_
                                      _src-phi7384_
                                      _src-key7385_
                                      _src-ctx7386_)
                               (cons _phi7381_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name7382_)
                                           (cons _src-phi7384_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _src-name7383_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in73627374_
                              'gx#module-import::t))
                           (let ((_e73667391_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _in73627374_ '1))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e73667391_
                                    'gx#module-export::t))
                                 (let* ((_e73697394_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e73667391_ '1)))
                                        (_src-ctx7397_ _e73697394_)
                                        (_e73707399_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e73667391_ '2)))
                                        (_src-key7402_ _e73707399_)
                                        (_e73717404_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e73667391_ '3)))
                                        (_src-phi7407_ _e73717404_)
                                        (_e73727409_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e73667391_ '4)))
                                        (_src-name7412_ _e73727409_)
                                        (_e73677414_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in73627374_ '2)))
                                        (_name7417_ _e73677414_)
                                        (_e73687419_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in73627374_ '3)))
                                        (_phi7422_ _e73687419_))
                                   (_K73657388_
                                    _phi7422_
                                    _name7417_
                                    _src-name7412_
                                    _src-phi7407_
                                    _src-key7402_
                                    _src-ctx7397_))
                                 (_E73647378_)))
                           (_E73647378_)))))
                  (_make-import-path7199_
                   (lambda (_ctx7359_)
                     (gxc#generate-meta-import-path
                      _ctx7359_
                      _context-chain7197_)))
                  (_make-import-spec-in7200_
                   (lambda (_ctx7356_ _in7357_)
                     (cons 'spec:
                           (cons (_make-import-path7199_ _ctx7356_)
                                 (reverse _in7357_))))))
          (gxc#meta-state-end-phi! _state7195_)
          (let* ((_g72027212_
                  (lambda (_g72037209_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g72037209_)))
                 (_g72017353_
                  (lambda (_g72037215_)
                    (if (gx#stx-pair? _g72037215_)
                        (let ((_e72057217_ (gx#stx-e _g72037215_)))
                          (let ((_hd72067220_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e72057217_)))
                                (_tl72077222_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e72057217_))))
                            ((lambda (_L7225_)
                               (let _lp7236_ ((_rest7238_ _L7225_)
                                              (_current-src7239_ '#f)
                                              (_current-in7240_ '())
                                              (_r7241_ '()))
                                 (let* ((_rest72427250_ _rest7238_)
                                        (_else72447260_
                                         (lambda ()
                                           (let ((_r7258_ (if _current-src7239_
                                                              (cons (_make-import-spec-in7200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src7239_
                             _current-in7240_)
                            _r7241_)
                      _r7241_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r7258_)))))
                                        (_K72467341_
                                         (lambda (_rest7263_ _in7264_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in7264_
                                                  'gx#module-import::t))
                                               (let* ((_in72657272_ _in7264_)
                                                      (_E72677276_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in72657272_)))
                                                      (_K72687281_
                                                       (lambda (_src-ctx7279_)
                                                         (if (eq? _current-src7239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx7279_)
                     (_lp7236_
                      _rest7263_
                      _current-src7239_
                      (cons (_make-import-spec7198_ _in7264_) _current-in7240_)
                      _r7241_)
                     (if _current-src7239_
                         (_lp7236_
                          _rest7263_
                          _src-ctx7279_
                          (cons (_make-import-spec7198_ _in7264_) '())
                          (cons (_make-import-spec-in7200_
                                 _current-src7239_
                                 _current-in7240_)
                                _r7241_))
                         (_lp7236_
                          _rest7263_
                          _src-ctx7279_
                          (cons (_make-import-spec7198_ _in7264_) '())
                          _r7241_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in72657272_
                                                        'gx#module-import::t))
                                                     (let ((_e72697284_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _in72657272_
                                                               '1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e72697284_
                                                              'gx#module-export::t))
                                                           (let* ((_e72707287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##vector-ref _e72697284_ '1)))
                          (_src-ctx7290_ _e72707287_))
                     (_K72687281_ _src-ctx7290_))
                   (_E72677276_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E72677276_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in7264_
                                                      'gx#import-set::t))
                                                   (let* ((_phi7292_
                                                           (##direct-structure-ref
                                                            _in7264_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src7294_
                                                           (##direct-structure-ref
                                                            _in7264_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in7334_
                                                           (let* ((_g72957304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path7199_ _src7294_))
                          (_E72987308_
                           (lambda ()
                             (error '"No clause matching" _g72957304_))))
                     (let ((_K73007324_ (lambda (_path7322_) _path7322_))
                           (_K72997314_
                            (lambda (_path7312_) (cons 'in: _path7312_))))
                       (if (let () (declare (not safe)) (##pair? _g72957304_))
                           (let ((_tl73027329_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g72957304_)))
                                 (_hd73017327_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g72957304_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl73027329_))
                                 (let ((_path7332_ _hd73017327_))
                                   (_K73007324_ _path7332_))
                                 (let ((_path7317_ _g72957304_))
                                   (_K72997314_ _path7317_))))
                           (let ((_path7317_ _g72957304_))
                             (_K72997314_ _path7317_))))))
                  (_r7336_ (if _current-src7239_
                               (cons (_make-import-spec-in7200_
                                      _current-src7239_
                                      _current-in7240_)
                                     _r7241_)
                               _r7241_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp7236_
                                                      _rest7263_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi7292_)
                                                                _src-in7334_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi7292_ (cons _src-in7334_ '()))))
                    _r7336_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in7264_
                                                          'gx#module-context::t))
                                                       (let ((_r7339_ (if _current-src7239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in7200_
                                         _current-src7239_
                                         _current-in7240_)
                                        _r7241_)
                                  _r7241_)))
                 (_lp7236_
                  _rest7263_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path7199_ _in7264_))
                        _r7339_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest72427250_))
                                       (let ((_hd72477344_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest72427250_)))
                                             (_tl72487346_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest72427250_))))
                                         (let* ((_in7349_ _hd72477344_)
                                                (_rest7351_ _tl72487346_))
                                           (_K72467341_ _rest7351_ _in7349_)))
                                       (_else72447260_)))))
                             _tl72077222_)))
                        (_g72027212_ _g72037215_)))))
            (_g72017353_ _stx7194_)))))
    (define gxc#generate-meta-export%
      (lambda (_stx7004_ _state7005_)
        (letrec* ((_context-chain7007_ (gxc#current-context-chain))
                  (_make-import-path7008_
                   (lambda (_ctx7192_)
                     (gxc#generate-meta-import-path
                      _ctx7192_
                      _context-chain7007_))))
          (let* ((_g70107020_
                  (lambda (_g70117017_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g70117017_)))
                 (_g70097189_
                  (lambda (_g70117023_)
                    (if (gx#stx-pair? _g70117023_)
                        (let ((_e70137025_ (gx#stx-e _g70117023_)))
                          (let ((_hd70147028_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e70137025_)))
                                (_tl70157030_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e70137025_))))
                            ((lambda (_L7033_)
                               (let _lp7044_ ((_rest7046_ _L7033_)
                                              (_r7047_ '()))
                                 (let* ((_rest70487056_ _rest7046_)
                                        (_else70507064_
                                         (lambda ()
                                           (cons '%#export (reverse _r7047_))))
                                        (_K70527177_
                                         (lambda (_rest7067_ _out7068_)
                                           (let* ((_out70697082_ _out7068_)
                                                  (_E70727086_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _out70697082_))))
                                             (let ((_K70767156_
                                                    (lambda (_name7152_
                                                             _phi7153_
                                                             _key7154_)
                                                      (_lp7044_
                                                       _rest7067_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _phi7153_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _key7154_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _name7152_)
                                             '()))))
                     _r7047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K70737136_
                                                    (lambda (_phi7090_
                                                             _src7091_)
                                                      (let* ((_out7131_
                                                              (if _src7091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_g70927101_
                                              (_make-import-path7008_
                                               _src7091_))
                                             (_E70957105_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _g70927101_))))
                                        (let ((_K70977121_
                                               (lambda (_path7119_)
                                                 _path7119_))
                                              (_K70967111_
                                               (lambda (_path7109_)
                                                 (cons 'in: _path7109_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _g70927101_))
                                              (let ((_tl70997126_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _g70927101_)))
                                                    (_hd70987124_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _g70927101_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl70997126_))
                                                    (let ((_path7129_
                                                           _hd70987124_))
                                                      (_K70977121_ _path7129_))
                                                    (let ((_path7114_
                                                           _g70927101_))
                                                      (_K70967111_
                                                       _path7114_))))
                                              (let ((_path7114_ _g70927101_))
                                                (_K70967111_ _path7114_)))))
                                      '()))
                          '#t))
                     (_out7133_
                      (if (fxzero? _phi7090_)
                          _out7131_
                          (cons 'phi: (cons _phi7090_ (cons _out7131_ '()))))))
                (_lp7044_ _rest7067_ (cons _out7133_ _r7047_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match70717149_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out70697082_
                                                               'gx#export-set::t))
                                                            (let* ((_e70747139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out70697082_ '1)))
                           (_e70757144_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out70697082_ '2))))
                      (let ((_src7142_ _e70747139_) (_phi7147_ _e70757144_))
                        (_K70737136_ _phi7147_ _src7142_)))
                    (_E70727086_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out70697082_
                                                        'gx#module-export::t))
                                                     (let* ((_e70777159_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _out70697082_ '1)))
                    (_e70787162_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out70697082_ '2)))
                    (_e70797167_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out70697082_ '3)))
                    (_e70807172_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out70697082_ '4))))
               (let ((_key7165_ _e70787162_)
                     (_phi7170_ _e70797167_)
                     (_name7175_ _e70807172_))
                 (_K70767156_ _name7175_ _phi7170_ _key7165_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_try-match70717149_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest70487056_))
                                       (let ((_hd70537180_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest70487056_)))
                                             (_tl70547182_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest70487056_))))
                                         (let* ((_out7185_ _hd70537180_)
                                                (_rest7187_ _tl70547182_))
                                           (_K70527177_ _rest7187_ _out7185_)))
                                       (_else70507064_)))))
                             _tl70157030_)))
                        (_g70107020_ _g70117023_)))))
            (_g70097189_ _stx7004_)))))
    (define gxc#generate-meta-provide%
      (lambda (_stx6965_ _state6966_)
        (gxc#meta-state-end-phi! _state6966_)
        (let* ((_g69686978_
                (lambda (_g69696975_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g69696975_)))
               (_g69677001_
                (lambda (_g69696981_)
                  (if (gx#stx-pair? _g69696981_)
                      (let ((_e69716983_ (gx#stx-e _g69696981_)))
                        (let ((_hd69726986_
                               (let ()
                                 (declare (not safe))
                                 (##car _e69716983_)))
                              (_tl69736988_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e69716983_))))
                          ((lambda (_L6991_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L6991_)))
                           _tl69736988_)))
                      (_g69686978_ _g69696981_)))))
          (_g69677001_ _stx6965_))))
    (define gxc#generate-meta-extern%
      (lambda (_stx6836_ _state6837_)
        (letrec ((_generate16839_
                  (lambda (_id6960_ _eid6961_)
                    (let ((_eid6963_ (gx#stx-e _eid6961_)))
                      (if (interned-symbol? _eid6963_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx6836_
                           _eid6963_))
                      (cons (gxc#generate-runtime-identifier _id6960_)
                            (cons _eid6963_ '()))))))
          (let* ((_g68416869_
                  (lambda (_g68426866_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g68426866_)))
                 (_g68406957_
                  (lambda (_g68426872_)
                    (if (gx#stx-pair? _g68426872_)
                        (let ((_e68456874_ (gx#stx-e _g68426872_)))
                          (let ((_hd68466877_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e68456874_)))
                                (_tl68476879_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e68456874_))))
                            (if (gx#stx-pair/null? _tl68476879_)
                                (let ((_g16686_
                                       (gx#syntax-split-splice
                                        _tl68476879_
                                        '0)))
                                  (begin
                                    (let ((_g16687_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g16686_)
                                                 (##vector-length _g16686_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g16687_ 2)))
                                          (error "Context expects 2 values"
                                                 _g16687_)))
                                    (let ((_target68486882_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16686_ 0)))
                                          (_tl68506884_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16686_ 1))))
                                      (if (gx#stx-null? _tl68506884_)
                                          (letrec ((_loop68516887_
                                                    (lambda (_hd68496890_
                                                             _eid68556892_
                                                             _id68566894_)
                                                      (if (gx#stx-pair?
                                                           _hd68496890_)
                                                          (let ((_e68526897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd68496890_)))
                    (let ((_lp-hd68536900_
                           (let () (declare (not safe)) (##car _e68526897_)))
                          (_lp-tl68546902_
                           (let () (declare (not safe)) (##cdr _e68526897_))))
                      (if (gx#stx-pair? _lp-hd68536900_)
                          (let ((_e68596905_ (gx#stx-e _lp-hd68536900_)))
                            (let ((_hd68606908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e68596905_)))
                                  (_tl68616910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e68596905_))))
                              (if (gx#stx-pair? _tl68616910_)
                                  (let ((_e68626913_ (gx#stx-e _tl68616910_)))
                                    (let ((_hd68636916_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e68626913_)))
                                          (_tl68646918_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e68626913_))))
                                      (if (gx#stx-null? _tl68646918_)
                                          (_loop68516887_
                                           _lp-tl68546902_
                                           (cons _hd68636916_ _eid68556892_)
                                           (cons _hd68606908_ _id68566894_))
                                          (_g68416869_ _g68426872_))))
                                  (_g68416869_ _g68426872_))))
                          (_g68416869_ _g68426872_))))
                  (let ((_eid68576921_ (reverse _eid68556892_))
                        (_id68586923_ (reverse _id68566894_)))
                    ((lambda (_L6926_ _L6927_)
                       (cons '%#extern
                             (map _generate16839_
                                  (foldr1 (lambda (_g69426945_ _g69436947_)
                                            (cons _g69426945_ _g69436947_))
                                          '()
                                          _L6927_)
                                  (foldr1 (lambda (_g69496952_ _g69506954_)
                                            (cons _g69496952_ _g69506954_))
                                          '()
                                          _L6926_))))
                     _eid68576921_
                     _id68586923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop68516887_
                                             _target68486882_
                                             '()
                                             '()))
                                          (_g68416869_ _g68426872_)))))
                                (_g68416869_ _g68426872_))))
                        (_g68416869_ _g68426872_)))))
            (_g68406957_ _stx6836_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_stx6626_ _state6627_)
        (letrec ((_generate16629_
                  (lambda (_id6831_)
                    (let ((_eid6833_
                           (gxc#generate-runtime-binding-id _id6831_))
                          (_ident6834_
                           (gxc#generate-runtime-identifier _id6831_)))
                      (cons '%#define-runtime
                            (cons _ident6834_ (cons _eid6833_ '()))))))
                 (_generate*6630_
                  (lambda (_all6799_)
                    (let* ((_all68006808_ _all6799_)
                           (_else68026816_
                            (lambda () (cons '%#begin _all6799_)))
                           (_K68046821_ (lambda (_one6819_) _one6819_)))
                      (if (let () (declare (not safe)) (##pair? _all68006808_))
                          (let ((_hd68056824_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all68006808_)))
                                (_tl68066826_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all68006808_))))
                            (let ((_one6829_ _hd68056824_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl68066826_))
                                  (_K68046821_ _one6829_)
                                  (_else68026816_))))
                          (_else68026816_))))))
          (let* ((_g66326649_
                  (lambda (_g66336646_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g66336646_)))
                 (_g66316796_
                  (lambda (_g66336652_)
                    (if (gx#stx-pair? _g66336652_)
                        (let ((_e66366654_ (gx#stx-e _g66336652_)))
                          (let ((_hd66376657_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e66366654_)))
                                (_tl66386659_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e66366654_))))
                            (if (gx#stx-pair? _tl66386659_)
                                (let ((_e66396662_ (gx#stx-e _tl66386659_)))
                                  (let ((_hd66406665_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e66396662_)))
                                        (_tl66416667_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e66396662_))))
                                    (if (gx#stx-pair? _tl66416667_)
                                        (let ((_e66426670_
                                               (gx#stx-e _tl66416667_)))
                                          (let ((_hd66436673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e66426670_)))
                                                (_tl66446675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e66426670_))))
                                            (if (gx#stx-null? _tl66446675_)
                                                ((lambda (_L6678_ _L6679_)
                                                   (let _lp6695_ ((_rest6697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6679_)
                          (_r6698_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx1659216593_
                                                             _rest6697_)
                                                            (_g67036720_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx1659216593_))))
                                                       (let ((___kont1659416595_
                                                              (lambda (_L6783_)
                                                                (_lp6695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6783_
                         _r6698_)))
                     (___kont1659616597_
                      (lambda (_L6756_ _L6757_)
                        (_lp6695_
                         _L6756_
                         (cons (_generate16629_ _L6757_) _r6698_))))
                     (___kont1659816599_
                      (lambda (_L6732_)
                        (_generate*6630_
                         (foldl1 cons
                                 (cons (_generate16629_ _L6732_) '())
                                 _r6698_))))
                     (___kont1660016601_
                      (lambda () (_generate*6630_ (reverse _r6698_)))))
                 (let ((_g67016743_
                        (lambda ()
                          (let ((_L6732_ ___stx1659216593_))
                            (if (gx#identifier? _L6732_)
                                (___kont1659816599_ _L6732_)
                                (___kont1660016601_))))))
                   (if (gx#stx-pair? ___stx1659216593_)
                       (let ((_e67066772_ (gx#stx-e ___stx1659216593_)))
                         (let ((_tl67086777_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e67066772_)))
                               (_hd67076775_
                                (let ()
                                  (declare (not safe))
                                  (##car _e67066772_))))
                           (if (gx#stx-datum? _hd67076775_)
                               (let ((_e67096780_ (gx#stx-e _hd67076775_)))
                                 (if (equal? _e67096780_ '#f)
                                     (___kont1659416595_ _tl67086777_)
                                     (___kont1659616597_
                                      _tl67086777_
                                      _hd67076775_)))
                               (___kont1659616597_
                                _tl67086777_
                                _hd67076775_))))
                       (_g67016743_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd66436673_
                                                 _hd66406665_)
                                                (_g66326649_ _g66336652_))))
                                        (_g66326649_ _g66336652_))))
                                (_g66326649_ _g66336652_))))
                        (_g66326649_ _g66336652_)))))
            (_g66316796_ _stx6626_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_stx6523_ _state6524_)
        (let* ((_g65266543_
                (lambda (_g65276540_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g65276540_)))
               (_g65256623_
                (lambda (_g65276546_)
                  (if (gx#stx-pair? _g65276546_)
                      (let ((_e65306548_ (gx#stx-e _g65276546_)))
                        (let ((_hd65316551_
                               (let ()
                                 (declare (not safe))
                                 (##car _e65306548_)))
                              (_tl65326553_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e65306548_))))
                          (if (gx#stx-pair? _tl65326553_)
                              (let ((_e65336556_ (gx#stx-e _tl65326553_)))
                                (let ((_hd65346559_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65336556_)))
                                      (_tl65356561_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65336556_))))
                                  (if (gx#stx-pair? _tl65356561_)
                                      (let ((_e65366564_
                                             (gx#stx-e _tl65356561_)))
                                        (let ((_hd65376567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65366564_)))
                                              (_tl65386569_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65366564_))))
                                          (if (gx#stx-null? _tl65386569_)
                                              ((lambda (_L6572_ _L6573_)
                                                 (let* ((_eid6588_
                                                         (gxc#generate-runtime-binding-id
                                                          _L6573_))
                                                        (_phi6590_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1))
                                                        (_block6592_
                                                         (gxc#meta-state-begin-phi!
                                                          _state6524_
                                                          _phi6590_)))
                                                   (let* ((_g65956602_
                                                           (lambda (_g65966599_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g65966599_)))
                                                          (_g65946620_
                                                           (lambda (_g65966605_)
                                                             ((lambda (_L6607_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state6524_
                           _phi6590_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L6607_ (cons _L6572_ '()))))))
                      _g65966605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65946620_ _eid6588_))
                                                   (if _block6592_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block6592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L6573_)
                                             (cons _eid6588_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L6573_)
                           (cons _eid6588_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd65376567_
                                               _hd65346559_)
                                              (_g65266543_ _g65276546_))))
                                      (_g65266543_ _g65276546_))))
                              (_g65266543_ _g65276546_))))
                      (_g65266543_ _g65276546_)))))
          (_g65256623_ _stx6523_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_stx6455_ _state6456_)
        (let* ((_g64586475_
                (lambda (_g64596472_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g64596472_)))
               (_g64576520_
                (lambda (_g64596478_)
                  (if (gx#stx-pair? _g64596478_)
                      (let ((_e64626480_ (gx#stx-e _g64596478_)))
                        (let ((_hd64636483_
                               (let ()
                                 (declare (not safe))
                                 (##car _e64626480_)))
                              (_tl64646485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e64626480_))))
                          (if (gx#stx-pair? _tl64646485_)
                              (let ((_e64656488_ (gx#stx-e _tl64646485_)))
                                (let ((_hd64666491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e64656488_)))
                                      (_tl64676493_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e64656488_))))
                                  (if (gx#stx-pair? _tl64676493_)
                                      (let ((_e64686496_
                                             (gx#stx-e _tl64676493_)))
                                        (let ((_hd64696499_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e64686496_)))
                                              (_tl64706501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e64686496_))))
                                          (if (gx#stx-null? _tl64706501_)
                                              ((lambda (_L6504_ _L6505_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _L6505_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6504_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd64696499_
                                               _hd64666491_)
                                              (_g64586475_ _g64596478_))))
                                      (_g64586475_ _g64596478_))))
                              (_g64586475_ _g64596478_))))
                      (_g64586475_ _g64596478_)))))
          (_g64576520_ _stx6455_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_stx6452_ _state6453_)
        (gxc#meta-state-add-phi!
         _state6453_
         (gx#current-expander-phi)
         _stx6452_)
        (gxc#generate-meta-define-values% _stx6452_ _state6453_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_stx6449_ _state6450_)
        (gxc#meta-state-add-phi!
         _state6450_
         (gx#current-expander-phi)
         _stx6449_)
        '#!void))
    (define gxc#meta-state::t
      (make-struct-type
       'gxc#meta-state::t
       '#f
       '4
       'meta-state
       '()
       ':init!
       '(src n open blocks)))
    (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
    (define gxc#make-meta-state
      (lambda _$args6446_
        (apply make-struct-instance gxc#meta-state::t _$args6446_)))
    (define gxc#meta-state-src
      (make-struct-field-accessor gxc#meta-state::t '0))
    (define gxc#meta-state-n (make-struct-field-accessor gxc#meta-state::t '1))
    (define gxc#meta-state-open
      (make-struct-field-accessor gxc#meta-state::t '2))
    (define gxc#meta-state-blocks
      (make-struct-field-accessor gxc#meta-state::t '3))
    (define gxc#meta-state-src-set!
      (make-struct-field-mutator gxc#meta-state::t '0))
    (define gxc#meta-state-n-set!
      (make-struct-field-mutator gxc#meta-state::t '1))
    (define gxc#meta-state-open-set!
      (make-struct-field-mutator gxc#meta-state::t '2))
    (define gxc#meta-state-blocks-set!
      (make-struct-field-mutator gxc#meta-state::t '3))
    (define gxc#meta-state:::init!
      (lambda (_self6443_ _ctx6444_)
        (if (let ((__tmp16688
                   (let () (declare (not safe)) (##vector-length _self6443_))))
              (declare (not safe))
              (##fx< '4 __tmp16688))
            (begin
              (let ((__tmp16689
                     (gxc#module-id->path-string
                      (##structure-ref
                       _ctx6444_
                       '1
                       gx#expander-context::t
                       '#f))))
                (declare (not safe))
                (##vector-set! _self6443_ '1 __tmp16689))
              (let () (declare (not safe)) (##vector-set! _self6443_ '2 '1))
              (let ((__tmp16690 (make-table 'test: eq?)))
                (declare (not safe))
                (##vector-set! _self6443_ '3 __tmp16690))
              (let () (declare (not safe)) (##vector-set! _self6443_ '4 '())))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self6443_))))
    (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f)
    (define gxc#meta-state-block::t
      (make-struct-type
       'gxc#meta-state-block::t
       '#f
       '4
       'meta-state-block
       '()
       '#f
       '(ctx phi n code)))
    (define gxc#meta-state-block?
      (make-struct-predicate gxc#meta-state-block::t))
    (define gxc#make-meta-state-block
      (lambda _$args6318_
        (apply make-struct-instance gxc#meta-state-block::t _$args6318_)))
    (define gxc#meta-state-block-ctx
      (make-struct-field-accessor gxc#meta-state-block::t '0))
    (define gxc#meta-state-block-phi
      (make-struct-field-accessor gxc#meta-state-block::t '1))
    (define gxc#meta-state-block-n
      (make-struct-field-accessor gxc#meta-state-block::t '2))
    (define gxc#meta-state-block-code
      (make-struct-field-accessor gxc#meta-state-block::t '3))
    (define gxc#meta-state-block-ctx-set!
      (make-struct-field-mutator gxc#meta-state-block::t '0))
    (define gxc#meta-state-block-phi-set!
      (make-struct-field-mutator gxc#meta-state-block::t '1))
    (define gxc#meta-state-block-n-set!
      (make-struct-field-mutator gxc#meta-state-block::t '2))
    (define gxc#meta-state-block-code-set!
      (make-struct-field-mutator gxc#meta-state-block::t '3))
    (define gxc#meta-state-begin-phi!
      (lambda (_state6277_ _phi6278_)
        (let* ((_state62796287_ _state6277_)
               (_E62816291_
                (lambda () (error '"No clause matching" _state62796287_)))
               (_K62826300_
                (lambda (_open6294_ _n6295_ _src6296_)
                  (if (table-ref _open6294_ _phi6278_ '#f)
                      '#f
                      (let ((_block-ref6298_
                             (string-append
                              _src6296_
                              '"__"
                              (number->string _n6295_))))
                        (##structure-set!
                         _state6277_
                         (fx+ _n6295_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open6294_
                         _phi6278_
                         (let ((__tmp16691 (gx#current-expander-context)))
                           (declare (not safe))
                           (##structure
                            gxc#meta-state-block::t
                            __tmp16691
                            _phi6278_
                            _n6295_
                            '())))
                        _block-ref6298_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _state62796287_ 'gxc#meta-state::t))
              (let* ((_e62836303_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state62796287_ '1)))
                     (_src6306_ _e62836303_)
                     (_e62846308_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state62796287_ '2)))
                     (_n6311_ _e62846308_)
                     (_e62856313_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state62796287_ '3)))
                     (_open6316_ _e62856313_))
                (_K62826300_ _open6316_ _n6311_ _src6306_))
              (_E62816291_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_state6271_ _phi6272_ _stx6273_)
        (let ((_block6275_
               (table-ref
                (##structure-ref _state6271_ '3 gxc#meta-state::t '#f)
                _phi6272_
                '#f)))
          (##structure-set!
           _block6275_
           (cons _stx6273_
                 (##structure-ref _block6275_ '4 gxc#meta-state-block::t '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state6266_)
        (##structure-set!
         _state6266_
         (hash-fold
          (lambda (_g16692_ _block6268_ _r6269_) (cons _block6268_ _r6269_))
          (##structure-ref _state6266_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state6266_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state6266_
         (make-table 'test: eq?)
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state6218_)
        (gxc#meta-state-end-phi! _state6218_)
        (foldl1 (lambda (_block6220_ _r6221_)
                  (let* ((_block62226231_ _block6220_)
                         (_E62246235_
                          (lambda ()
                            (error '"No clause matching" _block62226231_)))
                         (_K62256243_
                          (lambda (_code6238_ _n6239_ _phi6240_ _ctx6241_)
                            (if (null? _code6238_)
                                _r6221_
                                (cons (cons _ctx6241_
                                            (cons _phi6240_
                                                  (cons _n6239_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code6238_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r6221_)))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _block62226231_
                           'gxc#meta-state-block::t))
                        (let* ((_e62266246_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block62226231_ '1)))
                               (_ctx6249_ _e62266246_)
                               (_e62276251_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block62226231_ '2)))
                               (_phi6254_ _e62276251_)
                               (_e62286256_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block62226231_ '3)))
                               (_n6259_ _e62286256_)
                               (_e62296261_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block62226231_ '4)))
                               (_code6264_ _e62296261_))
                          (_K62256243_ _code6264_ _n6259_ _phi6254_ _ctx6249_))
                        (_E62246235_))))
                '()
                (##structure-ref _state6218_ '4 gxc#meta-state::t '#f))))
    (define gxc#collect-expression-refs
      (lambda (_stx6214_)
        (let ((_ht6216_ (make-table 'test: eq?)))
          (gxc#apply-collect-expression-refs _stx6214_ _ht6216_)
          _ht6216_)))
    (define gxc#collect-refs-ref%
      (lambda (_stx6157_ _ht6158_)
        (let* ((_g61606173_
                (lambda (_g61616170_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61616170_)))
               (_g61596211_
                (lambda (_g61616176_)
                  (if (gx#stx-pair? _g61616176_)
                      (let ((_e61636178_ (gx#stx-e _g61616176_)))
                        (let ((_hd61646181_
                               (let ()
                                 (declare (not safe))
                                 (##car _e61636178_)))
                              (_tl61656183_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e61636178_))))
                          (if (gx#stx-pair? _tl61656183_)
                              (let ((_e61666186_ (gx#stx-e _tl61656183_)))
                                (let ((_hd61676189_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e61666186_)))
                                      (_tl61686191_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e61666186_))))
                                  (if (gx#stx-null? _tl61686191_)
                                      ((lambda (_L6194_)
                                         (let* ((_bind6206_
                                                 (gx#resolve-identifier__0
                                                  _L6194_))
                                                (_eid6208_
                                                 (if _bind6206_
                                                     (##structure-ref
                                                      _bind6206_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L6194_))))
                                           (table-set!
                                            _ht6158_
                                            _eid6208_
                                            _eid6208_)))
                                       _hd61676189_)
                                      (_g61606173_ _g61616176_))))
                              (_g61606173_ _g61616176_))))
                      (_g61606173_ _g61616176_)))))
          (_g61596211_ _stx6157_))))
    (define gxc#collect-refs-setq%
      (lambda (_stx6084_ _ht6085_)
        (let* ((_g60876104_
                (lambda (_g60886101_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g60886101_)))
               (_g60866154_
                (lambda (_g60886107_)
                  (if (gx#stx-pair? _g60886107_)
                      (let ((_e60916109_ (gx#stx-e _g60886107_)))
                        (let ((_hd60926112_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60916109_)))
                              (_tl60936114_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60916109_))))
                          (if (gx#stx-pair? _tl60936114_)
                              (let ((_e60946117_ (gx#stx-e _tl60936114_)))
                                (let ((_hd60956120_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e60946117_)))
                                      (_tl60966122_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e60946117_))))
                                  (if (gx#stx-pair? _tl60966122_)
                                      (let ((_e60976125_
                                             (gx#stx-e _tl60966122_)))
                                        (let ((_hd60986128_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e60976125_)))
                                              (_tl60996130_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e60976125_))))
                                          (if (gx#stx-null? _tl60996130_)
                                              ((lambda (_L6133_ _L6134_)
                                                 (let* ((_bind6149_
                                                         (gx#resolve-identifier__0
                                                          _L6134_))
                                                        (_eid6151_
                                                         (if _bind6149_
                                                             (##structure-ref
                                                              _bind6149_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L6134_))))
                                                   (table-set!
                                                    _ht6085_
                                                    _eid6151_
                                                    _eid6151_)
                                                   (gxc#compile-e
                                                    _L6133_
                                                    _ht6085_)))
                                               _hd60986128_
                                               _hd60956120_)
                                              (_g60876104_ _g60886107_))))
                                      (_g60876104_ _g60886107_))))
                              (_g60876104_ _g60886107_))))
                      (_g60876104_ _g60886107_)))))
          (_g60866154_ _stx6084_))))
    (define gxc#find-runtime-begin%
      (lambda (_stx6046_)
        (let* ((_g60486058_
                (lambda (_g60496055_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g60496055_)))
               (_g60476081_
                (lambda (_g60496061_)
                  (if (gx#stx-pair? _g60496061_)
                      (let ((_e60516063_ (gx#stx-e _g60496061_)))
                        (let ((_hd60526066_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60516063_)))
                              (_tl60536068_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60516063_))))
                          ((lambda (_L6071_) (ormap1 gxc#compile-e _L6071_))
                           _tl60536068_)))
                      (_g60486058_ _g60496061_)))))
          (_g60476081_ _stx6046_))))
    (define gxc#find-lambda-expression-begin%
      (lambda (_stx6008_)
        (let* ((_g60106020_
                (lambda (_g60116017_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g60116017_)))
               (_g60096043_
                (lambda (_g60116023_)
                  (if (gx#stx-pair? _g60116023_)
                      (let ((_e60136025_ (gx#stx-e _g60116023_)))
                        (let ((_hd60146028_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60136025_)))
                              (_tl60156030_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60136025_))))
                          ((lambda (_L6033_) (gxc#compile-e (last _L6033_)))
                           _tl60156030_)))
                      (_g60106020_ _g60116023_)))))
          (_g60096043_ _stx6008_))))
    (define gxc#find-lambda-expression-begin-annotation%
      (lambda (_stx5941_)
        (let* ((_g59435960_
                (lambda (_g59445957_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g59445957_)))
               (_g59426005_
                (lambda (_g59445963_)
                  (if (gx#stx-pair? _g59445963_)
                      (let ((_e59475965_ (gx#stx-e _g59445963_)))
                        (let ((_hd59485968_
                               (let ()
                                 (declare (not safe))
                                 (##car _e59475965_)))
                              (_tl59495970_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e59475965_))))
                          (if (gx#stx-pair? _tl59495970_)
                              (let ((_e59505973_ (gx#stx-e _tl59495970_)))
                                (let ((_hd59515976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e59505973_)))
                                      (_tl59525978_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e59505973_))))
                                  (if (gx#stx-pair? _tl59525978_)
                                      (let ((_e59535981_
                                             (gx#stx-e _tl59525978_)))
                                        (let ((_hd59545984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e59535981_)))
                                              (_tl59555986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e59535981_))))
                                          (if (gx#stx-null? _tl59555986_)
                                              ((lambda (_L5989_ _L5990_)
                                                 (gxc#compile-e _L5989_))
                                               _hd59545984_
                                               _hd59515976_)
                                              (_g59435960_ _g59445963_))))
                                      (_g59435960_ _g59445963_))))
                              (_g59435960_ _g59445963_))))
                      (_g59435960_ _g59445963_)))))
          (_g59426005_ _stx5941_))))
    (define gxc#find-lambda-expression-let-values%
      (lambda (_stx5874_)
        (let* ((_g58765893_
                (lambda (_g58775890_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58775890_)))
               (_g58755938_
                (lambda (_g58775896_)
                  (if (gx#stx-pair? _g58775896_)
                      (let ((_e58805898_ (gx#stx-e _g58775896_)))
                        (let ((_hd58815901_
                               (let ()
                                 (declare (not safe))
                                 (##car _e58805898_)))
                              (_tl58825903_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e58805898_))))
                          (if (gx#stx-pair? _tl58825903_)
                              (let ((_e58835906_ (gx#stx-e _tl58825903_)))
                                (let ((_hd58845909_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e58835906_)))
                                      (_tl58855911_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e58835906_))))
                                  (if (gx#stx-pair? _tl58855911_)
                                      (let ((_e58865914_
                                             (gx#stx-e _tl58855911_)))
                                        (let ((_hd58875917_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e58865914_)))
                                              (_tl58885919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e58865914_))))
                                          (if (gx#stx-null? _tl58885919_)
                                              ((lambda (_L5922_ _L5923_)
                                                 (gxc#compile-e _L5922_))
                                               _hd58875917_
                                               _hd58845909_)
                                              (_g58765893_ _g58775896_))))
                                      (_g58765893_ _g58775896_))))
                              (_g58765893_ _g58775896_))))
                      (_g58765893_ _g58775896_)))))
          (_g58755938_ _stx5874_))))
    (define gxc#count-values-single% (lambda (_stx5872_) '1))
    (define gxc#count-values-begin%
      (lambda (_stx5790_)
        (let* ((_g57925811_
                (lambda (_g57935808_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g57935808_)))
               (_g57915869_
                (lambda (_g57935814_)
                  (if (gx#stx-pair? _g57935814_)
                      (let ((_e57955816_ (gx#stx-e _g57935814_)))
                        (let ((_hd57965819_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57955816_)))
                              (_tl57975821_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57955816_))))
                          (if (gx#stx-pair/null? _tl57975821_)
                              (let ((_g16693_
                                     (gx#syntax-split-splice _tl57975821_ '0)))
                                (begin
                                  (let ((_g16694_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g16693_)
                                               (##vector-length _g16693_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g16694_ 2)))
                                        (error "Context expects 2 values"
                                               _g16694_)))
                                  (let ((_target57985824_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16693_ 0)))
                                        (_tl58005826_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16693_ 1))))
                                    (if (gx#stx-null? _tl58005826_)
                                        (letrec ((_loop58015829_
                                                  (lambda (_hd57995832_
                                                           _expr58055834_)
                                                    (if (gx#stx-pair?
                                                         _hd57995832_)
                                                        (let ((_e58025837_
                                                               (gx#stx-e
                                                                _hd57995832_)))
                                                          (let ((_lp-hd58035840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e58025837_)))
                        (_lp-tl58045842_
                         (let () (declare (not safe)) (##cdr _e58025837_))))
                    (_loop58015829_
                     _lp-tl58045842_
                     (cons _lp-hd58035840_ _expr58055834_))))
                (let ((_expr58065845_ (reverse _expr58055834_)))
                  ((lambda (_L5848_)
                     (gxc#compile-e
                      (last (foldr1 (lambda (_g58615864_ _g58625866_)
                                      (cons _g58615864_ _g58625866_))
                                    '()
                                    _L5848_))))
                   _expr58065845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop58015829_
                                           _target57985824_
                                           '()))
                                        (_g57925811_ _g57935814_)))))
                              (_g57925811_ _g57935814_))))
                      (_g57925811_ _g57935814_)))))
          (_g57915869_ _stx5790_))))
    (define gxc#count-values-begin-annotation%
      (lambda (_stx5723_)
        (let* ((_g57255742_
                (lambda (_g57265739_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g57265739_)))
               (_g57245787_
                (lambda (_g57265745_)
                  (if (gx#stx-pair? _g57265745_)
                      (let ((_e57295747_ (gx#stx-e _g57265745_)))
                        (let ((_hd57305750_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57295747_)))
                              (_tl57315752_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57295747_))))
                          (if (gx#stx-pair? _tl57315752_)
                              (let ((_e57325755_ (gx#stx-e _tl57315752_)))
                                (let ((_hd57335758_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57325755_)))
                                      (_tl57345760_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57325755_))))
                                  (if (gx#stx-pair? _tl57345760_)
                                      (let ((_e57355763_
                                             (gx#stx-e _tl57345760_)))
                                        (let ((_hd57365766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e57355763_)))
                                              (_tl57375768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e57355763_))))
                                          (if (gx#stx-null? _tl57375768_)
                                              ((lambda (_L5771_ _L5772_)
                                                 (gxc#compile-e _L5771_))
                                               _hd57365766_
                                               _hd57335758_)
                                              (_g57255742_ _g57265745_))))
                                      (_g57255742_ _g57265745_))))
                              (_g57255742_ _g57265745_))))
                      (_g57255742_ _g57265745_)))))
          (_g57245787_ _stx5723_))))
    (define gxc#count-values-let-values%
      (lambda (_stx5656_)
        (let* ((_g56585675_
                (lambda (_g56595672_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g56595672_)))
               (_g56575720_
                (lambda (_g56595678_)
                  (if (gx#stx-pair? _g56595678_)
                      (let ((_e56625680_ (gx#stx-e _g56595678_)))
                        (let ((_hd56635683_
                               (let ()
                                 (declare (not safe))
                                 (##car _e56625680_)))
                              (_tl56645685_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e56625680_))))
                          (if (gx#stx-pair? _tl56645685_)
                              (let ((_e56655688_ (gx#stx-e _tl56645685_)))
                                (let ((_hd56665691_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e56655688_)))
                                      (_tl56675693_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e56655688_))))
                                  (if (gx#stx-pair? _tl56675693_)
                                      (let ((_e56685696_
                                             (gx#stx-e _tl56675693_)))
                                        (let ((_hd56695699_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e56685696_)))
                                              (_tl56705701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e56685696_))))
                                          (if (gx#stx-null? _tl56705701_)
                                              ((lambda (_L5704_ _L5705_)
                                                 (gxc#compile-e _L5704_))
                                               _hd56695699_
                                               _hd56665691_)
                                              (_g56585675_ _g56595678_))))
                                      (_g56585675_ _g56595678_))))
                              (_g56585675_ _g56595678_))))
                      (_g56585675_ _g56595678_)))))
          (_g56575720_ _stx5656_))))
    (define gxc#count-values-call%
      (lambda (_stx5523_)
        (let* ((___stx1662216623_ _stx5523_)
               (_g55265555_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1662216623_))))
          (let ((___kont1662416625_
                 (lambda (_L5623_ _L5624_)
                   (length (foldr1 (lambda (_g56455648_ _g56465650_)
                                     (cons _g56455648_ _g56465650_))
                                   '()
                                   _L5623_))))
                (___kont1662816629_ (lambda () '#f)))
            (let ((___match1666716668_
                   (lambda (_e55305567_
                            _hd55315570_
                            _tl55325572_
                            _e55335575_
                            _hd55345578_
                            _tl55355580_
                            _e55365583_
                            _hd55375586_
                            _tl55385588_
                            _e55395591_
                            _hd55405594_
                            _tl55415596_
                            ___splice1662616627_
                            _target55425599_
                            _tl55445601_)
                     (letrec ((_loop55455604_
                               (lambda (_hd55435607_ _rand55495609_)
                                 (if (gx#stx-pair? _hd55435607_)
                                     (let ((_e55465612_
                                            (gx#stx-e _hd55435607_)))
                                       (let ((_lp-tl55485617_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e55465612_)))
                                             (_lp-hd55475615_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e55465612_))))
                                         (_loop55455604_
                                          _lp-tl55485617_
                                          (cons _lp-hd55475615_
                                                _rand55495609_))))
                                     (let ((_rand55505620_
                                            (reverse _rand55495609_)))
                                       (let ((_L5623_ _rand55505620_)
                                             (_L5624_ _hd55405594_))
                                         (if (gx#free-identifier=?
                                              _L5624_
                                              'values)
                                             (___kont1662416625_
                                              _L5623_
                                              _L5624_)
                                             (___kont1662816629_))))))))
                       (_loop55455604_ _target55425599_ '())))))
              (if (gx#stx-pair? ___stx1662216623_)
                  (let ((_e55305567_ (gx#stx-e ___stx1662216623_)))
                    (let ((_tl55325572_
                           (let () (declare (not safe)) (##cdr _e55305567_)))
                          (_hd55315570_
                           (let () (declare (not safe)) (##car _e55305567_))))
                      (if (gx#stx-pair? _tl55325572_)
                          (let ((_e55335575_ (gx#stx-e _tl55325572_)))
                            (let ((_tl55355580_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e55335575_)))
                                  (_hd55345578_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e55335575_))))
                              (if (gx#stx-pair? _hd55345578_)
                                  (let ((_e55365583_ (gx#stx-e _hd55345578_)))
                                    (let ((_tl55385588_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e55365583_)))
                                          (_hd55375586_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e55365583_))))
                                      (if (gx#identifier? _hd55375586_)
                                          (if (gx#stx-eq? '%#ref _hd55375586_)
                                              (if (gx#stx-pair? _tl55385588_)
                                                  (let ((_e55395591_
                                                         (gx#stx-e
                                                          _tl55385588_)))
                                                    (let ((_tl55415596_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e55395591_)))
                                                          (_hd55405594_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e55395591_))))
                                                      (if (gx#stx-null?
                                                           _tl55415596_)
                                                          (if (gx#stx-pair/null?
                                                               _tl55355580_)
                                                              (let ((___splice1662616627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl55355580_ '0)))
                        (let ((_tl55445601_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1662616627_ '1)))
                              (_target55425599_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1662616627_ '0))))
                          (if (gx#stx-null? _tl55445601_)
                              (___match1666716668_
                               _e55305567_
                               _hd55315570_
                               _tl55325572_
                               _e55335575_
                               _hd55345578_
                               _tl55355580_
                               _e55365583_
                               _hd55375586_
                               _tl55385588_
                               _e55395591_
                               _hd55405594_
                               _tl55415596_
                               ___splice1662616627_
                               _target55425599_
                               _tl55445601_)
                              (___kont1662816629_))))
                      (___kont1662816629_))
                  (___kont1662816629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1662816629_))
                                              (___kont1662816629_))
                                          (___kont1662816629_))))
                                  (___kont1662816629_))))
                          (___kont1662816629_))))
                  (___kont1662816629_)))))))
    (define gxc#count-values-if%
      (lambda (_stx5427_)
        (let* ((_g54295450_
                (lambda (_g54305447_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g54305447_)))
               (_g54285520_
                (lambda (_g54305453_)
                  (if (gx#stx-pair? _g54305453_)
                      (let ((_e54345455_ (gx#stx-e _g54305453_)))
                        (let ((_hd54355458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e54345455_)))
                              (_tl54365460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e54345455_))))
                          (if (gx#stx-pair? _tl54365460_)
                              (let ((_e54375463_ (gx#stx-e _tl54365460_)))
                                (let ((_hd54385466_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e54375463_)))
                                      (_tl54395468_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e54375463_))))
                                  (if (gx#stx-pair? _tl54395468_)
                                      (let ((_e54405471_
                                             (gx#stx-e _tl54395468_)))
                                        (let ((_hd54415474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e54405471_)))
                                              (_tl54425476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e54405471_))))
                                          (if (gx#stx-pair? _tl54425476_)
                                              (let ((_e54435479_
                                                     (gx#stx-e _tl54425476_)))
                                                (let ((_hd54445482_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e54435479_)))
                                                      (_tl54455484_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e54435479_))))
                                                  (if (gx#stx-null?
                                                       _tl54455484_)
                                                      ((lambda (_L5487_
                                                                _L5488_
                                                                _L5489_)
                                                         (let ((_c155065508_
                                                                (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5488_)))
                   (if _c155065508_
                       (let* ((_c15511_ _c155065508_)
                              (_c255125514_ (gxc#compile-e _L5487_)))
                         (if _c255125514_
                             (let ((_c25517_ _c255125514_))
                               (if (fx= _c15511_ _c25517_) _c15511_ '#f))
                             '#f))
                       '#f)))
               _hd54445482_
               _hd54415474_
               _hd54385466_)
              (_g54295450_ _g54305453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g54295450_ _g54305453_))))
                                      (_g54295450_ _g54305453_))))
                              (_g54295450_ _g54305453_))))
                      (_g54295450_ _g54305453_)))))
          (_g54285520_ _stx5427_))))))
